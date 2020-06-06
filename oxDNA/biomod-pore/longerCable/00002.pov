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
	<23.897076, 34.826019, 35.111694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.236591, 34.744030, 34.916740>,  <24.440302, 34.694836, 34.799770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.236591, 34.744030, 34.916740>,  <23.897076, 34.826019, 35.111694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.236591, 34.744030, 34.916740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070077, -0.870053, 0.487952,
		-0.524064, -0.448324, -0.724129,
		0.848791, -0.204974, -0.487380,
		24.491228, 34.682537, 34.770527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.518454, 35.120274, 35.395767>,  <23.897076, 34.826019, 35.111694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.518454, 35.120274, 35.395767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.384211, 35.495396, 35.431293>,  <24.303665, 35.720470, 35.452610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.384211, 35.495396, 35.431293>,  <24.518454, 35.120274, 35.395767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.384211, 35.495396, 35.431293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675774, 0.173999, 0.716278,
		0.656276, 0.300407, -0.692140,
		-0.335607, 0.937806, 0.088816,
		24.283529, 35.776737, 35.457939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.123108, 35.529594, 35.414753>,  <24.518454, 35.120274, 35.395767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.123108, 35.529594, 35.414753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.809031, 35.729580, 35.560909>,  <24.620584, 35.849571, 35.648605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.809031, 35.729580, 35.560909>,  <25.123108, 35.529594, 35.414753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.809031, 35.729580, 35.560909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579670, 0.385841, 0.717712,
		0.217843, 0.775350, -0.592771,
		-0.785193, 0.499960, 0.365394,
		24.573473, 35.879566, 35.670528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.904671, 35.738800, 35.625813>,  <25.123108, 35.529594, 35.414753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.904671, 35.738800, 35.625813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.848772, 36.074352, 35.415382>,  <25.815233, 36.275684, 35.289124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.848772, 36.074352, 35.415382>,  <25.904671, 35.738800, 35.625813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.848772, 36.074352, 35.415382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962646, -0.009338, -0.270604,
		-0.231916, -0.544241, -0.806236,
		-0.139745, 0.838877, -0.526077,
		25.806849, 36.326015, 35.257561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.078617, 35.747070, 34.837826>,  <25.904671, 35.738800, 35.625813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.078617, 35.747070, 34.837826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.158869, 36.104992, 34.997360>,  <26.207020, 36.319744, 35.093079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.158869, 36.104992, 34.997360>,  <26.078617, 35.747070, 34.837826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.158869, 36.104992, 34.997360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934535, -0.052664, -0.351952,
		-0.293925, 0.443334, -0.846795,
		0.200628, 0.894808, 0.398832,
		26.219057, 36.373436, 35.117008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.382488, 36.078716, 34.364552>,  <26.078617, 35.747070, 34.837826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.382488, 36.078716, 34.364552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.507452, 36.251369, 34.703041>,  <26.582430, 36.354961, 34.906136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.507452, 36.251369, 34.703041>,  <26.382488, 36.078716, 34.364552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.507452, 36.251369, 34.703041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938339, -0.001379, -0.345713,
		-0.148055, 0.902048, -0.405450,
		0.312409, 0.431634, 0.846223,
		26.601175, 36.380859, 34.956909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.986738, 35.696808, 33.877823>,  <26.382488, 36.078716, 34.364552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.986738, 35.696808, 33.877823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.353682, 35.549980, 33.939423>,  <26.573847, 35.461884, 33.976383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.353682, 35.549980, 33.939423>,  <25.986738, 35.696808, 33.877823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.353682, 35.549980, 33.939423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347727, 0.550637, -0.758871,
		0.193761, 0.749705, 0.632771,
		0.917356, -0.367071, 0.154001,
		26.628889, 35.439857, 33.985622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.184538, 36.377125, 33.598392>,  <25.986738, 35.696808, 33.877823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.184538, 36.377125, 33.598392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.391972, 36.665230, 33.414089>,  <26.516432, 36.838093, 33.303509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.391972, 36.665230, 33.414089>,  <26.184538, 36.377125, 33.598392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.391972, 36.665230, 33.414089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197462, -0.625200, -0.755072,
		-0.831913, 0.300586, -0.466442,
		0.518584, 0.720259, -0.460758,
		26.547546, 36.881306, 33.275864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.882410, 36.516636, 32.935497>,  <26.184538, 36.377125, 33.598392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.882410, 36.516636, 32.935497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.274866, 36.593895, 32.932430>,  <26.510340, 36.640251, 32.930592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.274866, 36.593895, 32.932430>,  <25.882410, 36.516636, 32.935497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.274866, 36.593895, 32.932430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124587, -0.662190, -0.738907,
		-0.147793, 0.724016, -0.673764,
		0.981140, 0.193148, -0.007664,
		26.569208, 36.651840, 32.930130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.986898, 36.671944, 32.277733>,  <25.882410, 36.516636, 32.935497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.986898, 36.671944, 32.277733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.336132, 36.561249, 32.438301>,  <26.545673, 36.494831, 32.534641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.336132, 36.561249, 32.438301>,  <25.986898, 36.671944, 32.277733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.336132, 36.561249, 32.438301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199281, -0.548851, -0.811819,
		0.444982, 0.788782, -0.424044,
		0.873085, -0.276741, 0.401418,
		26.598057, 36.478226, 32.558727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.430994, 36.688694, 31.687614>,  <25.986898, 36.671944, 32.277733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.430994, 36.688694, 31.687614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.643320, 36.480335, 31.955017>,  <26.770716, 36.355320, 32.115459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.643320, 36.480335, 31.955017>,  <26.430994, 36.688694, 31.687614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.643320, 36.480335, 31.955017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176698, -0.703454, -0.688426,
		0.828861, 0.483552, -0.281365,
		0.530817, -0.520893, 0.668509,
		26.802565, 36.324066, 32.155571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.948364, 36.523182, 31.360529>,  <26.430994, 36.688694, 31.687614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.948364, 36.523182, 31.360529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.906639, 36.264156, 31.662464>,  <26.881603, 36.108742, 31.843626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.906639, 36.264156, 31.662464>,  <26.948364, 36.523182, 31.360529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.906639, 36.264156, 31.662464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008959, -0.759560, -0.650376,
		0.994504, -0.061080, 0.085033,
		-0.104313, -0.647564, 0.754838,
		26.875345, 36.069889, 31.888916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.930573, 35.827866, 31.172583>,  <26.948364, 36.523182, 31.360529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.930573, 35.827866, 31.172583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.239576, 35.621727, 31.320986>,  <27.424978, 35.498043, 31.410028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.239576, 35.621727, 31.320986>,  <26.930573, 35.827866, 31.172583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.239576, 35.621727, 31.320986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123972, 0.450621, 0.884065,
		-0.622787, -0.728942, 0.284220,
		0.772507, -0.515349, 0.371009,
		27.471329, 35.467121, 31.432289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.766174, 35.323807, 31.825533>,  <26.930573, 35.827866, 31.172583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.766174, 35.323807, 31.825533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.129198, 35.490292, 31.803223>,  <27.347012, 35.590183, 31.789837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.129198, 35.490292, 31.803223>,  <26.766174, 35.323807, 31.825533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.129198, 35.490292, 31.803223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217148, 0.578829, 0.786005,
		0.359424, -0.701234, 0.615699,
		0.907558, 0.416207, -0.055774,
		27.401464, 35.615154, 31.786489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.069111, 35.233784, 32.498951>,  <26.766174, 35.323807, 31.825533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.069111, 35.233784, 32.498951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.174433, 35.560425, 32.293495>,  <27.237627, 35.756409, 32.170223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.174433, 35.560425, 32.293495>,  <27.069111, 35.233784, 32.498951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.174433, 35.560425, 32.293495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188853, 0.565757, 0.802654,
		0.946047, -0.114342, 0.303186,
		0.263306, 0.816606, -0.513639,
		27.253424, 35.805408, 32.139404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.586302, 35.640545, 32.924522>,  <27.069111, 35.233784, 32.498951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.586302, 35.640545, 32.924522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.355145, 35.865856, 32.688297>,  <27.216450, 36.001041, 32.546562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.355145, 35.865856, 32.688297>,  <27.586302, 35.640545, 32.924522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.355145, 35.865856, 32.688297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022329, 0.712444, 0.701374,
		0.815808, 0.418505, -0.399138,
		-0.577892, 0.563274, -0.590562,
		27.181776, 36.034840, 32.511127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.823277, 36.281124, 32.921909>,  <27.586302, 35.640545, 32.924522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.823277, 36.281124, 32.921909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.433496, 36.324554, 32.843266>,  <27.199629, 36.350613, 32.796078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.433496, 36.324554, 32.843266>,  <27.823277, 36.281124, 32.921909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.433496, 36.324554, 32.843266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056779, 0.727875, 0.683355,
		0.217301, 0.677060, -0.703115,
		-0.974452, 0.108572, -0.196610,
		27.141161, 36.357124, 32.784283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.758465, 36.956444, 32.951828>,  <27.823277, 36.281124, 32.921909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.758465, 36.956444, 32.951828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.384098, 36.816032, 32.963390>,  <27.159477, 36.731785, 32.970325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.384098, 36.816032, 32.963390>,  <27.758465, 36.956444, 32.951828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.384098, 36.816032, 32.963390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257130, 0.737022, 0.625045,
		-0.240712, 0.577559, -0.780053,
		-0.935917, -0.351031, 0.028902,
		27.103323, 36.710724, 32.972061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.473137, 37.554970, 32.851425>,  <27.758465, 36.956444, 32.951828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.473137, 37.554970, 32.851425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.203133, 37.318256, 33.027676>,  <27.041130, 37.176228, 33.133427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.203133, 37.318256, 33.027676>,  <27.473137, 37.554970, 32.851425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.203133, 37.318256, 33.027676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285674, 0.760256, 0.583438,
		-0.680258, 0.267952, -0.682239,
		-0.675010, -0.591787, 0.440624,
		27.000629, 37.140720, 33.159863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.839224, 37.779003, 32.873276>,  <27.473137, 37.554970, 32.851425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.839224, 37.779003, 32.873276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.845087, 37.548229, 33.199940>,  <26.848604, 37.409763, 33.395939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.845087, 37.548229, 33.199940>,  <26.839224, 37.779003, 32.873276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.845087, 37.548229, 33.199940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171495, 0.803192, 0.570502,
		-0.985076, -0.148414, -0.087170,
		0.014656, -0.576937, 0.816657,
		26.849483, 37.375149, 33.444939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.228708, 37.990486, 33.195736>,  <26.839224, 37.779003, 32.873276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.228708, 37.990486, 33.195736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.496426, 37.840092, 33.452072>,  <26.657055, 37.749855, 33.605873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.496426, 37.840092, 33.452072>,  <26.228708, 37.990486, 33.195736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.496426, 37.840092, 33.452072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171178, 0.761277, 0.625425,
		-0.723012, -0.528290, 0.445156,
		0.669292, -0.375989, 0.640844,
		26.697214, 37.727295, 33.644325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.894875, 37.904758, 33.813354>,  <26.228708, 37.990486, 33.195736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.894875, 37.904758, 33.813354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.289959, 37.956249, 33.848808>,  <26.527010, 37.987144, 33.870079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.289959, 37.956249, 33.848808>,  <25.894875, 37.904758, 33.813354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.289959, 37.956249, 33.848808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154689, 0.724208, 0.672008,
		0.022316, -0.677460, 0.735221,
		0.987711, 0.128727, 0.088634,
		26.586273, 37.994869, 33.875397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.070112, 37.797775, 34.537041>,  <25.894875, 37.904758, 33.813354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.070112, 37.797775, 34.537041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.306704, 38.061760, 34.351742>,  <26.448658, 38.220150, 34.240562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.306704, 38.061760, 34.351742>,  <26.070112, 37.797775, 34.537041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.306704, 38.061760, 34.351742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052494, 0.604816, 0.794633,
		0.804610, -0.445692, 0.392380,
		0.591479, 0.659967, -0.463245,
		26.484148, 38.259750, 34.212769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.824650, 38.010105, 34.887825>,  <26.070112, 37.797775, 34.537041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.824650, 38.010105, 34.887825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.584927, 38.273693, 34.706017>,  <26.441093, 38.431847, 34.596931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.584927, 38.273693, 34.706017>,  <26.824650, 38.010105, 34.887825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.584927, 38.273693, 34.706017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076030, 0.612068, 0.787142,
		0.796900, 0.437183, -0.416918,
		-0.599307, 0.658972, -0.454518,
		26.405134, 38.471386, 34.569660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.135960, 38.650257, 34.889179>,  <26.824650, 38.010105, 34.887825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.135960, 38.650257, 34.889179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.740295, 38.705811, 34.870094>,  <26.502897, 38.739143, 34.858643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.740295, 38.705811, 34.870094>,  <27.135960, 38.650257, 34.889179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.740295, 38.705811, 34.870094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050963, 0.629368, 0.775435,
		0.137721, 0.764597, -0.629623,
		-0.989159, 0.138881, -0.047711,
		26.443548, 38.747475, 34.855782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.872099, 39.356644, 34.903095>,  <27.135960, 38.650257, 34.889179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.872099, 39.356644, 34.903095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.576231, 39.163475, 35.090576>,  <26.398710, 39.047573, 35.203064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.576231, 39.163475, 35.090576>,  <26.872099, 39.356644, 34.903095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.576231, 39.163475, 35.090576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093142, 0.616302, 0.781982,
		-0.666495, 0.622063, -0.410880,
		-0.739668, -0.482917, 0.468702,
		26.354330, 39.018600, 35.231186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.441116, 39.845051, 35.312965>,  <26.872099, 39.356644, 34.903095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.441116, 39.845051, 35.312965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.349890, 39.494373, 35.482384>,  <26.295155, 39.283966, 35.584034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.349890, 39.494373, 35.482384>,  <26.441116, 39.845051, 35.312965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.349890, 39.494373, 35.482384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081014, 0.416418, 0.905557,
		-0.970270, 0.240839, -0.023946,
		-0.228065, -0.876694, 0.423549,
		26.281471, 39.231365, 35.609447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.868549, 39.916046, 35.825916>,  <26.441116, 39.845051, 35.312965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.868549, 39.916046, 35.825916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.121264, 39.615650, 35.902718>,  <26.272892, 39.435413, 35.948799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.121264, 39.615650, 35.902718>,  <25.868549, 39.916046, 35.825916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.121264, 39.615650, 35.902718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000765, 0.248304, 0.968682,
		-0.775143, -0.611852, 0.157449,
		0.631785, -0.750988, 0.192003,
		26.310799, 39.390354, 35.960320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.593704, 39.486530, 36.311176>,  <25.868549, 39.916046, 35.825916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.593704, 39.486530, 36.311176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.988142, 39.430058, 36.346237>,  <26.224806, 39.396175, 36.367271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.988142, 39.430058, 36.346237>,  <25.593704, 39.486530, 36.311176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.988142, 39.430058, 36.346237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080888, 0.052939, 0.995316,
		-0.145161, -0.988567, 0.040782,
		0.986096, -0.141183, 0.087648,
		26.283970, 39.387703, 36.372532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.789944, 38.892448, 36.829906>,  <25.593704, 39.486530, 36.311176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.789944, 38.892448, 36.829906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.093578, 39.152088, 36.810085>,  <26.275759, 39.307873, 36.798191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.093578, 39.152088, 36.810085>,  <25.789944, 38.892448, 36.829906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.093578, 39.152088, 36.810085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064460, 0.150694, 0.986477,
		0.647792, -0.745626, 0.156231,
		0.759085, 0.649102, -0.049555,
		26.321304, 39.346817, 36.795219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.211424, 38.710911, 37.395054>,  <25.789944, 38.892448, 36.829906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.211424, 38.710911, 37.395054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.306437, 39.089146, 37.306103>,  <26.363443, 39.316086, 37.252731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.306437, 39.089146, 37.306103>,  <26.211424, 38.710911, 37.395054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.306437, 39.089146, 37.306103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048159, 0.217182, 0.974942,
		0.970185, -0.242289, 0.006049,
		0.237531, 0.945583, -0.222375,
		26.377695, 39.372822, 37.239391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.726061, 38.824883, 37.985428>,  <26.211424, 38.710911, 37.395054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.726061, 38.824883, 37.985428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.595463, 39.171623, 37.834717>,  <26.517103, 39.379669, 37.744289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.595463, 39.171623, 37.834717>,  <26.726061, 38.824883, 37.985428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.595463, 39.171623, 37.834717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331557, 0.268258, 0.904493,
		0.885139, 0.420235, 0.199827,
		-0.326495, 0.866856, -0.376777,
		26.497515, 39.431679, 37.721684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.820021, 39.369877, 38.546570>,  <26.726061, 38.824883, 37.985428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.820021, 39.369877, 38.546570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.549017, 39.495251, 38.280415>,  <26.386414, 39.570477, 38.120724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.549017, 39.495251, 38.280415>,  <26.820021, 39.369877, 38.546570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.549017, 39.495251, 38.280415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605968, 0.274871, 0.746491,
		0.416871, 0.908958, 0.003703,
		-0.677511, 0.313435, -0.665385,
		26.345764, 39.589283, 38.080799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.237186, 39.757458, 38.790600>,  <26.820021, 39.369877, 38.546570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.237186, 39.757458, 38.790600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.271532, 40.145985, 38.701900>,  <26.292139, 40.379101, 38.648682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.271532, 40.145985, 38.701900>,  <26.237186, 39.757458, 38.790600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.271532, 40.145985, 38.701900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262593, -0.192640, -0.945481,
		-0.961079, 0.139411, 0.238520,
		0.085862, 0.971316, -0.221751,
		26.297291, 40.437378, 38.635376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.637728, 39.988415, 38.461025>,  <26.237186, 39.757458, 38.790600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.637728, 39.988415, 38.461025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.969595, 40.186146, 38.357262>,  <26.168716, 40.304783, 38.295006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.969595, 40.186146, 38.357262>,  <25.637728, 39.988415, 38.461025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.969595, 40.186146, 38.357262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052175, -0.393976, -0.917639,
		-0.555811, 0.774872, -0.301078,
		0.829670, 0.494325, -0.259405,
		26.218496, 40.334442, 38.279442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.435879, 40.326706, 37.762203>,  <25.637728, 39.988415, 38.461025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.435879, 40.326706, 37.762203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.812157, 40.198147, 37.805637>,  <26.037924, 40.121010, 37.831699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.812157, 40.198147, 37.805637>,  <25.435879, 40.326706, 37.762203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.812157, 40.198147, 37.805637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073213, -0.120202, -0.990046,
		0.331255, 0.939283, -0.089542,
		0.940696, -0.321402, 0.108585,
		26.094366, 40.101727, 37.838215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.923250, 40.546600, 37.200912>,  <25.435879, 40.326706, 37.762203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.923250, 40.546600, 37.200912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.119961, 40.224312, 37.332951>,  <26.237988, 40.030937, 37.412174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.119961, 40.224312, 37.332951>,  <25.923250, 40.546600, 37.200912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.119961, 40.224312, 37.332951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271425, -0.218365, -0.937361,
		0.827337, 0.550568, 0.111308,
		0.491775, -0.805725, 0.330099,
		26.267492, 39.982594, 37.431980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.609461, 40.581219, 36.903904>,  <25.923250, 40.546600, 37.200912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.609461, 40.581219, 36.903904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.529179, 40.203560, 37.008446>,  <26.481010, 39.976963, 37.071171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.529179, 40.203560, 37.008446>,  <26.609461, 40.581219, 36.903904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.529179, 40.203560, 37.008446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302957, -0.313520, -0.899957,
		0.931630, -0.101447, 0.348961,
		-0.200704, -0.944147, 0.261351,
		26.468967, 39.920315, 37.086849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.246710, 40.266823, 36.718292>,  <26.609461, 40.581219, 36.903904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.246710, 40.266823, 36.718292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.951145, 39.997311, 36.720146>,  <26.773806, 39.835602, 36.721260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.951145, 39.997311, 36.720146>,  <27.246710, 40.266823, 36.718292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.951145, 39.997311, 36.720146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301835, -0.337146, -0.891756,
		0.602415, -0.657530, 0.452494,
		-0.738913, -0.673785, 0.004636,
		26.729471, 39.795174, 36.721539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.529331, 39.652874, 36.588314>,  <27.246710, 40.266823, 36.718292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.529331, 39.652874, 36.588314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.153086, 39.655117, 36.452541>,  <26.927338, 39.656464, 36.371078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.153086, 39.655117, 36.452541>,  <27.529331, 39.652874, 36.588314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.153086, 39.655117, 36.452541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290257, -0.505260, -0.812689,
		-0.176061, -0.862949, 0.473626,
		-0.940613, 0.005609, -0.339434,
		26.870901, 39.656799, 36.350712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.250546, 38.923752, 36.428131>,  <27.529331, 39.652874, 36.588314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.250546, 38.923752, 36.428131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.151625, 39.242020, 36.206951>,  <27.092272, 39.432980, 36.074242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.151625, 39.242020, 36.206951>,  <27.250546, 38.923752, 36.428131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.151625, 39.242020, 36.206951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480968, -0.394602, -0.782917,
		-0.841136, -0.459572, -0.285103,
		-0.247304, 0.795665, -0.552954,
		27.077433, 39.480721, 36.041065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.957298, 38.903542, 36.903011>,  <27.250546, 38.923752, 36.428131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.957298, 38.903542, 36.903011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.998909, 38.965343, 37.296013>,  <28.023876, 39.002426, 37.531815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.998909, 38.965343, 37.296013>,  <27.957298, 38.903542, 36.903011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.998909, 38.965343, 37.296013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841381, 0.513085, -0.169773,
		-0.530337, 0.844317, -0.076626,
		0.104026, 0.154508, 0.982500,
		28.030117, 39.011696, 37.590763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.150290, 39.618710, 37.077339>,  <27.957298, 38.903542, 36.903011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.150290, 39.618710, 37.077339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.295113, 39.426960, 37.397118>,  <28.382008, 39.311913, 37.588985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.295113, 39.426960, 37.397118>,  <28.150290, 39.618710, 37.077339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.295113, 39.426960, 37.397118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837108, 0.544501, -0.052617,
		-0.410078, 0.688275, 0.598426,
		0.362058, -0.479370, 0.799449,
		28.403730, 39.283150, 37.636951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.474651, 40.049717, 37.731617>,  <28.150290, 39.618710, 37.077339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.474651, 40.049717, 37.731617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.633209, 39.682522, 37.736801>,  <28.728344, 39.462204, 37.739910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.633209, 39.682522, 37.736801>,  <28.474651, 40.049717, 37.731617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.633209, 39.682522, 37.736801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914627, 0.396087, 0.081071,
		-0.079557, -0.020281, 0.996624,
		0.396394, -0.917989, 0.012961,
		28.752127, 39.407124, 37.740688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.096066, 40.149685, 37.139088>,  <28.474651, 40.049717, 37.731617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.096066, 40.149685, 37.139088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.282579, 40.467476, 37.294720>,  <29.394487, 40.658150, 37.388100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.282579, 40.467476, 37.294720>,  <29.096066, 40.149685, 37.139088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.282579, 40.467476, 37.294720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795814, -0.184643, -0.576704,
		-0.386338, 0.578543, -0.718353,
		0.466287, 0.794478, 0.389078,
		29.422466, 40.705818, 37.411442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.363531, 40.809132, 36.654377>,  <29.096066, 40.149685, 37.139088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.363531, 40.809132, 36.654377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.601440, 40.770531, 36.973610>,  <29.744186, 40.747368, 37.165150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.601440, 40.770531, 36.973610>,  <29.363531, 40.809132, 36.654377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.601440, 40.770531, 36.973610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777516, -0.183171, -0.601595,
		0.204243, 0.978333, -0.033910,
		0.594772, -0.096506, 0.798081,
		29.779873, 40.741577, 37.213036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.958160, 40.700607, 36.150055>,  <29.363531, 40.809132, 36.654377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.958160, 40.700607, 36.150055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.913095, 41.098057, 36.147999>,  <29.886057, 41.336525, 36.146767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.913095, 41.098057, 36.147999>,  <29.958160, 40.700607, 36.150055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.913095, 41.098057, 36.147999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622233, 0.066519, -0.780001,
		-0.774683, -0.091074, -0.625757,
		-0.112662, 0.993620, -0.005138,
		29.879297, 41.396141, 36.146458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.721756, 41.033676, 35.479195>,  <29.958160, 40.700607, 36.150055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.721756, 41.033676, 35.479195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.951561, 41.281700, 35.692913>,  <30.089443, 41.430511, 35.821144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.951561, 41.281700, 35.692913>,  <29.721756, 41.033676, 35.479195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.951561, 41.281700, 35.692913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757692, -0.155993, -0.633694,
		-0.309580, 0.768894, -0.559431,
		0.574511, 0.620055, 0.534293,
		30.123915, 41.467716, 35.853203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.192717, 41.450012, 35.001606>,  <29.721756, 41.033676, 35.479195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.192717, 41.450012, 35.001606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.382368, 41.421570, 35.352638>,  <30.496159, 41.404507, 35.563255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.382368, 41.421570, 35.352638>,  <30.192717, 41.450012, 35.001606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.382368, 41.421570, 35.352638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793164, -0.398203, -0.460788,
		0.382218, 0.914538, -0.132403,
		0.474131, -0.071103, 0.877579,
		30.524607, 41.400238, 35.615913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.938276, 41.844826, 34.949539>,  <30.192717, 41.450012, 35.001606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.938276, 41.844826, 34.949539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.876608, 41.524258, 35.180695>,  <30.839607, 41.331917, 35.319386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.876608, 41.524258, 35.180695>,  <30.938276, 41.844826, 34.949539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.876608, 41.524258, 35.180695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777840, -0.459102, -0.429174,
		0.609258, 0.383337, 0.694159,
		-0.154171, -0.801423, 0.577886,
		30.830357, 41.283833, 35.354061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.616337, 41.720276, 35.458611>,  <30.938276, 41.844826, 34.949539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.616337, 41.720276, 35.458611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.383516, 41.418884, 35.336308>,  <31.243824, 41.238049, 35.262928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.383516, 41.418884, 35.336308>,  <31.616337, 41.720276, 35.458611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.383516, 41.418884, 35.336308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810656, -0.508230, -0.290758,
		0.063687, -0.417096, 0.906628,
		-0.582049, -0.753481, -0.305754,
		31.208902, 41.192841, 35.244583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.241915, 41.666546, 36.171398>,  <31.616337, 41.720276, 35.458611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.241915, 41.666546, 36.171398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.527315, 41.432384, 36.017399>,  <31.698555, 41.291889, 35.924999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.527315, 41.432384, 36.017399>,  <31.241915, 41.666546, 36.171398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.527315, 41.432384, 36.017399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698771, 0.554263, 0.452229,
		-0.051345, -0.591690, 0.804529,
		0.713500, -0.585401, -0.384997,
		31.741365, 41.256763, 35.901901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.699003, 41.651157, 36.691887>,  <31.241915, 41.666546, 36.171398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.699003, 41.651157, 36.691887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.935394, 41.524586, 36.395073>,  <32.077229, 41.448643, 36.216984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.935394, 41.524586, 36.395073>,  <31.699003, 41.651157, 36.691887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.935394, 41.524586, 36.395073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781021, 0.454628, 0.428158,
		0.201871, -0.832579, 0.515811,
		0.590977, -0.316426, -0.742038,
		32.112686, 41.429657, 36.172462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.241726, 41.179321, 37.044426>,  <31.699003, 41.651157, 36.691887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.241726, 41.179321, 37.044426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.343124, 41.325771, 36.686275>,  <32.403961, 41.413643, 36.471386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.343124, 41.325771, 36.686275>,  <32.241726, 41.179321, 37.044426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.343124, 41.325771, 36.686275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929828, 0.163029, 0.329912,
		0.266762, -0.916173, -0.299108,
		0.253493, 0.366127, -0.895373,
		32.419170, 41.435608, 36.417664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.802452, 40.969017, 37.044800>,  <32.241726, 41.179321, 37.044426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.802452, 40.969017, 37.044800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.812576, 41.256790, 36.767159>,  <32.818649, 41.429455, 36.600574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.812576, 41.256790, 36.767159>,  <32.802452, 40.969017, 37.044800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.812576, 41.256790, 36.767159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979221, 0.121910, 0.162062,
		0.201211, -0.683779, -0.701399,
		0.025307, 0.719433, -0.694101,
		32.820168, 41.472622, 36.558929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.171158, 40.857136, 36.431408>,  <32.802452, 40.969017, 37.044800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.171158, 40.857136, 36.431408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.174751, 41.230679, 36.574421>,  <33.176907, 41.454803, 36.660229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.174751, 41.230679, 36.574421>,  <33.171158, 40.857136, 36.431408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.174751, 41.230679, 36.574421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929524, -0.139610, 0.341312,
		0.368652, 0.329270, -0.869297,
		0.008979, 0.933858, 0.357532,
		33.177444, 41.510838, 36.681679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.723270, 41.381348, 36.269321>,  <33.171158, 40.857136, 36.431408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.723270, 41.381348, 36.269321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.612808, 41.460617, 36.645504>,  <33.546532, 41.508179, 36.871216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.612808, 41.460617, 36.645504>,  <33.723270, 41.381348, 36.269321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.612808, 41.460617, 36.645504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946456, -0.114163, 0.301972,
		0.167210, 0.973495, -0.156040,
		-0.276154, 0.198178, 0.940460,
		33.529961, 41.520069, 36.927643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.094475, 42.035740, 36.546688>,  <33.723270, 41.381348, 36.269321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.094475, 42.035740, 36.546688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.984009, 41.772083, 36.826477>,  <33.917728, 41.613888, 36.994350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.984009, 41.772083, 36.826477>,  <34.094475, 42.035740, 36.546688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.984009, 41.772083, 36.826477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945321, -0.054914, 0.321484,
		-0.173493, 0.750009, 0.638268,
		-0.276166, -0.659144, 0.699472,
		33.901157, 41.574341, 37.036320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.162609, 42.289131, 37.279587>,  <34.094475, 42.035740, 36.546688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.162609, 42.289131, 37.279587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.193020, 41.890881, 37.257877>,  <34.211266, 41.651932, 37.244850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.193020, 41.890881, 37.257877>,  <34.162609, 42.289131, 37.279587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.193020, 41.890881, 37.257877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916817, 0.048403, 0.396363,
		-0.392002, -0.079896, 0.916488,
		0.076029, -0.995627, -0.054276,
		34.215828, 41.592194, 37.241596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.383633, 42.007416, 37.903618>,  <34.162609, 42.289131, 37.279587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.383633, 42.007416, 37.903618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.482662, 41.762150, 37.603554>,  <34.542080, 41.614990, 37.423515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.482662, 41.762150, 37.603554>,  <34.383633, 42.007416, 37.903618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.482662, 41.762150, 37.603554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967572, 0.196529, 0.158683,
		0.050130, -0.765121, 0.641932,
		0.247570, -0.613161, -0.750162,
		34.556934, 41.578201, 37.378506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.394432, 41.334312, 38.335758>,  <34.383633, 42.007416, 37.903618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.394432, 41.334312, 38.335758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.187176, 41.002155, 38.417713>,  <34.062820, 40.802860, 38.466885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.187176, 41.002155, 38.417713>,  <34.394432, 41.334312, 38.335758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.187176, 41.002155, 38.417713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311672, -0.039767, -0.949357,
		0.796486, -0.555760, -0.238205,
		-0.518142, -0.830391, 0.204888,
		34.031734, 40.753036, 38.479179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.663990, 40.745903, 37.795433>,  <34.394432, 41.334312, 38.335758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.663990, 40.745903, 37.795433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.288342, 40.708221, 37.927597>,  <34.062950, 40.685612, 38.006897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.288342, 40.708221, 37.927597>,  <34.663990, 40.745903, 37.795433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.288342, 40.708221, 37.927597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332955, 0.012251, -0.942863,
		0.084783, -0.995477, -0.042875,
		-0.939123, -0.094214, 0.330410,
		34.006603, 40.679958, 38.026718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.581173, 40.309452, 37.270966>,  <34.663990, 40.745903, 37.795433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.581173, 40.309452, 37.270966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.724098, 40.014545, 37.500320>,  <34.809853, 39.837601, 37.637932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.724098, 40.014545, 37.500320>,  <34.581173, 40.309452, 37.270966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.724098, 40.014545, 37.500320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402766, -0.675525, -0.617613,
		0.842680, -0.010260, -0.538317,
		0.357310, -0.737266, 0.573384,
		34.831291, 39.793365, 37.672337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.133591, 39.872337, 36.912796>,  <34.581173, 40.309452, 37.270966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.133591, 39.872337, 36.912796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.892406, 39.694534, 37.177776>,  <34.747696, 39.587852, 37.336765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.892406, 39.694534, 37.177776>,  <35.133591, 39.872337, 36.912796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.892406, 39.694534, 37.177776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330642, -0.616463, -0.714597,
		0.726026, -0.649910, 0.224729,
		-0.602961, -0.444511, 0.662455,
		34.711517, 39.561180, 37.376514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.075214, 39.208099, 36.685322>,  <35.133591, 39.872337, 36.912796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.075214, 39.208099, 36.685322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.751183, 39.269463, 36.911682>,  <34.556763, 39.306282, 37.047497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.751183, 39.269463, 36.911682>,  <35.075214, 39.208099, 36.685322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.751183, 39.269463, 36.911682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486962, -0.713596, -0.503636,
		0.326559, -0.683554, 0.652773,
		-0.810079, 0.153409, 0.565896,
		34.508160, 39.315487, 37.081451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.792015, 38.625145, 37.003754>,  <35.075214, 39.208099, 36.685322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.792015, 38.625145, 37.003754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.490463, 38.879913, 36.939255>,  <34.309532, 39.032772, 36.900555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.490463, 38.879913, 36.939255>,  <34.792015, 38.625145, 37.003754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.490463, 38.879913, 36.939255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498294, -0.714235, -0.491499,
		-0.428215, -0.290181, 0.855819,
		-0.753880, 0.636917, -0.161251,
		34.264297, 39.070988, 36.890881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.051517, 38.413425, 37.187019>,  <34.792015, 38.625145, 37.003754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.051517, 38.413425, 37.187019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.976524, 38.702682, 36.921112>,  <33.931530, 38.876236, 36.761570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.976524, 38.702682, 36.921112>,  <34.051517, 38.413425, 37.187019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.976524, 38.702682, 36.921112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732451, -0.553859, -0.395924,
		-0.654497, 0.412680, 0.633505,
		-0.187483, 0.723142, -0.664767,
		33.920280, 38.919624, 36.721684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.320034, 38.587730, 37.169384>,  <34.051517, 38.413425, 37.187019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.320034, 38.587730, 37.169384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.454758, 38.679615, 36.804134>,  <33.535591, 38.734745, 36.584984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.454758, 38.679615, 36.804134>,  <33.320034, 38.587730, 37.169384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.454758, 38.679615, 36.804134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837772, -0.369533, -0.401975,
		-0.429766, 0.900378, 0.067981,
		0.336808, 0.229707, -0.913124,
		33.555801, 38.748528, 36.530197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.747509, 38.856438, 36.770134>,  <33.320034, 38.587730, 37.169384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.747509, 38.856438, 36.770134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.007629, 38.771912, 36.478256>,  <33.163704, 38.721195, 36.303131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.007629, 38.771912, 36.478256>,  <32.747509, 38.856438, 36.770134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.007629, 38.771912, 36.478256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759463, -0.158130, -0.631040,
		0.017962, 0.964542, -0.263318,
		0.650303, -0.211315, -0.729694,
		33.202721, 38.708519, 36.259350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.458157, 39.185551, 36.198986>,  <32.747509, 38.856438, 36.770134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.458157, 39.185551, 36.198986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.724911, 38.917633, 36.068367>,  <32.884964, 38.756882, 35.989998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.724911, 38.917633, 36.068367>,  <32.458157, 39.185551, 36.198986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.724911, 38.917633, 36.068367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567273, -0.172190, -0.805328,
		0.483177, 0.722306, -0.494788,
		0.666890, -0.669795, -0.326546,
		32.924976, 38.716694, 35.970402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.724537, 39.319534, 35.460190>,  <32.458157, 39.185551, 36.198986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.724537, 39.319534, 35.460190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.755608, 38.928150, 35.536697>,  <32.774250, 38.693321, 35.582603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.755608, 38.928150, 35.536697>,  <32.724537, 39.319534, 35.460190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.755608, 38.928150, 35.536697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549618, -0.202086, -0.810606,
		0.831798, -0.042163, -0.553475,
		0.077672, -0.978460, 0.191268,
		32.778908, 38.634613, 35.594078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.838634, 39.052662, 34.861183>,  <32.724537, 39.319534, 35.460190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.838634, 39.052662, 34.861183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.724789, 38.735542, 35.076767>,  <32.656483, 38.545273, 35.206116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.724789, 38.735542, 35.076767>,  <32.838634, 39.052662, 34.861183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.724789, 38.735542, 35.076767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571359, -0.311155, -0.759428,
		0.769769, -0.524079, -0.364412,
		-0.284612, -0.792795, 0.538955,
		32.639404, 38.497704, 35.238453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.896370, 38.452435, 34.346596>,  <32.838634, 39.052662, 34.861183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.896370, 38.452435, 34.346596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.660755, 38.320042, 34.641483>,  <32.519386, 38.240604, 34.818417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.660755, 38.320042, 34.641483>,  <32.896370, 38.452435, 34.346596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.660755, 38.320042, 34.641483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578278, -0.464593, -0.670633,
		0.564474, -0.821342, 0.082260,
		-0.589036, -0.330986, 0.737214,
		32.484043, 38.220745, 34.862648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.633442, 37.817982, 34.076023>,  <32.896370, 38.452435, 34.346596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.633442, 37.817982, 34.076023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.387653, 37.862663, 34.388420>,  <32.240181, 37.889473, 34.575859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.387653, 37.862663, 34.388420>,  <32.633442, 37.817982, 34.076023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.387653, 37.862663, 34.388420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693327, -0.548823, -0.467001,
		0.376459, -0.828441, 0.414685,
		-0.614472, 0.111705, 0.780991,
		32.203312, 37.896175, 34.622719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.375050, 37.187054, 34.235947>,  <32.633442, 37.817982, 34.076023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.375050, 37.187054, 34.235947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.119507, 37.435120, 34.418049>,  <31.966181, 37.583958, 34.527309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.119507, 37.435120, 34.418049>,  <32.375050, 37.187054, 34.235947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.119507, 37.435120, 34.418049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769271, -0.507918, -0.387609,
		-0.009149, -0.597842, 0.801562,
		-0.638857, 0.620165, 0.455255,
		31.927849, 37.621170, 34.554626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.907049, 36.786148, 34.726437>,  <32.375050, 37.187054, 34.235947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.907049, 36.786148, 34.726437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.704260, 37.107929, 34.602608>,  <31.582586, 37.300999, 34.528309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.704260, 37.107929, 34.602608>,  <31.907049, 36.786148, 34.726437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.704260, 37.107929, 34.602608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585656, -0.584997, -0.561058,
		-0.632444, -0.103139, 0.767709,
		-0.506974, 0.804451, -0.309574,
		31.552168, 37.349266, 34.509735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.222206, 36.703701, 34.748356>,  <31.907049, 36.786148, 34.726437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.222206, 36.703701, 34.748356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.220867, 36.997055, 34.476433>,  <31.220064, 37.173065, 34.313278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.220867, 36.997055, 34.476433>,  <31.222206, 36.703701, 34.748356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.220867, 36.997055, 34.476433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540733, -0.573180, -0.615688,
		-0.841188, 0.365535, 0.398481,
		-0.003346, 0.733381, -0.679809,
		31.219864, 37.217068, 34.272491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.562679, 36.645348, 34.482468>,  <31.222206, 36.703701, 34.748356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.562679, 36.645348, 34.482468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.763494, 36.881851, 34.230003>,  <30.883984, 37.023754, 34.078526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.763494, 36.881851, 34.230003>,  <30.562679, 36.645348, 34.482468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.763494, 36.881851, 34.230003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458556, -0.436788, -0.773914,
		-0.733269, 0.677960, 0.051841,
		0.502039, 0.591259, -0.631165,
		30.914106, 37.059231, 34.040653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.020868, 36.861320, 34.149719>,  <30.562679, 36.645348, 34.482468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.020868, 36.861320, 34.149719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.350885, 36.896545, 33.926453>,  <30.548895, 36.917683, 33.792492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.350885, 36.896545, 33.926453>,  <30.020868, 36.861320, 34.149719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.350885, 36.896545, 33.926453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484145, -0.399207, -0.778612,
		-0.291394, 0.912621, -0.286725,
		0.825041, 0.088066, -0.558168,
		30.598398, 36.922966, 33.759003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.772297, 37.109165, 33.482380>,  <30.020868, 36.861320, 34.149719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.772297, 37.109165, 33.482380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.129940, 36.965176, 33.375797>,  <30.344526, 36.878784, 33.311848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.129940, 36.965176, 33.375797>,  <29.772297, 37.109165, 33.482380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.129940, 36.965176, 33.375797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374184, -0.273508, -0.886104,
		0.246093, 0.891973, -0.379240,
		0.894106, -0.359969, -0.266453,
		30.398172, 36.857185, 33.295860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.925919, 37.424133, 32.783691>,  <29.772297, 37.109165, 33.482380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.925919, 37.424133, 32.783691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.166164, 37.105255, 32.808147>,  <30.310312, 36.913929, 32.822819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.166164, 37.105255, 32.808147>,  <29.925919, 37.424133, 32.783691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.166164, 37.105255, 32.808147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223340, -0.240705, -0.944553,
		0.767712, 0.553658, -0.322617,
		0.600615, -0.797198, 0.061138,
		30.346348, 36.866096, 32.826488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.352676, 37.603092, 32.278603>,  <29.925919, 37.424133, 32.783691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.352676, 37.603092, 32.278603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.414137, 37.213192, 32.343403>,  <30.451014, 36.979252, 32.382282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.414137, 37.213192, 32.343403>,  <30.352676, 37.603092, 32.278603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.414137, 37.213192, 32.343403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237114, -0.195530, -0.951601,
		0.959254, 0.107803, -0.261172,
		0.153653, -0.974755, 0.162001,
		30.460232, 36.920765, 32.392002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.841116, 37.407265, 31.748753>,  <30.352676, 37.603092, 32.278603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.841116, 37.407265, 31.748753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.646469, 37.091602, 31.898653>,  <30.529682, 36.902206, 31.988594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.646469, 37.091602, 31.898653>,  <30.841116, 37.407265, 31.748753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.646469, 37.091602, 31.898653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314268, -0.242121, -0.917940,
		0.815133, -0.564456, -0.130187,
		-0.486615, -0.789156, 0.374751,
		30.500484, 36.854855, 32.011078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.096001, 36.800888, 31.401407>,  <30.841116, 37.407265, 31.748753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.096001, 36.800888, 31.401407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.738392, 36.682751, 31.536167>,  <30.523827, 36.611866, 31.617023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.738392, 36.682751, 31.536167>,  <31.096001, 36.800888, 31.401407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.738392, 36.682751, 31.536167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212613, -0.382216, -0.899281,
		0.394366, -0.875604, 0.278914,
		-0.894020, -0.295345, 0.336897,
		30.470186, 36.594147, 31.637236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.004356, 36.238503, 31.128801>,  <31.096001, 36.800888, 31.401407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.004356, 36.238503, 31.128801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.636681, 36.365314, 31.222250>,  <30.416075, 36.441402, 31.278318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.636681, 36.365314, 31.222250>,  <31.004356, 36.238503, 31.128801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.636681, 36.365314, 31.222250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347415, -0.373438, -0.860144,
		-0.185450, -0.871800, 0.453402,
		-0.919191, 0.317032, 0.233622,
		30.360924, 36.460423, 31.292337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.616108, 35.766460, 30.757402>,  <31.004356, 36.238503, 31.128801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.616108, 35.766460, 30.757402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.340590, 36.029549, 30.879364>,  <30.175278, 36.187401, 30.952541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.340590, 36.029549, 30.879364>,  <30.616108, 35.766460, 30.757402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.340590, 36.029549, 30.879364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498214, -0.123938, -0.858151,
		-0.526632, -0.742998, 0.413052,
		-0.688797, 0.657718, 0.304902,
		30.133951, 36.226864, 30.970835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.910202, 35.450439, 30.592470>,  <30.616108, 35.766460, 30.757402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.910202, 35.450439, 30.592470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.877024, 35.847782, 30.624357>,  <29.857117, 36.086189, 30.643490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.877024, 35.847782, 30.624357>,  <29.910202, 35.450439, 30.592470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.877024, 35.847782, 30.624357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392034, 0.041019, -0.919036,
		-0.916204, -0.107481, 0.386029,
		-0.082944, 0.993361, 0.079717,
		29.852140, 36.145790, 30.648272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.256378, 35.547604, 30.364504>,  <29.910202, 35.450439, 30.592470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.256378, 35.547604, 30.364504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.403328, 35.918526, 30.335838>,  <29.491499, 36.141079, 30.318640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.403328, 35.918526, 30.335838>,  <29.256378, 35.547604, 30.364504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.403328, 35.918526, 30.335838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226453, 0.014452, -0.973915,
		-0.902083, 0.374022, 0.215301,
		0.367377, 0.927307, -0.071662,
		29.513540, 36.196716, 30.314341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.673386, 35.980846, 30.107233>,  <29.256378, 35.547604, 30.364504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.673386, 35.980846, 30.107233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.007757, 36.184204, 30.024521>,  <29.208380, 36.306217, 29.974894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.007757, 36.184204, 30.024521>,  <28.673386, 35.980846, 30.107233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.007757, 36.184204, 30.024521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254867, 0.025909, -0.966629,
		-0.486071, 0.860735, 0.151231,
		0.835929, 0.508394, -0.206780,
		29.258535, 36.336723, 29.962486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.471743, 36.565334, 29.689596>,  <28.673386, 35.980846, 30.107233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.471743, 36.565334, 29.689596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.858774, 36.524990, 29.596977>,  <29.090994, 36.500782, 29.541405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.858774, 36.524990, 29.596977>,  <28.471743, 36.565334, 29.689596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.858774, 36.524990, 29.596977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235546, -0.029539, -0.971414,
		0.091141, 0.994462, -0.052339,
		0.967580, -0.100863, -0.231549,
		29.149048, 36.494732, 29.527512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.663277, 36.992313, 29.064737>,  <28.471743, 36.565334, 29.689596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.663277, 36.992313, 29.064737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.010435, 36.795341, 29.090876>,  <29.218731, 36.677158, 29.106558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.010435, 36.795341, 29.090876>,  <28.663277, 36.992313, 29.064737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.010435, 36.795341, 29.090876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125965, 0.090924, -0.987859,
		0.480508, 0.865591, 0.140942,
		0.867897, -0.492428, 0.065345,
		29.270803, 36.647614, 29.110479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.242836, 37.427788, 28.710354>,  <28.663277, 36.992313, 29.064737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.242836, 37.427788, 28.710354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.302794, 37.032341, 28.705193>,  <29.338768, 36.795074, 28.702095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.302794, 37.032341, 28.705193>,  <29.242836, 37.427788, 28.710354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.302794, 37.032341, 28.705193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094486, -0.001332, -0.995525,
		0.984177, 0.150441, -0.093610,
		0.149892, -0.988618, -0.012904,
		29.347761, 36.735756, 28.701321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.647165, 37.288879, 28.051910>,  <29.242836, 37.427788, 28.710354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.647165, 37.288879, 28.051910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.549549, 36.913708, 28.150482>,  <29.490980, 36.688602, 28.209625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.549549, 36.913708, 28.150482>,  <29.647165, 37.288879, 28.051910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.549549, 36.913708, 28.150482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180837, -0.293668, -0.938647,
		0.952755, -0.184504, 0.241280,
		-0.244040, -0.937933, 0.246428,
		29.476337, 36.632328, 28.224411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.202948, 36.775169, 27.785275>,  <29.647165, 37.288879, 28.051910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.202948, 36.775169, 27.785275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.856129, 36.586452, 27.849325>,  <29.648037, 36.473221, 27.887756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.856129, 36.586452, 27.849325>,  <30.202948, 36.775169, 27.785275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.856129, 36.586452, 27.849325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067272, -0.429311, -0.900648,
		0.493666, -0.770131, 0.403971,
		-0.867046, -0.471795, 0.160128,
		29.596014, 36.444916, 27.897364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.336317, 36.140335, 27.618166>,  <30.202948, 36.775169, 27.785275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.336317, 36.140335, 27.618166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.941992, 36.184113, 27.567261>,  <29.705397, 36.210381, 27.536718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.941992, 36.184113, 27.567261>,  <30.336317, 36.140335, 27.618166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.941992, 36.184113, 27.567261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121648, -0.056545, -0.990962,
		-0.115658, -0.992383, 0.042428,
		-0.985812, 0.109451, -0.127261,
		29.646248, 36.216946, 27.529083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.191069, 35.705620, 26.992226>,  <30.336317, 36.140335, 27.618166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.191069, 35.705620, 26.992226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.840759, 35.888371, 27.054565>,  <29.630573, 35.998020, 27.091969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.840759, 35.888371, 27.054565>,  <30.191069, 35.705620, 26.992226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.840759, 35.888371, 27.054565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286224, -0.231494, -0.929778,
		-0.388713, -0.858881, 0.333504,
		-0.875772, 0.456873, 0.155848,
		29.578028, 36.025433, 27.101320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.732775, 35.197662, 26.828083>,  <30.191069, 35.705620, 26.992226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.732775, 35.197662, 26.828083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.543125, 35.544590, 26.767469>,  <29.429335, 35.752747, 26.731100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.543125, 35.544590, 26.767469>,  <29.732775, 35.197662, 26.828083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.543125, 35.544590, 26.767469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460206, -0.390850, -0.797149,
		-0.750611, -0.308209, 0.584457,
		-0.474124, 0.867320, -0.151536,
		29.400888, 35.804787, 26.722008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.080774, 34.983208, 26.613720>,  <29.732775, 35.197662, 26.828083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.080774, 34.983208, 26.613720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.104071, 35.367798, 26.506254>,  <29.118048, 35.598553, 26.441774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.104071, 35.367798, 26.506254>,  <29.080774, 34.983208, 26.613720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.104071, 35.367798, 26.506254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328998, -0.235600, -0.914468,
		-0.942533, 0.141647, 0.302602,
		0.058239, 0.961472, -0.268663,
		29.121542, 35.656239, 26.425655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.515133, 35.134769, 26.217466>,  <29.080774, 34.983208, 26.613720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.515133, 35.134769, 26.217466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.780323, 35.412918, 26.106529>,  <28.939438, 35.579807, 26.039967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.780323, 35.412918, 26.106529>,  <28.515133, 35.134769, 26.217466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.780323, 35.412918, 26.106529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319368, -0.072362, -0.944864,
		-0.677101, 0.714998, 0.174105,
		0.662977, 0.695372, -0.277344,
		28.979216, 35.621529, 26.023327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.165306, 35.390404, 25.582850>,  <28.515133, 35.134769, 26.217466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.165306, 35.390404, 25.582850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.539309, 35.531876, 25.593256>,  <28.763710, 35.616756, 25.599501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.539309, 35.531876, 25.593256>,  <28.165306, 35.390404, 25.582850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.539309, 35.531876, 25.593256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016177, 0.030752, -0.999396,
		-0.354263, 0.934862, 0.023032,
		0.935006, 0.353677, 0.026017,
		28.819811, 35.637978, 25.601061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.168476, 36.000454, 25.105295>,  <28.165306, 35.390404, 25.582850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.168476, 36.000454, 25.105295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.541620, 35.864426, 25.152828>,  <28.765507, 35.782810, 25.181349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.541620, 35.864426, 25.152828>,  <28.168476, 36.000454, 25.105295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.541620, 35.864426, 25.152828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121734, -0.012875, -0.992479,
		0.339042, 0.940312, 0.029388,
		0.932862, -0.340070, 0.118833,
		28.821478, 35.762405, 25.188478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.588362, 36.384808, 24.599739>,  <28.168476, 36.000454, 25.105295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.588362, 36.384808, 24.599739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.860737, 36.108841, 24.697990>,  <29.024162, 35.943260, 24.756941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.860737, 36.108841, 24.697990>,  <28.588362, 36.384808, 24.599739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.860737, 36.108841, 24.697990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312002, -0.030145, -0.949603,
		0.662554, 0.723258, 0.194730,
		0.680938, -0.689919, 0.245630,
		29.065018, 35.901867, 24.771679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.342876, 36.586803, 24.370182>,  <28.588362, 36.384808, 24.599739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.342876, 36.586803, 24.370182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.308434, 36.188789, 24.390114>,  <29.287767, 35.949982, 24.402073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.308434, 36.188789, 24.390114>,  <29.342876, 36.586803, 24.370182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.308434, 36.188789, 24.390114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418164, -0.081494, -0.904709,
		0.904281, -0.057067, 0.423107,
		-0.086109, -0.995039, 0.049831,
		29.282600, 35.890278, 24.405064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.958008, 36.335300, 24.081804>,  <29.342876, 36.586803, 24.370182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.958008, 36.335300, 24.081804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.667555, 36.061382, 24.057205>,  <29.493282, 35.897030, 24.042446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.667555, 36.061382, 24.057205>,  <29.958008, 36.335300, 24.081804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.667555, 36.061382, 24.057205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273396, -0.205509, -0.939692,
		0.630863, -0.699153, 0.336448,
		-0.726131, -0.684800, -0.061497,
		29.449715, 35.855942, 24.038755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.304289, 35.811298, 23.842916>,  <29.958008, 36.335300, 24.081804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.304289, 35.811298, 23.842916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.915745, 35.753731, 23.767284>,  <29.682619, 35.719193, 23.721905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.915745, 35.753731, 23.767284>,  <30.304289, 35.811298, 23.842916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.915745, 35.753731, 23.767284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223487, -0.282995, -0.932720,
		0.080725, -0.948262, 0.307053,
		-0.971358, -0.143917, -0.189079,
		29.624338, 35.710556, 23.710560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.190905, 35.149693, 23.551346>,  <30.304289, 35.811298, 23.842916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.190905, 35.149693, 23.551346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.877129, 35.370815, 23.438873>,  <29.688864, 35.503487, 23.371389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.877129, 35.370815, 23.438873>,  <30.190905, 35.149693, 23.551346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.877129, 35.370815, 23.438873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159573, -0.258208, -0.952819,
		-0.599325, -0.792299, 0.114337,
		-0.784440, 0.552803, -0.281180,
		29.641796, 35.536655, 23.354519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.917564, 34.772266, 22.988382>,  <30.190905, 35.149693, 23.551346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.917564, 34.772266, 22.988382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.766565, 35.138710, 22.934355>,  <29.675966, 35.358574, 22.901939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.766565, 35.138710, 22.934355>,  <29.917564, 34.772266, 22.988382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.766565, 35.138710, 22.934355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011363, -0.141266, -0.989906,
		-0.925940, -0.375223, 0.042918,
		-0.377498, 0.916107, -0.135067,
		29.653316, 35.413544, 22.893835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.504114, 34.641655, 22.379993>,  <29.917564, 34.772266, 22.988382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.504114, 34.641655, 22.379993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.485538, 35.039780, 22.413921>,  <29.474394, 35.278656, 22.434278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.485538, 35.039780, 22.413921>,  <29.504114, 34.641655, 22.379993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.485538, 35.039780, 22.413921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149485, 0.077032, -0.985759,
		-0.987673, -0.058457, 0.145207,
		-0.046439, 0.995313, 0.084821,
		29.471607, 35.338375, 22.439367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.972067, 34.987125, 22.000732>,  <29.504114, 34.641655, 22.379993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.972067, 34.987125, 22.000732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.233772, 35.289612, 22.004230>,  <29.390795, 35.471104, 22.006329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.233772, 35.289612, 22.004230>,  <28.972067, 34.987125, 22.000732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.233772, 35.289612, 22.004230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028234, 0.035979, -0.998954,
		-0.755740, 0.653332, 0.044891,
		0.654263, 0.756216, 0.008745,
		29.430052, 35.516476, 22.006853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.709578, 35.542736, 21.700190>,  <28.972067, 34.987125, 22.000732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.709578, 35.542736, 21.700190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.101145, 35.620785, 21.676043>,  <29.336086, 35.667614, 21.661554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.101145, 35.620785, 21.676043>,  <28.709578, 35.542736, 21.700190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.101145, 35.620785, 21.676043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110946, 0.259829, -0.959260,
		-0.171490, 0.945735, 0.276000,
		0.978919, 0.195125, -0.060367,
		29.394821, 35.679321, 21.657932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.764601, 36.016327, 21.181517>,  <28.709578, 35.542736, 21.700190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.764601, 36.016327, 21.181517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.139761, 35.880104, 21.207932>,  <29.364857, 35.798370, 21.223780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.139761, 35.880104, 21.207932>,  <28.764601, 36.016327, 21.181517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.139761, 35.880104, 21.207932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147387, 0.218877, -0.964557,
		0.314032, 0.914393, 0.255479,
		0.937902, -0.340556, 0.066035,
		29.421131, 35.777939, 21.227741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.260851, 36.472797, 20.859814>,  <28.764601, 36.016327, 21.181517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.260851, 36.472797, 20.859814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.471764, 36.133022, 20.851538>,  <29.598312, 35.929157, 20.846571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.471764, 36.133022, 20.851538>,  <29.260851, 36.472797, 20.859814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.471764, 36.133022, 20.851538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083486, 0.076027, -0.993605,
		0.845578, 0.522183, 0.111004,
		0.527283, -0.849438, -0.020692,
		29.629948, 35.878189, 20.845331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.917690, 36.586643, 20.476713>,  <29.260851, 36.472797, 20.859814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.917690, 36.586643, 20.476713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.815449, 36.200642, 20.453279>,  <29.754105, 35.969040, 20.439220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.815449, 36.200642, 20.453279>,  <29.917690, 36.586643, 20.476713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.815449, 36.200642, 20.453279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263541, -0.011247, -0.964583,
		0.930169, -0.261989, 0.257193,
		-0.255603, -0.965005, -0.058583,
		29.738768, 35.911140, 20.435705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.930508, 37.269413, 20.477407>,  <29.917690, 36.586643, 20.476713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.930508, 37.269413, 20.477407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.785437, 37.494892, 20.774246>,  <29.698395, 37.630180, 20.952349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.785437, 37.494892, 20.774246>,  <29.930508, 37.269413, 20.477407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.785437, 37.494892, 20.774246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.930152, -0.267922, -0.251070,
		0.057295, -0.781319, 0.621497,
		-0.362678, 0.563701, 0.742096,
		29.676634, 37.664001, 20.996876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.514320, 37.511616, 19.949459>,  <29.930508, 37.269413, 20.477407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.514320, 37.511616, 19.949459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.820604, 37.630981, 20.177366>,  <31.004375, 37.702602, 20.314110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.820604, 37.630981, 20.177366>,  <30.514320, 37.511616, 19.949459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.820604, 37.630981, 20.177366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642000, 0.408378, 0.648894,
		-0.039039, -0.862655, 0.504283,
		0.765710, 0.298418, 0.569768,
		31.050318, 37.720509, 20.348297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.806534, 37.187538, 19.488394>,  <30.514320, 37.511616, 19.949459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.806534, 37.187538, 19.488394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.139074, 37.404678, 19.535995>,  <31.338598, 37.534962, 19.564556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.139074, 37.404678, 19.535995>,  <30.806534, 37.187538, 19.488394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.139074, 37.404678, 19.535995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306753, 0.269677, 0.912785,
		0.463419, -0.795350, 0.390719,
		0.831352, 0.542856, 0.119002,
		31.388479, 37.567535, 19.571697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.156330, 37.092606, 20.166353>,  <30.806534, 37.187538, 19.488394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.156330, 37.092606, 20.166353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.226328, 37.461712, 20.029015>,  <31.268326, 37.683174, 19.946611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.226328, 37.461712, 20.029015>,  <31.156330, 37.092606, 20.166353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.226328, 37.461712, 20.029015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312591, 0.382754, 0.869359,
		0.933629, -0.044806, 0.355428,
		0.174994, 0.922763, -0.343345,
		31.278826, 37.738541, 19.926012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.556150, 37.481468, 20.548218>,  <31.156330, 37.092606, 20.166353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.556150, 37.481468, 20.548218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.307793, 37.730667, 20.357906>,  <31.158777, 37.880188, 20.243719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.307793, 37.730667, 20.357906>,  <31.556150, 37.481468, 20.548218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.307793, 37.730667, 20.357906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366198, 0.306123, 0.878742,
		0.693100, 0.719836, 0.038070,
		-0.620896, 0.622997, -0.475777,
		31.121525, 37.917564, 20.215174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.672720, 38.175636, 20.736940>,  <31.556150, 37.481468, 20.548218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.672720, 38.175636, 20.736940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.294409, 38.085999, 20.642887>,  <31.067423, 38.032215, 20.586454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.294409, 38.085999, 20.642887>,  <31.672720, 38.175636, 20.736940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.294409, 38.085999, 20.642887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260077, 0.088774, 0.961498,
		-0.194593, 0.970516, -0.142243,
		-0.945777, -0.224094, -0.235134,
		31.010675, 38.018768, 20.572348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.173790, 38.656376, 21.124498>,  <31.672720, 38.175636, 20.736940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.173790, 38.656376, 21.124498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.975653, 38.314156, 21.064285>,  <30.856770, 38.108822, 21.028156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.975653, 38.314156, 21.064285>,  <31.173790, 38.656376, 21.124498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.975653, 38.314156, 21.064285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197421, -0.057884, 0.978608,
		-0.845966, 0.514468, -0.140232,
		-0.495345, -0.855554, -0.150535,
		30.827049, 38.057487, 21.019125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.434483, 38.788895, 21.414652>,  <31.173790, 38.656376, 21.124498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.434483, 38.788895, 21.414652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.587854, 38.419636, 21.425804>,  <30.679878, 38.198078, 21.432495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.587854, 38.419636, 21.425804>,  <30.434483, 38.788895, 21.414652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.587854, 38.419636, 21.425804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185469, -0.047390, 0.981507,
		-0.904756, -0.381510, -0.189387,
		0.383430, -0.923149, 0.027882,
		30.702883, 38.142693, 21.434170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.051575, 38.441628, 22.046614>,  <30.434483, 38.788895, 21.414652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.051575, 38.441628, 22.046614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.379940, 38.229706, 21.961374>,  <30.576960, 38.102554, 21.910231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.379940, 38.229706, 21.961374>,  <30.051575, 38.441628, 22.046614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.379940, 38.229706, 21.961374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070040, -0.276937, 0.958332,
		-0.566742, -0.801632, -0.190234,
		0.820913, -0.529803, -0.213098,
		30.626215, 38.070766, 21.897446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.049723, 37.977955, 22.631739>,  <30.051575, 38.441628, 22.046614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.049723, 37.977955, 22.631739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.406193, 37.933743, 22.455744>,  <30.620075, 37.907215, 22.350147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.406193, 37.933743, 22.455744>,  <30.049723, 37.977955, 22.631739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.406193, 37.933743, 22.455744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415004, -0.193127, 0.889086,
		-0.183240, -0.974929, -0.126242,
		0.891176, -0.110525, -0.439987,
		30.673546, 37.900585, 22.323748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.299345, 37.266281, 22.822075>,  <30.049723, 37.977955, 22.631739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.299345, 37.266281, 22.822075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.639856, 37.445770, 22.713282>,  <30.844164, 37.553463, 22.648006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.639856, 37.445770, 22.713282>,  <30.299345, 37.266281, 22.822075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.639856, 37.445770, 22.713282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452173, -0.364382, 0.814104,
		0.266199, -0.816013, -0.513090,
		0.851280, 0.448719, -0.271981,
		30.895241, 37.580387, 22.631687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.866173, 36.743282, 22.883373>,  <30.299345, 37.266281, 22.822075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.866173, 36.743282, 22.883373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.017706, 37.111080, 22.925343>,  <31.108625, 37.331760, 22.950523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.017706, 37.111080, 22.925343>,  <30.866173, 36.743282, 22.883373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.017706, 37.111080, 22.925343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546178, -0.313656, 0.776730,
		0.747111, -0.236946, -0.621033,
		0.378833, 0.919498, 0.104921,
		31.131355, 37.386929, 22.956820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.562639, 36.592777, 23.138533>,  <30.866173, 36.743282, 22.883373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.562639, 36.592777, 23.138533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.505428, 36.980785, 23.217125>,  <31.471102, 37.213589, 23.264280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.505428, 36.980785, 23.217125>,  <31.562639, 36.592777, 23.138533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.505428, 36.980785, 23.217125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516079, -0.096298, 0.851110,
		0.844514, 0.223133, -0.486834,
		-0.143029, 0.970020, 0.196479,
		31.462519, 37.271790, 23.276068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.197655, 36.787479, 23.357449>,  <31.562639, 36.592777, 23.138533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.197655, 36.787479, 23.357449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.947973, 37.074108, 23.481958>,  <31.798164, 37.246086, 23.556664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.947973, 37.074108, 23.481958>,  <32.197655, 36.787479, 23.357449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.947973, 37.074108, 23.481958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521259, 0.085210, 0.849134,
		0.581942, 0.692289, -0.426708,
		-0.624205, 0.716572, 0.311275,
		31.760712, 37.289082, 23.575340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.559608, 37.339958, 23.636435>,  <32.197655, 36.787479, 23.357449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.559608, 37.339958, 23.636435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.205128, 37.395081, 23.813364>,  <31.992439, 37.428154, 23.919521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.205128, 37.395081, 23.813364>,  <32.559608, 37.339958, 23.636435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.205128, 37.395081, 23.813364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458483, 0.123619, 0.880063,
		0.066601, 0.982714, -0.172735,
		-0.886204, 0.137809, 0.442324,
		31.939266, 37.436424, 23.946062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.720940, 37.968273, 24.066895>,  <32.559608, 37.339958, 23.636435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.720940, 37.968273, 24.066895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.365604, 37.841095, 24.199419>,  <32.152405, 37.764790, 24.278934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.365604, 37.841095, 24.199419>,  <32.720940, 37.968273, 24.066895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.365604, 37.841095, 24.199419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237480, 0.299427, 0.924092,
		-0.393012, 0.899587, -0.190488,
		-0.888338, -0.317942, 0.331312,
		32.099102, 37.745712, 24.298813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.480263, 38.509228, 24.374697>,  <32.720940, 37.968273, 24.066895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.480263, 38.509228, 24.374697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.283031, 38.194000, 24.522114>,  <32.164692, 38.004864, 24.610563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.283031, 38.194000, 24.522114>,  <32.480263, 38.509228, 24.374697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.283031, 38.194000, 24.522114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054697, 0.394698, 0.917181,
		-0.868265, 0.472399, -0.151512,
		-0.493077, -0.788069, 0.368541,
		32.135109, 37.957581, 24.632675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.102322, 38.736553, 24.974779>,  <32.480263, 38.509228, 24.374697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.102322, 38.736553, 24.974779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.069447, 38.343163, 25.039297>,  <32.049721, 38.107128, 25.078009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.069447, 38.343163, 25.039297>,  <32.102322, 38.736553, 24.974779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.069447, 38.343163, 25.039297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093187, 0.168718, 0.981249,
		-0.992251, 0.065613, -0.105513,
		-0.082184, -0.983478, 0.161296,
		32.044792, 38.048119, 25.087687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.475353, 38.610916, 25.232246>,  <32.102322, 38.736553, 24.974779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.475353, 38.610916, 25.232246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.727745, 38.316227, 25.329496>,  <31.879181, 38.139416, 25.387846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.727745, 38.316227, 25.329496>,  <31.475353, 38.610916, 25.232246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.727745, 38.316227, 25.329496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014993, 0.324909, 0.945627,
		-0.775655, -0.593025, 0.216056,
		0.630979, -0.736720, 0.243126,
		31.917038, 38.095211, 25.402433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.258707, 38.368397, 25.925406>,  <31.475353, 38.610916, 25.232246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.258707, 38.368397, 25.925406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.621321, 38.203072, 25.891064>,  <31.838888, 38.103878, 25.870459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.621321, 38.203072, 25.891064>,  <31.258707, 38.368397, 25.925406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.621321, 38.203072, 25.891064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172896, 0.177999, 0.968723,
		-0.385100, -0.893024, 0.232821,
		0.906535, -0.413308, -0.085853,
		31.893282, 38.079079, 25.865307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.261982, 38.108288, 26.606819>,  <31.258707, 38.368397, 25.925406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.261982, 38.108288, 26.606819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.645304, 38.086655, 26.494587>,  <31.875298, 38.073677, 26.427248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.645304, 38.086655, 26.494587>,  <31.261982, 38.108288, 26.606819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.645304, 38.086655, 26.494587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282430, 0.328435, 0.901312,
		0.043410, -0.942977, 0.330015,
		0.958305, -0.054080, -0.280583,
		31.932795, 38.070431, 26.410412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.607203, 37.716816, 27.142670>,  <31.261982, 38.108288, 26.606819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.607203, 37.716816, 27.142670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.869928, 37.940628, 26.940472>,  <32.027565, 38.074913, 26.819153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.869928, 37.940628, 26.940472>,  <31.607203, 37.716816, 27.142670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.869928, 37.940628, 26.940472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361876, 0.354234, 0.862301,
		0.661545, -0.749298, 0.030186,
		0.656814, 0.559528, -0.505495,
		32.066971, 38.108486, 26.788824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.290047, 37.608829, 27.479219>,  <31.607203, 37.716816, 27.142670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.290047, 37.608829, 27.479219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.286346, 37.955029, 27.278889>,  <32.284126, 38.162746, 27.158689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.286346, 37.955029, 27.278889>,  <32.290047, 37.608829, 27.479219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.286346, 37.955029, 27.278889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305062, 0.479418, 0.822858,
		0.952287, -0.145168, -0.268468,
		-0.009256, 0.865497, -0.500829,
		32.283569, 38.214676, 27.128639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.019180, 37.901363, 27.541197>,  <32.290047, 37.608829, 27.479219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.019180, 37.901363, 27.541197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.760765, 38.191238, 27.445309>,  <32.605717, 38.365162, 27.387775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.760765, 38.191238, 27.445309>,  <33.019180, 37.901363, 27.541197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.760765, 38.191238, 27.445309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369192, 0.571541, 0.732829,
		0.668079, 0.384935, -0.636786,
		-0.646041, 0.724683, -0.239720,
		32.566952, 38.408642, 27.373392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.400925, 38.572094, 27.525820>,  <33.019180, 37.901363, 27.541197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.400925, 38.572094, 27.525820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.017963, 38.680325, 27.566153>,  <32.788185, 38.745262, 27.590351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.017963, 38.680325, 27.566153>,  <33.400925, 38.572094, 27.525820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.017963, 38.680325, 27.566153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272110, 0.728585, 0.628586,
		0.096618, 0.629247, -0.771176,
		-0.957403, 0.270578, 0.100830,
		32.730743, 38.761497, 27.596401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.358246, 39.278492, 27.592016>,  <33.400925, 38.572094, 27.525820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.358246, 39.278492, 27.592016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.017780, 39.161121, 27.766106>,  <32.813499, 39.090698, 27.870560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.017780, 39.161121, 27.766106>,  <33.358246, 39.278492, 27.592016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.017780, 39.161121, 27.766106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148298, 0.660945, 0.735635,
		-0.503515, 0.690689, -0.519058,
		-0.851164, -0.293428, 0.435223,
		32.762432, 39.073093, 27.896673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.048317, 39.898174, 27.866999>,  <33.358246, 39.278492, 27.592016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.048317, 39.898174, 27.866999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.869869, 39.586861, 28.043751>,  <32.762802, 39.400074, 28.149801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.869869, 39.586861, 28.043751>,  <33.048317, 39.898174, 27.866999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.869869, 39.586861, 28.043751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040997, 0.475444, 0.878790,
		-0.894035, 0.410160, -0.180197,
		-0.446118, -0.778281, 0.441879,
		32.736034, 39.353374, 28.176315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.578323, 40.170593, 28.382586>,  <33.048317, 39.898174, 27.866999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.578323, 40.170593, 28.382586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.585007, 39.794830, 28.519543>,  <32.589016, 39.569374, 28.601717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.585007, 39.794830, 28.519543>,  <32.578323, 40.170593, 28.382586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.585007, 39.794830, 28.519543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179159, 0.339712, 0.923308,
		-0.983678, 0.045914, 0.173980,
		0.016710, -0.939408, 0.342393,
		32.590019, 39.513008, 28.622261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.166050, 40.125175, 29.033855>,  <32.578323, 40.170593, 28.382586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.166050, 40.125175, 29.033855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.407429, 39.806511, 29.047653>,  <32.552258, 39.615314, 29.055931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.407429, 39.806511, 29.047653>,  <32.166050, 40.125175, 29.033855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.407429, 39.806511, 29.047653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324858, 0.285116, 0.901763,
		-0.728231, -0.532959, 0.430852,
		0.603446, -0.796658, 0.034494,
		32.588463, 39.567513, 29.058001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.035408, 39.753151, 29.699366>,  <32.166050, 40.125175, 29.033855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.035408, 39.753151, 29.699366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.399178, 39.625141, 29.593126>,  <32.617439, 39.548336, 29.529383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.399178, 39.625141, 29.593126>,  <32.035408, 39.753151, 29.699366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.399178, 39.625141, 29.593126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375681, 0.358234, 0.854712,
		-0.178383, -0.877070, 0.446012,
		0.909419, -0.320025, -0.265596,
		32.672005, 39.529133, 29.513447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.311867, 39.219982, 30.168833>,  <32.035408, 39.753151, 29.699366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.311867, 39.219982, 30.168833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.650105, 39.369614, 30.016499>,  <32.853046, 39.459393, 29.925098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.650105, 39.369614, 30.016499>,  <32.311867, 39.219982, 30.168833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.650105, 39.369614, 30.016499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426147, -0.043359, 0.903614,
		0.321510, -0.926383, -0.196076,
		0.845594, 0.374078, -0.380835,
		32.903782, 39.481838, 29.902248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.881454, 38.772549, 30.384979>,  <32.311867, 39.219982, 30.168833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.881454, 38.772549, 30.384979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.031345, 39.133041, 30.297932>,  <33.121281, 39.349339, 30.245703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.031345, 39.133041, 30.297932>,  <32.881454, 38.772549, 30.384979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.031345, 39.133041, 30.297932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501261, 0.000519, 0.865296,
		0.779946, -0.433334, -0.451558,
		0.374728, 0.901233, -0.217618,
		33.143764, 39.403412, 30.232647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.490253, 38.849487, 30.829189>,  <32.881454, 38.772549, 30.384979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.490253, 38.849487, 30.829189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.479572, 39.210136, 30.656511>,  <33.473164, 39.426525, 30.552904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.479572, 39.210136, 30.656511>,  <33.490253, 38.849487, 30.829189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.479572, 39.210136, 30.656511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386622, 0.407557, 0.827297,
		0.921852, -0.144814, -0.359470,
		-0.026700, 0.901624, -0.431695,
		33.471561, 39.480625, 30.527002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.184044, 39.156193, 30.837217>,  <33.490253, 38.849487, 30.829189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.184044, 39.156193, 30.837217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.926586, 39.461391, 30.813377>,  <33.772110, 39.644512, 30.799074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.926586, 39.461391, 30.813377>,  <34.184044, 39.156193, 30.837217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.926586, 39.461391, 30.813377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427376, 0.422940, 0.799044,
		0.634876, 0.488832, -0.598311,
		-0.643648, 0.762998, -0.059599,
		33.733490, 39.690292, 30.795498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.574554, 39.705326, 30.974258>,  <34.184044, 39.156193, 30.837217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.574554, 39.705326, 30.974258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.193993, 39.793884, 31.059875>,  <33.965656, 39.847019, 31.111246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.193993, 39.793884, 31.059875>,  <34.574554, 39.705326, 30.974258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.193993, 39.793884, 31.059875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280457, 0.335905, 0.899173,
		0.127171, 0.915507, -0.381672,
		-0.951405, 0.221392, 0.214043,
		33.908569, 39.860302, 31.124088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.652874, 40.209801, 31.299465>,  <34.574554, 39.705326, 30.974258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.652874, 40.209801, 31.299465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.274300, 40.134056, 31.404079>,  <34.047153, 40.088612, 31.466848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.274300, 40.134056, 31.404079>,  <34.652874, 40.209801, 31.299465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.274300, 40.134056, 31.404079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183390, 0.351418, 0.918081,
		-0.265755, 0.916869, -0.297869,
		-0.946437, -0.189358, 0.261536,
		33.990368, 40.077248, 31.482540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.437786, 40.748577, 31.649366>,  <34.652874, 40.209801, 31.299465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.437786, 40.748577, 31.649366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.151402, 40.493443, 31.762905>,  <33.979572, 40.340363, 31.831028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.151402, 40.493443, 31.762905>,  <34.437786, 40.748577, 31.649366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.151402, 40.493443, 31.762905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148442, 0.258195, 0.954620,
		-0.682178, 0.725604, -0.090176,
		-0.715959, -0.637835, 0.283845,
		33.936615, 40.302094, 31.848059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.037708, 41.059959, 32.069725>,  <34.437786, 40.748577, 31.649366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.037708, 41.059959, 32.069725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.955929, 40.678020, 32.155945>,  <33.906860, 40.448856, 32.207676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.955929, 40.678020, 32.155945>,  <34.037708, 41.059959, 32.069725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.955929, 40.678020, 32.155945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047322, 0.229584, 0.972138,
		-0.977733, 0.188549, -0.092123,
		-0.204445, -0.954851, 0.215549,
		33.894596, 40.391563, 32.220608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.604485, 41.018223, 32.695309>,  <34.037708, 41.059959, 32.069725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.604485, 41.018223, 32.695309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.749199, 40.645416, 32.686817>,  <33.836029, 40.421730, 32.681721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.749199, 40.645416, 32.686817>,  <33.604485, 41.018223, 32.695309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.749199, 40.645416, 32.686817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051610, -0.042760, 0.997751,
		-0.930832, -0.359877, -0.063571,
		0.361786, -0.932020, -0.021229,
		33.857735, 40.365810, 32.680447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.177914, 40.629845, 33.154800>,  <33.604485, 41.018223, 32.695309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.177914, 40.629845, 33.154800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.507244, 40.405998, 33.116936>,  <33.704842, 40.271690, 33.094215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.507244, 40.405998, 33.116936>,  <33.177914, 40.629845, 33.154800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.507244, 40.405998, 33.116936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083180, -0.046011, 0.995472,
		-0.561440, -0.827472, 0.008668,
		0.823326, -0.559619, -0.094661,
		33.754242, 40.238113, 33.088539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.168980, 40.042946, 33.755932>,  <33.177914, 40.629845, 33.154800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.168980, 40.042946, 33.755932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.545296, 40.101013, 33.633404>,  <33.771088, 40.135853, 33.559887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.545296, 40.101013, 33.633404>,  <33.168980, 40.042946, 33.755932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.545296, 40.101013, 33.633404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316076, -0.049162, 0.947459,
		0.122481, -0.988185, -0.092136,
		0.940794, 0.145168, -0.306321,
		33.827534, 40.144562, 33.541508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.613403, 39.533875, 34.173729>,  <33.168980, 40.042946, 33.755932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.613403, 39.533875, 34.173729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.857666, 39.818050, 34.033806>,  <34.004223, 39.988556, 33.949852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.857666, 39.818050, 34.033806>,  <33.613403, 39.533875, 34.173729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.857666, 39.818050, 34.033806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495403, 0.001887, 0.868661,
		0.617793, -0.703753, -0.350803,
		0.610661, 0.710442, -0.349808,
		34.040863, 40.031181, 33.928864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.316463, 39.382225, 34.533756>,  <33.613403, 39.533875, 34.173729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.316463, 39.382225, 34.533756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.360779, 39.753227, 34.390953>,  <34.387367, 39.975830, 34.305271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.360779, 39.753227, 34.390953>,  <34.316463, 39.382225, 34.533756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.360779, 39.753227, 34.390953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619549, 0.216425, 0.754533,
		0.777100, -0.304780, -0.550658,
		0.110791, 0.927507, -0.357010,
		34.394016, 40.031479, 34.283852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.970146, 39.526764, 34.840298>,  <34.316463, 39.382225, 34.533756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.970146, 39.526764, 34.840298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.855095, 39.887821, 34.712234>,  <34.786064, 40.104458, 34.635399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.855095, 39.887821, 34.712234>,  <34.970146, 39.526764, 34.840298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.855095, 39.887821, 34.712234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424559, 0.419813, 0.802188,
		0.858497, 0.094810, -0.503978,
		-0.287632, 0.902645, -0.320156,
		34.768806, 40.158615, 34.616188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.571503, 39.991756, 34.923241>,  <34.970146, 39.526764, 34.840298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.571503, 39.991756, 34.923241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.231937, 40.203171, 34.923347>,  <35.028198, 40.330021, 34.923412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.231937, 40.203171, 34.923347>,  <35.571503, 39.991756, 34.923241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.231937, 40.203171, 34.923347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318937, 0.511859, 0.797671,
		0.421461, 0.677237, -0.603092,
		-0.848911, 0.528536, 0.000267,
		34.977264, 40.361732, 34.923428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.852444, 40.572231, 35.188000>,  <35.571503, 39.991756, 34.923241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.852444, 40.572231, 35.188000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.452667, 40.580540, 35.198509>,  <35.212803, 40.585526, 35.204815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.452667, 40.580540, 35.198509>,  <35.852444, 40.572231, 35.188000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.452667, 40.580540, 35.198509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032981, 0.473028, 0.880430,
		0.005860, 0.880803, -0.473447,
		-0.999439, 0.020774, 0.026278,
		35.152836, 40.586773, 35.206394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.020203, 40.998249, 34.509022>,  <35.852444, 40.572231, 35.188000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.020203, 40.998249, 34.509022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.285038, 40.756634, 34.686459>,  <36.443939, 40.611664, 34.792919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.285038, 40.756634, 34.686459>,  <36.020203, 40.998249, 34.509022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.285038, 40.756634, 34.686459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478576, -0.114716, -0.870520,
		0.576718, 0.788653, 0.213128,
		0.662089, -0.604042, 0.443589,
		36.483665, 40.575420, 34.819534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.587856, 41.294315, 34.420116>,  <36.020203, 40.998249, 34.509022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.587856, 41.294315, 34.420116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.674686, 40.909115, 34.483990>,  <36.726784, 40.677994, 34.522312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.674686, 40.909115, 34.483990>,  <36.587856, 41.294315, 34.420116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.674686, 40.909115, 34.483990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423653, -0.054430, -0.904188,
		0.879430, 0.263927, 0.396165,
		0.217076, -0.963006, 0.159680,
		36.739811, 40.620213, 34.531895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.271229, 41.086929, 34.007935>,  <36.587856, 41.294315, 34.420116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.271229, 41.086929, 34.007935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.140549, 40.723057, 34.110500>,  <37.062141, 40.504734, 34.172039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.140549, 40.723057, 34.110500>,  <37.271229, 41.086929, 34.007935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.140549, 40.723057, 34.110500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205949, -0.333306, -0.920050,
		0.922415, -0.247775, 0.296240,
		-0.326704, -0.909678, 0.256417,
		37.042538, 40.450153, 34.187424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.776890, 40.527397, 33.819290>,  <37.271229, 41.086929, 34.007935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.776890, 40.527397, 33.819290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.412945, 40.361954, 33.832409>,  <37.194576, 40.262688, 33.840279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.412945, 40.361954, 33.832409>,  <37.776890, 40.527397, 33.819290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.412945, 40.361954, 33.832409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165068, -0.433371, -0.885970,
		0.380658, -0.800698, 0.462582,
		-0.909864, -0.413609, 0.032797,
		37.139984, 40.237869, 33.842247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.863098, 39.784527, 33.723824>,  <37.776890, 40.527397, 33.819290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.863098, 39.784527, 33.723824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.485962, 39.876019, 33.626884>,  <37.259678, 39.930912, 33.568722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.485962, 39.876019, 33.626884>,  <37.863098, 39.784527, 33.723824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.485962, 39.876019, 33.626884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105373, -0.485302, -0.867974,
		-0.316139, -0.843900, 0.433462,
		-0.942843, 0.228725, -0.242347,
		37.203110, 39.944637, 33.554180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.712166, 39.198704, 33.328659>,  <37.863098, 39.784527, 33.723824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.712166, 39.198704, 33.328659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.429905, 39.467659, 33.239265>,  <37.260548, 39.629032, 33.185627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.429905, 39.467659, 33.239265>,  <37.712166, 39.198704, 33.328659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.429905, 39.467659, 33.239265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076057, -0.385468, -0.919581,
		-0.704462, -0.631909, 0.323147,
		-0.705655, 0.672387, -0.223486,
		37.218208, 39.669376, 33.172218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.241802, 38.796974, 32.978714>,  <37.712166, 39.198704, 33.328659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.241802, 38.796974, 32.978714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.168770, 39.173431, 32.864937>,  <37.124950, 39.399307, 32.796669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.168770, 39.173431, 32.864937>,  <37.241802, 38.796974, 32.978714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.168770, 39.173431, 32.864937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216947, -0.320741, -0.921987,
		-0.958957, -0.106628, 0.262740,
		-0.182581, 0.941146, -0.284444,
		37.113995, 39.455776, 32.779602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.748428, 38.739407, 32.510178>,  <37.241802, 38.796974, 32.978714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.748428, 38.739407, 32.510178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.847546, 39.118202, 32.428394>,  <36.907017, 39.345482, 32.379326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.847546, 39.118202, 32.428394>,  <36.748428, 38.739407, 32.510178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.847546, 39.118202, 32.428394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261663, -0.137778, -0.955274,
		-0.932807, 0.290213, 0.213652,
		0.247796, 0.946992, -0.204459,
		36.921883, 39.402298, 32.367058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.281857, 38.886330, 32.080547>,  <36.748428, 38.739407, 32.510178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.281857, 38.886330, 32.080547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.553005, 39.174191, 32.020432>,  <36.715694, 39.346909, 31.984362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.553005, 39.174191, 32.020432>,  <36.281857, 38.886330, 32.080547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.553005, 39.174191, 32.020432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290770, 0.074683, -0.953874,
		-0.675233, 0.690307, 0.259879,
		0.677874, 0.719652, -0.150292,
		36.756367, 39.390087, 31.975344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.045410, 39.619560, 31.966011>,  <36.281857, 38.886330, 32.080547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.045410, 39.619560, 31.966011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.384659, 39.536133, 31.771204>,  <36.588207, 39.486076, 31.654320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.384659, 39.536133, 31.771204>,  <36.045410, 39.619560, 31.966011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.384659, 39.536133, 31.771204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499695, -0.009468, -0.866150,
		0.176045, 0.977961, -0.112253,
		0.848123, -0.208573, -0.487015,
		36.639095, 39.473560, 31.625099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.884018, 39.901268, 31.293760>,  <36.045410, 39.619560, 31.966011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.884018, 39.901268, 31.293760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.218670, 39.689098, 31.239063>,  <36.419460, 39.561798, 31.206245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.218670, 39.689098, 31.239063>,  <35.884018, 39.901268, 31.293760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.218670, 39.689098, 31.239063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242536, -0.134880, -0.960720,
		0.491144, 0.836934, -0.241492,
		0.836632, -0.530423, -0.136741,
		36.469658, 39.529972, 31.198040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.937710, 39.834171, 30.552355>,  <35.884018, 39.901268, 31.293760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.937710, 39.834171, 30.552355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.263863, 39.621887, 30.644875>,  <36.459553, 39.494514, 30.700386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.263863, 39.621887, 30.644875>,  <35.937710, 39.834171, 30.552355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.263863, 39.621887, 30.644875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128569, -0.223551, -0.966175,
		0.564470, 0.817538, -0.114045,
		0.815380, -0.530714, 0.231298,
		36.508476, 39.462673, 30.714264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.487457, 40.130585, 30.145777>,  <35.937710, 39.834171, 30.552355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.487457, 40.130585, 30.145777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.561726, 39.746040, 30.227076>,  <36.606285, 39.515312, 30.275856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.561726, 39.746040, 30.227076>,  <36.487457, 40.130585, 30.145777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.561726, 39.746040, 30.227076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019296, -0.210373, -0.977431,
		0.982423, 0.177558, -0.057610,
		0.185671, -0.961362, 0.203249,
		36.617428, 39.457630, 30.288050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.908848, 39.822697, 29.604340>,  <36.487457, 40.130585, 30.145777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.908848, 39.822697, 29.604340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.701107, 39.532848, 29.785532>,  <36.576462, 39.358940, 29.894247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.701107, 39.532848, 29.785532>,  <36.908848, 39.822697, 29.604340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.701107, 39.532848, 29.785532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203783, -0.409768, -0.889136,
		0.829906, -0.554086, 0.065149,
		-0.519354, -0.724623, 0.452983,
		36.545300, 39.315460, 29.921427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.147049, 39.249241, 29.246508>,  <36.908848, 39.822697, 29.604340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.147049, 39.249241, 29.246508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.812351, 39.111156, 29.416534>,  <36.611530, 39.028305, 29.518551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.812351, 39.111156, 29.416534>,  <37.147049, 39.249241, 29.246508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.812351, 39.111156, 29.416534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239493, -0.467363, -0.851008,
		0.492439, -0.813880, 0.308390,
		-0.836748, -0.345212, 0.425066,
		36.561325, 39.007591, 29.544054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.120274, 38.440742, 29.074778>,  <37.147049, 39.249241, 29.246508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.120274, 38.440742, 29.074778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.758869, 38.586212, 29.165474>,  <36.542027, 38.673492, 29.219891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.758869, 38.586212, 29.165474>,  <37.120274, 38.440742, 29.074778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.758869, 38.586212, 29.165474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397714, -0.514408, -0.759742,
		-0.159660, -0.776612, 0.609411,
		-0.903510, 0.363672, 0.226739,
		36.487816, 38.695312, 29.233496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.608662, 37.905384, 28.992163>,  <37.120274, 38.440742, 29.074778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.608662, 37.905384, 28.992163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.410648, 38.250149, 28.948261>,  <36.291840, 38.457008, 28.921921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.410648, 38.250149, 28.948261>,  <36.608662, 37.905384, 28.992163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.410648, 38.250149, 28.948261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549994, -0.408637, -0.728370,
		-0.672640, -0.300205, 0.676337,
		-0.495037, 0.861912, -0.109755,
		36.262138, 38.508724, 28.915335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.980972, 37.749382, 28.860498>,  <36.608662, 37.905384, 28.992163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.980972, 37.749382, 28.860498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.962219, 38.123867, 28.721180>,  <35.950966, 38.348557, 28.637589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.962219, 38.123867, 28.721180>,  <35.980972, 37.749382, 28.860498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.962219, 38.123867, 28.721180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648294, -0.293787, -0.702427,
		-0.759945, 0.192865, 0.620714,
		-0.046884, 0.936211, -0.348296,
		35.948154, 38.404732, 28.616692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.271973, 37.925259, 28.796543>,  <35.980972, 37.749382, 28.860498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.271973, 37.925259, 28.796543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.478745, 38.163708, 28.550804>,  <35.602810, 38.306778, 28.403360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.478745, 38.163708, 28.550804>,  <35.271973, 37.925259, 28.796543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.478745, 38.163708, 28.550804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594738, -0.266071, -0.758613,
		-0.615684, 0.757527, 0.216995,
		0.516933, 0.596121, -0.614345,
		35.633823, 38.342545, 28.366501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.791485, 38.098862, 28.385624>,  <35.271973, 37.925259, 28.796543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.791485, 38.098862, 28.385624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.111660, 38.206509, 28.171383>,  <35.303764, 38.271095, 28.042837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.111660, 38.206509, 28.171383>,  <34.791485, 38.098862, 28.385624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.111660, 38.206509, 28.171383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462445, -0.291254, -0.837446,
		-0.381368, 0.918013, -0.108679,
		0.800439, 0.269117, -0.535605,
		35.351791, 38.287243, 28.010702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.564369, 38.581272, 27.905720>,  <34.791485, 38.098862, 28.385624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.564369, 38.581272, 27.905720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.905834, 38.442364, 27.750458>,  <35.110714, 38.359020, 27.657301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.905834, 38.442364, 27.750458>,  <34.564369, 38.581272, 27.905720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.905834, 38.442364, 27.750458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484338, -0.255280, -0.836809,
		0.191512, 0.902350, -0.386119,
		0.853663, -0.347271, -0.388153,
		35.161934, 38.338184, 27.634012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.627571, 38.899551, 27.277866>,  <34.564369, 38.581272, 27.905720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.627571, 38.899551, 27.277866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.841579, 38.562794, 27.249702>,  <34.969986, 38.360737, 27.232805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.841579, 38.562794, 27.249702>,  <34.627571, 38.899551, 27.277866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.841579, 38.562794, 27.249702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394861, -0.175515, -0.901820,
		0.746882, 0.510298, -0.426337,
		0.535025, -0.841897, -0.070408,
		35.002087, 38.310226, 27.228580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.720066, 38.809757, 26.542709>,  <34.627571, 38.899551, 27.277866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.720066, 38.809757, 26.542709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.836105, 38.449650, 26.672550>,  <34.905727, 38.233585, 26.750454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.836105, 38.449650, 26.672550>,  <34.720066, 38.809757, 26.542709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.836105, 38.449650, 26.672550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266218, -0.401715, -0.876215,
		0.919223, 0.167773, -0.356204,
		0.290098, -0.900265, 0.324602,
		34.923134, 38.179569, 26.769930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.042435, 38.459908, 25.953449>,  <34.720066, 38.809757, 26.542709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.042435, 38.459908, 25.953449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.935543, 38.180164, 26.218624>,  <34.871407, 38.012318, 26.377729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.935543, 38.180164, 26.218624>,  <35.042435, 38.459908, 25.953449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.935543, 38.180164, 26.218624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327844, -0.580935, -0.745005,
		0.906148, -0.416430, -0.074036,
		-0.267232, -0.699357, 0.662938,
		34.855373, 37.970356, 26.417505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.393410, 37.838703, 25.688148>,  <35.042435, 38.459908, 25.953449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.393410, 37.838703, 25.688148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.083076, 37.743210, 25.921762>,  <34.896877, 37.685913, 26.061930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.083076, 37.743210, 25.921762>,  <35.393410, 37.838703, 25.688148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.083076, 37.743210, 25.921762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339801, -0.621847, -0.705579,
		0.531624, -0.745864, 0.401326,
		-0.775829, -0.238732, 0.584034,
		34.850327, 37.671589, 26.096973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.366440, 37.065521, 25.680521>,  <35.393410, 37.838703, 25.688148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.366440, 37.065521, 25.680521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.008785, 37.184418, 25.814487>,  <34.794193, 37.255756, 25.894867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.008785, 37.184418, 25.814487>,  <35.366440, 37.065521, 25.680521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.008785, 37.184418, 25.814487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442663, -0.699598, -0.560903,
		0.067583, -0.649778, 0.757113,
		-0.894137, 0.297239, 0.334914,
		34.740543, 37.273590, 25.914961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.073162, 36.476906, 25.970829>,  <35.366440, 37.065521, 25.680521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.073162, 36.476906, 25.970829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.758560, 36.711502, 25.893444>,  <34.569798, 36.852261, 25.847013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.758560, 36.711502, 25.893444>,  <35.073162, 36.476906, 25.970829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.758560, 36.711502, 25.893444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358124, -0.688339, -0.630823,
		-0.503140, -0.426866, 0.751423,
		-0.786510, 0.586494, -0.193460,
		34.522606, 36.887451, 25.835405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.530807, 36.036583, 25.784796>,  <35.073162, 36.476906, 25.970829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.530807, 36.036583, 25.784796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.377045, 36.373260, 25.633118>,  <34.284786, 36.575268, 25.542110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.377045, 36.373260, 25.633118>,  <34.530807, 36.036583, 25.784796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.377045, 36.373260, 25.633118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229592, -0.485015, -0.843829,
		-0.894160, -0.237310, 0.379687,
		-0.384403, 0.841692, -0.379196,
		34.261723, 36.625767, 25.519360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.839806, 35.778534, 25.566263>,  <34.530807, 36.036583, 25.784796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.839806, 35.778534, 25.566263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.955692, 36.092815, 25.347639>,  <34.025223, 36.281384, 25.216465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.955692, 36.092815, 25.347639>,  <33.839806, 35.778534, 25.566263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.955692, 36.092815, 25.347639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331638, -0.453268, -0.827384,
		-0.897820, 0.420968, 0.129251,
		0.289717, 0.785706, -0.546562,
		34.042606, 36.328526, 25.183670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.203064, 35.931133, 25.113808>,  <33.839806, 35.778534, 25.566263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.203064, 35.931133, 25.113808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.524525, 36.109966, 24.956699>,  <33.717400, 36.217266, 24.862434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.524525, 36.109966, 24.956699>,  <33.203064, 35.931133, 25.113808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.524525, 36.109966, 24.956699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262656, -0.325765, -0.908234,
		-0.534004, 0.833064, -0.144372,
		0.803649, 0.447081, -0.392769,
		33.765621, 36.244091, 24.838869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.087196, 36.065952, 24.421003>,  <33.203064, 35.931133, 25.113808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.087196, 36.065952, 24.421003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.485374, 36.099094, 24.402170>,  <33.724281, 36.118980, 24.390871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.485374, 36.099094, 24.402170>,  <33.087196, 36.065952, 24.421003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.485374, 36.099094, 24.402170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010237, -0.398231, -0.917228,
		-0.094750, 0.913535, -0.395570,
		0.995448, 0.082858, -0.047084,
		33.784008, 36.123951, 24.388044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.320187, 36.325859, 23.807844>,  <33.087196, 36.065952, 24.421003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.320187, 36.325859, 23.807844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.644695, 36.127789, 23.932190>,  <33.839401, 36.008945, 24.006798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.644695, 36.127789, 23.932190>,  <33.320187, 36.325859, 23.807844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.644695, 36.127789, 23.932190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025449, -0.501283, -0.864909,
		0.584117, 0.709586, -0.394075,
		0.811271, -0.495179, 0.310866,
		33.888077, 35.979237, 24.025450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.806496, 36.395893, 23.279200>,  <33.320187, 36.325859, 23.807844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.806496, 36.395893, 23.279200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.889297, 36.072536, 23.499617>,  <33.938980, 35.878521, 23.631866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.889297, 36.072536, 23.499617>,  <33.806496, 36.395893, 23.279200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.889297, 36.072536, 23.499617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171664, -0.584517, -0.793014,
		0.963162, 0.069562, -0.259769,
		0.207003, -0.808394, 0.551043,
		33.951397, 35.830017, 23.664930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.366241, 36.197948, 22.956436>,  <33.806496, 36.395893, 23.279200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.366241, 36.197948, 22.956436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.230831, 35.876453, 23.152155>,  <34.149586, 35.683556, 23.269587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.230831, 35.876453, 23.152155>,  <34.366241, 36.197948, 22.956436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.230831, 35.876453, 23.152155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016679, -0.525044, -0.850911,
		0.940810, -0.279893, 0.191145,
		-0.338524, -0.803734, 0.489298,
		34.129272, 35.635334, 23.298944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.870907, 35.725655, 22.740746>,  <34.366241, 36.197948, 22.956436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.870907, 35.725655, 22.740746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.540497, 35.540714, 22.869696>,  <34.342251, 35.429752, 22.947065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.540497, 35.540714, 22.869696>,  <34.870907, 35.725655, 22.740746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.540497, 35.540714, 22.869696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122175, -0.411479, -0.903193,
		0.550240, -0.785442, 0.283403,
		-0.826020, -0.462348, 0.322373,
		34.292690, 35.402008, 22.966408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.933464, 35.041752, 22.626911>,  <34.870907, 35.725655, 22.740746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.933464, 35.041752, 22.626911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.536926, 35.065487, 22.673754>,  <34.299004, 35.079727, 22.701860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.536926, 35.065487, 22.673754>,  <34.933464, 35.041752, 22.626911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.536926, 35.065487, 22.673754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126526, -0.669834, -0.731651,
		0.035027, -0.740136, 0.671545,
		-0.991345, 0.059340, 0.117108,
		34.239521, 35.083290, 22.708887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.727894, 34.387367, 22.383951>,  <34.933464, 35.041752, 22.626911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.727894, 34.387367, 22.383951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.394119, 34.607807, 22.383842>,  <34.193855, 34.740070, 22.383778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.394119, 34.607807, 22.383842>,  <34.727894, 34.387367, 22.383951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.394119, 34.607807, 22.383842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277959, -0.421290, -0.863281,
		-0.475870, -0.720278, 0.504724,
		-0.834437, 0.551102, -0.000272,
		34.143787, 34.773136, 22.383762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.151272, 33.908379, 22.283060>,  <34.727894, 34.387367, 22.383951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.151272, 33.908379, 22.283060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.046421, 34.283104, 22.190395>,  <33.983509, 34.507938, 22.134796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.046421, 34.283104, 22.190395>,  <34.151272, 33.908379, 22.283060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.046421, 34.283104, 22.190395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543941, -0.341718, -0.766392,
		-0.797130, -0.074884, 0.599146,
		-0.262130, 0.936814, -0.231661,
		33.967781, 34.564148, 22.120897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.773556, 33.546505, 22.146759>,  <34.151272, 33.908379, 22.283060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.773556, 33.546505, 22.146759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.818691, 33.198814, 22.339306>,  <34.845772, 32.990200, 22.454834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.818691, 33.198814, 22.339306>,  <34.773556, 33.546505, 22.146759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.818691, 33.198814, 22.339306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114225, 0.492599, 0.862728,
		-0.987026, -0.042361, 0.154870,
		0.112835, -0.869225, 0.481369,
		34.852543, 32.938046, 22.483717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.621647, 33.655682, 22.848412>,  <34.773556, 33.546505, 22.146759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.621647, 33.655682, 22.848412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.812695, 33.306473, 22.887835>,  <34.927322, 33.096947, 22.911488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.812695, 33.306473, 22.887835>,  <34.621647, 33.655682, 22.848412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.812695, 33.306473, 22.887835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311056, 0.272945, 0.910354,
		-0.821662, -0.404141, 0.401922,
		0.477615, -0.873024, 0.098558,
		34.955978, 33.044567, 22.917402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.428463, 33.269741, 23.521132>,  <34.621647, 33.655682, 22.848412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.428463, 33.269741, 23.521132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.795715, 33.161472, 23.405355>,  <35.016068, 33.096512, 23.335890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.795715, 33.161472, 23.405355>,  <34.428463, 33.269741, 23.521132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.795715, 33.161472, 23.405355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371046, 0.330705, 0.867732,
		-0.139151, -0.904086, 0.404062,
		0.918130, -0.270672, -0.289440,
		35.071156, 33.080273, 23.318523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.701904, 33.013607, 24.238659>,  <34.428463, 33.269741, 23.521132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.701904, 33.013607, 24.238659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.006264, 33.044773, 23.980988>,  <35.188877, 33.063473, 23.826384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.006264, 33.044773, 23.980988>,  <34.701904, 33.013607, 24.238659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.006264, 33.044773, 23.980988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632372, 0.133432, 0.763087,
		0.145418, -0.987990, 0.052250,
		0.760894, 0.077925, -0.644180,
		35.234531, 33.068150, 23.787733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.309860, 32.547344, 24.458706>,  <34.701904, 33.013607, 24.238659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.309860, 32.547344, 24.458706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.426548, 32.864651, 24.244928>,  <35.496559, 33.055035, 24.116661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.426548, 32.864651, 24.244928>,  <35.309860, 32.547344, 24.458706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.426548, 32.864651, 24.244928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646628, 0.248171, 0.721307,
		0.704820, -0.556007, -0.440550,
		0.291720, 0.793264, -0.534445,
		35.514065, 33.102631, 24.084595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.095150, 32.552044, 24.433210>,  <35.309860, 32.547344, 24.458706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.095150, 32.552044, 24.433210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.981979, 32.926701, 24.350599>,  <35.914078, 33.151493, 24.301033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.981979, 32.926701, 24.350599>,  <36.095150, 32.552044, 24.433210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.981979, 32.926701, 24.350599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483955, 0.325314, 0.812379,
		0.828095, 0.129893, -0.545332,
		-0.282927, 0.936642, -0.206528,
		35.897102, 33.207695, 24.288641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.751305, 32.930103, 24.573435>,  <36.095150, 32.552044, 24.433210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.751305, 32.930103, 24.573435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.456810, 33.200191, 24.555435>,  <36.280113, 33.362244, 24.544636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.456810, 33.200191, 24.555435>,  <36.751305, 32.930103, 24.573435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.456810, 33.200191, 24.555435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342246, 0.428890, 0.836015,
		0.583798, 0.600105, -0.546858,
		-0.736238, 0.675224, -0.045001,
		36.235939, 33.402760, 24.541935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.982613, 33.553185, 24.901258>,  <36.751305, 32.930103, 24.573435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.982613, 33.553185, 24.901258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.589996, 33.629688, 24.901413>,  <36.354427, 33.675591, 24.901505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.589996, 33.629688, 24.901413>,  <36.982613, 33.553185, 24.901258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.589996, 33.629688, 24.901413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115027, 0.588710, 0.800119,
		0.152803, 0.785393, -0.599842,
		-0.981540, 0.191258, 0.000385,
		36.295536, 33.687065, 24.901529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.962288, 34.275738, 24.963497>,  <36.982613, 33.553185, 24.901258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.962288, 34.275738, 24.963497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.612011, 34.130611, 25.090954>,  <36.401844, 34.043537, 25.167427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.612011, 34.130611, 25.090954>,  <36.962288, 34.275738, 24.963497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.612011, 34.130611, 25.090954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154249, 0.415132, 0.896590,
		-0.457575, 0.834284, -0.307563,
		-0.875690, -0.362816, 0.318641,
		36.349304, 34.021767, 25.186546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.542133, 34.900482, 25.265177>,  <36.962288, 34.275738, 24.963497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.542133, 34.900482, 25.265177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.397114, 34.564518, 25.426725>,  <36.310101, 34.362942, 25.523655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.397114, 34.564518, 25.426725>,  <36.542133, 34.900482, 25.265177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.397114, 34.564518, 25.426725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037954, 0.419691, 0.906873,
		-0.931190, 0.344117, -0.120282,
		-0.362552, -0.839906, 0.403873,
		36.288349, 34.312546, 25.547888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.883190, 35.070095, 25.736214>,  <36.542133, 34.900482, 25.265177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.883190, 35.070095, 25.736214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.011120, 34.711712, 25.859482>,  <36.087879, 34.496681, 25.933443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.011120, 34.711712, 25.859482>,  <35.883190, 35.070095, 25.736214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.011120, 34.711712, 25.859482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024770, 0.317235, 0.948024,
		-0.947152, -0.310836, 0.079267,
		0.319827, -0.895959, 0.308169,
		36.107067, 34.442924, 25.951933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.426903, 34.800636, 26.167658>,  <35.883190, 35.070095, 25.736214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.426903, 34.800636, 26.167658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.741589, 34.579674, 26.277878>,  <35.930401, 34.447094, 26.344009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.741589, 34.579674, 26.277878>,  <35.426903, 34.800636, 26.167658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.741589, 34.579674, 26.277878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012511, 0.460540, 0.887551,
		-0.617195, -0.694799, 0.369223,
		0.786711, -0.552411, 0.275550,
		35.977600, 34.413952, 26.360542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.303181, 34.359184, 26.756676>,  <35.426903, 34.800636, 26.167658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.303181, 34.359184, 26.756676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.699230, 34.415188, 26.753859>,  <35.936859, 34.448788, 26.752169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.699230, 34.415188, 26.753859>,  <35.303181, 34.359184, 26.756676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.699230, 34.415188, 26.753859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025793, 0.231338, 0.972531,
		0.137790, -0.962747, 0.232665,
		0.990125, 0.140006, -0.007044,
		35.996269, 34.457191, 26.751745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.515694, 34.039295, 27.420019>,  <35.303181, 34.359184, 26.756676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.515694, 34.039295, 27.420019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.813282, 34.276867, 27.297537>,  <35.991837, 34.419411, 27.224047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.813282, 34.276867, 27.297537>,  <35.515694, 34.039295, 27.420019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.813282, 34.276867, 27.297537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276603, 0.143419, 0.950222,
		0.608277, -0.791634, -0.057582,
		0.743969, 0.593925, -0.306207,
		36.036472, 34.455044, 27.205675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.125263, 33.785156, 27.839060>,  <35.515694, 34.039295, 27.420019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.125263, 33.785156, 27.839060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.189121, 34.155556, 27.702211>,  <36.227436, 34.377796, 27.620102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.189121, 34.155556, 27.702211>,  <36.125263, 33.785156, 27.839060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.189121, 34.155556, 27.702211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227159, 0.302804, 0.925585,
		0.960683, -0.225482, -0.162007,
		0.159647, 0.925996, -0.342119,
		36.237015, 34.433353, 27.599575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.615513, 34.084980, 28.354607>,  <36.125263, 33.785156, 27.839060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.615513, 34.084980, 28.354607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.484123, 34.409546, 28.161230>,  <36.405289, 34.604286, 28.045204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.484123, 34.409546, 28.161230>,  <36.615513, 34.084980, 28.354607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.484123, 34.409546, 28.161230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144931, 0.549078, 0.823109,
		0.933327, 0.200305, -0.297957,
		-0.328474, 0.811413, -0.483439,
		36.385582, 34.652969, 28.016199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.088913, 34.627739, 28.508320>,  <36.615513, 34.084980, 28.354607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.088913, 34.627739, 28.508320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.760677, 34.812893, 28.374231>,  <36.563736, 34.923985, 28.293779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.760677, 34.812893, 28.374231>,  <37.088913, 34.627739, 28.508320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.760677, 34.812893, 28.374231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094363, 0.688228, 0.719331,
		0.563673, 0.558644, -0.608432,
		-0.820590, 0.462881, -0.335220,
		36.514500, 34.951756, 28.273664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.351696, 35.301872, 28.405252>,  <37.088913, 34.627739, 28.508320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.351696, 35.301872, 28.405252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.953983, 35.309975, 28.447178>,  <36.715355, 35.314835, 28.472334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.953983, 35.309975, 28.447178>,  <37.351696, 35.301872, 28.405252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.953983, 35.309975, 28.447178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075728, 0.825850, 0.558782,
		-0.075243, 0.563527, -0.822664,
		-0.994286, 0.020255, 0.104814,
		36.655697, 35.316051, 28.478622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.180111, 36.025234, 28.425999>,  <37.351696, 35.301872, 28.405252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.180111, 36.025234, 28.425999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.859364, 35.851944, 28.590590>,  <36.666916, 35.747971, 28.689344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.859364, 35.851944, 28.590590>,  <37.180111, 36.025234, 28.425999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.859364, 35.851944, 28.590590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051487, 0.736209, 0.674793,
		-0.595272, 0.519913, -0.612652,
		-0.801873, -0.433229, 0.411476,
		36.618801, 35.721973, 28.714033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.592514, 36.512859, 28.453749>,  <37.180111, 36.025234, 28.425999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.592514, 36.512859, 28.453749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.551105, 36.240089, 28.743370>,  <36.526260, 36.076427, 28.917143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.551105, 36.240089, 28.743370>,  <36.592514, 36.512859, 28.453749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.551105, 36.240089, 28.743370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011559, 0.728742, 0.684691,
		-0.994560, 0.062514, -0.083326,
		-0.103526, -0.681929, 0.724054,
		36.520046, 36.035511, 28.960587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.382332, 36.900684, 28.889967>,  <36.592514, 36.512859, 28.453749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.382332, 36.900684, 28.889967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.449539, 36.583698, 29.124496>,  <36.489864, 36.393509, 29.265213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.449539, 36.583698, 29.124496>,  <36.382332, 36.900684, 28.889967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.449539, 36.583698, 29.124496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104401, 0.605738, 0.788785,
		-0.980240, -0.071319, 0.184510,
		0.168020, -0.792461, 0.586323,
		36.499947, 36.345959, 29.300394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.949623, 36.879963, 29.542524>,  <36.382332, 36.900684, 28.889967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.949623, 36.879963, 29.542524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.273857, 36.657024, 29.614422>,  <36.468399, 36.523262, 29.657560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.273857, 36.657024, 29.614422>,  <35.949623, 36.879963, 29.542524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.273857, 36.657024, 29.614422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234359, 0.590013, 0.772632,
		-0.536677, -0.584163, 0.608878,
		0.810589, -0.557350, 0.179742,
		36.517033, 36.489819, 29.668344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.000874, 36.997051, 30.248455>,  <35.949623, 36.879963, 29.542524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.000874, 36.997051, 30.248455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.331467, 36.777306, 30.199272>,  <36.529823, 36.645458, 30.169762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.331467, 36.777306, 30.199272>,  <36.000874, 36.997051, 30.248455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.331467, 36.777306, 30.199272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394072, 0.408599, 0.823258,
		-0.402029, -0.728866, 0.554191,
		0.826487, -0.549365, -0.122957,
		36.579414, 36.612495, 30.162384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.152447, 36.665531, 30.887108>,  <36.000874, 36.997051, 30.248455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.152447, 36.665531, 30.887108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.504593, 36.643414, 30.698681>,  <36.715881, 36.630142, 30.585625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.504593, 36.643414, 30.698681>,  <36.152447, 36.665531, 30.887108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.504593, 36.643414, 30.698681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474287, 0.094698, 0.875262,
		-0.003790, -0.993969, 0.109596,
		0.880362, -0.055298, -0.471068,
		36.768700, 36.626823, 30.557360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.518784, 36.189323, 31.189142>,  <36.152447, 36.665531, 30.887108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.518784, 36.189323, 31.189142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.824158, 36.382275, 31.017338>,  <37.007381, 36.498043, 30.914255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.824158, 36.382275, 31.017338>,  <36.518784, 36.189323, 31.189142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.824158, 36.382275, 31.017338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478450, 0.024354, 0.877777,
		0.433879, -0.875626, -0.212199,
		0.763436, 0.482376, -0.429510,
		37.053188, 36.526989, 30.888485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.128025, 36.000965, 31.515482>,  <36.518784, 36.189323, 31.189142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.128025, 36.000965, 31.515482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.271976, 36.326355, 31.332726>,  <37.358345, 36.521587, 31.223072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.271976, 36.326355, 31.332726>,  <37.128025, 36.000965, 31.515482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.271976, 36.326355, 31.332726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425837, 0.292511, 0.856213,
		0.830153, -0.502690, -0.241140,
		0.359874, 0.813474, -0.456893,
		37.379940, 36.570396, 31.195658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.827663, 35.970341, 31.556772>,  <37.128025, 36.000965, 31.515482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.827663, 35.970341, 31.556772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.737049, 36.356735, 31.506891>,  <37.682682, 36.588573, 31.476963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.737049, 36.356735, 31.506891>,  <37.827663, 35.970341, 31.556772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.737049, 36.356735, 31.506891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430252, 0.214106, 0.876950,
		0.873823, 0.145004, -0.464120,
		-0.226532, 0.965988, -0.124703,
		37.669090, 36.646530, 31.469481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.411034, 36.342220, 31.710604>,  <37.827663, 35.970341, 31.556772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.411034, 36.342220, 31.710604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.096481, 36.576736, 31.788448>,  <37.907749, 36.717445, 31.835155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.096481, 36.576736, 31.788448>,  <38.411034, 36.342220, 31.710604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.096481, 36.576736, 31.788448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413836, 0.266084, 0.870597,
		0.458639, 0.765156, -0.451870,
		-0.786377, 0.586290, 0.194613,
		37.860569, 36.752625, 31.846832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.729244, 36.898750, 31.958061>,  <38.411034, 36.342220, 31.710604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.729244, 36.898750, 31.958061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.348698, 36.921227, 32.079220>,  <38.120369, 36.934711, 32.151917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.348698, 36.921227, 32.079220>,  <38.729244, 36.898750, 31.958061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.348698, 36.921227, 32.079220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307443, 0.110710, 0.945104,
		0.019568, 0.992263, -0.122600,
		-0.951365, 0.056186, 0.302898,
		38.063290, 36.938084, 32.170090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.693977, 37.496063, 32.349560>,  <38.729244, 36.898750, 31.958061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.693977, 37.496063, 32.349560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.367176, 37.280075, 32.430492>,  <38.171097, 37.150482, 32.479053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.367176, 37.280075, 32.430492>,  <38.693977, 37.496063, 32.349560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.367176, 37.280075, 32.430492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174615, 0.102743, 0.979262,
		-0.549562, 0.835389, 0.010345,
		-0.817002, -0.539971, 0.202335,
		38.122074, 37.118084, 32.491192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.349361, 37.902618, 32.820866>,  <38.693977, 37.496063, 32.349560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.349361, 37.902618, 32.820866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.229862, 37.522717, 32.858200>,  <38.158161, 37.294777, 32.880600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.229862, 37.522717, 32.858200>,  <38.349361, 37.902618, 32.820866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.229862, 37.522717, 32.858200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174305, 0.041857, 0.983802,
		-0.938278, 0.310182, 0.153043,
		-0.298751, -0.949755, 0.093340,
		38.140236, 37.237789, 32.886204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.962521, 37.914223, 33.345421>,  <38.349361, 37.902618, 32.820866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.962521, 37.914223, 33.345421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.037315, 37.523575, 33.303009>,  <38.082191, 37.289185, 33.277561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.037315, 37.523575, 33.303009>,  <37.962521, 37.914223, 33.345421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.037315, 37.523575, 33.303009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032082, -0.113945, 0.992969,
		-0.981838, -0.182271, -0.052638,
		0.186987, -0.976624, -0.106028,
		38.093410, 37.230587, 33.271202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.592976, 37.505688, 33.869423>,  <37.962521, 37.914223, 33.345421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.592976, 37.505688, 33.869423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.871307, 37.243698, 33.751553>,  <38.038307, 37.086506, 33.680832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.871307, 37.243698, 33.751553>,  <37.592976, 37.505688, 33.869423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.871307, 37.243698, 33.751553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029144, -0.384206, 0.922787,
		-0.717614, -0.650692, -0.248254,
		0.695831, -0.654970, -0.294676,
		38.080055, 37.047207, 33.663151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.401253, 36.891289, 34.176121>,  <37.592976, 37.505688, 33.869423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.401253, 36.891289, 34.176121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.788109, 36.826340, 34.097874>,  <38.020222, 36.787369, 34.050926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.788109, 36.826340, 34.097874>,  <37.401253, 36.891289, 34.176121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.788109, 36.826340, 34.097874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151211, -0.251160, 0.956062,
		-0.204372, -0.954229, -0.218355,
		0.967144, -0.162375, -0.195620,
		38.078251, 36.777626, 34.039188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.594753, 36.215580, 34.318306>,  <37.401253, 36.891289, 34.176121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.594753, 36.215580, 34.318306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.923634, 36.439892, 34.357311>,  <38.120964, 36.574478, 34.380714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.923634, 36.439892, 34.357311>,  <37.594753, 36.215580, 34.318306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.923634, 36.439892, 34.357311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083203, -0.287894, 0.954041,
		0.563078, -0.776303, -0.283366,
		0.822204, 0.560776, 0.097517,
		38.170296, 36.608124, 34.386566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.993912, 35.927780, 34.851837>,  <37.594753, 36.215580, 34.318306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.993912, 35.927780, 34.851837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.164486, 36.288784, 34.827740>,  <38.266830, 36.505386, 34.813282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.164486, 36.288784, 34.827740>,  <37.993912, 35.927780, 34.851837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.164486, 36.288784, 34.827740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077559, 0.029879, 0.996540,
		0.901185, -0.429637, -0.057256,
		0.426440, 0.902507, -0.060248,
		38.292419, 36.559536, 34.809666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.594791, 35.789536, 35.212204>,  <37.993912, 35.927780, 34.851837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.594791, 35.789536, 35.212204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.522282, 36.182732, 35.223999>,  <38.478775, 36.418648, 35.231075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.522282, 36.182732, 35.223999>,  <38.594791, 35.789536, 35.212204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.522282, 36.182732, 35.223999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305113, 0.027712, 0.951913,
		0.934903, 0.181558, -0.304946,
		-0.181278, 0.982990, 0.029488,
		38.467899, 36.477627, 35.232845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.107136, 36.006184, 35.653515>,  <38.594791, 35.789536, 35.212204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.107136, 36.006184, 35.653515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.852623, 36.314762, 35.652050>,  <38.699917, 36.499908, 35.651173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.852623, 36.314762, 35.652050>,  <39.107136, 36.006184, 35.653515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.852623, 36.314762, 35.652050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255056, 0.214843, 0.942756,
		0.728076, 0.598922, -0.333464,
		-0.636280, 0.771450, -0.003663,
		38.661739, 36.546196, 35.650951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.474998, 36.539406, 35.885796>,  <39.107136, 36.006184, 35.653515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.474998, 36.539406, 35.885796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.087406, 36.596691, 35.966354>,  <38.854851, 36.631062, 36.014690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.087406, 36.596691, 35.966354>,  <39.474998, 36.539406, 35.885796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.087406, 36.596691, 35.966354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229296, 0.217123, 0.948831,
		0.092155, 0.965582, -0.243226,
		-0.968984, 0.143210, 0.201395,
		38.796711, 36.639656, 36.026772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.378845, 37.178814, 36.275768>,  <39.474998, 36.539406, 35.885796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.378845, 37.178814, 36.275768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.029881, 36.992603, 36.335335>,  <38.820499, 36.880878, 36.371075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.029881, 36.992603, 36.335335>,  <39.378845, 37.178814, 36.275768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.029881, 36.992603, 36.335335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044391, 0.227946, 0.972661,
		-0.486745, 0.855175, -0.178199,
		-0.872415, -0.465528, 0.148913,
		38.768154, 36.852943, 36.380009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.956791, 37.647202, 36.632103>,  <39.378845, 37.178814, 36.275768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.956791, 37.647202, 36.632103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.850056, 37.271500, 36.718452>,  <38.786015, 37.046078, 36.770264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.850056, 37.271500, 36.718452>,  <38.956791, 37.647202, 36.632103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.850056, 37.271500, 36.718452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216420, 0.159875, 0.963121,
		-0.939126, 0.303721, 0.160612,
		-0.266842, -0.939252, 0.215874,
		38.770004, 36.989723, 36.783215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.535896, 37.635979, 37.258781>,  <38.956791, 37.647202, 36.632103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.535896, 37.635979, 37.258781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.715111, 37.279266, 37.233517>,  <38.822639, 37.065239, 37.218357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.715111, 37.279266, 37.233517>,  <38.535896, 37.635979, 37.258781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.715111, 37.279266, 37.233517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249757, 0.057013, 0.966629,
		-0.858421, -0.448859, 0.248272,
		0.448035, -0.891782, -0.063164,
		38.849522, 37.011730, 37.214569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.294445, 37.245697, 37.794674>,  <38.535896, 37.635979, 37.258781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.294445, 37.245697, 37.794674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.644985, 37.089817, 37.681431>,  <38.855309, 36.996288, 37.613483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.644985, 37.089817, 37.681431>,  <38.294445, 37.245697, 37.794674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.644985, 37.089817, 37.681431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280563, -0.064790, 0.957646,
		-0.391538, -0.918660, 0.052557,
		0.876346, -0.389701, -0.283110,
		38.907890, 36.972908, 37.596497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.353813, 36.585472, 38.247868>,  <38.294445, 37.245697, 37.794674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.353813, 36.585472, 38.247868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.698334, 36.730061, 38.105042>,  <38.905048, 36.816814, 38.019348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.698334, 36.730061, 38.105042>,  <38.353813, 36.585472, 38.247868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.698334, 36.730061, 38.105042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420320, -0.112084, 0.900427,
		0.285457, -0.925622, -0.248472,
		0.861304, 0.361471, -0.357063,
		38.956726, 36.838501, 37.997921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.716549, 36.069817, 38.554031>,  <38.353813, 36.585472, 38.247868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.716549, 36.069817, 38.554031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.953144, 36.383030, 38.477089>,  <39.095100, 36.570957, 38.430923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.953144, 36.383030, 38.477089>,  <38.716549, 36.069817, 38.554031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.953144, 36.383030, 38.477089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244307, 0.053312, 0.968231,
		0.768410, -0.619694, -0.159767,
		0.591489, 0.783031, -0.192361,
		39.130592, 36.617939, 38.419380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.147839, 36.053013, 39.178974>,  <38.716549, 36.069817, 38.554031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.147839, 36.053013, 39.178974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.285309, 36.382874, 38.999268>,  <39.367790, 36.580788, 38.891445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.285309, 36.382874, 38.999268>,  <39.147839, 36.053013, 39.178974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.285309, 36.382874, 38.999268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494212, 0.247971, 0.833225,
		0.798524, -0.508392, -0.322330,
		0.343677, 0.824650, -0.449264,
		39.388412, 36.630268, 38.864487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.921257, 36.106339, 39.286022>,  <39.147839, 36.053013, 39.178974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.921257, 36.106339, 39.286022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.728947, 36.453178, 39.233883>,  <39.613560, 36.661282, 39.202599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.728947, 36.453178, 39.233883>,  <39.921257, 36.106339, 39.286022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.728947, 36.453178, 39.233883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271047, 0.288342, 0.918364,
		0.833902, 0.406192, -0.373652,
		-0.480772, 0.867102, -0.130352,
		39.584717, 36.713310, 39.194778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.413158, 36.594738, 39.544094>,  <39.921257, 36.106339, 39.286022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.413158, 36.594738, 39.544094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.038860, 36.735706, 39.538723>,  <39.814281, 36.820290, 39.535500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.038860, 36.735706, 39.538723>,  <40.413158, 36.594738, 39.544094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.038860, 36.735706, 39.538723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091176, 0.278506, 0.956097,
		0.340691, 0.893438, -0.292743,
		-0.935744, 0.352424, -0.013424,
		39.758137, 36.841434, 39.534695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.472698, 37.201733, 39.982826>,  <40.413158, 36.594738, 39.544094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.472698, 37.201733, 39.982826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.092056, 37.079746, 39.967602>,  <39.863670, 37.006554, 39.958466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.092056, 37.079746, 39.967602>,  <40.472698, 37.201733, 39.982826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.092056, 37.079746, 39.967602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126547, 0.275950, 0.952805,
		-0.280069, 0.911508, -0.301187,
		-0.951602, -0.304965, -0.038064,
		39.806576, 36.988258, 39.956184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.113438, 37.775665, 40.307461>,  <40.472698, 37.201733, 39.982826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.113438, 37.775665, 40.307461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.895744, 37.440098, 40.309158>,  <39.765129, 37.238758, 40.310177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.895744, 37.440098, 40.309158>,  <40.113438, 37.775665, 40.307461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.895744, 37.440098, 40.309158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216348, 0.145238, 0.965453,
		-0.810556, 0.524515, -0.260543,
		-0.544235, -0.838922, 0.004246,
		39.732475, 37.188419, 40.310432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.427181, 37.890827, 40.545685>,  <40.113438, 37.775665, 40.307461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.427181, 37.890827, 40.545685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.517014, 37.507614, 40.616940>,  <39.570911, 37.277687, 40.659695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.517014, 37.507614, 40.616940>,  <39.427181, 37.890827, 40.545685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.517014, 37.507614, 40.616940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385432, 0.080568, 0.919212,
		-0.894989, -0.275098, -0.351163,
		0.224581, -0.958034, 0.178139,
		39.584389, 37.220203, 40.670380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.947235, 37.592773, 40.914391>,  <39.427181, 37.890827, 40.545685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.947235, 37.592773, 40.914391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.204678, 37.289352, 40.955128>,  <39.359142, 37.107300, 40.979568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.204678, 37.289352, 40.955128>,  <38.947235, 37.592773, 40.914391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.204678, 37.289352, 40.955128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238039, -0.071924, 0.968589,
		-0.727402, -0.647628, -0.226856,
		0.643602, -0.758554, 0.101843,
		39.397758, 37.061787, 40.985680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.891045, 37.519756, 41.589848>,  <38.947235, 37.592773, 40.914391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.891045, 37.519756, 41.589848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.129406, 37.218697, 41.477829>,  <39.272423, 37.038063, 41.410618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.129406, 37.218697, 41.477829>,  <38.891045, 37.519756, 41.589848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.129406, 37.218697, 41.477829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068570, -0.299765, 0.951546,
		-0.800126, -0.586228, -0.127021,
		0.595900, -0.752647, -0.280048,
		39.308174, 36.992901, 41.393814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.639076, 36.882153, 41.919796>,  <38.891045, 37.519756, 41.589848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.639076, 36.882153, 41.919796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.020359, 36.821171, 41.815376>,  <39.249130, 36.784584, 41.752724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.020359, 36.821171, 41.815376>,  <38.639076, 36.882153, 41.919796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.020359, 36.821171, 41.815376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204745, -0.309754, 0.928510,
		-0.222415, -0.938515, -0.264047,
		0.953211, -0.152452, -0.261050,
		39.306324, 36.775436, 41.737061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.834614, 36.230652, 42.180038>,  <38.639076, 36.882153, 41.919796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.834614, 36.230652, 42.180038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.185463, 36.416649, 42.131985>,  <39.395973, 36.528248, 42.103153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.185463, 36.416649, 42.131985>,  <38.834614, 36.230652, 42.180038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.185463, 36.416649, 42.131985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281313, -0.294700, 0.913244,
		0.389244, -0.834827, -0.389297,
		0.877127, 0.464989, -0.120138,
		39.448601, 36.556145, 42.095943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.332630, 35.788952, 42.516605>,  <38.834614, 36.230652, 42.180038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.332630, 35.788952, 42.516605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.520786, 36.138744, 42.469269>,  <39.633682, 36.348621, 42.440868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.520786, 36.138744, 42.469269>,  <39.332630, 35.788952, 42.516605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.520786, 36.138744, 42.469269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535188, -0.176079, 0.826178,
		0.701642, -0.451965, -0.550841,
		0.470395, 0.874485, -0.118342,
		39.661903, 36.401089, 42.433765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.028385, 35.660030, 42.461407>,  <39.332630, 35.788952, 42.516605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.028385, 35.660030, 42.461407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.940620, 36.022091, 42.607048>,  <39.887962, 36.239326, 42.694431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.940620, 36.022091, 42.607048>,  <40.028385, 35.660030, 42.461407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.940620, 36.022091, 42.607048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482225, -0.223809, 0.846976,
		0.848127, 0.361412, -0.387379,
		-0.219408, 0.905147, 0.364101,
		39.874798, 36.293636, 42.716278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.653358, 35.921391, 42.774876>,  <40.028385, 35.660030, 42.461407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.653358, 35.921391, 42.774876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.363506, 36.139412, 42.943554>,  <40.189594, 36.270226, 43.044762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.363506, 36.139412, 42.943554>,  <40.653358, 35.921391, 42.774876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.363506, 36.139412, 42.943554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459308, -0.074201, 0.885172,
		0.513760, 0.835109, -0.196581,
		-0.724629, 0.545057, 0.421694,
		40.146118, 36.302929, 43.070061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.868439, 36.556763, 43.103153>,  <40.653358, 35.921391, 42.774876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.868439, 36.556763, 43.103153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.535492, 36.435505, 43.288742>,  <40.335724, 36.362751, 43.400097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.535492, 36.435505, 43.288742>,  <40.868439, 36.556763, 43.103153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.535492, 36.435505, 43.288742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520930, -0.142138, 0.841682,
		-0.189202, 0.942285, 0.276227,
		-0.832367, -0.303143, 0.463972,
		40.285782, 36.344563, 43.427933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.507145, 37.027969, 43.728733>,  <40.868439, 36.556763, 43.103153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.507145, 37.027969, 43.728733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.437618, 36.636356, 43.771210>,  <40.395901, 36.401386, 43.796696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.437618, 36.636356, 43.771210>,  <40.507145, 37.027969, 43.728733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.437618, 36.636356, 43.771210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451505, 0.016605, 0.892114,
		-0.875174, 0.203015, 0.439153,
		-0.173821, -0.979035, 0.106195,
		40.385471, 36.342648, 43.803066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.344990, 36.899284, 44.436893>,  <40.507145, 37.027969, 43.728733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.344990, 36.899284, 44.436893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.492081, 36.549744, 44.309673>,  <40.580334, 36.340019, 44.233341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.492081, 36.549744, 44.309673>,  <40.344990, 36.899284, 44.436893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.492081, 36.549744, 44.309673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528573, -0.084984, 0.844623,
		-0.765107, -0.478702, 0.430645,
		0.367725, -0.873854, -0.318051,
		40.602398, 36.287586, 44.214256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.129822, 36.184471, 44.897251>,  <40.344990, 36.899284, 44.436893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.129822, 36.184471, 44.897251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.481094, 36.199333, 44.706497>,  <40.691856, 36.208252, 44.592045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.481094, 36.199333, 44.706497>,  <40.129822, 36.184471, 44.897251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.481094, 36.199333, 44.706497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477888, -0.025479, 0.878051,
		0.020471, -0.998985, -0.040130,
		0.878182, 0.037152, -0.476881,
		40.744549, 36.210480, 44.563435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.646866, 35.537247, 44.916084>,  <40.129822, 36.184471, 44.897251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.646866, 35.537247, 44.916084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.791065, 35.910343, 44.918076>,  <40.877586, 36.134201, 44.919270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.791065, 35.910343, 44.918076>,  <40.646866, 35.537247, 44.916084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.791065, 35.910343, 44.918076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524850, -0.207259, 0.825576,
		0.771084, -0.295009, -0.564268,
		0.360502, 0.932745, 0.004979,
		40.899216, 36.190166, 44.919571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.681213, 35.089550, 44.338402>,  <40.646866, 35.537247, 44.916084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.681213, 35.089550, 44.338402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.601414, 35.477085, 44.279671>,  <40.553535, 35.709606, 44.244434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.601414, 35.477085, 44.279671>,  <40.681213, 35.089550, 44.338402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.601414, 35.477085, 44.279671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506859, -0.230260, -0.830707,
		-0.838627, -0.091304, 0.536999,
		-0.199496, 0.968836, -0.146824,
		40.541565, 35.767735, 44.235622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.085957, 35.062538, 43.936718>,  <40.681213, 35.089550, 44.338402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.085957, 35.062538, 43.936718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.178345, 35.450283, 43.903290>,  <40.233776, 35.682930, 43.883232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.178345, 35.450283, 43.903290>,  <40.085957, 35.062538, 43.936718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.178345, 35.450283, 43.903290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528355, 0.052839, -0.847378,
		-0.817003, 0.239871, 0.524373,
		0.230969, 0.969366, -0.083568,
		40.247635, 35.741093, 43.878220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.479237, 35.450729, 43.806744>,  <40.085957, 35.062538, 43.936718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.479237, 35.450729, 43.806744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.811764, 35.621395, 43.664268>,  <40.011280, 35.723793, 43.578781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.811764, 35.621395, 43.664268>,  <39.479237, 35.450729, 43.806744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.811764, 35.621395, 43.664268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420643, 0.064104, -0.904958,
		-0.363278, 0.902136, 0.232764,
		0.831317, 0.426662, -0.356190,
		40.061157, 35.749393, 43.557411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.116856, 36.090069, 43.835194>,  <39.479237, 35.450729, 43.806744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.116856, 36.090069, 43.835194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.496422, 36.166092, 43.734451>,  <39.724163, 36.211704, 43.674007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.496422, 36.166092, 43.734451>,  <39.116856, 36.090069, 43.835194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.496422, 36.166092, 43.734451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315444, 0.588889, -0.744113,
		0.006892, 0.785550, 0.618760,
		0.948919, 0.190056, -0.251856,
		39.781097, 36.223110, 43.658894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.175713, 36.875900, 43.746189>,  <39.116856, 36.090069, 43.835194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.175713, 36.875900, 43.746189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.467068, 36.700714, 43.535423>,  <39.641880, 36.595604, 43.408966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.467068, 36.700714, 43.535423>,  <39.175713, 36.875900, 43.746189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.467068, 36.700714, 43.535423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282648, 0.508475, -0.813366,
		0.624144, 0.741379, 0.246579,
		0.728391, -0.437962, -0.526911,
		39.685585, 36.569324, 43.377350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.457600, 37.377132, 43.317356>,  <39.175713, 36.875900, 43.746189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.457600, 37.377132, 43.317356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.574760, 37.045494, 43.126862>,  <39.645058, 36.846512, 43.012566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.574760, 37.045494, 43.126862>,  <39.457600, 37.377132, 43.317356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.574760, 37.045494, 43.126862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163150, 0.447437, -0.879308,
		0.942120, 0.335249, -0.004212,
		0.292903, -0.829100, -0.476236,
		39.662632, 36.796764, 42.983990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.992096, 37.521259, 42.775867>,  <39.457600, 37.377132, 43.317356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.992096, 37.521259, 42.775867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.779076, 37.198112, 42.674881>,  <39.651264, 37.004223, 42.614288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.779076, 37.198112, 42.674881>,  <39.992096, 37.521259, 42.775867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.779076, 37.198112, 42.674881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112749, 0.363341, -0.924808,
		0.838854, -0.464042, -0.284584,
		-0.532551, -0.807866, -0.252470,
		39.619308, 36.955753, 42.599140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.149487, 37.249233, 42.095818>,  <39.992096, 37.521259, 42.775867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.149487, 37.249233, 42.095818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.774090, 37.177162, 42.213646>,  <39.548851, 37.133919, 42.284344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.774090, 37.177162, 42.213646>,  <40.149487, 37.249233, 42.095818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.774090, 37.177162, 42.213646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344506, 0.430541, -0.834236,
		0.023489, -0.884403, -0.466132,
		-0.938490, -0.180181, 0.294569,
		39.492542, 37.123108, 42.302017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.649757, 36.876480, 42.015457>,  <40.149487, 37.249233, 42.095818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.649757, 36.876480, 42.015457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.285454, 36.711597, 42.005596>,  <40.066872, 36.612667, 41.999680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.285454, 36.711597, 42.005596>,  <40.649757, 36.876480, 42.015457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.285454, 36.711597, 42.005596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099716, 0.277471, -0.955545,
		0.400727, -0.867809, -0.293812,
		-0.910755, -0.412211, -0.024656,
		40.012226, 36.587936, 41.998199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.536129, 36.512840, 41.443752>,  <40.649757, 36.876480, 42.015457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.536129, 36.512840, 41.443752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.144543, 36.539738, 41.520798>,  <39.909592, 36.555878, 41.567024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.144543, 36.539738, 41.520798>,  <40.536129, 36.512840, 41.443752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.144543, 36.539738, 41.520798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158145, 0.346326, -0.924688,
		-0.128890, -0.935701, -0.328407,
		-0.978968, 0.067247, 0.192614,
		39.850853, 36.559910, 41.578583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.182178, 36.115898, 40.994614>,  <40.536129, 36.512840, 41.443752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.182178, 36.115898, 40.994614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.929310, 36.405521, 41.104954>,  <39.777588, 36.579296, 41.171158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.929310, 36.405521, 41.104954>,  <40.182178, 36.115898, 40.994614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.929310, 36.405521, 41.104954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245204, 0.150760, -0.957677,
		-0.735005, -0.673056, 0.082237,
		-0.632172, 0.724063, 0.275846,
		39.739658, 36.622742, 41.187706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.556408, 35.901833, 40.790199>,  <40.182178, 36.115898, 40.994614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.556408, 35.901833, 40.790199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.550354, 36.301552, 40.803936>,  <39.546722, 36.541382, 40.812176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.550354, 36.301552, 40.803936>,  <39.556408, 35.901833, 40.790199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.550354, 36.301552, 40.803936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053679, 0.033481, -0.997997,
		-0.998444, -0.016946, 0.053134,
		-0.015133, 0.999296, 0.034339,
		39.545815, 36.601341, 40.814240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.865440, 36.197433, 40.548512>,  <39.556408, 35.901833, 40.790199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.865440, 36.197433, 40.548512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.142159, 36.467617, 40.446396>,  <39.308189, 36.629726, 40.385124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.142159, 36.467617, 40.446396>,  <38.865440, 36.197433, 40.548512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.142159, 36.467617, 40.446396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143883, -0.217512, -0.965394,
		-0.707614, 0.704586, -0.053287,
		0.691794, 0.675460, -0.255293,
		39.349697, 36.670254, 40.369808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.637074, 36.453930, 39.882107>,  <38.865440, 36.197433, 40.548512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.637074, 36.453930, 39.882107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.002491, 36.614323, 39.909386>,  <39.221741, 36.710556, 39.925751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.002491, 36.614323, 39.909386>,  <38.637074, 36.453930, 39.882107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.002491, 36.614323, 39.909386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193678, -0.281416, -0.939837,
		-0.357664, 0.871792, -0.334747,
		0.913545, 0.400979, 0.068195,
		39.276554, 36.734615, 39.929844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.551163, 37.061047, 40.128883>,  <38.637074, 36.453930, 39.882107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.551163, 37.061047, 40.128883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.933220, 37.104057, 40.018509>,  <39.162453, 37.129864, 39.952286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.933220, 37.104057, 40.018509>,  <38.551163, 37.061047, 40.128883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.933220, 37.104057, 40.018509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284159, 0.070411, -0.956188,
		-0.083383, 0.991706, 0.097807,
		0.955144, 0.107523, -0.275932,
		39.219765, 37.136314, 39.935730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.622673, 37.512753, 39.623344>,  <38.551163, 37.061047, 40.128883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.622673, 37.512753, 39.623344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.960545, 37.303146, 39.579659>,  <39.163269, 37.177383, 39.553448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.960545, 37.303146, 39.579659>,  <38.622673, 37.512753, 39.623344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.960545, 37.303146, 39.579659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056633, 0.115399, -0.991703,
		0.532270, 0.843855, 0.067799,
		0.844678, -0.524014, -0.109213,
		39.213947, 37.145943, 39.546894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.998039, 37.859924, 39.149628>,  <38.622673, 37.512753, 39.623344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.998039, 37.859924, 39.149628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.214092, 37.523621, 39.164505>,  <39.343723, 37.321838, 39.173431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.214092, 37.523621, 39.164505>,  <38.998039, 37.859924, 39.149628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.214092, 37.523621, 39.164505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062641, -0.003910, -0.998029,
		0.839247, 0.541395, 0.050554,
		0.540130, -0.840759, 0.037195,
		39.376133, 37.271393, 39.175663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.573574, 37.888004, 38.769436>,  <38.998039, 37.859924, 39.149628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.573574, 37.888004, 38.769436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.489799, 37.497036, 38.780651>,  <39.439533, 37.262455, 38.787380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.489799, 37.497036, 38.780651>,  <39.573574, 37.888004, 38.769436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.489799, 37.497036, 38.780651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057447, -0.040924, -0.997509,
		0.976132, -0.207308, 0.064721,
		-0.209441, -0.977420, 0.028038,
		39.426968, 37.203812, 38.789062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.966141, 37.573570, 38.268845>,  <39.573574, 37.888004, 38.769436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.966141, 37.573570, 38.268845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.693459, 37.283390, 38.306789>,  <39.529850, 37.109280, 38.329556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.693459, 37.283390, 38.306789>,  <39.966141, 37.573570, 38.268845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.693459, 37.283390, 38.306789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012821, -0.117795, -0.992955,
		0.731518, -0.678116, 0.071000,
		-0.681702, -0.725454, 0.094863,
		39.488949, 37.065754, 38.335247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.270023, 36.954807, 37.942150>,  <39.966141, 37.573570, 38.268845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.270023, 36.954807, 37.942150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.870396, 36.965061, 37.928326>,  <39.630619, 36.971214, 37.920033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.870396, 36.965061, 37.928326>,  <40.270023, 36.954807, 37.942150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.870396, 36.965061, 37.928326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027690, -0.231644, -0.972407,
		-0.032935, -0.972463, 0.230719,
		-0.999074, 0.025637, -0.034556,
		39.570675, 36.972752, 37.917957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.061356, 36.473866, 37.385075>,  <40.270023, 36.954807, 37.942150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.061356, 36.473866, 37.385075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.685131, 36.594116, 37.448280>,  <39.459396, 36.666267, 37.486202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.685131, 36.594116, 37.448280>,  <40.061356, 36.473866, 37.385075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.685131, 36.594116, 37.448280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209439, -0.147169, -0.966683,
		-0.267356, -0.942319, 0.201384,
		-0.940561, 0.300626, 0.158012,
		39.402962, 36.684303, 37.495686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.646240, 35.970905, 37.079895>,  <40.061356, 36.473866, 37.385075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.646240, 35.970905, 37.079895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.415222, 36.293930, 37.127701>,  <39.276611, 36.487747, 37.156384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.415222, 36.293930, 37.127701>,  <39.646240, 35.970905, 37.079895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.415222, 36.293930, 37.127701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265651, -0.047479, -0.962900,
		-0.771928, -0.587866, 0.241951,
		-0.577543, 0.807564, 0.119516,
		39.241959, 36.536198, 37.163555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.994465, 35.834538, 36.719109>,  <39.646240, 35.970905, 37.079895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.994465, 35.834538, 36.719109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.052608, 36.228992, 36.751122>,  <39.087494, 36.465664, 36.770329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.052608, 36.228992, 36.751122>,  <38.994465, 35.834538, 36.719109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.052608, 36.228992, 36.751122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283907, 0.119061, -0.951431,
		-0.947769, 0.115583, 0.297279,
		0.145364, 0.986136, 0.080028,
		39.096218, 36.524834, 36.775131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.374367, 35.330315, 36.861668>,  <38.994465, 35.834538, 36.719109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.374367, 35.330315, 36.861668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.389977, 35.341625, 37.261204>,  <39.399342, 35.348412, 37.500923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.389977, 35.341625, 37.261204>,  <39.374367, 35.330315, 36.861668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.389977, 35.341625, 37.261204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216027, -0.976199, 0.019198,
		0.975607, 0.215027, -0.044206,
		0.039026, 0.028279, 0.998838,
		39.401684, 35.350109, 37.560856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.075809, 35.271385, 37.045486>,  <39.374367, 35.330315, 36.861668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.075809, 35.271385, 37.045486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.808468, 35.104511, 37.291824>,  <39.648064, 35.004387, 37.439625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.808468, 35.104511, 37.291824>,  <40.075809, 35.271385, 37.045486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.808468, 35.104511, 37.291824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528814, -0.848737, -0.001041,
		0.523121, 0.324969, 0.787870,
		-0.668357, -0.417181, 0.615840,
		39.607960, 34.979359, 37.476578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.040955, 35.129784, 37.836563>,  <40.075809, 35.271385, 37.045486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.040955, 35.129784, 37.836563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.350330, 35.167767, 38.087254>,  <40.535954, 35.190556, 38.237667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.350330, 35.167767, 38.087254>,  <40.040955, 35.129784, 37.836563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.350330, 35.167767, 38.087254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105906, -0.994177, 0.019927,
		0.624964, 0.050961, -0.778988,
		0.773436, 0.094953, 0.626722,
		40.582359, 35.196251, 38.275269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.510731, 34.725250, 37.611015>,  <40.040955, 35.129784, 37.836563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.510731, 34.725250, 37.611015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.637348, 34.689690, 37.988777>,  <40.713318, 34.668354, 38.215435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.637348, 34.689690, 37.988777>,  <40.510731, 34.725250, 37.611015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.637348, 34.689690, 37.988777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244779, -0.954225, -0.171866,
		0.916452, 0.285573, -0.280293,
		0.316543, -0.088897, 0.944403,
		40.732311, 34.663021, 38.272099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.306313, 34.599483, 37.725052>,  <40.510731, 34.725250, 37.611015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.306313, 34.599483, 37.725052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.036625, 34.425838, 37.964043>,  <40.874813, 34.321651, 38.107437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.036625, 34.425838, 37.964043>,  <41.306313, 34.599483, 37.725052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.036625, 34.425838, 37.964043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221075, -0.890539, -0.397575,
		0.704666, -0.135967, 0.696390,
		-0.674220, -0.434112, 0.597474,
		40.834358, 34.295605, 38.143284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.553989, 33.851795, 37.676918>,  <41.306313, 34.599483, 37.725052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.553989, 33.851795, 37.676918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.225113, 33.835552, 37.449814>,  <41.027786, 33.825806, 37.313549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.225113, 33.835552, 37.449814>,  <41.553989, 33.851795, 37.676918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.225113, 33.835552, 37.449814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474390, 0.600122, 0.644056,
		0.314575, 0.798877, -0.512677,
		-0.822190, -0.040605, -0.567763,
		40.978455, 33.823372, 37.279484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.810936, 33.456398, 38.258526>,  <41.553989, 33.851795, 37.676918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.810936, 33.456398, 38.258526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.599499, 33.372265, 38.587490>,  <41.472637, 33.321785, 38.784866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.599499, 33.372265, 38.587490>,  <41.810936, 33.456398, 38.258526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.599499, 33.372265, 38.587490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848151, 0.170962, -0.501410,
		-0.035135, -0.962565, -0.268765,
		-0.528589, -0.210336, 0.822407,
		41.440922, 33.309162, 38.834213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.409058, 33.345539, 37.748829>,  <41.810936, 33.456398, 38.258526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.409058, 33.345539, 37.748829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.800682, 33.395493, 37.813133>,  <43.035656, 33.425465, 37.851715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.800682, 33.395493, 37.813133>,  <42.409058, 33.345539, 37.748829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.800682, 33.395493, 37.813133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161977, 0.000427, -0.986794,
		-0.123301, 0.992172, -0.019810,
		0.979061, 0.124881, 0.160761,
		43.094398, 33.432957, 37.861362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.680641, 33.662193, 37.117287>,  <42.409058, 33.345539, 37.748829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.680641, 33.662193, 37.117287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.982742, 33.507305, 37.328815>,  <43.164001, 33.414371, 37.455734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.982742, 33.507305, 37.328815>,  <42.680641, 33.662193, 37.117287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.982742, 33.507305, 37.328815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452361, -0.275913, -0.848081,
		0.474306, 0.879733, -0.033220,
		0.755251, -0.387222, 0.528824,
		43.209316, 33.391140, 37.487461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.429592, 34.001183, 36.952133>,  <42.680641, 33.662193, 37.117287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.429592, 34.001183, 36.952133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.463314, 33.623714, 37.080124>,  <43.483547, 33.397236, 37.156918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.463314, 33.623714, 37.080124>,  <43.429592, 34.001183, 36.952133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.463314, 33.623714, 37.080124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348814, -0.272857, -0.896593,
		0.933393, 0.187197, 0.306161,
		0.084301, -0.943667, 0.319979,
		43.488605, 33.340614, 37.176117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.068810, 33.842842, 36.975174>,  <43.429592, 34.001183, 36.952133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.068810, 33.842842, 36.975174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.845909, 33.529892, 36.863914>,  <43.712170, 33.342121, 36.797157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.845909, 33.529892, 36.863914>,  <44.068810, 33.842842, 36.975174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.845909, 33.529892, 36.863914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453767, -0.006394, -0.891097,
		0.695391, -0.622779, 0.358578,
		-0.557249, -0.782372, -0.278150,
		43.678734, 33.295181, 36.780468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.477932, 33.284836, 36.633579>,  <44.068810, 33.842842, 36.975174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.477932, 33.284836, 36.633579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.111057, 33.222763, 36.486786>,  <43.890930, 33.185520, 36.398708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.111057, 33.222763, 36.486786>,  <44.477932, 33.284836, 36.633579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.111057, 33.222763, 36.486786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383281, -0.091905, -0.919048,
		0.108896, -0.983601, 0.143774,
		-0.917190, -0.155186, -0.366987,
		43.835899, 33.176208, 36.376690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.510704, 32.606358, 36.475307>,  <44.477932, 33.284836, 36.633579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.510704, 32.606358, 36.475307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.234619, 32.788952, 36.250725>,  <44.068970, 32.898510, 36.115974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.234619, 32.788952, 36.250725>,  <44.510704, 32.606358, 36.475307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.234619, 32.788952, 36.250725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432878, -0.361291, -0.825885,
		-0.579854, -0.813074, 0.051763,
		-0.690207, 0.456486, -0.561458,
		44.027557, 32.925896, 36.082287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.100510, 32.899506, 36.072647>,  <44.510704, 32.606358, 36.475307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.100510, 32.899506, 36.072647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.054840, 33.295773, 36.102451>,  <45.027439, 33.533531, 36.120335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.054840, 33.295773, 36.102451>,  <45.100510, 32.899506, 36.072647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.054840, 33.295773, 36.102451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953536, 0.088230, 0.288069,
		0.278806, 0.103937, -0.954706,
		-0.114175, 0.990663, 0.074509,
		45.020588, 33.592972, 36.124805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.609333, 33.136955, 35.648430>,  <45.100510, 32.899506, 36.072647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.609333, 33.136955, 35.648430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.551647, 33.319633, 35.999573>,  <45.517036, 33.429241, 36.210258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.551647, 33.319633, 35.999573>,  <45.609333, 33.136955, 35.648430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.551647, 33.319633, 35.999573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984294, 0.157483, 0.079770,
		-0.101817, 0.875574, -0.472232,
		-0.144213, 0.456693, 0.877857,
		45.508385, 33.456642, 36.262932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.269180, 33.506069, 35.717663>,  <45.609333, 33.136955, 35.648430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.269180, 33.506069, 35.717663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.086960, 33.517956, 36.073547>,  <45.977627, 33.525089, 36.287079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.086960, 33.517956, 36.073547>,  <46.269180, 33.506069, 35.717663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.086960, 33.517956, 36.073547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888917, 0.069062, 0.452832,
		-0.047987, 0.997170, -0.057880,
		-0.455547, 0.029721, 0.889715,
		45.950294, 33.526871, 36.340462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.644558, 33.737595, 35.150669>,  <46.269180, 33.506069, 35.717663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.644558, 33.737595, 35.150669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.820320, 33.385834, 35.077385>,  <46.925777, 33.174778, 35.033417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.820320, 33.385834, 35.077385>,  <46.644558, 33.737595, 35.150669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.820320, 33.385834, 35.077385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497283, -0.068291, -0.864896,
		0.748084, 0.471149, -0.467321,
		0.439409, -0.879406, -0.183207,
		46.952145, 33.122013, 35.022423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.003422, 33.868286, 35.774616>,  <46.644558, 33.737595, 35.150669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.003422, 33.868286, 35.774616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.965294, 34.097149, 35.448780>,  <46.942417, 34.234467, 35.253281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.965294, 34.097149, 35.448780>,  <47.003422, 33.868286, 35.774616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.965294, 34.097149, 35.448780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562290, 0.706210, 0.430230,
		0.821428, -0.417024, -0.389034,
		-0.095324, 0.572152, -0.814589,
		46.936695, 34.268795, 35.204403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.647072, 33.981728, 35.691147>,  <47.003422, 33.868286, 35.774616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.647072, 33.981728, 35.691147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.410076, 34.260395, 35.529354>,  <47.267879, 34.427597, 35.432278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.410076, 34.260395, 35.529354>,  <47.647072, 33.981728, 35.691147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.410076, 34.260395, 35.529354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645870, 0.710895, 0.278351,
		0.481465, -0.096324, -0.871156,
		-0.592489, 0.696670, -0.404484,
		47.232330, 34.469395, 35.408009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.897331, 34.426758, 35.079502>,  <47.647072, 33.981728, 35.691147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.897331, 34.426758, 35.079502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.636826, 34.589752, 35.335567>,  <47.480522, 34.687550, 35.489208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.636826, 34.589752, 35.335567>,  <47.897331, 34.426758, 35.079502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.636826, 34.589752, 35.335567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649586, 0.735463, 0.192697,
		-0.392298, 0.541340, -0.743675,
		-0.651260, 0.407487, 0.640168,
		47.441448, 34.711998, 35.527618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.639282, 35.033596, 34.762028>,  <47.897331, 34.426758, 35.079502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.639282, 35.033596, 34.762028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.662819, 35.021729, 35.161160>,  <47.676941, 35.014610, 35.400639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.662819, 35.021729, 35.161160>,  <47.639282, 35.033596, 34.762028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.662819, 35.021729, 35.161160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660719, 0.750449, -0.016648,
		-0.748324, 0.660263, 0.063756,
		0.058838, -0.029666, 0.997827,
		47.680470, 35.012829, 35.460506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<32.040462, 32.902096, 29.063293> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.677753, 33.034153, 29.168184>,  <31.460127, 33.113388, 29.231119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.677753, 33.034153, 29.168184>,  <32.040462, 32.902096, 29.063293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.677753, 33.034153, 29.168184> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394125, 0.442846, 0.805328,
		0.149748, 0.833602, -0.531680,
		-0.906775, 0.330145, 0.262228,
		31.405722, 33.133198, 29.246853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.153034, 33.489101, 29.485916>,  <32.040462, 32.902096, 29.063293>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.153034, 33.489101, 29.485916> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.758314, 33.443291, 29.531729>,  <31.521482, 33.415802, 29.559216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.758314, 33.443291, 29.531729>,  <32.153034, 33.489101, 29.485916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.758314, 33.443291, 29.531729> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079673, 0.272408, 0.958878,
		-0.141020, 0.955341, -0.259686,
		-0.986796, -0.114531, 0.114530,
		31.462275, 33.408932, 29.566088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.865162, 34.144447, 29.691256>,  <32.153034, 33.489101, 29.485916>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.865162, 34.144447, 29.691256> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.590158, 33.877010, 29.804611>,  <31.425156, 33.716549, 29.872625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.590158, 33.877010, 29.804611>,  <31.865162, 34.144447, 29.691256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.590158, 33.877010, 29.804611> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042554, 0.352486, 0.934849,
		-0.724928, 0.654776, -0.213886,
		-0.687509, -0.668597, 0.283390,
		31.383905, 33.676430, 29.889627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.323681, 34.530972, 29.987278>,  <31.865162, 34.144447, 29.691256>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.323681, 34.530972, 29.987278> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.306599, 34.166630, 30.151482>,  <31.296349, 33.948025, 30.250004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.306599, 34.166630, 30.151482>,  <31.323681, 34.530972, 29.987278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.306599, 34.166630, 30.151482> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023320, 0.409864, 0.911848,
		-0.998816, 0.048514, 0.003738,
		-0.042706, -0.910856, 0.410510,
		31.293787, 33.893372, 30.274635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.703959, 34.521416, 30.427473>,  <31.323681, 34.530972, 29.987278>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.703959, 34.521416, 30.427473> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.928619, 34.206402, 30.528927>,  <31.063416, 34.017391, 30.589800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.928619, 34.206402, 30.528927>,  <30.703959, 34.521416, 30.427473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.928619, 34.206402, 30.528927> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063113, 0.346441, 0.935946,
		-0.824962, -0.509669, 0.244283,
		0.561653, -0.787538, 0.253635,
		31.097115, 33.970142, 30.605017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.419497, 34.388771, 31.116457>,  <30.703959, 34.521416, 30.427473>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.419497, 34.388771, 31.116457> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.761583, 34.181793, 31.104815>,  <30.966835, 34.057606, 31.097828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.761583, 34.181793, 31.104815>,  <30.419497, 34.388771, 31.116457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.761583, 34.181793, 31.104815> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155063, 0.201883, 0.967057,
		-0.494527, -0.831558, 0.252892,
		0.855219, -0.517449, -0.029108,
		31.018148, 34.026558, 31.096083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.469931, 33.926525, 31.655554>,  <30.419497, 34.388771, 31.116457>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.469931, 33.926525, 31.655554> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.853573, 33.970676, 31.551300>,  <31.083759, 33.997169, 31.488749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.853573, 33.970676, 31.551300>,  <30.469931, 33.926525, 31.655554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.853573, 33.970676, 31.551300> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255158, 0.061362, 0.964950,
		0.122509, -0.991993, 0.030687,
		0.959107, 0.110385, -0.260632,
		31.141306, 34.003792, 31.473110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.875032, 33.541565, 32.199970>,  <30.469931, 33.926525, 31.655554>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.875032, 33.541565, 32.199970> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.116634, 33.808964, 32.026402>,  <31.261595, 33.969402, 31.922260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.116634, 33.808964, 32.026402>,  <30.875032, 33.541565, 32.199970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.116634, 33.808964, 32.026402> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431456, 0.183500, 0.883275,
		0.670094, -0.720718, -0.177594,
		0.604003, 0.668501, -0.433920,
		31.297836, 34.009514, 31.896225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.532938, 33.328018, 32.480331>,  <30.875032, 33.541565, 32.199970>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.532938, 33.328018, 32.480331> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.536673, 33.711956, 32.368187>,  <31.538914, 33.942322, 32.300900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.536673, 33.711956, 32.368187>,  <31.532938, 33.328018, 32.480331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.536673, 33.711956, 32.368187> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506693, 0.237171, 0.828862,
		0.862076, -0.149797, -0.484134,
		0.009338, 0.959849, -0.280361,
		31.539474, 33.999912, 32.284081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.140095, 33.516716, 32.702065>,  <31.532938, 33.328018, 32.480331>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.140095, 33.516716, 32.702065> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.971029, 33.872097, 32.630497>,  <31.869589, 34.085323, 32.587555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.971029, 33.872097, 32.630497>,  <32.140095, 33.516716, 32.702065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.971029, 33.872097, 32.630497> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465661, 0.382264, 0.798144,
		0.777505, 0.254032, -0.575286,
		-0.422665, 0.888449, -0.178919,
		31.844231, 34.138634, 32.576820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.770538, 33.979149, 32.543781>,  <32.140095, 33.516716, 32.702065>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.770538, 33.979149, 32.543781> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.445435, 34.197975, 32.623920>,  <32.250374, 34.329269, 32.672005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.445435, 34.197975, 32.623920>,  <32.770538, 33.979149, 32.543781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.445435, 34.197975, 32.623920> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516631, 0.517831, 0.681867,
		0.269282, 0.657699, -0.703505,
		-0.812760, 0.547067, 0.200346,
		32.201607, 34.362095, 32.684025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.128151, 34.664963, 32.708344>,  <32.770538, 33.979149, 32.543781>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.128151, 34.664963, 32.708344> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.756168, 34.682949, 32.854305>,  <32.532978, 34.693741, 32.941883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.756168, 34.682949, 32.854305>,  <33.128151, 34.664963, 32.708344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.756168, 34.682949, 32.854305> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323170, 0.573243, 0.752963,
		-0.175322, 0.818151, -0.547623,
		-0.929959, 0.044965, 0.364904,
		32.477180, 34.696438, 32.963776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.939941, 35.338348, 32.793571>,  <33.128151, 34.664963, 32.708344>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.939941, 35.338348, 32.793571> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.736477, 35.113712, 33.054611>,  <32.614399, 34.978931, 33.211235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.736477, 35.113712, 33.054611>,  <32.939941, 35.338348, 32.793571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.736477, 35.113712, 33.054611> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362050, 0.548182, 0.753934,
		-0.781139, 0.619773, -0.075519,
		-0.508666, -0.561586, 0.652595,
		32.583878, 34.945236, 33.250389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.725033, 35.845798, 33.283535>,  <32.939941, 35.338348, 32.793571>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.725033, 35.845798, 33.283535> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.646179, 35.503536, 33.474949>,  <32.598869, 35.298180, 33.589798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.646179, 35.503536, 33.474949>,  <32.725033, 35.845798, 33.283535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.646179, 35.503536, 33.474949> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325280, 0.403382, 0.855264,
		-0.924842, 0.324258, 0.198807,
		-0.197132, -0.855651, 0.478539,
		32.587040, 35.246841, 33.618511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.525009, 36.026627, 33.925369>,  <32.725033, 35.845798, 33.283535>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.525009, 36.026627, 33.925369> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.657215, 35.651123, 33.964352>,  <32.736538, 35.425823, 33.987740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.657215, 35.651123, 33.964352>,  <32.525009, 36.026627, 33.925369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.657215, 35.651123, 33.964352> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623304, 0.294650, 0.724344,
		-0.708697, -0.178661, 0.682516,
		0.330515, -0.938756, 0.097457,
		32.756371, 35.369495, 33.993587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.522644, 35.971779, 34.593815>,  <32.525009, 36.026627, 33.925369>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.522644, 35.971779, 34.593815> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.764763, 35.672489, 34.485165>,  <32.910034, 35.492916, 34.419975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.764763, 35.672489, 34.485165>,  <32.522644, 35.971779, 34.593815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.764763, 35.672489, 34.485165> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471253, 0.061838, 0.879827,
		-0.641509, -0.660562, 0.390032,
		0.605299, -0.748221, -0.271622,
		32.946354, 35.448025, 34.403679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.504295, 35.535553, 35.192383>,  <32.522644, 35.971779, 34.593815>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.504295, 35.535553, 35.192383> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.818409, 35.455593, 34.957989>,  <33.006878, 35.407619, 34.817352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.818409, 35.455593, 34.957989>,  <32.504295, 35.535553, 35.192383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.818409, 35.455593, 34.957989> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585501, -0.067965, 0.807818,
		-0.201308, -0.977457, 0.063669,
		0.785280, -0.199899, -0.585983,
		33.053993, 35.395622, 34.782192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.689667, 34.894218, 35.498867>,  <32.504295, 35.535553, 35.192383>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.689667, 34.894218, 35.498867> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.007954, 35.038464, 35.304222>,  <33.198925, 35.125011, 35.187435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.007954, 35.038464, 35.304222>,  <32.689667, 34.894218, 35.498867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.007954, 35.038464, 35.304222> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560530, -0.134115, 0.817202,
		0.229436, -0.923021, -0.308854,
		0.795717, 0.360618, -0.486610,
		33.246670, 35.146648, 35.158237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.198845, 34.502419, 35.602272>,  <32.689667, 34.894218, 35.498867>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.198845, 34.502419, 35.602272> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.389412, 34.839775, 35.502895>,  <33.503750, 35.042191, 35.443268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.389412, 34.839775, 35.502895>,  <33.198845, 34.502419, 35.602272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.389412, 34.839775, 35.502895> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664155, -0.160051, 0.730261,
		0.576132, -0.512909, -0.636393,
		0.476413, 0.843391, -0.248441,
		33.532337, 35.092793, 35.428364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.003281, 34.401577, 35.631454>,  <33.198845, 34.502419, 35.602272>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.003281, 34.401577, 35.631454> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.938103, 34.793282, 35.679619>,  <33.898998, 35.028305, 35.708515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.938103, 34.793282, 35.679619>,  <34.003281, 34.401577, 35.631454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.938103, 34.793282, 35.679619> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600704, 0.001650, 0.799470,
		0.782691, 0.202596, -0.588514,
		-0.162940, 0.979261, 0.120409,
		33.889221, 35.087059, 35.715740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.625134, 34.702187, 35.887939>,  <34.003281, 34.401577, 35.631454>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.625134, 34.702187, 35.887939> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.366474, 34.983833, 36.005283>,  <34.211277, 35.152821, 36.075691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.366474, 34.983833, 36.005283>,  <34.625134, 34.702187, 35.887939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.366474, 34.983833, 36.005283> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551855, 0.166348, 0.817181,
		0.526591, 0.690324, -0.496140,
		-0.646651, 0.704117, 0.293361,
		34.172478, 35.195068, 36.093292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.012489, 35.188118, 36.239288>,  <34.625134, 34.702187, 35.887939>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.012489, 35.188118, 36.239288> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.651161, 35.234898, 36.404373>,  <34.434364, 35.262966, 36.503426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.651161, 35.234898, 36.404373>,  <35.012489, 35.188118, 36.239288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.651161, 35.234898, 36.404373> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428794, 0.218879, 0.876486,
		0.012168, 0.968718, -0.247865,
		-0.903320, 0.116948, 0.412717,
		34.380165, 35.269981, 36.528187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.663578, 35.298927, 36.722374>,  <35.012489, 35.188118, 36.239288>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.663578, 35.298927, 36.722374> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.026161, 35.147064, 36.648399>,  <36.243710, 35.055946, 36.604015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.026161, 35.147064, 36.648399>,  <35.663578, 35.298927, 36.722374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.026161, 35.147064, 36.648399> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313501, -0.311558, -0.897022,
		0.282944, 0.871087, -0.401436,
		0.906454, -0.379658, -0.184933,
		36.298096, 35.033169, 36.592918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.838665, 35.529373, 36.187248>,  <35.663578, 35.298927, 36.722374>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.838665, 35.529373, 36.187248> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.058567, 35.195259, 36.184032>,  <36.190510, 34.994789, 36.182102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.058567, 35.195259, 36.184032>,  <35.838665, 35.529373, 36.187248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.058567, 35.195259, 36.184032> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305991, -0.192423, -0.932386,
		0.777263, 0.515043, -0.361376,
		0.549756, -0.835287, -0.008035,
		36.223495, 34.944672, 36.181622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.262753, 35.692631, 35.559940>,  <35.838665, 35.529373, 36.187248>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.262753, 35.692631, 35.559940> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.257015, 35.297382, 35.621132>,  <36.253571, 35.060234, 35.657845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.257015, 35.297382, 35.621132>,  <36.262753, 35.692631, 35.559940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.257015, 35.297382, 35.621132> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060721, -0.153571, -0.986270,
		0.998052, -0.004860, 0.062203,
		-0.014346, -0.988126, 0.152977,
		36.252712, 35.000946, 35.667027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.767059, 35.477680, 35.114487>,  <36.262753, 35.692631, 35.559940>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.767059, 35.477680, 35.114487> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.527359, 35.172886, 35.212692>,  <36.383537, 34.990009, 35.271614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.527359, 35.172886, 35.212692>,  <36.767059, 35.477680, 35.114487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.527359, 35.172886, 35.212692> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018194, -0.293634, -0.955745,
		0.800353, -0.577200, 0.162097,
		-0.599253, -0.761984, 0.245512,
		36.347584, 34.944290, 35.286346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.974613, 34.912746, 34.806824>,  <36.767059, 35.477680, 35.114487>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.974613, 34.912746, 34.806824> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.600830, 34.799969, 34.893806>,  <36.376560, 34.732300, 34.945995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.600830, 34.799969, 34.893806>,  <36.974613, 34.912746, 34.806824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.600830, 34.799969, 34.893806> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110952, -0.349751, -0.930250,
		0.338339, -0.893409, 0.295546,
		-0.934460, -0.281948, 0.217460,
		36.320492, 34.715385, 34.959045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.967510, 34.185143, 34.569592>,  <36.974613, 34.912746, 34.806824>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.967510, 34.185143, 34.569592> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.593338, 34.325565, 34.586166>,  <36.368835, 34.409821, 34.596111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.593338, 34.325565, 34.586166>,  <36.967510, 34.185143, 34.569592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.593338, 34.325565, 34.586166> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223215, -0.495697, -0.839321,
		-0.274111, -0.794380, 0.542054,
		-0.935434, 0.351061, 0.041442,
		36.312706, 34.430885, 34.598598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.492191, 33.548168, 34.536400>,  <36.967510, 34.185143, 34.569592>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.492191, 33.548168, 34.536400> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.261097, 33.863403, 34.451412>,  <36.122440, 34.052544, 34.400421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.261097, 33.863403, 34.451412>,  <36.492191, 33.548168, 34.536400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.261097, 33.863403, 34.451412> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272311, -0.431492, -0.860036,
		-0.769459, -0.439016, 0.463893,
		-0.577736, 0.788086, -0.212467,
		36.087776, 34.099831, 34.387672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.860176, 33.210236, 34.318192>,  <36.492191, 33.548168, 34.536400>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.860176, 33.210236, 34.318192> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.854603, 33.585758, 34.180527>,  <35.851261, 33.811073, 34.097927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.854603, 33.585758, 34.180527>,  <35.860176, 33.210236, 34.318192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.854603, 33.585758, 34.180527> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265222, -0.335337, -0.903995,
		-0.964087, 0.078686, 0.253664,
		-0.013931, 0.938806, -0.344164,
		35.850422, 33.867401, 34.077278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.272640, 33.250870, 33.919762>,  <35.860176, 33.210236, 34.318192>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.272640, 33.250870, 33.919762> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.471409, 33.566746, 33.775837>,  <35.590672, 33.756271, 33.689484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.471409, 33.566746, 33.775837>,  <35.272640, 33.250870, 33.919762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.471409, 33.566746, 33.775837> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346373, -0.199676, -0.916600,
		-0.795673, 0.580106, 0.174303,
		0.496921, 0.789687, -0.359811,
		35.620483, 33.803654, 33.667892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.808941, 33.679119, 33.588715>,  <35.272640, 33.250870, 33.919762>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.808941, 33.679119, 33.588715> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.178947, 33.720764, 33.442558>,  <35.400951, 33.745750, 33.354866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.178947, 33.720764, 33.442558>,  <34.808941, 33.679119, 33.588715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.178947, 33.720764, 33.442558> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346985, -0.160225, -0.924083,
		-0.154751, 0.981575, -0.112085,
		0.925015, 0.104111, -0.365387,
		35.456451, 33.751999, 33.332943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.684784, 33.862362, 32.988674>,  <34.808941, 33.679119, 33.588715>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.684784, 33.862362, 32.988674> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.077557, 33.811836, 32.932316>,  <35.313221, 33.781521, 32.898502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.077557, 33.811836, 32.932316>,  <34.684784, 33.862362, 32.988674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.077557, 33.811836, 32.932316> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170617, -0.269060, -0.947891,
		0.081819, 0.954805, -0.285750,
		0.981934, -0.126309, -0.140892,
		35.372135, 33.773945, 32.890049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.772606, 34.319019, 32.524498>,  <34.684784, 33.862362, 32.988674>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.772606, 34.319019, 32.524498> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.072605, 34.057320, 32.485584>,  <35.252605, 33.900299, 32.462238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.072605, 34.057320, 32.485584>,  <34.772606, 34.319019, 32.524498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.072605, 34.057320, 32.485584> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222909, -0.111535, -0.968438,
		0.622749, 0.748010, -0.229489,
		0.749997, -0.654248, -0.097280,
		35.297604, 33.861046, 32.456402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.141796, 34.438534, 31.919003>,  <34.772606, 34.319019, 32.524498>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.141796, 34.438534, 31.919003> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.232738, 34.057434, 31.999582>,  <35.287304, 33.828773, 32.047928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.232738, 34.057434, 31.999582>,  <35.141796, 34.438534, 31.919003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.232738, 34.057434, 31.999582> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228817, -0.253341, -0.939926,
		0.946546, 0.167607, -0.275605,
		0.227360, -0.952747, 0.201447,
		35.300945, 33.771610, 32.060017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.578285, 34.337299, 31.393938>,  <35.141796, 34.438534, 31.919003>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.578285, 34.337299, 31.393938> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.440197, 33.989716, 31.535770>,  <35.357346, 33.781166, 31.620869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.440197, 33.989716, 31.535770>,  <35.578285, 34.337299, 31.393938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.440197, 33.989716, 31.535770> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270260, -0.269760, -0.924223,
		0.898768, -0.414888, -0.141720,
		-0.345218, -0.868963, 0.354579,
		35.336632, 33.729027, 31.642143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.759510, 33.818855, 30.906328>,  <35.578285, 34.337299, 31.393938>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.759510, 33.818855, 30.906328> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.474319, 33.637932, 31.120649>,  <35.303207, 33.529377, 31.249243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.474319, 33.637932, 31.120649>,  <35.759510, 33.818855, 30.906328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.474319, 33.637932, 31.120649> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384365, -0.386998, -0.838151,
		0.586460, -0.803522, 0.102066,
		-0.712972, -0.452311, 0.535804,
		35.260429, 33.502239, 31.281391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.813797, 33.132477, 30.748617>,  <35.759510, 33.818855, 30.906328>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.813797, 33.132477, 30.748617> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.447910, 33.226879, 30.879820>,  <35.228378, 33.283520, 30.958542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.447910, 33.226879, 30.879820>,  <35.813797, 33.132477, 30.748617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.447910, 33.226879, 30.879820> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384565, -0.259177, -0.885967,
		-0.124079, -0.936552, 0.327834,
		-0.914721, 0.236004, 0.328007,
		35.173492, 33.297680, 30.978222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.380192, 32.529545, 30.548338>,  <35.813797, 33.132477, 30.748617>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.380192, 32.529545, 30.548338> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.120399, 32.827721, 30.608341>,  <34.964523, 33.006626, 30.644342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.120399, 32.827721, 30.608341>,  <35.380192, 32.529545, 30.548338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.120399, 32.827721, 30.608341> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476167, -0.244916, -0.844560,
		-0.592827, -0.619951, 0.514020,
		-0.649478, 0.745437, 0.150008,
		34.925556, 33.051353, 30.653343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.661865, 32.283157, 30.406853>,  <35.380192, 32.529545, 30.548338>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.661865, 32.283157, 30.406853> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.595020, 32.676376, 30.376669>,  <34.554913, 32.912308, 30.358559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.595020, 32.676376, 30.376669>,  <34.661865, 32.283157, 30.406853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.595020, 32.676376, 30.376669> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560617, -0.157703, -0.812920,
		-0.811037, -0.093547, 0.577466,
		-0.167114, 0.983046, -0.075459,
		34.544888, 32.971291, 30.354031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<33.961555, 32.363434, 30.261986> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.068176, 32.731934, 30.148678>,  <34.132149, 32.953033, 30.080692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.068176, 32.731934, 30.148678>,  <33.961555, 32.363434, 30.261986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.068176, 32.731934, 30.148678> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452684, -0.139807, -0.880642,
		-0.850899, 0.362966, 0.379771,
		0.266549, 0.921254, -0.283271,
		34.148140, 33.008308, 30.063696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.341377, 32.707577, 29.996435>,  <33.961555, 32.363434, 30.261986>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.341377, 32.707577, 29.996435> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.686119, 32.844181, 29.846464>,  <33.892963, 32.926144, 29.756481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.686119, 32.844181, 29.846464>,  <33.341377, 32.707577, 29.996435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.686119, 32.844181, 29.846464> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430679, 0.102480, -0.896668,
		-0.267798, 0.934274, 0.235405,
		0.861858, 0.341510, -0.374928,
		33.944675, 32.946632, 29.733986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.054142, 33.336678, 29.843504>,  <33.341377, 32.707577, 29.996435>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.054142, 33.336678, 29.843504> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.383469, 33.258358, 29.630405>,  <33.581062, 33.211369, 29.502546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.383469, 33.258358, 29.630405>,  <33.054142, 33.336678, 29.843504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.383469, 33.258358, 29.630405> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566058, -0.214424, -0.795990,
		0.041618, 0.956915, -0.287371,
		0.823314, -0.195796, -0.532746,
		33.630463, 33.199619, 29.470581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.022606, 33.718960, 29.234524>,  <33.054142, 33.336678, 29.843504>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.022606, 33.718960, 29.234524> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.267113, 33.424549, 29.118162>,  <33.413815, 33.247902, 29.048346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.267113, 33.424549, 29.118162>,  <33.022606, 33.718960, 29.234524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.267113, 33.424549, 29.118162> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402088, 0.027779, -0.915180,
		0.681676, 0.676384, -0.278966,
		0.611264, -0.736025, -0.290902,
		33.450493, 33.203743, 29.030891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.356110, 33.928646, 28.602064>,  <33.022606, 33.718960, 29.234524>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.356110, 33.928646, 28.602064> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.391899, 33.530399, 28.613022>,  <33.413372, 33.291451, 28.619596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.391899, 33.530399, 28.613022>,  <33.356110, 33.928646, 28.602064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.391899, 33.530399, 28.613022> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287356, -0.052139, -0.956404,
		0.953636, 0.077701, -0.290760,
		0.089473, -0.995612, 0.027393,
		33.418739, 33.231716, 28.621241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.495281, 33.799786, 27.926420>,  <33.356110, 33.928646, 28.602064>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.495281, 33.799786, 27.926420> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.406570, 33.438011, 28.072197>,  <33.353344, 33.220947, 28.159662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.406570, 33.438011, 28.072197>,  <33.495281, 33.799786, 27.926420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.406570, 33.438011, 28.072197> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152155, -0.337071, -0.929103,
		0.963154, -0.261503, -0.062860,
		-0.221774, -0.904433, 0.364440,
		33.340038, 33.166679, 28.181528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.851562, 33.446545, 27.477392>,  <33.495281, 33.799786, 27.926420>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.851562, 33.446545, 27.477392> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.600227, 33.191936, 27.656292>,  <33.449429, 33.039169, 27.763632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.600227, 33.191936, 27.656292>,  <33.851562, 33.446545, 27.477392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.600227, 33.191936, 27.656292> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084501, -0.515667, -0.852612,
		0.773340, -0.573519, 0.270224,
		-0.628335, -0.636525, 0.447249,
		33.411728, 33.000980, 27.790466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.113956, 32.797424, 27.430595>,  <33.851562, 33.446545, 27.477392>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.113956, 32.797424, 27.430595> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.720749, 32.750675, 27.487186>,  <33.484825, 32.722626, 27.521141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.720749, 32.750675, 27.487186>,  <34.113956, 32.797424, 27.430595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.720749, 32.750675, 27.487186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045454, -0.591856, -0.804761,
		0.177793, -0.797525, 0.576492,
		-0.983017, -0.116878, 0.141479,
		33.425842, 32.715611, 27.529631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.020027, 32.163277, 27.252808>,  <34.113956, 32.797424, 27.430595>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.020027, 32.163277, 27.252808> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.667831, 32.347927, 27.209665>,  <33.456512, 32.458717, 27.183779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.667831, 32.347927, 27.209665>,  <34.020027, 32.163277, 27.252808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.667831, 32.347927, 27.209665> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075689, -0.361495, -0.929297,
		-0.467979, -0.810075, 0.353234,
		-0.880492, 0.461627, -0.107858,
		33.403683, 32.486416, 27.177307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.556503, 31.677361, 26.959312>,  <34.020027, 32.163277, 27.252808>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.556503, 31.677361, 26.959312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.399387, 32.034599, 26.871597>,  <33.305119, 32.248943, 26.818968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.399387, 32.034599, 26.871597>,  <33.556503, 31.677361, 26.959312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.399387, 32.034599, 26.871597> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267372, -0.339058, -0.901971,
		-0.879901, -0.295658, 0.371969,
		-0.392794, 0.893099, -0.219286,
		33.281548, 32.302528, 26.805811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.931240, 31.602566, 26.689947>,  <33.556503, 31.677361, 26.959312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.931240, 31.602566, 26.689947> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.030231, 31.962793, 26.546991>,  <33.089626, 32.178928, 26.461218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.030231, 31.962793, 26.546991>,  <32.931240, 31.602566, 26.689947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.030231, 31.962793, 26.546991> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241910, -0.299750, -0.922838,
		-0.938208, 0.314839, 0.143675,
		0.247478, 0.900570, -0.357391,
		33.104473, 32.232964, 26.439774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.470741, 31.867476, 26.236324>,  <32.931240, 31.602566, 26.689947>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.470741, 31.867476, 26.236324> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.754753, 32.124626, 26.121387>,  <32.925159, 32.278915, 26.052425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.754753, 32.124626, 26.121387>,  <32.470741, 31.867476, 26.236324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.754753, 32.124626, 26.121387> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206841, -0.199650, -0.957787,
		-0.673105, 0.739495, -0.008785,
		0.710033, 0.642874, -0.287343,
		32.967762, 32.317490, 26.035185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.168541, 32.377140, 25.755882>,  <32.470741, 31.867476, 26.236324>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.168541, 32.377140, 25.755882> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.562378, 32.388741, 25.686907>,  <32.798679, 32.395702, 25.645521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.562378, 32.388741, 25.686907>,  <32.168541, 32.377140, 25.755882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.562378, 32.388741, 25.686907> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168276, -0.110949, -0.979476,
		-0.047540, 0.993403, -0.104359,
		0.984593, 0.029003, -0.172441,
		32.857758, 32.397442, 25.635174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.327549, 32.888542, 25.240221>,  <32.168541, 32.377140, 25.755882>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.327549, 32.888542, 25.240221> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.649998, 32.652199, 25.227234>,  <32.843468, 32.510391, 25.219440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.649998, 32.652199, 25.227234>,  <32.327549, 32.888542, 25.240221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.649998, 32.652199, 25.227234> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082820, -0.058322, -0.994856,
		0.585929, 0.804662, -0.095949,
		0.806119, -0.590861, -0.032470,
		32.891834, 32.474941, 25.217493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.629684, 33.147594, 24.687449>,  <32.327549, 32.888542, 25.240221>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.629684, 33.147594, 24.687449> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.801014, 32.791115, 24.747192>,  <32.903812, 32.577229, 24.783039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.801014, 32.791115, 24.747192>,  <32.629684, 33.147594, 24.687449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.801014, 32.791115, 24.747192> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007661, -0.161703, -0.986809,
		0.903592, 0.423819, -0.062433,
		0.428324, -0.891196, 0.149361,
		32.929512, 32.523758, 24.792000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.138691, 33.101536, 24.192808>,  <32.629684, 33.147594, 24.687449>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.138691, 33.101536, 24.192808> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.034203, 32.724659, 24.276747>,  <32.971512, 32.498531, 24.327110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.034203, 32.724659, 24.276747>,  <33.138691, 33.101536, 24.192808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.034203, 32.724659, 24.276747> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089677, -0.240144, -0.966586,
		0.961105, -0.233670, 0.147223,
		-0.261217, -0.942194, 0.209848,
		32.955837, 32.442001, 24.339701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.680912, 32.599945, 23.912186>,  <33.138691, 33.101536, 24.192808>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.680912, 32.599945, 23.912186> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.350113, 32.381824, 23.966923>,  <33.151634, 32.250954, 23.999765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.350113, 32.381824, 23.966923>,  <33.680912, 32.599945, 23.912186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.350113, 32.381824, 23.966923> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089980, -0.368644, -0.925205,
		0.554959, -0.752829, 0.353934,
		-0.826997, -0.545298, 0.136843,
		33.102013, 32.218235, 24.007975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.840324, 31.934166, 23.638273>,  <33.680912, 32.599945, 23.912186>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.840324, 31.934166, 23.638273> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.441219, 31.911839, 23.652990>,  <33.201756, 31.898441, 23.661821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.441219, 31.911839, 23.652990>,  <33.840324, 31.934166, 23.638273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.441219, 31.911839, 23.652990> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007852, -0.448714, -0.893641,
		0.066392, -0.891930, 0.447272,
		-0.997763, -0.055819, 0.036795,
		33.141891, 31.895094, 23.664028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.687374, 31.223877, 23.294182>,  <33.840324, 31.934166, 23.638273>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.687374, 31.223877, 23.294182> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.349072, 31.437300, 23.295546>,  <33.146091, 31.565353, 23.296364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.349072, 31.437300, 23.295546>,  <33.687374, 31.223877, 23.294182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.349072, 31.437300, 23.295546> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245306, -0.383154, -0.890516,
		-0.473837, -0.753995, 0.454940,
		-0.845757, 0.533558, 0.003407,
		33.095345, 31.597366, 23.296568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.129562, 30.751274, 23.025291>,  <33.687374, 31.223877, 23.294182>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.129562, 30.751274, 23.025291> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.020657, 31.132803, 22.974545>,  <32.955315, 31.361721, 22.944098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.020657, 31.132803, 22.974545>,  <33.129562, 30.751274, 23.025291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.020657, 31.132803, 22.974545> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288513, -0.206704, -0.934898,
		-0.917950, -0.217938, 0.331469,
		-0.272266, 0.953822, -0.126866,
		32.938976, 31.418949, 22.936485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.376110, 30.752453, 22.968199>,  <33.129562, 30.751274, 23.025291>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.376110, 30.752453, 22.968199> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.534676, 31.076120, 22.794716>,  <32.629814, 31.270321, 22.690626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.534676, 31.076120, 22.794716>,  <32.376110, 30.752453, 22.968199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.534676, 31.076120, 22.794716> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340900, -0.308901, -0.887900,
		-0.852434, 0.499827, 0.153393,
		0.396413, 0.809168, -0.433709,
		32.653599, 31.318871, 22.664604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.008575, 30.845778, 22.275787>,  <32.376110, 30.752453, 22.968199>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.008575, 30.845778, 22.275787> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.292305, 31.118492, 22.204206>,  <32.462543, 31.282120, 22.161257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.292305, 31.118492, 22.204206>,  <32.008575, 30.845778, 22.275787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.292305, 31.118492, 22.204206> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240245, -0.004838, -0.970700,
		-0.662675, 0.731536, 0.160364,
		0.709327, 0.681785, -0.178954,
		32.505104, 31.323029, 22.150520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.760641, 31.483858, 21.919437>,  <32.008575, 30.845778, 22.275787>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.760641, 31.483858, 21.919437> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.152767, 31.491600, 21.840839>,  <32.388042, 31.496244, 21.793680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.152767, 31.491600, 21.840839>,  <31.760641, 31.483858, 21.919437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.152767, 31.491600, 21.840839> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186700, 0.414701, -0.890599,
		0.064252, 0.909752, 0.410150,
		0.980314, 0.019353, -0.196496,
		32.446861, 31.497406, 21.781891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.022202, 31.402624, 21.838556>,  <31.760641, 31.483858, 21.919437>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.022202, 31.402624, 21.838556> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.086933, 31.033136, 21.699675>,  <31.125772, 30.811443, 21.616344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.086933, 31.033136, 21.699675>,  <31.022202, 31.402624, 21.838556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.086933, 31.033136, 21.699675> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867518, 0.034529, -0.496205,
		0.470344, 0.381509, -0.795756,
		0.161830, -0.923720, -0.347207,
		31.135483, 30.756020, 21.595512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.448500, 31.853788, 21.528379>,  <31.022202, 31.402624, 21.838556>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.448500, 31.853788, 21.528379> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.057184, 31.927000, 21.567265>,  <29.822395, 31.970928, 21.590595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.057184, 31.927000, 21.567265>,  <30.448500, 31.853788, 21.528379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.057184, 31.927000, 21.567265> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173406, 0.466026, 0.867612,
		0.113494, 0.865633, -0.487647,
		-0.978289, 0.183030, 0.097215,
		29.763697, 31.981909, 21.596430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.307775, 32.559055, 21.731628>,  <30.448500, 31.853788, 21.528379>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.307775, 32.559055, 21.731628> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.971687, 32.384697, 21.860640>,  <29.770035, 32.280083, 21.938046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.971687, 32.384697, 21.860640>,  <30.307775, 32.559055, 21.731628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.971687, 32.384697, 21.860640> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046043, 0.535298, 0.843408,
		-0.540289, 0.723497, -0.429697,
		-0.840219, -0.435899, 0.322528,
		29.719622, 32.253925, 21.957397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.982342, 33.105911, 22.077969>,  <30.307775, 32.559055, 21.731628>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.982342, 33.105911, 22.077969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.794338, 32.778137, 22.209192>,  <29.681536, 32.581474, 22.287926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.794338, 32.778137, 22.209192>,  <29.982342, 33.105911, 22.077969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.794338, 32.778137, 22.209192> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180273, 0.452952, 0.873118,
		-0.864057, 0.351233, -0.360613,
		-0.470008, -0.819433, 0.328059,
		29.653336, 32.532307, 22.307610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.280535, 33.321495, 22.320297>,  <29.982342, 33.105911, 22.077969>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.280535, 33.321495, 22.320297> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.362722, 32.975208, 22.502863>,  <29.412035, 32.767437, 22.612402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.362722, 32.975208, 22.502863>,  <29.280535, 33.321495, 22.320297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.362722, 32.975208, 22.502863> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122436, 0.439961, 0.889631,
		-0.970975, -0.238674, -0.015596,
		0.205470, -0.865719, 0.456413,
		29.424364, 32.715492, 22.639788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.832487, 33.321102, 22.897476>,  <29.280535, 33.321495, 22.320297>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.832487, 33.321102, 22.897476> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.130400, 33.067196, 22.979818>,  <29.309147, 32.914852, 23.029222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.130400, 33.067196, 22.979818>,  <28.832487, 33.321102, 22.897476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.130400, 33.067196, 22.979818> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102602, 0.413743, 0.904593,
		-0.659375, -0.652602, 0.373276,
		0.744780, -0.634765, 0.205853,
		29.353834, 32.876766, 23.041574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.660650, 33.026417, 23.603418>,  <28.832487, 33.321102, 22.897476>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.660650, 33.026417, 23.603418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.054287, 32.973328, 23.556179>,  <29.290468, 32.941475, 23.527836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.054287, 32.973328, 23.556179>,  <28.660650, 33.026417, 23.603418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.054287, 32.973328, 23.556179> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139604, 0.166572, 0.976096,
		-0.109878, -0.977056, 0.182451,
		0.984092, -0.132723, -0.118099,
		29.349514, 32.933510, 23.520750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.892315, 32.653984, 24.113340>,  <28.660650, 33.026417, 23.603418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.892315, 32.653984, 24.113340> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.248741, 32.799511, 24.004795>,  <29.462597, 32.886826, 23.939669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.248741, 32.799511, 24.004795>,  <28.892315, 32.653984, 24.113340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.248741, 32.799511, 24.004795> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227495, 0.159345, 0.960653,
		0.392743, -0.917740, 0.059221,
		0.891066, 0.363817, -0.271363,
		29.516062, 32.908657, 23.923386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.461819, 32.274830, 24.467793>,  <28.892315, 32.653984, 24.113340>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.461819, 32.274830, 24.467793> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.606800, 32.630981, 24.357626>,  <29.693789, 32.844673, 24.291527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.606800, 32.630981, 24.357626>,  <29.461819, 32.274830, 24.467793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.606800, 32.630981, 24.357626> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156064, 0.233355, 0.959786,
		0.918843, -0.390860, -0.054376,
		0.362453, 0.890378, -0.275416,
		29.715536, 32.898094, 24.275002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.072485, 32.321915, 24.887466>,  <29.461819, 32.274830, 24.467793>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.072485, 32.321915, 24.887466> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.012674, 32.701366, 24.775934>,  <29.976788, 32.929039, 24.709015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.012674, 32.701366, 24.775934>,  <30.072485, 32.321915, 24.887466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.012674, 32.701366, 24.775934> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471770, 0.316281, 0.823043,
		0.868950, -0.008476, -0.494827,
		-0.149529, 0.948628, -0.278831,
		29.967815, 32.985954, 24.692286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.722746, 32.635315, 24.839167>,  <30.072485, 32.321915, 24.887466>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.722746, 32.635315, 24.839167> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.439480, 32.901375, 24.933893>,  <30.269520, 33.061008, 24.990730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.439480, 32.901375, 24.933893>,  <30.722746, 32.635315, 24.839167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.439480, 32.901375, 24.933893> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472133, 0.196724, 0.859296,
		0.524971, 0.720332, -0.453351,
		-0.708163, 0.665148, 0.236818,
		30.227032, 33.100918, 25.004938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.149065, 33.079029, 25.123026>,  <30.722746, 32.635315, 24.839167>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.149065, 33.079029, 25.123026> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.781580, 33.164558, 25.255842>,  <30.561089, 33.215874, 25.335533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.781580, 33.164558, 25.255842>,  <31.149065, 33.079029, 25.123026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.781580, 33.164558, 25.255842> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365073, 0.139099, 0.920529,
		0.150642, 0.966919, -0.205852,
		-0.918710, 0.213821, 0.332042,
		30.505966, 33.228706, 25.355455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.218834, 33.656311, 25.479963>,  <31.149065, 33.079029, 25.123026>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.218834, 33.656311, 25.479963> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.880093, 33.490742, 25.613533>,  <30.676847, 33.391399, 25.693674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.880093, 33.490742, 25.613533>,  <31.218834, 33.656311, 25.479963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.880093, 33.490742, 25.613533> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215442, 0.307049, 0.926987,
		-0.486236, 0.856963, -0.170848,
		-0.846853, -0.413926, 0.333924,
		30.626038, 33.366562, 25.713711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.020294, 34.129837, 26.012884>,  <31.218834, 33.656311, 25.479963>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.020294, 34.129837, 26.012884> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.806662, 33.799820, 26.086708>,  <30.678482, 33.601810, 26.131002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.806662, 33.799820, 26.086708>,  <31.020294, 34.129837, 26.012884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.806662, 33.799820, 26.086708> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085564, 0.164434, 0.982670,
		-0.841092, 0.540617, -0.017227,
		-0.534081, -0.825042, 0.184561,
		30.646437, 33.552307, 26.142076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.769901, 34.345257, 26.641960>,  <31.020294, 34.129837, 26.012884>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.769901, 34.345257, 26.641960> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.741957, 33.946407, 26.630152>,  <30.725191, 33.707100, 26.623066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.741957, 33.946407, 26.630152>,  <30.769901, 34.345257, 26.641960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.741957, 33.946407, 26.630152> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043575, -0.026514, 0.998698,
		-0.996605, 0.071056, -0.041597,
		-0.069860, -0.997120, -0.029520,
		30.720999, 33.647270, 26.621296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.249887, 34.164516, 27.202980>,  <30.769901, 34.345257, 26.641960>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.249887, 34.164516, 27.202980> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.465647, 33.838116, 27.119848>,  <30.595102, 33.642277, 27.069969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.465647, 33.838116, 27.119848>,  <30.249887, 34.164516, 27.202980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.465647, 33.838116, 27.119848> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030858, -0.227494, 0.973290,
		-0.841484, -0.531406, -0.097530,
		0.539400, -0.815999, -0.207831,
		30.627466, 33.593315, 27.057499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.054335, 33.795151, 27.722160>,  <30.249887, 34.164516, 27.202980>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.054335, 33.795151, 27.722160> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.368259, 33.594452, 27.576660>,  <30.556614, 33.474033, 27.489359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.368259, 33.594452, 27.576660>,  <30.054335, 33.795151, 27.722160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.368259, 33.594452, 27.576660> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262883, -0.261997, 0.928574,
		-0.561216, -0.824380, -0.073716,
		0.784812, -0.501752, -0.363752,
		30.603703, 33.443928, 27.467535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.989014, 33.111969, 27.974470>,  <30.054335, 33.795151, 27.722160>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.989014, 33.111969, 27.974470> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.381136, 33.156780, 27.909420>,  <30.616409, 33.183666, 27.870390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.381136, 33.156780, 27.909420>,  <29.989014, 33.111969, 27.974470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.381136, 33.156780, 27.909420> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185549, -0.240658, 0.952709,
		0.067598, -0.964123, -0.256707,
		0.980307, 0.112033, -0.162624,
		30.675228, 33.190392, 27.860634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.326994, 32.575523, 28.204029>,  <29.989014, 33.111969, 27.974470>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.326994, 32.575523, 28.204029> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.618919, 32.848923, 28.209755>,  <30.794075, 33.012962, 28.213190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.618919, 32.848923, 28.209755>,  <30.326994, 32.575523, 28.204029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.618919, 32.848923, 28.209755> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222860, -0.257653, 0.940185,
		0.646304, -0.682968, -0.340363,
		0.729812, 0.683498, 0.014316,
		30.837862, 33.053970, 28.214050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.852402, 32.239994, 28.653593>,  <30.326994, 32.575523, 28.204029>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.852402, 32.239994, 28.653593> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.971138, 32.620651, 28.621944>,  <31.042379, 32.849045, 28.602955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.971138, 32.620651, 28.621944>,  <30.852402, 32.239994, 28.653593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.971138, 32.620651, 28.621944> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275122, -0.005888, 0.961391,
		0.914436, -0.307149, -0.263566,
		0.296843, 0.951643, -0.079119,
		31.060190, 32.906143, 28.598209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.593513, 32.344543, 28.915846>,  <30.852402, 32.239994, 28.653593>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.593513, 32.344543, 28.915846> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.384953, 32.685867, 28.916855>,  <31.259817, 32.890663, 28.917461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.384953, 32.685867, 28.916855>,  <31.593513, 32.344543, 28.915846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.384953, 32.685867, 28.916855> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297982, 0.179305, 0.937580,
		0.799592, 0.489607, -0.347760,
		-0.521401, 0.853308, 0.002523,
		31.228533, 32.941860, 28.917612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<36.215641, 32.913437, 32.494888> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.942303, 33.204517, 32.471245>,  <35.778301, 33.379166, 32.457058>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.942303, 33.204517, 32.471245>,  <36.215641, 32.913437, 32.494888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.942303, 33.204517, 32.471245> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281246, 0.337082, 0.898486,
		0.673749, 0.597355, -0.435006,
		-0.683347, 0.727697, -0.059105,
		35.737297, 33.422825, 32.453514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.592381, 33.577785, 32.630375>,  <36.215641, 32.913437, 32.494888>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.592381, 33.577785, 32.630375> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.207798, 33.631264, 32.726479>,  <35.977047, 33.663349, 32.784142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.207798, 33.631264, 32.726479>,  <36.592381, 33.577785, 32.630375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.207798, 33.631264, 32.726479> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266867, 0.243432, 0.932482,
		0.066179, 0.960660, -0.269727,
		-0.961459, 0.133692, 0.240258,
		35.919361, 33.671371, 32.798557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.631134, 34.228889, 32.883213>,  <36.592381, 33.577785, 32.630375>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.631134, 34.228889, 32.883213> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.303471, 34.053043, 33.030575>,  <36.106873, 33.947536, 33.118992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.303471, 34.053043, 33.030575>,  <36.631134, 34.228889, 32.883213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.303471, 34.053043, 33.030575> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075647, 0.553886, 0.829149,
		-0.568559, 0.707072, -0.420464,
		-0.819157, -0.439613, 0.368405,
		36.057724, 33.921158, 33.141098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.398464, 34.756481, 33.317951>,  <36.631134, 34.228889, 32.883213>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.398464, 34.756481, 33.317951> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.151447, 34.459179, 33.420872>,  <36.003239, 34.280796, 33.482624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.151447, 34.459179, 33.420872>,  <36.398464, 34.756481, 33.317951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.151447, 34.459179, 33.420872> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079368, 0.384353, 0.919768,
		-0.782523, 0.547575, -0.296345,
		-0.617543, -0.743260, 0.257305,
		35.966183, 34.236202, 33.498062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.839535, 35.124832, 33.655693>,  <36.398464, 34.756481, 33.317951>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.839535, 35.124832, 33.655693> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.864605, 34.744789, 33.777920>,  <35.879646, 34.516762, 33.851254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.864605, 34.744789, 33.777920>,  <35.839535, 35.124832, 33.655693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.864605, 34.744789, 33.777920> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064727, 0.309390, 0.948730,
		-0.995933, -0.039682, 0.080888,
		0.062674, -0.950107, 0.305564,
		35.883408, 34.459759, 33.869591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.419815, 35.186321, 34.074493>,  <35.839535, 35.124832, 33.655693>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.419815, 35.186321, 34.074493> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.605930, 34.849483, 34.183586>,  <35.717602, 34.647381, 34.249043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.605930, 34.849483, 34.183586>,  <35.419815, 35.186321, 34.074493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.605930, 34.849483, 34.183586> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094602, 0.353665, 0.930576,
		-0.880089, -0.407186, 0.244220,
		0.465290, -0.842093, 0.272735,
		35.745518, 34.596855, 34.265408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.071587, 34.918678, 34.669922>,  <35.419815, 35.186321, 34.074493>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.071587, 34.918678, 34.669922> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.439766, 34.764427, 34.644428>,  <35.660675, 34.671875, 34.629131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.439766, 34.764427, 34.644428>,  <35.071587, 34.918678, 34.669922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.439766, 34.764427, 34.644428> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175635, 0.262405, 0.948839,
		-0.349179, -0.884552, 0.309261,
		0.920449, -0.385632, -0.063732,
		35.715900, 34.648739, 34.625309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.148460, 34.348003, 35.206051>,  <35.071587, 34.918678, 34.669922>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.148460, 34.348003, 35.206051> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.521622, 34.466866, 35.124668>,  <35.745518, 34.538185, 35.075840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.521622, 34.466866, 35.124668>,  <35.148460, 34.348003, 35.206051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.521622, 34.466866, 35.124668> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207112, 0.019471, 0.978123,
		0.294620, -0.954629, -0.043380,
		0.932901, 0.297159, -0.203452,
		35.801491, 34.556015, 35.063633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.549675, 33.950058, 35.576653>,  <35.148460, 34.348003, 35.206051>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.549675, 33.950058, 35.576653> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.804241, 34.244400, 35.484135>,  <35.956982, 34.421005, 35.428623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.804241, 34.244400, 35.484135>,  <35.549675, 33.950058, 35.576653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.804241, 34.244400, 35.484135> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296128, 0.043794, 0.954144,
		0.712242, -0.675720, -0.190036,
		0.636411, 0.735856, -0.231292,
		35.995163, 34.465157, 35.414745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.158764, 33.710510, 35.825764>,  <35.549675, 33.950058, 35.576653>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.158764, 33.710510, 35.825764> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.193851, 34.105247, 35.771427>,  <36.214905, 34.342091, 35.738823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.193851, 34.105247, 35.771427>,  <36.158764, 33.710510, 35.825764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.193851, 34.105247, 35.771427> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466421, 0.079809, 0.880955,
		0.880202, -0.140641, -0.453282,
		0.087722, 0.986839, -0.135846,
		36.220169, 34.401299, 35.730675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.931427, 33.869724, 35.970860>,  <36.158764, 33.710510, 35.825764>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.931427, 33.869724, 35.970860> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.719772, 34.201725, 36.041412>,  <36.592781, 34.400925, 36.083744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.719772, 34.201725, 36.041412>,  <36.931427, 33.869724, 35.970860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.719772, 34.201725, 36.041412> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588725, 0.209406, 0.780738,
		0.611077, 0.516960, -0.599447,
		-0.529138, 0.830001, 0.176384,
		36.561031, 34.450726, 36.094326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.434845, 34.371624, 36.319859>,  <36.931427, 33.869724, 35.970860>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.434845, 34.371624, 36.319859> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.095478, 34.569805, 36.394390>,  <36.891857, 34.688713, 36.439110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.095478, 34.569805, 36.394390>,  <37.434845, 34.371624, 36.319859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.095478, 34.569805, 36.394390> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460517, 0.517320, 0.721320,
		0.260991, 0.697785, -0.667068,
		-0.848415, 0.495454, 0.186326,
		36.840954, 34.718441, 36.450287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.499710, 35.052444, 36.193119>,  <37.434845, 34.371624, 36.319859>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.499710, 35.052444, 36.193119> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.248322, 34.978977, 36.495457>,  <37.097488, 34.934898, 36.676857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.248322, 34.978977, 36.495457>,  <37.499710, 35.052444, 36.193119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.248322, 34.978977, 36.495457> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436995, 0.720505, 0.538432,
		-0.643477, 0.668686, -0.372555,
		-0.628469, -0.183664, 0.755840,
		37.059780, 34.923878, 36.722210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.383404, 35.702412, 36.425148>,  <37.499710, 35.052444, 36.193119>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.383404, 35.702412, 36.425148> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.294315, 35.472668, 36.740238>,  <37.240864, 35.334824, 36.929291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.294315, 35.472668, 36.740238>,  <37.383404, 35.702412, 36.425148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.294315, 35.472668, 36.740238> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283128, 0.735085, 0.616027,
		-0.932863, 0.360230, -0.001104,
		-0.222722, -0.574356, 0.787724,
		37.227497, 35.300362, 36.976555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.555077, 36.472446, 36.592472>,  <37.383404, 35.702412, 36.425148>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.555077, 36.472446, 36.592472> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.916462, 36.632988, 36.532257>,  <38.133293, 36.729313, 36.496128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.916462, 36.632988, 36.532257>,  <37.555077, 36.472446, 36.592472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.916462, 36.632988, 36.532257> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201751, 0.088282, -0.975450,
		-0.378212, 0.911658, 0.160734,
		0.903467, 0.401355, -0.150538,
		38.187504, 36.753395, 36.487095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.521690, 37.032925, 36.054287>,  <37.555077, 36.472446, 36.592472>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.521690, 37.032925, 36.054287> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.912537, 36.949963, 36.073181>,  <38.147045, 36.900185, 36.084518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.912537, 36.949963, 36.073181>,  <37.521690, 37.032925, 36.054287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.912537, 36.949963, 36.073181> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054488, 0.029398, -0.998082,
		0.205617, 0.977814, 0.040026,
		0.977115, -0.207403, 0.047235,
		38.205669, 36.887741, 36.087353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.863743, 37.573448, 35.675671>,  <37.521690, 37.032925, 36.054287>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.863743, 37.573448, 35.675671> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.099262, 37.250153, 35.672504>,  <38.240574, 37.056175, 35.670605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.099262, 37.250153, 35.672504>,  <37.863743, 37.573448, 35.675671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.099262, 37.250153, 35.672504> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022334, 0.026059, -0.999411,
		0.807972, 0.588274, 0.033394,
		0.588798, -0.808242, -0.007916,
		38.275902, 37.007679, 35.670128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.473846, 37.797363, 35.287045>,  <37.863743, 37.573448, 35.675671>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.473846, 37.797363, 35.287045> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.458496, 37.398201, 35.266247>,  <38.449287, 37.158703, 35.253769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.458496, 37.398201, 35.266247>,  <38.473846, 37.797363, 35.287045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.458496, 37.398201, 35.266247> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163714, 0.045049, -0.985479,
		0.985761, -0.046327, 0.161643,
		-0.038373, -0.997910, -0.051992,
		38.446983, 37.098827, 35.250648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.010628, 37.627491, 34.765877>,  <38.473846, 37.797363, 35.287045>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.010628, 37.627491, 34.765877> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.756729, 37.318447, 34.771133>,  <38.604389, 37.133022, 34.774288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.756729, 37.318447, 34.771133>,  <39.010628, 37.627491, 34.765877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.756729, 37.318447, 34.771133> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085156, -0.086841, -0.992576,
		0.768011, -0.628918, 0.120915,
		-0.634750, -0.772606, 0.013139,
		38.566303, 37.086666, 34.775074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.378635, 37.089428, 34.548470>,  <39.010628, 37.627491, 34.765877>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.378635, 37.089428, 34.548470> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.002563, 36.968788, 34.485096>,  <38.776920, 36.896404, 34.447071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.002563, 36.968788, 34.485096>,  <39.378635, 37.089428, 34.548470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.002563, 36.968788, 34.485096> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194561, -0.093591, -0.976415,
		0.279657, -0.948831, 0.146672,
		-0.940180, -0.301598, -0.158432,
		38.720509, 36.878307, 34.437565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.343128, 36.648174, 33.873772>,  <39.378635, 37.089428, 34.548470>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.343128, 36.648174, 33.873772> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.947773, 36.684948, 33.922165>,  <38.710560, 36.707012, 33.951199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.947773, 36.684948, 33.922165>,  <39.343128, 36.648174, 33.873772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.947773, 36.684948, 33.922165> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136049, -0.180891, -0.974048,
		-0.067665, -0.979197, 0.191298,
		-0.988388, 0.091935, 0.120979,
		38.651257, 36.712528, 33.958458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.063786, 36.309807, 33.276955>,  <39.343128, 36.648174, 33.873772>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.063786, 36.309807, 33.276955> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.765499, 36.545650, 33.401062>,  <38.586529, 36.687157, 33.475525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.765499, 36.545650, 33.401062>,  <39.063786, 36.309807, 33.276955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.765499, 36.545650, 33.401062> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353373, 0.044779, -0.934410,
		-0.564833, -0.806445, 0.174961,
		-0.745715, 0.589612, 0.310269,
		38.541786, 36.722534, 33.494144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.438522, 35.997253, 33.121136>,  <39.063786, 36.309807, 33.276955>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.438522, 35.997253, 33.121136> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.329754, 36.378639, 33.173233>,  <38.264492, 36.607471, 33.204491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.329754, 36.378639, 33.173233>,  <38.438522, 35.997253, 33.121136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.329754, 36.378639, 33.173233> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477824, -0.016296, -0.878305,
		-0.835312, -0.301058, 0.460020,
		-0.271917, 0.953467, 0.130241,
		38.248180, 36.664680, 33.212307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.683815, 36.054459, 33.021294>,  <38.438522, 35.997253, 33.121136>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.683815, 36.054459, 33.021294> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.843964, 36.420048, 32.994862>,  <37.940052, 36.639400, 32.979004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.843964, 36.420048, 32.994862>,  <37.683815, 36.054459, 33.021294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.843964, 36.420048, 32.994862> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478074, 0.146814, -0.865963,
		-0.781761, 0.378295, 0.495724,
		0.400369, 0.913969, -0.066079,
		37.964073, 36.694237, 32.975037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.055958, 36.459316, 32.861435>,  <37.683815, 36.054459, 33.021294>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.055958, 36.459316, 32.861435> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.386471, 36.661423, 32.761868>,  <37.584778, 36.782688, 32.702126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.386471, 36.661423, 32.761868>,  <37.055958, 36.459316, 32.861435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.386471, 36.661423, 32.761868> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286389, -0.003664, -0.958106,
		-0.485011, 0.862955, 0.141675,
		0.826284, 0.505267, -0.248918,
		37.634357, 36.813004, 32.687191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.825302, 37.083107, 32.602757>,  <37.055958, 36.459316, 32.861435>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.825302, 37.083107, 32.602757> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.195621, 37.026028, 32.462734>,  <37.417812, 36.991779, 32.378719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.195621, 37.026028, 32.462734>,  <36.825302, 37.083107, 32.602757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.195621, 37.026028, 32.462734> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333557, 0.127381, -0.934084,
		0.177886, 0.981535, 0.070330,
		0.925795, -0.142702, -0.350057,
		37.473358, 36.983215, 32.357716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.931503, 37.625080, 32.061489>,  <36.825302, 37.083107, 32.602757>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.931503, 37.625080, 32.061489> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.215012, 37.352009, 31.990391>,  <37.385117, 37.188168, 31.947731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.215012, 37.352009, 31.990391>,  <36.931503, 37.625080, 32.061489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.215012, 37.352009, 31.990391> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218076, 0.027590, -0.975542,
		0.670883, 0.730201, -0.129320,
		0.708773, -0.682676, -0.177749,
		37.427643, 37.147205, 31.937065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.148731, 37.824955, 31.409044>,  <36.931503, 37.625080, 32.061489>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.148731, 37.824955, 31.409044> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.304249, 37.457355, 31.435215>,  <37.397560, 37.236797, 31.450918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.304249, 37.457355, 31.435215>,  <37.148731, 37.824955, 31.409044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.304249, 37.457355, 31.435215> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193208, -0.150762, -0.969506,
		0.900838, 0.364297, -0.236173,
		0.388794, -0.918999, 0.065427,
		37.420887, 37.181656, 31.454844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.087471, 38.477783, 31.123642>,  <37.148731, 37.824955, 31.409044>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.087471, 38.477783, 31.123642> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.943935, 38.805077, 30.943985>,  <36.857815, 39.001453, 30.836191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.943935, 38.805077, 30.943985>,  <37.087471, 38.477783, 31.123642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.943935, 38.805077, 30.943985> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367593, 0.566182, 0.737776,
		0.857970, 0.099640, -0.503944,
		-0.358836, 0.818236, -0.449140,
		36.836285, 39.050549, 30.809242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.655258, 38.880116, 30.912653>,  <37.087471, 38.477783, 31.123642>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.655258, 38.880116, 30.912653> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.322117, 39.086784, 30.992054>,  <37.122231, 39.210785, 31.039694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.322117, 39.086784, 30.992054>,  <37.655258, 38.880116, 30.912653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.322117, 39.086784, 30.992054> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456275, 0.437891, 0.774638,
		0.313310, 0.735734, -0.600444,
		-0.832856, 0.516670, 0.198502,
		37.072262, 39.241787, 31.051605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.772556, 39.595352, 31.084871>,  <37.655258, 38.880116, 30.912653>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.772556, 39.595352, 31.084871> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.412144, 39.529816, 31.245518>,  <37.195896, 39.490494, 31.341906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.412144, 39.529816, 31.245518>,  <37.772556, 39.595352, 31.084871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.412144, 39.529816, 31.245518> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320990, 0.370870, 0.871447,
		-0.291727, 0.914118, -0.281575,
		-0.901033, -0.163842, 0.401616,
		37.141834, 39.480663, 31.366003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.782520, 40.142433, 31.660641>,  <37.772556, 39.595352, 31.084871>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.782520, 40.142433, 31.660641> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.472576, 39.911331, 31.763241>,  <37.286610, 39.772671, 31.824800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.472576, 39.911331, 31.763241>,  <37.782520, 40.142433, 31.660641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.472576, 39.911331, 31.763241> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036888, 0.446401, 0.894072,
		-0.631059, 0.683316, -0.367209,
		-0.774857, -0.577758, 0.256499,
		37.240120, 39.738003, 31.840191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.289894, 40.534081, 31.986900>,  <37.782520, 40.142433, 31.660641>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.289894, 40.534081, 31.986900> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.193920, 40.164558, 32.106247>,  <37.136337, 39.942844, 32.177856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.193920, 40.164558, 32.106247>,  <37.289894, 40.534081, 31.986900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.193920, 40.164558, 32.106247> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171208, 0.342794, 0.923677,
		-0.955574, 0.170537, -0.240410,
		-0.239932, -0.923802, 0.298368,
		37.121941, 39.887417, 32.195759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.637062, 40.588615, 32.367851>,  <37.289894, 40.534081, 31.986900>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.637062, 40.588615, 32.367851> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.776722, 40.239716, 32.504833>,  <36.860519, 40.030376, 32.587021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.776722, 40.239716, 32.504833>,  <36.637062, 40.588615, 32.367851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.776722, 40.239716, 32.504833> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140692, 0.312511, 0.939437,
		-0.926443, -0.376188, -0.013605,
		0.349153, -0.872249, 0.342451,
		36.881470, 39.978043, 32.607567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.172218, 40.416920, 32.916664>,  <36.637062, 40.588615, 32.367851>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.172218, 40.416920, 32.916664> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.497684, 40.192413, 32.977238>,  <36.692963, 40.057709, 33.013584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.497684, 40.192413, 32.977238>,  <36.172218, 40.416920, 32.916664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.497684, 40.192413, 32.977238> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102561, 0.117819, 0.987725,
		-0.572221, -0.819205, 0.038301,
		0.813661, -0.561268, 0.151437,
		36.741783, 40.024033, 33.022667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.860844, 39.951534, 33.345295>,  <36.172218, 40.416920, 32.916664>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.860844, 39.951534, 33.345295> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.256916, 39.984116, 33.390747>,  <36.494560, 40.003662, 33.418018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.256916, 39.984116, 33.390747>,  <35.860844, 39.951534, 33.345295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.256916, 39.984116, 33.390747> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130083, 0.238995, 0.962268,
		0.051220, -0.967599, 0.247243,
		0.990180, 0.081450, 0.113626,
		36.553970, 40.008553, 33.424835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.025566, 39.557709, 33.872177>,  <35.860844, 39.951534, 33.345295>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.025566, 39.557709, 33.872177> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.355820, 39.783039, 33.859577>,  <36.553970, 39.918236, 33.852016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.355820, 39.783039, 33.859577>,  <36.025566, 39.557709, 33.872177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.355820, 39.783039, 33.859577> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078023, 0.169297, 0.982472,
		0.558784, -0.808705, 0.183730,
		0.825635, 0.563324, -0.031503,
		36.603512, 39.952038, 33.850128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.493748, 39.322052, 34.468670>,  <36.025566, 39.557709, 33.872177>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.493748, 39.322052, 34.468670> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.623283, 39.686722, 34.367500>,  <36.701004, 39.905525, 34.306797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.623283, 39.686722, 34.367500>,  <36.493748, 39.322052, 34.468670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.623283, 39.686722, 34.367500> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057884, 0.285925, 0.956502,
		0.944339, -0.295115, 0.145366,
		0.323842, 0.911676, -0.252927,
		36.720436, 39.960224, 34.291622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.091640, 39.408657, 34.889286>,  <36.493748, 39.322052, 34.468670>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.091640, 39.408657, 34.889286> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.969086, 39.773228, 34.779427>,  <36.895554, 39.991970, 34.713509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.969086, 39.773228, 34.779427>,  <37.091640, 39.408657, 34.889286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.969086, 39.773228, 34.779427> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026693, 0.280187, 0.959574,
		0.951533, 0.301331, -0.061517,
		-0.306386, 0.911425, -0.274651,
		36.877171, 40.046654, 34.697033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.392662, 39.847301, 35.336483>,  <37.091640, 39.408657, 34.889286>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.392662, 39.847301, 35.336483> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.080799, 40.043533, 35.180813>,  <36.893681, 40.161274, 35.087410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.080799, 40.043533, 35.180813>,  <37.392662, 39.847301, 35.336483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.080799, 40.043533, 35.180813> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196444, 0.398505, 0.895881,
		0.594595, 0.774933, -0.214326,
		-0.779658, 0.490584, -0.389180,
		36.846901, 40.190708, 35.064060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<36.330685, 38.143005, 27.080492> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.968288, 38.160511, 27.248907>,  <35.750851, 38.171017, 27.349957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.968288, 38.160511, 27.248907>,  <36.330685, 38.143005, 27.080492>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.968288, 38.160511, 27.248907> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379145, 0.526226, 0.761141,
		-0.188248, 0.849217, -0.493348,
		-0.905987, 0.043767, 0.421037,
		35.696491, 38.173641, 27.375217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.358467, 38.830475, 27.294666>,  <36.330685, 38.143005, 27.080492>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.358467, 38.830475, 27.294666> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.072289, 38.651180, 27.509039>,  <35.900581, 38.543602, 27.637663>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.072289, 38.651180, 27.509039>,  <36.358467, 38.830475, 27.294666>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.072289, 38.651180, 27.509039> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218493, 0.585058, 0.781004,
		-0.663627, 0.675862, -0.320640,
		-0.715444, -0.448238, 0.535932,
		35.857655, 38.516708, 27.669819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.172470, 39.345425, 27.872200>,  <36.358467, 38.830475, 27.294666>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.172470, 39.345425, 27.872200> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.026871, 39.007877, 28.029873>,  <35.939510, 38.805347, 28.124477>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.026871, 39.007877, 28.029873>,  <36.172470, 39.345425, 27.872200>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.026871, 39.007877, 28.029873> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266421, 0.311198, 0.912237,
		-0.892481, 0.437075, 0.111548,
		-0.364002, -0.843873, 0.394184,
		35.917671, 38.754715, 28.148129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.918594, 39.676491, 28.441994>,  <36.172470, 39.345425, 27.872200>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.918594, 39.676491, 28.441994> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.926746, 39.280884, 28.500547>,  <35.931637, 39.043518, 28.535679>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.926746, 39.280884, 28.500547>,  <35.918594, 39.676491, 28.441994>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.926746, 39.280884, 28.500547> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491108, 0.137436, 0.860189,
		-0.870860, 0.054362, 0.488515,
		0.020378, -0.989018, 0.146385,
		35.932861, 38.984177, 28.544462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.525703, 39.523514, 29.020248>,  <35.918594, 39.676491, 28.441994>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.525703, 39.523514, 29.020248> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.752972, 39.196289, 28.984549>,  <35.889332, 38.999954, 28.963129>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.752972, 39.196289, 28.984549>,  <35.525703, 39.523514, 29.020248>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.752972, 39.196289, 28.984549> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341155, 0.135457, 0.930196,
		-0.748866, -0.558954, 0.356048,
		0.568166, -0.818060, -0.089251,
		35.923420, 38.950871, 28.957773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.322464, 39.130276, 29.559584>,  <35.525703, 39.523514, 29.020248>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.322464, 39.130276, 29.559584> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.682659, 38.990257, 29.456366>,  <35.898777, 38.906246, 29.394436>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.682659, 38.990257, 29.456366>,  <35.322464, 39.130276, 29.559584>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.682659, 38.990257, 29.456366> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273817, -0.004597, 0.961771,
		-0.337848, -0.936722, 0.091709,
		0.900491, -0.350043, -0.258044,
		35.952805, 38.885246, 29.378952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.439407, 38.650764, 30.076002>,  <35.322464, 39.130276, 29.559584>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.439407, 38.650764, 30.076002> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.788952, 38.760330, 29.915339>,  <35.998680, 38.826069, 29.818939>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.788952, 38.760330, 29.915339>,  <35.439407, 38.650764, 30.076002>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.788952, 38.760330, 29.915339> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394473, 0.083416, 0.915113,
		0.284164, -0.958131, -0.035156,
		0.873866, 0.273911, -0.401661,
		36.051113, 38.842503, 29.794840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.990471, 38.271935, 30.448792>,  <35.439407, 38.650764, 30.076002>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.990471, 38.271935, 30.448792> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.153088, 38.608955, 30.307465>,  <36.250656, 38.811169, 30.222670>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.153088, 38.608955, 30.307465>,  <35.990471, 38.271935, 30.448792>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.153088, 38.608955, 30.307465> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355531, 0.210342, 0.910689,
		0.841620, -0.495845, -0.214041,
		0.406539, 0.842552, -0.353316,
		36.275051, 38.861721, 30.201469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.769833, 38.210224, 30.555737>,  <35.990471, 38.271935, 30.448792>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.769833, 38.210224, 30.555737> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.705086, 38.598991, 30.487410>,  <36.666237, 38.832253, 30.446413>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.705086, 38.598991, 30.487410>,  <36.769833, 38.210224, 30.555737>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.705086, 38.598991, 30.487410> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483364, 0.229004, 0.844936,
		0.860324, 0.054201, -0.506857,
		-0.161868, 0.971915, -0.170819,
		36.656525, 38.890568, 30.436163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.485710, 37.784943, 30.655144>,  <36.769833, 38.210224, 30.555737>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.485710, 37.784943, 30.655144> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.475380, 37.416462, 30.810434>,  <37.469181, 37.195374, 30.903608>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.475380, 37.416462, 30.810434>,  <37.485710, 37.784943, 30.655144>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.475380, 37.416462, 30.810434> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216499, -0.373987, -0.901810,
		0.975941, -0.107338, -0.189782,
		-0.025822, -0.921201, 0.388228,
		37.467632, 37.140102, 30.926903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.792118, 37.369495, 30.251534>,  <37.485710, 37.784943, 30.655144>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.792118, 37.369495, 30.251534> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.589886, 37.091003, 30.455360>,  <37.468548, 36.923908, 30.577656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.589886, 37.091003, 30.455360>,  <37.792118, 37.369495, 30.251534>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.589886, 37.091003, 30.455360> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251837, -0.445805, -0.858974,
		0.825209, -0.562605, 0.050053,
		-0.505577, -0.696228, 0.509567,
		37.438213, 36.882133, 30.608231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.884911, 36.672718, 29.951340>,  <37.792118, 37.369495, 30.251534>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.884911, 36.672718, 29.951340> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.529594, 36.684952, 30.134647>,  <37.316406, 36.692291, 30.244633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.529594, 36.684952, 30.134647>,  <37.884911, 36.672718, 29.951340>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.529594, 36.684952, 30.134647> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425464, -0.430606, -0.795965,
		0.172992, -0.902022, 0.395512,
		-0.888287, 0.030580, 0.458269,
		37.263107, 36.694126, 30.272127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.691528, 36.022938, 29.950964>,  <37.884911, 36.672718, 29.951340>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.691528, 36.022938, 29.950964> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.342224, 36.203690, 30.023865>,  <37.132641, 36.312141, 30.067604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.342224, 36.203690, 30.023865>,  <37.691528, 36.022938, 29.950964>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.342224, 36.203690, 30.023865> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474263, -0.702517, -0.530608,
		-0.111737, -0.549795, 0.827793,
		-0.873264, 0.451880, 0.182251,
		37.080246, 36.339252, 30.078541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.256454, 35.511589, 30.102287>,  <37.691528, 36.022938, 29.950964>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.256454, 35.511589, 30.102287> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.033241, 35.819515, 29.978361>,  <36.899315, 36.004272, 29.904005>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.033241, 35.819515, 29.978361>,  <37.256454, 35.511589, 30.102287>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.033241, 35.819515, 29.978361> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599041, -0.632073, -0.491564,
		-0.574239, -0.088717, 0.813867,
		-0.558033, 0.769814, -0.309815,
		36.865833, 36.050461, 29.885416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.616417, 35.325394, 30.154854>,  <37.256454, 35.511589, 30.102287>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.616417, 35.325394, 30.154854> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.600494, 35.617031, 29.881552>,  <36.590942, 35.792015, 29.717571>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.600494, 35.617031, 29.881552>,  <36.616417, 35.325394, 30.154854>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.600494, 35.617031, 29.881552> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497827, -0.607355, -0.619102,
		-0.866362, 0.315499, 0.387139,
		-0.039804, 0.729095, -0.683254,
		36.588554, 35.835758, 29.676575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.199692, 34.998764, 29.746178>,  <36.616417, 35.325394, 30.154854>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.199692, 34.998764, 29.746178> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.294353, 35.319889, 29.527279>,  <36.351151, 35.512566, 29.395941>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.294353, 35.319889, 29.527279>,  <36.199692, 34.998764, 29.746178>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.294353, 35.319889, 29.527279> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377799, -0.442881, -0.813095,
		-0.895131, 0.399175, 0.198492,
		0.236659, 0.802817, -0.547245,
		36.365353, 35.560734, 29.363106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.674675, 35.049141, 29.280277>,  <36.199692, 34.998764, 29.746178>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.674675, 35.049141, 29.280277> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.977112, 35.247646, 29.109608>,  <36.158573, 35.366749, 29.007206>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.977112, 35.247646, 29.109608>,  <35.674675, 35.049141, 29.280277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.977112, 35.247646, 29.109608> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315908, -0.294222, -0.902018,
		-0.573178, 0.816795, -0.065684,
		0.756088, 0.496266, -0.426673,
		36.203938, 35.396526, 28.981606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.377384, 35.274773, 28.658249>,  <35.674675, 35.049141, 29.280277>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.377384, 35.274773, 28.658249> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.773350, 35.275902, 28.601587>,  <36.010929, 35.276581, 28.567591>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.773350, 35.275902, 28.601587>,  <35.377384, 35.274773, 28.658249>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.773350, 35.275902, 28.601587> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137742, -0.215011, -0.966849,
		-0.033189, 0.976608, -0.212453,
		0.989912, 0.002825, -0.141656,
		36.070324, 35.276749, 28.559092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.466610, 35.651775, 28.002092>,  <35.377384, 35.274773, 28.658249>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.466610, 35.651775, 28.002092> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.790855, 35.428375, 28.072512>,  <35.985401, 35.294334, 28.114763>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.790855, 35.428375, 28.072512>,  <35.466610, 35.651775, 28.002092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.790855, 35.428375, 28.072512> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074872, -0.199316, -0.977071,
		0.580781, 0.805203, -0.119752,
		0.810609, -0.558499, 0.176046,
		36.034039, 35.260826, 28.125326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.838348, 35.688972, 27.405048>,  <35.466610, 35.651775, 28.002092>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.838348, 35.688972, 27.405048> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.015156, 35.375893, 27.580318>,  <36.121239, 35.188046, 27.685480>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.015156, 35.375893, 27.580318>,  <35.838348, 35.688972, 27.405048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.015156, 35.375893, 27.580318> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078718, -0.452753, -0.888154,
		0.893545, 0.427074, -0.138513,
		0.442020, -0.782702, 0.438174,
		36.147762, 35.141083, 27.711771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.342335, 35.632462, 27.049740>,  <35.838348, 35.688972, 27.405048>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.342335, 35.632462, 27.049740> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.311146, 35.274200, 27.224882>,  <36.292435, 35.059242, 27.329967>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.311146, 35.274200, 27.224882>,  <36.342335, 35.632462, 27.049740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.311146, 35.274200, 27.224882> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364324, -0.434415, -0.823742,
		0.928003, 0.095296, 0.360181,
		-0.077968, -0.895658, 0.437857,
		36.287754, 35.005505, 27.356239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.990860, 35.270988, 26.888021>,  <36.342335, 35.632462, 27.049740>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.990860, 35.270988, 26.888021> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.688931, 35.024227, 26.977169>,  <36.507771, 34.876171, 27.030657>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.688931, 35.024227, 26.977169>,  <36.990860, 35.270988, 26.888021>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.688931, 35.024227, 26.977169> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180590, -0.522098, -0.833547,
		0.630576, -0.588935, 0.505499,
		-0.754826, -0.616902, 0.222867,
		36.462482, 34.839157, 27.044029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.241558, 34.648624, 26.866791>,  <36.990860, 35.270988, 26.888021>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.241558, 34.648624, 26.866791> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.847019, 34.605686, 26.816843>,  <36.610294, 34.579922, 26.786875>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.847019, 34.605686, 26.816843>,  <37.241558, 34.648624, 26.866791>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.847019, 34.605686, 26.816843> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158711, -0.417584, -0.894670,
		0.043896, -0.902275, 0.428920,
		-0.986349, -0.107346, -0.124870,
		36.551113, 34.573483, 26.779383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<28.310980, 36.229019, 27.614445> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.709150, 36.207802, 27.582655>,  <28.948051, 36.195072, 27.563581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.709150, 36.207802, 27.582655>,  <28.310980, 36.229019, 27.614445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.709150, 36.207802, 27.582655> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087878, 0.181693, 0.979421,
		-0.037510, -0.981924, 0.185523,
		0.995425, -0.053042, -0.079474,
		29.007778, 36.191891, 27.558813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.502983, 35.810703, 28.179056>,  <28.310980, 36.229019, 27.614445>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.502983, 35.810703, 28.179056> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.844137, 35.995388, 28.081562>,  <29.048830, 36.106197, 28.023066>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.844137, 35.995388, 28.081562>,  <28.502983, 35.810703, 28.179056>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.844137, 35.995388, 28.081562> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208224, 0.127292, 0.969763,
		0.478777, -0.877848, 0.012426,
		0.852886, 0.461713, -0.243734,
		29.100002, 36.133904, 28.008442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.092230, 35.391102, 28.343145>,  <28.502983, 35.810703, 28.179056>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.092230, 35.391102, 28.343145> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.186687, 35.779739, 28.336843>,  <29.243362, 36.012920, 28.333063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.186687, 35.779739, 28.336843>,  <29.092230, 35.391102, 28.343145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.186687, 35.779739, 28.336843> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245190, -0.043889, 0.968481,
		0.940275, -0.232565, -0.248589,
		0.236145, 0.971590, -0.015755,
		29.257530, 36.071217, 28.332117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.734013, 35.468639, 28.747135>,  <29.092230, 35.391102, 28.343145>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.734013, 35.468639, 28.747135> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.614069, 35.848743, 28.713457>,  <29.542103, 36.076805, 28.693251>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.614069, 35.848743, 28.713457>,  <29.734013, 35.468639, 28.747135>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.614069, 35.848743, 28.713457> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153359, 0.135126, 0.978888,
		0.941576, 0.280616, -0.186250,
		-0.299859, 0.950261, -0.084196,
		29.524111, 36.133823, 28.688198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.250914, 35.819599, 29.165405>,  <29.734013, 35.468639, 28.747135>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.250914, 35.819599, 29.165405> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.950464, 36.081841, 29.134439>,  <29.770195, 36.239185, 29.115860>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.950464, 36.081841, 29.134439>,  <30.250914, 35.819599, 29.165405>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.950464, 36.081841, 29.134439> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242571, 0.383155, 0.891264,
		0.613982, 0.650669, -0.446828,
		-0.751122, 0.655608, -0.077417,
		29.725128, 36.278522, 29.111214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.445049, 36.551174, 29.307150>,  <30.250914, 35.819599, 29.165405>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.445049, 36.551174, 29.307150> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.053816, 36.528133, 29.387182>,  <29.819075, 36.514309, 29.435202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.053816, 36.528133, 29.387182>,  <30.445049, 36.551174, 29.307150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.053816, 36.528133, 29.387182> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176184, 0.283113, 0.942765,
		-0.110947, 0.957356, -0.266760,
		-0.978085, -0.057598, 0.200081,
		29.760391, 36.510853, 29.447206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.278461, 37.087524, 29.664822>,  <30.445049, 36.551174, 29.307150>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.278461, 37.087524, 29.664822> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.958458, 36.865543, 29.756046>,  <29.766457, 36.732353, 29.810781>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.958458, 36.865543, 29.756046>,  <30.278461, 37.087524, 29.664822>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.958458, 36.865543, 29.756046> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109512, 0.238663, 0.964908,
		-0.589911, 0.796909, -0.130158,
		-0.800008, -0.554956, 0.228061,
		29.718456, 36.699055, 29.824465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.844730, 37.499260, 30.130018>,  <30.278461, 37.087524, 29.664822>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.844730, 37.499260, 30.130018> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.765505, 37.113110, 30.197931>,  <29.717970, 36.881420, 30.238680>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.765505, 37.113110, 30.197931>,  <29.844730, 37.499260, 30.130018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.765505, 37.113110, 30.197931> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236854, 0.120946, 0.963988,
		-0.951142, 0.231145, 0.204698,
		-0.198064, -0.965372, 0.169785,
		29.706085, 36.823498, 30.248867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.731863, 37.425304, 30.774000>,  <29.844730, 37.499260, 30.130018>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.731863, 37.425304, 30.774000> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.750734, 37.029720, 30.717810>,  <29.762056, 36.792370, 30.684095>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.750734, 37.029720, 30.717810>,  <29.731863, 37.425304, 30.774000>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.750734, 37.029720, 30.717810> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102050, -0.135124, 0.985560,
		-0.993660, -0.060830, 0.094549,
		0.047176, -0.988960, -0.140475,
		29.764887, 36.733032, 30.675667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.307695, 37.202335, 31.223896>,  <29.731863, 37.425304, 30.774000>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.307695, 37.202335, 31.223896> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.571253, 36.910206, 31.151802>,  <29.729387, 36.734928, 31.108545>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.571253, 36.910206, 31.151802>,  <29.307695, 37.202335, 31.223896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.571253, 36.910206, 31.151802> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014047, -0.227610, 0.973651,
		-0.752104, -0.644065, -0.139712,
		0.658894, -0.730325, -0.180233,
		29.768921, 36.691109, 31.097733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.171822, 36.730705, 31.800211>,  <29.307695, 37.202335, 31.223896>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.171822, 36.730705, 31.800211> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.518585, 36.628597, 31.628954>,  <29.726645, 36.567333, 31.526199>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.518585, 36.628597, 31.628954>,  <29.171822, 36.730705, 31.800211>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.518585, 36.628597, 31.628954> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377127, -0.225773, 0.898222,
		-0.325949, -0.940141, -0.099457,
		0.866910, -0.255267, -0.428143,
		29.778658, 36.552017, 31.500511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.350697, 36.233143, 32.200859>,  <29.171822, 36.730705, 31.800211>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.350697, 36.233143, 32.200859> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.700907, 36.307083, 32.022293>,  <29.911032, 36.351448, 31.915154>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.700907, 36.307083, 32.022293>,  <29.350697, 36.233143, 32.200859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.700907, 36.307083, 32.022293> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451628, 0.015295, 0.892075,
		0.171732, -0.982647, -0.070094,
		0.875522, 0.184854, -0.446418,
		29.963564, 36.362537, 31.888369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.903385, 35.717594, 32.461498>,  <29.350697, 36.233143, 32.200859>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.903385, 35.717594, 32.461498> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.085524, 36.046379, 32.324661>,  <30.194807, 36.243652, 32.242558>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.085524, 36.046379, 32.324661>,  <29.903385, 35.717594, 32.461498>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.085524, 36.046379, 32.324661> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365916, 0.177511, 0.913562,
		0.811644, -0.541166, -0.219942,
		0.455346, 0.821967, -0.342097,
		30.222128, 36.292969, 32.222031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.546299, 35.621437, 32.648895>,  <29.903385, 35.717594, 32.461498>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.546299, 35.621437, 32.648895> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.504135, 36.010811, 32.567589>,  <30.478836, 36.244434, 32.518806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.504135, 36.010811, 32.567589>,  <30.546299, 35.621437, 32.648895>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.504135, 36.010811, 32.567589> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525275, 0.228066, 0.819800,
		0.844378, -0.020357, -0.535360,
		-0.105409, 0.973433, -0.203267,
		30.472513, 36.302841, 32.506607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.197983, 35.199146, 32.314255>,  <30.546299, 35.621437, 32.648895>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.197983, 35.199146, 32.314255> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.430550, 34.882610, 32.389862>,  <31.570089, 34.692688, 32.435226>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.430550, 34.882610, 32.389862>,  <31.197983, 35.199146, 32.314255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.430550, 34.882610, 32.389862> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310012, -0.430279, -0.847793,
		0.752228, 0.434322, -0.495497,
		0.581417, -0.791344, 0.189023,
		31.604975, 34.645206, 32.446568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.659138, 35.222660, 31.841047>,  <31.197983, 35.199146, 32.314255>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.659138, 35.222660, 31.841047> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.669683, 34.846115, 31.975595>,  <31.676010, 34.620190, 32.056324>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.669683, 34.846115, 31.975595>,  <31.659138, 35.222660, 31.841047>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.669683, 34.846115, 31.975595> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016725, -0.336026, -0.941704,
		0.999512, 0.030454, 0.006885,
		0.026365, -0.941360, 0.336371,
		31.677593, 34.563705, 32.076508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.183277, 34.778561, 31.397373>,  <31.659138, 35.222660, 31.841047>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.183277, 34.778561, 31.397373> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.905834, 34.538704, 31.557045>,  <31.739368, 34.394791, 31.652847>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.905834, 34.538704, 31.557045>,  <32.183277, 34.778561, 31.397373>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.905834, 34.538704, 31.557045> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184461, -0.387820, -0.903089,
		0.696336, -0.700022, 0.158385,
		-0.693607, -0.599638, 0.399180,
		31.697752, 34.358814, 31.676800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.361294, 34.144920, 31.269945>,  <32.183277, 34.778561, 31.397373>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.361294, 34.144920, 31.269945> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.969551, 34.092834, 31.331785>,  <31.734505, 34.061584, 31.368889>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.969551, 34.092834, 31.331785>,  <32.361294, 34.144920, 31.269945>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.969551, 34.092834, 31.331785> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089063, -0.408617, -0.908350,
		0.181452, -0.903369, 0.388585,
		-0.979358, -0.130213, 0.154601,
		31.675743, 34.053772, 31.378166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.177235, 33.440617, 31.075733>,  <32.361294, 34.144920, 31.269945>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.177235, 33.440617, 31.075733> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.835722, 33.647911, 31.055805>,  <31.630814, 33.772289, 31.043848>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.835722, 33.647911, 31.055805>,  <32.177235, 33.440617, 31.075733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.835722, 33.647911, 31.055805> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275077, -0.530274, -0.801961,
		-0.442025, -0.670998, 0.595295,
		-0.853784, 0.518239, -0.049819,
		31.579586, 33.803383, 31.040859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.760939, 32.952682, 31.077662>,  <32.177235, 33.440617, 31.075733>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.760939, 32.952682, 31.077662> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.569864, 33.272011, 30.930965>,  <31.455219, 33.463608, 30.842947>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.569864, 33.272011, 30.930965>,  <31.760939, 32.952682, 31.077662>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.569864, 33.272011, 30.930965> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309396, -0.543574, -0.780257,
		-0.822247, -0.259249, 0.506655,
		-0.477686, 0.798321, -0.366742,
		31.426558, 33.511509, 30.820944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.168407, 32.714962, 30.829073>,  <31.760939, 32.952682, 31.077662>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.168407, 32.714962, 30.829073> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.199863, 33.075943, 30.659651>,  <31.218737, 33.292530, 30.557997>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.199863, 33.075943, 30.659651>,  <31.168407, 32.714962, 30.829073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.199863, 33.075943, 30.659651> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223696, -0.398064, -0.889666,
		-0.971481, 0.164712, 0.170570,
		0.078641, 0.902450, -0.423557,
		31.223455, 33.346680, 30.532583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.703238, 32.650803, 30.286848>,  <31.168407, 32.714962, 30.829073>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.703238, 32.650803, 30.286848> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.906429, 32.972736, 30.164083>,  <31.028345, 33.165897, 30.090425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.906429, 32.972736, 30.164083>,  <30.703238, 32.650803, 30.286848>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.906429, 32.972736, 30.164083> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144420, -0.271681, -0.951489,
		-0.849175, 0.527662, -0.021775,
		0.507981, 0.804836, -0.306910,
		31.058823, 33.214188, 30.072010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.262182, 32.973541, 29.805017>,  <30.703238, 32.650803, 30.286848>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.262182, 32.973541, 29.805017> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.626162, 33.125252, 29.737907>,  <30.844549, 33.216278, 29.697641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.626162, 33.125252, 29.737907>,  <30.262182, 32.973541, 29.805017>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.626162, 33.125252, 29.737907> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183406, 0.005177, -0.983024,
		-0.371966, 0.925270, 0.074271,
		0.909947, 0.379273, -0.167774,
		30.899145, 33.239033, 29.687574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.097845, 33.506329, 29.350046>,  <30.262182, 32.973541, 29.805017>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.097845, 33.506329, 29.350046> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.487770, 33.418694, 29.333351>,  <30.721725, 33.366112, 29.323334>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.487770, 33.418694, 29.333351>,  <30.097845, 33.506329, 29.350046>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.487770, 33.418694, 29.333351> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046822, -0.018068, -0.998740,
		0.218059, 0.975537, -0.027871,
		0.974812, -0.219090, -0.041737,
		30.780214, 33.352966, 29.320829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.606649, 34.046398, 28.922716>,  <30.097845, 33.506329, 29.350046>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.606649, 34.046398, 28.922716> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.782669, 33.687218, 28.925184>,  <30.888281, 33.471710, 28.926664>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.782669, 33.687218, 28.925184>,  <30.606649, 34.046398, 28.922716>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.782669, 33.687218, 28.925184> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092309, 0.038401, -0.994990,
		0.893218, 0.438412, 0.099787,
		0.440047, -0.897954, 0.006169,
		30.914682, 33.417831, 28.927034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.274488, 34.150295, 28.649443>,  <30.606649, 34.046398, 28.922716>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.274488, 34.150295, 28.649443> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.220615, 33.755371, 28.615786>,  <31.188292, 33.518417, 28.595591>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.220615, 33.755371, 28.615786>,  <31.274488, 34.150295, 28.649443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.220615, 33.755371, 28.615786> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092416, 0.072032, -0.993111,
		0.986570, -0.141530, 0.081542,
		-0.134682, -0.987310, -0.084145,
		31.180210, 33.459179, 28.590542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.836933, 33.865173, 28.280495>,  <31.274488, 34.150295, 28.649443>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.836933, 33.865173, 28.280495> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.521614, 33.620789, 28.251337>,  <31.332422, 33.474159, 28.233843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.521614, 33.620789, 28.251337>,  <31.836933, 33.865173, 28.280495>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.521614, 33.620789, 28.251337> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023721, 0.088206, -0.995820,
		0.614834, -0.786734, -0.055040,
		-0.788300, -0.610958, -0.072894,
		31.285124, 33.437500, 28.229469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.941887, 33.469158, 27.623058>,  <31.836933, 33.865173, 28.280495>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.941887, 33.469158, 27.623058> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.552881, 33.402912, 27.688524>,  <31.319477, 33.363163, 27.727804>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.552881, 33.402912, 27.688524>,  <31.941887, 33.469158, 27.623058>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.552881, 33.402912, 27.688524> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152581, -0.077669, -0.985234,
		0.175882, -0.983127, 0.050265,
		-0.972515, -0.165616, 0.163667,
		31.261127, 33.353226, 27.737625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.135277, 32.773155, 27.696831>,  <31.941887, 33.469158, 27.623058>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.135277, 32.773155, 27.696831> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.526711, 32.783192, 27.615099>,  <32.761570, 32.789215, 27.566059>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.526711, 32.783192, 27.615099>,  <32.135277, 32.773155, 27.696831>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.526711, 32.783192, 27.615099> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201818, 0.078902, 0.976240,
		0.040614, -0.996567, 0.072149,
		0.978580, 0.025088, -0.204329,
		32.820286, 32.790718, 27.553801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.419567, 32.297169, 28.255928>,  <32.135277, 32.773155, 27.696831>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.419567, 32.297169, 28.255928> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.727974, 32.518208, 28.129332>,  <32.913017, 32.650829, 28.053373>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.727974, 32.518208, 28.129332>,  <32.419567, 32.297169, 28.255928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.727974, 32.518208, 28.129332> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344746, 0.055666, 0.937044,
		0.535423, -0.831589, -0.147585,
		0.771021, 0.552594, -0.316492,
		32.959282, 32.683987, 28.034384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.953407, 32.046459, 28.688757>,  <32.419567, 32.297169, 28.255928>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.953407, 32.046459, 28.688757> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.065277, 32.388439, 28.514015>,  <33.132401, 32.593628, 28.409170>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.065277, 32.388439, 28.514015>,  <32.953407, 32.046459, 28.688757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.065277, 32.388439, 28.514015> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712490, 0.120169, 0.691316,
		0.643537, -0.504598, -0.575535,
		0.279676, 0.854950, -0.436854,
		33.149181, 32.644924, 28.382959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.708973, 31.979616, 28.623369>,  <32.953407, 32.046459, 28.688757>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.708973, 31.979616, 28.623369> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.591736, 32.360832, 28.653849>,  <33.521393, 32.589561, 28.672136>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.591736, 32.360832, 28.653849>,  <33.708973, 31.979616, 28.623369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.591736, 32.360832, 28.653849> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685861, 0.154063, 0.711237,
		0.666099, 0.260723, -0.698810,
		-0.293097, 0.953041, 0.076199,
		33.503807, 32.646744, 28.676708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.355198, 32.326599, 28.858688>,  <33.708973, 31.979616, 28.623369>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.355198, 32.326599, 28.858688> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.053059, 32.577900, 28.933252>,  <33.871777, 32.728680, 28.977991>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.053059, 32.577900, 28.933252>,  <34.355198, 32.326599, 28.858688>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.053059, 32.577900, 28.933252> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444844, 0.282682, 0.849827,
		0.481212, 0.724837, -0.492997,
		-0.755347, 0.628253, 0.186409,
		33.826454, 32.766376, 28.989176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.652321, 32.982906, 28.725084>,  <34.355198, 32.326599, 28.858688>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.652321, 32.982906, 28.725084> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.335934, 33.051506, 28.960018>,  <34.146103, 33.092667, 29.100979>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.335934, 33.051506, 28.960018>,  <34.652321, 32.982906, 28.725084>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.335934, 33.051506, 28.960018> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608644, 0.318837, 0.726564,
		-0.062662, 0.932165, -0.356569,
		-0.790965, 0.171495, 0.587336,
		34.098644, 33.102955, 29.136219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.809513, 33.638287, 29.150177>,  <34.652321, 32.982906, 28.725084>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.809513, 33.638287, 29.150177> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.514332, 33.456913, 29.350109>,  <34.337223, 33.348091, 29.470068>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.514332, 33.456913, 29.350109>,  <34.809513, 33.638287, 29.150177>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.514332, 33.456913, 29.350109> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354289, 0.370072, 0.858793,
		-0.574376, 0.810831, -0.112450,
		-0.737951, -0.453431, 0.499829,
		34.292946, 33.320885, 29.500057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.678322, 34.077816, 29.638386>,  <34.809513, 33.638287, 29.150177>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.678322, 34.077816, 29.638386> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.490414, 33.749847, 29.769253>,  <34.377666, 33.553066, 29.847773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.490414, 33.749847, 29.769253>,  <34.678322, 34.077816, 29.638386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.490414, 33.749847, 29.769253> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219863, 0.250264, 0.942883,
		-0.854969, 0.514875, 0.062703,
		-0.469775, -0.819922, 0.327169,
		34.349480, 33.503872, 29.867403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.463593, 34.261681, 30.305779>,  <34.678322, 34.077816, 29.638386>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.463593, 34.261681, 30.305779> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.462959, 33.861687, 30.304056>,  <34.462582, 33.621689, 30.303022>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.462959, 33.861687, 30.304056>,  <34.463593, 34.261681, 30.305779>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.462959, 33.861687, 30.304056> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289907, -0.004581, 0.957044,
		-0.957053, 0.000263, 0.289912,
		-0.001580, -0.999989, -0.004308,
		34.462486, 33.561691, 30.302763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.174324, 34.075726, 30.953104>,  <34.463593, 34.261681, 30.305779>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.174324, 34.075726, 30.953104> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.395607, 33.761345, 30.842657>,  <34.528374, 33.572716, 30.776390>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.395607, 33.761345, 30.842657>,  <34.174324, 34.075726, 30.953104>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.395607, 33.761345, 30.842657> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313311, -0.110817, 0.943163,
		-0.771883, -0.608270, 0.184945,
		0.553202, -0.785956, -0.276115,
		34.561569, 33.525558, 30.759823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.961334, 33.478241, 31.400230>,  <34.174324, 34.075726, 30.953104>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.961334, 33.478241, 31.400230> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.333549, 33.434280, 31.260508>,  <34.556881, 33.407902, 31.176674>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.333549, 33.434280, 31.260508>,  <33.961334, 33.478241, 31.400230>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.333549, 33.434280, 31.260508> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355001, 0.036749, 0.934143,
		-0.089831, -0.993262, 0.073213,
		0.930540, -0.109906, -0.349308,
		34.612713, 33.401310, 31.155716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.275494, 32.905838, 31.850008>,  <33.961334, 33.478241, 31.400230>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.275494, 32.905838, 31.850008> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.593102, 33.079983, 31.680304>,  <34.783665, 33.184471, 31.578480>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.593102, 33.079983, 31.680304>,  <34.275494, 32.905838, 31.850008>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.593102, 33.079983, 31.680304> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415563, 0.120639, 0.901529,
		0.443674, -0.892136, -0.085131,
		0.794016, 0.435362, -0.424263,
		34.831306, 33.210590, 31.553024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.875237, 32.653267, 32.179237>,  <34.275494, 32.905838, 31.850008>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.875237, 32.653267, 32.179237> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.999146, 32.997540, 32.017609>,  <35.073490, 33.204102, 31.920631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.999146, 32.997540, 32.017609>,  <34.875237, 32.653267, 32.179237>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.999146, 32.997540, 32.017609> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594921, 0.156060, 0.788488,
		0.741694, -0.484643, -0.463693,
		0.309772, 0.860678, -0.404073,
		35.092075, 33.255741, 31.896387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.588131, 32.573784, 32.282867>,  <34.875237, 32.653267, 32.179237>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.588131, 32.573784, 32.282867> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.516365, 32.958672, 32.200939>,  <35.473305, 33.189602, 32.151783>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.516365, 32.958672, 32.200939>,  <35.588131, 32.573784, 32.282867>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.516365, 32.958672, 32.200939> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454945, 0.265747, 0.849943,
		0.872258, 0.059313, -0.485435,
		-0.179416, 0.962216, -0.204816,
		35.462540, 33.247337, 32.139496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<36.973232, 33.641037, 26.502317> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.663181, 33.892731, 26.479527>,  <36.477150, 34.043747, 26.465853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.663181, 33.892731, 26.479527>,  <36.973232, 33.641037, 26.502317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.663181, 33.892731, 26.479527> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332305, -0.482720, -0.810280,
		-0.537360, -0.609134, 0.583266,
		-0.775124, 0.629235, -0.056976,
		36.430645, 34.081501, 26.462435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.498344, 33.229637, 26.281336>,  <36.973232, 33.641037, 26.502317>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.498344, 33.229637, 26.281336> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.371231, 33.594093, 26.176394>,  <36.294964, 33.812767, 26.113428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.371231, 33.594093, 26.176394>,  <36.498344, 33.229637, 26.281336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.371231, 33.594093, 26.176394> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300464, -0.359211, -0.883566,
		-0.899297, -0.201952, 0.387917,
		-0.317782, 0.911144, -0.262358,
		36.275898, 33.867435, 26.097687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.800175, 33.195976, 26.052094>,  <36.498344, 33.229637, 26.281336>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.800175, 33.195976, 26.052094> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.960926, 33.526997, 25.895294>,  <36.057377, 33.725609, 25.801214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.960926, 33.526997, 25.895294>,  <35.800175, 33.195976, 26.052094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.960926, 33.526997, 25.895294> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441426, -0.199979, -0.874730,
		-0.802271, 0.524570, 0.284934,
		0.401876, 0.827547, -0.391996,
		36.081490, 33.775261, 25.777695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.288685, 33.451126, 25.652929>,  <35.800175, 33.195976, 26.052094>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.288685, 33.451126, 25.652929> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.607708, 33.629108, 25.489998>,  <35.799122, 33.735897, 25.392239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.607708, 33.629108, 25.489998>,  <35.288685, 33.451126, 25.652929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.607708, 33.629108, 25.489998> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399291, -0.116756, -0.909360,
		-0.452187, 0.887907, 0.084549,
		0.797555, 0.444960, -0.407329,
		35.846973, 33.762596, 25.367800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.027050, 33.884686, 24.940521>,  <35.288685, 33.451126, 25.652929>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.027050, 33.884686, 24.940521> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.424709, 33.847809, 24.917971>,  <35.663303, 33.825684, 24.904440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.424709, 33.847809, 24.917971>,  <35.027050, 33.884686, 24.940521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.424709, 33.847809, 24.917971> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074164, -0.202644, -0.976440,
		0.078595, 0.974903, -0.208294,
		0.994144, -0.092191, -0.056376,
		35.722954, 33.820152, 24.901058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.258392, 34.233051, 24.377890>,  <35.027050, 33.884686, 24.940521>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.258392, 34.233051, 24.377890> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.553875, 33.975498, 24.457624>,  <35.731163, 33.820969, 24.505465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.553875, 33.975498, 24.457624>,  <35.258392, 34.233051, 24.377890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.553875, 33.975498, 24.457624> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063152, -0.228321, -0.971535,
		0.671065, 0.730266, -0.128000,
		0.738704, -0.643880, 0.199336,
		35.775486, 33.782333, 24.517426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.747780, 34.415363, 23.848495>,  <35.258392, 34.233051, 24.377890>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.747780, 34.415363, 23.848495> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.790482, 34.045265, 23.994114>,  <35.816101, 33.823208, 24.081484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.790482, 34.045265, 23.994114>,  <35.747780, 34.415363, 23.848495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.790482, 34.045265, 23.994114> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331011, -0.378323, -0.864467,
		0.937569, -0.028219, -0.346652,
		0.106752, -0.925244, 0.364045,
		35.822506, 33.767693, 24.103327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.994762, 34.015636, 23.289232>,  <35.747780, 34.415363, 23.848495>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.994762, 34.015636, 23.289232> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.847065, 33.746155, 23.545290>,  <35.758446, 33.584465, 23.698925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.847065, 33.746155, 23.545290>,  <35.994762, 34.015636, 23.289232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.847065, 33.746155, 23.545290> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415290, -0.496602, -0.762182,
		0.831381, -0.547274, -0.096416,
		-0.369242, -0.673704, 0.640143,
		35.736294, 33.544044, 23.737333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.275414, 33.347370, 22.990660>,  <35.994762, 34.015636, 23.289232>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.275414, 33.347370, 22.990660> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.969112, 33.253860, 23.230314>,  <35.785332, 33.197754, 23.374107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.969112, 33.253860, 23.230314>,  <36.275414, 33.347370, 22.990660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.969112, 33.253860, 23.230314> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433008, -0.501406, -0.749064,
		0.475521, -0.833033, 0.282730,
		-0.765757, -0.233772, 0.599139,
		35.739384, 33.183727, 23.410055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.188484, 32.573978, 22.987713>,  <36.275414, 33.347370, 22.990660>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.188484, 32.573978, 22.987713> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.831825, 32.728336, 23.082409>,  <35.617828, 32.820950, 23.139227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.831825, 32.728336, 23.082409>,  <36.188484, 32.573978, 22.987713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.831825, 32.728336, 23.082409> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417326, -0.497894, -0.760224,
		-0.175494, -0.776652, 0.604990,
		-0.891651, 0.385893, 0.236740,
		35.564331, 32.844105, 23.153431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.738682, 32.025970, 22.971617>,  <36.188484, 32.573978, 22.987713>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.738682, 32.025970, 22.971617> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.489170, 32.338383, 22.959723>,  <35.339462, 32.525829, 22.952585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.489170, 32.338383, 22.959723>,  <35.738682, 32.025970, 22.971617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.489170, 32.338383, 22.959723> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630828, -0.525554, -0.570832,
		-0.461466, -0.337318, 0.820528,
		-0.623784, 0.781031, -0.029736,
		35.302036, 32.572693, 22.950802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.113243, 31.773598, 23.006626>,  <35.738682, 32.025970, 22.971617>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.113243, 31.773598, 23.006626> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.050945, 32.137512, 22.852724>,  <35.013565, 32.355862, 22.760384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.050945, 32.137512, 22.852724>,  <35.113243, 31.773598, 23.006626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.050945, 32.137512, 22.852724> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611605, -0.394683, -0.685686,
		-0.775682, 0.128525, 0.617899,
		-0.155746, 0.909784, -0.384755,
		35.004223, 32.410446, 22.737297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.409550, 31.851780, 22.942682>,  <35.113243, 31.773598, 23.006626>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.409550, 31.851780, 22.942682> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.630554, 32.054020, 22.677624>,  <34.763157, 32.175365, 22.518589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.630554, 32.054020, 22.677624>,  <34.409550, 31.851780, 22.942682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.630554, 32.054020, 22.677624> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503457, -0.431160, -0.748754,
		-0.664276, 0.747309, 0.016326,
		0.552512, 0.505599, -0.662647,
		34.796307, 32.205700, 22.478830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.954029, 32.146835, 22.535164>,  <34.409550, 31.851780, 22.942682>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.954029, 32.146835, 22.535164> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.296265, 32.055603, 22.349283>,  <34.501606, 32.000866, 22.237755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.296265, 32.055603, 22.349283>,  <33.954029, 32.146835, 22.535164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.296265, 32.055603, 22.349283> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504610, -0.567738, -0.650417,
		-0.115485, 0.790983, -0.600840,
		0.855589, -0.228076, -0.464703,
		34.552940, 31.987181, 22.209873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.621437, 31.995876, 21.956497>,  <33.954029, 32.146835, 22.535164>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.621437, 31.995876, 21.956497> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.256565, 31.838329, 22.001736>,  <33.037640, 31.743801, 22.028879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.256565, 31.838329, 22.001736>,  <33.621437, 31.995876, 21.956497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.256565, 31.838329, 22.001736> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003767, 0.267920, 0.963434,
		-0.409764, 0.879255, -0.242909,
		-0.912184, -0.393865, 0.113096,
		32.982910, 31.720169, 22.035664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.143967, 32.495201, 22.275955>,  <33.621437, 31.995876, 21.956497>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.143967, 32.495201, 22.275955> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.006210, 32.135700, 22.384508>,  <32.923557, 31.920000, 22.449640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.006210, 32.135700, 22.384508>,  <33.143967, 32.495201, 22.275955>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.006210, 32.135700, 22.384508> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138600, 0.237226, 0.961516,
		-0.928541, 0.368747, 0.042869,
		-0.344387, -0.898749, 0.271383,
		32.902893, 31.866076, 22.465923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.673828, 32.652863, 22.725790>,  <33.143967, 32.495201, 22.275955>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.673828, 32.652863, 22.725790> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.711941, 32.262573, 22.804659>,  <32.734810, 32.028400, 22.851980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.711941, 32.262573, 22.804659>,  <32.673828, 32.652863, 22.725790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.711941, 32.262573, 22.804659> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022880, 0.200167, 0.979495,
		-0.995187, -0.088819, 0.041397,
		0.095284, -0.975728, 0.197171,
		32.740524, 31.969854, 22.863810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.068256, 32.369652, 23.191385>,  <32.673828, 32.652863, 22.725790>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.068256, 32.369652, 23.191385> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.378376, 32.121399, 23.238241>,  <32.564449, 31.972446, 23.266356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.378376, 32.121399, 23.238241>,  <32.068256, 32.369652, 23.191385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.378376, 32.121399, 23.238241> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070841, 0.098847, 0.992578,
		-0.627609, -0.777843, 0.032669,
		0.775299, -0.620637, 0.117141,
		32.610966, 31.935207, 23.273384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.885342, 31.983025, 23.702396>,  <32.068256, 32.369652, 23.191385>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.885342, 31.983025, 23.702396> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.281387, 31.928219, 23.690359>,  <32.519012, 31.895336, 23.683138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.281387, 31.928219, 23.690359>,  <31.885342, 31.983025, 23.702396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.281387, 31.928219, 23.690359> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040889, 0.076688, 0.996216,
		-0.134189, -0.987596, 0.081532,
		0.990112, -0.137015, -0.030091,
		32.578423, 31.887114, 23.681332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.135757, 31.399048, 24.151783>,  <31.885342, 31.983025, 23.702396>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.135757, 31.399048, 24.151783> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.463501, 31.624758, 24.111303>,  <32.660149, 31.760183, 24.087015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.463501, 31.624758, 24.111303>,  <32.135757, 31.399048, 24.151783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.463501, 31.624758, 24.111303> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149627, -0.040089, 0.987929,
		0.553406, -0.824614, -0.117278,
		0.819362, 0.564274, -0.101199,
		32.709309, 31.794041, 24.080944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.681412, 31.173510, 24.670294>,  <32.135757, 31.399048, 24.151783>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.681412, 31.173510, 24.670294> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.783997, 31.546825, 24.569740>,  <32.845547, 31.770815, 24.509407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.783997, 31.546825, 24.569740>,  <32.681412, 31.173510, 24.670294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.783997, 31.546825, 24.569740> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202115, 0.202552, 0.958187,
		0.945187, -0.296546, -0.136686,
		0.256460, 0.933292, -0.251386,
		32.860935, 31.826813, 24.494324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.345917, 31.319359, 24.891891>,  <32.681412, 31.173510, 24.670294>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.345917, 31.319359, 24.891891> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.219681, 31.698679, 24.878464>,  <33.143940, 31.926271, 24.870407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.219681, 31.698679, 24.878464>,  <33.345917, 31.319359, 24.891891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.219681, 31.698679, 24.878464> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360927, 0.152681, 0.920011,
		0.877572, 0.278233, -0.390453,
		-0.315592, 0.948301, -0.033567,
		33.125004, 31.983170, 24.868393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.902367, 31.629353, 25.155849>,  <33.345917, 31.319359, 24.891891>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.902367, 31.629353, 25.155849> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.604519, 31.896158, 25.165874>,  <33.425808, 32.056244, 25.171890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.604519, 31.896158, 25.165874>,  <33.902367, 31.629353, 25.155849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.604519, 31.896158, 25.165874> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367815, 0.378695, 0.849295,
		0.557002, 0.641623, -0.527323,
		-0.744621, 0.667016, 0.025065,
		33.381134, 32.096264, 25.173393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.130161, 32.310051, 25.452766>,  <33.902367, 31.629353, 25.155849>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.130161, 32.310051, 25.452766> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.734253, 32.351948, 25.491522>,  <33.496708, 32.377087, 25.514776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.734253, 32.351948, 25.491522>,  <34.130161, 32.310051, 25.452766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.734253, 32.351948, 25.491522> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125553, 0.316727, 0.940170,
		0.067790, 0.942715, -0.326638,
		-0.989768, 0.104745, 0.096890,
		33.437321, 32.383369, 25.520588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.004539, 33.062054, 25.628702>,  <34.130161, 32.310051, 25.452766>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.004539, 33.062054, 25.628702> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.694508, 32.837963, 25.745600>,  <33.508488, 32.703510, 25.815739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.694508, 32.837963, 25.745600>,  <34.004539, 33.062054, 25.628702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.694508, 32.837963, 25.745600> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126476, 0.315598, 0.940426,
		-0.619079, 0.765865, -0.173758,
		-0.775077, -0.560222, 0.292243,
		33.461983, 32.669895, 25.833273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.440205, 33.449886, 26.005880>,  <34.004539, 33.062054, 25.628702>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.440205, 33.449886, 26.005880> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.370831, 33.081543, 26.145555>,  <33.329205, 32.860535, 26.229361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.370831, 33.081543, 26.145555>,  <33.440205, 33.449886, 26.005880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.370831, 33.081543, 26.145555> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379964, 0.389678, 0.838915,
		-0.908596, 0.012822, -0.417480,
		-0.173439, -0.920862, 0.349188,
		33.318798, 32.805283, 26.250313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.870682, 33.484814, 26.392944>,  <33.440205, 33.449886, 26.005880>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.870682, 33.484814, 26.392944> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.007256, 33.134579, 26.529634>,  <33.089199, 32.924438, 26.611649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.007256, 33.134579, 26.529634>,  <32.870682, 33.484814, 26.392944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.007256, 33.134579, 26.529634> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329436, 0.229025, 0.915980,
		-0.880280, -0.425324, -0.210251,
		0.341436, -0.875584, 0.341723,
		33.109688, 32.871902, 26.632151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.368347, 33.212601, 26.961821>,  <32.870682, 33.484814, 26.392944>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.368347, 33.212601, 26.961821> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.693611, 32.993652, 27.040972>,  <32.888771, 32.862282, 27.088463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.693611, 32.993652, 27.040972>,  <32.368347, 33.212601, 26.961821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.693611, 32.993652, 27.040972> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087551, 0.221077, 0.971318,
		-0.575419, -0.807161, 0.131848,
		0.813159, -0.547372, 0.197879,
		32.937557, 32.829441, 27.100336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.654518, 32.934410, 27.074802>,  <32.368347, 33.212601, 26.961821>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.654518, 32.934410, 27.074802> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.315056, 33.100586, 27.205763>,  <31.111378, 33.200291, 27.284340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.315056, 33.100586, 27.205763>,  <31.654518, 32.934410, 27.074802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.315056, 33.100586, 27.205763> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410793, -0.127727, -0.902738,
		-0.333218, -0.900607, 0.279056,
		-0.848655, 0.415442, 0.327402,
		31.060459, 33.225220, 27.303984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.129536, 32.441269, 26.853716>,  <31.654518, 32.934410, 27.074802>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.129536, 32.441269, 26.853716> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.956207, 32.799126, 26.897255>,  <30.852211, 33.013840, 26.923378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.956207, 32.799126, 26.897255>,  <31.129536, 32.441269, 26.853716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.956207, 32.799126, 26.897255> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359136, -0.060639, -0.931313,
		-0.826592, -0.442648, 0.347575,
		-0.433321, 0.894643, 0.108847,
		30.826210, 33.067520, 26.929909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.609859, 32.342888, 26.467339>,  <31.129536, 32.441269, 26.853716>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.609859, 32.342888, 26.467339> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.614502, 32.736290, 26.539543>,  <30.617289, 32.972332, 26.582867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.614502, 32.736290, 26.539543>,  <30.609859, 32.342888, 26.467339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.614502, 32.736290, 26.539543> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498732, 0.162162, -0.851452,
		-0.866679, -0.080143, 0.492387,
		0.011608, 0.983505, 0.180512,
		30.617985, 33.031342, 26.593697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.939270, 32.463902, 26.367790>,  <30.609859, 32.342888, 26.467339>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.939270, 32.463902, 26.367790> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.166212, 32.786053, 26.299118>,  <30.302378, 32.979343, 26.257915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.166212, 32.786053, 26.299118>,  <29.939270, 32.463902, 26.367790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.166212, 32.786053, 26.299118> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415359, 0.099869, -0.904159,
		-0.711043, 0.584290, 0.391182,
		0.567357, 0.805377, -0.171679,
		30.336420, 33.027664, 26.247614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.464792, 32.960884, 26.096231>,  <29.939270, 32.463902, 26.367790>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.464792, 32.960884, 26.096231> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.823679, 33.096992, 25.983652>,  <30.039011, 33.178658, 25.916105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.823679, 33.096992, 25.983652>,  <29.464792, 32.960884, 26.096231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.823679, 33.096992, 25.983652> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321800, 0.067369, -0.944408,
		-0.302395, 0.937911, 0.169944,
		0.897219, 0.340272, -0.281447,
		30.092844, 33.199074, 25.899218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.362921, 33.600266, 25.756840>,  <29.464792, 32.960884, 26.096231>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.362921, 33.600266, 25.756840> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.720304, 33.481258, 25.622250>,  <29.934734, 33.409855, 25.541496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.720304, 33.481258, 25.622250>,  <29.362921, 33.600266, 25.756840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.720304, 33.481258, 25.622250> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304806, 0.148589, -0.940752,
		0.329885, 0.943083, 0.042074,
		0.893459, -0.297516, -0.336475,
		29.988342, 33.392002, 25.521307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.445595, 34.064129, 25.236860>,  <29.362921, 33.600266, 25.756840>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.445595, 34.064129, 25.236860> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.690861, 33.762260, 25.143482>,  <29.838020, 33.581139, 25.087456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.690861, 33.762260, 25.143482>,  <29.445595, 34.064129, 25.236860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.690861, 33.762260, 25.143482> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393954, -0.035984, -0.918426,
		0.684710, 0.655115, -0.319370,
		0.613166, -0.754672, -0.233447,
		29.874811, 33.535858, 25.073448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.637957, 34.809406, 25.108074>,  <29.445595, 34.064129, 25.236860>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.637957, 34.809406, 25.108074> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.468435, 35.151661, 24.989233>,  <29.366722, 35.357014, 24.917929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.468435, 35.151661, 24.989233>,  <29.637957, 34.809406, 25.108074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.468435, 35.151661, 24.989233> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046958, 0.306821, 0.950608,
		0.904537, 0.416821, -0.089853,
		-0.423802, 0.855641, -0.297104,
		29.341295, 35.408352, 24.900103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.053431, 35.321636, 25.426807>,  <29.637957, 34.809406, 25.108074>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.053431, 35.321636, 25.426807> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.684269, 35.448631, 25.339674>,  <29.462772, 35.524826, 25.287394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.684269, 35.448631, 25.339674>,  <30.053431, 35.321636, 25.426807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.684269, 35.448631, 25.339674> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113718, 0.315761, 0.942000,
		0.367856, 0.894147, -0.255313,
		-0.922903, 0.317486, -0.217835,
		29.407398, 35.543877, 25.274323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.098278, 35.953049, 25.571192>,  <30.053431, 35.321636, 25.426807>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.098278, 35.953049, 25.571192> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.710480, 35.857491, 25.593109>,  <29.477800, 35.800156, 25.606260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.710480, 35.857491, 25.593109>,  <30.098278, 35.953049, 25.571192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.710480, 35.857491, 25.593109> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072821, 0.494210, 0.866287,
		-0.234035, 0.835873, -0.496532,
		-0.969497, -0.238899, 0.054793,
		29.419630, 35.785820, 25.609547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.809671, 36.599918, 25.810080>,  <30.098278, 35.953049, 25.571192>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.809671, 36.599918, 25.810080> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.554380, 36.295330, 25.855370>,  <29.401205, 36.112576, 25.882544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.554380, 36.295330, 25.855370>,  <29.809671, 36.599918, 25.810080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.554380, 36.295330, 25.855370> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140576, 0.259880, 0.955354,
		-0.756903, 0.593818, -0.272908,
		-0.638229, -0.761474, 0.113227,
		29.362911, 36.066887, 25.889338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.253710, 36.904232, 26.005476>,  <29.809671, 36.599918, 25.810080>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.253710, 36.904232, 26.005476> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.221355, 36.528557, 26.138977>,  <29.201942, 36.303154, 26.219078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.221355, 36.528557, 26.138977>,  <29.253710, 36.904232, 26.005476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.221355, 36.528557, 26.138977> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148183, 0.319795, 0.935827,
		-0.985646, 0.125154, 0.113304,
		-0.080888, -0.939185, 0.333750,
		29.197088, 36.246803, 26.239101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.848471, 36.936703, 26.592573>,  <29.253710, 36.904232, 26.005476>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.848471, 36.936703, 26.592573> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.036402, 36.586647, 26.638863>,  <29.149160, 36.376614, 26.666637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.036402, 36.586647, 26.638863>,  <28.848471, 36.936703, 26.592573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.036402, 36.586647, 26.638863> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260677, 0.262792, 0.928971,
		-0.843391, -0.406291, 0.351596,
		0.469829, -0.875139, 0.115726,
		29.177351, 36.324104, 26.673580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.585142, 36.834633, 27.244175>,  <28.848471, 36.936703, 26.592573>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.585142, 36.834633, 27.244175> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.871750, 36.560692, 27.191137>,  <29.043715, 36.396328, 27.159315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.871750, 36.560692, 27.191137>,  <28.585142, 36.834633, 27.244175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.871750, 36.560692, 27.191137> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227077, 0.049269, 0.972630,
		-0.659575, -0.727015, 0.190816,
		0.716518, -0.684852, -0.132592,
		29.086704, 36.355236, 27.151360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<33.394306, 35.741028, 21.826153> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.531593, 35.372463, 21.899038>,  <33.613964, 35.151325, 21.942770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.531593, 35.372463, 21.899038>,  <33.394306, 35.741028, 21.826153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.531593, 35.372463, 21.899038> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008024, 0.191113, 0.981535,
		-0.939221, -0.338343, 0.058200,
		0.343218, -0.921412, 0.182212,
		33.634560, 35.096039, 21.953701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.035458, 35.422878, 22.382483>,  <33.394306, 35.741028, 21.826153>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.035458, 35.422878, 22.382483> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.381405, 35.222385, 22.393610>,  <33.588974, 35.102089, 22.400288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.381405, 35.222385, 22.393610>,  <33.035458, 35.422878, 22.382483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.381405, 35.222385, 22.393610> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061819, 0.161337, 0.984961,
		-0.498182, -0.850139, 0.170521,
		0.864866, -0.501232, 0.027821,
		33.640865, 35.072018, 22.401957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.954964, 34.998352, 22.908939>,  <33.035458, 35.422878, 22.382483>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.954964, 34.998352, 22.908939> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.348381, 35.024593, 22.841606>,  <33.584431, 35.040337, 22.801207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.348381, 35.024593, 22.841606>,  <32.954964, 34.998352, 22.908939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.348381, 35.024593, 22.841606> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137337, 0.333887, 0.932554,
		0.117381, -0.940327, 0.319384,
		0.983545, 0.065601, -0.168334,
		33.643444, 35.044273, 22.791105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.246422, 34.676987, 23.453409>,  <32.954964, 34.998352, 22.908939>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.246422, 34.676987, 23.453409> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.541271, 34.901451, 23.302813>,  <33.718182, 35.036129, 23.212456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.541271, 34.901451, 23.302813>,  <33.246422, 34.676987, 23.453409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.541271, 34.901451, 23.302813> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293492, 0.235995, 0.926374,
		0.608693, -0.793352, 0.009263,
		0.737127, 0.561158, -0.376491,
		33.762409, 35.069798, 23.189865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.765530, 34.583557, 24.013952>,  <33.246422, 34.676987, 23.453409>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.765530, 34.583557, 24.013952> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.867088, 34.911625, 23.808874>,  <33.928024, 35.108467, 23.685827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.867088, 34.911625, 23.808874>,  <33.765530, 34.583557, 24.013952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.867088, 34.911625, 23.808874> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198589, 0.474571, 0.857523,
		0.946625, -0.319538, -0.042385,
		0.253896, 0.820170, -0.512697,
		33.943256, 35.157677, 23.655066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.430824, 34.822746, 24.338871>,  <33.765530, 34.583557, 24.013952>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.430824, 34.822746, 24.338871> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.250786, 35.118679, 24.138845>,  <34.142761, 35.296238, 24.018829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.250786, 35.118679, 24.138845>,  <34.430824, 34.822746, 24.338871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.250786, 35.118679, 24.138845> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137326, 0.610681, 0.779878,
		0.882356, 0.282351, -0.376465,
		-0.450100, 0.739828, -0.500064,
		34.115757, 35.340626, 23.988827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.941395, 35.446815, 24.482412>,  <34.430824, 34.822746, 24.338871>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.941395, 35.446815, 24.482412> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.597637, 35.595448, 24.341919>,  <34.391380, 35.684628, 24.257624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.597637, 35.595448, 24.341919>,  <34.941395, 35.446815, 24.482412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.597637, 35.595448, 24.341919> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051826, 0.746692, 0.663148,
		0.508676, 0.551705, -0.660963,
		-0.859397, 0.371582, -0.351232,
		34.339817, 35.706921, 24.236549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.068554, 36.177044, 24.391031>,  <34.941395, 35.446815, 24.482412>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.068554, 36.177044, 24.391031> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.668953, 36.159534, 24.394466>,  <34.429192, 36.149029, 24.396526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.668953, 36.159534, 24.394466>,  <35.068554, 36.177044, 24.391031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.668953, 36.159534, 24.394466> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022702, 0.664650, 0.746810,
		-0.038394, 0.745871, -0.664982,
		-0.999005, -0.043770, 0.008586,
		34.369251, 36.146404, 24.397041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.800186, 36.820881, 24.208971>,  <35.068554, 36.177044, 24.391031>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.800186, 36.820881, 24.208971> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.533627, 36.614666, 24.424425>,  <34.373692, 36.490936, 24.553698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.533627, 36.614666, 24.424425>,  <34.800186, 36.820881, 24.208971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.533627, 36.614666, 24.424425> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071517, 0.763293, 0.642082,
		-0.742157, 0.389361, -0.545528,
		-0.666400, -0.515540, 0.538637,
		34.333706, 36.460003, 24.586016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.452553, 37.372150, 24.485609>,  <34.800186, 36.820881, 24.208971>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.452553, 37.372150, 24.485609> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.317436, 37.071003, 24.711557>,  <34.236366, 36.890312, 24.847126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.317436, 37.071003, 24.711557>,  <34.452553, 37.372150, 24.485609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.317436, 37.071003, 24.711557> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061743, 0.581132, 0.811463,
		-0.939193, 0.308985, -0.149819,
		-0.337795, -0.752870, 0.564873,
		34.216099, 36.845142, 24.881020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.022022, 37.758278, 24.967272>,  <34.452553, 37.372150, 24.485609>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.022022, 37.758278, 24.967272> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.098957, 37.401775, 25.131550>,  <34.145119, 37.187874, 25.230116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.098957, 37.401775, 25.131550>,  <34.022022, 37.758278, 24.967272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.098957, 37.401775, 25.131550> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060710, 0.406900, 0.911453,
		-0.979449, -0.200240, 0.024154,
		0.192338, -0.891256, 0.410694,
		34.156658, 37.134399, 25.254759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.677227, 37.769764, 25.596289>,  <34.022022, 37.758278, 24.967272>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.677227, 37.769764, 25.596289> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.963108, 37.495937, 25.653652>,  <34.134636, 37.331642, 25.688070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.963108, 37.495937, 25.653652>,  <33.677227, 37.769764, 25.596289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.963108, 37.495937, 25.653652> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079498, 0.283216, 0.955756,
		-0.694896, -0.671681, 0.256837,
		0.714703, -0.684569, 0.143408,
		34.177521, 37.290565, 25.696674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.048210, 37.478451, 25.778919>,  <33.677227, 37.769764, 25.596289>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.048210, 37.478451, 25.778919> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.696045, 37.663265, 25.821609>,  <32.484745, 37.774155, 25.847223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.696045, 37.663265, 25.821609>,  <33.048210, 37.478451, 25.778919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.696045, 37.663265, 25.821609> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293671, -0.354531, -0.887730,
		-0.372330, -0.812912, 0.447822,
		-0.880413, 0.462042, 0.106726,
		32.431919, 37.801876, 25.853628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.485256, 37.026470, 25.765926>,  <33.048210, 37.478451, 25.778919>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.485256, 37.026470, 25.765926> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.327244, 37.373955, 25.646399>,  <32.232437, 37.582447, 25.574682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.327244, 37.373955, 25.646399>,  <32.485256, 37.026470, 25.765926>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.327244, 37.373955, 25.646399> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558082, -0.485302, -0.673072,
		-0.729723, -0.099118, 0.676521,
		-0.395031, 0.868710, -0.298820,
		32.208733, 37.634567, 25.556753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.179611, 36.775177, 25.201481>,  <32.485256, 37.026470, 25.765926>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.179611, 36.775177, 25.201481> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.105442, 37.167763, 25.182064>,  <32.060940, 37.403313, 25.170414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.105442, 37.167763, 25.182064>,  <32.179611, 36.775177, 25.201481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.105442, 37.167763, 25.182064> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468012, -0.131637, -0.873863,
		-0.864051, -0.139313, 0.483743,
		-0.185419, 0.981460, -0.048540,
		32.049816, 37.462200, 25.167501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.455431, 36.892731, 25.092680>,  <32.179611, 36.775177, 25.201481>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.455431, 36.892731, 25.092680> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.675465, 37.198227, 24.957561>,  <31.807486, 37.381523, 24.876492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.675465, 37.198227, 24.957561>,  <31.455431, 36.892731, 25.092680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.675465, 37.198227, 24.957561> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499026, -0.023714, -0.866262,
		-0.669611, 0.645086, 0.368082,
		0.550085, 0.763742, -0.337794,
		31.840490, 37.427349, 24.856224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.973619, 37.327061, 24.853310>,  <31.455431, 36.892731, 25.092680>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.973619, 37.327061, 24.853310> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.316092, 37.426502, 24.672138>,  <31.521576, 37.486168, 24.563435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.316092, 37.426502, 24.672138>,  <30.973619, 37.327061, 24.853310>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.316092, 37.426502, 24.672138> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481775, 0.067424, -0.873698,
		-0.186670, 0.966255, 0.177500,
		0.856182, 0.248608, -0.452931,
		31.572947, 37.501083, 24.536259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.765759, 37.741173, 24.347862>,  <30.973619, 37.327061, 24.853310>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.765759, 37.741173, 24.347862> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.140425, 37.661987, 24.232296>,  <31.365225, 37.614475, 24.162956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.140425, 37.661987, 24.232296>,  <30.765759, 37.741173, 24.347862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.140425, 37.661987, 24.232296> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301953, -0.038520, -0.952544,
		0.177441, 0.979452, -0.095856,
		0.936664, -0.197965, -0.288913,
		31.421423, 37.602596, 24.145622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.934507, 38.256699, 23.889471>,  <30.765759, 37.741173, 24.347862>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.934507, 38.256699, 23.889471> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.177177, 37.950836, 23.802526>,  <31.322781, 37.767319, 23.750360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.177177, 37.950836, 23.802526>,  <30.934507, 38.256699, 23.889471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.177177, 37.950836, 23.802526> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252443, 0.073961, -0.964781,
		0.753800, 0.640182, -0.148162,
		0.606677, -0.764655, -0.217361,
		31.359180, 37.721439, 23.737318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.345757, 38.579315, 23.472504>,  <30.934507, 38.256699, 23.889471>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.345757, 38.579315, 23.472504> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.359278, 38.182281, 23.425793>,  <31.367390, 37.944061, 23.397766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.359278, 38.182281, 23.425793>,  <31.345757, 38.579315, 23.472504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.359278, 38.182281, 23.425793> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093214, 0.119467, -0.988453,
		0.995072, 0.022526, 0.096561,
		0.033802, -0.992582, -0.116779,
		31.369419, 37.884506, 23.390759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.724941, 38.551243, 22.968506>,  <31.345757, 38.579315, 23.472504>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.724941, 38.551243, 22.968506> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.551256, 38.190922, 22.970266>,  <31.447046, 37.974731, 22.971323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.551256, 38.190922, 22.970266>,  <31.724941, 38.551243, 22.968506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.551256, 38.190922, 22.970266> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196001, 0.089705, -0.976492,
		0.879230, -0.424866, -0.215509,
		-0.434210, -0.900801, 0.004403,
		31.420994, 37.920681, 22.971588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.978388, 38.216606, 22.358740>,  <31.724941, 38.551243, 22.968506>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.978388, 38.216606, 22.358740> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.629581, 38.043823, 22.450829>,  <31.420298, 37.940155, 22.506083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.629581, 38.043823, 22.450829>,  <31.978388, 38.216606, 22.358740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.629581, 38.043823, 22.450829> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297577, 0.094397, -0.950019,
		0.388633, -0.896942, -0.210856,
		-0.872016, -0.431955, 0.230224,
		31.367977, 37.914238, 22.519896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.822105, 37.814968, 21.782335>,  <31.978388, 38.216606, 22.358740>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.822105, 37.814968, 21.782335> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.466606, 37.826691, 21.965321>,  <31.253307, 37.833725, 22.075111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.466606, 37.826691, 21.965321>,  <31.822105, 37.814968, 21.782335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.466606, 37.826691, 21.965321> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456265, -0.152748, -0.876636,
		0.044187, -0.987831, 0.149124,
		-0.888746, 0.029304, 0.457462,
		31.199982, 37.835484, 22.102560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.538691, 37.192116, 21.550215>,  <31.822105, 37.814968, 21.782335>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.538691, 37.192116, 21.550215> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.258226, 37.448189, 21.675779>,  <31.089947, 37.601833, 21.751118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.258226, 37.448189, 21.675779>,  <31.538691, 37.192116, 21.550215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.258226, 37.448189, 21.675779> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504634, -0.134541, -0.852785,
		-0.503703, -0.756351, 0.417392,
		-0.701162, 0.640181, 0.313912,
		31.047878, 37.640244, 21.769953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.971718, 36.862026, 21.536638>,  <31.538691, 37.192116, 21.550215>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.971718, 36.862026, 21.536638> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.901245, 37.248840, 21.463102>,  <30.858961, 37.480930, 21.418980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.901245, 37.248840, 21.463102>,  <30.971718, 36.862026, 21.536638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.901245, 37.248840, 21.463102> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030303, -0.192002, -0.980927,
		-0.983891, -0.167248, 0.063131,
		-0.176180, 0.967039, -0.183841,
		30.848391, 37.538952, 21.407949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.623489, 36.189518, 21.732906>,  <30.971718, 36.862026, 21.536638>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.623489, 36.189518, 21.732906> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.248652, 36.059128, 21.682961>,  <30.023748, 35.980892, 21.652992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.248652, 36.059128, 21.682961>,  <30.623489, 36.189518, 21.732906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.248652, 36.059128, 21.682961> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134299, 0.006505, 0.990919,
		-0.322206, 0.945355, -0.049874,
		-0.937095, -0.325979, -0.124865,
		29.967524, 35.961334, 21.645500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.206949, 36.521339, 22.095495>,  <30.623489, 36.189518, 21.732906>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.206949, 36.521339, 22.095495> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.978634, 36.195286, 22.055994>,  <29.841644, 35.999653, 22.032293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.978634, 36.195286, 22.055994>,  <30.206949, 36.521339, 22.095495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.978634, 36.195286, 22.055994> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226389, 0.040623, 0.973189,
		-0.789270, 0.577843, -0.207726,
		-0.570789, -0.815136, -0.098755,
		29.807398, 35.950745, 22.026367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.651331, 36.626709, 22.514748>,  <30.206949, 36.521339, 22.095495>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.651331, 36.626709, 22.514748> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.594982, 36.231110, 22.496710>,  <29.561172, 35.993748, 22.485888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.594982, 36.231110, 22.496710>,  <29.651331, 36.626709, 22.514748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.594982, 36.231110, 22.496710> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209149, -0.014791, 0.977772,
		-0.967684, 0.147173, -0.204765,
		-0.140873, -0.989000, -0.045094,
		29.552721, 35.934410, 22.483181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.019053, 36.526012, 22.887817>,  <29.651331, 36.626709, 22.514748>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.019053, 36.526012, 22.887817> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.211813, 36.175659, 22.878012>,  <29.327469, 35.965446, 22.872128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.211813, 36.175659, 22.878012>,  <29.019053, 36.526012, 22.887817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.211813, 36.175659, 22.878012> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290076, -0.185873, 0.938780,
		-0.826819, -0.445286, -0.343644,
		0.481900, -0.875884, -0.024516,
		29.356382, 35.912895, 22.870657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.502075, 36.058533, 23.128424>,  <29.019053, 36.526012, 22.887817>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.502075, 36.058533, 23.128424> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.848598, 35.864323, 23.175367>,  <29.056513, 35.747795, 23.203533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.848598, 35.864323, 23.175367>,  <28.502075, 36.058533, 23.128424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.848598, 35.864323, 23.175367> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249579, -0.217211, 0.943679,
		-0.432692, -0.846806, -0.309349,
		0.866307, -0.485530, 0.117359,
		29.108490, 35.718662, 23.210575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.340075, 35.395012, 23.432468>,  <28.502075, 36.058533, 23.128424>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.340075, 35.395012, 23.432468> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.719006, 35.479893, 23.528421>,  <28.946363, 35.530823, 23.585993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.719006, 35.479893, 23.528421>,  <28.340075, 35.395012, 23.432468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.719006, 35.479893, 23.528421> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209362, -0.156492, 0.965235,
		0.242364, -0.964614, -0.103822,
		0.947326, 0.212202, 0.239882,
		29.003204, 35.543552, 23.600386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.572624, 34.894913, 23.912302>,  <28.340075, 35.395012, 23.432468>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.572624, 34.894913, 23.912302> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.842741, 35.184662, 23.967833>,  <29.004810, 35.358509, 24.001150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.842741, 35.184662, 23.967833>,  <28.572624, 34.894913, 23.912302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.842741, 35.184662, 23.967833> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056788, -0.136602, 0.988997,
		0.735362, -0.675744, -0.051111,
		0.675290, 0.724369, 0.138826,
		29.045328, 35.401974, 24.009480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.059874, 34.616081, 24.440113>,  <28.572624, 34.894913, 23.912302>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.059874, 34.616081, 24.440113> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.136805, 35.008553, 24.447018>,  <29.182962, 35.244034, 24.451160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.136805, 35.008553, 24.447018>,  <29.059874, 34.616081, 24.440113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.136805, 35.008553, 24.447018> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011938, -0.015247, 0.999813,
		0.981258, -0.192498, 0.008781,
		0.192328, 0.981179, 0.017260,
		29.194504, 35.302906, 24.452196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.772463, 34.255341, 24.378967>,  <29.059874, 34.616081, 24.440113>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.772463, 34.255341, 24.378967> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.832834, 33.870346, 24.469151>,  <29.869057, 33.639347, 24.523260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.832834, 33.870346, 24.469151>,  <29.772463, 34.255341, 24.378967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.832834, 33.870346, 24.469151> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315564, -0.263050, -0.911715,
		0.936824, 0.066458, -0.343429,
		0.150929, -0.962491, 0.225460,
		29.878113, 33.581600, 24.536789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.278505, 34.018497, 23.906216>,  <29.772463, 34.255341, 24.378967>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.278505, 34.018497, 23.906216> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.114193, 33.671700, 24.019054>,  <30.015606, 33.463619, 24.086758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.114193, 33.671700, 24.019054>,  <30.278505, 34.018497, 23.906216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.114193, 33.671700, 24.019054> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252804, -0.188963, -0.948885,
		0.875984, -0.461100, -0.141557,
		-0.410782, -0.866995, 0.282096,
		29.990959, 33.411602, 24.103683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.518845, 33.445965, 23.337355>,  <30.278505, 34.018497, 23.906216>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.518845, 33.445965, 23.337355> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.209387, 33.289917, 23.537067>,  <30.023712, 33.196289, 23.656895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.209387, 33.289917, 23.537067>,  <30.518845, 33.445965, 23.337355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.209387, 33.289917, 23.537067> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391170, -0.325823, -0.860712,
		0.498461, -0.861187, 0.099465,
		-0.773642, -0.390124, 0.499281,
		29.977295, 33.172878, 23.686852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.570683, 32.634781, 23.350084>,  <30.518845, 33.445965, 23.337355>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.570683, 32.634781, 23.350084> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.189241, 32.746841, 23.394197>,  <29.960377, 32.814075, 23.420666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.189241, 32.746841, 23.394197>,  <30.570683, 32.634781, 23.350084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.189241, 32.746841, 23.394197> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240628, -0.489018, -0.838427,
		-0.180952, -0.826062, 0.533739,
		-0.953601, 0.280147, 0.110285,
		29.903162, 32.830887, 23.427282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.348106, 32.007565, 23.248110>,  <30.570683, 32.634781, 23.350084>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.348106, 32.007565, 23.248110> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.045616, 32.265968, 23.206558>,  <29.864122, 32.421013, 23.181627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.045616, 32.265968, 23.206558>,  <30.348106, 32.007565, 23.248110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.045616, 32.265968, 23.206558> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314485, -0.498077, -0.808096,
		-0.573783, -0.578431, 0.579819,
		-0.756223, 0.646016, -0.103880,
		29.818748, 32.459774, 23.175394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.757248, 31.656900, 23.233644>,  <30.348106, 32.007565, 23.248110>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.757248, 31.656900, 23.233644> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.656031, 31.990059, 23.036770>,  <29.595301, 32.189953, 22.918644>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.656031, 31.990059, 23.036770>,  <29.757248, 31.656900, 23.233644>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.656031, 31.990059, 23.036770> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304950, -0.551479, -0.776451,
		-0.918136, -0.046384, 0.393541,
		-0.253045, 0.832899, -0.492188,
		29.580116, 32.239929, 22.889114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.034111, 31.568708, 22.941555>,  <29.757248, 31.656900, 23.233644>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.034111, 31.568708, 22.941555> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.247305, 31.837255, 22.735567>,  <29.375221, 31.998383, 22.611975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.247305, 31.837255, 22.735567>,  <29.034111, 31.568708, 22.941555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.247305, 31.837255, 22.735567> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158260, -0.518779, -0.840132,
		-0.831191, 0.529278, -0.170252,
		0.532987, 0.671367, -0.514968,
		29.407202, 32.038666, 22.581078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.731756, 31.532701, 22.312656>,  <29.034111, 31.568708, 22.941555>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.731756, 31.532701, 22.312656> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.045994, 31.756439, 22.206844>,  <29.234537, 31.890682, 22.143356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.045994, 31.756439, 22.206844>,  <28.731756, 31.532701, 22.312656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.045994, 31.756439, 22.206844> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197850, -0.177994, -0.963937,
		-0.586255, 0.809601, -0.029166,
		0.785596, 0.559342, -0.264529,
		29.281673, 31.924242, 22.127485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.537060, 31.998987, 21.890520>,  <28.731756, 31.532701, 22.312656>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.537060, 31.998987, 21.890520> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.923281, 31.966455, 21.791655>,  <29.155014, 31.946936, 21.732336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.923281, 31.966455, 21.791655>,  <28.537060, 31.998987, 21.890520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.923281, 31.966455, 21.791655> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253691, -0.083115, -0.963708,
		0.057836, 0.993216, -0.100885,
		0.965555, -0.081331, -0.247163,
		29.212948, 31.942057, 21.717506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<33.108894, 35.521446, 36.866257> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.490868, 35.456398, 36.766926>,  <33.720051, 35.417370, 36.707329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.490868, 35.456398, 36.766926>,  <33.108894, 35.521446, 36.866257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.490868, 35.456398, 36.766926> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237059, 0.085670, -0.967710,
		0.178644, 0.982962, 0.043258,
		0.954929, -0.162621, -0.248325,
		33.777348, 35.407612, 36.692429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.328621, 36.070587, 36.387989>,  <33.108894, 35.521446, 36.866257>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.328621, 36.070587, 36.387989> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.621265, 35.813580, 36.296860>,  <33.796852, 35.659374, 36.242180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.621265, 35.813580, 36.296860>,  <33.328621, 36.070587, 36.387989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.621265, 35.813580, 36.296860> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148741, 0.175690, -0.973144,
		0.665294, 0.745853, 0.032968,
		0.731614, -0.642523, -0.227825,
		33.840748, 35.620823, 36.228512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.744953, 36.405079, 35.826855>,  <33.328621, 36.070587, 36.387989>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.744953, 36.405079, 35.826855> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.776661, 36.006405, 35.819614>,  <33.795685, 35.767200, 35.815269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.776661, 36.006405, 35.819614>,  <33.744953, 36.405079, 35.826855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.776661, 36.006405, 35.819614> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188731, 0.002826, -0.982025,
		0.978824, 0.081263, -0.187882,
		0.079272, -0.996689, -0.018103,
		33.800442, 35.707397, 35.814182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.203266, 36.216621, 35.197517>,  <33.744953, 36.405079, 35.826855>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.203266, 36.216621, 35.197517> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.965706, 35.904999, 35.277870>,  <33.823170, 35.718025, 35.326084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.965706, 35.904999, 35.277870>,  <34.203266, 36.216621, 35.197517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.965706, 35.904999, 35.277870> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239136, -0.067468, -0.968639,
		0.768176, -0.623316, -0.146230,
		-0.593902, -0.779055, 0.200884,
		33.787537, 35.671284, 35.338135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.218098, 35.828739, 34.615105>,  <34.203266, 36.216621, 35.197517>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.218098, 35.828739, 34.615105> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.925461, 35.627300, 34.798916>,  <33.749878, 35.506439, 34.909203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.925461, 35.627300, 34.798916>,  <34.218098, 35.828739, 34.615105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.925461, 35.627300, 34.798916> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270608, -0.404164, -0.873741,
		0.625737, -0.763572, 0.159405,
		-0.731590, -0.503596, 0.459530,
		33.705982, 35.476223, 34.936775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.237537, 35.147717, 34.249413>,  <34.218098, 35.828739, 34.615105>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.237537, 35.147717, 34.249413> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.874615, 35.205864, 34.407227>,  <33.656860, 35.240753, 34.501915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.874615, 35.205864, 34.407227>,  <34.237537, 35.147717, 34.249413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.874615, 35.205864, 34.407227> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420438, -0.323636, -0.847639,
		0.004462, -0.934948, 0.354758,
		-0.907310, 0.145372, 0.394531,
		33.602421, 35.249477, 34.525585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.855240, 34.575726, 34.022572>,  <34.237537, 35.147717, 34.249413>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.855240, 34.575726, 34.022572> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.579811, 34.832306, 34.157871>,  <33.414555, 34.986256, 34.239052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.579811, 34.832306, 34.157871>,  <33.855240, 34.575726, 34.022572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.579811, 34.832306, 34.157871> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645712, -0.330044, -0.688569,
		-0.330044, -0.692540, 0.641451,
		0.688569, -0.641451, -0.338252,
		33.373241, 35.024742, 34.259346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.204052, 34.165470, 34.193638>,  <33.855240, 34.575726, 34.022572>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.204052, 34.165470, 34.193638> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.053856, 34.530884, 34.131081>,  <32.963737, 34.750134, 34.093548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.053856, 34.530884, 34.131081>,  <33.204052, 34.165470, 34.193638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.053856, 34.530884, 34.131081> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609262, -0.370453, -0.701116,
		-0.698430, -0.167982, 0.695685,
		-0.375493, 0.913535, -0.156390,
		32.941208, 34.804943, 34.084164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.539192, 34.084881, 34.247601>,  <33.204052, 34.165470, 34.193638>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.539192, 34.084881, 34.247601> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.581142, 34.427139, 34.044868>,  <32.606312, 34.632496, 33.923229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.581142, 34.427139, 34.044868>,  <32.539192, 34.084881, 34.247601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.581142, 34.427139, 34.044868> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718161, -0.287378, -0.633766,
		-0.687929, 0.430447, 0.584353,
		0.104873, 0.855645, -0.506826,
		32.612606, 34.683834, 33.892822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.827589, 34.263992, 34.015987>,  <32.539192, 34.084881, 34.247601>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.827589, 34.263992, 34.015987> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.062119, 34.492279, 33.786026>,  <32.202835, 34.629250, 33.648048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.062119, 34.492279, 33.786026>,  <31.827589, 34.263992, 34.015987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.062119, 34.492279, 33.786026> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593951, -0.179725, -0.784169,
		-0.550862, 0.801237, 0.233602,
		0.586321, 0.570717, -0.574899,
		32.238014, 34.663494, 33.613556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.363293, 34.845486, 33.715931>,  <31.827589, 34.263992, 34.015987>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.363293, 34.845486, 33.715931> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.674156, 34.780388, 33.472771>,  <31.860674, 34.741329, 33.326874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.674156, 34.780388, 33.472771>,  <31.363293, 34.845486, 33.715931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.674156, 34.780388, 33.472771> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621662, -0.048446, -0.781786,
		0.097782, 0.985478, -0.138822,
		0.777158, -0.162745, -0.607897,
		31.907303, 34.731564, 33.290401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.169744, 35.094345, 33.083923>,  <31.363293, 34.845486, 33.715931>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.169744, 35.094345, 33.083923> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.485998, 34.875851, 32.973270>,  <31.675751, 34.744755, 32.906879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.485998, 34.875851, 32.973270>,  <31.169744, 35.094345, 33.083923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.485998, 34.875851, 32.973270> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501287, -0.318046, -0.804710,
		0.351582, 0.774901, -0.525279,
		0.790634, -0.546237, -0.276628,
		31.723188, 34.711979, 32.890282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.208080, 35.829449, 32.950584>,  <31.169744, 35.094345, 33.083923>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.208080, 35.829449, 32.950584> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.948126, 36.131596, 32.916943>,  <30.792154, 36.312881, 32.896759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.948126, 36.131596, 32.916943>,  <31.208080, 35.829449, 32.950584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.948126, 36.131596, 32.916943> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339085, 0.387199, 0.857379,
		0.680200, 0.528678, -0.507768,
		-0.649884, 0.755365, -0.084105,
		30.753160, 36.358204, 32.891712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.590307, 36.442207, 32.893974>,  <31.208080, 35.829449, 32.950584>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.590307, 36.442207, 32.893974> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.232090, 36.574120, 33.013474>,  <31.017160, 36.653267, 33.085175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.232090, 36.574120, 33.013474>,  <31.590307, 36.442207, 32.893974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.232090, 36.574120, 33.013474> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438753, 0.542509, 0.716366,
		0.074166, 0.772613, -0.630530,
		-0.895542, 0.329777, 0.298750,
		30.963427, 36.673054, 33.103100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.560518, 37.184624, 32.897144>,  <31.590307, 36.442207, 32.893974>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.560518, 37.184624, 32.897144> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.279358, 37.111694, 33.172153>,  <31.110661, 37.067936, 33.337158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.279358, 37.111694, 33.172153>,  <31.560518, 37.184624, 32.897144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.279358, 37.111694, 33.172153> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351441, 0.751342, 0.558547,
		-0.618399, 0.634228, -0.464045,
		-0.702902, -0.182320, 0.687523,
		31.068487, 37.056999, 33.378410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.389332, 37.834751, 33.082867>,  <31.560518, 37.184624, 32.897144>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.389332, 37.834751, 33.082867> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.242579, 37.589676, 33.362869>,  <31.154526, 37.442631, 33.530872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.242579, 37.589676, 33.362869>,  <31.389332, 37.834751, 33.082867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.242579, 37.589676, 33.362869> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275118, 0.647359, 0.710799,
		-0.888654, 0.453365, -0.068943,
		-0.366883, -0.612688, 0.700008,
		31.132513, 37.405869, 33.572872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.092045, 38.267788, 33.474560>,  <31.389332, 37.834751, 33.082867>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.092045, 38.267788, 33.474560> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.137005, 37.946465, 33.708508>,  <31.163980, 37.753670, 33.848877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.137005, 37.946465, 33.708508>,  <31.092045, 38.267788, 33.474560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.137005, 37.946465, 33.708508> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278926, 0.590439, 0.757352,
		-0.953712, 0.078006, 0.290429,
		0.112402, -0.803304, 0.584866,
		31.170725, 37.705475, 33.883968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.001020, 38.514801, 34.124798>,  <31.092045, 38.267788, 33.474560>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.001020, 38.514801, 34.124798> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.177181, 38.165501, 34.208206>,  <31.282877, 37.955921, 34.258251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.177181, 38.165501, 34.208206>,  <31.001020, 38.514801, 34.124798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.177181, 38.165501, 34.208206> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469840, 0.422081, 0.775306,
		-0.765047, -0.243476, 0.596173,
		0.440402, -0.873251, 0.208517,
		31.309301, 37.903526, 34.270760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.065483, 38.525986, 34.882710>,  <31.001020, 38.514801, 34.124798>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.065483, 38.525986, 34.882710> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.327168, 38.237949, 34.790207>,  <31.484179, 38.065128, 34.734707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.327168, 38.237949, 34.790207>,  <31.065483, 38.525986, 34.882710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.327168, 38.237949, 34.790207> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640633, 0.365088, 0.675500,
		-0.401990, -0.590072, 0.700157,
		0.654212, -0.720088, -0.231257,
		31.523432, 38.021923, 34.720829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.381376, 38.458736, 35.477901>,  <31.065483, 38.525986, 34.882710>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.381376, 38.458736, 35.477901> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.615608, 38.265705, 35.217373>,  <31.756147, 38.149887, 35.061054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.615608, 38.265705, 35.217373>,  <31.381376, 38.458736, 35.477901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.615608, 38.265705, 35.217373> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794688, 0.183265, 0.578692,
		-0.159898, -0.856467, 0.490813,
		0.585580, -0.482575, -0.651321,
		31.791283, 38.120934, 35.021976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.672380, 37.913090, 35.825417>,  <31.381376, 38.458736, 35.477901>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.672380, 37.913090, 35.825417> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.927214, 37.997269, 35.528812>,  <32.080112, 38.047775, 35.350849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.927214, 37.997269, 35.528812>,  <31.672380, 37.913090, 35.825417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.927214, 37.997269, 35.528812> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714657, 0.199145, 0.670527,
		0.288781, -0.957106, -0.023527,
		0.637080, 0.210449, -0.741511,
		32.118340, 38.060402, 35.306358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.277843, 37.477692, 35.946335>,  <31.672380, 37.913090, 35.825417>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.277843, 37.477692, 35.946335> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.377594, 37.804787, 35.738831>,  <32.437447, 38.001045, 35.614330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.377594, 37.804787, 35.738831>,  <32.277843, 37.477692, 35.946335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.377594, 37.804787, 35.738831> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699102, 0.218664, 0.680766,
		0.670124, -0.532434, -0.517154,
		0.249380, 0.817741, -0.518757,
		32.452408, 38.050110, 35.583202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.949955, 37.391041, 35.910881>,  <32.277843, 37.477692, 35.946335>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.949955, 37.391041, 35.910881> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.889221, 37.776230, 35.821770>,  <32.852783, 38.007343, 35.768303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.889221, 37.776230, 35.821770>,  <32.949955, 37.391041, 35.910881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.889221, 37.776230, 35.821770> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796281, 0.252701, 0.549617,
		0.585562, -0.093944, -0.805165,
		-0.151833, 0.962973, -0.222778,
		32.843670, 38.065121, 35.754936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.599487, 37.658024, 35.561626>,  <32.949955, 37.391041, 35.910881>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.599487, 37.658024, 35.561626> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.407825, 37.980633, 35.700153>,  <33.292828, 38.174198, 35.783272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.407825, 37.980633, 35.700153>,  <33.599487, 37.658024, 35.561626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.407825, 37.980633, 35.700153> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865153, 0.367414, 0.341347,
		0.148060, 0.463178, -0.873810,
		-0.479154, 0.806519, 0.346321,
		33.264080, 38.222588, 35.804050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.921200, 38.351505, 35.266567>,  <33.599487, 37.658024, 35.561626>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.921200, 38.351505, 35.266567> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.715099, 38.458500, 35.592258>,  <33.591438, 38.522697, 35.787674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.715099, 38.458500, 35.592258>,  <33.921200, 38.351505, 35.266567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.715099, 38.458500, 35.592258> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790538, 0.515268, 0.330982,
		-0.331012, 0.814217, -0.476951,
		-0.515248, 0.267488, 0.814229,
		33.560524, 38.538746, 35.836529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.069790, 39.074604, 35.396255>,  <33.921200, 38.351505, 35.266567>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.069790, 39.074604, 35.396255> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.931076, 38.950417, 35.750282>,  <33.847847, 38.875904, 35.962700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.931076, 38.950417, 35.750282>,  <34.069790, 39.074604, 35.396255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.931076, 38.950417, 35.750282> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749044, 0.476260, 0.460554,
		-0.564510, 0.822670, 0.067393,
		-0.346787, -0.310468, 0.885070,
		33.827042, 38.857277, 36.015804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.863869, 39.652248, 35.917366>,  <34.069790, 39.074604, 35.396255>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.863869, 39.652248, 35.917366> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.991806, 39.314152, 36.088608>,  <34.068569, 39.111294, 36.191353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.991806, 39.314152, 36.088608>,  <33.863869, 39.652248, 35.917366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.991806, 39.314152, 36.088608> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696488, 0.516075, 0.498568,
		-0.642342, 0.138705, 0.753762,
		0.319844, -0.845238, 0.428104,
		34.087761, 39.060581, 36.217037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.334160, 40.171597, 36.072464>,  <33.863869, 39.652248, 35.917366>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.334160, 40.171597, 36.072464> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.533276, 40.461323, 35.881649>,  <34.652744, 40.635159, 35.767159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.533276, 40.461323, 35.881649>,  <34.334160, 40.171597, 36.072464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.533276, 40.461323, 35.881649> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514801, -0.195887, -0.834630,
		-0.697985, 0.661052, 0.275369,
		0.497792, 0.724320, -0.477036,
		34.682613, 40.678619, 35.738537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.891701, 40.520477, 35.547863>,  <34.334160, 40.171597, 36.072464>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.891701, 40.520477, 35.547863> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.269497, 40.578819, 35.430107>,  <34.496174, 40.613823, 35.359451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.269497, 40.578819, 35.430107>,  <33.891701, 40.520477, 35.547863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.269497, 40.578819, 35.430107> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283178, -0.092941, -0.954553,
		-0.166586, 0.984931, -0.046479,
		0.944489, 0.145854, -0.294394,
		34.552845, 40.622574, 35.341789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.823746, 40.978085, 34.968216>,  <33.891701, 40.520477, 35.547863>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.823746, 40.978085, 34.968216> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.175365, 40.788132, 34.951424>,  <34.386337, 40.674160, 34.941349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.175365, 40.788132, 34.951424>,  <33.823746, 40.978085, 34.968216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.175365, 40.788132, 34.951424> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221738, -0.329325, -0.917811,
		0.422028, 0.816108, -0.394792,
		0.879048, -0.474882, -0.041978,
		34.439079, 40.645668, 34.938831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.197289, 41.271114, 34.412846>,  <33.823746, 40.978085, 34.968216>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.197289, 41.271114, 34.412846> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.368946, 40.912689, 34.458282>,  <34.471939, 40.697632, 34.485546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.368946, 40.912689, 34.458282>,  <34.197289, 41.271114, 34.412846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.368946, 40.912689, 34.458282> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176116, -0.206358, -0.962496,
		0.885900, 0.393044, -0.246369,
		0.429144, -0.896065, 0.113592,
		34.497688, 40.643871, 34.492359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.391178, 41.204277, 33.785252>,  <34.197289, 41.271114, 34.412846>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.391178, 41.204277, 33.785252> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.417213, 40.833302, 33.932560>,  <34.432835, 40.610718, 34.020947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.417213, 40.833302, 33.932560>,  <34.391178, 41.204277, 33.785252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.417213, 40.833302, 33.932560> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169186, -0.373970, -0.911879,
		0.983433, -0.002956, -0.181249,
		0.065087, -0.927436, 0.368274,
		34.436741, 40.555069, 34.043041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.938595, 40.836636, 33.412991>,  <34.391178, 41.204277, 33.785252>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.938595, 40.836636, 33.412991> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.657574, 40.600647, 33.572166>,  <34.488960, 40.459053, 33.667671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.657574, 40.600647, 33.572166>,  <34.938595, 40.836636, 33.412991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.657574, 40.600647, 33.572166> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267374, -0.299394, -0.915901,
		0.659497, -0.749865, 0.052596,
		-0.702549, -0.589971, 0.397943,
		34.446808, 40.423656, 33.691551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.060539, 40.195324, 33.133305>,  <34.938595, 40.836636, 33.412991>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.060539, 40.195324, 33.133305> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.678024, 40.199661, 33.250191>,  <34.448513, 40.202263, 33.320324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.678024, 40.199661, 33.250191>,  <35.060539, 40.195324, 33.133305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.678024, 40.199661, 33.250191> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290869, -0.137955, -0.946765,
		0.030052, -0.990379, 0.135077,
		-0.956291, 0.010837, 0.292216,
		34.391136, 40.202911, 33.337856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.794827, 39.506405, 32.939690>,  <35.060539, 40.195324, 33.133305>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.794827, 39.506405, 32.939690> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.474422, 39.740429, 32.990440>,  <34.282181, 39.880844, 33.020889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.474422, 39.740429, 32.990440>,  <34.794827, 39.506405, 32.939690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.474422, 39.740429, 32.990440> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304716, -0.216021, -0.927622,
		-0.515304, -0.781692, 0.351311,
		-0.801005, 0.585058, 0.126878,
		34.234119, 39.915947, 33.028503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.198162, 39.152706, 32.655895>,  <34.794827, 39.506405, 32.939690>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.198162, 39.152706, 32.655895> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.111076, 39.543110, 32.654846>,  <34.058826, 39.777351, 32.654217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.111076, 39.543110, 32.654846>,  <34.198162, 39.152706, 32.655895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.111076, 39.543110, 32.654846> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318998, -0.073695, -0.944886,
		-0.922410, -0.204879, 0.327389,
		-0.217714, 0.976009, -0.002622,
		34.045761, 39.835911, 32.654060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.621243, 39.138588, 32.489689>,  <34.198162, 39.152706, 32.655895>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.621243, 39.138588, 32.489689> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.700279, 39.517357, 32.388264>,  <33.747700, 39.744617, 32.327408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.700279, 39.517357, 32.388264>,  <33.621243, 39.138588, 32.489689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.700279, 39.517357, 32.388264> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509766, -0.121682, -0.851664,
		-0.837315, 0.297539, 0.458665,
		0.197592, 0.946923, -0.253561,
		33.759556, 39.801434, 32.312195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.052238, 39.402622, 32.161121>,  <33.621243, 39.138588, 32.489689>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.052238, 39.402622, 32.161121> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.319164, 39.686241, 32.069965>,  <33.479321, 39.856415, 32.015270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.319164, 39.686241, 32.069965>,  <33.052238, 39.402622, 32.161121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.319164, 39.686241, 32.069965> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396710, 0.079436, -0.914501,
		-0.630324, 0.700669, 0.334296,
		0.667318, 0.709051, -0.227892,
		33.519360, 39.898956, 32.001598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.745155, 39.845093, 31.846067>,  <33.052238, 39.402622, 32.161121>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.745155, 39.845093, 31.846067> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.121334, 39.913261, 31.728415>,  <33.347042, 39.954163, 31.657824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.121334, 39.913261, 31.728415>,  <32.745155, 39.845093, 31.846067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.121334, 39.913261, 31.728415> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286745, -0.067013, -0.955660,
		-0.182580, 0.983089, -0.014154,
		0.940448, 0.170426, -0.294131,
		33.403469, 39.964390, 31.640175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.671478, 40.187580, 31.253212>,  <32.745155, 39.845093, 31.846067>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.671478, 40.187580, 31.253212> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.056114, 40.086922, 31.209345>,  <33.286896, 40.026527, 31.183025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.056114, 40.086922, 31.209345>,  <32.671478, 40.187580, 31.253212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.056114, 40.086922, 31.209345> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094192, 0.072775, -0.992890,
		0.257836, 0.965080, 0.046277,
		0.961586, -0.251644, -0.109667,
		33.344589, 40.011429, 31.176445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.979664, 40.709396, 30.799501>,  <32.671478, 40.187580, 31.253212>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.979664, 40.709396, 30.799501> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.208885, 40.381691, 30.791393>,  <33.346416, 40.185066, 30.786530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.208885, 40.381691, 30.791393>,  <32.979664, 40.709396, 30.799501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.208885, 40.381691, 30.791393> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157116, -0.085556, -0.983867,
		0.804316, 0.566994, -0.177748,
		0.573054, -0.819267, -0.020269,
		33.380802, 40.135910, 30.785313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.364559, 40.765297, 30.170748>,  <32.979664, 40.709396, 30.799501>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.364559, 40.765297, 30.170748> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.369026, 40.381874, 30.284620>,  <33.371708, 40.151821, 30.352943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.369026, 40.381874, 30.284620>,  <33.364559, 40.765297, 30.170748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.369026, 40.381874, 30.284620> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105817, -0.284232, -0.952898,
		0.994323, -0.019480, -0.104607,
		0.011170, -0.958557, 0.284680,
		33.372375, 40.094307, 30.370024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.834789, 40.439632, 29.733492>,  <33.364559, 40.765297, 30.170748>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.834789, 40.439632, 29.733492> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.592712, 40.158333, 29.882721>,  <33.447468, 39.989552, 29.972258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.592712, 40.158333, 29.882721>,  <33.834789, 40.439632, 29.733492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.592712, 40.158333, 29.882721> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120436, -0.382359, -0.916131,
		0.786919, -0.599364, 0.146703,
		-0.605190, -0.703253, 0.373071,
		33.411156, 39.947357, 29.994642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.021519, 39.904667, 29.378969>,  <33.834789, 40.439632, 29.733492>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.021519, 39.904667, 29.378969> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.669655, 39.783443, 29.525587>,  <33.458538, 39.710709, 29.613558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.669655, 39.783443, 29.525587>,  <34.021519, 39.904667, 29.378969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.669655, 39.783443, 29.525587> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232960, -0.397350, -0.887605,
		0.414642, -0.866180, 0.278933,
		-0.879660, -0.303058, 0.366543,
		33.405758, 39.692528, 29.635550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.870171, 39.202667, 29.134861>,  <34.021519, 39.904667, 29.378969>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.870171, 39.202667, 29.134861> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.500839, 39.309441, 29.245289>,  <33.279240, 39.373505, 29.311544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.500839, 39.309441, 29.245289>,  <33.870171, 39.202667, 29.134861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.500839, 39.309441, 29.245289> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376538, -0.488138, -0.787363,
		-0.075415, -0.830943, 0.551222,
		-0.923326, 0.266935, 0.276068,
		33.223843, 39.389523, 29.328110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.401405, 38.516205, 29.092308>,  <33.870171, 39.202667, 29.134861>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.401405, 38.516205, 29.092308> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.185425, 38.851799, 29.065346>,  <33.055836, 39.053158, 29.049168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.185425, 38.851799, 29.065346>,  <33.401405, 38.516205, 29.092308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.185425, 38.851799, 29.065346> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430176, -0.343911, -0.834670,
		-0.723462, -0.421688, 0.546610,
		-0.539956, 0.838990, -0.067407,
		33.023438, 39.103497, 29.045124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.847649, 38.309502, 28.888416>,  <33.401405, 38.516205, 29.092308>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.847649, 38.309502, 28.888416> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.786915, 38.695751, 28.804026>,  <32.750473, 38.927502, 28.753391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.786915, 38.695751, 28.804026>,  <32.847649, 38.309502, 28.888416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.786915, 38.695751, 28.804026> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464224, -0.258112, -0.847275,
		-0.872607, -0.030704, 0.487457,
		-0.151833, 0.965627, -0.210977,
		32.741364, 38.985439, 28.740732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.084301, 38.390377, 28.763580>,  <32.847649, 38.309502, 28.888416>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.084301, 38.390377, 28.763580> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.301880, 38.670952, 28.579361>,  <32.432426, 38.839298, 28.468830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.301880, 38.670952, 28.579361>,  <32.084301, 38.390377, 28.763580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.301880, 38.670952, 28.579361> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441357, -0.227633, -0.867979,
		-0.713668, 0.675403, 0.185762,
		0.543950, 0.701436, -0.460549,
		32.465065, 38.881382, 28.441196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.591324, 38.711308, 28.367456>,  <32.084301, 38.390377, 28.763580>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.591324, 38.711308, 28.367456> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.941643, 38.830608, 28.215654>,  <32.151833, 38.902191, 28.124573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.941643, 38.830608, 28.215654>,  <31.591324, 38.711308, 28.367456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.941643, 38.830608, 28.215654> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295019, -0.291520, -0.909934,
		-0.382024, 0.908879, -0.167321,
		0.875797, 0.298254, -0.379505,
		32.204384, 38.920086, 28.101803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.494133, 39.107292, 27.730619>,  <31.591324, 38.711308, 28.367456>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.494133, 39.107292, 27.730619> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.874464, 38.988998, 27.693819>,  <32.102665, 38.918022, 27.671740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.874464, 38.988998, 27.693819>,  <31.494133, 39.107292, 27.730619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.874464, 38.988998, 27.693819> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195891, -0.344155, -0.918251,
		0.239896, 0.891122, -0.385165,
		0.950829, -0.295735, -0.092001,
		32.159714, 38.900276, 27.666218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.693346, 39.327385, 27.039696>,  <31.494133, 39.107292, 27.730619>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.693346, 39.327385, 27.039696> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.982178, 39.064423, 27.125872>,  <32.155476, 38.906643, 27.177578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.982178, 39.064423, 27.125872>,  <31.693346, 39.327385, 27.039696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.982178, 39.064423, 27.125872> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137537, -0.441614, -0.886601,
		0.678000, 0.610565, -0.409299,
		0.722080, -0.657409, 0.215439,
		32.198803, 38.867199, 27.190504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.328613, 39.347672, 26.451006>,  <31.693346, 39.327385, 27.039696>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.328613, 39.347672, 26.451006> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.322094, 39.005882, 26.658705>,  <32.318180, 38.800808, 26.783323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.322094, 39.005882, 26.658705>,  <32.328613, 39.347672, 26.451006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.322094, 39.005882, 26.658705> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184623, -0.507813, -0.841451,
		0.982674, -0.109583, -0.149476,
		-0.016303, -0.854469, 0.519246,
		32.317204, 38.749542, 26.814478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.886467, 38.967625, 26.183912>,  <32.328613, 39.347672, 26.451006>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.886467, 38.967625, 26.183912> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.643002, 38.704247, 26.360994>,  <32.496922, 38.546219, 26.467243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.643002, 38.704247, 26.360994>,  <32.886467, 38.967625, 26.183912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.643002, 38.704247, 26.360994> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098265, -0.616222, -0.781418,
		0.787323, -0.432115, 0.439772,
		-0.608660, -0.658443, 0.442704,
		32.460403, 38.506714, 26.493805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.180798, 38.250919, 26.111650>,  <32.886467, 38.967625, 26.183912>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.180798, 38.250919, 26.111650> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.787094, 38.203751, 26.164307>,  <32.550873, 38.175449, 26.195900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.787094, 38.203751, 26.164307>,  <33.180798, 38.250919, 26.111650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.787094, 38.203751, 26.164307> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007710, -0.715487, -0.698583,
		0.176565, -0.688601, 0.703316,
		-0.984259, -0.117923, 0.131639,
		32.491817, 38.168373, 26.203798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.561382, 37.559517, 26.273321>,  <33.180798, 38.250919, 26.111650>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.561382, 37.559517, 26.273321> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.939163, 37.469204, 26.177794>,  <34.165833, 37.415016, 26.120478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.939163, 37.469204, 26.177794>,  <33.561382, 37.559517, 26.273321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.939163, 37.469204, 26.177794> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321835, 0.488170, 0.811241,
		-0.066578, -0.843038, 0.533717,
		0.944452, -0.225780, -0.238818,
		34.222500, 37.401470, 26.106148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.886433, 37.310246, 26.888643>,  <33.561382, 37.559517, 26.273321>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.886433, 37.310246, 26.888643> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.189114, 37.410007, 26.646915>,  <34.370720, 37.469864, 26.501879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.189114, 37.410007, 26.646915>,  <33.886433, 37.310246, 26.888643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.189114, 37.410007, 26.646915> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426107, 0.512900, 0.745229,
		0.495813, -0.821422, 0.281843,
		0.756705, 0.249398, -0.604316,
		34.416122, 37.484829, 26.465620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.526043, 37.042744, 27.169998>,  <33.886433, 37.310246, 26.888643>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.526043, 37.042744, 27.169998> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.622150, 37.347267, 26.929104>,  <34.679813, 37.529980, 26.784567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.622150, 37.347267, 26.929104>,  <34.526043, 37.042744, 27.169998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.622150, 37.347267, 26.929104> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541283, 0.409924, 0.734149,
		0.805782, -0.502372, -0.313590,
		0.240268, 0.761305, -0.602234,
		34.694229, 37.575657, 26.748434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.208782, 37.002689, 27.129723>,  <34.526043, 37.042744, 27.169998>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.208782, 37.002689, 27.129723> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.113365, 37.380123, 27.037865>,  <35.056114, 37.606583, 26.982750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.113365, 37.380123, 27.037865>,  <35.208782, 37.002689, 27.129723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.113365, 37.380123, 27.037865> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523282, 0.324098, 0.788122,
		0.818090, 0.067836, -0.571075,
		-0.238547, 0.943588, -0.229644,
		35.041801, 37.663200, 26.968971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.821396, 37.324036, 27.082298>,  <35.208782, 37.002689, 27.129723>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.821396, 37.324036, 27.082298> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.569153, 37.629269, 27.138910>,  <35.417805, 37.812408, 27.172878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.569153, 37.629269, 27.138910>,  <35.821396, 37.324036, 27.082298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.569153, 37.629269, 27.138910> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612250, 0.377067, 0.694961,
		0.476948, 0.524902, -0.704981,
		-0.630611, 0.763085, 0.141530,
		35.379971, 37.858192, 27.181370>
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
