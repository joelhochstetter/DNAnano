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
	<23.915718, 34.518539, 34.810539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.228298, 34.672234, 35.007191>,  <24.415846, 34.764450, 35.125183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.228298, 34.672234, 35.007191>,  <23.915718, 34.518539, 34.810539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.228298, 34.672234, 35.007191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622173, -0.420148, -0.660587,
		-0.047263, 0.822095, -0.567385,
		0.781451, 0.384233, 0.491629,
		24.462734, 34.787502, 35.154678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.470957, 34.853718, 34.407520>,  <23.915718, 34.518539, 34.810539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.470957, 34.853718, 34.407520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.681654, 34.710712, 34.715992>,  <24.808073, 34.624908, 34.901077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.681654, 34.710712, 34.715992>,  <24.470957, 34.853718, 34.407520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.681654, 34.710712, 34.715992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755336, -0.219264, -0.617569,
		0.389882, 0.907804, 0.154547,
		0.526744, -0.357514, 0.771184,
		24.839678, 34.603458, 34.947346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.145494, 34.954388, 34.269524>,  <24.470957, 34.853718, 34.407520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.145494, 34.954388, 34.269524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.184088, 34.691998, 34.568962>,  <25.207243, 34.534565, 34.748623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.184088, 34.691998, 34.568962>,  <25.145494, 34.954388, 34.269524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.184088, 34.691998, 34.568962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879671, -0.295694, -0.372484,
		0.465694, 0.694453, 0.548511,
		0.096481, -0.655972, 0.748593,
		25.213032, 34.495205, 34.793541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.715027, 34.889656, 34.705765>,  <25.145494, 34.954388, 34.269524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.715027, 34.889656, 34.705765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.661772, 34.496849, 34.759296>,  <25.629818, 34.261166, 34.791416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.661772, 34.496849, 34.759296>,  <25.715027, 34.889656, 34.705765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.661772, 34.496849, 34.759296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923381, -0.171964, -0.343215,
		0.360058, 0.077884, 0.929673,
		-0.133139, -0.982020, 0.133834,
		25.621830, 34.202244, 34.799446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.206837, 34.640854, 35.194824>,  <25.715027, 34.889656, 34.705765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.206837, 34.640854, 35.194824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.111555, 34.410198, 34.882225>,  <26.054386, 34.271805, 34.694664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.111555, 34.410198, 34.882225>,  <26.206837, 34.640854, 35.194824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.111555, 34.410198, 34.882225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954521, 0.009553, -0.297992,
		0.179301, -0.816940, 0.548142,
		-0.238205, -0.576643, -0.781499,
		26.040094, 34.237206, 34.647774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.848904, 34.428993, 34.897793>,  <26.206837, 34.640854, 35.194824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.848904, 34.428993, 34.897793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.612179, 34.292339, 34.605755>,  <26.470144, 34.210346, 34.430531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.612179, 34.292339, 34.605755>,  <26.848904, 34.428993, 34.897793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.612179, 34.292339, 34.605755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805484, -0.215974, -0.551861,
		0.030851, -0.914682, 0.402996,
		-0.591814, -0.341632, -0.730099,
		26.434635, 34.189850, 34.386726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.264490, 33.976109, 34.721935>,  <26.848904, 34.428993, 34.897793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.264490, 33.976109, 34.721935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.999010, 33.926308, 34.426910>,  <26.839722, 33.896427, 34.249893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.999010, 33.926308, 34.426910>,  <27.264490, 33.976109, 34.721935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.999010, 33.926308, 34.426910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726617, -0.341398, -0.596217,
		-0.177574, -0.931636, 0.317050,
		-0.663698, -0.124501, -0.737566,
		26.799900, 33.888958, 34.205639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.275328, 33.341652, 34.514267>,  <27.264490, 33.976109, 34.721935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.275328, 33.341652, 34.514267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.153231, 33.561440, 34.203163>,  <27.079973, 33.693314, 34.016502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.153231, 33.561440, 34.203163>,  <27.275328, 33.341652, 34.514267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.153231, 33.561440, 34.203163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763709, -0.346623, -0.544611,
		-0.568838, -0.760218, -0.313834,
		-0.305241, 0.549473, -0.777758,
		27.061659, 33.726280, 33.969837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.375429, 32.997604, 33.928829>,  <27.275328, 33.341652, 34.514267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.375429, 32.997604, 33.928829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.380892, 33.375237, 33.797054>,  <27.384169, 33.601814, 33.717987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.380892, 33.375237, 33.797054>,  <27.375429, 32.997604, 33.928829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.380892, 33.375237, 33.797054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909085, -0.148924, -0.389084,
		-0.416388, -0.294177, -0.860280,
		0.013657, 0.944077, -0.329442,
		27.384989, 33.658459, 33.698223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.609655, 32.943520, 33.224480>,  <27.375429, 32.997604, 33.928829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.609655, 32.943520, 33.224480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.686403, 33.304707, 33.378281>,  <27.732452, 33.521420, 33.470562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.686403, 33.304707, 33.378281>,  <27.609655, 32.943520, 33.224480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.686403, 33.304707, 33.378281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933290, -0.046685, -0.356076,
		-0.303573, 0.427174, -0.851684,
		0.191868, 0.902963, 0.384505,
		27.743963, 33.575596, 33.493633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.097721, 33.270916, 32.719925>,  <27.609655, 32.943520, 33.224480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.097721, 33.270916, 32.719925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.156645, 33.485909, 33.052048>,  <28.191999, 33.614906, 33.251320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.156645, 33.485909, 33.052048>,  <28.097721, 33.270916, 32.719925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.156645, 33.485909, 33.052048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967395, 0.096567, -0.234140,
		-0.206027, 0.837725, -0.505736,
		0.147307, 0.537486, 0.830307,
		28.200836, 33.647156, 33.301140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.660622, 33.718719, 32.552471>,  <28.097721, 33.270916, 32.719925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.660622, 33.718719, 32.552471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.648796, 33.708317, 32.952160>,  <28.641701, 33.702076, 33.191975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.648796, 33.708317, 32.952160>,  <28.660622, 33.718719, 32.552471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.648796, 33.708317, 32.952160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952872, 0.301226, 0.036035,
		-0.301930, 0.953198, 0.015879,
		-0.029566, -0.026011, 0.999224,
		28.639927, 33.700512, 33.251926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.506346, 33.653393, 32.744690>,  <28.660622, 33.718719, 32.552471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.506346, 33.653393, 32.744690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.693192, 33.681973, 33.097214>,  <29.805300, 33.699120, 33.308727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.693192, 33.681973, 33.097214>,  <29.506346, 33.653393, 32.744690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.693192, 33.681973, 33.097214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883276, 0.083190, 0.461414,
		-0.040349, -0.993969, 0.101966,
		0.467114, 0.071447, 0.881306,
		29.833326, 33.703407, 33.361607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.270149, 33.096527, 33.282848>,  <29.506346, 33.653393, 32.744690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.270149, 33.096527, 33.282848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.360826, 33.464703, 33.410225>,  <29.415234, 33.685608, 33.486649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.360826, 33.464703, 33.410225>,  <29.270149, 33.096527, 33.282848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.360826, 33.464703, 33.410225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.922374, 0.097888, 0.373690,
		0.312787, -0.378432, 0.871179,
		0.226694, 0.920439, 0.318438,
		29.428835, 33.740833, 33.505756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.167049, 33.216648, 34.040886>,  <29.270149, 33.096527, 33.282848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.167049, 33.216648, 34.040886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.098892, 33.559334, 33.846149>,  <29.057999, 33.764946, 33.729309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.098892, 33.559334, 33.846149>,  <29.167049, 33.216648, 34.040886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.098892, 33.559334, 33.846149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.960304, -0.033629, 0.276922,
		0.220870, 0.514701, 0.828432,
		-0.170391, 0.856710, -0.486841,
		29.047775, 33.816345, 33.700096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.684881, 33.843494, 34.438042>,  <29.167049, 33.216648, 34.040886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.684881, 33.843494, 34.438042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.662125, 33.893360, 34.041817>,  <28.648470, 33.923279, 33.804081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.662125, 33.893360, 34.041817>,  <28.684881, 33.843494, 34.438042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.662125, 33.893360, 34.041817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.989862, 0.122290, 0.072241,
		0.130142, 0.984634, 0.116440,
		-0.056891, 0.124661, -0.990567,
		28.645058, 33.930759, 33.744648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.310070, 34.422241, 34.318836>,  <28.684881, 33.843494, 34.438042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.310070, 34.422241, 34.318836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.275978, 34.208427, 33.982502>,  <28.255524, 34.080139, 33.780701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.275978, 34.208427, 33.982502>,  <28.310070, 34.422241, 34.318836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.275978, 34.208427, 33.982502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.996043, 0.067055, 0.058333,
		0.025202, 0.842484, -0.538131,
		-0.085229, -0.534531, -0.840840,
		28.250410, 34.048069, 33.730251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.892736, 34.777466, 33.917953>,  <28.310070, 34.422241, 34.318836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.892736, 34.777466, 33.917953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.852859, 34.411434, 33.761646>,  <27.828934, 34.191814, 33.667862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.852859, 34.411434, 33.761646>,  <27.892736, 34.777466, 33.917953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.852859, 34.411434, 33.761646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.994921, 0.097169, 0.026273,
		0.013929, 0.391401, -0.920115,
		-0.099690, -0.915076, -0.390766,
		27.822952, 34.136913, 33.644417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.457500, 34.908810, 33.384544>,  <27.892736, 34.777466, 33.917953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.457500, 34.908810, 33.384544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.448534, 34.515373, 33.456146>,  <27.443153, 34.279312, 33.499107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.448534, 34.515373, 33.456146>,  <27.457500, 34.908810, 33.384544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.448534, 34.515373, 33.456146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.977085, 0.059462, 0.204375,
		-0.211666, -0.170325, -0.962386,
		-0.022416, -0.983592, 0.179008,
		27.441809, 34.220295, 33.509850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.866653, 34.566498, 32.988834>,  <27.457500, 34.908810, 33.384544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.866653, 34.566498, 32.988834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.917023, 34.311150, 33.292580>,  <26.947245, 34.157940, 33.474827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.917023, 34.311150, 33.292580>,  <26.866653, 34.566498, 32.988834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.917023, 34.311150, 33.292580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.970035, 0.081094, 0.229031,
		-0.207787, -0.765445, -0.609031,
		0.125922, -0.638371, 0.759359,
		26.954800, 34.119637, 33.520386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.625828, 34.872467, 32.398411>,  <26.866653, 34.566498, 32.988834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.625828, 34.872467, 32.398411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.755899, 35.156055, 32.148094>,  <26.833942, 35.326210, 31.997904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.755899, 35.156055, 32.148094>,  <26.625828, 34.872467, 32.398411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.755899, 35.156055, 32.148094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944091, -0.281399, 0.171777,
		-0.054312, -0.646662, -0.760840,
		0.325181, 0.708973, -0.625791,
		26.853455, 35.368748, 31.960358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.096113, 34.751427, 31.890223>,  <26.625828, 34.872467, 32.398411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.096113, 34.751427, 31.890223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.203142, 35.132729, 31.946377>,  <27.267359, 35.361511, 31.980070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.203142, 35.132729, 31.946377>,  <27.096113, 34.751427, 31.890223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.203142, 35.132729, 31.946377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933692, -0.292499, 0.206552,
		0.237960, 0.075811, -0.968312,
		0.267571, 0.953256, 0.140388,
		27.283413, 35.418705, 31.988493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.624018, 34.900581, 31.445560>,  <27.096113, 34.751427, 31.890223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.624018, 34.900581, 31.445560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.647308, 35.160992, 31.748287>,  <27.661283, 35.317238, 31.929924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.647308, 35.160992, 31.748287>,  <27.624018, 34.900581, 31.445560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.647308, 35.160992, 31.748287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977475, -0.191229, 0.089293,
		0.202858, 0.734570, -0.647499,
		0.058229, 0.651029, 0.756817,
		27.664778, 35.356300, 31.975332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.167908, 35.459576, 31.279152>,  <27.624018, 34.900581, 31.445560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.167908, 35.459576, 31.279152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.147211, 35.372799, 31.669077>,  <28.134792, 35.320732, 31.903032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.147211, 35.372799, 31.669077>,  <28.167908, 35.459576, 31.279152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.147211, 35.372799, 31.669077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966931, -0.254979, -0.005419,
		0.249733, 0.942296, 0.222961,
		-0.051744, -0.216941, 0.974812,
		28.131687, 35.307716, 31.961521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.790077, 35.406960, 31.434622>,  <28.167908, 35.459576, 31.279152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.790077, 35.406960, 31.434622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.670515, 35.199963, 31.755337>,  <28.598778, 35.075764, 31.947765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.670515, 35.199963, 31.755337>,  <28.790077, 35.406960, 31.434622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.670515, 35.199963, 31.755337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821295, -0.567340, -0.059992,
		0.485930, 0.640571, 0.594593,
		-0.298907, -0.517488, 0.801786,
		28.580843, 35.044716, 31.995872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.228870, 35.564915, 32.075626>,  <28.790077, 35.406960, 31.434622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.228870, 35.564915, 32.075626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.074528, 35.196323, 32.093468>,  <28.981922, 34.975166, 32.104172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.074528, 35.196323, 32.093468>,  <29.228870, 35.564915, 32.075626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.074528, 35.196323, 32.093468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914997, -0.376067, 0.146128,
		-0.117879, 0.097199, 0.988259,
		-0.385856, -0.921480, 0.044606,
		28.958771, 34.919880, 32.106850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.540766, 35.258030, 32.646683>,  <29.228870, 35.564915, 32.075626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.540766, 35.258030, 32.646683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.399706, 34.982586, 32.393242>,  <29.315069, 34.817318, 32.241177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.399706, 34.982586, 32.393242>,  <29.540766, 35.258030, 32.646683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.399706, 34.982586, 32.393242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918673, -0.383559, -0.094455,
		-0.177980, -0.615381, 0.767874,
		-0.352651, -0.688614, -0.633600,
		29.293911, 34.776001, 32.203163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.037405, 35.525723, 33.324478>,  <29.540766, 35.258030, 32.646683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.037405, 35.525723, 33.324478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.831127, 35.688663, 33.022984>,  <29.707361, 35.786430, 32.842087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.831127, 35.688663, 33.022984>,  <30.037405, 35.525723, 33.324478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.831127, 35.688663, 33.022984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839168, 0.417574, -0.348467,
		0.172792, -0.812216, -0.557179,
		-0.515694, 0.407354, -0.753739,
		29.676418, 35.810871, 32.796864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.373852, 35.541729, 32.601555>,  <30.037405, 35.525723, 33.324478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.373852, 35.541729, 32.601555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.135893, 35.861607, 32.634037>,  <29.993118, 36.053532, 32.653526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.135893, 35.861607, 32.634037>,  <30.373852, 35.541729, 32.601555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.135893, 35.861607, 32.634037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784312, 0.599614, -0.159113,
		-0.175933, -0.030965, -0.983915,
		-0.594896, 0.799690, 0.081206,
		29.957424, 36.101513, 32.658398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.297871, 36.020004, 31.913929>,  <30.373852, 35.541729, 32.601555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.297871, 36.020004, 31.913929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.276314, 36.196796, 32.272091>,  <30.263380, 36.302872, 32.486988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.276314, 36.196796, 32.272091>,  <30.297871, 36.020004, 31.913929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.276314, 36.196796, 32.272091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827489, 0.521657, -0.207689,
		-0.558889, 0.729746, -0.393844,
		-0.053892, 0.441977, 0.895406,
		30.260147, 36.329388, 32.540714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.314985, 36.771610, 31.913763>,  <30.297871, 36.020004, 31.913929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.314985, 36.771610, 31.913763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.489004, 36.610317, 32.235790>,  <30.593414, 36.513542, 32.429008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.489004, 36.610317, 32.235790>,  <30.314985, 36.771610, 31.913763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.489004, 36.610317, 32.235790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809536, 0.566603, -0.153665,
		-0.394191, 0.718584, 0.572932,
		0.435046, -0.403235, 0.805069,
		30.619518, 36.489346, 32.477310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.626436, 37.283298, 32.332954>,  <30.314985, 36.771610, 31.913763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.626436, 37.283298, 32.332954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.842249, 36.946762, 32.345932>,  <30.971737, 36.744843, 32.353718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.842249, 36.946762, 32.345932>,  <30.626436, 37.283298, 32.332954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.842249, 36.946762, 32.345932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838413, 0.533323, -0.112387,
		0.077252, 0.087839, 0.993135,
		0.539533, -0.841339, 0.032445,
		31.004108, 36.694359, 32.355667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.979612, 37.255592, 32.920292>,  <30.626436, 37.283298, 32.332954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.979612, 37.255592, 32.920292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.208290, 37.069572, 32.649918>,  <31.345497, 36.957958, 32.487694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.208290, 37.069572, 32.649918>,  <30.979612, 37.255592, 32.920292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.208290, 37.069572, 32.649918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778642, 0.567208, 0.268313,
		0.258617, -0.679706, 0.686380,
		0.571694, -0.465053, -0.675937,
		31.379799, 36.930058, 32.447136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.559746, 36.892155, 33.094967>,  <30.979612, 37.255592, 32.920292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.559746, 36.892155, 33.094967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.685638, 36.961678, 32.721714>,  <31.761175, 37.003391, 32.497761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.685638, 36.961678, 32.721714>,  <31.559746, 36.892155, 33.094967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.685638, 36.961678, 32.721714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809158, 0.464789, 0.359492,
		0.496193, -0.868194, 0.005644,
		0.314732, 0.173811, -0.933131,
		31.780058, 37.013821, 32.441776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.901058, 37.241444, 33.712234>,  <31.559746, 36.892155, 33.094967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.901058, 37.241444, 33.712234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.849258, 37.196873, 34.106354>,  <31.818178, 37.170128, 34.342827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.849258, 37.196873, 34.106354>,  <31.901058, 37.241444, 33.712234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.849258, 37.196873, 34.106354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289794, 0.946030, 0.145076,
		-0.948288, 0.304320, -0.090218,
		-0.129499, -0.111429, 0.985299,
		31.810410, 37.163445, 34.401943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.493919, 37.763008, 34.050003>,  <31.901058, 37.241444, 33.712234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.493919, 37.763008, 34.050003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.740606, 37.613354, 34.327042>,  <31.888618, 37.523563, 34.493263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.740606, 37.613354, 34.327042>,  <31.493919, 37.763008, 34.050003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.740606, 37.613354, 34.327042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132288, 0.916580, 0.377334,
		-0.775990, -0.141087, 0.614763,
		0.616717, -0.374134, 0.692593,
		31.925621, 37.501114, 34.534821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.325624, 37.892776, 34.800323>,  <31.493919, 37.763008, 34.050003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.325624, 37.892776, 34.800323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.722073, 37.853340, 34.764629>,  <31.959942, 37.829678, 34.743214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.722073, 37.853340, 34.764629>,  <31.325624, 37.892776, 34.800323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.722073, 37.853340, 34.764629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131646, 0.822233, 0.553716,
		0.018778, -0.560546, 0.827910,
		0.991119, -0.098593, -0.089234,
		32.019409, 37.823761, 34.737858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.700888, 37.916374, 35.465397>,  <31.325624, 37.892776, 34.800323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.700888, 37.916374, 35.465397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.964027, 38.036190, 35.188988>,  <32.121910, 38.108078, 35.023144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.964027, 38.036190, 35.188988>,  <31.700888, 37.916374, 35.465397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.964027, 38.036190, 35.188988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208688, 0.809088, 0.549387,
		0.723659, -0.505622, 0.469749,
		0.657851, 0.299538, -0.691021,
		32.161381, 38.126053, 34.981682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.180763, 38.320015, 35.981983>,  <31.700888, 37.916374, 35.465397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.180763, 38.320015, 35.981983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.237041, 38.411964, 35.596783>,  <32.270809, 38.467133, 35.365662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.237041, 38.411964, 35.596783>,  <32.180763, 38.320015, 35.981983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.237041, 38.411964, 35.596783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292985, 0.919439, 0.262281,
		0.945708, -0.319046, 0.062015,
		0.140699, 0.229872, -0.962997,
		32.279251, 38.480927, 35.307884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.537060, 38.892231, 36.056545>,  <32.180763, 38.320015, 35.981983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.537060, 38.892231, 36.056545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.912315, 39.016705, 35.995811>,  <33.137470, 39.091389, 35.959370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.912315, 39.016705, 35.995811>,  <32.537060, 38.892231, 36.056545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.912315, 39.016705, 35.995811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191973, 0.832404, 0.519856,
		0.288156, -0.458551, 0.840653,
		0.938143, 0.311182, -0.151833,
		33.193760, 39.110058, 35.950260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.960285, 39.369896, 35.824821>,  <32.537060, 38.892231, 36.056545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.960285, 39.369896, 35.824821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.973654, 39.551281, 35.468563>,  <31.981674, 39.660110, 35.254807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.973654, 39.551281, 35.468563>,  <31.960285, 39.369896, 35.824821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.973654, 39.551281, 35.468563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136896, -0.884823, -0.445361,
		-0.990021, -0.107042, -0.091650,
		0.033422, 0.453463, -0.890648,
		31.983681, 39.687321, 35.201370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.463114, 39.075920, 35.147278>,  <31.960285, 39.369896, 35.824821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.463114, 39.075920, 35.147278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.830410, 39.212383, 35.066833>,  <32.050789, 39.294262, 35.018566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.830410, 39.212383, 35.066833>,  <31.463114, 39.075920, 35.147278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.830410, 39.212383, 35.066833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211652, -0.851974, -0.478898,
		-0.334725, 0.397177, -0.854523,
		0.918239, 0.341161, -0.201114,
		32.105881, 39.314732, 35.006500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.592381, 38.905800, 34.459846>,  <31.463114, 39.075920, 35.147278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.592381, 38.905800, 34.459846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.920681, 38.953968, 34.683228>,  <32.117661, 38.982868, 34.817257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.920681, 38.953968, 34.683228>,  <31.592381, 38.905800, 34.459846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.920681, 38.953968, 34.683228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301654, -0.921498, -0.244635,
		0.485155, 0.369243, -0.792644,
		0.820750, 0.120418, 0.558453,
		32.166904, 38.990093, 34.850765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.220989, 38.916782, 34.069492>,  <31.592381, 38.905800, 34.459846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.220989, 38.916782, 34.069492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.282772, 38.797421, 34.446236>,  <32.319843, 38.725803, 34.672279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.282772, 38.797421, 34.446236>,  <32.220989, 38.916782, 34.069492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.282772, 38.797421, 34.446236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349908, -0.874987, -0.334606,
		0.923962, 0.381247, -0.030736,
		0.154461, -0.298409, 0.941857,
		32.329109, 38.707897, 34.728794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.926434, 38.663174, 34.122421>,  <32.220989, 38.916782, 34.069492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.926434, 38.663174, 34.122421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.718853, 38.499264, 34.422493>,  <32.594303, 38.400917, 34.602535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.718853, 38.499264, 34.422493>,  <32.926434, 38.663174, 34.122421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.718853, 38.499264, 34.422493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182256, -0.910470, -0.371250,
		0.835149, -0.055935, 0.547173,
		-0.518950, -0.409775, 0.750184,
		32.563168, 38.376331, 34.647549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.218025, 37.945297, 34.293381>,  <32.926434, 38.663174, 34.122421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.218025, 37.945297, 34.293381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.843452, 37.904636, 34.427704>,  <32.618710, 37.880238, 34.508297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.843452, 37.904636, 34.427704>,  <33.218025, 37.945297, 34.293381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.843452, 37.904636, 34.427704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125254, -0.797184, -0.590600,
		0.327742, -0.595116, 0.733773,
		-0.936428, -0.101656, 0.335811,
		32.562523, 37.874138, 34.528446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.059250, 37.221504, 34.456528>,  <33.218025, 37.945297, 34.293381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.059250, 37.221504, 34.456528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.709957, 37.407139, 34.397072>,  <32.500381, 37.518520, 34.361397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.709957, 37.407139, 34.397072>,  <33.059250, 37.221504, 34.456528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.709957, 37.407139, 34.397072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281312, -0.729134, -0.623881,
		-0.397913, -0.502977, 0.767255,
		-0.873229, 0.464088, -0.148638,
		32.447987, 37.546364, 34.352482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.682114, 37.006641, 34.738361>,  <33.059250, 37.221504, 34.456528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.682114, 37.006641, 34.738361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.073105, 37.063454, 34.800793>,  <34.307701, 37.097542, 34.838253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.073105, 37.063454, 34.800793>,  <33.682114, 37.006641, 34.738361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.073105, 37.063454, 34.800793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198887, 0.867279, 0.456368,
		-0.070551, -0.477133, 0.875995,
		0.977480, 0.142026, 0.156083,
		34.366348, 37.106060, 34.847618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.094128, 36.734577, 35.077507>,  <33.682114, 37.006641, 34.738361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.094128, 36.734577, 35.077507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.993519, 36.549805, 34.737309>,  <32.933151, 36.438942, 34.533188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.993519, 36.549805, 34.737309>,  <33.094128, 36.734577, 35.077507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.993519, 36.549805, 34.737309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745728, -0.467656, 0.474540,
		-0.616947, 0.753602, -0.226849,
		-0.251527, -0.461934, -0.850501,
		32.918060, 36.411224, 34.482159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.433231, 36.913445, 34.876705>,  <33.094128, 36.734577, 35.077507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.433231, 36.913445, 34.876705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.527218, 36.539749, 34.769386>,  <32.583611, 36.315533, 34.704994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.527218, 36.539749, 34.769386>,  <32.433231, 36.913445, 34.876705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.527218, 36.539749, 34.769386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718194, -0.352866, 0.599735,
		-0.654970, 0.051771, -0.753879,
		0.234969, -0.934240, -0.268299,
		32.597710, 36.259476, 34.688896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.794910, 36.594860, 34.813023>,  <32.433231, 36.913445, 34.876705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.794910, 36.594860, 34.813023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.062038, 36.298664, 34.843189>,  <32.222317, 36.120945, 34.861290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.062038, 36.298664, 34.843189>,  <31.794910, 36.594860, 34.813023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.062038, 36.298664, 34.843189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553689, -0.426515, 0.715202,
		-0.497438, -0.519380, -0.694838,
		0.667820, -0.740493, 0.075410,
		32.262386, 36.076515, 34.865814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.384489, 36.084641, 34.887611>,  <31.794910, 36.594860, 34.813023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.384489, 36.084641, 34.887611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.737087, 35.950336, 35.020416>,  <31.948647, 35.869755, 35.100098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.737087, 35.950336, 35.020416>,  <31.384489, 36.084641, 34.887611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.737087, 35.950336, 35.020416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469879, -0.554211, 0.687069,
		-0.046689, -0.761652, -0.646302,
		0.881495, -0.335762, 0.332009,
		32.001537, 35.849609, 35.120018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.318895, 35.329552, 35.053253>,  <31.384489, 36.084641, 34.887611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.318895, 35.329552, 35.053253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.622511, 35.448288, 35.285030>,  <31.804680, 35.519531, 35.424095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.622511, 35.448288, 35.285030>,  <31.318895, 35.329552, 35.053253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.622511, 35.448288, 35.285030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433071, -0.434338, 0.789810,
		0.486120, -0.850433, -0.201125,
		0.759037, 0.296841, 0.579439,
		31.850222, 35.537338, 35.458862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.567703, 34.748814, 35.545807>,  <31.318895, 35.329552, 35.053253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.567703, 34.748814, 35.545807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.620594, 35.116600, 35.693913>,  <31.652328, 35.337273, 35.782776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.620594, 35.116600, 35.693913>,  <31.567703, 34.748814, 35.545807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.620594, 35.116600, 35.693913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513095, -0.256113, 0.819231,
		0.848085, -0.298307, 0.437909,
		0.132228, 0.919467, 0.370266,
		31.660263, 35.392441, 35.804993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.695763, 34.755707, 36.271130>,  <31.567703, 34.748814, 35.545807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.695763, 34.755707, 36.271130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.551716, 35.121471, 36.197189>,  <31.465288, 35.340931, 36.152824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.551716, 35.121471, 36.197189>,  <31.695763, 34.755707, 36.271130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.551716, 35.121471, 36.197189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547647, -0.046797, 0.835399,
		0.755246, 0.402077, 0.517626,
		-0.360118, 0.914409, -0.184854,
		31.443680, 35.395794, 36.141735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.742884, 34.445877, 36.902203>,  <31.695763, 34.755707, 36.271130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.742884, 34.445877, 36.902203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.813276, 34.639854, 37.244865>,  <31.855513, 34.756241, 37.450462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.813276, 34.639854, 37.244865>,  <31.742884, 34.445877, 36.902203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.813276, 34.639854, 37.244865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262014, 0.815772, -0.515620,
		-0.948883, 0.315197, 0.016501,
		0.175983, 0.484939, 0.856658,
		31.866072, 34.785336, 37.501862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.216007, 35.012138, 37.129562>,  <31.742884, 34.445877, 36.902203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.216007, 35.012138, 37.129562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.599125, 35.057652, 37.235157>,  <31.828995, 35.084957, 37.298512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.599125, 35.057652, 37.235157>,  <31.216007, 35.012138, 37.129562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.599125, 35.057652, 37.235157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080079, 0.776370, -0.625170,
		-0.276079, 0.619923, 0.734490,
		0.957793, 0.113779, 0.263983,
		31.886463, 35.091785, 37.314350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.777777, 35.461090, 36.776451>,  <31.216007, 35.012138, 37.129562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.777777, 35.461090, 36.776451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.084181, 35.630257, 36.970100>,  <31.268023, 35.731754, 37.086288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.084181, 35.630257, 36.970100>,  <30.777777, 35.461090, 36.776451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.084181, 35.630257, 36.970100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471967, 0.141309, -0.870218,
		-0.436438, 0.895084, -0.091357,
		0.766009, 0.422914, 0.484123,
		31.313984, 35.757130, 37.115337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.961136, 36.138432, 36.455757>,  <30.777777, 35.461090, 36.776451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.961136, 36.138432, 36.455757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.263540, 35.905510, 36.575336>,  <31.444983, 35.765759, 36.647083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.263540, 35.905510, 36.575336>,  <30.961136, 36.138432, 36.455757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.263540, 35.905510, 36.575336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462493, 0.152010, -0.873495,
		0.463195, 0.798634, 0.384232,
		0.756010, -0.582303, 0.298952,
		31.490343, 35.730820, 36.665024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.541435, 36.470478, 36.163925>,  <30.961136, 36.138432, 36.455757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.541435, 36.470478, 36.163925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.659935, 36.104679, 36.274151>,  <31.731035, 35.885201, 36.340286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.659935, 36.104679, 36.274151>,  <31.541435, 36.470478, 36.163925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.659935, 36.104679, 36.274151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706298, 0.015543, -0.707744,
		0.642946, 0.404296, 0.650511,
		0.296248, -0.914496, 0.275560,
		31.748810, 35.830330, 36.356819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.261806, 36.452843, 36.333321>,  <31.541435, 36.470478, 36.163925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.261806, 36.452843, 36.333321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.123428, 36.108990, 36.182930>,  <32.040401, 35.902679, 36.092697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.123428, 36.108990, 36.182930>,  <32.261806, 36.452843, 36.333321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.123428, 36.108990, 36.182930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691779, 0.037016, -0.721160,
		0.633848, -0.509574, 0.581869,
		-0.345946, -0.859630, -0.375975,
		32.019646, 35.851101, 36.070137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.806103, 36.128635, 36.116684>,  <32.261806, 36.452843, 36.333321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.806103, 36.128635, 36.116684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.518116, 35.929459, 35.923313>,  <32.345325, 35.809952, 35.807289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.518116, 35.929459, 35.923313>,  <32.806103, 36.128635, 36.116684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.518116, 35.929459, 35.923313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498203, 0.114119, -0.859518,
		0.483160, -0.859668, 0.165915,
		-0.719966, -0.497944, -0.483427,
		32.302128, 35.780075, 35.778286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.003723, 35.492172, 35.839684>,  <32.806103, 36.128635, 36.116684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.003723, 35.492172, 35.839684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.700420, 35.625446, 35.615528>,  <32.518440, 35.705410, 35.481037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.700420, 35.625446, 35.615528>,  <33.003723, 35.492172, 35.839684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.700420, 35.625446, 35.615528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610691, 0.062048, -0.789435,
		-0.228260, -0.940817, -0.250523,
		-0.758258, 0.333189, -0.560385,
		32.472942, 35.725403, 35.447414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.162590, 35.140099, 35.147083>,  <33.003723, 35.492172, 35.839684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.162590, 35.140099, 35.147083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.890381, 35.417854, 35.053520>,  <32.727055, 35.584507, 34.997383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.890381, 35.417854, 35.053520>,  <33.162590, 35.140099, 35.147083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.890381, 35.417854, 35.053520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433519, 0.124197, -0.892545,
		-0.590724, -0.708799, -0.385550,
		-0.680519, 0.694391, -0.233912,
		32.686226, 35.626171, 34.983345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.910847, 35.006985, 34.526657>,  <33.162590, 35.140099, 35.147083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.910847, 35.006985, 34.526657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.826157, 35.394791, 34.575985>,  <32.775341, 35.627476, 34.605583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.826157, 35.394791, 34.575985>,  <32.910847, 35.006985, 34.526657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.826157, 35.394791, 34.575985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606556, 0.229293, -0.761259,
		-0.766331, -0.086375, -0.636613,
		-0.211724, 0.969518, 0.123323,
		32.762638, 35.685646, 34.612980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.436932, 34.531837, 34.337791>,  <32.910847, 35.006985, 34.526657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.436932, 34.531837, 34.337791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.074707, 34.517548, 34.506870>,  <32.857372, 34.508976, 34.608318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.074707, 34.517548, 34.506870>,  <33.436932, 34.531837, 34.337791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.074707, 34.517548, 34.506870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262915, -0.734726, -0.625342,
		0.332907, -0.677422, 0.655951,
		-0.905565, -0.035722, 0.422700,
		32.803036, 34.506832, 34.633678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.254021, 33.840813, 34.267296>,  <33.436932, 34.531837, 34.337791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.254021, 33.840813, 34.267296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.945782, 34.094803, 34.245445>,  <32.760838, 34.247196, 34.232334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.945782, 34.094803, 34.245445>,  <33.254021, 33.840813, 34.267296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.945782, 34.094803, 34.245445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269907, -0.402800, -0.874587,
		-0.577349, -0.659208, 0.481781,
		-0.770596, 0.634978, -0.054631,
		32.714603, 34.285297, 34.229057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.690762, 33.430130, 34.275883>,  <33.254021, 33.840813, 34.267296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.690762, 33.430130, 34.275883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.602032, 33.766178, 34.077896>,  <32.548794, 33.967808, 33.959106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.602032, 33.766178, 34.077896>,  <32.690762, 33.430130, 34.275883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.602032, 33.766178, 34.077896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142837, -0.530131, -0.835798,
		-0.964567, -0.114704, 0.237598,
		-0.221828, 0.840121, -0.494963,
		32.535484, 34.018215, 33.929405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.020645, 33.342651, 33.935196>,  <32.690762, 33.430130, 34.275883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.020645, 33.342651, 33.935196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.236252, 33.617146, 33.739830>,  <32.365616, 33.781841, 33.622612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.236252, 33.617146, 33.739830>,  <32.020645, 33.342651, 33.935196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.236252, 33.617146, 33.739830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163741, -0.483427, -0.859935,
		-0.826225, 0.543493, -0.148212,
		0.539019, 0.686231, -0.488411,
		32.397957, 33.823013, 33.593307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.696238, 33.330853, 33.243988>,  <32.020645, 33.342651, 33.935196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.696238, 33.330853, 33.243988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.000099, 33.572495, 33.147671>,  <32.182415, 33.717480, 33.089878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.000099, 33.572495, 33.147671>,  <31.696238, 33.330853, 33.243988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.000099, 33.572495, 33.147671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102783, -0.254088, -0.961704,
		-0.642156, 0.755310, -0.130926,
		0.759652, 0.604107, -0.240797,
		32.227993, 33.753727, 33.075432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.512405, 33.710587, 32.704586>,  <31.696238, 33.330853, 33.243988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.512405, 33.710587, 32.704586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.911015, 33.727570, 32.675903>,  <32.150181, 33.737759, 32.658695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.911015, 33.727570, 32.675903>,  <31.512405, 33.710587, 32.704586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.911015, 33.727570, 32.675903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049949, -0.384457, -0.921791,
		-0.066704, 0.922166, -0.380999,
		0.996522, 0.042457, -0.071706,
		32.209972, 33.740307, 32.654392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.683716, 33.974735, 31.915201>,  <31.512405, 33.710587, 32.704586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.683716, 33.974735, 31.915201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.023422, 33.825451, 32.064579>,  <32.227245, 33.735878, 32.154205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.023422, 33.825451, 32.064579>,  <31.683716, 33.974735, 31.915201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.023422, 33.825451, 32.064579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182950, -0.455474, -0.871248,
		0.495257, 0.808242, -0.318538,
		0.849265, -0.373215, 0.373444,
		32.278202, 33.713486, 32.176613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.331238, 34.131687, 31.462717>,  <31.683716, 33.974735, 31.915201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.331238, 34.131687, 31.462717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.429630, 33.814903, 31.686251>,  <32.488667, 33.624832, 31.820370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.429630, 33.814903, 31.686251>,  <32.331238, 34.131687, 31.462717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.429630, 33.814903, 31.686251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189688, -0.526067, -0.829019,
		0.950533, 0.309925, 0.020824,
		0.245979, -0.791960, 0.558833,
		32.503426, 33.577316, 31.853901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.927044, 33.878361, 31.137573>,  <32.331238, 34.131687, 31.462717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.927044, 33.878361, 31.137573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.764317, 33.583084, 31.352821>,  <32.666679, 33.405918, 31.481970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.764317, 33.583084, 31.352821>,  <32.927044, 33.878361, 31.137573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.764317, 33.583084, 31.352821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277576, -0.661106, -0.697058,
		0.870316, -0.134207, 0.473855,
		-0.406818, -0.738192, 0.538119,
		32.642273, 33.361626, 31.514257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.452312, 33.225140, 31.269205>,  <32.927044, 33.878361, 31.137573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.452312, 33.225140, 31.269205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.065311, 33.126179, 31.248323>,  <32.833111, 33.066803, 31.235794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.065311, 33.126179, 31.248323>,  <33.452312, 33.225140, 31.269205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.065311, 33.126179, 31.248323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213399, -0.688213, -0.693415,
		0.135627, -0.682023, 0.718645,
		-0.967505, -0.247404, -0.052203,
		32.775059, 33.051956, 31.232662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.440849, 32.396832, 31.076172>,  <33.452312, 33.225140, 31.269205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.440849, 32.396832, 31.076172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.062943, 32.526276, 31.055386>,  <32.836201, 32.603943, 31.042913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.062943, 32.526276, 31.055386>,  <33.440849, 32.396832, 31.076172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.062943, 32.526276, 31.055386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177691, -0.638942, -0.748451,
		-0.275408, -0.697875, 0.661151,
		-0.944763, 0.323610, -0.051963,
		32.779514, 32.623360, 31.039797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.842903, 31.826574, 31.089043>,  <33.440849, 32.396832, 31.076172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.842903, 31.826574, 31.089043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.713173, 32.151161, 30.894585>,  <32.635334, 32.345913, 30.777910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.713173, 32.151161, 30.894585>,  <32.842903, 31.826574, 31.089043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.713173, 32.151161, 30.894585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213298, -0.563425, -0.798158,
		-0.921584, -0.155169, 0.355817,
		-0.324326, 0.811465, -0.486145,
		32.615875, 32.394600, 30.748741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.232658, 31.519238, 30.754534>,  <32.842903, 31.826574, 31.089043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.232658, 31.519238, 30.754534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.271156, 31.876480, 30.578762>,  <32.294254, 32.090824, 30.473299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.271156, 31.876480, 30.578762>,  <32.232658, 31.519238, 30.754534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.271156, 31.876480, 30.578762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501949, -0.337684, -0.796252,
		-0.859526, 0.297203, 0.415795,
		0.096242, 0.893107, -0.439428,
		32.300030, 32.144413, 30.446934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.739737, 31.487309, 30.366886>,  <32.232658, 31.519238, 30.754534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.739737, 31.487309, 30.366886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.947834, 31.776299, 30.184731>,  <32.072693, 31.949692, 30.075438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.947834, 31.776299, 30.184731>,  <31.739737, 31.487309, 30.366886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.947834, 31.776299, 30.184731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388359, -0.274768, -0.879591,
		-0.760607, 0.634456, 0.137632,
		0.520245, 0.722474, -0.455387,
		32.103909, 31.993040, 30.048115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.300016, 31.765038, 29.964043>,  <31.739737, 31.487309, 30.366886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.300016, 31.765038, 29.964043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.633026, 31.883142, 29.776545>,  <31.832832, 31.954004, 29.664045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.633026, 31.883142, 29.776545>,  <31.300016, 31.765038, 29.964043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.633026, 31.883142, 29.776545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466055, -0.084136, -0.880746,
		-0.299488, 0.951705, 0.067562,
		0.832526, 0.295261, -0.468744,
		31.882784, 31.971720, 29.635921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.028555, 32.054729, 29.352621>,  <31.300016, 31.765038, 29.964043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.028555, 32.054729, 29.352621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.416237, 32.039127, 29.255360>,  <31.648846, 32.029766, 29.197002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.416237, 32.039127, 29.255360>,  <31.028555, 32.054729, 29.352621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.416237, 32.039127, 29.255360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245809, -0.093303, -0.964817,
		0.014943, 0.994873, -0.100017,
		0.969203, -0.039003, -0.243154,
		31.706997, 32.027428, 29.182413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.202093, 32.568604, 28.861284>,  <31.028555, 32.054729, 29.352621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.202093, 32.568604, 28.861284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.441807, 32.251167, 28.819201>,  <31.585634, 32.060703, 28.793951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.441807, 32.251167, 28.819201>,  <31.202093, 32.568604, 28.861284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.441807, 32.251167, 28.819201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249277, -0.060101, -0.966565,
		0.760738, 0.605472, -0.233842,
		0.599282, -0.793594, -0.105209,
		31.621592, 32.013088, 28.787638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.595301, 32.716408, 28.338533>,  <31.202093, 32.568604, 28.861284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.595301, 32.716408, 28.338533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.557316, 32.320435, 28.380529>,  <31.534525, 32.082851, 28.405727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.557316, 32.320435, 28.380529>,  <31.595301, 32.716408, 28.338533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.557316, 32.320435, 28.380529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350448, -0.065470, -0.934291,
		0.931756, -0.125515, -0.340701,
		-0.094962, -0.989929, 0.104988,
		31.528828, 32.023457, 28.412025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.947245, 32.418262, 27.732008>,  <31.595301, 32.716408, 28.338533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.947245, 32.418262, 27.732008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.725769, 32.111877, 27.862690>,  <31.592884, 31.928047, 27.941099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.725769, 32.111877, 27.862690>,  <31.947245, 32.418262, 27.732008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.725769, 32.111877, 27.862690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216656, -0.246313, -0.944664,
		0.804046, -0.593832, -0.029570,
		-0.553688, -0.765960, 0.326704,
		31.559662, 31.882090, 27.960701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.071472, 31.957272, 27.152397>,  <31.947245, 32.418262, 27.732008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.071472, 31.957272, 27.152397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.780304, 31.759495, 27.342409>,  <31.605602, 31.640829, 27.456417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.780304, 31.759495, 27.342409>,  <32.071472, 31.957272, 27.152397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.780304, 31.759495, 27.342409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257816, -0.444590, -0.857829,
		0.635339, -0.746905, 0.196154,
		-0.727925, -0.494441, 0.475030,
		31.561926, 31.611162, 27.484919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.063740, 31.417019, 26.789343>,  <32.071472, 31.957272, 27.152397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.063740, 31.417019, 26.789343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.704878, 31.405630, 26.965660>,  <31.489561, 31.398796, 27.071451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.704878, 31.405630, 26.965660>,  <32.063740, 31.417019, 26.789343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.704878, 31.405630, 26.965660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375993, -0.474493, -0.795918,
		0.231816, -0.879799, 0.414989,
		-0.897157, -0.028474, 0.440794,
		31.435730, 31.397089, 27.097898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.775881, 30.749588, 26.570560>,  <32.063740, 31.417019, 26.789343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.775881, 30.749588, 26.570560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.446569, 30.944246, 26.687443>,  <31.248981, 31.061041, 26.757572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.446569, 30.944246, 26.687443>,  <31.775881, 30.749588, 26.570560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.446569, 30.944246, 26.687443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450029, -0.245844, -0.858508,
		-0.345955, -0.838292, 0.421404,
		-0.823280, 0.486649, 0.292204,
		31.199585, 31.090240, 26.775105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.193556, 30.232121, 26.617994>,  <31.775881, 30.749588, 26.570560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.193556, 30.232121, 26.617994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.036251, 30.592438, 26.544331>,  <30.941868, 30.808628, 26.500132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.036251, 30.592438, 26.544331>,  <31.193556, 30.232121, 26.617994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.036251, 30.592438, 26.544331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367066, -0.337464, -0.866822,
		-0.842976, -0.273289, 0.463363,
		-0.393262, 0.900795, -0.184159,
		30.918272, 30.862677, 26.489082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.479137, 30.054598, 26.379658>,  <31.193556, 30.232121, 26.617994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.479137, 30.054598, 26.379658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.548355, 30.424726, 26.244699>,  <30.589886, 30.646803, 26.163725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.548355, 30.424726, 26.244699>,  <30.479137, 30.054598, 26.379658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.548355, 30.424726, 26.244699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413119, -0.242779, -0.877719,
		-0.894085, 0.291270, 0.340255,
		0.173046, 0.925321, -0.337394,
		30.600269, 30.702324, 26.143480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.895185, 30.165350, 25.965729>,  <30.479137, 30.054598, 26.379658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.895185, 30.165350, 25.965729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.153416, 30.441324, 25.834751>,  <30.308353, 30.606909, 25.756165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.153416, 30.441324, 25.834751>,  <29.895185, 30.165350, 25.965729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.153416, 30.441324, 25.834751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466570, 0.016869, -0.884324,
		-0.604601, 0.723676, 0.332792,
		0.645578, 0.689933, -0.327446,
		30.347090, 30.648304, 25.736517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.462736, 30.584341, 25.533550>,  <29.895185, 30.165350, 25.965729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.462736, 30.584341, 25.533550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.837618, 30.644325, 25.407593>,  <30.062548, 30.680315, 25.332018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.837618, 30.644325, 25.407593>,  <29.462736, 30.584341, 25.533550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.837618, 30.644325, 25.407593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333549, 0.121480, -0.934873,
		-0.101940, 0.981201, 0.163871,
		0.937205, 0.149960, -0.314895,
		30.118780, 30.689314, 25.313124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.381441, 31.156168, 25.064167>,  <29.462736, 30.584341, 25.533550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.381441, 31.156168, 25.064167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.730972, 30.977495, 24.987331>,  <29.940691, 30.870291, 24.941231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.730972, 30.977495, 24.987331>,  <29.381441, 31.156168, 25.064167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.730972, 30.977495, 24.987331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138620, 0.149801, -0.978951,
		0.466054, 0.882063, 0.068982,
		0.873829, -0.446682, -0.192087,
		29.993122, 30.843491, 24.929705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.673729, 31.555141, 24.585604>,  <29.381441, 31.156168, 25.064167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.673729, 31.555141, 24.585604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.867722, 31.207859, 24.543627>,  <29.984118, 30.999489, 24.518440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.867722, 31.207859, 24.543627>,  <29.673729, 31.555141, 24.585604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.867722, 31.207859, 24.543627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093390, 0.067895, -0.993312,
		0.869524, 0.491538, -0.048154,
		0.484981, -0.868205, -0.104941,
		30.013216, 30.947397, 24.512144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.234274, 31.691679, 24.113590>,  <29.673729, 31.555141, 24.585604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.234274, 31.691679, 24.113590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.136692, 31.303883, 24.123180>,  <30.078142, 31.071205, 24.128935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.136692, 31.303883, 24.123180>,  <30.234274, 31.691679, 24.113590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.136692, 31.303883, 24.123180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068045, -0.007550, -0.997654,
		0.967396, -0.245015, -0.064127,
		-0.243956, -0.969490, 0.023976,
		30.063505, 31.013035, 24.130373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.628887, 31.437845, 23.538452>,  <30.234274, 31.691679, 24.113590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.628887, 31.437845, 23.538452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.377213, 31.131947, 23.594000>,  <30.226208, 30.948408, 23.627329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.377213, 31.131947, 23.594000>,  <30.628887, 31.437845, 23.538452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.377213, 31.131947, 23.594000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046185, -0.141566, -0.988851,
		0.775880, -0.628587, 0.053752,
		-0.629188, -0.764747, 0.138869,
		30.188456, 30.902523, 23.635660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.662069, 31.017212, 22.880188>,  <30.628887, 31.437845, 23.538452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.662069, 31.017212, 22.880188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.320448, 30.885368, 23.041161>,  <30.115475, 30.806261, 23.137745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.320448, 30.885368, 23.041161>,  <30.662069, 31.017212, 22.880188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.320448, 30.885368, 23.041161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396071, -0.089493, -0.913848,
		0.337229, -0.939866, -0.054117,
		-0.854052, -0.329610, 0.402433,
		30.064232, 30.786486, 23.161890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.526472, 30.455223, 22.513535>,  <30.662069, 31.017212, 22.880188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.526472, 30.455223, 22.513535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.187670, 30.605194, 22.664272>,  <29.984388, 30.695177, 22.754715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.187670, 30.605194, 22.664272>,  <30.526472, 30.455223, 22.513535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.187670, 30.605194, 22.664272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469579, -0.195448, -0.860986,
		-0.249159, -0.906215, 0.341605,
		-0.847004, 0.374933, 0.376842,
		29.933569, 30.717672, 22.777325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.023560, 30.075800, 22.219612>,  <30.526472, 30.455223, 22.513535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.023560, 30.075800, 22.219612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.813143, 30.396231, 22.333847>,  <29.686893, 30.588490, 22.402388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.813143, 30.396231, 22.333847>,  <30.023560, 30.075800, 22.219612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.813143, 30.396231, 22.333847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397563, 0.065224, -0.915254,
		-0.751814, -0.595000, 0.284167,
		-0.526041, 0.801075, 0.285586,
		29.655331, 30.636553, 22.419523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.481195, 30.037951, 21.853868>,  <30.023560, 30.075800, 22.219612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.481195, 30.037951, 21.853868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.492559, 30.420897, 21.968857>,  <29.499378, 30.650665, 22.037849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.492559, 30.420897, 21.968857>,  <29.481195, 30.037951, 21.853868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.492559, 30.420897, 21.968857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456507, 0.268274, -0.848311,
		-0.889266, -0.107131, 0.444667,
		0.028412, 0.957367, 0.287473,
		29.501083, 30.708107, 22.055099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.926596, 30.247269, 21.511761>,  <29.481195, 30.037951, 21.853868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.926596, 30.247269, 21.511761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.143686, 30.569389, 21.607204>,  <29.273941, 30.762663, 21.664471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.143686, 30.569389, 21.607204>,  <28.926596, 30.247269, 21.511761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.143686, 30.569389, 21.607204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210327, 0.405345, -0.889639,
		-0.813148, 0.432646, 0.389369,
		0.542728, 0.805303, 0.238608,
		29.306505, 30.810980, 21.678787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.538740, 30.790522, 21.278261>,  <28.926596, 30.247269, 21.511761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.538740, 30.790522, 21.278261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.904917, 30.949396, 21.304224>,  <29.124622, 31.044720, 21.319801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.904917, 30.949396, 21.304224>,  <28.538740, 30.790522, 21.278261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.904917, 30.949396, 21.304224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103115, 0.387380, -0.916135,
		-0.389020, 0.831974, 0.395579,
		0.915440, 0.397185, 0.064909,
		29.179548, 31.068552, 21.323696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.495419, 31.433224, 20.886303>,  <28.538740, 30.790522, 21.278261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.495419, 31.433224, 20.886303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.893873, 31.419092, 20.918455>,  <29.132946, 31.410614, 20.937746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.893873, 31.419092, 20.918455>,  <28.495419, 31.433224, 20.886303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.893873, 31.419092, 20.918455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085901, 0.581500, -0.808999,
		-0.018161, 0.812779, 0.582289,
		0.996138, -0.035327, 0.080379,
		29.192715, 31.408495, 20.942568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.768204, 32.122391, 20.914747>,  <28.495419, 31.433224, 20.886303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.768204, 32.122391, 20.914747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.071846, 31.901684, 20.776579>,  <29.254032, 31.769260, 20.693678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.071846, 31.901684, 20.776579>,  <28.768204, 32.122391, 20.914747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.071846, 31.901684, 20.776579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125428, 0.644655, -0.754114,
		0.638770, 0.529126, 0.558568,
		0.759105, -0.551766, -0.345419,
		29.299578, 31.736155, 20.672953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.190022, 32.619770, 20.667480>,  <28.768204, 32.122391, 20.914747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.190022, 32.619770, 20.667480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.322422, 32.291744, 20.480745>,  <29.401861, 32.094929, 20.368704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.322422, 32.291744, 20.480745>,  <29.190022, 32.619770, 20.667480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.322422, 32.291744, 20.480745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018395, 0.500237, -0.865693,
		0.943451, 0.277957, 0.180664,
		0.331000, -0.820063, -0.466836,
		29.421722, 32.045727, 20.340694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.882950, 32.835506, 20.248461>,  <29.190022, 32.619770, 20.667480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.882950, 32.835506, 20.248461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.715628, 32.517956, 20.071924>,  <29.615234, 32.327427, 19.966003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.715628, 32.517956, 20.071924>,  <29.882950, 32.835506, 20.248461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.715628, 32.517956, 20.071924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162598, 0.543492, -0.823515,
		0.893635, -0.272718, -0.356428,
		-0.418304, -0.793877, -0.441340,
		29.590136, 32.279793, 19.939522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.230087, 32.702156, 19.640863>,  <29.882950, 32.835506, 20.248461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.230087, 32.702156, 19.640863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.865091, 32.547409, 19.587656>,  <29.646093, 32.454559, 19.555731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.865091, 32.547409, 19.587656>,  <30.230087, 32.702156, 19.640863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.865091, 32.547409, 19.587656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141223, 0.603040, -0.785111,
		0.383953, -0.697619, -0.604902,
		-0.912488, -0.386872, -0.133019,
		29.591345, 32.431347, 19.547750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.108438, 32.924656, 19.027622>,  <30.230087, 32.702156, 19.640863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.108438, 32.924656, 19.027622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.758097, 32.750530, 19.110937>,  <29.547892, 32.646053, 19.160925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.758097, 32.750530, 19.110937>,  <30.108438, 32.924656, 19.027622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.758097, 32.750530, 19.110937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393587, 0.394637, -0.830272,
		0.279230, -0.809175, -0.516977,
		-0.875854, -0.435312, 0.208287,
		29.495340, 32.619934, 19.173422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.840227, 32.500839, 18.497196>,  <30.108438, 32.924656, 19.027622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.840227, 32.500839, 18.497196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.517958, 32.632332, 18.694305>,  <29.324596, 32.711227, 18.812571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.517958, 32.632332, 18.694305>,  <29.840227, 32.500839, 18.497196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.517958, 32.632332, 18.694305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345031, 0.415768, -0.841481,
		-0.481503, -0.847981, -0.221549,
		-0.805673, 0.328734, 0.492773,
		29.276257, 32.730953, 18.842136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.343159, 32.489666, 18.017059>,  <29.840227, 32.500839, 18.497196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.343159, 32.489666, 18.017059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.162294, 32.732132, 18.278782>,  <29.053776, 32.877613, 18.435816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.162294, 32.732132, 18.278782>,  <29.343159, 32.489666, 18.017059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.162294, 32.732132, 18.278782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535652, 0.402016, -0.742604,
		-0.713182, -0.686255, 0.142918,
		-0.452160, 0.606166, 0.654305,
		29.026646, 32.913982, 18.475073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.576708, 32.435989, 17.901102>,  <29.343159, 32.489666, 18.017059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.576708, 32.435989, 17.901102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.622911, 32.795448, 18.070375>,  <28.650633, 33.011124, 18.171940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.622911, 32.795448, 18.070375>,  <28.576708, 32.435989, 17.901102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.622911, 32.795448, 18.070375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676335, 0.383175, -0.629085,
		-0.727481, -0.213548, 0.652049,
		0.115509, 0.898651, 0.423183,
		28.657564, 33.065044, 18.197330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.822058, 32.614395, 17.896463>,  <28.576708, 32.435989, 17.901102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.822058, 32.614395, 17.896463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.079594, 32.920456, 17.898306>,  <28.234116, 33.104092, 17.899412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.079594, 32.920456, 17.898306>,  <27.822058, 32.614395, 17.896463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.079594, 32.920456, 17.898306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527176, 0.447943, -0.722103,
		-0.554579, 0.462489, 0.691771,
		0.643838, 0.765148, 0.004607,
		28.272745, 33.150002, 17.899689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.819281, 33.325073, 17.698072>,  <27.822058, 32.614395, 17.896463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.819281, 33.325073, 17.698072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.822382, 33.382954, 18.093851>,  <27.824244, 33.417683, 18.331318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.822382, 33.382954, 18.093851>,  <27.819281, 33.325073, 17.698072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.822382, 33.382954, 18.093851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572074, 0.810916, -0.123072,
		-0.820165, 0.566991, -0.076489,
		0.007754, 0.144697, 0.989446,
		27.824709, 33.426361, 18.390684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.513723, 34.081467, 17.893438>,  <27.819281, 33.325073, 17.698072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.513723, 34.081467, 17.893438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.751436, 33.946327, 18.185381>,  <27.894064, 33.865242, 18.360546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.751436, 33.946327, 18.185381>,  <27.513723, 34.081467, 17.893438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.751436, 33.946327, 18.185381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568462, 0.818407, -0.084029,
		-0.568929, 0.464832, 0.678418,
		0.594282, -0.337849, 0.729854,
		27.929720, 33.844971, 18.404337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.966345, 34.315445, 17.519632>,  <27.513723, 34.081467, 17.893438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.966345, 34.315445, 17.519632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.765026, 34.605762, 17.707212>,  <26.644234, 34.779953, 17.819759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.765026, 34.605762, 17.707212>,  <26.966345, 34.315445, 17.519632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.765026, 34.605762, 17.707212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724482, 0.650216, -0.228793,
		-0.470974, 0.224593, -0.853078,
		-0.503299, 0.725795, 0.468948,
		26.614037, 34.823502, 17.847897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.685991, 34.515415, 16.741167>,  <26.966345, 34.315445, 17.519632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.685991, 34.515415, 16.741167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.578220, 34.695461, 16.400625>,  <26.513557, 34.803490, 16.196301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.578220, 34.695461, 16.400625>,  <26.685991, 34.515415, 16.741167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.578220, 34.695461, 16.400625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.929571, -0.352531, 0.107795,
		-0.251609, 0.820437, 0.513397,
		-0.269427, 0.450117, -0.851354,
		26.497393, 34.830498, 16.145220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.262018, 34.951756, 16.739241>,  <26.685991, 34.515415, 16.741167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.262018, 34.951756, 16.739241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.418667, 35.282089, 16.901539>,  <27.512655, 35.480289, 16.998919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.418667, 35.282089, 16.901539>,  <27.262018, 34.951756, 16.739241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.418667, 35.282089, 16.901539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552706, -0.563682, 0.613823,
		0.735629, -0.016127, -0.677193,
		0.391621, 0.825834, 0.405748,
		27.536154, 35.529839, 17.023264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.055902, 34.884052, 16.885021>,  <27.262018, 34.951756, 16.739241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.055902, 34.884052, 16.885021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.911551, 35.154602, 17.141857>,  <27.824940, 35.316933, 17.295958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.911551, 35.154602, 17.141857>,  <28.055902, 34.884052, 16.885021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.911551, 35.154602, 17.141857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486129, -0.451124, 0.748442,
		0.795891, 0.582237, -0.166005,
		-0.360882, 0.676378, 0.642088,
		27.803286, 35.357517, 17.334484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.594313, 34.928658, 17.395868>,  <28.055902, 34.884052, 16.885021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.594313, 34.928658, 17.395868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.274084, 35.090363, 17.572802>,  <28.081947, 35.187386, 17.678961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.274084, 35.090363, 17.572802>,  <28.594313, 34.928658, 17.395868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.274084, 35.090363, 17.572802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352010, -0.280108, 0.893101,
		0.484950, 0.870695, 0.081941,
		-0.800570, 0.404265, 0.442331,
		28.033913, 35.211643, 17.705502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.712519, 35.056396, 18.206491>,  <28.594313, 34.928658, 17.395868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.712519, 35.056396, 18.206491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.349823, 35.224758, 18.216799>,  <28.132206, 35.325775, 18.222984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.349823, 35.224758, 18.216799>,  <28.712519, 35.056396, 18.206491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.349823, 35.224758, 18.216799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116680, 0.191696, 0.974494,
		0.405227, 0.886619, -0.222930,
		-0.906740, 0.420903, 0.025770,
		28.077801, 35.351028, 18.224529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.826832, 35.746033, 18.488482>,  <28.712519, 35.056396, 18.206491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.826832, 35.746033, 18.488482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.472977, 35.569633, 18.549068>,  <28.260664, 35.463795, 18.585421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.472977, 35.569633, 18.549068>,  <28.826832, 35.746033, 18.488482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.472977, 35.569633, 18.549068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030874, 0.379530, 0.924664,
		-0.465259, 0.813315, -0.349361,
		-0.884636, -0.440994, 0.151469,
		28.207586, 35.437336, 18.594509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.251736, 36.248928, 18.673021>,  <28.826832, 35.746033, 18.488482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.251736, 36.248928, 18.673021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.225775, 35.880714, 18.827114>,  <28.210197, 35.659786, 18.919569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.225775, 35.880714, 18.827114>,  <28.251736, 36.248928, 18.673021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.225775, 35.880714, 18.827114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015196, 0.386913, 0.921991,
		-0.997776, 0.053985, -0.039099,
		-0.064902, -0.920535, 0.385232,
		28.206305, 35.604553, 18.942684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.867378, 36.325764, 19.194345>,  <28.251736, 36.248928, 18.673021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.867378, 36.325764, 19.194345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.054338, 35.978458, 19.260860>,  <28.166515, 35.770073, 19.300770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.054338, 35.978458, 19.260860>,  <27.867378, 36.325764, 19.194345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.054338, 35.978458, 19.260860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048629, 0.213067, 0.975827,
		-0.882707, -0.448016, 0.141811,
		0.467401, -0.868265, 0.166289,
		28.194559, 35.717979, 19.310747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.651039, 36.009983, 19.846956>,  <27.867378, 36.325764, 19.194345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.651039, 36.009983, 19.846956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.989376, 35.801571, 19.801226>,  <28.192379, 35.676521, 19.773788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.989376, 35.801571, 19.801226>,  <27.651039, 36.009983, 19.846956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.989376, 35.801571, 19.801226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209400, 0.127206, 0.969521,
		-0.490611, -0.844004, 0.216701,
		0.845845, -0.521034, -0.114326,
		28.243130, 35.645260, 19.766928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.711903, 35.605907, 20.476906>,  <27.651039, 36.009983, 19.846956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.711903, 35.605907, 20.476906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.083958, 35.625153, 20.331285>,  <28.307190, 35.636700, 20.243914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.083958, 35.625153, 20.331285>,  <27.711903, 35.605907, 20.476906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.083958, 35.625153, 20.331285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318730, 0.386565, 0.865436,
		0.182368, -0.921006, 0.344223,
		0.930136, 0.048114, -0.364049,
		28.362999, 35.639587, 20.222071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.152807, 35.296379, 20.999105>,  <27.711903, 35.605907, 20.476906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.152807, 35.296379, 20.999105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.408222, 35.509113, 20.776602>,  <28.561470, 35.636753, 20.643099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.408222, 35.509113, 20.776602>,  <28.152807, 35.296379, 20.999105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.408222, 35.509113, 20.776602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318019, 0.475856, 0.820015,
		0.700810, -0.700511, 0.134719,
		0.638537, 0.531832, -0.556261,
		28.599783, 35.668663, 20.609724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.723892, 35.269798, 21.310997>,  <28.152807, 35.296379, 20.999105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.723892, 35.269798, 21.310997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.814528, 35.583096, 21.079414>,  <28.868908, 35.771072, 20.940464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.814528, 35.583096, 21.079414>,  <28.723892, 35.269798, 21.310997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.814528, 35.583096, 21.079414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363947, 0.483275, 0.796234,
		0.903439, -0.391126, -0.175555,
		0.226586, 0.783241, -0.578958,
		28.882504, 35.818069, 20.905727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.445869, 35.479809, 21.424303>,  <28.723892, 35.269798, 21.310997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.445869, 35.479809, 21.424303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.261776, 35.803722, 21.278732>,  <29.151320, 35.998070, 21.191391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.261776, 35.803722, 21.278732>,  <29.445869, 35.479809, 21.424303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.261776, 35.803722, 21.278732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438646, 0.563799, 0.699800,
		0.771865, 0.162437, -0.614686,
		-0.460233, 0.809780, -0.363925,
		29.123707, 36.046658, 21.169556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.930944, 35.946224, 21.505602>,  <29.445869, 35.479809, 21.424303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.930944, 35.946224, 21.505602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.579050, 36.136322, 21.511379>,  <29.367912, 36.250381, 21.514847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.579050, 36.136322, 21.511379>,  <29.930944, 35.946224, 21.505602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.579050, 36.136322, 21.511379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296970, 0.525501, 0.797282,
		0.371309, 0.705688, -0.603435,
		-0.879738, 0.475240, 0.014446,
		29.315128, 36.278893, 21.515713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.106054, 36.577190, 21.576843>,  <29.930944, 35.946224, 21.505602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.106054, 36.577190, 21.576843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.719395, 36.619709, 21.670050>,  <29.487400, 36.645218, 21.725973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.719395, 36.619709, 21.670050>,  <30.106054, 36.577190, 21.576843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.719395, 36.619709, 21.670050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253077, 0.536103, 0.805323,
		-0.039320, 0.837433, -0.545123,
		-0.966647, 0.106293, 0.233015,
		29.429401, 36.651596, 21.739954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.878223, 37.276203, 21.772545>,  <30.106054, 36.577190, 21.576843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.878223, 37.276203, 21.772545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.600735, 37.048996, 21.949680>,  <29.434242, 36.912670, 22.055962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.600735, 37.048996, 21.949680>,  <29.878223, 37.276203, 21.772545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.600735, 37.048996, 21.949680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039995, 0.583517, 0.811116,
		-0.719133, 0.580399, -0.382080,
		-0.693721, -0.568018, 0.442839,
		29.392618, 36.878590, 22.082533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.416088, 37.778111, 22.055441>,  <29.878223, 37.276203, 21.772545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.416088, 37.778111, 22.055441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.355087, 37.422768, 22.228674>,  <29.318487, 37.209560, 22.332613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.355087, 37.422768, 22.228674>,  <29.416088, 37.778111, 22.055441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.355087, 37.422768, 22.228674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168933, 0.408328, 0.897067,
		-0.973758, 0.209968, 0.087802,
		-0.152503, -0.888359, 0.433083,
		29.309336, 37.156261, 22.358599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.261339, 37.968567, 22.742105>,  <29.416088, 37.778111, 22.055441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.261339, 37.968567, 22.742105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.314037, 37.573277, 22.773226>,  <29.345655, 37.336102, 22.791899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.314037, 37.573277, 22.773226>,  <29.261339, 37.968567, 22.742105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.314037, 37.573277, 22.773226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363885, 0.121217, 0.923522,
		-0.922080, -0.093357, 0.375571,
		0.131743, -0.988226, 0.077801,
		29.353559, 37.276810, 22.796566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.903675, 37.720352, 23.382126>,  <29.261339, 37.968567, 22.742105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.903675, 37.720352, 23.382126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.193184, 37.452324, 23.316200>,  <29.366888, 37.291508, 23.276646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.193184, 37.452324, 23.316200>,  <28.903675, 37.720352, 23.382126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.193184, 37.452324, 23.316200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196718, -0.028570, 0.980044,
		-0.661406, -0.741749, 0.111137,
		0.723771, -0.670069, -0.164812,
		29.410315, 37.251305, 23.266756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.818851, 37.207481, 23.818829>,  <28.903675, 37.720352, 23.382126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.818851, 37.207481, 23.818829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.183743, 37.078754, 23.717417>,  <29.402678, 37.001518, 23.656570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.183743, 37.078754, 23.717417>,  <28.818851, 37.207481, 23.818829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.183743, 37.078754, 23.717417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118546, -0.385013, 0.915266,
		-0.392166, -0.864982, -0.313068,
		0.912224, -0.321823, -0.253529,
		29.457411, 36.982208, 23.641357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.873268, 36.501503, 23.996443>,  <28.818851, 37.207481, 23.818829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.873268, 36.501503, 23.996443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.239170, 36.661991, 24.015394>,  <29.458712, 36.758282, 24.026766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.239170, 36.661991, 24.015394>,  <28.873268, 36.501503, 23.996443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.239170, 36.661991, 24.015394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110464, -0.361196, 0.925924,
		0.388609, -0.841762, -0.374727,
		0.914757, 0.401216, 0.047380,
		29.513597, 36.782356, 24.029608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.316204, 35.903515, 24.182909>,  <28.873268, 36.501503, 23.996443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.316204, 35.903515, 24.182909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.537586, 36.228912, 24.254370>,  <29.670416, 36.424152, 24.297245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.537586, 36.228912, 24.254370>,  <29.316204, 35.903515, 24.182909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.537586, 36.228912, 24.254370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200015, -0.338038, 0.919633,
		0.808505, -0.473244, -0.349800,
		0.553456, 0.813493, 0.178649,
		29.703623, 36.472961, 24.307964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.056520, 35.659290, 24.358694>,  <29.316204, 35.903515, 24.182909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.056520, 35.659290, 24.358694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.012007, 36.034264, 24.490652>,  <29.985298, 36.259247, 24.569826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.012007, 36.034264, 24.490652>,  <30.056520, 35.659290, 24.358694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.012007, 36.034264, 24.490652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168935, -0.309281, 0.935845,
		0.979325, 0.159875, -0.123947,
		-0.111284, 0.937436, 0.329895,
		29.978622, 36.315495, 24.589621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.630833, 35.674603, 24.766678>,  <30.056520, 35.659290, 24.358694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.630833, 35.674603, 24.766678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.386562, 35.979610, 24.852135>,  <30.240000, 36.162613, 24.903408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.386562, 35.979610, 24.852135>,  <30.630833, 35.674603, 24.766678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.386562, 35.979610, 24.852135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229109, -0.088122, 0.969404,
		0.758013, 0.640940, -0.120886,
		-0.610676, 0.762516, 0.213643,
		30.203360, 36.208366, 24.916227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.033319, 36.046127, 25.119761>,  <30.630833, 35.674603, 24.766678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.033319, 36.046127, 25.119761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.685539, 36.211235, 25.228336>,  <30.476871, 36.310299, 25.293482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.685539, 36.211235, 25.228336>,  <31.033319, 36.046127, 25.119761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.685539, 36.211235, 25.228336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316019, 0.042370, 0.947806,
		0.379721, 0.909851, -0.167280,
		-0.869450, 0.412766, 0.271441,
		30.424704, 36.335064, 25.309769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.117004, 36.586647, 25.600479>,  <31.033319, 36.046127, 25.119761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.117004, 36.586647, 25.600479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.735529, 36.496738, 25.680433>,  <30.506643, 36.442795, 25.728405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.735529, 36.496738, 25.680433>,  <31.117004, 36.586647, 25.600479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.735529, 36.496738, 25.680433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172788, 0.134567, 0.975723,
		-0.246212, 0.965075, -0.089498,
		-0.953690, -0.224770, 0.199885,
		30.449423, 36.429306, 25.740398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.828753, 37.161652, 26.082687>,  <31.117004, 36.586647, 25.600479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.828753, 37.161652, 26.082687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.596558, 36.838478, 26.123247>,  <30.457241, 36.644573, 26.147583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.596558, 36.838478, 26.123247>,  <30.828753, 37.161652, 26.082687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.596558, 36.838478, 26.123247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018818, 0.111184, 0.993622,
		-0.814052, 0.578692, -0.049337,
		-0.580487, -0.807932, 0.101399,
		30.422411, 36.596100, 26.153667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.259369, 37.353008, 26.644156>,  <30.828753, 37.161652, 26.082687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.259369, 37.353008, 26.644156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.280760, 36.954071, 26.624342>,  <30.293594, 36.714710, 26.612453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.280760, 36.954071, 26.624342>,  <30.259369, 37.353008, 26.644156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.280760, 36.954071, 26.624342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065688, -0.045982, 0.996780,
		-0.996406, -0.056557, 0.063054,
		0.053476, -0.997340, -0.049532,
		30.296803, 36.654869, 26.609482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.803007, 36.984360, 27.192442>,  <30.259369, 37.353008, 26.644156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.803007, 36.984360, 27.192442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.056013, 36.694225, 27.083767>,  <30.207817, 36.520145, 27.018562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.056013, 36.694225, 27.083767>,  <29.803007, 36.984360, 27.192442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.056013, 36.694225, 27.083767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315214, -0.079351, 0.945697,
		-0.707504, -0.683810, 0.178445,
		0.632517, -0.725333, -0.271687,
		30.245768, 36.476624, 27.002260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.803732, 36.461742, 27.718102>,  <29.803007, 36.984360, 27.192442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.803732, 36.461742, 27.718102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.143566, 36.375210, 27.525681>,  <30.347466, 36.323292, 27.410229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.143566, 36.375210, 27.525681>,  <29.803732, 36.461742, 27.718102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.143566, 36.375210, 27.525681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486059, -0.033072, 0.873300,
		-0.204831, -0.975760, 0.077052,
		0.849583, -0.216331, -0.481051,
		30.398441, 36.310310, 27.381365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.077517, 35.928448, 28.134144>,  <29.803732, 36.461742, 27.718102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.077517, 35.928448, 28.134144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.373541, 36.091698, 27.920324>,  <30.551155, 36.189648, 27.792032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.373541, 36.091698, 27.920324>,  <30.077517, 35.928448, 28.134144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.373541, 36.091698, 27.920324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589741, -0.011741, 0.807507,
		0.323288, -0.912850, -0.249377,
		0.740061, 0.408126, -0.534549,
		30.595560, 36.214134, 27.759960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.696234, 35.395683, 28.303890>,  <30.077517, 35.928448, 28.134144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.696234, 35.395683, 28.303890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.849312, 35.733139, 28.153255>,  <30.941158, 35.935612, 28.062874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.849312, 35.733139, 28.153255>,  <30.696234, 35.395683, 28.303890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.849312, 35.733139, 28.153255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723291, -0.019981, 0.690254,
		0.574800, -0.536539, -0.617843,
		0.382694, 0.843639, -0.376589,
		30.964119, 35.986229, 28.040279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.360390, 35.246819, 28.439329>,  <30.696234, 35.395683, 28.303890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.360390, 35.246819, 28.439329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.346155, 35.638344, 28.358664>,  <31.337614, 35.873257, 28.310265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.346155, 35.638344, 28.358664>,  <31.360390, 35.246819, 28.439329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.346155, 35.638344, 28.358664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760441, 0.157452, 0.630031,
		0.648432, -0.130932, -0.749929,
		-0.035586, 0.978809, -0.201662,
		31.335480, 35.931988, 28.298164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.137264, 35.508766, 28.239197>,  <31.360390, 35.246819, 28.439329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.137264, 35.508766, 28.239197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.901955, 35.803905, 28.371571>,  <31.760769, 35.980988, 28.450994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.901955, 35.803905, 28.371571>,  <32.137264, 35.508766, 28.239197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.901955, 35.803905, 28.371571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704192, 0.266226, 0.658208,
		0.397554, 0.620246, -0.676200,
		-0.588272, 0.737848, 0.330933,
		31.725473, 36.025261, 28.470850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.576969, 36.053516, 28.239040>,  <32.137264, 35.508766, 28.239197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.576969, 36.053516, 28.239040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.273655, 36.116478, 28.492094>,  <32.091667, 36.154255, 28.643927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.273655, 36.116478, 28.492094>,  <32.576969, 36.053516, 28.239040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.273655, 36.116478, 28.492094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644667, 0.325447, 0.691729,
		-0.097005, 0.932366, -0.348257,
		-0.758284, 0.157408, 0.632636,
		32.046169, 36.163700, 28.681885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.691776, 36.765896, 28.487122>,  <32.576969, 36.053516, 28.239040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.691776, 36.765896, 28.487122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.460171, 36.571903, 28.749277>,  <32.321205, 36.455509, 28.906570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.460171, 36.571903, 28.749277>,  <32.691776, 36.765896, 28.487122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.460171, 36.571903, 28.749277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585326, 0.312320, 0.748231,
		-0.567569, 0.816853, 0.103034,
		-0.579015, -0.484981, 0.655389,
		32.286465, 36.426411, 28.945894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.561584, 37.238422, 29.030697>,  <32.691776, 36.765896, 28.487122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.561584, 37.238422, 29.030697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.462097, 36.901371, 29.221743>,  <32.402405, 36.699139, 29.336370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.462097, 36.901371, 29.221743>,  <32.561584, 37.238422, 29.030697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.462097, 36.901371, 29.221743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479827, 0.321156, 0.816471,
		-0.841371, 0.432242, 0.324440,
		-0.248717, -0.842631, 0.477612,
		32.387482, 36.648582, 29.365026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.474041, 37.417744, 29.667664>,  <32.561584, 37.238422, 29.030697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.474041, 37.417744, 29.667664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.515766, 37.022411, 29.712048>,  <32.540802, 36.785210, 29.738678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.515766, 37.022411, 29.712048>,  <32.474041, 37.417744, 29.667664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.515766, 37.022411, 29.712048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489555, 0.148144, 0.859296,
		-0.865710, -0.035318, 0.499298,
		0.104316, -0.988335, 0.110960,
		32.547062, 36.725910, 29.745335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.289719, 37.198574, 30.385939>,  <32.474041, 37.417744, 29.667664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.289719, 37.198574, 30.385939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.503414, 36.882915, 30.264723>,  <32.631634, 36.693520, 30.191994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.503414, 36.882915, 30.264723>,  <32.289719, 37.198574, 30.385939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.503414, 36.882915, 30.264723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438783, -0.047535, 0.897335,
		-0.722534, -0.612362, 0.320869,
		0.534242, -0.789147, -0.303040,
		32.663685, 36.646172, 30.173811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.142212, 36.681374, 30.899660>,  <32.289719, 37.198574, 30.385939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.142212, 36.681374, 30.899660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.480389, 36.561932, 30.722548>,  <32.683296, 36.490265, 30.616280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.480389, 36.561932, 30.722548>,  <32.142212, 36.681374, 30.899660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.480389, 36.561932, 30.722548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515219, 0.237746, 0.823423,
		-0.140608, -0.924290, 0.354848,
		0.845446, -0.298604, -0.442783,
		32.734024, 36.472351, 30.589712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.438705, 36.217171, 31.318010>,  <32.142212, 36.681374, 30.899660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.438705, 36.217171, 31.318010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.746967, 36.376225, 31.118824>,  <32.931927, 36.471657, 30.999311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.746967, 36.376225, 31.118824>,  <32.438705, 36.217171, 31.318010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.746967, 36.376225, 31.118824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558517, -0.045214, 0.828260,
		0.306833, -0.916427, -0.256932,
		0.770657, 0.397639, -0.497967,
		32.978165, 36.495518, 30.969433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.938446, 35.885704, 31.631062>,  <32.438705, 36.217171, 31.318010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.938446, 35.885704, 31.631062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.109879, 36.189075, 31.434652>,  <33.212738, 36.371098, 31.316807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.109879, 36.189075, 31.434652>,  <32.938446, 35.885704, 31.631062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.109879, 36.189075, 31.434652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694882, 0.070648, 0.715645,
		0.577454, -0.647918, -0.496739,
		0.428586, 0.758427, -0.491022,
		33.238453, 36.416603, 31.287346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.708763, 35.643578, 31.499422>,  <32.938446, 35.885704, 31.631062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.708763, 35.643578, 31.499422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.634392, 36.036491, 31.490091>,  <33.589767, 36.272240, 31.484493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.634392, 36.036491, 31.490091>,  <33.708763, 35.643578, 31.499422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.634392, 36.036491, 31.490091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560914, 0.125603, 0.818291,
		0.806725, 0.139062, -0.574331,
		-0.185931, 0.982286, -0.023326,
		33.578613, 36.331177, 31.483093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.349167, 35.947960, 31.452467>,  <33.708763, 35.643578, 31.499422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.349167, 35.947960, 31.452467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.112724, 36.238297, 31.593176>,  <33.970860, 36.412498, 31.677601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.112724, 36.238297, 31.593176>,  <34.349167, 35.947960, 31.452467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.112724, 36.238297, 31.593176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590788, 0.092696, 0.801484,
		0.549142, 0.681588, -0.483612,
		-0.591111, 0.725841, 0.351771,
		33.935390, 36.456047, 31.698708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.782196, 36.372704, 31.743284>,  <34.349167, 35.947960, 31.452467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.782196, 36.372704, 31.743284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.452068, 36.529636, 31.905727>,  <34.253990, 36.623795, 32.003193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.452068, 36.529636, 31.905727>,  <34.782196, 36.372704, 31.743284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.452068, 36.529636, 31.905727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543471, 0.356729, 0.759858,
		0.153243, 0.847835, -0.507635,
		-0.825322, 0.392328, 0.406107,
		34.204472, 36.647335, 32.027561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.355049, 36.331261, 32.218643>,  <34.782196, 36.372704, 31.743284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.355049, 36.331261, 32.218643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.706379, 36.155350, 32.143661>,  <35.917179, 36.049805, 32.098675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.706379, 36.155350, 32.143661>,  <35.355049, 36.331261, 32.218643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.706379, 36.155350, 32.143661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133180, 0.151489, -0.979446,
		0.459131, 0.885240, 0.074488,
		0.878329, -0.439774, -0.187450,
		35.969879, 36.023418, 32.087425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.746693, 36.774727, 31.845533>,  <35.355049, 36.331261, 32.218643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.746693, 36.774727, 31.845533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.908127, 36.414589, 31.780420>,  <36.004986, 36.198505, 31.741352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.908127, 36.414589, 31.780420>,  <35.746693, 36.774727, 31.845533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.908127, 36.414589, 31.780420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043846, 0.158680, -0.986356,
		0.913891, 0.405215, 0.024564,
		0.403584, -0.900345, -0.162784,
		36.029202, 36.144485, 31.731585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.235188, 36.875984, 31.343126>,  <35.746693, 36.774727, 31.845533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.235188, 36.875984, 31.343126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.186043, 36.479721, 31.319437>,  <36.156555, 36.241962, 31.305223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.186043, 36.479721, 31.319437>,  <36.235188, 36.875984, 31.343126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.186043, 36.479721, 31.319437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024901, 0.062734, -0.997720,
		0.992111, -0.121108, -0.032376,
		-0.122863, -0.990655, -0.059223,
		36.149185, 36.182526, 31.301670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.782574, 36.655857, 30.911526>,  <36.235188, 36.875984, 31.343126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.782574, 36.655857, 30.911526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.492867, 36.380535, 30.895182>,  <36.319042, 36.215343, 30.885374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.492867, 36.380535, 30.895182>,  <36.782574, 36.655857, 30.911526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.492867, 36.380535, 30.895182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054487, 0.116210, -0.991729,
		0.687359, -0.716054, -0.121671,
		-0.724271, -0.688303, -0.040862,
		36.275585, 36.174046, 30.882923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.904675, 36.298195, 30.355875>,  <36.782574, 36.655857, 30.911526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.904675, 36.298195, 30.355875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.516376, 36.220146, 30.411852>,  <36.283398, 36.173317, 30.445438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.516376, 36.220146, 30.411852>,  <36.904675, 36.298195, 30.355875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.516376, 36.220146, 30.411852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162838, 0.106656, -0.980871,
		0.176467, -0.974962, -0.135309,
		-0.970743, -0.195125, 0.139940,
		36.225155, 36.161610, 30.453835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.725780, 35.760754, 29.867441>,  <36.904675, 36.298195, 30.355875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.725780, 35.760754, 29.867441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.369915, 35.916012, 29.963648>,  <36.156395, 36.009167, 30.021372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.369915, 35.916012, 29.963648>,  <36.725780, 35.760754, 29.867441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.369915, 35.916012, 29.963648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256900, 0.009996, -0.966386,
		-0.377499, -0.921545, 0.090821,
		-0.889661, 0.388142, 0.240519,
		36.103016, 36.032455, 30.035803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.229813, 35.248180, 29.584654>,  <36.725780, 35.760754, 29.867441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.229813, 35.248180, 29.584654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.040123, 35.595055, 29.645458>,  <35.926311, 35.803177, 29.681940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.040123, 35.595055, 29.645458>,  <36.229813, 35.248180, 29.584654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.040123, 35.595055, 29.645458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301815, 0.002067, -0.953364,
		-0.827056, -0.497985, 0.260749,
		-0.474222, 0.867183, 0.152009,
		35.897858, 35.855209, 29.691061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.507011, 35.204536, 29.506180>,  <36.229813, 35.248180, 29.584654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.507011, 35.204536, 29.506180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.568542, 35.595306, 29.446903>,  <35.605461, 35.829769, 29.411337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.568542, 35.595306, 29.446903>,  <35.507011, 35.204536, 29.506180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.568542, 35.595306, 29.446903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346532, -0.087114, -0.933984,
		-0.925340, 0.195023, 0.325135,
		0.153824, 0.976922, -0.148192,
		35.614689, 35.888382, 29.402445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.004505, 35.285717, 29.036444>,  <35.507011, 35.204536, 29.506180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.004505, 35.285717, 29.036444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.197361, 35.635975, 29.025267>,  <35.313076, 35.846130, 29.018560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.197361, 35.635975, 29.025267>,  <35.004505, 35.285717, 29.036444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.197361, 35.635975, 29.025267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313650, 0.142744, -0.938748,
		-0.818026, 0.461370, 0.343470,
		0.482138, 0.875649, -0.027941,
		35.342003, 35.898670, 29.016884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.498142, 35.860626, 28.936657>,  <35.004505, 35.285717, 29.036444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.498142, 35.860626, 28.936657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.861225, 35.954884, 28.797783>,  <35.079075, 36.011436, 28.714458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.861225, 35.954884, 28.797783>,  <34.498142, 35.860626, 28.936657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.861225, 35.954884, 28.797783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372629, 0.072305, -0.925159,
		-0.192906, 0.969146, 0.153440,
		0.907709, 0.235645, -0.347184,
		35.133537, 36.025578, 28.693628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.294960, 36.422012, 28.494699>,  <34.498142, 35.860626, 28.936657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.294960, 36.422012, 28.494699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.666645, 36.307018, 28.401823>,  <34.889656, 36.238022, 28.346098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.666645, 36.307018, 28.401823>,  <34.294960, 36.422012, 28.494699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.666645, 36.307018, 28.401823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167655, 0.231974, -0.958165,
		0.329321, 0.929269, 0.167355,
		0.929214, -0.287486, -0.232191,
		34.945408, 36.220772, 28.332167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.571030, 36.983742, 28.060953>,  <34.294960, 36.422012, 28.494699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.571030, 36.983742, 28.060953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.780964, 36.648254, 28.002842>,  <34.906925, 36.446964, 27.967976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.780964, 36.648254, 28.002842>,  <34.571030, 36.983742, 28.060953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.780964, 36.648254, 28.002842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038025, 0.147401, -0.988345,
		0.850355, 0.524241, 0.045469,
		0.524834, -0.838716, -0.145278,
		34.938416, 36.396641, 27.959259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.978893, 37.158062, 27.540564>,  <34.571030, 36.983742, 28.060953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.978893, 37.158062, 27.540564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.975853, 36.758080, 27.538479>,  <34.974030, 36.518089, 27.537228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.975853, 36.758080, 27.538479>,  <34.978893, 37.158062, 27.540564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.975853, 36.758080, 27.538479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134723, 0.006188, -0.990864,
		0.990854, -0.006827, -0.134764,
		-0.007599, -0.999957, -0.005212,
		34.973572, 36.458092, 27.536915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.463787, 36.927277, 27.061495>,  <34.978893, 37.158062, 27.540564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.463787, 36.927277, 27.061495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.184090, 36.641514, 27.071941>,  <35.016270, 36.470055, 27.078209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.184090, 36.641514, 27.071941>,  <35.463787, 36.927277, 27.061495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.184090, 36.641514, 27.071941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085435, 0.047241, -0.995223,
		0.709762, -0.698133, -0.094068,
		-0.699242, -0.714408, 0.026115,
		34.974316, 36.427193, 27.079777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.375153, 36.635704, 26.263575>,  <35.463787, 36.927277, 27.061495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.375153, 36.635704, 26.263575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.041470, 36.490528, 26.429647>,  <34.841259, 36.403423, 26.529291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.041470, 36.490528, 26.429647>,  <35.375153, 36.635704, 26.263575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.041470, 36.490528, 26.429647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327411, -0.279847, -0.902490,
		0.443740, -0.888796, 0.114618,
		-0.834204, -0.362943, 0.415181,
		34.791206, 36.381645, 26.554201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.228905, 36.060425, 25.827772>,  <35.375153, 36.635704, 26.263575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.228905, 36.060425, 25.827772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.885738, 36.097881, 26.029846>,  <34.679840, 36.120354, 26.151091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.885738, 36.097881, 26.029846>,  <35.228905, 36.060425, 25.827772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.885738, 36.097881, 26.029846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511009, -0.053373, -0.857917,
		-0.053373, -0.994174, 0.093640,
		0.857917, -0.093640, -0.505183,
		34.628365, 36.125973, 26.181400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.740253, 35.640163, 25.571329>,  <35.228905, 36.060425, 25.827772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.740253, 35.640163, 25.571329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.513599, 35.919205, 25.746727>,  <34.377609, 36.086628, 25.851965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.513599, 35.919205, 25.746727>,  <34.740253, 35.640163, 25.571329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.513599, 35.919205, 25.746727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603854, 0.010505, -0.797026,
		-0.560615, -0.716406, 0.415299,
		-0.566631, 0.697605, 0.438494,
		34.343609, 36.128487, 25.878275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.098755, 35.392567, 25.549431>,  <34.740253, 35.640163, 25.571329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.098755, 35.392567, 25.549431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.013748, 35.781258, 25.590578>,  <33.962746, 36.014473, 25.615267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.013748, 35.781258, 25.590578>,  <34.098755, 35.392567, 25.549431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.013748, 35.781258, 25.590578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753090, -0.095790, -0.650907,
		-0.622651, -0.215796, 0.752156,
		-0.212512, 0.971728, 0.102870,
		33.949993, 36.072777, 25.621439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.352253, 35.483131, 25.599958>,  <34.098755, 35.392567, 25.549431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.352253, 35.483131, 25.599958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.458469, 35.858246, 25.510473>,  <33.522202, 36.083313, 25.456783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.458469, 35.858246, 25.510473>,  <33.352253, 35.483131, 25.599958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.458469, 35.858246, 25.510473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716075, 0.036476, -0.697070,
		-0.645542, 0.345295, 0.681210,
		0.265543, 0.937785, -0.223711,
		33.538132, 36.139580, 25.443359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.751114, 35.915157, 25.644876>,  <33.352253, 35.483131, 25.599958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.751114, 35.915157, 25.644876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.994545, 36.126171, 25.407782>,  <33.140606, 36.252777, 25.265524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.994545, 36.126171, 25.407782>,  <32.751114, 35.915157, 25.644876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.994545, 36.126171, 25.407782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707142, 0.021693, -0.706738,
		-0.359968, 0.849259, 0.386242,
		0.608583, 0.527532, -0.592738,
		33.177120, 36.284431, 25.229959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.277077, 36.388199, 25.436705>,  <32.751114, 35.915157, 25.644876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.277077, 36.388199, 25.436705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.583195, 36.380630, 25.179342>,  <32.766865, 36.376087, 25.024925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.583195, 36.380630, 25.179342>,  <32.277077, 36.388199, 25.436705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.583195, 36.380630, 25.179342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640372, 0.078908, -0.764001,
		0.065228, 0.996702, 0.048269,
		0.765290, -0.018924, -0.643407,
		32.812782, 36.374954, 24.986320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.107784, 36.975384, 24.931150>,  <32.277077, 36.388199, 25.436705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.107784, 36.975384, 24.931150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.398052, 36.779373, 24.737957>,  <32.572212, 36.661766, 24.622042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.398052, 36.779373, 24.737957>,  <32.107784, 36.975384, 24.931150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.398052, 36.779373, 24.737957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404820, 0.263524, -0.875600,
		0.556349, 0.830918, -0.007143,
		0.725670, -0.490031, -0.482983,
		32.615753, 36.632362, 24.593061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.427498, 37.355061, 24.362461>,  <32.107784, 36.975384, 24.931150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.427498, 37.355061, 24.362461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.467434, 36.967731, 24.270916>,  <32.491394, 36.735332, 24.215990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.467434, 36.967731, 24.270916>,  <32.427498, 37.355061, 24.362461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.467434, 36.967731, 24.270916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459132, 0.159223, -0.873982,
		0.882740, 0.192337, -0.428693,
		0.099841, -0.968325, -0.228861,
		32.497387, 36.677235, 24.202257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.463039, 37.459484, 23.669170>,  <32.427498, 37.355061, 24.362461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.463039, 37.459484, 23.669170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.400063, 37.067833, 23.720598>,  <32.362278, 36.832844, 23.751455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.400063, 37.067833, 23.720598>,  <32.463039, 37.459484, 23.669170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.400063, 37.067833, 23.720598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365820, -0.063107, -0.928544,
		0.917273, -0.193222, -0.348248,
		-0.157438, -0.979123, 0.128571,
		32.352833, 36.774097, 23.759169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.897598, 37.042820, 23.172857>,  <32.463039, 37.459484, 23.669170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.897598, 37.042820, 23.172857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.584991, 36.816692, 23.278423>,  <32.397427, 36.681015, 23.341763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.584991, 36.816692, 23.278423>,  <32.897598, 37.042820, 23.172857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.584991, 36.816692, 23.278423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180476, -0.200082, -0.963014,
		0.597215, -0.800238, 0.054340,
		-0.781513, -0.565319, 0.263916,
		32.350536, 36.647099, 23.357597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.898918, 36.629932, 22.666498>,  <32.897598, 37.042820, 23.172857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.898918, 36.629932, 22.666498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.539730, 36.542446, 22.819237>,  <32.324215, 36.489956, 22.910879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.539730, 36.542446, 22.819237>,  <32.898918, 36.629932, 22.666498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.539730, 36.542446, 22.819237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339846, -0.206565, -0.917516,
		0.279548, -0.953675, 0.111162,
		-0.897975, -0.218712, 0.381847,
		32.270336, 36.476833, 22.933790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.758701, 35.913448, 22.560352>,  <32.898918, 36.629932, 22.666498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.758701, 35.913448, 22.560352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.388012, 36.062134, 22.582300>,  <32.165600, 36.151344, 22.595469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.388012, 36.062134, 22.582300>,  <32.758701, 35.913448, 22.560352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.388012, 36.062134, 22.582300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207666, -0.384988, -0.899255,
		-0.313141, -0.844756, 0.433970,
		-0.926724, 0.371715, 0.054872,
		32.109997, 36.173649, 22.598761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.432987, 35.357952, 22.408630>,  <32.758701, 35.913448, 22.560352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.432987, 35.357952, 22.408630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.161030, 35.643539, 22.341703>,  <31.997856, 35.814892, 22.301548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.161030, 35.643539, 22.341703>,  <32.432987, 35.357952, 22.408630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.161030, 35.643539, 22.341703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180724, -0.384267, -0.905361,
		-0.710694, -0.585309, 0.390291,
		-0.679891, 0.713970, -0.167317,
		31.957062, 35.857731, 22.291508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.850714, 35.030815, 22.190065>,  <32.432987, 35.357952, 22.408630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.850714, 35.030815, 22.190065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.791742, 35.399971, 22.047773>,  <31.756359, 35.621464, 21.962399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.791742, 35.399971, 22.047773>,  <31.850714, 35.030815, 22.190065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.791742, 35.399971, 22.047773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202918, -0.380231, -0.902357,
		-0.968034, -0.060850, 0.243328,
		-0.147429, 0.922888, -0.355729,
		31.747513, 35.676838, 21.941055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.299925, 35.005722, 21.778921>,  <31.850714, 35.030815, 22.190065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.299925, 35.005722, 21.778921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.480722, 35.344448, 21.666769>,  <31.589201, 35.547684, 21.599478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.480722, 35.344448, 21.666769>,  <31.299925, 35.005722, 21.778921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.480722, 35.344448, 21.666769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222929, -0.197109, -0.954699,
		-0.863716, 0.494021, 0.099688,
		0.451992, 0.846812, -0.280378,
		31.616320, 35.598492, 21.582655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.829466, 35.449425, 21.382900>,  <31.299925, 35.005722, 21.778921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.829466, 35.449425, 21.382900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.199745, 35.550819, 21.270596>,  <31.421913, 35.611656, 21.203213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.199745, 35.550819, 21.270596>,  <30.829466, 35.449425, 21.382900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.199745, 35.550819, 21.270596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203575, -0.291714, -0.934591,
		-0.318811, 0.922304, -0.218435,
		0.925698, 0.253490, -0.280760,
		31.477455, 35.626865, 21.186367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.723810, 35.793507, 20.761101>,  <30.829466, 35.449425, 21.382900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.723810, 35.793507, 20.761101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.115057, 35.711086, 20.749594>,  <31.349806, 35.661636, 20.742689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.115057, 35.711086, 20.749594>,  <30.723810, 35.793507, 20.761101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.115057, 35.711086, 20.749594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055171, -0.123563, -0.990802,
		0.200599, 0.970709, -0.132228,
		0.978119, -0.206049, -0.028769,
		31.408493, 35.649273, 20.740963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.877226, 36.226971, 20.271286>,  <30.723810, 35.793507, 20.761101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.877226, 36.226971, 20.271286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.193855, 35.983459, 20.292465>,  <31.383833, 35.837353, 20.305172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.193855, 35.983459, 20.292465>,  <30.877226, 36.226971, 20.271286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.193855, 35.983459, 20.292465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029159, -0.124177, -0.991832,
		0.610376, 0.783565, -0.116046,
		0.791575, -0.608774, 0.052946,
		31.431328, 35.800827, 20.308350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.341478, 36.492237, 19.768347>,  <30.877226, 36.226971, 20.271286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.341478, 36.492237, 19.768347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.452801, 36.115116, 19.841742>,  <31.519594, 35.888844, 19.885778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.452801, 36.115116, 19.841742>,  <31.341478, 36.492237, 19.768347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.452801, 36.115116, 19.841742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029965, -0.182417, -0.982765,
		0.960025, 0.279009, -0.022517,
		0.278308, -0.942803, 0.183486,
		31.536293, 35.832275, 19.896788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.926947, 36.318939, 19.298595>,  <31.341478, 36.492237, 19.768347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.926947, 36.318939, 19.298595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.761240, 35.972248, 19.409714>,  <31.661816, 35.764233, 19.476385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.761240, 35.972248, 19.409714>,  <31.926947, 36.318939, 19.298595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.761240, 35.972248, 19.409714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275409, -0.171533, -0.945900,
		0.867486, -0.468362, -0.167644,
		-0.414267, -0.866726, 0.277794,
		31.636959, 35.712231, 19.493052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.190685, 35.906204, 18.831188>,  <31.926947, 36.318939, 19.298595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.190685, 35.906204, 18.831188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.879345, 35.696728, 18.969704>,  <31.692541, 35.571041, 19.052813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.879345, 35.696728, 18.969704>,  <32.190685, 35.906204, 18.831188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.879345, 35.696728, 18.969704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205640, -0.308484, -0.928735,
		0.593198, -0.794092, 0.132416,
		-0.778350, -0.523694, 0.346289,
		31.645840, 35.539619, 19.073591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.232044, 35.165489, 18.488462>,  <32.190685, 35.906204, 18.831188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.232044, 35.165489, 18.488462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.857380, 35.247223, 18.602251>,  <31.632582, 35.296261, 18.670525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.857380, 35.247223, 18.602251>,  <32.232044, 35.165489, 18.488462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.857380, 35.247223, 18.602251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341083, -0.347535, -0.873431,
		-0.079604, -0.915133, 0.395215,
		-0.936656, 0.204330, 0.284472,
		31.576384, 35.308521, 18.687592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.135006, 34.688774, 17.851332>,  <32.232044, 35.165489, 18.488462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.135006, 34.688774, 17.851332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.360661, 34.436680, 17.637960>,  <32.496056, 34.285423, 17.509937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.360661, 34.436680, 17.637960>,  <32.135006, 34.688774, 17.851332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.360661, 34.436680, 17.637960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603145, -0.126657, 0.787511,
		-0.563883, -0.766000, 0.308674,
		0.564138, -0.630240, -0.533429,
		32.529903, 34.247608, 17.477932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.219078, 34.092224, 18.276957>,  <32.135006, 34.688774, 17.851332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.219078, 34.092224, 18.276957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.522285, 34.099548, 18.016165>,  <32.704208, 34.103943, 17.859690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.522285, 34.099548, 18.016165>,  <32.219078, 34.092224, 18.276957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.522285, 34.099548, 18.016165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651208, -0.077324, 0.754950,
		-0.036591, -0.996838, -0.070536,
		0.758017, 0.018310, -0.651978,
		32.749691, 34.105042, 17.820572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.727219, 33.627087, 18.424482>,  <32.219078, 34.092224, 18.276957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.727219, 33.627087, 18.424482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.966194, 33.881870, 18.229612>,  <33.109581, 34.034740, 18.112690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.966194, 33.881870, 18.229612>,  <32.727219, 33.627087, 18.424482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.966194, 33.881870, 18.229612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703044, -0.123814, 0.700285,
		0.385736, -0.760886, -0.521785,
		0.597441, 0.636963, -0.487177,
		33.145428, 34.072960, 18.083460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.379742, 33.342758, 18.459385>,  <32.727219, 33.627087, 18.424482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.379742, 33.342758, 18.459385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.468510, 33.724220, 18.378111>,  <33.521770, 33.953098, 18.329346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.468510, 33.724220, 18.378111>,  <33.379742, 33.342758, 18.459385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.468510, 33.724220, 18.378111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697030, -0.009445, 0.716980,
		0.681835, -0.300740, -0.666825,
		0.221922, 0.953660, -0.203185,
		33.535088, 34.010319, 18.317156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.065510, 33.348045, 18.408297>,  <33.379742, 33.342758, 18.459385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.065510, 33.348045, 18.408297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.967754, 33.733055, 18.455338>,  <33.909100, 33.964062, 18.483562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.967754, 33.733055, 18.455338>,  <34.065510, 33.348045, 18.408297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.967754, 33.733055, 18.455338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702136, 0.092005, 0.706073,
		0.668789, 0.255130, -0.698305,
		-0.244388, 0.962520, 0.117604,
		33.894440, 34.021812, 18.490618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.710114, 33.632393, 18.447575>,  <34.065510, 33.348045, 18.408297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.710114, 33.632393, 18.447575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.450893, 33.891460, 18.607855>,  <34.295361, 34.046902, 18.704023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.450893, 33.891460, 18.607855>,  <34.710114, 33.632393, 18.447575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.450893, 33.891460, 18.607855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619513, 0.142267, 0.771987,
		0.442983, 0.748524, -0.493434,
		-0.648050, 0.647666, 0.400699,
		34.256477, 34.085762, 18.728064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.102943, 34.193489, 18.657333>,  <34.710114, 33.632393, 18.447575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.102943, 34.193489, 18.657333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.761482, 34.225578, 18.863182>,  <34.556606, 34.244831, 18.986691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.761482, 34.225578, 18.863182>,  <35.102943, 34.193489, 18.657333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.761482, 34.225578, 18.863182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518905, 0.216021, 0.827087,
		-0.044820, 0.973088, -0.226034,
		-0.853656, 0.080220, 0.514622,
		34.505386, 34.249645, 19.017569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.333519, 34.758934, 19.154657>,  <35.102943, 34.193489, 18.657333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.333519, 34.758934, 19.154657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.992867, 34.596474, 19.287180>,  <34.788475, 34.498997, 19.366693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.992867, 34.596474, 19.287180>,  <35.333519, 34.758934, 19.154657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.992867, 34.596474, 19.287180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306408, 0.127051, 0.943383,
		-0.425248, 0.904931, 0.016247,
		-0.851633, -0.406150, 0.331307,
		34.737377, 34.474628, 19.386572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.983440, 35.235451, 19.743124>,  <35.333519, 34.758934, 19.154657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.983440, 35.235451, 19.743124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.866795, 34.853329, 19.762482>,  <34.796806, 34.624054, 19.774096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.866795, 34.853329, 19.762482>,  <34.983440, 35.235451, 19.743124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.866795, 34.853329, 19.762482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284107, -0.038195, 0.958031,
		-0.913368, 0.293129, 0.282549,
		-0.291619, -0.955310, 0.048394,
		34.779308, 34.566734, 19.777000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.577724, 35.259293, 20.400902>,  <34.983440, 35.235451, 19.743124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.577724, 35.259293, 20.400902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.591660, 34.864140, 20.340397>,  <34.600021, 34.627048, 20.304094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.591660, 34.864140, 20.340397>,  <34.577724, 35.259293, 20.400902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.591660, 34.864140, 20.340397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021810, -0.152071, 0.988129,
		-0.999155, -0.031123, -0.026844,
		0.034836, -0.987879, -0.151264,
		34.602112, 34.567776, 20.295017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.984898, 34.982948, 20.654469>,  <34.577724, 35.259293, 20.400902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.984898, 34.982948, 20.654469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.239452, 34.674400, 20.654705>,  <34.392185, 34.489273, 20.654848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.239452, 34.674400, 20.654705>,  <33.984898, 34.982948, 20.654469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.239452, 34.674400, 20.654705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264621, -0.217595, 0.939483,
		-0.724557, -0.598036, -0.342595,
		0.636391, -0.771366, 0.000592,
		34.430370, 34.442989, 20.654882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.607738, 34.356400, 20.954210>,  <33.984898, 34.982948, 20.654469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.607738, 34.356400, 20.954210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.986244, 34.232201, 20.990381>,  <34.213348, 34.157681, 21.012085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.986244, 34.232201, 20.990381>,  <33.607738, 34.356400, 20.954210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.986244, 34.232201, 20.990381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156065, -0.193523, 0.968603,
		-0.283253, -0.930665, -0.231582,
		0.946262, -0.310502, 0.090428,
		34.270123, 34.139050, 21.017509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.521664, 33.674210, 21.293608>,  <33.607738, 34.356400, 20.954210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.521664, 33.674210, 21.293608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.880562, 33.831039, 21.374826>,  <34.095901, 33.925137, 21.423557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.880562, 33.831039, 21.374826>,  <33.521664, 33.674210, 21.293608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.880562, 33.831039, 21.374826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188998, -0.074557, 0.979143,
		0.399034, -0.916908, 0.007205,
		0.897247, 0.392073, 0.203045,
		34.149734, 33.948662, 21.435740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.791481, 33.179462, 21.822454>,  <33.521664, 33.674210, 21.293608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.791481, 33.179462, 21.822454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.009842, 33.514526, 21.829489>,  <34.140858, 33.715565, 21.833710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.009842, 33.514526, 21.829489>,  <33.791481, 33.179462, 21.822454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.009842, 33.514526, 21.829489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144717, -0.114944, 0.982774,
		0.825256, -0.533954, -0.183973,
		0.545903, 0.837664, 0.017586,
		34.173615, 33.765827, 21.834764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.384502, 33.054695, 22.242117>,  <33.791481, 33.179462, 21.822454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.384502, 33.054695, 22.242117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.399769, 33.454315, 22.250599>,  <34.408928, 33.694088, 22.255688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.399769, 33.454315, 22.250599>,  <34.384502, 33.054695, 22.242117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.399769, 33.454315, 22.250599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194042, -0.028225, 0.980587,
		0.980251, -0.033308, -0.194934,
		0.038163, 0.999047, 0.021204,
		34.411217, 33.754028, 22.256960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.979031, 33.157295, 22.658937>,  <34.384502, 33.054695, 22.242117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.979031, 33.157295, 22.658937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.768490, 33.497265, 22.668560>,  <34.642166, 33.701248, 22.674334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.768490, 33.497265, 22.668560>,  <34.979031, 33.157295, 22.658937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.768490, 33.497265, 22.668560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200219, 0.096398, 0.974997,
		0.826360, 0.518004, -0.220911,
		-0.526348, 0.849929, 0.024054,
		34.610584, 33.752243, 22.675776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.420048, 33.675583, 22.899452>,  <34.979031, 33.157295, 22.658937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.420048, 33.675583, 22.899452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.052525, 33.828716, 22.937895>,  <34.832012, 33.920597, 22.960960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.052525, 33.828716, 22.937895>,  <35.420048, 33.675583, 22.899452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.052525, 33.828716, 22.937895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200790, 0.243705, 0.948837,
		0.339822, 0.891094, -0.300786,
		-0.918806, 0.382831, 0.096107,
		34.776882, 33.943565, 22.966726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.492775, 34.398434, 23.001719>,  <35.420048, 33.675583, 22.899452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.492775, 34.398434, 23.001719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.140930, 34.280994, 23.151426>,  <34.929825, 34.210529, 23.241251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.140930, 34.280994, 23.151426>,  <35.492775, 34.398434, 23.001719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.140930, 34.280994, 23.151426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263478, 0.354371, 0.897218,
		-0.396057, 0.887817, -0.234351,
		-0.879613, -0.293603, 0.374271,
		34.877045, 34.192913, 23.263708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.342785, 34.880054, 23.549515>,  <35.492775, 34.398434, 23.001719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.342785, 34.880054, 23.549515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.097366, 34.577324, 23.639648>,  <34.950115, 34.395683, 23.693727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.097366, 34.577324, 23.639648>,  <35.342785, 34.880054, 23.549515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.097366, 34.577324, 23.639648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122435, 0.190729, 0.973977,
		-0.780111, 0.625167, -0.024359,
		-0.613544, -0.756828, 0.225332,
		34.913303, 34.350277, 23.707249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.086742, 35.085880, 24.077307>,  <35.342785, 34.880054, 23.549515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.086742, 35.085880, 24.077307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.004364, 34.696159, 24.113811>,  <34.954937, 34.462326, 24.135714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.004364, 34.696159, 24.113811>,  <35.086742, 35.085880, 24.077307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.004364, 34.696159, 24.113811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273877, 0.032146, 0.961227,
		-0.939457, 0.222951, 0.260217,
		-0.205942, -0.974299, 0.091261,
		34.942581, 34.403870, 24.141190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.869514, 35.045372, 24.648897>,  <35.086742, 35.085880, 24.077307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.869514, 35.045372, 24.648897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.934574, 34.652946, 24.606836>,  <34.973610, 34.417492, 24.581600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.934574, 34.652946, 24.606836>,  <34.869514, 35.045372, 24.648897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.934574, 34.652946, 24.606836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202248, -0.071161, 0.976746,
		-0.965734, -0.180130, 0.186844,
		0.162645, -0.981065, -0.105154,
		34.983368, 34.358627, 24.575291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.672741, 34.708862, 25.275877>,  <34.869514, 35.045372, 24.648897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.672741, 34.708862, 25.275877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.912971, 34.420612, 25.137304>,  <35.057110, 34.247662, 25.054161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.912971, 34.420612, 25.137304>,  <34.672741, 34.708862, 25.275877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.912971, 34.420612, 25.137304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409466, -0.094953, 0.907371,
		-0.686765, -0.686796, 0.238044,
		0.600575, -0.720622, -0.346430,
		35.093143, 34.204426, 25.033375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.675129, 34.118580, 25.749767>,  <34.672741, 34.708862, 25.275877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.675129, 34.118580, 25.749767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.008076, 34.063671, 25.534986>,  <35.207844, 34.030727, 25.406118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.008076, 34.063671, 25.534986>,  <34.675129, 34.118580, 25.749767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.008076, 34.063671, 25.534986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531308, -0.078049, 0.843576,
		-0.157708, -0.987454, 0.007968,
		0.832371, -0.137272, -0.536951,
		35.257786, 34.022491, 25.373901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.092644, 33.532558, 26.081804>,  <34.675129, 34.118580, 25.749767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.092644, 33.532558, 26.081804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.339729, 33.759117, 25.863586>,  <35.487980, 33.895054, 25.732656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.339729, 33.759117, 25.863586>,  <35.092644, 33.532558, 26.081804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.339729, 33.759117, 25.863586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677563, -0.031206, 0.734803,
		0.399166, -0.823542, -0.403046,
		0.617718, 0.566397, -0.545545,
		35.525043, 33.929035, 25.699923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.812851, 33.308132, 26.302261>,  <35.092644, 33.532558, 26.081804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.812851, 33.308132, 26.302261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.878365, 33.664280, 26.132357>,  <35.917671, 33.877968, 26.030415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.878365, 33.664280, 26.132357>,  <35.812851, 33.308132, 26.302261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.878365, 33.664280, 26.132357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774731, 0.150468, 0.614127,
		0.610712, -0.429657, -0.665152,
		0.163780, 0.890368, -0.424761,
		35.927498, 33.931389, 26.004929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.514141, 33.399345, 26.304274>,  <35.812851, 33.308132, 26.302261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.514141, 33.399345, 26.304274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.361206, 33.767033, 26.266636>,  <36.269444, 33.987644, 26.244053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.361206, 33.767033, 26.266636>,  <36.514141, 33.399345, 26.304274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.361206, 33.767033, 26.266636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554688, 0.309767, 0.772247,
		0.739010, 0.243070, -0.628316,
		-0.382342, 0.919218, -0.094093,
		36.246502, 34.042797, 26.238407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.053574, 33.897617, 26.234882>,  <36.514141, 33.399345, 26.304274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.053574, 33.897617, 26.234882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.751373, 34.119106, 26.374949>,  <36.570053, 34.251999, 26.458988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.751373, 34.119106, 26.374949>,  <37.053574, 33.897617, 26.234882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.751373, 34.119106, 26.374949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514784, 0.171122, 0.840068,
		0.405243, 0.814929, -0.414329,
		-0.755497, 0.553721, 0.350166,
		36.524723, 34.285221, 26.479998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.367538, 34.573864, 26.351376>,  <37.053574, 33.897617, 26.234882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.367538, 34.573864, 26.351376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.035606, 34.550484, 26.573355>,  <36.836449, 34.536457, 26.706543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.035606, 34.550484, 26.573355>,  <37.367538, 34.573864, 26.351376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.035606, 34.550484, 26.573355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523966, 0.260462, 0.810937,
		-0.191942, 0.963713, -0.185513,
		-0.829830, -0.058450, 0.554947,
		36.786659, 34.532948, 26.739840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.267319, 35.270050, 26.741234>,  <37.367538, 34.573864, 26.351376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.267319, 35.270050, 26.741234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.068859, 34.976048, 26.926107>,  <36.949783, 34.799648, 27.037031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.068859, 34.976048, 26.926107>,  <37.267319, 35.270050, 26.741234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.068859, 34.976048, 26.926107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462719, 0.226586, 0.857059,
		-0.734664, 0.639086, 0.227680,
		-0.496145, -0.735002, 0.462182,
		36.920017, 34.755547, 27.064762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.210831, 35.629066, 27.375076>,  <37.267319, 35.270050, 26.741234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.210831, 35.629066, 27.375076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.125973, 35.243858, 27.441505>,  <37.075058, 35.012733, 27.481363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.125973, 35.243858, 27.441505>,  <37.210831, 35.629066, 27.375076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.125973, 35.243858, 27.441505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340290, 0.086505, 0.936333,
		-0.916077, 0.255153, 0.309355,
		-0.212147, -0.963023, 0.166072,
		37.062328, 34.954952, 27.491327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.882061, 35.571934, 28.004742>,  <37.210831, 35.629066, 27.375076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.882061, 35.571934, 28.004742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.025917, 35.202396, 27.952326>,  <37.112232, 34.980675, 27.920877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.025917, 35.202396, 27.952326>,  <36.882061, 35.571934, 28.004742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.025917, 35.202396, 27.952326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253839, -0.038270, 0.966489,
		-0.897900, -0.380852, 0.220744,
		0.359642, -0.923844, -0.131038,
		37.133808, 34.925243, 27.913015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.625126, 35.212734, 28.581717>,  <36.882061, 35.571934, 28.004742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.625126, 35.212734, 28.581717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.930431, 35.010120, 28.421293>,  <37.113617, 34.888554, 28.325039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.930431, 35.010120, 28.421293>,  <36.625126, 35.212734, 28.581717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.930431, 35.010120, 28.421293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372686, -0.161886, 0.913727,
		-0.527757, -0.846889, 0.065214,
		0.763268, -0.506530, -0.401060,
		37.159412, 34.858162, 28.300976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.692947, 34.608265, 29.016760>,  <36.625126, 35.212734, 28.581717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.692947, 34.608265, 29.016760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.044197, 34.654007, 28.830933>,  <37.254948, 34.681454, 28.719437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.044197, 34.654007, 28.830933>,  <36.692947, 34.608265, 29.016760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.044197, 34.654007, 28.830933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473447, -0.067824, 0.878207,
		0.068924, -0.991121, -0.113702,
		0.878121, 0.114362, -0.464569,
		37.307632, 34.688316, 28.691563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.062649, 34.112213, 29.357941>,  <36.692947, 34.608265, 29.016760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.062649, 34.112213, 29.357941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.314262, 34.341362, 29.147747>,  <37.465229, 34.478851, 29.021631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.314262, 34.341362, 29.147747>,  <37.062649, 34.112213, 29.357941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.314262, 34.341362, 29.147747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582491, 0.100307, 0.806624,
		0.514805, -0.813481, -0.270599,
		0.629031, 0.572876, -0.525484,
		37.502972, 34.513226, 28.990101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.602291, 33.790745, 29.442593>,  <37.062649, 34.112213, 29.357941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.602291, 33.790745, 29.442593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.701160, 34.168835, 29.357304>,  <37.760483, 34.395687, 29.306129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.701160, 34.168835, 29.357304>,  <37.602291, 33.790745, 29.442593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.701160, 34.168835, 29.357304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646310, 0.003124, 0.763068,
		0.721934, -0.326417, -0.610134,
		0.247173, 0.945221, -0.213222,
		37.775311, 34.452400, 29.293337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.372013, 33.739410, 29.383244>,  <37.602291, 33.790745, 29.442593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.372013, 33.739410, 29.383244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.236290, 34.103542, 29.478046>,  <38.154858, 34.322021, 29.534927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.236290, 34.103542, 29.478046>,  <38.372013, 33.739410, 29.383244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.236290, 34.103542, 29.478046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636086, 0.036419, 0.770758,
		0.693012, 0.412282, -0.591404,
		-0.339307, 0.910328, 0.237008,
		38.134499, 34.376640, 29.549149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.978878, 34.029392, 29.710878>,  <38.372013, 33.739410, 29.383244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.978878, 34.029392, 29.710878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.700924, 34.292084, 29.828077>,  <38.534153, 34.449699, 29.898396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.700924, 34.292084, 29.828077>,  <38.978878, 34.029392, 29.710878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.700924, 34.292084, 29.828077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504985, 0.155550, 0.848996,
		0.511983, 0.737912, -0.439726,
		-0.694883, 0.656727, 0.292996,
		38.492458, 34.489101, 29.915976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.364723, 34.491154, 30.067650>,  <38.978878, 34.029392, 29.710878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.364723, 34.491154, 30.067650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.982967, 34.537888, 30.177555>,  <38.753914, 34.565926, 30.243498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.982967, 34.537888, 30.177555>,  <39.364723, 34.491154, 30.067650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.982967, 34.537888, 30.177555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298452, 0.347391, 0.888958,
		0.008407, 0.930414, -0.366414,
		-0.954388, 0.116831, 0.274763,
		38.696651, 34.572937, 30.259985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.392994, 35.104362, 30.439104>,  <39.364723, 34.491154, 30.067650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.392994, 35.104362, 30.439104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.059456, 34.919842, 30.560371>,  <38.859333, 34.809128, 30.633131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.059456, 34.919842, 30.560371>,  <39.392994, 35.104362, 30.439104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.059456, 34.919842, 30.560371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153510, 0.333764, 0.930073,
		-0.530231, 0.822072, -0.207492,
		-0.833841, -0.461301, 0.303168,
		38.809303, 34.781452, 30.651321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.072018, 35.553902, 30.898762>,  <39.392994, 35.104362, 30.439104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.072018, 35.553902, 30.898762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.946873, 35.184647, 30.988152>,  <38.871788, 34.963093, 31.041784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.946873, 35.184647, 30.988152>,  <39.072018, 35.553902, 30.898762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.946873, 35.184647, 30.988152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213534, 0.160899, 0.963595,
		-0.925485, 0.349189, 0.146782,
		-0.312860, -0.923135, 0.223473,
		38.853016, 34.907707, 31.055193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.497337, 35.620571, 31.208342>,  <39.072018, 35.553902, 30.898762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.497337, 35.620571, 31.208342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.645950, 35.268585, 31.326744>,  <38.735119, 35.057392, 31.397785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.645950, 35.268585, 31.326744>,  <38.497337, 35.620571, 31.208342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.645950, 35.268585, 31.326744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083183, 0.285996, 0.954613,
		-0.924686, -0.379291, 0.033058,
		0.371531, -0.879968, 0.296007,
		38.757408, 35.004593, 31.415546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.080498, 35.517483, 31.789745>,  <38.497337, 35.620571, 31.208342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.080498, 35.517483, 31.789745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.360760, 35.238976, 31.852083>,  <38.528919, 35.071873, 31.889486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.360760, 35.238976, 31.852083>,  <38.080498, 35.517483, 31.789745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.360760, 35.238976, 31.852083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019592, 0.199570, 0.979688,
		-0.713228, -0.689480, 0.126189,
		0.700658, -0.696269, 0.155847,
		38.570957, 35.030094, 31.898838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.876270, 35.148491, 32.241184>,  <38.080498, 35.517483, 31.789745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.876270, 35.148491, 32.241184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.268387, 35.072380, 32.262447>,  <38.503658, 35.026714, 32.275204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.268387, 35.072380, 32.262447>,  <37.876270, 35.148491, 32.241184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.268387, 35.072380, 32.262447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032555, 0.109801, 0.993420,
		-0.194864, -0.975570, 0.101442,
		0.980290, -0.190280, 0.053156,
		38.562473, 35.015297, 32.278393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.006069, 34.554764, 32.773010>,  <37.876270, 35.148491, 32.241184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.006069, 34.554764, 32.773010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.351810, 34.755856, 32.768158>,  <38.559258, 34.876511, 32.765247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.351810, 34.755856, 32.768158>,  <38.006069, 34.554764, 32.773010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.351810, 34.755856, 32.768158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043586, 0.098935, 0.994139,
		0.500986, -0.858762, 0.107427,
		0.864357, 0.502732, -0.012135,
		38.611118, 34.906673, 32.764519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.247692, 34.435101, 33.418694>,  <38.006069, 34.554764, 32.773010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.247692, 34.435101, 33.418694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.454479, 34.755924, 33.299065>,  <38.578552, 34.948418, 33.227287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.454479, 34.755924, 33.299065>,  <38.247692, 34.435101, 33.418694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.454479, 34.755924, 33.299065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088143, 0.397398, 0.913403,
		0.851454, -0.445840, 0.276139,
		0.516968, 0.802061, -0.299069,
		38.609570, 34.996544, 33.209343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.786106, 34.565495, 33.896408>,  <38.247692, 34.435101, 33.418694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.786106, 34.565495, 33.896408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.718967, 34.909645, 33.703915>,  <38.678684, 35.116135, 33.588421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.718967, 34.909645, 33.703915>,  <38.786106, 34.565495, 33.896408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.718967, 34.909645, 33.703915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008750, 0.489438, 0.871994,
		0.985774, 0.142153, -0.089680,
		-0.167849, 0.860374, -0.481231,
		38.668613, 35.167759, 33.559544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.196308, 34.923660, 34.210995>,  <38.786106, 34.565495, 33.896408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.196308, 34.923660, 34.210995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.952019, 35.209492, 34.074528>,  <38.805447, 35.380989, 33.992649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.952019, 35.209492, 34.074528>,  <39.196308, 34.923660, 34.210995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.952019, 35.209492, 34.074528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039588, 0.402756, 0.914451,
		0.790853, 0.571983, -0.217684,
		-0.610724, 0.714578, -0.341165,
		38.768803, 35.423866, 33.972179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.392349, 35.408257, 34.711555>,  <39.196308, 34.923660, 34.210995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.392349, 35.408257, 34.711555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.073334, 35.545784, 34.513275>,  <38.881924, 35.628300, 34.394306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.073334, 35.545784, 34.513275>,  <39.392349, 35.408257, 34.711555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.073334, 35.545784, 34.513275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360349, 0.387479, 0.848533,
		0.483817, 0.855363, -0.185134,
		-0.797540, 0.343822, -0.495698,
		38.834072, 35.648930, 34.364567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.316246, 36.084026, 34.999519>,  <39.392349, 35.408257, 34.711555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.316246, 36.084026, 34.999519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.958523, 36.012608, 34.835407>,  <38.743889, 35.969757, 34.736942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.958523, 36.012608, 34.835407>,  <39.316246, 36.084026, 34.999519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.958523, 36.012608, 34.835407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445957, 0.430398, 0.784781,
		0.036463, 0.884804, -0.464534,
		-0.894311, -0.178547, -0.410278,
		38.690228, 35.959045, 34.712322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.070576, 36.650173, 35.166302>,  <39.316246, 36.084026, 34.999519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.070576, 36.650173, 35.166302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.781590, 36.376686, 35.125160>,  <38.608196, 36.212593, 35.100475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.781590, 36.376686, 35.125160>,  <39.070576, 36.650173, 35.166302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.781590, 36.376686, 35.125160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395932, 0.287162, 0.872225,
		-0.566817, 0.670874, -0.478169,
		-0.722465, -0.683714, -0.102852,
		38.564850, 36.171570, 35.094303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.380901, 36.851528, 35.144321>,  <39.070576, 36.650173, 35.166302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.380901, 36.851528, 35.144321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.402599, 36.483955, 35.300587>,  <38.415619, 36.263412, 35.394348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.402599, 36.483955, 35.300587>,  <38.380901, 36.851528, 35.144321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.402599, 36.483955, 35.300587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241119, 0.367609, 0.898179,
		-0.968978, -0.142922, -0.201630,
		0.054249, -0.918932, 0.390666,
		38.418873, 36.208275, 35.417786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.770924, 36.635952, 35.444626>,  <38.380901, 36.851528, 35.144321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.770924, 36.635952, 35.444626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.065681, 36.452015, 35.642830>,  <38.242535, 36.341652, 35.761753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.065681, 36.452015, 35.642830>,  <37.770924, 36.635952, 35.444626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.065681, 36.452015, 35.642830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402442, 0.290543, 0.868116,
		-0.543168, -0.839122, 0.029036,
		0.736892, -0.459847, 0.495511,
		38.286751, 36.314060, 35.791485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.508873, 36.271030, 35.998798>,  <37.770924, 36.635952, 35.444626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.508873, 36.271030, 35.998798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.874962, 36.380573, 36.117031>,  <38.094616, 36.446301, 36.187973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.874962, 36.380573, 36.117031>,  <37.508873, 36.271030, 35.998798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.874962, 36.380573, 36.117031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401490, 0.557361, 0.726743,
		0.034276, -0.783805, 0.620060,
		0.915222, 0.273858, 0.295585,
		38.149529, 36.462730, 36.205708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.446480, 36.198753, 36.687931>,  <37.508873, 36.271030, 35.998798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.446480, 36.198753, 36.687931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.770679, 36.426090, 36.631264>,  <37.965199, 36.562492, 36.597263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.770679, 36.426090, 36.631264>,  <37.446480, 36.198753, 36.687931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.770679, 36.426090, 36.631264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302820, 0.613621, 0.729226,
		0.501382, -0.548139, 0.669447,
		0.810504, 0.568343, -0.141671,
		38.013832, 36.596592, 36.588764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.951328, 35.787189, 37.063526>,  <37.446480, 36.198753, 36.687931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.951328, 35.787189, 37.063526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.132149, 36.127861, 36.957481>,  <38.240643, 36.332264, 36.893856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.132149, 36.127861, 36.957481>,  <37.951328, 35.787189, 37.063526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.132149, 36.127861, 36.957481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227895, 0.397626, 0.888795,
		0.862388, -0.341362, 0.373842,
		0.452051, 0.851683, -0.265113,
		38.267765, 36.383366, 36.877949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.407425, 35.883457, 37.624687>,  <37.951328, 35.787189, 37.063526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.407425, 35.883457, 37.624687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.359051, 36.231922, 37.434341>,  <38.330029, 36.441002, 37.320133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.359051, 36.231922, 37.434341>,  <38.407425, 35.883457, 37.624687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.359051, 36.231922, 37.434341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193765, 0.449445, 0.872040,
		0.973566, 0.197663, 0.114449,
		-0.120931, 0.871165, -0.475865,
		38.322773, 36.493271, 37.291580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.597317, 36.350842, 38.032532>,  <38.407425, 35.883457, 37.624687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.597317, 36.350842, 38.032532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.409592, 36.626915, 37.812210>,  <38.296955, 36.792561, 37.680016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.409592, 36.626915, 37.812210>,  <38.597317, 36.350842, 38.032532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.409592, 36.626915, 37.812210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050300, 0.601861, 0.797015,
		0.881599, 0.401754, -0.247744,
		-0.469311, 0.690187, -0.550808,
		38.268799, 36.833969, 37.646969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.818756, 37.030788, 38.173046>,  <38.597317, 36.350842, 38.032532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.818756, 37.030788, 38.173046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.440201, 37.079407, 38.053326>,  <38.213066, 37.108578, 37.981495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.440201, 37.079407, 38.053326>,  <38.818756, 37.030788, 38.173046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.440201, 37.079407, 38.053326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144691, 0.668884, 0.729149,
		0.288817, 0.733363, -0.615438,
		-0.946387, 0.121542, -0.299297,
		38.156284, 37.115868, 37.963535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.759899, 37.754005, 38.241726>,  <38.818756, 37.030788, 38.173046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.759899, 37.754005, 38.241726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.385162, 37.614792, 38.227829>,  <38.160320, 37.531265, 38.219490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.385162, 37.614792, 38.227829>,  <38.759899, 37.754005, 38.241726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.385162, 37.614792, 38.227829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231348, 0.542107, 0.807836,
		-0.262317, 0.764850, -0.588383,
		-0.936839, -0.348030, -0.034742,
		38.104111, 37.510384, 38.217407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.327461, 38.370564, 38.205547>,  <38.759899, 37.754005, 38.241726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.327461, 38.370564, 38.205547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.077259, 38.075428, 38.307007>,  <37.927139, 37.898346, 38.367882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.077259, 38.075428, 38.307007>,  <38.327461, 38.370564, 38.205547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.077259, 38.075428, 38.307007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296784, 0.525668, 0.797241,
		-0.721573, 0.423395, -0.547785,
		-0.625501, -0.737841, 0.253651,
		37.889610, 37.854076, 38.383102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.611866, 38.528603, 38.142921>,  <38.327461, 38.370564, 38.205547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.611866, 38.528603, 38.142921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.649475, 38.271034, 38.446636>,  <37.672039, 38.116493, 38.628864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.649475, 38.271034, 38.446636>,  <37.611866, 38.528603, 38.142921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.649475, 38.271034, 38.446636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381780, 0.681043, 0.624840,
		-0.919458, -0.348631, -0.181804,
		0.094022, -0.643924, 0.759291,
		37.677681, 38.077858, 38.674423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.000736, 38.695908, 38.582382>,  <37.611866, 38.528603, 38.142921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.000736, 38.695908, 38.582382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.256901, 38.457977, 38.776722>,  <37.410599, 38.315220, 38.893326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.256901, 38.457977, 38.776722>,  <37.000736, 38.695908, 38.582382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.256901, 38.457977, 38.776722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313397, 0.375145, 0.872381,
		-0.701185, -0.710945, 0.053828,
		0.640408, -0.594830, 0.485854,
		37.449024, 38.279530, 38.922478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.116943, 38.982132, 39.136272>,  <37.000736, 38.695908, 38.582382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.116943, 38.982132, 39.136272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.189312, 38.883106, 39.517006>,  <37.232735, 38.823692, 39.745445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.189312, 38.883106, 39.517006>,  <37.116943, 38.982132, 39.136272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.189312, 38.883106, 39.517006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078545, -0.961073, -0.264897,
		0.980356, 0.122688, -0.154436,
		0.180924, -0.247563, 0.951829,
		37.243587, 38.808838, 39.802555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.795006, 38.756500, 39.314014>,  <37.116943, 38.982132, 39.136272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.795006, 38.756500, 39.314014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.535717, 38.550297, 39.538181>,  <37.380146, 38.426575, 39.672680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.535717, 38.550297, 39.538181>,  <37.795006, 38.756500, 39.314014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.535717, 38.550297, 39.538181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257013, -0.840912, -0.476246,
		0.716768, -0.164678, 0.677587,
		-0.648219, -0.515507, 0.560415,
		37.341251, 38.395645, 39.706306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.128899, 38.230537, 39.685646>,  <37.795006, 38.756500, 39.314014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.128899, 38.230537, 39.685646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.754314, 38.131504, 39.586254>,  <37.529564, 38.072086, 39.526619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.754314, 38.131504, 39.586254>,  <38.128899, 38.230537, 39.685646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.754314, 38.131504, 39.586254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349177, -0.725327, -0.593276,
		-0.033342, -0.642343, 0.765691,
		-0.936463, -0.247581, -0.248476,
		37.473377, 38.057228, 39.511711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.058041, 37.515083, 39.556255>,  <38.128899, 38.230537, 39.685646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.058041, 37.515083, 39.556255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.725777, 37.656273, 39.384022>,  <37.526417, 37.740986, 39.280682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.725777, 37.656273, 39.384022>,  <38.058041, 37.515083, 39.556255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.725777, 37.656273, 39.384022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167316, -0.579362, -0.797712,
		-0.531035, -0.734677, 0.422200,
		-0.830667, 0.352972, -0.430584,
		37.476578, 37.762165, 39.254845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.501991, 36.992836, 39.330143>,  <38.058041, 37.515083, 39.556255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.501991, 36.992836, 39.330143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.488773, 37.308029, 39.084221>,  <37.480843, 37.497147, 38.936668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.488773, 37.308029, 39.084221>,  <37.501991, 36.992836, 39.330143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.488773, 37.308029, 39.084221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188214, -0.599232, -0.778137,
		-0.981572, -0.141430, -0.128506,
		-0.033047, 0.787984, -0.614808,
		37.478859, 37.544426, 38.899776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.072636, 36.794796, 38.791119>,  <37.501991, 36.992836, 39.330143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.072636, 36.794796, 38.791119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.291111, 37.101704, 38.656670>,  <37.422195, 37.285847, 38.576000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.291111, 37.101704, 38.656670>,  <37.072636, 36.794796, 38.791119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.291111, 37.101704, 38.656670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078622, -0.446443, -0.891351,
		-0.833963, 0.460421, -0.304167,
		0.546190, 0.767269, -0.336118,
		37.454967, 37.331882, 38.555836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.947327, 36.869099, 38.060036>,  <37.072636, 36.794796, 38.791119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.947327, 36.869099, 38.060036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.286812, 37.071785, 38.120598>,  <37.490501, 37.193398, 38.156937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.286812, 37.071785, 38.120598>,  <36.947327, 36.869099, 38.060036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.286812, 37.071785, 38.120598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341636, -0.306768, -0.888357,
		-0.403700, 0.805686, -0.433471,
		0.848712, 0.506719, 0.151409,
		37.541424, 37.223801, 38.166019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.037315, 37.340492, 37.411568>,  <36.947327, 36.869099, 38.060036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.037315, 37.340492, 37.411568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.388832, 37.282726, 37.593498>,  <37.599743, 37.248066, 37.702656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.388832, 37.282726, 37.593498>,  <37.037315, 37.340492, 37.411568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.388832, 37.282726, 37.593498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401204, -0.292443, -0.868051,
		0.258368, 0.945316, -0.199058,
		0.878795, -0.144414, 0.454823,
		37.652470, 37.239403, 37.729946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.505730, 37.384480, 36.865932>,  <37.037315, 37.340492, 37.411568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.505730, 37.384480, 36.865932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.784153, 37.259178, 37.124348>,  <37.951210, 37.183998, 37.279396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.784153, 37.259178, 37.124348>,  <37.505730, 37.384480, 36.865932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.784153, 37.259178, 37.124348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464724, -0.489323, -0.737966,
		0.547291, 0.813903, -0.195025,
		0.696063, -0.313250, 0.646042,
		37.992973, 37.165203, 37.318161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.222874, 37.634415, 36.662842>,  <37.505730, 37.384480, 36.865932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.222874, 37.634415, 36.662842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.269585, 37.290245, 36.861252>,  <38.297611, 37.083744, 36.980297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.269585, 37.290245, 36.861252>,  <38.222874, 37.634415, 36.662842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.269585, 37.290245, 36.861252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471563, -0.391512, -0.790156,
		0.874066, 0.326179, 0.360023,
		0.116779, -0.860422, 0.496021,
		38.304619, 37.032120, 37.010059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.899540, 37.417892, 36.542336>,  <38.222874, 37.634415, 36.662842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.899540, 37.417892, 36.542336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.661983, 37.106930, 36.625214>,  <38.519451, 36.920353, 36.674942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.661983, 37.106930, 36.625214>,  <38.899540, 37.417892, 36.542336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.661983, 37.106930, 36.625214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303935, -0.455235, -0.836890,
		0.744931, -0.434044, 0.506640,
		-0.593887, -0.777411, 0.207197,
		38.483818, 36.873707, 36.687374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.363255, 36.844898, 36.539955>,  <38.899540, 37.417892, 36.542336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.363255, 36.844898, 36.539955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.989494, 36.737297, 36.446545>,  <38.765240, 36.672737, 36.390499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.989494, 36.737297, 36.446545>,  <39.363255, 36.844898, 36.539955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.989494, 36.737297, 36.446545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339571, -0.474528, -0.812105,
		0.107640, -0.838131, 0.534743,
		-0.934401, -0.268998, -0.233527,
		38.709175, 36.656597, 36.376488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.477360, 36.109081, 36.324825>,  <39.363255, 36.844898, 36.539955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.477360, 36.109081, 36.324825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.115463, 36.217323, 36.193241>,  <38.898327, 36.282269, 36.114288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.115463, 36.217323, 36.193241>,  <39.477360, 36.109081, 36.324825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.115463, 36.217323, 36.193241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175500, -0.466884, -0.866729,
		-0.388125, -0.841900, 0.374919,
		-0.904743, 0.270601, -0.328963,
		38.844040, 36.298504, 36.094551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.154438, 35.403893, 36.183537>,  <39.477360, 36.109081, 36.324825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.154438, 35.403893, 36.183537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.056110, 35.716553, 35.954243>,  <38.997116, 35.904148, 35.816666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.056110, 35.716553, 35.954243>,  <39.154438, 35.403893, 36.183537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.056110, 35.716553, 35.954243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232080, -0.526722, -0.817743,
		-0.941123, -0.334051, -0.051928,
		-0.245816, 0.781648, -0.573237,
		38.982365, 35.951046, 35.782272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.680878, 35.159122, 35.684795>,  <39.154438, 35.403893, 36.183537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.680878, 35.159122, 35.684795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.866638, 35.481850, 35.538715>,  <38.978096, 35.675488, 35.451065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.866638, 35.481850, 35.538715>,  <38.680878, 35.159122, 35.684795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.866638, 35.481850, 35.538715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411398, -0.561706, -0.717801,
		-0.784273, 0.183104, -0.592781,
		0.464401, 0.806821, -0.365202,
		39.005959, 35.723896, 35.429153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.107292, 35.114075, 35.409313>,  <38.680878, 35.159122, 35.684795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.107292, 35.114075, 35.409313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.010540, 35.501366, 35.383911>,  <37.952488, 35.733738, 35.368671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.010540, 35.501366, 35.383911>,  <38.107292, 35.114075, 35.409313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.010540, 35.501366, 35.383911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382574, 0.035020, -0.923261,
		-0.891700, -0.247618, -0.378888,
		-0.241885, 0.968225, -0.063505,
		37.937973, 35.791832, 35.364861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.597481, 35.214054, 34.819878>,  <38.107292, 35.114075, 35.409313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.597481, 35.214054, 34.819878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.830822, 35.529278, 34.898529>,  <37.970825, 35.718410, 34.945721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.830822, 35.529278, 34.898529>,  <37.597481, 35.214054, 34.819878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.830822, 35.529278, 34.898529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416232, -0.082168, -0.905538,
		-0.697461, 0.610092, -0.375948,
		0.583352, 0.788059, 0.196631,
		38.005829, 35.765694, 34.957520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.557064, 35.641277, 34.252918>,  <37.597481, 35.214054, 34.819878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.557064, 35.641277, 34.252918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.913757, 35.782497, 34.366173>,  <38.127773, 35.867229, 34.434124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.913757, 35.782497, 34.366173>,  <37.557064, 35.641277, 34.252918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.913757, 35.782497, 34.366173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370455, -0.210104, -0.904776,
		-0.259942, 0.911709, -0.318146,
		0.891736, 0.353048, 0.283133,
		38.181278, 35.888412, 34.451111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.725609, 36.149445, 33.853436>,  <37.557064, 35.641277, 34.252918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.725609, 36.149445, 33.853436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.069283, 36.008942, 34.002254>,  <38.275486, 35.924641, 34.091545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.069283, 36.008942, 34.002254>,  <37.725609, 36.149445, 33.853436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.069283, 36.008942, 34.002254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316783, -0.205840, -0.925893,
		0.401811, 0.913371, -0.065581,
		0.859184, -0.351259, 0.372049,
		38.327038, 35.903564, 34.113869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.359966, 36.559681, 33.709145>,  <37.725609, 36.149445, 33.853436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.359966, 36.559681, 33.709145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.457916, 36.174065, 33.750454>,  <38.516685, 35.942696, 33.775242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.457916, 36.174065, 33.750454>,  <38.359966, 36.559681, 33.709145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.457916, 36.174065, 33.750454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295758, -0.027170, -0.954877,
		0.923344, 0.264368, 0.278469,
		0.244873, -0.964039, 0.103276,
		38.531380, 35.884853, 33.781437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.619148, 36.314556, 32.972130>,  <38.359966, 36.559681, 33.709145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.619148, 36.314556, 32.972130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.634323, 35.973934, 33.181286>,  <38.643429, 35.769562, 33.306778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.634323, 35.973934, 33.181286>,  <38.619148, 36.314556, 32.972130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.634323, 35.973934, 33.181286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389424, -0.469301, -0.792531,
		0.920277, 0.233690, 0.313813,
		0.037934, -0.851555, 0.522891,
		38.645702, 35.718468, 33.338154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.315006, 36.034145, 32.951260>,  <38.619148, 36.314556, 32.972130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.315006, 36.034145, 32.951260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.070129, 35.719017, 32.978249>,  <38.923203, 35.529942, 32.994442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.070129, 35.719017, 32.978249>,  <39.315006, 36.034145, 32.951260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.070129, 35.719017, 32.978249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411617, -0.390390, -0.823509,
		0.675121, -0.476373, 0.563276,
		-0.612195, -0.787822, 0.067477,
		38.886471, 35.482670, 32.998493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.702557, 35.610935, 32.672516>,  <39.315006, 36.034145, 32.951260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.702557, 35.610935, 32.672516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.360592, 35.405060, 32.698528>,  <39.155415, 35.281536, 32.714134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.360592, 35.405060, 32.698528>,  <39.702557, 35.610935, 32.672516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.360592, 35.405060, 32.698528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260023, -0.533582, -0.804785,
		0.448912, -0.671108, 0.589994,
		-0.854907, -0.514689, 0.065028,
		39.104118, 35.250652, 32.718037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.854202, 34.889744, 32.380898>,  <39.702557, 35.610935, 32.672516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.854202, 34.889744, 32.380898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.457405, 34.924824, 32.344532>,  <39.219326, 34.945873, 32.322712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.457405, 34.924824, 32.344532>,  <39.854202, 34.889744, 32.380898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.457405, 34.924824, 32.344532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052132, -0.371297, -0.927049,
		-0.115060, -0.924363, 0.363751,
		-0.991989, 0.087703, -0.090910,
		39.159809, 34.951134, 32.317257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.633194, 34.280151, 32.070862>,  <39.854202, 34.889744, 32.380898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.633194, 34.280151, 32.070862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.321907, 34.517250, 31.987892>,  <39.135136, 34.659512, 31.938110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.321907, 34.517250, 31.987892>,  <39.633194, 34.280151, 32.070862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.321907, 34.517250, 31.987892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205295, -0.552272, -0.807991,
		-0.593495, -0.586207, 0.551476,
		-0.778214, 0.592754, -0.207425,
		39.088444, 34.695076, 31.925665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.350231, 34.274311, 32.337391>,  <39.633194, 34.280151, 32.070862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.350231, 34.274311, 32.337391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.717823, 34.413055, 32.262390>,  <40.938377, 34.496304, 32.217388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.717823, 34.413055, 32.262390>,  <40.350231, 34.274311, 32.337391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.717823, 34.413055, 32.262390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378615, -0.643494, 0.665256,
		0.110094, -0.682351, -0.722687,
		0.918983, 0.346861, -0.187504,
		40.993519, 34.517113, 32.206139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.574287, 34.948753, 32.007431>,  <40.350231, 34.274311, 32.337391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.574287, 34.948753, 32.007431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.525406, 34.801868, 32.376259>,  <40.496078, 34.713737, 32.597557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.525406, 34.801868, 32.376259>,  <40.574287, 34.948753, 32.007431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.525406, 34.801868, 32.376259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992496, -0.049324, 0.111890,
		0.004392, 0.928828, 0.370486,
		-0.122200, -0.367215, 0.922074,
		40.488747, 34.691704, 32.652882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.875393, 35.319126, 32.632496>,  <40.574287, 34.948753, 32.007431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.875393, 35.319126, 32.632496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.861977, 34.920551, 32.663464>,  <40.853928, 34.681408, 32.682045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.861977, 34.920551, 32.663464>,  <40.875393, 35.319126, 32.632496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.861977, 34.920551, 32.663464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989768, -0.022371, 0.140920,
		-0.138686, 0.081353, 0.986989,
		-0.033545, -0.996434, 0.077418,
		40.851913, 34.621620, 32.686687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.253342, 35.172569, 33.219181>,  <40.875393, 35.319126, 32.632496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.253342, 35.172569, 33.219181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.266239, 34.876255, 32.950794>,  <41.273979, 34.698467, 32.789761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.266239, 34.876255, 32.950794>,  <41.253342, 35.172569, 33.219181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.266239, 34.876255, 32.950794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990946, 0.111237, -0.075187,
		0.130334, -0.662468, 0.737665,
		0.032246, -0.740785, -0.670968,
		41.275913, 34.654018, 32.749504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.624043, 34.607552, 33.472683>,  <41.253342, 35.172569, 33.219181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.624043, 34.607552, 33.472683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.650871, 34.672035, 33.078827>,  <41.666969, 34.710724, 32.842514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.650871, 34.672035, 33.078827>,  <41.624043, 34.607552, 33.472683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.650871, 34.672035, 33.078827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992114, 0.093952, 0.082966,
		0.105884, -0.982438, -0.153637,
		0.067074, 0.161211, -0.984638,
		41.670994, 34.720398, 32.783436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.960175, 34.104263, 33.139767>,  <41.624043, 34.607552, 33.472683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.960175, 34.104263, 33.139767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.001892, 34.463840, 32.969578>,  <42.026924, 34.679585, 32.867466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.001892, 34.463840, 32.969578>,  <41.960175, 34.104263, 33.139767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.001892, 34.463840, 32.969578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972242, -0.002065, 0.233967,
		0.209445, -0.438064, -0.874204,
		0.104298, 0.898941, -0.425472,
		42.033180, 34.733524, 32.841934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.689228, 34.158619, 33.071503>,  <41.960175, 34.104263, 33.139767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.689228, 34.158619, 33.071503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.584534, 34.541191, 33.019772>,  <42.521717, 34.770737, 32.988731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.584534, 34.541191, 33.019772>,  <42.689228, 34.158619, 33.071503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.584534, 34.541191, 33.019772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890918, 0.290962, 0.348722,
		0.371160, -0.023947, -0.928260,
		-0.261737, 0.956435, -0.129328,
		42.506012, 34.828121, 32.980972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.250343, 34.365974, 32.723434>,  <42.689228, 34.158619, 33.071503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.250343, 34.365974, 32.723434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.053417, 34.669926, 32.893238>,  <42.935261, 34.852299, 32.995121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.053417, 34.669926, 32.893238>,  <43.250343, 34.365974, 32.723434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.053417, 34.669926, 32.893238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868188, 0.393809, 0.301935,
		0.062260, 0.517199, -0.853597,
		-0.492315, 0.759881, 0.424507,
		42.905724, 34.897892, 33.020592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.461445, 35.007820, 32.369312>,  <43.250343, 34.365974, 32.723434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.461445, 35.007820, 32.369312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.370667, 35.050354, 32.756546>,  <43.316200, 35.075874, 32.988888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.370667, 35.050354, 32.756546>,  <43.461445, 35.007820, 32.369312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.370667, 35.050354, 32.756546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922984, 0.340703, 0.178949,
		-0.310800, 0.934138, -0.175469,
		-0.226946, 0.106338, 0.968085,
		43.302582, 35.082256, 33.046970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.651657, 35.674740, 32.656063>,  <43.461445, 35.007820, 32.369312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.651657, 35.674740, 32.656063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.623981, 35.451431, 32.986771>,  <43.607376, 35.317448, 33.185196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.623981, 35.451431, 32.986771>,  <43.651657, 35.674740, 32.656063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.623981, 35.451431, 32.986771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875083, 0.363965, 0.318996,
		-0.479001, 0.745565, 0.463347,
		-0.069190, -0.558267, 0.826771,
		43.603226, 35.283951, 33.234802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.770016, 36.101357, 33.327633>,  <43.651657, 35.674740, 32.656063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.770016, 36.101357, 33.327633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.871696, 35.716042, 33.362179>,  <43.932705, 35.484852, 33.382904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.871696, 35.716042, 33.362179>,  <43.770016, 36.101357, 33.327633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.871696, 35.716042, 33.362179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881389, 0.267500, 0.389356,
		-0.398163, -0.022857, 0.917030,
		0.254205, -0.963287, 0.086362,
		43.947956, 35.427055, 33.388088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.106030, 35.941486, 33.871311>,  <43.770016, 36.101357, 33.327633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.106030, 35.941486, 33.871311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.271553, 35.665844, 33.633354>,  <44.370869, 35.500458, 33.490582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.271553, 35.665844, 33.633354>,  <44.106030, 35.941486, 33.871311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.271553, 35.665844, 33.633354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873245, 0.115774, 0.473328,
		-0.257300, -0.715354, 0.649666,
		0.413811, -0.689105, -0.594891,
		44.395695, 35.459114, 33.454887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.585419, 35.642178, 34.293285>,  <44.106030, 35.941486, 33.871311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.585419, 35.642178, 34.293285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.711918, 35.522797, 33.933083>,  <44.787819, 35.451168, 33.716961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.711918, 35.522797, 33.933083>,  <44.585419, 35.642178, 34.293285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.711918, 35.522797, 33.933083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939968, -0.029736, 0.339966,
		-0.128243, -0.953960, 0.271136,
		0.316251, -0.298457, -0.900505,
		44.806793, 35.433258, 33.662930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.040066, 35.106304, 34.427319>,  <44.585419, 35.642178, 34.293285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.040066, 35.106304, 34.427319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.113552, 35.219639, 34.050816>,  <45.157646, 35.287640, 33.824913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.113552, 35.219639, 34.050816>,  <45.040066, 35.106304, 34.427319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.113552, 35.219639, 34.050816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982926, -0.062824, 0.172942,
		-0.010132, -0.956960, -0.290042,
		0.183720, 0.283338, -0.941258,
		45.168667, 35.304642, 33.768436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.515598, 34.624653, 34.123192>,  <45.040066, 35.106304, 34.427319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.515598, 34.624653, 34.123192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.557102, 34.998558, 33.987274>,  <45.582005, 35.222900, 33.905724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.557102, 34.998558, 33.987274>,  <45.515598, 34.624653, 34.123192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.557102, 34.998558, 33.987274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985108, -0.049490, 0.164662,
		0.137103, -0.351818, -0.925973,
		0.103757, 0.934759, -0.339794,
		45.588230, 35.278984, 33.885338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.911209, 34.714340, 33.495071>,  <45.515598, 34.624653, 34.123192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.911209, 34.714340, 33.495071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.933773, 35.038860, 33.727833>,  <45.947311, 35.233574, 33.867489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.933773, 35.038860, 33.727833>,  <45.911209, 34.714340, 33.495071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.933773, 35.038860, 33.727833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972538, -0.176464, 0.151757,
		0.225805, 0.557359, -0.798976,
		0.056407, 0.811302, 0.581900,
		45.950695, 35.282249, 33.902401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.605152, 34.831013, 33.518970>,  <45.911209, 34.714340, 33.495071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.605152, 34.831013, 33.518970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.521980, 35.031979, 33.854671>,  <46.472076, 35.152557, 34.056091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.521980, 35.031979, 33.854671>,  <46.605152, 34.831013, 33.518970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.521980, 35.031979, 33.854671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941775, -0.128959, 0.310532,
		0.264245, 0.854956, -0.446346,
		-0.207931, 0.502414, 0.839253,
		46.459602, 35.182701, 34.106449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.150501, 35.178909, 33.577061>,  <46.605152, 34.831013, 33.518970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.150501, 35.178909, 33.577061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.960896, 35.171547, 33.929192>,  <46.847134, 35.167130, 34.140469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.960896, 35.171547, 33.929192>,  <47.150501, 35.178909, 33.577061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.960896, 35.171547, 33.929192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833015, -0.333319, 0.441571,
		0.285301, 0.942634, 0.173330,
		-0.474014, -0.018406, 0.880325,
		46.818691, 35.166023, 34.193291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.482220, 35.619980, 34.120762>,  <47.150501, 35.178909, 33.577061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.482220, 35.619980, 34.120762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.280403, 35.312260, 34.277538>,  <47.159313, 35.127628, 34.371605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.280403, 35.312260, 34.277538>,  <47.482220, 35.619980, 34.120762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.280403, 35.312260, 34.277538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838993, -0.329711, 0.432875,
		-0.203781, 0.547243, 0.811787,
		-0.504543, -0.769296, 0.391945,
		47.129040, 35.081470, 34.395123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.517761, 35.691986, 34.823124>,  <47.482220, 35.619980, 34.120762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.517761, 35.691986, 34.823124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.496151, 35.314796, 34.691746>,  <47.483185, 35.088482, 34.612919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.496151, 35.314796, 34.691746>,  <47.517761, 35.691986, 34.823124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.496151, 35.314796, 34.691746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793621, -0.240169, 0.559003,
		-0.606009, -0.230459, 0.761342,
		-0.054024, -0.942978, -0.328441,
		47.479942, 35.031902, 34.593212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.522697, 35.291916, 35.331955>,  <47.517761, 35.691986, 34.823124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.522697, 35.291916, 35.331955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.638290, 35.047146, 35.037460>,  <47.707645, 34.900284, 34.860764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.638290, 35.047146, 35.037460>,  <47.522697, 35.291916, 35.331955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.638290, 35.047146, 35.037460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645860, -0.443051, 0.621748,
		-0.706652, -0.655176, 0.267185,
		0.288978, -0.611924, -0.736235,
		47.724983, 34.863567, 34.816589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.039829, 30.719305, 24.419006> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.641018, 30.690065, 24.428757>,  <33.401730, 30.672522, 24.434607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.641018, 30.690065, 24.428757>,  <34.039829, 30.719305, 24.419006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.641018, 30.690065, 24.428757> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009037, 0.203210, 0.979094,
		-0.076523, 0.976403, -0.201945,
		-0.997027, -0.073098, 0.024374,
		33.341911, 30.668137, 24.436069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.775303, 31.302559, 24.625082>,  <34.039829, 30.719305, 24.419006>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.775303, 31.302559, 24.625082> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.486252, 31.039433, 24.710009>,  <33.312820, 30.881556, 24.760965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.486252, 31.039433, 24.710009>,  <33.775303, 31.302559, 24.625082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.486252, 31.039433, 24.710009> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038444, 0.268436, 0.962530,
		-0.690163, 0.703717, -0.168691,
		-0.722632, -0.657818, 0.212318,
		33.269463, 30.842087, 24.773705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.299549, 31.598192, 25.187218>,  <33.775303, 31.302559, 24.625082>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.299549, 31.598192, 25.187218> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.243797, 31.202219, 25.197044>,  <33.210346, 30.964634, 25.202940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.243797, 31.202219, 25.197044>,  <33.299549, 31.598192, 25.187218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.243797, 31.202219, 25.197044> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116799, 0.008201, 0.993122,
		-0.983327, 0.141290, 0.114480,
		-0.139379, -0.989934, 0.024567,
		33.201984, 30.905239, 25.204414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.922745, 31.485479, 25.768293>,  <33.299549, 31.598192, 25.187218>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.922745, 31.485479, 25.768293> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.063835, 31.124365, 25.669855>,  <33.148487, 30.907696, 25.610792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.063835, 31.124365, 25.669855>,  <32.922745, 31.485479, 25.768293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.063835, 31.124365, 25.669855> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141194, -0.208639, 0.967747,
		-0.925014, -0.376093, 0.053876,
		0.352722, -0.902787, -0.246096,
		33.169651, 30.853529, 25.596025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.451786, 31.151524, 26.089165>,  <32.922745, 31.485479, 25.768293>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.451786, 31.151524, 26.089165> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.783104, 30.937868, 26.021494>,  <32.981895, 30.809675, 25.980890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.783104, 30.937868, 26.021494>,  <32.451786, 31.151524, 26.089165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.783104, 30.937868, 26.021494> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113998, -0.134969, 0.984270,
		-0.548573, -0.834552, -0.050903,
		0.828295, -0.534141, -0.169178,
		33.031593, 30.777626, 25.970741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.465874, 30.831930, 26.706247>,  <32.451786, 31.151524, 26.089165>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.465874, 30.831930, 26.706247> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.825790, 30.766148, 26.544594>,  <33.041740, 30.726679, 26.447601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.825790, 30.766148, 26.544594>,  <32.465874, 30.831930, 26.706247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.825790, 30.766148, 26.544594> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364216, -0.226892, 0.903253,
		-0.240252, -0.959932, -0.144253,
		0.899792, -0.164469, -0.404134,
		33.095730, 30.716810, 26.423353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.702919, 30.175877, 26.871170>,  <32.465874, 30.831930, 26.706247>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.702919, 30.175877, 26.871170> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.024261, 30.398714, 26.787012>,  <33.217068, 30.532415, 26.736517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.024261, 30.398714, 26.787012>,  <32.702919, 30.175877, 26.871170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.024261, 30.398714, 26.787012> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432925, -0.303770, 0.848705,
		0.408895, -0.772898, -0.485215,
		0.803356, 0.557092, -0.210397,
		33.265270, 30.565842, 26.723892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.169983, 29.732595, 27.180828>,  <32.702919, 30.175877, 26.871170>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.169983, 29.732595, 27.180828> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.337212, 30.093418, 27.137915>,  <33.437550, 30.309912, 27.112165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.337212, 30.093418, 27.137915>,  <33.169983, 29.732595, 27.180828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.337212, 30.093418, 27.137915> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391477, -0.072334, 0.917341,
		0.819731, -0.425517, -0.383375,
		0.418075, 0.902055, -0.107285,
		33.462635, 30.364035, 27.105730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.867886, 29.652817, 27.571421>,  <33.169983, 29.732595, 27.180828>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.867886, 29.652817, 27.571421> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.806721, 30.043978, 27.514393>,  <33.770020, 30.278673, 27.480175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.806721, 30.043978, 27.514393>,  <33.867886, 29.652817, 27.571421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.806721, 30.043978, 27.514393> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593056, 0.206208, 0.778308,
		0.790507, 0.034461, -0.611482,
		-0.152914, 0.977901, -0.142571,
		33.760845, 30.337349, 27.471621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.525654, 29.999771, 27.527788>,  <33.867886, 29.652817, 27.571421>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.525654, 29.999771, 27.527788> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.251049, 30.268927, 27.638006>,  <34.086288, 30.430420, 27.704138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.251049, 30.268927, 27.638006>,  <34.525654, 29.999771, 27.527788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.251049, 30.268927, 27.638006> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521774, 0.191956, 0.831207,
		0.506418, 0.714404, -0.482875,
		-0.686508, 0.672890, 0.275547,
		34.045097, 30.470793, 27.720671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.805458, 30.578543, 27.664879>,  <34.525654, 29.999771, 27.527788>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.805458, 30.578543, 27.664879> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.473011, 30.640009, 27.878654>,  <34.273540, 30.676889, 28.006920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.473011, 30.640009, 27.878654>,  <34.805458, 30.578543, 27.664879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.473011, 30.640009, 27.878654> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552241, 0.115135, 0.825696,
		0.065350, 0.981392, -0.180552,
		-0.831119, 0.153667, 0.534441,
		34.223675, 30.686110, 28.038986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.997974, 31.132294, 28.033033>,  <34.805458, 30.578543, 27.664879>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.997974, 31.132294, 28.033033> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.673019, 31.005350, 28.228712>,  <34.478046, 30.929184, 28.346119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.673019, 31.005350, 28.228712>,  <34.997974, 31.132294, 28.033033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.673019, 31.005350, 28.228712> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463016, 0.158893, 0.871991,
		-0.354464, 0.934899, 0.017860,
		-0.812386, -0.317359, 0.489195,
		34.429302, 30.910143, 28.375471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.818569, 31.622873, 28.422178>,  <34.997974, 31.132294, 28.033033>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.818569, 31.622873, 28.422178> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.668587, 31.296406, 28.598030>,  <34.578598, 31.100525, 28.703541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.668587, 31.296406, 28.598030>,  <34.818569, 31.622873, 28.422178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.668587, 31.296406, 28.598030> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438693, 0.261551, 0.859732,
		-0.816674, 0.515224, 0.259978,
		-0.374957, -0.816171, 0.439627,
		34.556099, 31.051554, 28.729918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.522636, 31.864792, 28.972378>,  <34.818569, 31.622873, 28.422178>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.522636, 31.864792, 28.972378> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.546589, 31.472527, 29.046907>,  <34.560959, 31.237167, 29.091625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.546589, 31.472527, 29.046907>,  <34.522636, 31.864792, 28.972378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.546589, 31.472527, 29.046907> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376721, 0.195059, 0.905556,
		-0.924389, 0.015966, 0.381117,
		0.059882, -0.980661, 0.186325,
		34.564552, 31.178328, 29.102804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.358627, 31.768326, 29.667107>,  <34.522636, 31.864792, 28.972378>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.358627, 31.768326, 29.667107> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.561947, 31.430368, 29.600422>,  <34.683937, 31.227594, 29.560411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.561947, 31.430368, 29.600422>,  <34.358627, 31.768326, 29.667107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.561947, 31.430368, 29.600422> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586867, 0.198160, 0.785060,
		-0.630256, -0.496880, 0.596563,
		0.508295, -0.844892, -0.166711,
		34.714436, 31.176901, 29.550409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.486881, 31.470888, 30.313534>,  <34.358627, 31.768326, 29.667107>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.486881, 31.470888, 30.313534> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.755016, 31.298988, 30.071552>,  <34.915897, 31.195848, 29.926363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.755016, 31.298988, 30.071552>,  <34.486881, 31.470888, 30.313534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.755016, 31.298988, 30.071552> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678005, 0.023361, 0.734686,
		-0.301598, -0.902646, 0.307032,
		0.670334, -0.429749, -0.604953,
		34.956116, 31.170063, 29.890066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.790447, 30.763105, 30.588556>,  <34.486881, 31.470888, 30.313534>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.790447, 30.763105, 30.588556> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.043018, 30.926838, 30.325117>,  <35.194561, 31.025078, 30.167053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.043018, 30.926838, 30.325117>,  <34.790447, 30.763105, 30.588556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.043018, 30.926838, 30.325117> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700556, 0.063001, 0.710811,
		0.332450, -0.910208, -0.246980,
		0.631426, 0.409332, -0.658596,
		35.232445, 31.049637, 30.127539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.425762, 30.537754, 30.891123>,  <34.790447, 30.763105, 30.588556>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.425762, 30.537754, 30.891123> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.555798, 30.801268, 30.619736>,  <35.633820, 30.959375, 30.456903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.555798, 30.801268, 30.619736>,  <35.425762, 30.537754, 30.891123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.555798, 30.801268, 30.619736> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759440, 0.245653, 0.602415,
		0.563529, -0.711098, -0.420445,
		0.325093, 0.658782, -0.678470,
		35.653324, 30.998901, 30.416195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.081745, 30.325556, 30.689981>,  <35.425762, 30.537754, 30.891123>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.081745, 30.325556, 30.689981> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.041992, 30.714750, 30.606632>,  <36.018143, 30.948267, 30.556623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.041992, 30.714750, 30.606632>,  <36.081745, 30.325556, 30.689981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.041992, 30.714750, 30.606632> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916627, 0.171001, 0.361321,
		0.387193, -0.155091, -0.908861,
		-0.099378, 0.972988, -0.208371,
		36.012180, 31.006647, 30.544121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.706795, 30.456209, 30.536200>,  <36.081745, 30.325556, 30.689981>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.706795, 30.456209, 30.536200> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.557510, 30.820665, 30.606098>,  <36.467941, 31.039339, 30.648037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.557510, 30.820665, 30.606098>,  <36.706795, 30.456209, 30.536200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.557510, 30.820665, 30.606098> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819561, 0.235519, 0.522351,
		0.434780, 0.338161, -0.834634,
		-0.373211, 0.911141, 0.174745,
		36.445549, 31.094007, 30.658522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.234093, 30.961866, 30.374401>,  <36.706795, 30.456209, 30.536200>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.234093, 30.961866, 30.374401> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.967808, 31.137136, 30.616005>,  <36.808037, 31.242298, 30.760967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.967808, 31.137136, 30.616005>,  <37.234093, 30.961866, 30.374401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.967808, 31.137136, 30.616005> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746024, 0.408812, 0.525662,
		-0.016594, 0.800546, -0.599041,
		-0.665712, 0.438176, 0.604011,
		36.768093, 31.268589, 30.797209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.450356, 31.585802, 30.383324>,  <37.234093, 30.961866, 30.374401>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.450356, 31.585802, 30.383324> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.246181, 31.502003, 30.716927>,  <37.123676, 31.451723, 30.917088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.246181, 31.502003, 30.716927>,  <37.450356, 31.585802, 30.383324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.246181, 31.502003, 30.716927> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775793, 0.306191, 0.551718,
		-0.370950, 0.928632, 0.006237,
		-0.510433, -0.209498, 0.834007,
		37.093052, 31.439154, 30.967129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.861988, 32.274857, 30.579535>,  <37.450356, 31.585802, 30.383324>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.861988, 32.274857, 30.579535> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.261761, 32.269890, 30.592026>,  <38.501625, 32.266911, 30.599520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.261761, 32.269890, 30.592026>,  <37.861988, 32.274857, 30.579535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.261761, 32.269890, 30.592026> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027098, -0.251728, -0.967419,
		0.019874, 0.967718, -0.251249,
		0.999435, -0.012419, 0.031226,
		38.561592, 32.266163, 30.601393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.980190, 32.500847, 30.025883>,  <37.861988, 32.274857, 30.579535>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.980190, 32.500847, 30.025883> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.343208, 32.363205, 30.122179>,  <38.561020, 32.280621, 30.179956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.343208, 32.363205, 30.122179>,  <37.980190, 32.500847, 30.025883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.343208, 32.363205, 30.122179> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156694, -0.254392, -0.954323,
		0.389632, 0.903811, -0.176952,
		0.907543, -0.344107, 0.240741,
		38.615471, 32.259972, 30.194401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.612701, 32.794678, 29.669052>,  <37.980190, 32.500847, 30.025883>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.612701, 32.794678, 29.669052> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.734680, 32.426979, 29.768648>,  <38.807865, 32.206360, 29.828405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.734680, 32.426979, 29.768648>,  <38.612701, 32.794678, 29.669052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.734680, 32.426979, 29.768648> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054514, -0.244164, -0.968201,
		0.950809, 0.308820, -0.024345,
		0.304944, -0.919247, 0.248988,
		38.826164, 32.151203, 29.843344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.869846, 32.628170, 29.074858>,  <38.612701, 32.794678, 29.669052>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.869846, 32.628170, 29.074858> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.866585, 32.274830, 29.262318>,  <38.864628, 32.062828, 29.374794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.866585, 32.274830, 29.262318>,  <38.869846, 32.628170, 29.074858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.866585, 32.274830, 29.262318> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211017, -0.456592, -0.864289,
		0.977448, -0.105942, -0.182677,
		-0.008156, -0.883346, 0.468651,
		38.864140, 32.009827, 29.402912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.364990, 32.123276, 28.780449>,  <38.869846, 32.628170, 29.074858>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.364990, 32.123276, 28.780449> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.060875, 31.925148, 28.948555>,  <38.878407, 31.806271, 29.049419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.060875, 31.925148, 28.948555>,  <39.364990, 32.123276, 28.780449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.060875, 31.925148, 28.948555> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203644, -0.432613, -0.878279,
		0.616845, -0.753326, 0.228039,
		-0.760284, -0.495323, 0.420266,
		38.832790, 31.776550, 29.074635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.328735, 31.538008, 28.481873>,  <39.364990, 32.123276, 28.780449>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.328735, 31.538008, 28.481873> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.969460, 31.533371, 28.657652>,  <38.753895, 31.530588, 28.763121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.969460, 31.533371, 28.657652>,  <39.328735, 31.538008, 28.481873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.969460, 31.533371, 28.657652> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356367, -0.566114, -0.743315,
		0.257397, -0.824245, 0.504348,
		-0.898193, -0.011594, 0.439450,
		38.700001, 31.529894, 28.789486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.038643, 30.870016, 28.345690>,  <39.328735, 31.538008, 28.481873>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.038643, 30.870016, 28.345690> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.735157, 31.114683, 28.435329>,  <38.553066, 31.261484, 28.489113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.735157, 31.114683, 28.435329>,  <39.038643, 30.870016, 28.345690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.735157, 31.114683, 28.435329> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552781, -0.422509, -0.718275,
		-0.344657, -0.668845, 0.658679,
		-0.758713, 0.611664, 0.224104,
		38.507545, 31.298183, 28.502560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.337093, 30.426544, 28.323427>,  <39.038643, 30.870016, 28.345690>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.337093, 30.426544, 28.323427> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.247032, 30.815783, 28.303892>,  <38.192993, 31.049326, 28.292171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.247032, 30.815783, 28.303892>,  <38.337093, 30.426544, 28.323427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.247032, 30.815783, 28.303892> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544644, -0.167265, -0.821818,
		-0.807878, -0.158439, 0.567653,
		-0.225157, 0.973098, -0.048837,
		38.179485, 31.107712, 28.289242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.768791, 30.350050, 28.000648>,  <38.337093, 30.426544, 28.323427>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.768791, 30.350050, 28.000648> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.836437, 30.743479, 27.975388>,  <37.877026, 30.979536, 27.960230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.836437, 30.743479, 27.975388>,  <37.768791, 30.350050, 28.000648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.836437, 30.743479, 27.975388> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515937, 0.033751, -0.855961,
		-0.839767, 0.177341, 0.513168,
		0.169118, 0.983570, -0.063154,
		37.887173, 31.038549, 27.956442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.184357, 30.693897, 27.798227>,  <37.768791, 30.350050, 28.000648>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.184357, 30.693897, 27.798227> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.497459, 30.916353, 27.686516>,  <37.685322, 31.049828, 27.619488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.497459, 30.916353, 27.686516>,  <37.184357, 30.693897, 27.798227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.497459, 30.916353, 27.686516> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439499, 0.176286, -0.880774,
		-0.440600, 0.812177, 0.382413,
		0.782759, 0.556139, -0.279280,
		37.732288, 31.083195, 27.602732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.840260, 31.349981, 27.552584>,  <37.184357, 30.693897, 27.798227>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.840260, 31.349981, 27.552584> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.211864, 31.356289, 27.404696>,  <37.434826, 31.360073, 27.315962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.211864, 31.356289, 27.404696>,  <36.840260, 31.349981, 27.552584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.211864, 31.356289, 27.404696> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358474, 0.286345, -0.888540,
		0.091856, 0.957997, 0.271670,
		0.929009, 0.015769, -0.369720,
		37.490566, 31.361019, 27.293779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.908550, 31.953510, 27.088463>,  <36.840260, 31.349981, 27.552584>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.908550, 31.953510, 27.088463> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.202839, 31.712484, 26.964766>,  <37.379414, 31.567869, 26.890547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.202839, 31.712484, 26.964766>,  <36.908550, 31.953510, 27.088463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.202839, 31.712484, 26.964766> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096958, 0.358188, -0.928601,
		0.670308, 0.713175, 0.205103,
		0.735721, -0.602563, -0.309245,
		37.423553, 31.531715, 26.871992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.276443, 32.369156, 26.536781>,  <36.908550, 31.953510, 27.088463>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.276443, 32.369156, 26.536781> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.338985, 31.978668, 26.476727>,  <37.376511, 31.744375, 26.440695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.338985, 31.978668, 26.476727>,  <37.276443, 32.369156, 26.536781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.338985, 31.978668, 26.476727> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282216, 0.101510, -0.953965,
		0.946523, 0.191532, -0.259634,
		0.156359, -0.976223, -0.150135,
		37.385895, 31.685801, 26.431686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.517544, 32.369850, 25.766199>,  <37.276443, 32.369156, 26.536781>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.517544, 32.369850, 25.766199> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.430637, 31.993988, 25.871914>,  <37.378494, 31.768471, 25.935343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.430637, 31.993988, 25.871914>,  <37.517544, 32.369850, 25.766199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.430637, 31.993988, 25.871914> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414111, -0.156450, -0.896680,
		0.883916, -0.304263, -0.355130,
		-0.217267, -0.939653, 0.264287,
		37.365456, 31.712091, 25.951200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.721588, 31.936228, 25.143095>,  <37.517544, 32.369850, 25.766199>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.721588, 31.936228, 25.143095> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.456753, 31.742748, 25.372065>,  <37.297852, 31.626661, 25.509447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.456753, 31.742748, 25.372065>,  <37.721588, 31.936228, 25.143095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.456753, 31.742748, 25.372065> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510191, -0.268571, -0.817053,
		0.548943, -0.833010, -0.068960,
		-0.662092, -0.483699, 0.572424,
		37.258125, 31.597639, 25.543793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.667866, 31.305933, 24.910585>,  <37.721588, 31.936228, 25.143095>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.667866, 31.305933, 24.910585> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.319824, 31.343365, 25.104145>,  <37.111000, 31.365824, 25.220282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.319824, 31.343365, 25.104145>,  <37.667866, 31.305933, 24.910585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.319824, 31.343365, 25.104145> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490318, -0.264027, -0.830589,
		0.050038, -0.959965, 0.275615,
		-0.870106, 0.093578, 0.483899,
		37.058792, 31.371437, 25.249315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.390667, 30.708361, 24.739450>,  <37.667866, 31.305933, 24.910585>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.390667, 30.708361, 24.739450> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.082447, 30.926067, 24.872133>,  <36.897514, 31.056692, 24.951744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.082447, 30.926067, 24.872133>,  <37.390667, 30.708361, 24.739450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.082447, 30.926067, 24.872133> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556090, -0.319732, -0.767160,
		-0.311474, -0.775599, 0.549027,
		-0.770550, 0.544258, 0.331715,
		36.851284, 31.089348, 24.971645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.859928, 30.223436, 24.642925>,  <37.390667, 30.708361, 24.739450>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.859928, 30.223436, 24.642925> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.695599, 30.585348, 24.687811>,  <36.597000, 30.802496, 24.714743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.695599, 30.585348, 24.687811>,  <36.859928, 30.223436, 24.642925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.695599, 30.585348, 24.687811> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639823, -0.198438, -0.742462,
		-0.649498, -0.376820, 0.660423,
		-0.410828, 0.904781, 0.112213,
		36.572350, 30.856783, 24.721476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.920132, 30.074114, 24.689388> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.987553, 30.461132, 24.614077>,  <36.028004, 30.693342, 24.568890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.987553, 30.461132, 24.614077>,  <35.920132, 30.074114, 24.689388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.987553, 30.461132, 24.614077> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508448, -0.078295, -0.857526,
		-0.844436, 0.240266, 0.478749,
		0.168551, 0.967544, -0.188278,
		36.038116, 30.751396, 24.557594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.260792, 30.375706, 24.537338>,  <35.920132, 30.074114, 24.689388>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.260792, 30.375706, 24.537338> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.539734, 30.603121, 24.362770>,  <35.707100, 30.739569, 24.258030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.539734, 30.603121, 24.362770>,  <35.260792, 30.375706, 24.537338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.539734, 30.603121, 24.362770> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544567, 0.024409, -0.838362,
		-0.465986, 0.822297, 0.326627,
		0.697355, 0.568536, -0.436421,
		35.748940, 30.773682, 24.231844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.934010, 30.966637, 24.134449>,  <35.260792, 30.375706, 24.537338>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.934010, 30.966637, 24.134449> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.292614, 30.931732, 23.960711>,  <35.507774, 30.910789, 23.856466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.292614, 30.931732, 23.960711>,  <34.934010, 30.966637, 24.134449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.292614, 30.931732, 23.960711> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423814, 0.116666, -0.898204,
		0.129054, 0.989330, 0.067608,
		0.896508, -0.087263, -0.434348,
		35.561565, 30.905554, 23.830406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.885860, 31.449408, 23.621574>,  <34.934010, 30.966637, 24.134449>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.885860, 31.449408, 23.621574> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.182545, 31.204357, 23.512354>,  <35.360554, 31.057327, 23.446821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.182545, 31.204357, 23.512354>,  <34.885860, 31.449408, 23.621574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.182545, 31.204357, 23.512354> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351227, -0.007939, -0.936257,
		0.571409, 0.790332, -0.221060,
		0.741708, -0.612627, -0.273050,
		35.405056, 31.020569, 23.430439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.163479, 31.719141, 23.036694>,  <34.885860, 31.449408, 23.621574>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.163479, 31.719141, 23.036694> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.334396, 31.358906, 23.004789>,  <35.436947, 31.142765, 22.985647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.334396, 31.358906, 23.004789>,  <35.163479, 31.719141, 23.036694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.334396, 31.358906, 23.004789> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153246, 0.014800, -0.988077,
		0.891031, 0.434422, -0.131688,
		0.427294, -0.900588, -0.079761,
		35.462585, 31.088730, 22.980862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.564445, 31.869009, 22.419533>,  <35.163479, 31.719141, 23.036694>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.564445, 31.869009, 22.419533> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.495663, 31.481695, 22.492037>,  <35.454391, 31.249308, 22.535540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.495663, 31.481695, 22.492037>,  <35.564445, 31.869009, 22.419533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.495663, 31.481695, 22.492037> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342452, -0.113770, -0.932622,
		0.923666, -0.222442, -0.312027,
		-0.171955, -0.968285, 0.181261,
		35.444077, 31.191210, 22.546415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.921516, 31.505249, 21.963274>,  <35.564445, 31.869009, 22.419533>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.921516, 31.505249, 21.963274> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.661560, 31.226580, 22.084795>,  <35.505589, 31.059378, 22.157707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.661560, 31.226580, 22.084795>,  <35.921516, 31.505249, 21.963274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.661560, 31.226580, 22.084795> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285183, -0.146991, -0.947135,
		0.704498, -0.702170, -0.103151,
		-0.649887, -0.696671, 0.303802,
		35.466595, 31.017578, 22.175936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.971172, 31.011269, 21.549204>,  <35.921516, 31.505249, 21.963274>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.971172, 31.011269, 21.549204> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.603970, 30.935408, 21.688517>,  <35.383648, 30.889891, 21.772104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.603970, 30.935408, 21.688517>,  <35.971172, 31.011269, 21.549204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.603970, 30.935408, 21.688517> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362586, 0.045685, -0.930830,
		0.160627, -0.980787, -0.110705,
		-0.918004, -0.189656, 0.348281,
		35.328568, 30.878511, 21.793001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.731571, 30.376408, 21.222977>,  <35.971172, 31.011269, 21.549204>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.731571, 30.376408, 21.222977> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.415798, 30.593586, 21.337523>,  <35.226334, 30.723892, 21.406250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.415798, 30.593586, 21.337523>,  <35.731571, 30.376408, 21.222977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.415798, 30.593586, 21.337523> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385088, -0.074760, -0.919847,
		-0.478018, -0.836434, 0.268100,
		-0.789434, 0.542945, 0.286364,
		35.178967, 30.756470, 21.423431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.251041, 30.159540, 20.767092>,  <35.731571, 30.376408, 21.222977>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.251041, 30.159540, 20.767092> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.066357, 30.479488, 20.920465>,  <34.955544, 30.671457, 21.012489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.066357, 30.479488, 20.920465>,  <35.251041, 30.159540, 20.767092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.066357, 30.479488, 20.920465> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395984, 0.200941, -0.896002,
		-0.793735, -0.565532, 0.223959,
		-0.461715, 0.799872, 0.383436,
		34.927841, 30.719450, 21.035496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.547688, 30.151819, 20.656404>,  <35.251041, 30.159540, 20.767092>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.547688, 30.151819, 20.656404> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.618870, 30.543550, 20.694874>,  <34.661579, 30.778589, 20.717955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.618870, 30.543550, 20.694874>,  <34.547688, 30.151819, 20.656404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.618870, 30.543550, 20.694874> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412832, 0.163015, -0.896100,
		-0.893254, 0.119759, 0.433307,
		0.177951, 0.979328, 0.096174,
		34.672256, 30.837349, 20.723726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.884888, 30.492695, 20.454813>,  <34.547688, 30.151819, 20.656404>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.884888, 30.492695, 20.454813> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.170273, 30.771296, 20.424215>,  <34.341503, 30.938456, 20.405857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.170273, 30.771296, 20.424215>,  <33.884888, 30.492695, 20.454813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.170273, 30.771296, 20.424215> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495427, 0.424248, -0.758001,
		-0.495497, 0.578706, 0.647752,
		0.713467, 0.696501, -0.076493,
		34.384312, 30.980246, 20.401268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.560009, 31.122648, 20.417921>,  <33.884888, 30.492695, 20.454813>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.560009, 31.122648, 20.417921> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.911343, 31.217920, 20.252129>,  <34.122143, 31.275084, 20.152653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.911343, 31.217920, 20.252129>,  <33.560009, 31.122648, 20.417921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.911343, 31.217920, 20.252129> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478013, 0.447102, -0.756045,
		0.005240, 0.862189, 0.506559,
		0.878337, 0.238180, -0.414481,
		34.174843, 31.289373, 20.127785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.465008, 31.761040, 20.208076>,  <33.560009, 31.122648, 20.417921>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.465008, 31.761040, 20.208076> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.765900, 31.628162, 19.980465>,  <33.946434, 31.548437, 19.843897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.765900, 31.628162, 19.980465>,  <33.465008, 31.761040, 20.208076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.765900, 31.628162, 19.980465> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388871, 0.473339, -0.790398,
		0.531909, 0.815842, 0.226881,
		0.752232, -0.332192, -0.569030,
		33.991570, 31.528505, 19.809755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.446815, 32.316601, 19.670641>,  <33.465008, 31.761040, 20.208076>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.446815, 32.316601, 19.670641> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.658527, 32.015953, 19.513191>,  <33.785553, 31.835566, 19.418722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.658527, 32.015953, 19.513191>,  <33.446815, 32.316601, 19.670641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.658527, 32.015953, 19.513191> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216993, 0.328591, -0.919208,
		0.820232, 0.571929, 0.010820,
		0.529277, -0.751615, -0.393625,
		33.817310, 31.790468, 19.395103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.738506, 32.551414, 18.992861>,  <33.446815, 32.316601, 19.670641>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.738506, 32.551414, 18.992861> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.718422, 32.151997, 19.000776>,  <33.706371, 31.912346, 19.005526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.718422, 32.151997, 19.000776>,  <33.738506, 32.551414, 18.992861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.718422, 32.151997, 19.000776> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203537, -0.009166, -0.979024,
		0.977779, -0.053190, -0.202781,
		-0.050216, -0.998542, 0.019788,
		33.703358, 31.852434, 19.006712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.157429, 32.302944, 18.382824>,  <33.738506, 32.551414, 18.992861>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.157429, 32.302944, 18.382824> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.941257, 31.973005, 18.449238>,  <33.811554, 31.775043, 18.489086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.941257, 31.973005, 18.449238>,  <34.157429, 32.302944, 18.382824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.941257, 31.973005, 18.449238> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224271, -0.048974, -0.973295,
		0.810947, -0.563237, -0.158521,
		-0.540433, -0.824843, 0.166032,
		33.779129, 31.725552, 18.499048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.388069, 31.779104, 17.845253>,  <34.157429, 32.302944, 18.382824>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.388069, 31.779104, 17.845253> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.029408, 31.640396, 17.955353>,  <33.814209, 31.557171, 18.021412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.029408, 31.640396, 17.955353>,  <34.388069, 31.779104, 17.845253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.029408, 31.640396, 17.955353> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274893, -0.051285, -0.960106,
		0.347053, -0.936547, -0.049340,
		-0.896654, -0.346771, 0.275248,
		33.760410, 31.536366, 18.037928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.204121, 31.335768, 17.248619>,  <34.388069, 31.779104, 17.845253>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.204121, 31.335768, 17.248619> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.873177, 31.384279, 17.467987>,  <33.674610, 31.413385, 17.599607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.873177, 31.384279, 17.467987>,  <34.204121, 31.335768, 17.248619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.873177, 31.384279, 17.467987> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557183, -0.054048, -0.828629,
		-0.070871, -0.991144, 0.112302,
		-0.827360, 0.121298, 0.548418,
		33.624969, 31.420662, 17.632513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.616940, 30.990398, 16.715240>,  <34.204121, 31.335768, 17.248619>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.616940, 30.990398, 16.715240> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.425377, 31.214796, 16.985332>,  <33.310440, 31.349436, 17.147388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.425377, 31.214796, 16.985332>,  <33.616940, 30.990398, 16.715240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.425377, 31.214796, 16.985332> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531031, 0.427359, -0.731690,
		-0.699040, -0.708977, 0.093243,
		-0.478903, 0.560995, 0.675230,
		33.281704, 31.383095, 17.187902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.981232, 30.967386, 16.545115>,  <33.616940, 30.990398, 16.715240>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.981232, 30.967386, 16.545115> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.996532, 31.302052, 16.763666>,  <33.005714, 31.502851, 16.894796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.996532, 31.302052, 16.763666>,  <32.981232, 30.967386, 16.545115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.996532, 31.302052, 16.763666> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399897, 0.513904, -0.758937,
		-0.915761, -0.189461, 0.354240,
		0.038256, 0.836665, 0.546378,
		33.008011, 31.553051, 16.927580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.099030, 30.223326, 16.423235>,  <32.981232, 30.967386, 16.545115>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.099030, 30.223326, 16.423235> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.179005, 29.842276, 16.331556>,  <33.226990, 29.613646, 16.276550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.179005, 29.842276, 16.331556>,  <33.099030, 30.223326, 16.423235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.179005, 29.842276, 16.331556> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672387, -0.303545, 0.675097,
		-0.712685, 0.019130, -0.701223,
		0.199938, -0.952625, -0.229195,
		33.238987, 29.556488, 16.262798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.561325, 29.977011, 16.050138>,  <33.099030, 30.223326, 16.423235>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.561325, 29.977011, 16.050138> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.779419, 29.739338, 16.286669>,  <32.910275, 29.596735, 16.428587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.779419, 29.739338, 16.286669>,  <32.561325, 29.977011, 16.050138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.779419, 29.739338, 16.286669> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745264, -0.020622, 0.666451,
		-0.383798, -0.804067, -0.454066,
		0.545235, -0.594181, 0.591328,
		32.942989, 29.561085, 16.464067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.051983, 29.648727, 16.393026>,  <32.561325, 29.977011, 16.050138>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.051983, 29.648727, 16.393026> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.379704, 29.537317, 16.593491>,  <32.576336, 29.470470, 16.713768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.379704, 29.537317, 16.593491>,  <32.051983, 29.648727, 16.393026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.379704, 29.537317, 16.593491> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571983, -0.336568, 0.748036,
		-0.039675, -0.899525, -0.435065,
		0.819306, -0.278528, 0.501159,
		32.625496, 29.453758, 16.743839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.450705, 29.286972, 16.675638>,  <32.051983, 29.648727, 16.393026>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.450705, 29.286972, 16.675638> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.144152, 29.079220, 16.826845>,  <30.960220, 28.954569, 16.917570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.144152, 29.079220, 16.826845>,  <31.450705, 29.286972, 16.675638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.144152, 29.079220, 16.826845> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087839, 0.498207, 0.862597,
		-0.636348, 0.694286, -0.336196,
		-0.766385, -0.519381, 0.378019,
		30.914236, 28.923405, 16.940250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.113596, 29.748043, 17.099882>,  <31.450705, 29.286972, 16.675638>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.113596, 29.748043, 17.099882> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.996153, 29.385498, 17.221409>,  <30.925688, 29.167971, 17.294325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.996153, 29.385498, 17.221409>,  <31.113596, 29.748043, 17.099882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.996153, 29.385498, 17.221409> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054140, 0.333083, 0.941342,
		-0.954392, 0.259937, -0.146866,
		-0.293608, -0.906360, 0.303818,
		30.908070, 29.113590, 17.312553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.525078, 29.884041, 17.535851>,  <31.113596, 29.748043, 17.099882>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.525078, 29.884041, 17.535851> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.633501, 29.511436, 17.632858>,  <30.698555, 29.287874, 17.691063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.633501, 29.511436, 17.632858>,  <30.525078, 29.884041, 17.535851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.633501, 29.511436, 17.632858> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093435, 0.225302, 0.969799,
		-0.958017, -0.285534, -0.025965,
		0.271060, -0.931509, 0.242522,
		30.714819, 29.231983, 17.705614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.118687, 29.839945, 18.134714>,  <30.525078, 29.884041, 17.535851>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.118687, 29.839945, 18.134714> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.399826, 29.555433, 18.130968>,  <30.568510, 29.384727, 18.128721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.399826, 29.555433, 18.130968>,  <30.118687, 29.839945, 18.134714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.399826, 29.555433, 18.130968> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170193, 0.155364, 0.973086,
		-0.690680, -0.685526, 0.230252,
		0.702848, -0.711278, -0.009365,
		30.610682, 29.342051, 18.128159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.955399, 29.333115, 18.747889>,  <30.118687, 29.839945, 18.134714>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.955399, 29.333115, 18.747889> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.346712, 29.333525, 18.664982>,  <30.581501, 29.333771, 18.615238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.346712, 29.333525, 18.664982>,  <29.955399, 29.333115, 18.747889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.346712, 29.333525, 18.664982> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202684, 0.204482, 0.957657,
		0.043363, -0.978870, 0.199834,
		0.978284, 0.001024, -0.207268,
		30.640198, 29.333832, 18.602802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.247355, 29.045311, 19.283636>,  <29.955399, 29.333115, 18.747889>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.247355, 29.045311, 19.283636> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.582771, 29.190035, 19.120693>,  <30.784021, 29.276869, 19.022928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.582771, 29.190035, 19.120693>,  <30.247355, 29.045311, 19.283636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.582771, 29.190035, 19.120693> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314198, 0.289690, 0.904079,
		0.445113, -0.886100, 0.129237,
		0.838543, 0.361811, -0.407355,
		30.834333, 29.298578, 18.998487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.803270, 28.758127, 19.708765>,  <30.247355, 29.045311, 19.283636>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.803270, 28.758127, 19.708765> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.961506, 29.074800, 19.522539>,  <31.056446, 29.264805, 19.410803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.961506, 29.074800, 19.522539>,  <30.803270, 28.758127, 19.708765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.961506, 29.074800, 19.522539> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480796, 0.253396, 0.839420,
		0.782526, -0.555906, -0.280397,
		0.395587, 0.791681, -0.465566,
		31.080181, 29.312305, 19.382870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.442225, 28.830580, 20.041059>,  <30.803270, 28.758127, 19.708765>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.442225, 28.830580, 20.041059> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.393379, 29.195459, 19.884609>,  <31.364073, 29.414387, 19.790739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.393379, 29.195459, 19.884609>,  <31.442225, 28.830580, 20.041059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.393379, 29.195459, 19.884609> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433903, 0.403487, 0.805560,
		0.892646, -0.071340, -0.445078,
		-0.122114, 0.912200, -0.391125,
		31.356745, 29.469120, 19.767271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.080944, 29.198658, 20.101191>,  <31.442225, 28.830580, 20.041059>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.080944, 29.198658, 20.101191> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.799870, 29.480225, 20.059740>,  <31.631226, 29.649164, 20.034870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.799870, 29.480225, 20.059740>,  <32.080944, 29.198658, 20.101191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.799870, 29.480225, 20.059740> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335797, 0.456500, 0.823923,
		0.627277, 0.544159, -0.557148,
		-0.702683, 0.703916, -0.103625,
		31.589066, 29.691401, 20.028652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.414448, 29.862751, 20.092716>,  <32.080944, 29.198658, 20.101191>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.414448, 29.862751, 20.092716> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.046329, 29.963295, 20.212629>,  <31.825459, 30.023621, 20.284576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.046329, 29.963295, 20.212629>,  <32.414448, 29.862751, 20.092716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.046329, 29.963295, 20.212629> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373842, 0.339215, 0.863235,
		0.115292, 0.906505, -0.406148,
		-0.920299, 0.251359, 0.299781,
		31.770239, 30.038702, 20.302563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.404312, 30.573076, 20.319748>,  <32.414448, 29.862751, 20.092716>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.404312, 30.573076, 20.319748> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.082790, 30.422686, 20.504154>,  <31.889877, 30.332451, 20.614798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.082790, 30.422686, 20.504154>,  <32.404312, 30.573076, 20.319748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.082790, 30.422686, 20.504154> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278271, 0.447318, 0.849983,
		-0.525795, 0.811510, -0.254934,
		-0.803807, -0.375976, 0.461017,
		31.841648, 30.309893, 20.642460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.243866, 31.058252, 20.733061>,  <32.404312, 30.573076, 20.319748>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.243866, 31.058252, 20.733061> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.033260, 30.762653, 20.901190>,  <31.906898, 30.585295, 21.002068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.033260, 30.762653, 20.901190>,  <32.243866, 31.058252, 20.733061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.033260, 30.762653, 20.901190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269062, 0.324147, 0.906937,
		-0.806469, 0.590606, 0.028169,
		-0.526511, -0.738995, 0.420324,
		31.875307, 30.540955, 21.027287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.879580, 31.352089, 21.286982>,  <32.243866, 31.058252, 20.733061>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.879580, 31.352089, 21.286982> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.902052, 30.963629, 21.379684>,  <31.915535, 30.730553, 21.435307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.902052, 30.963629, 21.379684>,  <31.879580, 31.352089, 21.286982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.902052, 30.963629, 21.379684> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287499, 0.238028, 0.927732,
		-0.956132, 0.014509, 0.292578,
		0.056181, -0.971150, 0.231757,
		31.918907, 30.672283, 21.449211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.719713, 31.351997, 21.975515>,  <31.879580, 31.352089, 21.286982>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.719713, 31.351997, 21.975515> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.905050, 30.999176, 21.941353>,  <32.016254, 30.787483, 21.920856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.905050, 30.999176, 21.941353>,  <31.719713, 31.351997, 21.975515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.905050, 30.999176, 21.941353> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442901, 0.147022, 0.884434,
		-0.767561, -0.447624, 0.458784,
		0.463345, -0.882053, -0.085405,
		32.044052, 30.734560, 21.915731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.766211, 31.099611, 22.656126>,  <31.719713, 31.351997, 21.975515>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.766211, 31.099611, 22.656126> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.035656, 30.869486, 22.470541>,  <32.197323, 30.731411, 22.359190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.035656, 30.869486, 22.470541>,  <31.766211, 31.099611, 22.656126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.035656, 30.869486, 22.470541> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586796, 0.034640, 0.808994,
		-0.449352, -0.817200, 0.360925,
		0.673612, -0.575312, -0.463964,
		32.237740, 30.696892, 22.331352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.828789, 30.359577, 22.984529>,  <31.766211, 31.099611, 22.656126>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.828789, 30.359577, 22.984529> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.166264, 30.431870, 22.782331>,  <32.368748, 30.475245, 22.661013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.166264, 30.431870, 22.782331>,  <31.828789, 30.359577, 22.984529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.166264, 30.431870, 22.782331> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527537, -0.104633, 0.843064,
		0.099475, -0.977951, -0.183619,
		0.843688, 0.180730, -0.505497,
		32.419369, 30.486088, 22.630682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.243584, 29.683781, 23.084255>,  <31.828789, 30.359577, 22.984529>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.243584, 29.683781, 23.084255> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.490257, 29.981104, 22.980570>,  <32.638264, 30.159498, 22.918358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.490257, 29.981104, 22.980570>,  <32.243584, 29.683781, 23.084255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.490257, 29.981104, 22.980570> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434525, -0.046841, 0.899441,
		0.656419, -0.667308, -0.351872,
		0.616686, 0.743308, -0.259215,
		32.675262, 30.204096, 22.902805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.913166, 29.501858, 23.270861>,  <32.243584, 29.683781, 23.084255>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.913166, 29.501858, 23.270861> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.897713, 29.901445, 23.261349>,  <32.888439, 30.141199, 23.255642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.897713, 29.901445, 23.261349>,  <32.913166, 29.501858, 23.270861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.897713, 29.901445, 23.261349> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348060, 0.035763, 0.936790,
		0.936676, 0.027918, -0.349083,
		-0.038637, 0.998970, -0.023782,
		32.886120, 30.201136, 23.254213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.504299, 29.613663, 23.676313>,  <32.913166, 29.501858, 23.270861>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.504299, 29.613663, 23.676313> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.322990, 29.967718, 23.634232>,  <33.214203, 30.180153, 23.608982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.322990, 29.967718, 23.634232>,  <33.504299, 29.613663, 23.676313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.322990, 29.967718, 23.634232> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127161, 0.181030, 0.975222,
		0.882254, 0.428665, -0.194612,
		-0.453274, 0.885141, -0.105205,
		33.187008, 30.233261, 23.602671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.900089, 30.049185, 23.987364>,  <33.504299, 29.613663, 23.676313>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.900089, 30.049185, 23.987364> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.560482, 30.259964, 24.002817>,  <33.356716, 30.386433, 24.012089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.560482, 30.259964, 24.002817>,  <33.900089, 30.049185, 23.987364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.560482, 30.259964, 24.002817> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119129, 0.119680, 0.985639,
		0.514759, 0.841428, -0.164385,
		-0.849018, 0.526950, 0.038632,
		33.305779, 30.418049, 24.014406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.369099, 30.857973, 26.419514> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.056187, 31.062040, 26.562490>,  <37.868439, 31.184481, 26.648277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.056187, 31.062040, 26.562490>,  <38.369099, 30.857973, 26.419514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.056187, 31.062040, 26.562490> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537505, 0.262801, 0.801264,
		0.314844, 0.818940, -0.479803,
		-0.782280, 0.510170, 0.357443,
		37.821503, 31.215092, 26.669724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.685833, 31.279266, 26.816042>,  <38.369099, 30.857973, 26.419514>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.685833, 31.279266, 26.816042> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.313683, 31.318365, 26.957371>,  <38.090393, 31.341825, 27.042168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.313683, 31.318365, 26.957371>,  <38.685833, 31.279266, 26.816042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.313683, 31.318365, 26.957371> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366521, 0.228563, 0.901899,
		0.007402, 0.968609, -0.248477,
		-0.930380, 0.097748, 0.353324,
		38.034569, 31.347689, 27.063368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.555477, 31.985086, 27.189810>,  <38.685833, 31.279266, 26.816042>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.555477, 31.985086, 27.189810> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.294891, 31.721313, 27.339869>,  <38.138538, 31.563049, 27.429903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.294891, 31.721313, 27.339869>,  <38.555477, 31.985086, 27.189810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.294891, 31.721313, 27.339869> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342088, 0.186033, 0.921068,
		-0.677175, 0.728380, 0.104390,
		-0.651468, -0.659435, 0.375147,
		38.099449, 31.523483, 27.452414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.248295, 32.263893, 27.841888>,  <38.555477, 31.985086, 27.189810>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.248295, 32.263893, 27.841888> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.123241, 31.886143, 27.882725>,  <38.048210, 31.659492, 27.907227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.123241, 31.886143, 27.882725>,  <38.248295, 32.263893, 27.841888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.123241, 31.886143, 27.882725> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099918, 0.074184, 0.992226,
		-0.944605, 0.320401, 0.071168,
		-0.312631, -0.944373, 0.102089,
		38.029453, 31.602831, 27.913351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.769711, 32.333008, 28.291399>,  <38.248295, 32.263893, 27.841888>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.769711, 32.333008, 28.291399> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.898991, 31.954556, 28.283579>,  <37.976559, 31.727486, 28.278887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.898991, 31.954556, 28.283579>,  <37.769711, 32.333008, 28.291399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.898991, 31.954556, 28.283579> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174927, 0.039425, 0.983792,
		-0.930022, -0.321383, 0.178245,
		0.323201, -0.946128, -0.019553,
		37.995953, 31.670717, 28.277714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.443516, 31.958366, 28.832695>,  <37.769711, 32.333008, 28.291399>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.443516, 31.958366, 28.832695> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.786369, 31.773134, 28.742466>,  <37.992081, 31.661995, 28.688328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.786369, 31.773134, 28.742466>,  <37.443516, 31.958366, 28.832695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.786369, 31.773134, 28.742466> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189111, -0.124438, 0.974039,
		-0.479130, -0.877537, -0.019085,
		0.857130, -0.463082, -0.225573,
		38.043507, 31.634211, 28.674793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.602947, 31.665760, 29.435898>,  <37.443516, 31.958366, 28.832695>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.602947, 31.665760, 29.435898> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.928009, 31.546394, 29.235683>,  <38.123047, 31.474775, 29.115555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.928009, 31.546394, 29.235683>,  <37.602947, 31.665760, 29.435898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.928009, 31.546394, 29.235683> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507982, -0.058138, 0.859404,
		-0.285560, -0.952664, 0.104343,
		0.812657, -0.298416, -0.500538,
		38.171806, 31.456871, 29.085522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.910000, 31.027729, 29.695465>,  <37.602947, 31.665760, 29.435898>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.910000, 31.027729, 29.695465> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.182617, 31.257864, 29.514587>,  <38.346188, 31.395945, 29.406061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.182617, 31.257864, 29.514587>,  <37.910000, 31.027729, 29.695465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.182617, 31.257864, 29.514587> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447402, 0.161378, 0.879653,
		0.579073, -0.801837, -0.147421,
		0.681547, 0.575339, -0.452193,
		38.387081, 31.430466, 29.378929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.586464, 30.888638, 30.004562>,  <37.910000, 31.027729, 29.695465>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.586464, 30.888638, 30.004562> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.674751, 31.239176, 29.833307>,  <38.727722, 31.449499, 29.730555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.674751, 31.239176, 29.833307>,  <38.586464, 30.888638, 30.004562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.674751, 31.239176, 29.833307> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392264, 0.322137, 0.861601,
		0.892979, -0.358114, -0.272657,
		0.220719, 0.876346, -0.428137,
		38.740967, 31.502079, 29.704866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.275780, 30.998775, 30.219790>,  <38.586464, 30.888638, 30.004562>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.275780, 30.998775, 30.219790> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.123135, 31.351219, 30.108063>,  <39.031548, 31.562685, 30.041027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.123135, 31.351219, 30.108063>,  <39.275780, 30.998775, 30.219790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.123135, 31.351219, 30.108063> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314483, 0.407924, 0.857145,
		0.869179, 0.239257, -0.432763,
		-0.381613, 0.881109, -0.279317,
		39.008652, 31.615553, 30.024267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.689529, 31.554743, 30.387638>,  <39.275780, 30.998775, 30.219790>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.689529, 31.554743, 30.387638> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.360199, 31.774881, 30.332125>,  <39.162601, 31.906963, 30.298817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.360199, 31.774881, 30.332125>,  <39.689529, 31.554743, 30.387638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.360199, 31.774881, 30.332125> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156662, 0.455379, 0.876406,
		0.545525, 0.699822, -0.461142,
		-0.823322, 0.550345, -0.138785,
		39.113201, 31.939985, 30.290489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.875362, 32.139858, 30.745411>,  <39.689529, 31.554743, 30.387638>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.875362, 32.139858, 30.745411> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.478912, 32.171722, 30.702829>,  <39.241043, 32.190842, 30.677280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.478912, 32.171722, 30.702829>,  <39.875362, 32.139858, 30.745411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.478912, 32.171722, 30.702829> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068275, 0.382090, 0.921600,
		0.114089, 0.920685, -0.373259,
		-0.991122, 0.079660, -0.106452,
		39.181576, 32.195621, 30.670895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.757481, 32.596786, 31.291670>,  <39.875362, 32.139858, 30.745411>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.757481, 32.596786, 31.291670> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.393581, 32.473301, 31.180630>,  <39.175243, 32.399208, 31.114006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.393581, 32.473301, 31.180630>,  <39.757481, 32.596786, 31.291670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.393581, 32.473301, 31.180630> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387447, 0.391057, 0.834841,
		-0.149169, 0.867046, -0.475372,
		-0.909743, -0.308714, -0.277601,
		39.120659, 32.380688, 31.097349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.245117, 33.180779, 31.269484>,  <39.757481, 32.596786, 31.291670>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.245117, 33.180779, 31.269484> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.050175, 32.834667, 31.316429>,  <38.933208, 32.626999, 31.344597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.050175, 32.834667, 31.316429>,  <39.245117, 33.180779, 31.269484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.050175, 32.834667, 31.316429> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570530, 0.417287, 0.707366,
		-0.661044, 0.277780, -0.697036,
		-0.487356, -0.865280, 0.117363,
		38.903969, 32.575085, 31.351639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.139687, 33.787922, 31.631716>,  <39.245117, 33.180779, 31.269484>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.139687, 33.787922, 31.631716> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.026897, 34.169724, 31.592896>,  <38.959225, 34.398804, 31.569603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.026897, 34.169724, 31.592896>,  <39.139687, 33.787922, 31.631716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.026897, 34.169724, 31.592896> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368437, -0.201125, -0.907636,
		-0.885859, -0.220172, 0.408385,
		-0.281973, 0.954502, -0.097049,
		38.942307, 34.456074, 31.563782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.514473, 33.721424, 31.326315>,  <39.139687, 33.787922, 31.631716>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.514473, 33.721424, 31.326315> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.591019, 34.107414, 31.254532>,  <38.636944, 34.339008, 31.211462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.591019, 34.107414, 31.254532>,  <38.514473, 33.721424, 31.326315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.591019, 34.107414, 31.254532> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556690, -0.043879, -0.829560,
		-0.808379, 0.258647, 0.528795,
		0.191360, 0.964975, -0.179457,
		38.648426, 34.396908, 31.200695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.792393, 34.073170, 31.086910>,  <38.514473, 33.721424, 31.326315>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.792393, 34.073170, 31.086910> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.096027, 34.296707, 30.953358>,  <38.278210, 34.430828, 30.873226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.096027, 34.296707, 30.953358>,  <37.792393, 34.073170, 31.086910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.096027, 34.296707, 30.953358> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462382, 0.101816, -0.880816,
		-0.458245, 0.822998, 0.335687,
		0.759088, 0.558845, -0.333883,
		38.323753, 34.464359, 30.853193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.518005, 34.650795, 30.785046>,  <37.792393, 34.073170, 31.086910>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.518005, 34.650795, 30.785046> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.878525, 34.618351, 30.614830>,  <38.094837, 34.598885, 30.512701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.878525, 34.618351, 30.614830>,  <37.518005, 34.650795, 30.785046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.878525, 34.618351, 30.614830> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407280, 0.176048, -0.896175,
		0.147605, 0.981034, 0.125636,
		0.901297, -0.081111, -0.425541,
		38.148914, 34.594017, 30.487167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.522514, 35.221542, 30.328062>,  <37.518005, 34.650795, 30.785046>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.522514, 35.221542, 30.328062> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.816769, 34.985718, 30.194633>,  <37.993320, 34.844223, 30.114576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.816769, 34.985718, 30.194633>,  <37.522514, 35.221542, 30.328062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.816769, 34.985718, 30.194633> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261631, 0.206936, -0.942723,
		0.624817, 0.780769, -0.002017,
		0.735631, -0.589557, -0.333570,
		38.037457, 34.808849, 30.094563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.928051, 35.630722, 29.774494>,  <37.522514, 35.221542, 30.328062>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.928051, 35.630722, 29.774494> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.966507, 35.237000, 29.715305>,  <37.989578, 35.000767, 29.679792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.966507, 35.237000, 29.715305>,  <37.928051, 35.630722, 29.774494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.966507, 35.237000, 29.715305> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357217, 0.104638, -0.928142,
		0.929061, 0.142085, -0.341552,
		0.096136, -0.984308, -0.147970,
		37.995346, 34.941708, 29.670914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.081924, 35.686054, 29.050600>,  <37.928051, 35.630722, 29.774494>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.081924, 35.686054, 29.050600> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.019333, 35.299145, 29.130495>,  <37.981777, 35.066998, 29.178432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.019333, 35.299145, 29.130495>,  <38.081924, 35.686054, 29.050600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.019333, 35.299145, 29.130495> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351505, -0.134450, -0.926481,
		0.923017, -0.215179, -0.318964,
		-0.156474, -0.967275, 0.199736,
		37.972389, 35.008961, 29.190416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.373116, 35.325565, 28.473852>,  <38.081924, 35.686054, 29.050600>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.373116, 35.325565, 28.473852> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.124390, 35.060711, 28.641148>,  <37.975155, 34.901798, 28.741526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.124390, 35.060711, 28.641148>,  <38.373116, 35.325565, 28.473852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.124390, 35.060711, 28.641148> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342243, -0.250606, -0.905575,
		0.704430, -0.706235, -0.070783,
		-0.621810, -0.662140, 0.418238,
		37.937847, 34.862068, 28.766619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.414131, 34.745880, 28.052088>,  <38.373116, 35.325565, 28.473852>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.414131, 34.745880, 28.052088> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.072533, 34.710934, 28.257248>,  <37.867573, 34.689964, 28.380344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.072533, 34.710934, 28.257248>,  <38.414131, 34.745880, 28.052088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.072533, 34.710934, 28.257248> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500123, -0.133935, -0.855534,
		0.143442, -0.987131, 0.070684,
		-0.853992, -0.087369, 0.512898,
		37.816334, 34.684723, 28.411118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.168312, 34.148396, 27.892359>,  <38.414131, 34.745880, 28.052088>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.168312, 34.148396, 27.892359> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.853260, 34.359779, 28.019091>,  <37.664230, 34.486610, 28.095129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.853260, 34.359779, 28.019091>,  <38.168312, 34.148396, 27.892359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.853260, 34.359779, 28.019091> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496921, -0.240777, -0.833724,
		-0.364304, -0.814100, 0.452244,
		-0.787624, 0.528458, 0.316827,
		37.616974, 34.518314, 28.114140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.571575, 33.774040, 27.635672>,  <38.168312, 34.148396, 27.892359>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.571575, 33.774040, 27.635672> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.414082, 34.129028, 27.731482>,  <37.319584, 34.342022, 27.788967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.414082, 34.129028, 27.731482>,  <37.571575, 33.774040, 27.635672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.414082, 34.129028, 27.731482> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598435, -0.049686, -0.799629,
		-0.697744, -0.458182, 0.550655,
		-0.393736, 0.887468, 0.239524,
		37.295959, 34.395267, 27.803339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.854214, 33.673309, 27.587757>,  <37.571575, 33.774040, 27.635672>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.854214, 33.673309, 27.587757> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.899311, 34.070717, 27.581867>,  <36.926369, 34.309162, 27.578333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.899311, 34.070717, 27.581867>,  <36.854214, 33.673309, 27.587757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.899311, 34.070717, 27.581867> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753114, 0.075776, -0.653512,
		-0.648158, 0.084765, 0.756773,
		0.112740, 0.993516, -0.014723,
		36.933132, 34.368771, 27.577450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.142567, 34.058701, 27.790045>,  <36.854214, 33.673309, 27.587757>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.142567, 34.058701, 27.790045> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.380661, 34.270123, 27.547945>,  <36.523518, 34.396976, 27.402685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.380661, 34.270123, 27.547945>,  <36.142567, 34.058701, 27.790045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.380661, 34.270123, 27.547945> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720693, 0.018040, -0.693019,
		-0.355379, 0.848708, 0.391663,
		0.595237, 0.528554, -0.605247,
		36.559231, 34.428688, 27.366371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.710281, 34.615852, 27.514181>,  <36.142567, 34.058701, 27.790045>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.710281, 34.615852, 27.514181> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.025047, 34.550037, 27.276295>,  <36.213909, 34.510548, 27.133562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.025047, 34.550037, 27.276295>,  <35.710281, 34.615852, 27.514181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.025047, 34.550037, 27.276295> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597644, 0.036638, -0.800924,
		0.153572, 0.985690, -0.069504,
		0.786917, -0.164539, -0.594718,
		36.261124, 34.500675, 27.097879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.583340, 35.291698, 27.756538>,  <35.710281, 34.615852, 27.514181>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.583340, 35.291698, 27.756538> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.402611, 35.646584, 27.793884>,  <35.294174, 35.859512, 27.816292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.402611, 35.646584, 27.793884>,  <35.583340, 35.291698, 27.756538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.402611, 35.646584, 27.793884> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449759, 0.136155, 0.882711,
		0.770436, 0.440821, -0.460548,
		-0.451823, 0.887208, 0.093365,
		35.267063, 35.912746, 27.821894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.085621, 35.706696, 27.914618>,  <35.583340, 35.291698, 27.756538>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.085621, 35.706696, 27.914618> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.759674, 35.904663, 28.035318>,  <35.564106, 36.023441, 28.107738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.759674, 35.904663, 28.035318>,  <36.085621, 35.706696, 27.914618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.759674, 35.904663, 28.035318> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439174, 0.187379, 0.878644,
		0.378312, 0.848498, -0.370042,
		-0.814866, 0.494915, 0.301751,
		35.515213, 36.053139, 28.125843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.304302, 36.383068, 28.236647>,  <36.085621, 35.706696, 27.914618>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.304302, 36.383068, 28.236647> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.940620, 36.273899, 28.362417>,  <35.722412, 36.208397, 28.437880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.940620, 36.273899, 28.362417>,  <36.304302, 36.383068, 28.236647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.940620, 36.273899, 28.362417> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268306, 0.193414, 0.943718,
		-0.318380, 0.942392, -0.102624,
		-0.909201, -0.272926, 0.314428,
		35.667862, 36.192020, 28.456745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.164501, 36.917358, 28.735508>,  <36.304302, 36.383068, 28.236647>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.164501, 36.917358, 28.735508> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.901386, 36.629303, 28.823792>,  <35.743515, 36.456470, 28.876762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.901386, 36.629303, 28.823792>,  <36.164501, 36.917358, 28.735508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.901386, 36.629303, 28.823792> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169030, 0.144417, 0.974973,
		-0.733989, 0.678635, 0.026729,
		-0.657791, -0.720138, 0.220711,
		35.704048, 36.413261, 28.890005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.834202, 37.181355, 29.300987>,  <36.164501, 36.917358, 28.735508>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.834202, 37.181355, 29.300987> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.759785, 36.788616, 29.315760>,  <35.715134, 36.552975, 29.324623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.759785, 36.788616, 29.315760>,  <35.834202, 37.181355, 29.300987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.759785, 36.788616, 29.315760> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072849, 0.023701, 0.997061,
		-0.979837, 0.188187, 0.067117,
		-0.186043, -0.981847, 0.036933,
		35.703972, 36.494061, 29.326839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.348457, 37.044014, 29.926727>,  <35.834202, 37.181355, 29.300987>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.348457, 37.044014, 29.926727> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.503593, 36.681911, 29.857340>,  <35.596676, 36.464649, 29.815708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.503593, 36.681911, 29.857340>,  <35.348457, 37.044014, 29.926727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.503593, 36.681911, 29.857340> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068730, -0.159273, 0.984839,
		-0.919160, -0.393884, 0.000446,
		0.387841, -0.905255, -0.173469,
		35.619946, 36.410336, 29.805300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.038609, 36.638172, 30.267401>,  <35.348457, 37.044014, 29.926727>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.038609, 36.638172, 30.267401> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.363499, 36.414818, 30.199888>,  <35.558434, 36.280804, 30.159380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.363499, 36.414818, 30.199888>,  <35.038609, 36.638172, 30.267401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.363499, 36.414818, 30.199888> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097533, -0.155272, 0.983045,
		-0.575128, -0.814919, -0.071655,
		0.812229, -0.558388, -0.168783,
		35.607166, 36.247303, 30.149254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.965527, 35.868382, 30.595402>,  <35.038609, 36.638172, 30.267401>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.965527, 35.868382, 30.595402> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.360046, 35.920395, 30.554790>,  <35.596760, 35.951603, 30.530424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.360046, 35.920395, 30.554790>,  <34.965527, 35.868382, 30.595402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.360046, 35.920395, 30.554790> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135114, -0.283572, 0.949385,
		0.094657, -0.950094, -0.297256,
		0.986298, 0.130029, -0.101528,
		35.655937, 35.959404, 30.524332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.269432, 35.331722, 30.868002>,  <34.965527, 35.868382, 30.595402>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.269432, 35.331722, 30.868002> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.564308, 35.601788, 30.878603>,  <35.741234, 35.763828, 30.884964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.564308, 35.601788, 30.878603>,  <35.269432, 35.331722, 30.868002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.564308, 35.601788, 30.878603> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126696, -0.176651, 0.976085,
		0.663702, -0.716202, -0.215766,
		0.737189, 0.675166, 0.026503,
		35.785465, 35.804337, 30.886555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.817055, 34.955673, 31.091593>,  <35.269432, 35.331722, 30.868002>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.817055, 34.955673, 31.091593> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.907528, 35.337158, 31.170862>,  <35.961811, 35.566048, 31.218424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.907528, 35.337158, 31.170862>,  <35.817055, 34.955673, 31.091593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.907528, 35.337158, 31.170862> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314432, -0.264040, 0.911820,
		0.921941, -0.143923, -0.359599,
		0.226180, 0.953713, 0.198175,
		35.975384, 35.623272, 31.230314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.422043, 34.938854, 31.490932>,  <35.817055, 34.955673, 31.091593>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.422043, 34.938854, 31.490932> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.311981, 35.316181, 31.565174>,  <36.245945, 35.542576, 31.609720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.311981, 35.316181, 31.565174>,  <36.422043, 34.938854, 31.490932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.311981, 35.316181, 31.565174> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241140, -0.119171, 0.963146,
		0.930668, 0.309768, -0.194681,
		-0.275151, 0.943314, 0.185606,
		36.229435, 35.599174, 31.620855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.927780, 35.218594, 31.926588>,  <36.422043, 34.938854, 31.490932>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.927780, 35.218594, 31.926588> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.611870, 35.458485, 31.978090>,  <36.422321, 35.602421, 32.008991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.611870, 35.458485, 31.978090>,  <36.927780, 35.218594, 31.926588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.611870, 35.458485, 31.978090> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253200, 0.127556, 0.958968,
		0.558695, 0.789973, -0.252592,
		-0.789778, 0.599727, 0.128756,
		36.374935, 35.638401, 32.016716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<33.815868, 36.375175, 24.106485> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.520130, 36.413651, 24.373055>,  <33.342690, 36.436737, 24.532997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.520130, 36.413651, 24.373055>,  <33.815868, 36.375175, 24.106485>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.520130, 36.413651, 24.373055> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655907, 0.326587, 0.680534,
		-0.152183, 0.940260, -0.304552,
		-0.739342, 0.096192, 0.666424,
		33.298328, 36.442509, 24.572981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.947639, 37.013309, 24.479765>,  <33.815868, 36.375175, 24.106485>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.947639, 37.013309, 24.479765> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.715065, 36.783791, 24.710482>,  <33.575520, 36.646080, 24.848911>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.715065, 36.783791, 24.710482>,  <33.947639, 37.013309, 24.479765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.715065, 36.783791, 24.710482> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603834, 0.170787, 0.778599,
		-0.545263, 0.800996, 0.247173,
		-0.581441, -0.573793, 0.576792,
		33.540634, 36.611652, 24.883520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.713631, 37.366547, 25.146997>,  <33.947639, 37.013309, 24.479765>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.713631, 37.366547, 25.146997> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.697144, 36.974316, 25.223692>,  <33.687252, 36.738976, 25.269709>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.697144, 36.974316, 25.223692>,  <33.713631, 37.366547, 25.146997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.697144, 36.974316, 25.223692> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531106, 0.141041, 0.835484,
		-0.846302, 0.136274, 0.514978,
		-0.041222, -0.980580, 0.191739,
		33.684776, 36.680141, 25.281214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.621147, 37.342297, 25.803493>,  <33.713631, 37.366547, 25.146997>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.621147, 37.342297, 25.803493> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.747746, 36.966305, 25.752462>,  <33.823704, 36.740711, 25.721844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.747746, 36.966305, 25.752462>,  <33.621147, 37.342297, 25.803493>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.747746, 36.966305, 25.752462> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437111, 0.025155, 0.899056,
		-0.841883, -0.340309, 0.418836,
		0.316493, -0.939977, -0.127575,
		33.842693, 36.684311, 25.714190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.644386, 37.013020, 26.486279>,  <33.621147, 37.342297, 25.803493>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.644386, 37.013020, 26.486279> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.849041, 36.736542, 26.282133>,  <33.971836, 36.570656, 26.159645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.849041, 36.736542, 26.282133>,  <33.644386, 37.013020, 26.486279>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.849041, 36.736542, 26.282133> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442839, -0.296884, 0.846023,
		-0.736288, -0.658866, 0.154192,
		0.511639, -0.691198, -0.510363,
		34.002533, 36.529182, 26.129025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.620800, 36.437202, 26.944492>,  <33.644386, 37.013020, 26.486279>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.620800, 36.437202, 26.944492> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.899509, 36.329483, 26.678564>,  <34.066734, 36.264851, 26.519007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.899509, 36.329483, 26.678564>,  <33.620800, 36.437202, 26.944492>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.899509, 36.329483, 26.678564> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498003, -0.485435, 0.718572,
		-0.516239, -0.831763, -0.204125,
		0.696771, -0.269300, -0.664822,
		34.108540, 36.248692, 26.479118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.742916, 35.729290, 27.119503>,  <33.620800, 36.437202, 26.944492>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.742916, 35.729290, 27.119503> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.060310, 35.919746, 26.967894>,  <34.250748, 36.034019, 26.876928>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.060310, 35.919746, 26.967894>,  <33.742916, 35.729290, 27.119503>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.060310, 35.919746, 26.967894> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545252, -0.279574, 0.790277,
		0.270320, -0.833742, -0.481458,
		0.793490, 0.476144, -0.379025,
		34.298359, 36.062588, 26.854187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.322910, 35.300957, 27.205547>,  <33.742916, 35.729290, 27.119503>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.322910, 35.300957, 27.205547> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.500706, 35.658188, 27.177731>,  <34.607384, 35.872528, 27.161041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.500706, 35.658188, 27.177731>,  <34.322910, 35.300957, 27.205547>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.500706, 35.658188, 27.177731> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566895, -0.220339, 0.793776,
		0.693583, -0.392248, -0.604222,
		0.444491, 0.893080, -0.069540,
		34.634052, 35.926113, 27.156868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.987488, 35.227009, 27.278032>,  <34.322910, 35.300957, 27.205547>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.987488, 35.227009, 27.278032> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.994949, 35.616966, 27.366789>,  <34.999428, 35.850941, 27.420042>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.994949, 35.616966, 27.366789>,  <34.987488, 35.227009, 27.278032>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.994949, 35.616966, 27.366789> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490230, -0.202340, 0.847782,
		0.871394, 0.092961, -0.481697,
		0.018656, 0.974893, 0.221890,
		35.000546, 35.909435, 27.433355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.638142, 35.114548, 26.821123>,  <34.987488, 35.227009, 27.278032>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.638142, 35.114548, 26.821123> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.892609, 34.822350, 26.721798>,  <36.045288, 34.647030, 26.662203>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.892609, 34.822350, 26.721798>,  <35.638142, 35.114548, 26.821123>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.892609, 34.822350, 26.721798> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397682, -0.034664, -0.916868,
		0.661163, 0.682034, -0.312558,
		0.636170, -0.730498, -0.248314,
		36.083458, 34.603199, 26.647305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.685966, 35.242851, 26.087402>,  <35.638142, 35.114548, 26.821123>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.685966, 35.242851, 26.087402> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.856663, 34.886181, 26.147810>,  <35.959080, 34.672180, 26.184055>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.856663, 34.886181, 26.147810>,  <35.685966, 35.242851, 26.087402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.856663, 34.886181, 26.147810> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372810, -0.325586, -0.868911,
		0.823958, 0.314496, -0.471366,
		0.426739, -0.891676, 0.151021,
		35.984684, 34.618679, 26.193117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.152832, 35.139717, 25.600676>,  <35.685966, 35.242851, 26.087402>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.152832, 35.139717, 25.600676> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.062511, 34.765659, 25.709866>,  <36.008320, 34.541225, 25.775379>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.062511, 34.765659, 25.709866>,  <36.152832, 35.139717, 25.600676>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.062511, 34.765659, 25.709866> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299257, -0.200076, -0.932960,
		0.927070, -0.292353, -0.234671,
		-0.225801, -0.935147, 0.272973,
		35.994770, 34.485115, 25.791758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.382378, 34.660652, 25.074606>,  <36.152832, 35.139717, 25.600676>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.382378, 34.660652, 25.074606> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.132271, 34.414005, 25.265949>,  <35.982208, 34.266018, 25.380754>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.132271, 34.414005, 25.265949>,  <36.382378, 34.660652, 25.074606>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.132271, 34.414005, 25.265949> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555134, -0.079393, -0.827963,
		0.548515, -0.783249, -0.292664,
		-0.625266, -0.616618, 0.478356,
		35.944691, 34.229019, 25.409456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.387951, 34.025169, 24.851601>,  <36.382378, 34.660652, 25.074606>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.387951, 34.025169, 24.851601> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.016350, 34.016407, 24.999374>,  <35.793388, 34.011150, 25.088039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.016350, 34.016407, 24.999374>,  <36.387951, 34.025169, 24.851601>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.016350, 34.016407, 24.999374> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361255, -0.163054, -0.918100,
		0.080355, -0.986374, 0.143561,
		-0.928998, -0.021912, 0.369435,
		35.737652, 34.009834, 25.110205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.997910, 33.434093, 24.533735>,  <36.387951, 34.025169, 24.851601>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.997910, 33.434093, 24.533735> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.728222, 33.694195, 24.673792>,  <35.566410, 33.850258, 24.757826>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.728222, 33.694195, 24.673792>,  <35.997910, 33.434093, 24.533735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.728222, 33.694195, 24.673792> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484590, -0.031738, -0.874165,
		-0.557318, -0.759052, 0.336506,
		-0.674217, 0.650256, 0.350141,
		35.525955, 33.889271, 24.778833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.350712, 33.131489, 24.454094>,  <35.997910, 33.434093, 24.533735>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.350712, 33.131489, 24.454094> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.264271, 33.521927, 24.463341>,  <35.212406, 33.756191, 24.468889>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.264271, 33.521927, 24.463341>,  <35.350712, 33.131489, 24.454094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.264271, 33.521927, 24.463341> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601917, -0.114545, -0.790301,
		-0.768762, -0.184700, 0.612283,
		-0.216102, 0.976097, 0.023116,
		35.199440, 33.814754, 24.470276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.679871, 33.137726, 24.101004>,  <35.350712, 33.131489, 24.454094>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.679871, 33.137726, 24.101004> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.720959, 33.533306, 24.143764>,  <34.745613, 33.770653, 24.169422>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.720959, 33.533306, 24.143764>,  <34.679871, 33.137726, 24.101004>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.720959, 33.533306, 24.143764> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527389, 0.145269, -0.837113,
		-0.843391, 0.029609, 0.536483,
		0.102721, 0.988949, 0.106903,
		34.751774, 33.829990, 24.175835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.986553, 33.498886, 24.092619>,  <34.679871, 33.137726, 24.101004>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.986553, 33.498886, 24.092619> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.262180, 33.764622, 23.976795>,  <34.427555, 33.924061, 23.907301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.262180, 33.764622, 23.976795>,  <33.986553, 33.498886, 24.092619>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.262180, 33.764622, 23.976795> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483907, 0.124360, -0.866238,
		-0.539464, 0.737015, 0.407170,
		0.689066, 0.664337, -0.289559,
		34.468899, 33.963924, 23.889927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.690617, 34.026932, 23.772099>,  <33.986553, 33.498886, 24.092619>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.690617, 34.026932, 23.772099> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.057381, 34.058857, 23.615685>,  <34.277439, 34.078011, 23.521835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.057381, 34.058857, 23.615685>,  <33.690617, 34.026932, 23.772099>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.057381, 34.058857, 23.615685> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397733, 0.101792, -0.911837,
		-0.032968, 0.991599, 0.125076,
		0.916909, 0.079808, -0.391036,
		34.332455, 34.082798, 23.498373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.548759, 34.257469, 23.173656>,  <33.690617, 34.026932, 23.772099>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.548759, 34.257469, 23.173656> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.935593, 34.168655, 23.123922>,  <34.167690, 34.115368, 23.094082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.935593, 34.168655, 23.123922>,  <33.548759, 34.257469, 23.173656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.935593, 34.168655, 23.123922> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160197, -0.151542, -0.975383,
		0.197729, 0.963190, -0.182123,
		0.967078, -0.222037, -0.124336,
		34.225716, 34.102043, 23.086622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.808102, 34.767117, 22.682043>,  <33.548759, 34.257469, 23.173656>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.808102, 34.767117, 22.682043> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.055340, 34.452866, 22.692963>,  <34.203682, 34.264313, 22.699514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.055340, 34.452866, 22.692963>,  <33.808102, 34.767117, 22.682043>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.055340, 34.452866, 22.692963> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065288, 0.016696, -0.997727,
		0.783389, 0.618470, 0.061612,
		0.618093, -0.785631, 0.027299,
		34.240768, 34.217175, 22.701153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.496376, 35.003662, 22.365034>,  <33.808102, 34.767117, 22.682043>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.496376, 35.003662, 22.365034> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.435356, 34.609650, 22.332930>,  <34.398746, 34.373241, 22.313667>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.435356, 34.609650, 22.332930>,  <34.496376, 35.003662, 22.365034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.435356, 34.609650, 22.332930> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067807, 0.070587, -0.995198,
		0.985968, -0.157255, 0.056025,
		-0.152545, -0.985032, -0.080260,
		34.389591, 34.314140, 22.308851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.928932, 34.858089, 21.841589>,  <34.496376, 35.003662, 22.365034>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.928932, 34.858089, 21.841589> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.701759, 34.528881, 21.838060>,  <34.565453, 34.331356, 21.835943>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.701759, 34.528881, 21.838060>,  <34.928932, 34.858089, 21.841589>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.701759, 34.528881, 21.838060> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214449, -0.137621, -0.966991,
		0.794644, -0.551081, 0.254657,
		-0.567937, -0.823025, -0.008819,
		34.531380, 34.281975, 21.835415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<29.307392, 29.949638, 23.830517> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.549046, 30.265205, 23.785566>,  <29.694038, 30.454546, 23.758596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.549046, 30.265205, 23.785566>,  <29.307392, 29.949638, 23.830517>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.549046, 30.265205, 23.785566> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437829, -0.210782, 0.874000,
		0.665828, -0.577217, -0.472752,
		0.604135, 0.788918, -0.112377,
		29.730286, 30.501881, 23.751854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.931406, 29.710449, 24.073154>,  <29.307392, 29.949638, 23.830517>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.931406, 29.710449, 24.073154> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.985598, 30.106079, 24.096395>,  <30.018112, 30.343456, 24.110340>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.985598, 30.106079, 24.096395>,  <29.931406, 29.710449, 24.073154>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.985598, 30.106079, 24.096395> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514279, -0.120325, 0.849140,
		0.846854, -0.085162, -0.524962,
		0.135480, 0.989075, 0.058101,
		30.026241, 30.402802, 24.113825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.641708, 29.824747, 24.450855>,  <29.931406, 29.710449, 24.073154>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.641708, 29.824747, 24.450855> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.475813, 30.188625, 24.442419>,  <30.376276, 30.406952, 24.437357>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.475813, 30.188625, 24.442419>,  <30.641708, 29.824747, 24.450855>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.475813, 30.188625, 24.442419> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439680, 0.220639, 0.870632,
		0.796663, 0.351813, -0.491483,
		-0.414740, 0.909696, -0.021090,
		30.351391, 30.461535, 24.436092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.155090, 30.292999, 24.531372>,  <30.641708, 29.824747, 24.450855>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.155090, 30.292999, 24.531372> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.810762, 30.449017, 24.662127>,  <30.604166, 30.542627, 24.740580>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.810762, 30.449017, 24.662127>,  <31.155090, 30.292999, 24.531372>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.810762, 30.449017, 24.662127> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431078, 0.217466, 0.875717,
		0.270480, 0.894749, -0.355338,
		-0.860821, 0.390043, 0.326886,
		30.552517, 30.566029, 24.760193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.395990, 30.875433, 24.911152>,  <31.155090, 30.292999, 24.531372>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.395990, 30.875433, 24.911152> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.018061, 30.809526, 25.024403>,  <30.791304, 30.769983, 25.092354>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.018061, 30.809526, 25.024403>,  <31.395990, 30.875433, 24.911152>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.018061, 30.809526, 25.024403> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258364, 0.156543, 0.953280,
		-0.201389, 0.973831, -0.105337,
		-0.944823, -0.164765, 0.283129,
		30.734613, 30.760098, 25.109341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.149723, 31.565857, 25.272091>,  <31.395990, 30.875433, 24.911152>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.149723, 31.565857, 25.272091> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.903458, 31.279419, 25.403645>,  <30.755699, 31.107555, 25.482576>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.903458, 31.279419, 25.403645>,  <31.149723, 31.565857, 25.272091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.903458, 31.279419, 25.403645> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232206, 0.233962, 0.944109,
		-0.753019, 0.657622, 0.022240,
		-0.615664, -0.716097, 0.328882,
		30.718758, 31.064590, 25.502310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.733221, 31.880545, 25.740341>,  <31.149723, 31.565857, 25.272091>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.733221, 31.880545, 25.740341> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.684416, 31.503250, 25.863897>,  <30.655132, 31.276873, 25.938030>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.684416, 31.503250, 25.863897>,  <30.733221, 31.880545, 25.740341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.684416, 31.503250, 25.863897> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199804, 0.281502, 0.938528,
		-0.972209, 0.176231, 0.154115,
		-0.122013, -0.943238, 0.308891,
		30.647812, 31.220278, 25.956564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.290894, 31.993950, 26.357603>,  <30.733221, 31.880545, 25.740341>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.290894, 31.993950, 26.357603> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.496780, 31.652754, 26.392183>,  <30.620312, 31.448036, 26.412931>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.496780, 31.652754, 26.392183>,  <30.290894, 31.993950, 26.357603>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.496780, 31.652754, 26.392183> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275015, 0.259767, 0.925683,
		-0.812056, -0.452689, 0.368292,
		0.514716, -0.852991, 0.086449,
		30.651196, 31.396856, 26.418118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.201176, 31.838795, 27.060402>,  <30.290894, 31.993950, 26.357603>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.201176, 31.838795, 27.060402> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.506973, 31.603292, 26.955397>,  <30.690453, 31.461990, 26.892393>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.506973, 31.603292, 26.955397>,  <30.201176, 31.838795, 27.060402>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.506973, 31.603292, 26.955397> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442631, 0.183382, 0.877752,
		-0.468641, -0.787234, 0.400796,
		0.764495, -0.588756, -0.262514,
		30.736322, 31.426666, 26.876642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.257021, 31.352322, 27.560555>,  <30.201176, 31.838795, 27.060402>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.257021, 31.352322, 27.560555> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.622709, 31.376038, 27.400213>,  <30.842123, 31.390266, 27.304008>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.622709, 31.376038, 27.400213>,  <30.257021, 31.352322, 27.560555>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.622709, 31.376038, 27.400213> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403061, -0.031159, 0.914642,
		0.041739, -0.997754, -0.052384,
		0.914221, 0.059290, -0.400855,
		30.896976, 31.393824, 27.279957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.560040, 31.140230, 28.130362>,  <30.257021, 31.352322, 27.560555>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.560040, 31.140230, 28.130362> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.873142, 31.298586, 27.938292>,  <31.061003, 31.393599, 27.823050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.873142, 31.298586, 27.938292>,  <30.560040, 31.140230, 28.130362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.873142, 31.298586, 27.938292> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495345, 0.070743, 0.865811,
		0.376732, -0.915570, -0.140727,
		0.782755, 0.395887, -0.480174,
		31.107969, 31.417353, 27.794239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.025261, 30.802614, 28.343531>,  <30.560040, 31.140230, 28.130362>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.025261, 30.802614, 28.343531> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.181990, 31.156485, 28.242479>,  <31.276026, 31.368807, 28.181849>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.181990, 31.156485, 28.242479>,  <31.025261, 30.802614, 28.343531>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.181990, 31.156485, 28.242479> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479707, 0.037866, 0.876611,
		0.785085, -0.464663, -0.409550,
		0.391821, 0.884678, -0.252630,
		31.299536, 31.421888, 28.166691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.722553, 30.760172, 28.451937>,  <31.025261, 30.802614, 28.343531>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.722553, 30.760172, 28.451937> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.665272, 31.155859, 28.464211>,  <31.630903, 31.393270, 28.471575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.665272, 31.155859, 28.464211>,  <31.722553, 30.760172, 28.451937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.665272, 31.155859, 28.464211> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500504, 0.045639, 0.864531,
		0.853808, 0.139164, -0.501643,
		-0.143206, 0.989217, 0.030685,
		31.622311, 31.452623, 28.473415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.450050, 31.085426, 28.541443>,  <31.722553, 30.760172, 28.451937>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.450050, 31.085426, 28.541443> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.191071, 31.378220, 28.626303>,  <32.035683, 31.553896, 28.677219>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.191071, 31.378220, 28.626303>,  <32.450050, 31.085426, 28.541443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.191071, 31.378220, 28.626303> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451097, 0.143716, 0.880827,
		0.614260, 0.665995, -0.423244,
		-0.647454, 0.731981, 0.212149,
		31.996834, 31.597815, 28.689947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.124565, 31.293179, 28.099768>,  <32.450050, 31.085426, 28.541443>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.124565, 31.293179, 28.099768> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.422340, 31.054665, 27.979595>,  <33.601006, 30.911556, 27.907492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.422340, 31.054665, 27.979595>,  <33.124565, 31.293179, 28.099768>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.422340, 31.054665, 27.979595> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354218, 0.028722, -0.934722,
		0.565991, 0.802258, -0.189834,
		0.744436, -0.596286, -0.300430,
		33.645672, 30.875778, 27.889465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.457344, 31.595373, 27.523733>,  <33.124565, 31.293179, 28.099768>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.457344, 31.595373, 27.523733> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.547451, 31.206589, 27.496754>,  <33.601517, 30.973318, 27.480566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.547451, 31.206589, 27.496754>,  <33.457344, 31.595373, 27.523733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.547451, 31.206589, 27.496754> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282959, 0.000976, -0.959132,
		0.932303, 0.235147, -0.274805,
		0.225269, -0.971959, -0.067446,
		33.615032, 30.915001, 27.476521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.981869, 31.555147, 26.936523>,  <33.457344, 31.595373, 27.523733>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.981869, 31.555147, 26.936523> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.815517, 31.194571, 26.984606>,  <33.715706, 30.978224, 27.013454>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.815517, 31.194571, 26.984606>,  <33.981869, 31.555147, 26.936523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.815517, 31.194571, 26.984606> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166299, -0.054567, -0.984564,
		0.894086, -0.429448, -0.127216,
		-0.415877, -0.901441, 0.120204,
		33.690754, 30.924139, 27.020666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.335411, 31.212643, 26.380980>,  <33.981869, 31.555147, 26.936523>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.335411, 31.212643, 26.380980> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.009415, 31.004684, 26.483345>,  <33.813816, 30.879910, 26.544764>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.009415, 31.004684, 26.483345>,  <34.335411, 31.212643, 26.380980>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.009415, 31.004684, 26.483345> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196213, -0.167952, -0.966071,
		0.545237, -0.837556, 0.034870,
		-0.814995, -0.519896, 0.255913,
		33.764915, 30.848717, 26.560120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.284401, 30.603790, 25.929459>,  <34.335411, 31.212643, 26.380980>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.284401, 30.603790, 25.929459> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.914833, 30.658232, 26.072487>,  <33.693092, 30.690897, 26.158304>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.914833, 30.658232, 26.072487>,  <34.284401, 30.603790, 25.929459>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.914833, 30.658232, 26.072487> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381507, -0.257261, -0.887845,
		-0.028850, -0.956709, 0.289611,
		-0.923916, 0.136103, 0.357569,
		33.637657, 30.699062, 26.179758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.989918, 29.914215, 25.793653>,  <34.284401, 30.603790, 25.929459>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.989918, 29.914215, 25.793653> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.716339, 30.203947, 25.828440>,  <33.552193, 30.377787, 25.849312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.716339, 30.203947, 25.828440>,  <33.989918, 29.914215, 25.793653>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.716339, 30.203947, 25.828440> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268779, -0.139367, -0.953066,
		-0.678214, -0.675221, 0.290004,
		-0.683948, 0.724329, 0.086964,
		33.511154, 30.421246, 25.854528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.461220, 29.575819, 25.424803>,  <33.989918, 29.914215, 25.793653>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.461220, 29.575819, 25.424803> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.398087, 29.969444, 25.457573>,  <33.360207, 30.205620, 25.477236>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.398087, 29.969444, 25.457573>,  <33.461220, 29.575819, 25.424803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.398087, 29.969444, 25.457573> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350369, 0.021760, -0.936359,
		-0.923217, -0.176494, 0.341351,
		-0.157834, 0.984061, 0.081927,
		33.350735, 30.264662, 25.482151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.825352, 29.693018, 25.140642>,  <33.461220, 29.575819, 25.424803>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.825352, 29.693018, 25.140642> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.985889, 30.059370, 25.144320>,  <33.082211, 30.279181, 25.146526>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.985889, 30.059370, 25.144320>,  <32.825352, 29.693018, 25.140642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.985889, 30.059370, 25.144320> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506484, 0.230284, -0.830929,
		-0.763149, 0.328834, 0.556302,
		0.401345, 0.915881, 0.009192,
		33.106293, 30.334135, 25.147078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.308521, 30.036774, 25.033888>,  <32.825352, 29.693018, 25.140642>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.308521, 30.036774, 25.033888> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.616722, 30.263807, 24.917837>,  <32.801643, 30.400028, 24.848207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.616722, 30.263807, 24.917837>,  <32.308521, 30.036774, 25.033888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.616722, 30.263807, 24.917837> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388896, 0.057944, -0.919458,
		-0.505058, 0.821275, 0.265377,
		0.770504, 0.567584, -0.290125,
		32.847874, 30.434082, 24.830799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.107632, 30.469448, 24.549906>,  <32.308521, 30.036774, 25.033888>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.107632, 30.469448, 24.549906> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.500900, 30.522541, 24.499701>,  <32.736862, 30.554398, 24.469578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.500900, 30.522541, 24.499701>,  <32.107632, 30.469448, 24.549906>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.500900, 30.522541, 24.499701> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157523, 0.268065, -0.950436,
		-0.092508, 0.954213, 0.284463,
		0.983173, 0.132733, -0.125512,
		32.795853, 30.562361, 24.462048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.098492, 30.930439, 24.000847>,  <32.107632, 30.469448, 24.549906>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.098492, 30.930439, 24.000847> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.472057, 30.787479, 24.004244>,  <32.696198, 30.701704, 24.006283>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.472057, 30.787479, 24.004244>,  <32.098492, 30.930439, 24.000847>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.472057, 30.787479, 24.004244> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038052, 0.075755, -0.996400,
		0.355469, 0.930874, 0.084348,
		0.933913, -0.357399, 0.008493,
		32.752232, 30.680260, 24.006792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.521072, 31.365410, 23.604597>,  <32.098492, 30.930439, 24.000847>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.521072, 31.365410, 23.604597> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.692360, 31.004190, 23.618046>,  <32.795132, 30.787458, 23.626116>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.692360, 31.004190, 23.618046>,  <32.521072, 31.365410, 23.604597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.692360, 31.004190, 23.618046> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031972, -0.022042, -0.999246,
		0.903108, 0.428973, 0.019434,
		0.428221, -0.903048, 0.033622,
		32.820827, 30.733276, 23.628132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.148632, 31.430428, 23.150892>,  <32.521072, 31.365410, 23.604597>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.148632, 31.430428, 23.150892> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.045174, 31.046690, 23.196085>,  <32.983097, 30.816448, 23.223200>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.045174, 31.046690, 23.196085>,  <33.148632, 31.430428, 23.150892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.045174, 31.046690, 23.196085> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121997, -0.083585, -0.989005,
		0.958237, -0.269586, -0.095418,
		-0.258646, -0.959342, 0.112983,
		32.967579, 30.758888, 23.229980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.517078, 31.119246, 22.563072>,  <33.148632, 31.430428, 23.150892>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.517078, 31.119246, 22.563072> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.243385, 30.844454, 22.660959>,  <33.079170, 30.679579, 22.719690>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.243385, 30.844454, 22.660959>,  <33.517078, 31.119246, 22.563072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.243385, 30.844454, 22.660959> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062040, -0.279514, -0.958135,
		0.726621, -0.670768, 0.148631,
		-0.684231, -0.686980, 0.244715,
		33.038116, 30.638359, 22.734373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.110214, 30.732632, 22.273396>,  <33.517078, 31.119246, 22.563072>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.110214, 30.732632, 22.273396> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.476898, 30.769026, 22.117775>,  <34.696907, 30.790863, 22.024403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.476898, 30.769026, 22.117775>,  <34.110214, 30.732632, 22.273396>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.476898, 30.769026, 22.117775> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392875, -0.382515, 0.836260,
		-0.072730, -0.919458, -0.386403,
		0.916712, 0.090987, -0.389052,
		34.751911, 30.796322, 22.001059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.527119, 30.277405, 22.706879>,  <34.110214, 30.732632, 22.273396>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.527119, 30.277405, 22.706879> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.822399, 30.461536, 22.509638>,  <34.999569, 30.572016, 22.391293>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.822399, 30.461536, 22.509638>,  <34.527119, 30.277405, 22.706879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.822399, 30.461536, 22.509638> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578975, -0.057227, 0.813334,
		0.346183, -0.885902, -0.308765,
		0.738204, 0.460330, -0.493104,
		35.043861, 30.599636, 22.361706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.179096, 29.884953, 22.729433>,  <34.527119, 30.277405, 22.706879>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.179096, 29.884953, 22.729433> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.268349, 30.269699, 22.666161>,  <35.321899, 30.500547, 22.628197>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.268349, 30.269699, 22.666161>,  <35.179096, 29.884953, 22.729433>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.268349, 30.269699, 22.666161> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574354, 0.001383, 0.818606,
		0.787610, -0.273509, -0.552145,
		0.223132, 0.961868, -0.158181,
		35.335289, 30.558260, 22.618706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.824913, 29.900108, 22.931780>,  <35.179096, 29.884953, 22.729433>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.824913, 29.900108, 22.931780> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.725723, 30.287537, 22.939531>,  <35.666210, 30.519995, 22.944183>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.725723, 30.287537, 22.939531>,  <35.824913, 29.900108, 22.931780>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.725723, 30.287537, 22.939531> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594328, 0.136304, 0.792588,
		0.765037, 0.208062, -0.609450,
		-0.247978, 0.968572, 0.019379,
		35.651329, 30.578108, 22.945345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.461433, 30.229248, 23.001493>,  <35.824913, 29.900108, 22.931780>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.461433, 30.229248, 23.001493> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.167362, 30.462967, 23.138962>,  <35.990921, 30.603199, 23.221443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.167362, 30.462967, 23.138962>,  <36.461433, 30.229248, 23.001493>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.167362, 30.462967, 23.138962> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507444, 0.138221, 0.850526,
		0.449459, 0.799681, -0.398116,
		-0.735178, 0.584298, 0.343669,
		35.946808, 30.638256, 23.242062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.773891, 30.670273, 23.424072>,  <36.461433, 30.229248, 23.001493>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.773891, 30.670273, 23.424072> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.399815, 30.771423, 23.523245>,  <36.175369, 30.832113, 23.582748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.399815, 30.771423, 23.523245>,  <36.773891, 30.670273, 23.424072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.399815, 30.771423, 23.523245> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328520, 0.358016, 0.874013,
		0.132252, 0.898821, -0.417888,
		-0.935192, 0.252875, 0.247932,
		36.119259, 30.847286, 23.597624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.790844, 31.329279, 23.653416>,  <36.773891, 30.670273, 23.424072>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.790844, 31.329279, 23.653416> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.475826, 31.168028, 23.839861>,  <36.286816, 31.071278, 23.951727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.475826, 31.168028, 23.839861>,  <36.790844, 31.329279, 23.653416>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.475826, 31.168028, 23.839861> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415344, 0.211541, 0.884726,
		-0.455261, 0.890358, 0.000839,
		-0.787545, -0.403129, 0.466112,
		36.239563, 31.047089, 23.979694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.480667, 31.845018, 24.089558>,  <36.790844, 31.329279, 23.653416>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.480667, 31.845018, 24.089558> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.363464, 31.492994, 24.239033>,  <36.293144, 31.281780, 24.328718>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.363464, 31.492994, 24.239033>,  <36.480667, 31.845018, 24.089558>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.363464, 31.492994, 24.239033> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396984, 0.243579, 0.884914,
		-0.869799, 0.407635, 0.277998,
		-0.293007, -0.880059, 0.373690,
		36.275562, 31.228977, 24.351139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.948097, 31.991632, 24.750572>,  <36.480667, 31.845018, 24.089558>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.948097, 31.991632, 24.750572> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.141739, 31.641739, 24.759418>,  <36.257923, 31.431803, 24.764727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.141739, 31.641739, 24.759418>,  <35.948097, 31.991632, 24.750572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.141739, 31.641739, 24.759418> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237592, 0.155733, 0.958800,
		-0.842137, -0.458903, 0.283220,
		0.484103, -0.874732, 0.022117,
		36.286968, 31.379320, 24.766054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.849461, 31.795374, 25.414446>,  <35.948097, 31.991632, 24.750572>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.849461, 31.795374, 25.414446> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.154167, 31.566826, 25.292301>,  <36.336990, 31.429697, 25.219013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.154167, 31.566826, 25.292301>,  <35.849461, 31.795374, 25.414446>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.154167, 31.566826, 25.292301> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416420, 0.070759, 0.906415,
		-0.496290, -0.817638, 0.291831,
		0.761769, -0.571368, -0.305363,
		36.382698, 31.395416, 25.200693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.920952, 31.436104, 25.909231>,  <35.849461, 31.795374, 25.414446>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.920952, 31.436104, 25.909231> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.271214, 31.410461, 25.717768>,  <36.481373, 31.395077, 25.602890>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.271214, 31.410461, 25.717768>,  <35.920952, 31.436104, 25.909231>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.271214, 31.410461, 25.717768> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478025, -0.025866, 0.877965,
		-0.068667, -0.997608, 0.007997,
		0.875658, -0.064110, -0.478658,
		36.533913, 31.391230, 25.574171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.364525, 30.851147, 26.265211>,  <35.920952, 31.436104, 25.909231>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.364525, 30.851147, 26.265211> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.635738, 31.054892, 26.053244>,  <36.798466, 31.177139, 25.926064>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.635738, 31.054892, 26.053244>,  <36.364525, 30.851147, 26.265211>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.635738, 31.054892, 26.053244> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647107, -0.071755, 0.759015,
		0.348591, -0.857554, -0.378266,
		0.678039, 0.509364, -0.529917,
		36.839149, 31.207701, 25.894268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.026012, 30.453634, 26.225906>,  <36.364525, 30.851147, 26.265211>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.026012, 30.453634, 26.225906> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.112484, 30.838404, 26.159012>,  <37.164368, 31.069265, 26.118876>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.112484, 30.838404, 26.159012>,  <37.026012, 30.453634, 26.225906>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.112484, 30.838404, 26.159012> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729670, -0.045362, 0.682293,
		0.648728, -0.269527, -0.711694,
		0.216180, 0.961924, -0.167238,
		37.177338, 31.126982, 26.108841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.807728, 30.509176, 26.039980>,  <37.026012, 30.453634, 26.225906>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.807728, 30.509176, 26.039980> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.666759, 30.860176, 26.170080>,  <37.582176, 31.070776, 26.248140>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.666759, 30.860176, 26.170080>,  <37.807728, 30.509176, 26.039980>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.666759, 30.860176, 26.170080> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757162, 0.063103, 0.650172,
		0.550002, 0.475404, -0.686650,
		-0.352424, 0.877502, 0.325251,
		37.561031, 31.123426, 26.267656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<35.378616, 34.303230, 21.712879> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.013344, 34.164486, 21.627285>,  <34.794182, 34.081242, 21.575928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.013344, 34.164486, 21.627285>,  <35.378616, 34.303230, 21.712879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.013344, 34.164486, 21.627285> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203502, 0.066843, -0.976790,
		0.353112, -0.935532, 0.009547,
		-0.913181, -0.346859, -0.213986,
		34.739391, 34.060429, 21.563089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.471123, 33.837112, 21.172720>,  <35.378616, 34.303230, 21.712879>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.471123, 33.837112, 21.172720> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.094009, 33.958447, 21.117373>,  <34.867741, 34.031246, 21.084164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.094009, 33.958447, 21.117373>,  <35.471123, 33.837112, 21.172720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.094009, 33.958447, 21.117373> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194760, 0.164219, -0.967006,
		-0.270606, -0.938626, -0.213901,
		-0.942783, 0.303337, -0.138368,
		34.811172, 34.049446, 21.075863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.384541, 33.515961, 20.520580>,  <35.471123, 33.837112, 21.172720>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.384541, 33.515961, 20.520580> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.076771, 33.768147, 20.561554>,  <34.892109, 33.919460, 20.586138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.076771, 33.768147, 20.561554>,  <35.384541, 33.515961, 20.520580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.076771, 33.768147, 20.561554> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077249, 0.067341, -0.994735,
		-0.634045, -0.773290, -0.003111,
		-0.769428, 0.630466, 0.102433,
		34.845943, 33.957287, 20.592283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.960312, 33.323669, 19.991306>,  <35.384541, 33.515961, 20.520580>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.960312, 33.323669, 19.991306> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.825233, 33.687763, 20.087170>,  <34.744186, 33.906219, 20.144688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.825233, 33.687763, 20.087170>,  <34.960312, 33.323669, 19.991306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.825233, 33.687763, 20.087170> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201210, 0.178921, -0.963069,
		-0.919497, -0.373447, 0.122727,
		-0.337696, 0.910233, 0.239659,
		34.723923, 33.960835, 20.159067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.265499, 33.362942, 19.840630>,  <34.960312, 33.323669, 19.991306>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.265499, 33.362942, 19.840630> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.415012, 33.733887, 19.833916>,  <34.504723, 33.956455, 19.829887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.415012, 33.733887, 19.833916>,  <34.265499, 33.362942, 19.840630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.415012, 33.733887, 19.833916> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471560, 0.174426, -0.864412,
		-0.798695, 0.331021, 0.502505,
		0.373788, 0.927362, -0.016783,
		34.527149, 34.012096, 19.828880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.675224, 33.787292, 19.730690>,  <34.265499, 33.362942, 19.840630>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.675224, 33.787292, 19.730690> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.981056, 34.031425, 19.647831>,  <34.164555, 34.177906, 19.598116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.981056, 34.031425, 19.647831>,  <33.675224, 33.787292, 19.730690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.981056, 34.031425, 19.647831> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405775, 0.206117, -0.890428,
		-0.500758, 0.764862, 0.405250,
		0.764583, 0.610330, -0.207147,
		34.210430, 34.214523, 19.585688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.405430, 34.434589, 19.625149>,  <33.675224, 33.787292, 19.730690>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.405430, 34.434589, 19.625149> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.747883, 34.371338, 19.428360>,  <33.953354, 34.333385, 19.310287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.747883, 34.371338, 19.428360>,  <33.405430, 34.434589, 19.625149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.747883, 34.371338, 19.428360> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489690, 0.055834, -0.870107,
		0.165059, 0.985838, -0.029634,
		0.856130, -0.158131, -0.491971,
		34.004723, 34.323898, 19.280769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.244240, 34.790752, 19.110624>,  <33.405430, 34.434589, 19.625149>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.244240, 34.790752, 19.110624> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.582447, 34.602028, 19.010628>,  <33.785370, 34.488792, 18.950630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.582447, 34.602028, 19.010628>,  <33.244240, 34.790752, 19.110624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.582447, 34.602028, 19.010628> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276525, 0.013592, -0.960911,
		0.456764, 0.881596, -0.118974,
		0.845518, -0.471808, -0.249992,
		33.836102, 34.460484, 18.935631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.556019, 35.264149, 18.627201>,  <33.244240, 34.790752, 19.110624>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.556019, 35.264149, 18.627201> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.676559, 34.886105, 18.576668>,  <33.748882, 34.659279, 18.546349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.676559, 34.886105, 18.576668>,  <33.556019, 35.264149, 18.627201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.676559, 34.886105, 18.576668> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422272, -0.013488, -0.906369,
		0.854912, 0.326480, -0.403157,
		0.301350, -0.945108, -0.126332,
		33.766964, 34.602573, 18.538769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.818211, 35.219234, 17.899948>,  <33.556019, 35.264149, 18.627201>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.818211, 35.219234, 17.899948> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.712135, 34.852467, 18.019239>,  <33.648491, 34.632408, 18.090815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.712135, 34.852467, 18.019239>,  <33.818211, 35.219234, 17.899948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.712135, 34.852467, 18.019239> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470060, -0.147116, -0.870288,
		0.841855, -0.370975, -0.391992,
		-0.265187, -0.916915, 0.298230,
		33.632580, 34.577393, 18.108709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.767269, 34.825237, 17.311621>,  <33.818211, 35.219234, 17.899948>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.767269, 34.825237, 17.311621> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.573395, 34.574211, 17.555340>,  <33.457069, 34.423595, 17.701571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.573395, 34.574211, 17.555340>,  <33.767269, 34.825237, 17.311621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.573395, 34.574211, 17.555340> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673092, -0.177255, -0.718003,
		0.558595, -0.758118, -0.336496,
		-0.484685, -0.627565, 0.609296,
		33.427990, 34.385941, 17.738129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.791679, 34.089020, 16.970751>,  <33.767269, 34.825237, 17.311621>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.791679, 34.089020, 16.970751> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.484131, 34.118866, 17.224762>,  <33.299603, 34.136772, 17.377169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.484131, 34.118866, 17.224762>,  <33.791679, 34.089020, 16.970751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.484131, 34.118866, 17.224762> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634591, -0.210607, -0.743598,
		0.078258, -0.974719, 0.209281,
		-0.768875, 0.074615, 0.635030,
		33.253468, 34.141251, 17.415272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.451630, 33.511707, 16.850321>,  <33.791679, 34.089020, 16.970751>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.451630, 33.511707, 16.850321> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.162853, 33.726925, 17.024363>,  <32.989590, 33.856056, 17.128788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.162853, 33.726925, 17.024363>,  <33.451630, 33.511707, 16.850321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.162853, 33.726925, 17.024363> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611569, -0.201970, -0.764978,
		-0.323716, -0.818360, 0.474862,
		-0.721936, 0.538047, 0.435102,
		32.946274, 33.888340, 17.154894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.763908, 33.156967, 16.722050>,  <33.451630, 33.511707, 16.850321>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.763908, 33.156967, 16.722050> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.697784, 33.542606, 16.805178>,  <32.658112, 33.773991, 16.855055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.697784, 33.542606, 16.805178>,  <32.763908, 33.156967, 16.722050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.697784, 33.542606, 16.805178> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601831, 0.068328, -0.795695,
		-0.781327, -0.256608, 0.568928,
		-0.165308, 0.964097, 0.207821,
		32.648193, 33.831837, 16.867525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.297230, 32.710415, 17.094727>,  <32.763908, 33.156967, 16.722050>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.297230, 32.710415, 17.094727> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.036312, 32.427498, 16.985733>,  <32.879761, 32.257748, 16.920338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.036312, 32.427498, 16.985733>,  <33.297230, 32.710415, 17.094727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.036312, 32.427498, 16.985733> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269897, -0.552673, 0.788484,
		-0.708283, 0.440783, 0.551403,
		-0.652296, -0.707292, -0.272483,
		32.840622, 32.215309, 16.903988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.822681, 32.595615, 17.592278>,  <33.297230, 32.710415, 17.094727>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.822681, 32.595615, 17.592278> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.889458, 32.259605, 17.385786>,  <32.929523, 32.057999, 17.261890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.889458, 32.259605, 17.385786>,  <32.822681, 32.595615, 17.592278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.889458, 32.259605, 17.385786> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353170, -0.437889, 0.826756,
		-0.920545, -0.320335, 0.223569,
		0.166940, -0.840023, -0.516229,
		32.939541, 32.007599, 17.230917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.564106, 32.137493, 18.000706>,  <32.822681, 32.595615, 17.592278>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.564106, 32.137493, 18.000706> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.815350, 31.937695, 17.762051>,  <32.966095, 31.817814, 17.618858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.815350, 31.937695, 17.762051>,  <32.564106, 32.137493, 18.000706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.815350, 31.937695, 17.762051> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269935, -0.579275, 0.769139,
		-0.729804, -0.644157, -0.229015,
		0.628109, -0.499502, -0.596638,
		33.003784, 31.787844, 17.583059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.395496, 31.501047, 18.233704>,  <32.564106, 32.137493, 18.000706>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.395496, 31.501047, 18.233704> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.761463, 31.508490, 18.072414>,  <32.981041, 31.512955, 17.975641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.761463, 31.508490, 18.072414>,  <32.395496, 31.501047, 18.233704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.761463, 31.508490, 18.072414> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375410, -0.406309, 0.833055,
		-0.148331, -0.913546, -0.378723,
		0.914913, 0.018609, -0.403222,
		33.035938, 31.514072, 17.951448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.640873, 30.922647, 18.434530>,  <32.395496, 31.501047, 18.233704>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.640873, 30.922647, 18.434530> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.961285, 31.138023, 18.329887>,  <33.153530, 31.267248, 18.267101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.961285, 31.138023, 18.329887>,  <32.640873, 30.922647, 18.434530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.961285, 31.138023, 18.329887> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417416, -0.189140, 0.888814,
		0.429093, -0.821163, -0.376259,
		0.801026, 0.538441, -0.261607,
		33.201591, 31.299555, 18.251406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.137630, 30.655714, 18.739204>,  <32.640873, 30.922647, 18.434530>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.137630, 30.655714, 18.739204> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.335621, 30.992121, 18.651846>,  <33.454414, 31.193964, 18.599430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.335621, 30.992121, 18.651846>,  <33.137630, 30.655714, 18.739204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.335621, 30.992121, 18.651846> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563259, -0.119175, 0.817641,
		0.661620, -0.527723, -0.532697,
		0.494972, 0.841014, -0.218396,
		33.484112, 31.244425, 18.586327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.856365, 30.592770, 18.881954>,  <33.137630, 30.655714, 18.739204>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.856365, 30.592770, 18.881954> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.809151, 30.989031, 18.909294>,  <33.780823, 31.226788, 18.925697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.809151, 30.989031, 18.909294>,  <33.856365, 30.592770, 18.881954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.809151, 30.989031, 18.909294> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627708, 0.021105, 0.778163,
		0.769448, 0.134756, -0.624333,
		-0.118039, 0.990654, 0.068348,
		33.773739, 31.286226, 18.929798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.485401, 30.775347, 18.957874>,  <33.856365, 30.592770, 18.881954>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.485401, 30.775347, 18.957874> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.259335, 31.071693, 19.103035>,  <34.123695, 31.249502, 19.190130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.259335, 31.071693, 19.103035>,  <34.485401, 30.775347, 18.957874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.259335, 31.071693, 19.103035> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490249, -0.052175, 0.870019,
		0.663504, 0.669621, -0.333722,
		-0.565171, 0.740868, 0.362900,
		34.089783, 31.293955, 19.211905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.004429, 31.227501, 19.085293>,  <34.485401, 30.775347, 18.957874>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.004429, 31.227501, 19.085293> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.681179, 31.311790, 19.305302>,  <34.487228, 31.362364, 19.437307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.681179, 31.311790, 19.305302>,  <35.004429, 31.227501, 19.085293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.681179, 31.311790, 19.305302> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569858, 0.043556, 0.820588,
		0.148960, 0.976575, -0.155281,
		-0.808129, 0.210723, 0.550022,
		34.438740, 31.375008, 19.470308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.358444, 31.559381, 19.601114>,  <35.004429, 31.227501, 19.085293>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.358444, 31.559381, 19.601114> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.996563, 31.511688, 19.764719>,  <34.779434, 31.483072, 19.862881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.996563, 31.511688, 19.764719>,  <35.358444, 31.559381, 19.601114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.996563, 31.511688, 19.764719> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424289, -0.165331, 0.890306,
		-0.038530, 0.979004, 0.200165,
		-0.904707, -0.119231, 0.409011,
		34.725151, 31.475920, 19.887423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.281574, 31.879099, 20.274515>,  <35.358444, 31.559381, 19.601114>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.281574, 31.879099, 20.274515> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.993607, 31.602438, 20.297619>,  <34.820827, 31.436441, 20.311481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.993607, 31.602438, 20.297619>,  <35.281574, 31.879099, 20.274515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.993607, 31.602438, 20.297619> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203568, -0.130859, 0.970276,
		-0.663533, 0.710279, 0.235006,
		-0.719919, -0.691650, 0.057761,
		34.777630, 31.394943, 20.314947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.904495, 32.073616, 20.849665>,  <35.281574, 31.879099, 20.274515>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.904495, 32.073616, 20.849665> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.798592, 31.690742, 20.802855>,  <34.735050, 31.461018, 20.774769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.798592, 31.690742, 20.802855>,  <34.904495, 32.073616, 20.849665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.798592, 31.690742, 20.802855> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173849, -0.166745, 0.970553,
		-0.948514, 0.236618, 0.210553,
		-0.264759, -0.957188, -0.117024,
		34.719166, 31.403585, 20.767748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.382732, 31.837770, 21.402540>,  <34.904495, 32.073616, 20.849665>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.382732, 31.837770, 21.402540> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.559444, 31.493959, 21.299744>,  <34.665470, 31.287672, 21.238066>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.559444, 31.493959, 21.299744>,  <34.382732, 31.837770, 21.402540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.559444, 31.493959, 21.299744> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199168, -0.185347, 0.962278,
		-0.874737, -0.476298, 0.089308,
		0.441778, -0.859527, -0.256993,
		34.691978, 31.236101, 21.222647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.052269, 31.276091, 21.732971>,  <34.382732, 31.837770, 21.402540>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.052269, 31.276091, 21.732971> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.424286, 31.155342, 21.649176>,  <34.647495, 31.082893, 21.598898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.424286, 31.155342, 21.649176>,  <34.052269, 31.276091, 21.732971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.424286, 31.155342, 21.649176> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154410, -0.196257, 0.968319,
		-0.333425, -0.932928, -0.135916,
		0.930046, -0.301875, -0.209490,
		34.703300, 31.064779, 21.586329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.487091, 30.789841, 21.930140>,  <34.052269, 31.276091, 21.732971>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.487091, 30.789841, 21.930140> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.169750, 30.690252, 22.152348>,  <32.979347, 30.630499, 22.285673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.169750, 30.690252, 22.152348>,  <33.487091, 30.789841, 21.930140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.169750, 30.690252, 22.152348> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510192, -0.225906, -0.829862,
		0.332106, -0.941797, 0.052201,
		-0.793353, -0.248970, 0.555522,
		32.931744, 30.615561, 22.319004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.252628, 30.127111, 21.750422>,  <33.487091, 30.789841, 21.930140>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.252628, 30.127111, 21.750422> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.947235, 30.326895, 21.914194>,  <32.764000, 30.446764, 22.012457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.947235, 30.326895, 21.914194>,  <33.252628, 30.127111, 21.750422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.947235, 30.326895, 21.914194> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603287, -0.325270, -0.728179,
		-0.230517, -0.802959, 0.549654,
		-0.763484, 0.499456, 0.409434,
		32.718189, 30.476732, 22.037024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.693253, 29.630398, 21.715923>,  <33.252628, 30.127111, 21.750422>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.693253, 29.630398, 21.715923> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.503502, 29.977865, 21.773031>,  <32.389652, 30.186346, 21.807297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.503502, 29.977865, 21.773031>,  <32.693253, 29.630398, 21.715923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.503502, 29.977865, 21.773031> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670201, -0.251213, -0.698371,
		-0.570787, -0.426975, 0.701352,
		-0.474376, 0.868668, 0.142770,
		32.361191, 30.238466, 21.815863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.994213, 29.406471, 21.766317>,  <32.693253, 29.630398, 21.715923>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.994213, 29.406471, 21.766317> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.976772, 29.793427, 21.666512>,  <31.966307, 30.025600, 21.606628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.976772, 29.793427, 21.666512>,  <31.994213, 29.406471, 21.766317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.976772, 29.793427, 21.666512> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570195, -0.229178, -0.788895,
		-0.820352, 0.107875, 0.561593,
		-0.043603, 0.967389, -0.249516,
		31.963692, 30.083643, 21.591656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.297716, 29.543772, 21.508213>,  <31.994213, 29.406471, 21.766317>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.297716, 29.543772, 21.508213> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.475075, 29.867718, 21.354580>,  <31.581490, 30.062084, 21.262400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.475075, 29.867718, 21.354580>,  <31.297716, 29.543772, 21.508213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.475075, 29.867718, 21.354580> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548320, -0.093897, -0.830981,
		-0.709045, 0.579055, 0.402431,
		0.443397, 0.809863, -0.384085,
		31.608093, 30.110676, 21.239355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.745329, 29.867111, 21.202837>,  <31.297716, 29.543772, 21.508213>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.745329, 29.867111, 21.202837> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.073486, 30.019758, 21.032507>,  <31.270380, 30.111345, 20.930309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.073486, 30.019758, 21.032507>,  <30.745329, 29.867111, 21.202837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.073486, 30.019758, 21.032507> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467179, 0.017949, -0.883980,
		-0.329698, 0.924147, 0.193008,
		0.820392, 0.381616, -0.425825,
		31.319603, 30.134243, 20.904760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.608915, 30.400158, 20.702585>,  <30.745329, 29.867111, 21.202837>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.608915, 30.400158, 20.702585> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.968565, 30.262171, 20.594828>,  <31.184355, 30.179379, 20.530172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.968565, 30.262171, 20.594828>,  <30.608915, 30.400158, 20.702585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.968565, 30.262171, 20.594828> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386456, -0.336718, -0.858646,
		0.205493, 0.876139, -0.436065,
		0.899124, -0.344966, -0.269396,
		31.238302, 30.158682, 20.514009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.466887, 31.158953, 20.889917>,  <30.608915, 30.400158, 20.702585>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.466887, 31.158953, 20.889917> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.081541, 31.262747, 20.917044>,  <29.850334, 31.325024, 20.933319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.081541, 31.262747, 20.917044>,  <30.466887, 31.158953, 20.889917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.081541, 31.262747, 20.917044> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020900, -0.179454, 0.983544,
		0.267385, 0.948928, 0.167456,
		-0.963363, 0.259485, 0.067816,
		29.792532, 31.340591, 20.937389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.390255, 31.536898, 21.417505>,  <30.466887, 31.158953, 20.889917>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.390255, 31.536898, 21.417505> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.011261, 31.413601, 21.383429>,  <29.783865, 31.339622, 21.362984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.011261, 31.413601, 21.383429>,  <30.390255, 31.536898, 21.417505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.011261, 31.413601, 21.383429> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026517, -0.189745, 0.981475,
		-0.318697, 0.932193, 0.171608,
		-0.947486, -0.308243, -0.085190,
		29.727015, 31.321129, 21.357872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.013540, 31.884127, 21.972448>,  <30.390255, 31.536898, 21.417505>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.013540, 31.884127, 21.972448> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.780569, 31.565262, 21.908812>,  <29.640785, 31.373943, 21.870628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.780569, 31.565262, 21.908812>,  <30.013540, 31.884127, 21.972448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.780569, 31.565262, 21.908812> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180158, -0.064262, 0.981536,
		-0.792665, 0.600338, -0.106187,
		-0.582430, -0.797160, -0.159094,
		29.605841, 31.326115, 21.861084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.365801, 31.980513, 22.345169>,  <30.013540, 31.884127, 21.972448>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.365801, 31.980513, 22.345169> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.412828, 31.588785, 22.279301>,  <29.441044, 31.353748, 22.239779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.412828, 31.588785, 22.279301>,  <29.365801, 31.980513, 22.345169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.412828, 31.588785, 22.279301> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074556, -0.174060, 0.981909,
		-0.990262, -0.103163, -0.093478,
		0.117567, -0.979316, -0.164673,
		29.448099, 31.294991, 22.229898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.991449, 31.638229, 22.850599>,  <29.365801, 31.980513, 22.345169>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.991449, 31.638229, 22.850599> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.186255, 31.319536, 22.707470>,  <29.303137, 31.128321, 22.621592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.186255, 31.319536, 22.707470>,  <28.991449, 31.638229, 22.850599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.186255, 31.319536, 22.707470> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193343, -0.301183, 0.933760,
		-0.851726, -0.523936, 0.007362,
		0.487013, -0.796731, -0.357825,
		29.332359, 31.080517, 22.600122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.767319, 31.122040, 23.275772>,  <28.991449, 31.638229, 22.850599>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.767319, 31.122040, 23.275772> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.120461, 31.007774, 23.126661>,  <29.332346, 30.939215, 23.037195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.120461, 31.007774, 23.126661>,  <28.767319, 31.122040, 23.275772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.120461, 31.007774, 23.126661> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292388, -0.286834, 0.912270,
		-0.367528, -0.914398, -0.169708,
		0.882855, -0.285664, -0.372779,
		29.385317, 30.922075, 23.014828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.875683, 30.453472, 23.561296>,  <28.767319, 31.122040, 23.275772>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.875683, 30.453472, 23.561296> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.248211, 30.538488, 23.442993>,  <29.471727, 30.589499, 23.372011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.248211, 30.538488, 23.442993>,  <28.875683, 30.453472, 23.561296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.248211, 30.538488, 23.442993> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331911, -0.160993, 0.929471,
		0.149938, -0.963798, -0.220481,
		0.931318, 0.212543, -0.295756,
		29.527607, 30.602251, 23.354267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<30.804529, 36.020691, 18.526205> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.925825, 35.640125, 18.504835>,  <30.998602, 35.411785, 18.492012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.925825, 35.640125, 18.504835>,  <30.804529, 36.020691, 18.526205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.925825, 35.640125, 18.504835> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241512, 0.022497, 0.970137,
		-0.921802, -0.307086, 0.236600,
		0.303238, -0.951416, -0.053427,
		31.016796, 35.354702, 18.488808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.353725, 35.524067, 19.008799>,  <30.804529, 36.020691, 18.526205>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.353725, 35.524067, 19.008799> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.728453, 35.412197, 18.924749>,  <30.953289, 35.345074, 18.874319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.728453, 35.412197, 18.924749>,  <30.353725, 35.524067, 19.008799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.728453, 35.412197, 18.924749> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244892, 0.095410, 0.964844,
		-0.249796, -0.955342, 0.157872,
		0.936819, -0.279676, -0.210123,
		31.009499, 35.328293, 18.861713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.533987, 35.067879, 19.581816>,  <30.353725, 35.524067, 19.008799>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.533987, 35.067879, 19.581816> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.875523, 35.181477, 19.407320>,  <31.080444, 35.249638, 19.302622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.875523, 35.181477, 19.407320>,  <30.533987, 35.067879, 19.581816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.875523, 35.181477, 19.407320> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415316, 0.133546, 0.899821,
		0.313807, -0.949478, -0.003923,
		0.853837, 0.283999, -0.436241,
		31.131674, 35.266678, 19.276447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.069424, 34.615471, 19.869455>,  <30.533987, 35.067879, 19.581816>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.069424, 34.615471, 19.869455> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.232527, 34.959400, 19.746538>,  <31.330389, 35.165760, 19.672787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.232527, 34.959400, 19.746538>,  <31.069424, 34.615471, 19.869455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.232527, 34.959400, 19.746538> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475036, 0.087651, 0.875590,
		0.779791, -0.503006, -0.372708,
		0.407758, 0.859827, -0.307295,
		31.354855, 35.217350, 19.654350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.758488, 34.535824, 20.135275>,  <31.069424, 34.615471, 19.869455>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.758488, 34.535824, 20.135275> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.660490, 34.918003, 20.069433>,  <31.601690, 35.147312, 20.029928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.660490, 34.918003, 20.069433>,  <31.758488, 34.535824, 20.135275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.660490, 34.918003, 20.069433> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499192, 0.269856, 0.823399,
		0.831135, 0.119561, -0.543066,
		-0.244996, 0.955449, -0.164603,
		31.586990, 35.204639, 20.020052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.339546, 34.905334, 20.494438>,  <31.758488, 34.535824, 20.135275>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.339546, 34.905334, 20.494438> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.062649, 35.180859, 20.408327>,  <31.896511, 35.346172, 20.356661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.062649, 35.180859, 20.408327>,  <32.339546, 34.905334, 20.494438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.062649, 35.180859, 20.408327> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216323, 0.482643, 0.848681,
		0.688483, 0.540921, -0.483110,
		-0.692239, 0.688810, -0.215278,
		31.854977, 35.387501, 20.343744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.648117, 35.421295, 20.717377>,  <32.339546, 34.905334, 20.494438>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.648117, 35.421295, 20.717377> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.261967, 35.525074, 20.706484>,  <32.030277, 35.587341, 20.699947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.261967, 35.525074, 20.706484>,  <32.648117, 35.421295, 20.717377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.261967, 35.525074, 20.706484> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086972, 0.418500, 0.904043,
		0.245951, 0.870369, -0.426574,
		-0.965372, 0.259451, -0.027233,
		31.972355, 35.602909, 20.698315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.667191, 36.166710, 20.969120>,  <32.648117, 35.421295, 20.717377>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.667191, 36.166710, 20.969120> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.299667, 36.018665, 21.023973>,  <32.079151, 35.929840, 21.056885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.299667, 36.018665, 21.023973>,  <32.667191, 36.166710, 20.969120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.299667, 36.018665, 21.023973> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018823, 0.305953, 0.951860,
		-0.394248, 0.877161, -0.274147,
		-0.918811, -0.370109, 0.137133,
		32.024025, 35.907631, 21.065113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.289108, 36.692268, 21.248930>,  <32.667191, 36.166710, 20.969120>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.289108, 36.692268, 21.248930> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.080883, 36.364143, 21.343666>,  <31.955948, 36.167267, 21.400507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.080883, 36.364143, 21.343666>,  <32.289108, 36.692268, 21.248930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.080883, 36.364143, 21.343666> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087065, 0.326940, 0.941026,
		-0.849370, 0.469247, -0.241615,
		-0.520567, -0.820316, 0.236838,
		31.924713, 36.118050, 21.414717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.637287, 36.907570, 21.569366>,  <32.289108, 36.692268, 21.248930>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.637287, 36.907570, 21.569366> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.664051, 36.524006, 21.679653>,  <31.680109, 36.293869, 21.745825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.664051, 36.524006, 21.679653>,  <31.637287, 36.907570, 21.569366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.664051, 36.524006, 21.679653> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197690, 0.258116, 0.945672,
		-0.977978, -0.117783, -0.172295,
		0.066912, -0.958907, 0.275717,
		31.684124, 36.236332, 21.762367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.078972, 36.864426, 22.164038>,  <31.637287, 36.907570, 21.569366>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.078972, 36.864426, 22.164038> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.331259, 36.554512, 22.181509>,  <31.482632, 36.368565, 22.191992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.331259, 36.554512, 22.181509>,  <31.078972, 36.864426, 22.164038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.331259, 36.554512, 22.181509> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096466, 0.134128, 0.986258,
		-0.769992, -0.617838, 0.159337,
		0.630719, -0.774781, 0.043678,
		31.520475, 36.322079, 22.194613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.848169, 36.480408, 22.794128>,  <31.078972, 36.864426, 22.164038>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.848169, 36.480408, 22.794128> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.231375, 36.380093, 22.738543>,  <31.461298, 36.319904, 22.705191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.231375, 36.380093, 22.738543>,  <30.848169, 36.480408, 22.794128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.231375, 36.380093, 22.738543> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164532, 0.083927, 0.982795,
		-0.234814, -0.964396, 0.121666,
		0.958015, -0.250792, -0.138967,
		31.518780, 36.304855, 22.696852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.215601, 36.249687, 23.045353>,  <30.848169, 36.480408, 22.794128>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.215601, 36.249687, 23.045353> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.984739, 36.567524, 23.120739>,  <29.846222, 36.758224, 23.165970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.984739, 36.567524, 23.120739>,  <30.215601, 36.249687, 23.045353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.984739, 36.567524, 23.120739> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472793, -0.136956, -0.870465,
		-0.665852, -0.591497, 0.454722,
		-0.577155, 0.794591, 0.188463,
		29.811592, 36.805901, 23.177279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.638231, 36.029079, 22.876026>,  <30.215601, 36.249687, 23.045353>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.638231, 36.029079, 22.876026> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.541143, 36.416798, 22.860275>,  <29.482891, 36.649429, 22.850824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.541143, 36.416798, 22.860275>,  <29.638231, 36.029079, 22.876026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.541143, 36.416798, 22.860275> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565675, -0.174391, -0.805978,
		-0.788099, -0.173350, 0.590635,
		-0.242717, 0.969297, -0.039378,
		29.468328, 36.707588, 22.848461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.957588, 36.045860, 22.831217>,  <29.638231, 36.029079, 22.876026>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.957588, 36.045860, 22.831217> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.082895, 36.398060, 22.688898>,  <29.158079, 36.609379, 22.603508>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.082895, 36.398060, 22.688898>,  <28.957588, 36.045860, 22.831217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.082895, 36.398060, 22.688898> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530545, -0.148469, -0.834552,
		-0.787645, 0.450205, 0.420632,
		0.313268, 0.880496, -0.355795,
		29.176876, 36.662209, 22.582159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.372541, 36.246635, 22.560619>,  <28.957588, 36.045860, 22.831217>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.372541, 36.246635, 22.560619> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.674137, 36.450672, 22.395065>,  <28.855095, 36.573093, 22.295732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.674137, 36.450672, 22.395065>,  <28.372541, 36.246635, 22.560619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.674137, 36.450672, 22.395065> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400871, -0.141835, -0.905088,
		-0.520384, 0.848343, 0.097540,
		0.753991, 0.510095, -0.413886,
		28.900333, 36.603699, 22.270899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.103401, 36.696266, 22.034380>,  <28.372541, 36.246635, 22.560619>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.103401, 36.696266, 22.034380> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.493313, 36.681881, 21.946280>,  <28.727261, 36.673248, 21.893419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.493313, 36.681881, 21.946280>,  <28.103401, 36.696266, 22.034380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.493313, 36.681881, 21.946280> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222763, -0.216222, -0.950592,
		-0.013438, 0.975682, -0.218780,
		0.974780, -0.035963, -0.220252,
		28.785748, 36.671093, 21.880203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.170589, 36.938046, 21.374586>,  <28.103401, 36.696266, 22.034380>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.170589, 36.938046, 21.374586> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.520409, 36.750309, 21.423388>,  <28.730299, 36.637665, 21.452667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.520409, 36.750309, 21.423388>,  <28.170589, 36.938046, 21.374586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.520409, 36.750309, 21.423388> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078428, -0.385155, -0.919514,
		0.478559, 0.794589, -0.373645,
		0.874546, -0.469345, 0.122001,
		28.782772, 36.609505, 21.459988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.507090, 37.107883, 20.798834>,  <28.170589, 36.938046, 21.374586>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.507090, 37.107883, 20.798834> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.697201, 36.776161, 20.916386>,  <28.811268, 36.577129, 20.986917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.697201, 36.776161, 20.916386>,  <28.507090, 37.107883, 20.798834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.697201, 36.776161, 20.916386> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066666, -0.367002, -0.927828,
		0.877306, 0.421384, -0.229714,
		0.475278, -0.829304, 0.293882,
		28.839785, 36.527370, 21.004551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.954763, 36.912838, 20.228794>,  <28.507090, 37.107883, 20.798834>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.954763, 36.912838, 20.228794> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.955650, 36.571484, 20.437307>,  <28.956182, 36.366673, 20.562414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.955650, 36.571484, 20.437307>,  <28.954763, 36.912838, 20.228794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.955650, 36.571484, 20.437307> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054473, -0.520611, -0.852054,
		0.998513, -0.026505, -0.047642,
		0.002220, -0.853382, 0.521281,
		28.956316, 36.315468, 20.593691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.385836, 36.482624, 19.903343>,  <28.954763, 36.912838, 20.228794>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.385836, 36.482624, 19.903343> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.137802, 36.248566, 20.112377>,  <28.988981, 36.108131, 20.237799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.137802, 36.248566, 20.112377>,  <29.385836, 36.482624, 19.903343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.137802, 36.248566, 20.112377> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197161, -0.528504, -0.825718,
		0.759357, -0.615049, 0.212349,
		-0.620084, -0.585148, 0.522587,
		28.951777, 36.073021, 20.269154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.508434, 35.764942, 19.624146>,  <29.385836, 36.482624, 19.903343>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.508434, 35.764942, 19.624146> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.161976, 35.731571, 19.821259>,  <28.954102, 35.711548, 19.939526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.161976, 35.731571, 19.821259>,  <29.508434, 35.764942, 19.624146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.161976, 35.731571, 19.821259> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339055, -0.626317, -0.701975,
		0.367202, -0.775092, 0.514194,
		-0.866144, -0.083427, 0.492783,
		28.902132, 35.706543, 19.969093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.414360, 35.070797, 19.648417>,  <29.508434, 35.764942, 19.624146>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.414360, 35.070797, 19.648417> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.052319, 35.239872, 19.666866>,  <28.835094, 35.341316, 19.677937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.052319, 35.239872, 19.666866>,  <29.414360, 35.070797, 19.648417>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.052319, 35.239872, 19.666866> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330517, -0.631173, -0.701697,
		-0.267484, -0.650353, 0.710981,
		-0.905103, 0.422684, 0.046124,
		28.780788, 35.366676, 19.680704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.881542, 34.538616, 19.508955>,  <29.414360, 35.070797, 19.648417>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.881542, 34.538616, 19.508955> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.691839, 34.889118, 19.474886>,  <28.578016, 35.099419, 19.454445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.691839, 34.889118, 19.474886>,  <28.881542, 34.538616, 19.508955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.691839, 34.889118, 19.474886> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517665, -0.355806, -0.778090,
		-0.712111, -0.324926, 0.622351,
		-0.474258, 0.876256, -0.085170,
		28.549562, 35.151997, 19.449335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.194916, 34.430756, 19.419579>,  <28.881542, 34.538616, 19.508955>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.194916, 34.430756, 19.419579> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.262297, 34.782871, 19.242165>,  <28.302725, 34.994141, 19.135717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.262297, 34.782871, 19.242165>,  <28.194916, 34.430756, 19.419579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.262297, 34.782871, 19.242165> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393457, -0.352515, -0.849073,
		-0.903779, 0.317537, 0.286973,
		0.168450, 0.880286, -0.443533,
		28.312832, 35.046959, 19.109104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.660030, 34.150677, 18.869268>,  <28.194916, 34.430756, 19.419579>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.660030, 34.150677, 18.869268> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.700277, 33.822266, 18.644485>,  <28.724426, 33.625221, 18.509617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.700277, 33.822266, 18.644485>,  <28.660030, 34.150677, 18.869268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.700277, 33.822266, 18.644485> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255524, -0.524551, 0.812129,
		-0.961553, -0.225309, 0.157011,
		0.100619, -0.821025, -0.561956,
		28.730463, 33.575958, 18.475899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.526083, 33.737221, 19.359962>,  <28.660030, 34.150677, 18.869268>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.526083, 33.737221, 19.359962> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.684099, 33.484772, 19.092939>,  <28.778910, 33.333302, 18.932726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.684099, 33.484772, 19.092939>,  <28.526083, 33.737221, 19.359962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.684099, 33.484772, 19.092939> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375565, -0.552212, 0.744321,
		-0.838388, -0.544747, 0.018881,
		0.395040, -0.631121, -0.667555,
		28.802610, 33.295437, 18.892673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.270409, 33.001377, 19.515791>,  <28.526083, 33.737221, 19.359962>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.270409, 33.001377, 19.515791> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.576321, 32.904526, 19.276966>,  <28.759869, 32.846416, 19.133671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.576321, 32.904526, 19.276966>,  <28.270409, 33.001377, 19.515791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.576321, 32.904526, 19.276966> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229246, -0.763787, 0.603386,
		-0.602124, -0.598333, -0.528625,
		0.764783, -0.242128, -0.597060,
		28.805756, 32.831886, 19.097847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.281067, 32.263222, 19.412052>,  <28.270409, 33.001377, 19.515791>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.281067, 32.263222, 19.412052> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.656538, 32.371998, 19.327263>,  <28.881821, 32.437263, 19.276390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.656538, 32.371998, 19.327263>,  <28.281067, 32.263222, 19.412052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.656538, 32.371998, 19.327263> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344300, -0.772292, 0.533876,
		-0.018519, -0.574118, -0.818563,
		0.938677, 0.271945, -0.211971,
		28.938141, 32.453583, 19.263672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.585024, 31.692699, 19.225111>,  <28.281067, 32.263222, 19.412052>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.585024, 31.692699, 19.225111> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.877901, 31.941410, 19.336311>,  <29.053627, 32.090637, 19.403030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.877901, 31.941410, 19.336311>,  <28.585024, 31.692699, 19.225111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.877901, 31.941410, 19.336311> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419766, -0.733390, 0.534730,
		0.536365, -0.274831, -0.797985,
		0.732195, 0.621777, 0.278000,
		29.097559, 32.127945, 19.419712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.084604, 31.190727, 19.351662>,  <28.585024, 31.692699, 19.225111>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.084604, 31.190727, 19.351662> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.215714, 31.521221, 19.534922>,  <29.294378, 31.719517, 19.644878>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.215714, 31.521221, 19.534922>,  <29.084604, 31.190727, 19.351662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.215714, 31.521221, 19.534922> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381812, -0.559421, 0.735709,
		0.864168, -0.066217, -0.498828,
		0.327771, 0.826235, 0.458151,
		29.314045, 31.769093, 19.672367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.637821, 30.938517, 19.697718>,  <29.084604, 31.190727, 19.351662>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.637821, 30.938517, 19.697718> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.564730, 31.278893, 19.894699>,  <29.520874, 31.483118, 20.012888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.564730, 31.278893, 19.894699>,  <29.637821, 30.938517, 19.697718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.564730, 31.278893, 19.894699> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321305, -0.421699, 0.847899,
		0.929179, 0.313164, -0.196355,
		-0.182729, 0.850940, 0.492455,
		29.509911, 31.534174, 20.042435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.244253, 30.990295, 20.211737>,  <29.637821, 30.938517, 19.697718>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.244253, 30.990295, 20.211737> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.948730, 31.219210, 20.354090>,  <29.771418, 31.356558, 20.439503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.948730, 31.219210, 20.354090>,  <30.244253, 30.990295, 20.211737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.948730, 31.219210, 20.354090> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269624, -0.232968, 0.934360,
		0.617630, 0.786267, 0.017817,
		-0.738807, 0.572285, 0.355884,
		29.727089, 31.390896, 20.460855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.696121, 30.579697, 19.843884>,  <30.244253, 30.990295, 20.211737>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.696121, 30.579697, 19.843884> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.974691, 30.297117, 19.894360>,  <31.141832, 30.127569, 19.924646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.974691, 30.297117, 19.894360>,  <30.696121, 30.579697, 19.843884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.974691, 30.297117, 19.894360> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136447, -0.302988, -0.943176,
		0.704539, 0.639632, -0.307401,
		0.696424, -0.706448, 0.126191,
		31.183619, 30.085182, 19.932217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.052914, 30.634085, 19.277788>,  <30.696121, 30.579697, 19.843884>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.052914, 30.634085, 19.277788> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.140406, 30.266947, 19.410286>,  <31.192900, 30.046665, 19.489784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.140406, 30.266947, 19.410286>,  <31.052914, 30.634085, 19.277788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.140406, 30.266947, 19.410286> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061876, -0.351827, -0.934018,
		0.973822, 0.183800, -0.133747,
		0.218728, -0.917843, 0.331244,
		31.206024, 29.991594, 19.509659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.637465, 30.371483, 18.879658>,  <31.052914, 30.634085, 19.277788>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.637465, 30.371483, 18.879658> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.459230, 30.043697, 19.023846>,  <31.352289, 29.847027, 19.110357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.459230, 30.043697, 19.023846>,  <31.637465, 30.371483, 18.879658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.459230, 30.043697, 19.023846> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147591, -0.329898, -0.932408,
		0.882990, -0.468669, 0.026052,
		-0.445585, -0.819462, 0.360468,
		31.325556, 29.797859, 19.131987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.808786, 29.873848, 18.382250>,  <31.637465, 30.371483, 18.879658>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.808786, 29.873848, 18.382250> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.518095, 29.691973, 18.588209>,  <31.343679, 29.582848, 18.711784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.518095, 29.691973, 18.588209>,  <31.808786, 29.873848, 18.382250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.518095, 29.691973, 18.588209> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249476, -0.523692, -0.814560,
		0.640020, -0.720421, 0.267150,
		-0.726731, -0.454687, 0.514901,
		31.300076, 29.555567, 18.742680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.869850, 29.153391, 18.312105>,  <31.808786, 29.873848, 18.382250>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.869850, 29.153391, 18.312105> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.483637, 29.223007, 18.389517>,  <31.251909, 29.264776, 18.435965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.483637, 29.223007, 18.389517>,  <31.869850, 29.153391, 18.312105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.483637, 29.223007, 18.389517> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260185, -0.625683, -0.735408,
		-0.006902, -0.760415, 0.649401,
		-0.965534, 0.174040, 0.193530,
		31.193977, 29.275219, 18.447577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.634392, 28.532478, 18.256104>,  <31.869850, 29.153391, 18.312105>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.634392, 28.532478, 18.256104> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.311567, 28.765631, 18.218369>,  <31.117872, 28.905521, 18.195726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.311567, 28.765631, 18.218369>,  <31.634392, 28.532478, 18.256104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.311567, 28.765631, 18.218369> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312391, -0.557076, -0.769466,
		-0.501059, -0.591538, 0.631682,
		-0.807064, 0.582880, -0.094337,
		31.069448, 28.940495, 18.190067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.155886, 28.079102, 18.031113>,  <31.634392, 28.532478, 18.256104>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.155886, 28.079102, 18.031113> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.010693, 28.437578, 17.929068>,  <30.923576, 28.652664, 17.867842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.010693, 28.437578, 17.929068>,  <31.155886, 28.079102, 18.031113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.010693, 28.437578, 17.929068> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261706, -0.360817, -0.895166,
		-0.894290, -0.258165, 0.365509,
		-0.362983, 0.896193, -0.255112,
		30.901798, 28.706436, 17.852533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.492659, 27.950367, 17.650749>,  <31.155886, 28.079102, 18.031113>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.492659, 27.950367, 17.650749> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.604095, 28.323746, 17.560364>,  <30.670958, 28.547773, 17.506132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.604095, 28.323746, 17.560364>,  <30.492659, 27.950367, 17.650749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.604095, 28.323746, 17.560364> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273191, -0.148536, -0.950423,
		-0.920734, 0.326513, 0.213629,
		0.278594, 0.933449, -0.225962,
		30.687674, 28.603781, 17.492575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.861244, 28.309214, 17.426886>,  <30.492659, 27.950367, 17.650749>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.861244, 28.309214, 17.426886> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.180561, 28.493042, 17.271179>,  <30.372150, 28.603338, 17.177755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.180561, 28.493042, 17.271179>,  <29.861244, 28.309214, 17.426886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.180561, 28.493042, 17.271179> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248993, -0.336676, -0.908104,
		-0.548393, 0.821855, -0.154336,
		0.798290, 0.459569, -0.389266,
		30.420048, 28.630913, 17.154400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.738197, 32.109554, 31.992016> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.928505, 32.460960, 31.974779>,  <37.042690, 32.671803, 31.964437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.928505, 32.460960, 31.974779>,  <36.738197, 32.109554, 31.992016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.928505, 32.460960, 31.974779> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414723, -0.267262, -0.869813,
		-0.775660, 0.395960, -0.491495,
		0.475769, 0.878514, -0.043091,
		37.071236, 32.724514, 31.961851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.080284, 32.044029, 31.578428>,  <36.738197, 32.109554, 31.992016>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.080284, 32.044029, 31.578428> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.284283, 31.816597, 31.320242>,  <36.406681, 31.680138, 31.165331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.284283, 31.816597, 31.320242>,  <36.080284, 32.044029, 31.578428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.284283, 31.816597, 31.320242> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.850149, -0.218928, -0.478871,
		0.130965, 0.792963, -0.595028,
		0.509995, -0.568577, -0.645464,
		36.437283, 31.646023, 31.126602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.740429, 32.162437, 30.884840>,  <36.080284, 32.044029, 31.578428>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.740429, 32.162437, 30.884840> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.002132, 31.869238, 30.810373>,  <36.159157, 31.693319, 30.765694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.002132, 31.869238, 30.810373>,  <35.740429, 32.162437, 30.884840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.002132, 31.869238, 30.810373> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605572, -0.360312, -0.709548,
		0.453019, 0.576966, -0.679620,
		0.654261, -0.732998, -0.186166,
		36.198410, 31.649338, 30.754524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.941055, 32.254681, 30.212883>,  <35.740429, 32.162437, 30.884840>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.941055, 32.254681, 30.212883> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.992897, 31.872179, 30.317785>,  <36.024002, 31.642677, 30.380728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.992897, 31.872179, 30.317785>,  <35.941055, 32.254681, 30.212883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.992897, 31.872179, 30.317785> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498598, -0.291469, -0.816362,
		0.857089, -0.024954, -0.514563,
		0.129607, -0.956255, 0.262257,
		36.031780, 31.585302, 30.396461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.917728, 31.955391, 29.571276>,  <35.941055, 32.254681, 30.212883>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.917728, 31.955391, 29.571276> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.866272, 31.650661, 29.825230>,  <35.835400, 31.467823, 29.977602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.866272, 31.650661, 29.825230>,  <35.917728, 31.955391, 29.571276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.866272, 31.650661, 29.825230> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644733, -0.422191, -0.637240,
		0.753506, -0.491304, -0.436862,
		-0.128639, -0.761823, 0.634884,
		35.827679, 31.422115, 30.015696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.128887, 31.355328, 29.250509>,  <35.917728, 31.955391, 29.571276>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.128887, 31.355328, 29.250509> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.839504, 31.278936, 29.515879>,  <35.665874, 31.233101, 29.675100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.839504, 31.278936, 29.515879>,  <36.128887, 31.355328, 29.250509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.839504, 31.278936, 29.515879> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567181, -0.383442, -0.728889,
		0.393586, -0.903604, 0.169086,
		-0.723461, -0.190978, 0.663424,
		35.622467, 31.221643, 29.714907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.871002, 30.679207, 29.094049>,  <36.128887, 31.355328, 29.250509>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.871002, 30.679207, 29.094049> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.585899, 30.830963, 29.330029>,  <35.414837, 30.922016, 29.471615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.585899, 30.830963, 29.330029>,  <35.871002, 30.679207, 29.094049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.585899, 30.830963, 29.330029> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698966, -0.314061, -0.642505,
		-0.058480, -0.870304, 0.489030,
		-0.712760, 0.379389, 0.589946,
		35.372070, 30.944780, 29.507011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.433773, 30.134367, 29.288807>,  <35.871002, 30.679207, 29.094049>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.433773, 30.134367, 29.288807> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.214256, 30.466234, 29.329752>,  <35.082546, 30.665354, 29.354319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.214256, 30.466234, 29.329752>,  <35.433773, 30.134367, 29.288807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.214256, 30.466234, 29.329752> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638513, -0.336985, -0.691912,
		-0.539561, -0.445078, 0.714688,
		-0.548795, 0.829666, 0.102364,
		35.049618, 30.715134, 29.360462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.733162, 29.863741, 29.256994>,  <35.433773, 30.134367, 29.288807>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.733162, 29.863741, 29.256994> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.687653, 30.259485, 29.220739>,  <34.660347, 30.496933, 29.198986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.687653, 30.259485, 29.220739>,  <34.733162, 29.863741, 29.256994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.687653, 30.259485, 29.220739> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681124, -0.144094, -0.717849,
		-0.723273, -0.019939, 0.690274,
		-0.113778, 0.989363, -0.090639,
		34.653519, 30.556293, 29.193548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.012253, 29.956276, 29.225630>,  <34.733162, 29.863741, 29.256994>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.012253, 29.956276, 29.225630> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.160816, 30.301043, 29.087553>,  <34.249954, 30.507902, 29.004707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.160816, 30.301043, 29.087553>,  <34.012253, 29.956276, 29.225630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.160816, 30.301043, 29.087553> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665199, -0.012354, -0.746564,
		-0.647741, 0.506898, 0.568758,
		0.371406, 0.861917, -0.345190,
		34.272240, 30.559618, 28.983995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.439976, 30.356205, 29.071106>,  <34.012253, 29.956276, 29.225630>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.439976, 30.356205, 29.071106> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.737617, 30.532272, 28.870083>,  <33.916203, 30.637913, 28.749470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.737617, 30.532272, 28.870083>,  <33.439976, 30.356205, 29.071106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.737617, 30.532272, 28.870083> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580601, 0.053957, -0.812399,
		-0.330474, 0.896293, 0.295711,
		0.744103, 0.440167, -0.502557,
		33.960850, 30.664322, 28.719316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.208530, 31.070463, 28.785103>,  <33.439976, 30.356205, 29.071106>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.208530, 31.070463, 28.785103> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.513248, 30.941265, 28.560480>,  <33.696079, 30.863747, 28.425707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.513248, 30.941265, 28.560480>,  <33.208530, 31.070463, 28.785103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.513248, 30.941265, 28.560480> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485258, 0.289776, -0.824957,
		0.429182, 0.900947, 0.064013,
		0.761792, -0.322994, -0.561558,
		33.741787, 30.844366, 28.392014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.876900, 31.608620, 28.916004>,  <33.208530, 31.070463, 28.785103>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.876900, 31.608620, 28.916004> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.517220, 31.772207, 28.978214>,  <32.301411, 31.870359, 29.015541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.517220, 31.772207, 28.978214>,  <32.876900, 31.608620, 28.916004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.517220, 31.772207, 28.978214> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354140, 0.471510, 0.807628,
		0.256964, 0.781295, -0.568813,
		-0.899197, 0.408971, 0.155527,
		32.247459, 31.894899, 29.024872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.013474, 32.323997, 29.176889>,  <32.876900, 31.608620, 28.916004>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.013474, 32.323997, 29.176889> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.643536, 32.224834, 29.292267>,  <32.421574, 32.165337, 29.361492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.643536, 32.224834, 29.292267>,  <33.013474, 32.323997, 29.176889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.643536, 32.224834, 29.292267> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098172, 0.577088, 0.810760,
		-0.367447, 0.778147, -0.509381,
		-0.924849, -0.247904, 0.288442,
		32.366081, 32.150463, 29.378799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.789825, 32.908337, 29.407848>,  <33.013474, 32.323997, 29.176889>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.789825, 32.908337, 29.407848> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.560326, 32.643749, 29.601040>,  <32.422626, 32.484997, 29.716955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.560326, 32.643749, 29.601040>,  <32.789825, 32.908337, 29.407848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.560326, 32.643749, 29.601040> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089449, 0.535561, 0.839746,
		-0.814129, 0.525009, -0.248112,
		-0.573754, -0.661468, 0.482977,
		32.388199, 32.445309, 29.745934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.386467, 33.323669, 29.868237>,  <32.789825, 32.908337, 29.407848>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.386467, 33.323669, 29.868237> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.376503, 32.958221, 30.030561>,  <32.370525, 32.738953, 30.127956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.376503, 32.958221, 30.030561>,  <32.386467, 33.323669, 29.868237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.376503, 32.958221, 30.030561> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040540, 0.404683, 0.913558,
		-0.998867, 0.039211, 0.026956,
		-0.024913, -0.913616, 0.405814,
		32.369030, 32.684135, 30.152306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.865746, 33.414204, 30.381924>,  <32.386467, 33.323669, 29.868237>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.865746, 33.414204, 30.381924> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.101997, 33.106949, 30.480810>,  <32.243748, 32.922596, 30.540142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.101997, 33.106949, 30.480810>,  <31.865746, 33.414204, 30.381924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.101997, 33.106949, 30.480810> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036093, 0.280907, 0.959056,
		-0.806136, -0.575369, 0.138188,
		0.590629, -0.768142, 0.247216,
		32.279186, 32.876507, 30.554976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.604473, 33.234783, 31.012348>,  <31.865746, 33.414204, 30.381924>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.604473, 33.234783, 31.012348> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.958338, 33.048332, 31.008314>,  <32.170658, 32.936462, 31.005894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.958338, 33.048332, 31.008314>,  <31.604473, 33.234783, 31.012348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.958338, 33.048332, 31.008314> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117756, 0.202453, 0.972186,
		-0.451118, -0.861243, 0.233992,
		0.884661, -0.466125, -0.010087,
		32.223736, 32.908493, 31.005289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.625992, 32.649555, 31.634947>,  <31.604473, 33.234783, 31.012348>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.625992, 32.649555, 31.634947> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.984989, 32.786022, 31.523153>,  <32.200386, 32.867901, 31.456078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.984989, 32.786022, 31.523153>,  <31.625992, 32.649555, 31.634947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.984989, 32.786022, 31.523153> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263873, 0.092381, 0.960124,
		0.353380, -0.935453, -0.007113,
		0.897493, 0.341165, -0.279486,
		32.254238, 32.888371, 31.439308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.173214, 32.362133, 32.164951>,  <31.625992, 32.649555, 31.634947>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.173214, 32.362133, 32.164951> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.313839, 32.680103, 31.967165>,  <32.398212, 32.870884, 31.848494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.313839, 32.680103, 31.967165>,  <32.173214, 32.362133, 32.164951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.313839, 32.680103, 31.967165> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187854, 0.457536, 0.869122,
		0.917124, -0.398437, 0.011521,
		0.351561, 0.794927, -0.494464,
		32.419308, 32.918583, 31.818825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.788822, 32.550041, 32.573395>,  <32.173214, 32.362133, 32.164951>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.788822, 32.550041, 32.573395> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.672932, 32.867535, 32.359463>,  <32.603397, 33.058029, 32.231102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.672932, 32.867535, 32.359463>,  <32.788822, 32.550041, 32.573395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.672932, 32.867535, 32.359463> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220899, 0.599166, 0.769548,
		0.931270, 0.104813, -0.348928,
		-0.289725, 0.793735, -0.534832,
		32.586014, 33.105656, 32.199013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.320045, 33.058483, 32.596237>,  <32.788822, 32.550041, 32.573395>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.320045, 33.058483, 32.596237> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.003948, 33.276073, 32.483379>,  <32.814289, 33.406628, 32.415665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.003948, 33.276073, 32.483379>,  <33.320045, 33.058483, 32.596237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.003948, 33.276073, 32.483379> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121222, 0.590088, 0.798187,
		0.600684, 0.596560, -0.532255,
		-0.790243, 0.543979, -0.282140,
		32.766876, 33.439266, 32.398739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.497822, 33.829243, 32.523655>,  <33.320045, 33.058483, 32.596237>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.497822, 33.829243, 32.523655> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.103062, 33.794212, 32.577839>,  <32.866203, 33.773193, 32.610348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.103062, 33.794212, 32.577839>,  <33.497822, 33.829243, 32.523655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.103062, 33.794212, 32.577839> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042616, 0.668372, 0.742605,
		-0.155571, 0.738653, -0.655888,
		-0.986905, -0.087576, 0.135458,
		32.806992, 33.767941, 32.618477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.389992, 34.404015, 32.999031>,  <33.497822, 33.829243, 32.523655>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.389992, 34.404015, 32.999031> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.033672, 34.222260, 32.997952>,  <32.819881, 34.113205, 32.997303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.033672, 34.222260, 32.997952>,  <33.389992, 34.404015, 32.999031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.033672, 34.222260, 32.997952> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257102, 0.499116, 0.827515,
		-0.374668, 0.737843, -0.561437,
		-0.890799, -0.454390, -0.002698,
		32.766434, 34.085941, 32.997143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.861115, 34.858635, 32.997658>,  <33.389992, 34.404015, 32.999031>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.861115, 34.858635, 32.997658> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.719646, 34.534691, 33.184864>,  <32.634766, 34.340324, 33.297188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.719646, 34.534691, 33.184864>,  <32.861115, 34.858635, 32.997658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.719646, 34.534691, 33.184864> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275238, 0.568310, 0.775414,
		-0.893958, 0.145426, -0.423900,
		-0.353672, -0.809861, 0.468018,
		32.613544, 34.291733, 33.325268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.433830, 35.207561, 33.412487>,  <32.861115, 34.858635, 32.997658>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.433830, 35.207561, 33.412487> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.443291, 34.836765, 33.562225>,  <32.448967, 34.614288, 33.652069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.443291, 34.836765, 33.562225>,  <32.433830, 35.207561, 33.412487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.443291, 34.836765, 33.562225> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282502, 0.352990, 0.891959,
		-0.958975, -0.126850, -0.253527,
		0.023653, -0.926988, 0.374344,
		32.450386, 34.558670, 33.674530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.755646, 35.805458, 32.973949>,  <32.433830, 35.207561, 33.412487>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.755646, 35.805458, 32.973949> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.534904, 35.477409, 32.913464>,  <32.402462, 35.280582, 32.877171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.534904, 35.477409, 32.913464>,  <32.755646, 35.805458, 32.973949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.534904, 35.477409, 32.913464> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833881, -0.540444, -0.112085,
		0.010198, -0.187952, 0.982125,
		-0.551850, -0.820119, -0.151218,
		32.369350, 35.231373, 32.868099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.261345, 36.373531, 32.766850>,  <32.755646, 35.805458, 32.973949>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.261345, 36.373531, 32.766850> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.577499, 36.601551, 32.677109>,  <33.767193, 36.738365, 32.623264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.577499, 36.601551, 32.677109>,  <33.261345, 36.373531, 32.766850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.577499, 36.601551, 32.677109> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372930, 0.157184, -0.914449,
		-0.486021, 0.806432, 0.336826,
		0.790384, 0.570054, -0.224348,
		33.814613, 36.772568, 32.609806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.144470, 37.120365, 32.629169>,  <33.261345, 36.373531, 32.766850>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.144470, 37.120365, 32.629169> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.467815, 37.003849, 32.424545>,  <33.661823, 36.933941, 32.301769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.467815, 37.003849, 32.424545>,  <33.144470, 37.120365, 32.629169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.467815, 37.003849, 32.424545> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526931, 0.029415, -0.849399,
		0.262466, 0.956184, -0.129709,
		0.808366, -0.291286, -0.511564,
		33.710323, 36.916462, 32.271076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.292355, 37.577057, 32.021259>,  <33.144470, 37.120365, 32.629169>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.292355, 37.577057, 32.021259> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.445438, 37.216255, 31.941345>,  <33.537289, 36.999771, 31.893396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.445438, 37.216255, 31.941345>,  <33.292355, 37.577057, 32.021259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.445438, 37.216255, 31.941345> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601372, -0.079060, -0.795047,
		0.701345, 0.424416, -0.572700,
		0.382709, -0.902009, -0.199784,
		33.560249, 36.945652, 31.881411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.613239, 37.604496, 31.392788>,  <33.292355, 37.577057, 32.021259>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.613239, 37.604496, 31.392788> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.538818, 37.215687, 31.450150>,  <33.494167, 36.982403, 31.484566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.538818, 37.215687, 31.450150>,  <33.613239, 37.604496, 31.392788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.538818, 37.215687, 31.450150> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449707, -0.045525, -0.892015,
		0.873585, -0.230447, -0.428654,
		-0.186048, -0.972019, 0.143403,
		33.483006, 36.924080, 31.493170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.927864, 37.310127, 30.685173>,  <33.613239, 37.604496, 31.392788>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.927864, 37.310127, 30.685173> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.714375, 37.020271, 30.859549>,  <33.586281, 36.846359, 30.964174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.714375, 37.020271, 30.859549>,  <33.927864, 37.310127, 30.685173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.714375, 37.020271, 30.859549> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340094, -0.288047, -0.895190,
		0.774256, -0.626045, -0.092706,
		-0.533726, -0.724635, 0.435937,
		33.554256, 36.802879, 30.990330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.026276, 36.803722, 30.235531>,  <33.927864, 37.310127, 30.685173>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.026276, 36.803722, 30.235531> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.709839, 36.676212, 30.444359>,  <33.519978, 36.599705, 30.569656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.709839, 36.676212, 30.444359>,  <34.026276, 36.803722, 30.235531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.709839, 36.676212, 30.444359> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409360, -0.358294, -0.839077,
		0.454534, -0.877500, 0.152948,
		-0.791090, -0.318778, 0.522070,
		33.472511, 36.580578, 30.600979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.847633, 36.141869, 29.994705>,  <34.026276, 36.803722, 30.235531>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.847633, 36.141869, 29.994705> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.516914, 36.237339, 30.198450>,  <33.318485, 36.294621, 30.320696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.516914, 36.237339, 30.198450>,  <33.847633, 36.141869, 29.994705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.516914, 36.237339, 30.198450> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555082, -0.199543, -0.807507,
		-0.091092, -0.950377, 0.297464,
		-0.826793, 0.238674, 0.509360,
		33.268875, 36.308941, 30.351259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.372974, 35.647209, 29.832344>,  <33.847633, 36.141869, 29.994705>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.372974, 35.647209, 29.832344> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.146564, 35.954380, 29.952280>,  <33.010719, 36.138683, 30.024242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.146564, 35.954380, 29.952280>,  <33.372974, 35.647209, 29.832344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.146564, 35.954380, 29.952280> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674840, -0.222711, -0.703556,
		-0.473501, -0.600576, 0.644287,
		-0.566028, 0.767925, 0.299839,
		32.976757, 36.184757, 30.042233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.652103, 35.433289, 29.848347>,  <33.372974, 35.647209, 29.832344>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.652103, 35.433289, 29.848347> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.614475, 35.830723, 29.823217>,  <32.591900, 36.069183, 29.808140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.614475, 35.830723, 29.823217>,  <32.652103, 35.433289, 29.848347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.614475, 35.830723, 29.823217> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724917, -0.111609, -0.679735,
		-0.682383, -0.018401, 0.730763,
		-0.094068, 0.993582, -0.062821,
		32.586254, 36.128796, 29.804371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.942354, 35.615314, 29.994892>,  <32.652103, 35.433289, 29.848347>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.942354, 35.615314, 29.994892> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.090233, 35.917553, 29.778597>,  <32.178959, 36.098896, 29.648819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.090233, 35.917553, 29.778597>,  <31.942354, 35.615314, 29.994892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.090233, 35.917553, 29.778597> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807836, -0.026133, -0.588828,
		-0.459047, 0.654517, 0.600736,
		0.369699, 0.755596, -0.540738,
		32.201141, 36.144230, 29.616375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.442053, 36.037170, 29.802208>,  <31.942354, 35.615314, 29.994892>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.442053, 36.037170, 29.802208> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.718340, 36.124046, 29.526314>,  <31.884111, 36.176170, 29.360777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.718340, 36.124046, 29.526314>,  <31.442053, 36.037170, 29.802208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.718340, 36.124046, 29.526314> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719572, 0.112010, -0.685325,
		-0.071589, 0.969681, 0.233652,
		0.690718, 0.217191, -0.689737,
		31.925556, 36.189205, 29.319393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.094028, 36.605682, 29.404228>,  <31.442053, 36.037170, 29.802208>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.094028, 36.605682, 29.404228> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.389421, 36.453430, 29.181602>,  <31.566658, 36.362080, 29.048027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.389421, 36.453430, 29.181602>,  <31.094028, 36.605682, 29.404228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.389421, 36.453430, 29.181602> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567479, 0.094944, -0.817896,
		0.364157, 0.919841, -0.145885,
		0.738483, -0.380629, -0.556565,
		31.610966, 36.339241, 29.014633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.983643, 37.013008, 28.881882>,  <31.094028, 36.605682, 29.404228>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.983643, 37.013008, 28.881882> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.226171, 36.731049, 28.734642>,  <31.371689, 36.561874, 28.646297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.226171, 36.731049, 28.734642>,  <30.983643, 37.013008, 28.881882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.226171, 36.731049, 28.734642> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502158, 0.019541, -0.864555,
		0.616614, 0.709041, -0.342121,
		0.606320, -0.704896, -0.368100,
		31.408068, 36.519581, 28.624212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.111528, 37.206963, 28.283636>,  <30.983643, 37.013008, 28.881882>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.111528, 37.206963, 28.283636> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.200157, 36.817333, 28.265402>,  <31.253334, 36.583553, 28.254461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.200157, 36.817333, 28.265402>,  <31.111528, 37.206963, 28.283636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.200157, 36.817333, 28.265402> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484098, -0.069297, -0.872266,
		0.846496, 0.215338, -0.486903,
		0.221573, -0.974077, -0.045586,
		31.266628, 36.525108, 28.251726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.425520, 37.106018, 27.564253>,  <31.111528, 37.206963, 28.283636>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.425520, 37.106018, 27.564253> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.277533, 36.754719, 27.685452>,  <31.188740, 36.543941, 27.758171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.277533, 36.754719, 27.685452>,  <31.425520, 37.106018, 27.564253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.277533, 36.754719, 27.685452> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495732, -0.089212, -0.863881,
		0.785731, -0.469815, -0.402369,
		-0.369968, -0.878245, 0.302999,
		31.166542, 36.491245, 27.776352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.603533, 36.575386, 27.068859>,  <31.425520, 37.106018, 27.564253>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.603533, 36.575386, 27.068859> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.283604, 36.443977, 27.269800>,  <31.091646, 36.365131, 27.390366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.283604, 36.443977, 27.269800>,  <31.603533, 36.575386, 27.068859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.283604, 36.443977, 27.269800> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461978, -0.197416, -0.864640,
		0.383224, -0.923635, 0.006129,
		-0.799822, -0.328520, 0.502354,
		31.043657, 36.345421, 27.420506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.522028, 35.998569, 26.809444>,  <31.603533, 36.575386, 27.068859>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.522028, 35.998569, 26.809444> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.178503, 36.084774, 26.995344>,  <30.972387, 36.136497, 27.106884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.178503, 36.084774, 26.995344>,  <31.522028, 35.998569, 26.809444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.178503, 36.084774, 26.995344> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502257, -0.175579, -0.846705,
		-0.100875, -0.960586, 0.259032,
		-0.858814, 0.215512, 0.464750,
		30.920858, 36.149429, 27.134769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.982325, 35.505070, 26.604017>,  <31.522028, 35.998569, 26.809444>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.982325, 35.505070, 26.604017> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.769733, 35.817509, 26.735117>,  <30.642178, 36.004971, 26.813778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.769733, 35.817509, 26.735117>,  <30.982325, 35.505070, 26.604017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.769733, 35.817509, 26.735117> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707217, -0.196204, -0.679226,
		-0.466235, -0.592785, 0.656682,
		-0.531479, 0.781096, 0.327751,
		30.610291, 36.051838, 26.833443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.282541, 35.335102, 26.458490>,  <30.982325, 35.505070, 26.604017>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.282541, 35.335102, 26.458490> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.306625, 35.731682, 26.504793>,  <30.321075, 35.969631, 26.532574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.306625, 35.731682, 26.504793>,  <30.282541, 35.335102, 26.458490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.306625, 35.731682, 26.504793> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466428, 0.130473, -0.874884,
		-0.882507, -0.001313, 0.470297,
		0.060212, 0.991451, 0.115756,
		30.324688, 36.029118, 26.539520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.641542, 35.564816, 26.327917>,  <30.282541, 35.335102, 26.458490>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.641542, 35.564816, 26.327917> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.887630, 35.875114, 26.271742>,  <30.035282, 36.061295, 26.238037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.887630, 35.875114, 26.271742>,  <29.641542, 35.564816, 26.327917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.887630, 35.875114, 26.271742> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455595, 0.204471, -0.866386,
		-0.643382, 0.596999, 0.479221,
		0.615218, 0.775747, -0.140437,
		30.072195, 36.107838, 26.229610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.287676, 36.133720, 26.079750>,  <29.641542, 35.564816, 26.327917>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.287676, 36.133720, 26.079750> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.650236, 36.223789, 25.936787>,  <29.867771, 36.277832, 25.851009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.650236, 36.223789, 25.936787>,  <29.287676, 36.133720, 26.079750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.650236, 36.223789, 25.936787> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417351, 0.346634, -0.840038,
		-0.065263, 0.910573, 0.408164,
		0.906399, 0.225171, -0.357406,
		29.922155, 36.291340, 25.829565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.187759, 36.589050, 25.635023>,  <29.287676, 36.133720, 26.079750>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.187759, 36.589050, 25.635023> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.570774, 36.531612, 25.535019>,  <29.800583, 36.497150, 25.475018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.570774, 36.531612, 25.535019>,  <29.187759, 36.589050, 25.635023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.570774, 36.531612, 25.535019> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190615, 0.335285, -0.922632,
		0.216312, 0.931109, 0.293675,
		0.957536, -0.143598, -0.250010,
		29.858034, 36.488533, 25.460016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.424845, 37.202137, 25.339983>,  <29.187759, 36.589050, 25.635023>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.424845, 37.202137, 25.339983> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.649260, 36.898254, 25.208481>,  <29.783909, 36.715923, 25.129580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.649260, 36.898254, 25.208481>,  <29.424845, 37.202137, 25.339983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.649260, 36.898254, 25.208481> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065703, 0.355027, -0.932544,
		0.825179, 0.544793, 0.149268,
		0.561038, -0.759708, -0.328755,
		29.817572, 36.670341, 25.109854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.914280, 37.536381, 24.943052>,  <29.424845, 37.202137, 25.339983>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.914280, 37.536381, 24.943052> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.914507, 37.151546, 24.833948>,  <29.914644, 36.920647, 24.768486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.914507, 37.151546, 24.833948>,  <29.914280, 37.536381, 24.943052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.914507, 37.151546, 24.833948> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021469, 0.272683, -0.961864,
		0.999769, 0.006404, -0.020500,
		0.000569, -0.962082, -0.272758,
		29.914679, 36.862923, 24.752121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.426134, 37.531090, 24.549448>,  <29.914280, 37.536381, 24.943052>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.426134, 37.531090, 24.549448> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.191431, 37.216434, 24.472589>,  <30.050610, 37.027641, 24.426474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.191431, 37.216434, 24.472589>,  <30.426134, 37.531090, 24.549448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.191431, 37.216434, 24.472589> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064838, 0.282167, -0.957172,
		0.807164, -0.549167, -0.216567,
		-0.586755, -0.786636, -0.192148,
		30.015404, 36.980442, 24.414946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.637247, 37.407032, 23.971619>,  <30.426134, 37.531090, 24.549448>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.637247, 37.407032, 23.971619> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.296928, 37.198822, 24.000460>,  <30.092737, 37.073895, 24.017763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.296928, 37.198822, 24.000460>,  <30.637247, 37.407032, 23.971619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.296928, 37.198822, 24.000460> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095170, 0.017689, -0.995304,
		0.516804, -0.853664, -0.064588,
		-0.850797, -0.520524, 0.072102,
		30.041689, 37.042664, 24.022091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.691082, 36.874172, 23.396061>,  <30.637247, 37.407032, 23.971619>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.691082, 36.874172, 23.396061> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.302546, 36.906803, 23.485365>,  <30.069424, 36.926380, 23.538946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.302546, 36.906803, 23.485365>,  <30.691082, 36.874172, 23.396061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.302546, 36.906803, 23.485365> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233846, -0.159633, -0.959079,
		-0.042594, -0.983800, 0.174133,
		-0.971340, 0.081571, 0.223259,
		30.011143, 36.931274, 23.552341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.081556, 36.198948, 23.405293>,  <30.691082, 36.874172, 23.396061>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.081556, 36.198948, 23.405293> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.449492, 36.269054, 23.264904>,  <31.670252, 36.311119, 23.180670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.449492, 36.269054, 23.264904>,  <31.081556, 36.198948, 23.405293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.449492, 36.269054, 23.264904> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375249, -0.132185, 0.917451,
		0.114409, -0.975606, -0.187358,
		0.919836, 0.175271, -0.350972,
		31.725443, 36.321636, 23.159613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.495892, 35.858269, 23.901098>,  <31.081556, 36.198948, 23.405293>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.495892, 35.858269, 23.901098> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.767790, 36.077152, 23.705750>,  <31.930929, 36.208481, 23.588539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.767790, 36.077152, 23.705750>,  <31.495892, 35.858269, 23.901098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.767790, 36.077152, 23.705750> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612612, -0.057455, 0.788293,
		0.403301, -0.835023, -0.374281,
		0.679747, 0.547208, -0.488373,
		31.971714, 36.241314, 23.559238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.111614, 35.525223, 23.811228>,  <31.495892, 35.858269, 23.901098>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.111614, 35.525223, 23.811228> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.157349, 35.922169, 23.829721>,  <32.184788, 36.160336, 23.840816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.157349, 35.922169, 23.829721>,  <32.111614, 35.525223, 23.811228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.157349, 35.922169, 23.829721> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483953, -0.096278, 0.869782,
		0.867593, -0.077071, -0.491266,
		0.114333, 0.992366, 0.046232,
		32.191650, 36.219879, 23.843592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.821278, 35.475243, 23.953913>,  <32.111614, 35.525223, 23.811228>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.821278, 35.475243, 23.953913> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.717819, 35.857777, 24.008343>,  <32.655743, 36.087299, 24.041000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.717819, 35.857777, 24.008343>,  <32.821278, 35.475243, 23.953913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.717819, 35.857777, 24.008343> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590498, 0.045050, 0.805781,
		0.764469, 0.288766, -0.576369,
		-0.258648, 0.956339, 0.136076,
		32.640224, 36.144680, 24.049166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.393497, 35.822174, 23.883343>,  <32.821278, 35.475243, 23.953913>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.393497, 35.822174, 23.883343> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.167221, 36.040813, 24.130314>,  <33.031456, 36.171997, 24.278498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.167221, 36.040813, 24.130314>,  <33.393497, 35.822174, 23.883343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.167221, 36.040813, 24.130314> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792130, 0.152104, 0.591095,
		0.229180, 0.823462, -0.519024,
		-0.565691, 0.546602, 0.617430,
		32.997513, 36.204796, 24.315542>
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
