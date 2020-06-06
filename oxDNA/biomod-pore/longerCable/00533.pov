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
	<24.686352, 34.655247, 35.205772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.475506, 34.993984, 35.177456>,  <24.348999, 35.197227, 35.160465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.475506, 34.993984, 35.177456>,  <24.686352, 34.655247, 35.205772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.475506, 34.993984, 35.177456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436703, -0.198479, 0.877438,
		0.728999, 0.493425, 0.474439,
		-0.527116, 0.846840, -0.070789,
		24.317371, 35.248035, 35.156219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.833216, 35.026440, 35.769573>,  <24.686352, 34.655247, 35.205772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.833216, 35.026440, 35.769573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.465799, 35.050644, 35.613308>,  <24.245350, 35.065166, 35.519547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.465799, 35.050644, 35.613308>,  <24.833216, 35.026440, 35.769573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.465799, 35.050644, 35.613308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391815, -0.270758, 0.879301,
		-0.052568, 0.960744, 0.272412,
		-0.918541, 0.060512, -0.390667,
		24.190237, 35.068798, 35.496109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.721361, 35.778465, 35.837776>,  <24.833216, 35.026440, 35.769573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.721361, 35.778465, 35.837776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.822887, 36.153961, 35.931019>,  <24.883804, 36.379261, 35.986965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.822887, 36.153961, 35.931019>,  <24.721361, 35.778465, 35.837776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.822887, 36.153961, 35.931019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525686, -0.336178, 0.781433,
		0.811930, -0.075799, -0.578812,
		0.253816, 0.938743, 0.233107,
		24.899033, 36.435585, 36.000950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.342192, 35.671036, 35.981262>,  <24.721361, 35.778465, 35.837776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.342192, 35.671036, 35.981262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.215914, 36.005539, 36.160599>,  <25.140146, 36.206242, 36.268200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.215914, 36.005539, 36.160599>,  <25.342192, 35.671036, 35.981262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.215914, 36.005539, 36.160599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413348, -0.304115, 0.858288,
		0.854096, 0.456281, -0.249656,
		-0.315697, 0.836254, 0.448346,
		25.121204, 36.256416, 36.295101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.905117, 35.917629, 36.263580>,  <25.342192, 35.671036, 35.981262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.905117, 35.917629, 36.263580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.612837, 36.069176, 36.490749>,  <25.437469, 36.160103, 36.627052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.612837, 36.069176, 36.490749>,  <25.905117, 35.917629, 36.263580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.612837, 36.069176, 36.490749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502813, -0.264049, 0.823078,
		0.461799, 0.886981, 0.002440,
		-0.730699, 0.378869, 0.567924,
		25.393627, 36.182835, 36.661125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.218369, 36.226803, 36.780319>,  <25.905117, 35.917629, 36.263580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.218369, 36.226803, 36.780319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.854053, 36.145569, 36.924110>,  <25.635464, 36.096828, 37.010384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.854053, 36.145569, 36.924110>,  <26.218369, 36.226803, 36.780319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.854053, 36.145569, 36.924110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412870, -0.451840, 0.790809,
		0.001826, 0.868676, 0.495377,
		-0.910788, -0.203083, 0.359475,
		25.580816, 36.084644, 37.031952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.280970, 36.360260, 37.491608>,  <26.218369, 36.226803, 36.780319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.280970, 36.360260, 37.491608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.976862, 36.104488, 37.445786>,  <25.794397, 35.951027, 37.418293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.976862, 36.104488, 37.445786>,  <26.280970, 36.360260, 37.491608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.976862, 36.104488, 37.445786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373778, -0.574824, 0.727919,
		-0.531298, 0.510599, 0.676026,
		-0.760271, -0.639426, -0.114552,
		25.748781, 35.912659, 37.411419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.769184, 36.305569, 38.116848>,  <26.280970, 36.360260, 37.491608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.769184, 36.305569, 38.116848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.815151, 35.973225, 37.899052>,  <25.842731, 35.773819, 37.768375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.815151, 35.973225, 37.899052>,  <25.769184, 36.305569, 38.116848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.815151, 35.973225, 37.899052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416655, -0.457263, 0.785690,
		-0.901772, -0.317153, 0.293633,
		0.114916, -0.830857, -0.544491,
		25.849627, 35.723969, 37.735703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.586613, 35.697132, 38.424786>,  <25.769184, 36.305569, 38.116848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.586613, 35.697132, 38.424786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.826511, 35.527645, 38.153267>,  <25.970451, 35.425953, 37.990356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.826511, 35.527645, 38.153267>,  <25.586613, 35.697132, 38.424786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.826511, 35.527645, 38.153267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371366, -0.604025, 0.705153,
		-0.708796, -0.674996, -0.204909,
		0.599746, -0.423714, -0.678802,
		26.006435, 35.400532, 37.949627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.479738, 35.012470, 38.486008>,  <25.586613, 35.697132, 38.424786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.479738, 35.012470, 38.486008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.837671, 35.048347, 38.311089>,  <26.052431, 35.069874, 38.206139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.837671, 35.048347, 38.311089>,  <25.479738, 35.012470, 38.486008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.837671, 35.048347, 38.311089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380063, -0.666897, 0.640937,
		-0.234144, -0.739732, -0.630851,
		0.894835, 0.089692, -0.437294,
		26.106121, 35.075256, 38.179901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.741241, 34.379646, 38.317223>,  <25.479738, 35.012470, 38.486008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.741241, 34.379646, 38.317223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.064041, 34.613327, 38.351753>,  <26.257721, 34.753536, 38.372471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.064041, 34.613327, 38.351753>,  <25.741241, 34.379646, 38.317223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.064041, 34.613327, 38.351753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403621, -0.652347, 0.641509,
		0.431091, -0.482853, -0.762243,
		0.807001, 0.584206, 0.086331,
		26.306141, 34.788589, 38.377651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.328730, 34.056690, 38.218639>,  <25.741241, 34.379646, 38.317223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.328730, 34.056690, 38.218639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.372299, 34.365284, 38.469379>,  <26.398441, 34.550442, 38.619823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.372299, 34.365284, 38.469379>,  <26.328730, 34.056690, 38.218639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.372299, 34.365284, 38.469379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127355, -0.636236, 0.760911,
		0.985858, -0.003048, -0.167554,
		0.108923, 0.771489, 0.626850,
		26.404976, 34.596729, 38.657433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.749229, 33.809845, 38.830273>,  <26.328730, 34.056690, 38.218639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.749229, 33.809845, 38.830273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.594400, 34.160236, 38.945396>,  <26.501503, 34.370472, 39.014469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.594400, 34.160236, 38.945396>,  <26.749229, 33.809845, 38.830273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.594400, 34.160236, 38.945396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208520, -0.387217, 0.898099,
		0.898161, 0.287617, 0.332541,
		-0.387074, 0.875979, 0.287809,
		26.478279, 34.423031, 39.031738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.642082, 34.300701, 39.498962>,  <26.749229, 33.809845, 38.830273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.642082, 34.300701, 39.498962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.998882, 34.407219, 39.352856>,  <27.212963, 34.471130, 39.265190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.998882, 34.407219, 39.352856>,  <26.642082, 34.300701, 39.498962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.998882, 34.407219, 39.352856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442524, 0.349555, -0.825823,
		-0.092232, 0.898275, 0.429646,
		0.892001, 0.266296, -0.365268,
		27.266483, 34.487106, 39.243275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.569077, 35.069523, 39.337132>,  <26.642082, 34.300701, 39.498962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.569077, 35.069523, 39.337132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.814171, 34.871815, 39.090473>,  <26.961227, 34.753189, 38.942478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.814171, 34.871815, 39.090473>,  <26.569077, 35.069523, 39.337132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.814171, 34.871815, 39.090473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459799, 0.411657, -0.786844,
		0.642762, 0.765659, 0.024970,
		0.612734, -0.494272, -0.616646,
		26.997992, 34.723534, 38.905479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.937445, 35.603985, 38.956882>,  <26.569077, 35.069523, 39.337132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.937445, 35.603985, 38.956882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.924812, 35.251732, 38.767784>,  <26.917233, 35.040379, 38.654324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.924812, 35.251732, 38.767784>,  <26.937445, 35.603985, 38.956882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.924812, 35.251732, 38.767784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415560, 0.441735, -0.795097,
		0.909017, 0.171345, -0.379906,
		-0.031582, -0.880631, -0.472749,
		26.915337, 34.987541, 38.625961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.301548, 35.621132, 38.238674>,  <26.937445, 35.603985, 38.956882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.301548, 35.621132, 38.238674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.008177, 35.351791, 38.275948>,  <26.832153, 35.190186, 38.298309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.008177, 35.351791, 38.275948>,  <27.301548, 35.621132, 38.238674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.008177, 35.351791, 38.275948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383415, 0.296587, -0.874659,
		0.561317, -0.677226, -0.475698,
		-0.733427, -0.673351, 0.093179,
		26.788149, 35.149788, 38.303902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.222876, 35.297310, 37.574383>,  <27.301548, 35.621132, 38.238674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.222876, 35.297310, 37.574383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.872278, 35.237514, 37.757431>,  <26.661921, 35.201637, 37.867260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.872278, 35.237514, 37.757431>,  <27.222876, 35.297310, 37.574383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.872278, 35.237514, 37.757431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481413, 0.275072, -0.832212,
		-0.001472, -0.949731, -0.313064,
		-0.876493, -0.149488, 0.457617,
		26.609331, 35.192669, 37.894714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.842731, 35.035484, 37.035843>,  <27.222876, 35.297310, 37.574383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.842731, 35.035484, 37.035843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.590860, 35.149048, 37.325089>,  <26.439737, 35.217186, 37.498638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.590860, 35.149048, 37.325089>,  <26.842731, 35.035484, 37.035843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.590860, 35.149048, 37.325089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649206, 0.318908, -0.690529,
		-0.426656, -0.904263, -0.016493,
		-0.629680, 0.283911, 0.723117,
		26.401957, 35.234222, 37.542023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.214766, 34.704113, 36.823849>,  <26.842731, 35.035484, 37.035843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.214766, 34.704113, 36.823849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.141798, 35.022671, 37.054493>,  <26.098019, 35.213806, 37.192879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.141798, 35.022671, 37.054493>,  <26.214766, 34.704113, 36.823849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.141798, 35.022671, 37.054493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692364, 0.312345, -0.650440,
		-0.698109, -0.517874, 0.494420,
		-0.182416, 0.796396, 0.576609,
		26.087072, 35.261589, 37.227474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.478653, 34.801487, 37.005299>,  <26.214766, 34.704113, 36.823849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.478653, 34.801487, 37.005299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.449898, 35.064659, 37.305153>,  <25.432644, 35.222565, 37.485065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.449898, 35.064659, 37.305153>,  <25.478653, 34.801487, 37.005299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.449898, 35.064659, 37.305153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488999, 0.631808, -0.601413,
		-0.869317, -0.409807, 0.276309,
		-0.071890, 0.657933, 0.749637,
		25.428331, 35.262039, 37.530045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.811424, 35.103348, 37.039364>,  <25.478653, 34.801487, 37.005299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.811424, 35.103348, 37.039364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.078003, 35.357586, 37.195244>,  <25.237951, 35.510128, 37.288773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.078003, 35.357586, 37.195244>,  <24.811424, 35.103348, 37.039364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.078003, 35.357586, 37.195244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432525, 0.755363, -0.492289,
		-0.607263, 0.159529, 0.778320,
		0.666449, 0.635592, 0.389704,
		25.277937, 35.548264, 37.312157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.393753, 35.557594, 37.354084>,  <24.811424, 35.103348, 37.039364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.393753, 35.557594, 37.354084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.748278, 35.734016, 37.297630>,  <24.960993, 35.839870, 37.263760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.748278, 35.734016, 37.297630>,  <24.393753, 35.557594, 37.354084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.748278, 35.734016, 37.297630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460247, 0.805289, -0.373741,
		-0.051190, 0.396207, 0.916733,
		0.886314, 0.441056, -0.141130,
		25.014172, 35.866333, 37.255291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.397652, 36.235798, 37.668686>,  <24.393753, 35.557594, 37.354084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.397652, 36.235798, 37.668686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.677763, 36.206608, 37.384632>,  <24.845829, 36.189095, 37.214199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.677763, 36.206608, 37.384632>,  <24.397652, 36.235798, 37.668686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.677763, 36.206608, 37.384632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474301, 0.695892, -0.539233,
		0.533525, 0.714429, 0.452706,
		0.700278, -0.072976, -0.710131,
		24.887846, 36.184715, 37.171593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.541946, 36.847794, 37.310452>,  <24.397652, 36.235798, 37.668686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.541946, 36.847794, 37.310452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.793810, 36.647736, 37.072666>,  <24.944927, 36.527702, 36.929996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.793810, 36.647736, 37.072666>,  <24.541946, 36.847794, 37.310452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.793810, 36.647736, 37.072666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185698, 0.646123, -0.740298,
		0.754353, 0.576524, 0.313961,
		0.629657, -0.500144, -0.594464,
		24.982706, 36.497692, 36.894325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.825811, 37.302376, 36.919388>,  <24.541946, 36.847794, 37.310452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.825811, 37.302376, 36.919388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.941467, 36.988384, 36.700222>,  <25.010860, 36.799988, 36.568722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.941467, 36.988384, 36.700222>,  <24.825811, 37.302376, 36.919388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.941467, 36.988384, 36.700222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000852, 0.572568, -0.819857,
		0.957287, 0.236585, 0.166220,
		0.289138, -0.784980, -0.547911,
		25.028208, 36.752892, 36.535851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.336721, 37.535770, 36.546032>,  <24.825811, 37.302376, 36.919388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.336721, 37.535770, 36.546032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.203793, 37.209881, 36.355965>,  <25.124035, 37.014347, 36.241924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.203793, 37.209881, 36.355965>,  <25.336721, 37.535770, 36.546032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.203793, 37.209881, 36.355965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303203, 0.569346, -0.764142,
		0.893101, -0.109868, -0.436233,
		-0.332323, -0.814723, -0.475172,
		25.104095, 36.965466, 36.213413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.693258, 37.502434, 35.915035>,  <25.336721, 37.535770, 36.546032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.693258, 37.502434, 35.915035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.320839, 37.361629, 35.876583>,  <25.097387, 37.277145, 35.853512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.320839, 37.361629, 35.876583>,  <25.693258, 37.502434, 35.915035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.320839, 37.361629, 35.876583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210270, 0.732859, -0.647074,
		0.298227, -0.582243, -0.756343,
		-0.931046, -0.352011, -0.096130,
		25.041525, 37.256027, 35.847744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.509970, 37.419327, 35.195030>,  <25.693258, 37.502434, 35.915035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.509970, 37.419327, 35.195030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.163652, 37.462093, 35.390568>,  <24.955862, 37.487751, 35.507889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.163652, 37.462093, 35.390568>,  <25.509970, 37.419327, 35.195030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.163652, 37.462093, 35.390568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198329, 0.823587, -0.531384,
		-0.459418, -0.557022, -0.691854,
		-0.865795, 0.106912, 0.488844,
		24.903913, 37.494167, 35.537220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.124454, 37.830666, 35.111645>,  <25.509970, 37.419327, 35.195030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.124454, 37.830666, 35.111645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.436567, 37.970219, 34.904015>,  <26.623835, 38.053951, 34.779438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.436567, 37.970219, 34.904015>,  <26.124454, 37.830666, 35.111645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.436567, 37.970219, 34.904015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447662, -0.268034, -0.853087,
		-0.436756, 0.898020, -0.052961,
		0.780284, 0.348882, -0.519075,
		26.670652, 38.074883, 34.748291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.922398, 38.341270, 34.583893>,  <26.124454, 37.830666, 35.111645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.922398, 38.341270, 34.583893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.253479, 38.152271, 34.462799>,  <26.452127, 38.038872, 34.390144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.253479, 38.152271, 34.462799>,  <25.922398, 38.341270, 34.583893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.253479, 38.152271, 34.462799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416900, -0.156646, -0.895353,
		0.375630, 0.867299, -0.326641,
		0.827706, -0.472498, -0.302736,
		26.501791, 38.010521, 34.371979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.184692, 38.480156, 33.924805>,  <25.922398, 38.341270, 34.583893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.184692, 38.480156, 33.924805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.312832, 38.104225, 33.972309>,  <26.389715, 37.878666, 34.000813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.312832, 38.104225, 33.972309>,  <26.184692, 38.480156, 33.924805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.312832, 38.104225, 33.972309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119120, -0.164333, -0.979186,
		0.939780, 0.299536, -0.164596,
		0.320350, -0.939826, 0.118757,
		26.408937, 37.822277, 34.007935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.617342, 38.315098, 33.329590>,  <26.184692, 38.480156, 33.924805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.617342, 38.315098, 33.329590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.491371, 37.963333, 33.472393>,  <26.415789, 37.752274, 33.558075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.491371, 37.963333, 33.472393>,  <26.617342, 38.315098, 33.329590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.491371, 37.963333, 33.472393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256119, -0.283449, -0.924154,
		0.913906, -0.382475, -0.135969,
		-0.314926, -0.879414, 0.357005,
		26.396893, 37.699509, 33.579494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.798635, 37.804153, 32.786724>,  <26.617342, 38.315098, 33.329590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.798635, 37.804153, 32.786724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.495214, 37.656597, 33.001579>,  <26.313162, 37.568062, 33.130493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.495214, 37.656597, 33.001579>,  <26.798635, 37.804153, 32.786724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.495214, 37.656597, 33.001579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497796, -0.203853, -0.842996,
		0.420470, -0.906843, -0.028999,
		-0.758553, -0.368890, 0.537137,
		26.267649, 37.545929, 33.162720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.753223, 37.053165, 32.671822>,  <26.798635, 37.804153, 32.786724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.753223, 37.053165, 32.671822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.404135, 37.218967, 32.775002>,  <26.194681, 37.318451, 32.836910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.404135, 37.218967, 32.775002>,  <26.753223, 37.053165, 32.671822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.404135, 37.218967, 32.775002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432404, -0.410954, -0.802585,
		-0.226672, -0.811973, 0.537884,
		-0.872724, 0.414507, 0.257949,
		26.142317, 37.343319, 32.852386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.320148, 36.537971, 32.471401>,  <26.753223, 37.053165, 32.671822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.320148, 36.537971, 32.471401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.034464, 36.811054, 32.533119>,  <25.863052, 36.974907, 32.570152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.034464, 36.811054, 32.533119>,  <26.320148, 36.537971, 32.471401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.034464, 36.811054, 32.533119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582660, -0.457773, -0.671529,
		-0.387827, -0.569516, 0.724735,
		-0.714211, 0.682711, 0.154297,
		25.820200, 37.015869, 32.579407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.688421, 36.181622, 32.512318>,  <26.320148, 36.537971, 32.471401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.688421, 36.181622, 32.512318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.573044, 36.554710, 32.425758>,  <25.503817, 36.778564, 32.373821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.573044, 36.554710, 32.425758>,  <25.688421, 36.181622, 32.512318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.573044, 36.554710, 32.425758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604720, -0.352683, -0.714093,
		-0.742371, -0.075116, 0.665765,
		-0.288444, 0.932723, -0.216397,
		25.486511, 36.834526, 32.360840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.106743, 36.143578, 32.055756>,  <25.688421, 36.181622, 32.512318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.106743, 36.143578, 32.055756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.177320, 36.537254, 32.049603>,  <25.219667, 36.773460, 32.045910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.177320, 36.537254, 32.049603>,  <25.106743, 36.143578, 32.055756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.177320, 36.537254, 32.049603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403883, 0.058140, -0.912961,
		-0.897634, 0.167296, 0.407757,
		0.176442, 0.984191, -0.015379,
		25.230253, 36.832512, 32.044991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.669811, 36.353554, 31.523590>,  <25.106743, 36.143578, 32.055756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.669811, 36.353554, 31.523590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.914488, 36.660686, 31.599771>,  <25.061293, 36.844967, 31.645481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.914488, 36.660686, 31.599771>,  <24.669811, 36.353554, 31.523590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.914488, 36.660686, 31.599771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088336, 0.305533, -0.948075,
		-0.786151, 0.563104, 0.254718,
		0.611690, 0.767830, 0.190453,
		25.097994, 36.891037, 31.656908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.385874, 36.977615, 31.200462>,  <24.669811, 36.353554, 31.523590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.385874, 36.977615, 31.200462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.784739, 36.972816, 31.230198>,  <25.024057, 36.969936, 31.248039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.784739, 36.972816, 31.230198>,  <24.385874, 36.977615, 31.200462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.784739, 36.972816, 31.230198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074671, 0.284797, -0.955675,
		-0.009707, 0.958513, 0.284884,
		0.997161, -0.011996, 0.074338,
		25.083887, 36.969219, 31.252499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.957273, 37.085823, 30.714962>,  <24.385874, 36.977615, 31.200462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.957273, 37.085823, 30.714962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.207100, 37.396122, 30.751020>,  <25.356997, 37.582302, 30.772655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.207100, 37.396122, 30.751020>,  <24.957273, 37.085823, 30.714962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.207100, 37.396122, 30.751020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697134, 0.501765, 0.512090,
		0.352022, -0.382679, 0.854188,
		0.624568, 0.775750, 0.090147,
		25.394470, 37.628849, 30.778065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.927719, 37.496120, 31.398630>,  <24.957273, 37.085823, 30.714962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.927719, 37.496120, 31.398630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.013794, 37.766853, 31.117035>,  <25.065439, 37.929291, 30.948078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.013794, 37.766853, 31.117035>,  <24.927719, 37.496120, 31.398630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.013794, 37.766853, 31.117035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723699, 0.594544, 0.350395,
		0.655709, 0.434076, 0.617757,
		0.215186, 0.676828, -0.703988,
		25.078350, 37.969902, 30.905838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.567827, 38.067760, 31.664646>,  <24.927719, 37.496120, 31.398630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.567827, 38.067760, 31.664646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.691818, 38.183407, 31.302359>,  <24.766212, 38.252792, 31.084986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.691818, 38.183407, 31.302359>,  <24.567827, 38.067760, 31.664646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.691818, 38.183407, 31.302359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433580, 0.890799, 0.135961,
		0.846122, 0.350558, 0.401480,
		0.309976, 0.289113, -0.905720,
		24.784811, 38.270142, 31.030643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.175985, 38.046204, 32.106049>,  <24.567827, 38.067760, 31.664646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.175985, 38.046204, 32.106049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.292444, 37.667980, 32.164223>,  <25.362320, 37.441044, 32.199127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.292444, 37.667980, 32.164223>,  <25.175985, 38.046204, 32.106049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.292444, 37.667980, 32.164223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410139, 0.260706, 0.873967,
		-0.864303, -0.194804, 0.463714,
		0.291145, -0.945560, 0.145432,
		25.379787, 37.384312, 32.207851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.189852, 38.035828, 32.827282>,  <25.175985, 38.046204, 32.106049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.189852, 38.035828, 32.827282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.415928, 37.732830, 32.696587>,  <25.551573, 37.551033, 32.618168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.415928, 37.732830, 32.696587>,  <25.189852, 38.035828, 32.827282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.415928, 37.732830, 32.696587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512767, 0.012307, 0.858439,
		-0.646243, -0.652724, 0.395375,
		0.565190, -0.757495, -0.326742,
		25.585485, 37.505581, 32.598564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.052214, 37.648689, 33.325302>,  <25.189852, 38.035828, 32.827282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.052214, 37.648689, 33.325302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.394764, 37.516048, 33.166981>,  <25.600294, 37.436462, 33.071987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.394764, 37.516048, 33.166981>,  <25.052214, 37.648689, 33.325302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.394764, 37.516048, 33.166981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405766, -0.041890, 0.913016,
		-0.319339, -0.942488, 0.098680,
		0.856373, -0.331603, -0.395807,
		25.651676, 37.416569, 33.048237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.255821, 37.031658, 33.739033>,  <25.052214, 37.648689, 33.325302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.255821, 37.031658, 33.739033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.579609, 37.191425, 33.566883>,  <25.773882, 37.287285, 33.463593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.579609, 37.191425, 33.566883>,  <25.255821, 37.031658, 33.739033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.579609, 37.191425, 33.566883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507705, -0.107925, 0.854744,
		0.294954, -0.910393, -0.290150,
		0.809468, 0.399421, -0.430378,
		25.822449, 37.311253, 33.437771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.830633, 36.602833, 33.994198>,  <25.255821, 37.031658, 33.739033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.830633, 36.602833, 33.994198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.979626, 36.954971, 33.876728>,  <26.069021, 37.166256, 33.806248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.979626, 36.954971, 33.876728>,  <25.830633, 36.602833, 33.994198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.979626, 36.954971, 33.876728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498738, 0.076976, 0.863328,
		0.782636, -0.468039, -0.410391,
		0.372481, 0.880349, -0.293672,
		26.091370, 37.219074, 33.788628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.346630, 36.641598, 34.477940>,  <25.830633, 36.602833, 33.994198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.346630, 36.641598, 34.477940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.370316, 36.992207, 34.286858>,  <26.384527, 37.202572, 34.172211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.370316, 36.992207, 34.286858>,  <26.346630, 36.641598, 34.477940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.370316, 36.992207, 34.286858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689753, 0.310006, 0.654321,
		0.721619, -0.368240, -0.586230,
		0.059212, 0.876525, -0.477701,
		26.388079, 37.255165, 34.143547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.102335, 36.745434, 34.254906>,  <26.346630, 36.641598, 34.477940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.102335, 36.745434, 34.254906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.889967, 37.079117, 34.314529>,  <26.762547, 37.279327, 34.350304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.889967, 37.079117, 34.314529>,  <27.102335, 36.745434, 34.254906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.889967, 37.079117, 34.314529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770756, 0.402252, 0.494093,
		0.352216, 0.377215, -0.856535,
		-0.530922, 0.834207, 0.149062,
		26.730690, 37.329380, 34.359249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.418911, 37.308697, 33.942436>,  <27.102335, 36.745434, 34.254906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.418911, 37.308697, 33.942436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.187445, 37.433250, 34.243946>,  <27.048565, 37.507984, 34.424854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.187445, 37.433250, 34.243946>,  <27.418911, 37.308697, 33.942436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.187445, 37.433250, 34.243946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781556, 0.475836, 0.403424,
		-0.233055, 0.822569, -0.518716,
		-0.578667, 0.311385, 0.753779,
		27.013844, 37.526665, 34.470081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.506933, 38.089737, 34.081291>,  <27.418911, 37.308697, 33.942436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.506933, 38.089737, 34.081291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.390810, 37.866665, 34.392345>,  <27.321136, 37.732822, 34.578979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.390810, 37.866665, 34.392345>,  <27.506933, 38.089737, 34.081291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.390810, 37.866665, 34.392345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720836, 0.407029, 0.561002,
		-0.629378, 0.723411, 0.283830,
		-0.290309, -0.557677, 0.777636,
		27.303717, 37.699360, 34.625637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.238525, 38.389473, 34.774403>,  <27.506933, 38.089737, 34.081291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.238525, 38.389473, 34.774403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.463133, 38.061707, 34.820438>,  <27.597898, 37.865047, 34.848061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.463133, 38.061707, 34.820438>,  <27.238525, 38.389473, 34.774403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.463133, 38.061707, 34.820438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709886, 0.548515, 0.441807,
		-0.425156, -0.166380, 0.889697,
		0.561520, -0.819420, 0.115093,
		27.631588, 37.815880, 34.854965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.403141, 38.209759, 35.506104>,  <27.238525, 38.389473, 34.774403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.403141, 38.209759, 35.506104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.675505, 38.102139, 35.233643>,  <27.838923, 38.037567, 35.070164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.675505, 38.102139, 35.233643>,  <27.403141, 38.209759, 35.506104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.675505, 38.102139, 35.233643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713850, 0.451647, 0.535194,
		0.163646, -0.850662, 0.499594,
		0.680910, -0.269053, -0.681155,
		27.879778, 38.021423, 35.029297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.902962, 37.733089, 35.808006>,  <27.403141, 38.209759, 35.506104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.902962, 37.733089, 35.808006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.982859, 38.010967, 35.531601>,  <28.030798, 38.177692, 35.365757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.982859, 38.010967, 35.531601>,  <27.902962, 37.733089, 35.808006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.982859, 38.010967, 35.531601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514393, 0.525888, 0.677379,
		0.833968, -0.490755, -0.252304,
		0.199743, 0.694696, -0.691014,
		28.042782, 38.219376, 35.324295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.349516, 38.074547, 36.160046>,  <27.902962, 37.733089, 35.808006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.349516, 38.074547, 36.160046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.333355, 38.302856, 35.832001>,  <28.323658, 38.439842, 35.635174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.333355, 38.302856, 35.832001>,  <28.349516, 38.074547, 36.160046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.333355, 38.302856, 35.832001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737111, 0.571149, 0.361188,
		0.674563, -0.589923, -0.443797,
		-0.040401, 0.570772, -0.820114,
		28.321236, 38.474087, 35.585968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.059740, 38.225254, 36.122108>,  <28.349516, 38.074547, 36.160046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.059740, 38.225254, 36.122108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.860237, 38.456451, 35.863758>,  <28.740536, 38.595169, 35.708748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.860237, 38.456451, 35.863758>,  <29.059740, 38.225254, 36.122108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.860237, 38.456451, 35.863758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757168, 0.653220, -0.000131,
		0.421825, -0.489105, -0.763439,
		-0.498758, 0.577997, -0.645879,
		28.710609, 38.629852, 35.669994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.228094, 37.793602, 36.647900>,  <29.059740, 38.225254, 36.122108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.228094, 37.793602, 36.647900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.481777, 38.077827, 36.525997>,  <29.633987, 38.248363, 36.452858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.481777, 38.077827, 36.525997>,  <29.228094, 37.793602, 36.647900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.481777, 38.077827, 36.525997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622553, -0.235587, 0.746275,
		0.458482, -0.663020, -0.591777,
		0.634210, 0.710566, -0.304752,
		29.672041, 38.290997, 36.434570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.562031, 37.409508, 37.292400>,  <29.228094, 37.793602, 36.647900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.562031, 37.409508, 37.292400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.941582, 37.283360, 37.297604>,  <30.169313, 37.207672, 37.300724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.941582, 37.283360, 37.297604>,  <29.562031, 37.409508, 37.292400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.941582, 37.283360, 37.297604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125599, 0.339457, -0.932198,
		0.289574, 0.886177, 0.361714,
		0.948879, -0.315372, 0.013005,
		30.226246, 37.188747, 37.301506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.919369, 38.015911, 37.213951>,  <29.562031, 37.409508, 37.292400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.919369, 38.015911, 37.213951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.011482, 37.658108, 37.060680>,  <30.066750, 37.443424, 36.968719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.011482, 37.658108, 37.060680>,  <29.919369, 38.015911, 37.213951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.011482, 37.658108, 37.060680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093131, 0.371691, -0.923674,
		0.968657, 0.248390, 0.002287,
		0.230282, -0.894510, -0.383174,
		30.080566, 37.389755, 36.945728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.436436, 38.183762, 36.791389>,  <29.919369, 38.015911, 37.213951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.436436, 38.183762, 36.791389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.246510, 37.847569, 36.686974>,  <30.132553, 37.645855, 36.624325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.246510, 37.847569, 36.686974>,  <30.436436, 38.183762, 36.791389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.246510, 37.847569, 36.686974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116706, 0.354122, -0.927889,
		0.872313, -0.410110, -0.266231,
		-0.474815, -0.840480, -0.261043,
		30.104065, 37.595425, 36.608662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.828917, 37.753429, 36.306877>,  <30.436436, 38.183762, 36.791389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.828917, 37.753429, 36.306877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.434460, 37.731655, 36.244186>,  <30.197786, 37.718590, 36.206570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.434460, 37.731655, 36.244186>,  <30.828917, 37.753429, 36.306877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.434460, 37.731655, 36.244186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126110, 0.367902, -0.921273,
		0.107814, -0.928270, -0.355938,
		-0.986140, -0.054439, -0.156729,
		30.138618, 37.715324, 36.197166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.549143, 37.347385, 35.700241>,  <30.828917, 37.753429, 36.306877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.549143, 37.347385, 35.700241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.299772, 37.649010, 35.782925>,  <30.150150, 37.829987, 35.832535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.299772, 37.649010, 35.782925>,  <30.549143, 37.347385, 35.700241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.299772, 37.649010, 35.782925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216190, 0.420306, -0.881252,
		-0.751400, -0.504708, -0.425051,
		-0.623426, 0.754064, 0.206705,
		30.112745, 37.875229, 35.844936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.030897, 37.446110, 35.168144>,  <30.549143, 37.347385, 35.700241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.030897, 37.446110, 35.168144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.089182, 37.802227, 35.340721>,  <30.124153, 38.015900, 35.444267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.089182, 37.802227, 35.340721>,  <30.030897, 37.446110, 35.168144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.089182, 37.802227, 35.340721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044642, 0.441568, -0.896116,
		-0.988319, 0.111316, 0.104087,
		0.145714, 0.890296, 0.431441,
		30.132896, 38.069317, 35.470154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.376135, 37.795208, 34.987885>,  <30.030897, 37.446110, 35.168144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.376135, 37.795208, 34.987885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.736673, 37.964260, 35.025738>,  <29.952997, 38.065693, 35.048450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.736673, 37.964260, 35.025738>,  <29.376135, 37.795208, 34.987885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.736673, 37.964260, 35.025738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264506, 0.710192, -0.652430,
		-0.342945, 0.563035, 0.751918,
		0.901347, 0.422634, 0.094630,
		30.007078, 38.091049, 35.054127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.385372, 37.076294, 35.151291>,  <29.376135, 37.795208, 34.987885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.385372, 37.076294, 35.151291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.045912, 37.260433, 35.047081>,  <28.842236, 37.370918, 34.984554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.045912, 37.260433, 35.047081>,  <29.385372, 37.076294, 35.151291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.045912, 37.260433, 35.047081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359908, 0.141595, -0.922181,
		-0.387635, -0.876373, -0.285848,
		-0.848649, 0.460348, -0.260526,
		28.791317, 37.398537, 34.968922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.157879, 36.783516, 34.490913>,  <29.385372, 37.076294, 35.151291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.157879, 36.783516, 34.490913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.011570, 37.154400, 34.523159>,  <28.923784, 37.376930, 34.542507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.011570, 37.154400, 34.523159>,  <29.157879, 36.783516, 34.490913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.011570, 37.154400, 34.523159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384869, 0.229547, -0.893971,
		-0.847400, -0.295965, -0.440815,
		-0.365772, 0.927207, 0.080610,
		28.901838, 37.432564, 34.547340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.627735, 36.927147, 33.908550>,  <29.157879, 36.783516, 34.490913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.627735, 36.927147, 33.908550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.809984, 37.262299, 34.028790>,  <28.919334, 37.463390, 34.100933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.809984, 37.262299, 34.028790>,  <28.627735, 36.927147, 33.908550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.809984, 37.262299, 34.028790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579624, -0.022955, -0.814561,
		-0.675606, 0.545367, -0.496116,
		0.455623, 0.837883, 0.300600,
		28.946671, 37.513664, 34.118969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.700018, 37.197975, 33.260506>,  <28.627735, 36.927147, 33.908550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.700018, 37.197975, 33.260506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.950317, 37.402489, 33.496143>,  <29.100496, 37.525196, 33.637527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.950317, 37.402489, 33.496143>,  <28.700018, 37.197975, 33.260506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.950317, 37.402489, 33.496143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659948, 0.055587, -0.749252,
		-0.415824, 0.857614, -0.302635,
		0.625746, 0.511281, 0.589096,
		29.138041, 37.555874, 33.672871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.975973, 37.689987, 32.844208>,  <28.700018, 37.197975, 33.260506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.975973, 37.689987, 32.844208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.215738, 37.652874, 33.162228>,  <29.359596, 37.630608, 33.353039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.215738, 37.652874, 33.162228>,  <28.975973, 37.689987, 32.844208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.215738, 37.652874, 33.162228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784549, 0.265046, -0.560566,
		-0.158713, 0.959761, 0.231664,
		0.599411, -0.092783, 0.795046,
		29.395561, 37.625038, 33.400742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.322945, 38.368084, 33.016869>,  <28.975973, 37.689987, 32.844208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.322945, 38.368084, 33.016869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.503000, 38.027645, 33.124947>,  <29.611032, 37.823383, 33.189793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.503000, 38.027645, 33.124947>,  <29.322945, 38.368084, 33.016869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.503000, 38.027645, 33.124947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715778, 0.162993, -0.679040,
		0.533889, 0.499064, 0.682567,
		0.450138, -0.851098, 0.270198,
		29.638042, 37.772316, 33.206005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.886469, 38.509178, 32.719276>,  <29.322945, 38.368084, 33.016869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.886469, 38.509178, 32.719276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.923697, 38.121162, 32.809044>,  <29.946033, 37.888351, 32.862904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.923697, 38.121162, 32.809044>,  <29.886469, 38.509178, 32.719276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.923697, 38.121162, 32.809044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659529, -0.108791, -0.743764,
		0.745895, 0.217231, 0.629644,
		0.093069, -0.970039, 0.224417,
		29.951618, 37.830151, 32.876369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.570473, 38.445675, 32.884811>,  <29.886469, 38.509178, 32.719276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.570473, 38.445675, 32.884811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.436220, 38.090012, 32.760391>,  <30.355669, 37.876614, 32.685738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.436220, 38.090012, 32.760391>,  <30.570473, 38.445675, 32.884811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.436220, 38.090012, 32.760391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618472, 0.041066, -0.784733,
		0.710523, -0.455760, 0.536134,
		-0.335633, -0.889155, -0.311053,
		30.335529, 37.823265, 32.667076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.216125, 38.154167, 32.663544>,  <30.570473, 38.445675, 32.884811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.216125, 38.154167, 32.663544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.968094, 37.862480, 32.547794>,  <30.819275, 37.687466, 32.478344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.968094, 37.862480, 32.547794>,  <31.216125, 38.154167, 32.663544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.968094, 37.862480, 32.547794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632986, -0.247114, -0.733665,
		0.463497, -0.638099, 0.614817,
		-0.620081, -0.729222, -0.289371,
		30.782070, 37.643715, 32.460983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.601763, 37.478607, 32.583412>,  <31.216125, 38.154167, 32.663544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.601763, 37.478607, 32.583412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.267660, 37.447121, 32.365734>,  <31.067198, 37.428230, 32.235126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.267660, 37.447121, 32.365734>,  <31.601763, 37.478607, 32.583412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.267660, 37.447121, 32.365734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544334, -0.258294, -0.798113,
		-0.077740, -0.962854, 0.258589,
		-0.835259, -0.078714, -0.544194,
		31.017082, 37.423508, 32.202477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.642796, 36.897530, 32.225338>,  <31.601763, 37.478607, 32.583412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.642796, 36.897530, 32.225338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.377110, 37.109959, 32.014896>,  <31.217697, 37.237415, 31.888632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.377110, 37.109959, 32.014896>,  <31.642796, 36.897530, 32.225338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.377110, 37.109959, 32.014896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535395, -0.153196, -0.830592,
		-0.521699, -0.833364, -0.182577,
		-0.664216, 0.531070, -0.526101,
		31.177845, 37.269279, 31.857065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.842138, 36.715469, 31.519018>,  <31.642796, 36.897530, 32.225338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.842138, 36.715469, 31.519018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.585375, 37.012424, 31.442268>,  <31.431316, 37.190598, 31.396219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.585375, 37.012424, 31.442268>,  <31.842138, 36.715469, 31.519018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.585375, 37.012424, 31.442268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294698, 0.007845, -0.955558,
		-0.707888, -0.669926, -0.223815,
		-0.641909, 0.742386, -0.191873,
		31.392801, 37.235142, 31.384706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.574112, 36.647545, 30.784023>,  <31.842138, 36.715469, 31.519018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.574112, 36.647545, 30.784023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.538727, 37.031361, 30.890951>,  <31.517496, 37.261650, 30.955107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.538727, 37.031361, 30.890951>,  <31.574112, 36.647545, 30.784023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.538727, 37.031361, 30.890951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445092, 0.278165, -0.851185,
		-0.891104, 0.043683, -0.451691,
		-0.088463, 0.959539, 0.267317,
		31.512188, 37.319221, 30.971146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.474319, 36.853180, 30.147341>,  <31.574112, 36.647545, 30.784023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.474319, 36.853180, 30.147341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.568432, 37.170788, 30.371546>,  <31.624899, 37.361355, 30.506069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.568432, 37.170788, 30.371546>,  <31.474319, 36.853180, 30.147341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.568432, 37.170788, 30.371546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572783, 0.352637, -0.739978,
		-0.785215, 0.495154, -0.371833,
		0.235281, 0.794021, 0.560511,
		31.639017, 37.408993, 30.539700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.276657, 37.372070, 29.847269>,  <31.474319, 36.853180, 30.147341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.276657, 37.372070, 29.847269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.572063, 37.524960, 30.069441>,  <31.749308, 37.616692, 30.202744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.572063, 37.524960, 30.069441>,  <31.276657, 37.372070, 29.847269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.572063, 37.524960, 30.069441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501557, 0.239102, -0.831427,
		-0.450591, 0.892602, -0.015124,
		0.738518, 0.382219, 0.555428,
		31.793619, 37.639626, 30.236069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.382233, 38.057178, 29.520803>,  <31.276657, 37.372070, 29.847269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.382233, 38.057178, 29.520803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.728008, 37.985004, 29.708500>,  <31.935474, 37.941700, 29.821117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.728008, 37.985004, 29.708500>,  <31.382233, 38.057178, 29.520803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.728008, 37.985004, 29.708500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493954, 0.478521, -0.725967,
		-0.093553, 0.859338, 0.502778,
		0.864441, -0.180433, 0.469240,
		31.987341, 37.930874, 29.849272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.601398, 38.746696, 29.465036>,  <31.382233, 38.057178, 29.520803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.601398, 38.746696, 29.465036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.908731, 38.516567, 29.577225>,  <32.093132, 38.378490, 29.644539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.908731, 38.516567, 29.577225>,  <31.601398, 38.746696, 29.465036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.908731, 38.516567, 29.577225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587012, 0.458746, -0.667060,
		0.255112, 0.677164, 0.690193,
		0.768333, -0.575327, 0.280472,
		32.139233, 38.343967, 29.661366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.091873, 39.213676, 29.520092>,  <31.601398, 38.746696, 29.465036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.091873, 39.213676, 29.520092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.279488, 38.868935, 29.442938>,  <32.392056, 38.662090, 29.396645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.279488, 38.868935, 29.442938>,  <32.091873, 39.213676, 29.520092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.279488, 38.868935, 29.442938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520458, 0.446181, -0.728042,
		0.713530, 0.241091, 0.657837,
		0.469039, -0.861857, -0.192886,
		32.420200, 38.610378, 29.385073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.792450, 39.354206, 29.471289>,  <32.091873, 39.213676, 29.520092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.792450, 39.354206, 29.471289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.764236, 39.003857, 29.280344>,  <32.747307, 38.793648, 29.165777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.764236, 39.003857, 29.280344>,  <32.792450, 39.354206, 29.471289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.764236, 39.003857, 29.280344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476976, 0.390683, -0.787312,
		0.876081, -0.283221, 0.390214,
		-0.070533, -0.875872, -0.477360,
		32.743076, 38.741096, 29.137136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.359245, 39.348057, 28.945942>,  <32.792450, 39.354206, 29.471289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.359245, 39.348057, 28.945942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.118919, 39.068565, 28.790606>,  <32.974724, 38.900871, 28.697405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.118919, 39.068565, 28.790606>,  <33.359245, 39.348057, 28.945942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.118919, 39.068565, 28.790606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258767, 0.289642, -0.921492,
		0.756350, -0.654132, 0.006787,
		-0.600811, -0.698727, -0.388339,
		32.938675, 38.858948, 28.674105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.792522, 38.902252, 28.567953>,  <33.359245, 39.348057, 28.945942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.792522, 38.902252, 28.567953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.432140, 38.879852, 28.395844>,  <33.215912, 38.866413, 28.292578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.432140, 38.879852, 28.395844>,  <33.792522, 38.902252, 28.567953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.432140, 38.879852, 28.395844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418576, 0.149054, -0.895867,
		0.114304, -0.987242, -0.110851,
		-0.900960, -0.056002, -0.430273,
		33.161854, 38.863052, 28.266762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.904675, 38.509384, 27.884651>,  <33.792522, 38.902252, 28.567953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.904675, 38.509384, 27.884651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.543373, 38.676987, 27.847631>,  <33.326591, 38.777546, 27.825420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.543373, 38.676987, 27.847631>,  <33.904675, 38.509384, 27.884651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.543373, 38.676987, 27.847631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212806, 0.250122, -0.944538,
		-0.372615, -0.872855, -0.315091,
		-0.903256, 0.419002, -0.092550,
		33.272396, 38.802689, 27.819866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.672783, 38.151207, 27.261461>,  <33.904675, 38.509384, 27.884651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.672783, 38.151207, 27.261461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.437920, 38.470852, 27.313095>,  <33.297001, 38.662640, 27.344074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.437920, 38.470852, 27.313095>,  <33.672783, 38.151207, 27.261461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.437920, 38.470852, 27.313095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204301, 0.300599, -0.931612,
		-0.783266, -0.520632, -0.339759,
		-0.587158, 0.799114, 0.129084,
		33.261772, 38.710587, 27.351820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.344398, 38.171928, 26.698839>,  <33.672783, 38.151207, 27.261461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.344398, 38.171928, 26.698839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.289669, 38.543716, 26.835871>,  <33.256832, 38.766788, 26.918089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.289669, 38.543716, 26.835871>,  <33.344398, 38.171928, 26.698839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.289669, 38.543716, 26.835871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004454, 0.345251, -0.938500,
		-0.990586, -0.129931, -0.043097,
		-0.136820, 0.929473, 0.342580,
		33.248623, 38.822559, 26.938644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.785648, 38.520691, 26.310421>,  <33.344398, 38.171928, 26.698839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.785648, 38.520691, 26.310421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.004490, 38.812378, 26.474817>,  <33.135796, 38.987392, 26.573456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.004490, 38.812378, 26.474817>,  <32.785648, 38.520691, 26.310421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.004490, 38.812378, 26.474817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106933, 0.547856, -0.829710,
		-0.830205, 0.409992, 0.377713,
		0.547106, 0.729219, 0.410991,
		33.168621, 39.031143, 26.598114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.401245, 39.086689, 26.087715>,  <32.785648, 38.520691, 26.310421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.401245, 39.086689, 26.087715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.759220, 39.241951, 26.175741>,  <32.974007, 39.335106, 26.228556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.759220, 39.241951, 26.175741>,  <32.401245, 39.086689, 26.087715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.759220, 39.241951, 26.175741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063134, 0.598395, -0.798710,
		-0.441705, 0.700901, 0.560031,
		0.894936, 0.388151, 0.220063,
		33.027702, 39.358395, 26.241760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.431328, 39.852421, 25.721437>,  <32.401245, 39.086689, 26.087715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.431328, 39.852421, 25.721437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.821617, 39.809563, 25.797834>,  <33.055790, 39.783848, 25.843674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.821617, 39.809563, 25.797834>,  <32.431328, 39.852421, 25.721437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.821617, 39.809563, 25.797834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216132, 0.611674, -0.761014,
		-0.035288, 0.783821, 0.619983,
		0.975726, -0.107144, 0.190994,
		33.114334, 39.777420, 25.855133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.810844, 40.477783, 25.748873>,  <32.431328, 39.852421, 25.721437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.810844, 40.477783, 25.748873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.113926, 40.221397, 25.699797>,  <33.295773, 40.067566, 25.670351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.113926, 40.221397, 25.699797>,  <32.810844, 40.477783, 25.748873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.113926, 40.221397, 25.699797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324672, 0.533319, -0.781127,
		0.566107, 0.552027, 0.612200,
		0.757701, -0.640965, -0.122688,
		33.341236, 40.029106, 25.662991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.501152, 40.800591, 25.773533>,  <32.810844, 40.477783, 25.748873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.501152, 40.800591, 25.773533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.600815, 40.458939, 25.590940>,  <33.660614, 40.253948, 25.481384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.600815, 40.458939, 25.590940>,  <33.501152, 40.800591, 25.773533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.600815, 40.458939, 25.590940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420828, 0.520007, -0.743301,
		0.872252, -0.006899, 0.489008,
		0.249160, -0.854134, -0.456480,
		33.675564, 40.202698, 25.453997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.334641, 40.656155, 25.622129>,  <33.501152, 40.800591, 25.773533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.334641, 40.656155, 25.622129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.132732, 40.431316, 25.360058>,  <34.011585, 40.296413, 25.202816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.132732, 40.431316, 25.360058>,  <34.334641, 40.656155, 25.622129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.132732, 40.431316, 25.360058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584841, 0.335572, -0.738479,
		0.634952, -0.755939, 0.159347,
		-0.504773, -0.562092, -0.655177,
		33.981300, 40.262688, 25.163506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.886665, 40.376137, 25.137888>,  <34.334641, 40.656155, 25.622129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.886665, 40.376137, 25.137888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.538143, 40.345428, 24.944008>,  <34.329029, 40.327003, 24.827681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.538143, 40.345428, 24.944008>,  <34.886665, 40.376137, 25.137888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.538143, 40.345428, 24.944008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413644, 0.416563, -0.809551,
		0.264054, -0.905860, -0.331200,
		-0.871306, -0.076766, -0.484699,
		34.276752, 40.322399, 24.798597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.077637, 40.047775, 24.608543>,  <34.886665, 40.376137, 25.137888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.077637, 40.047775, 24.608543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.727558, 40.217674, 24.515913>,  <34.517513, 40.319614, 24.460335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.727558, 40.217674, 24.515913>,  <35.077637, 40.047775, 24.608543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.727558, 40.217674, 24.515913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370481, 0.280638, -0.885430,
		-0.311093, -0.860717, -0.402973,
		-0.875194, 0.424745, -0.231574,
		34.465000, 40.345097, 24.446440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.096092, 39.893402, 23.829782>,  <35.077637, 40.047775, 24.608543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.096092, 39.893402, 23.829782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.836742, 40.183552, 23.922253>,  <34.681133, 40.357643, 23.977736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.836742, 40.183552, 23.922253>,  <35.096092, 39.893402, 23.829782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.836742, 40.183552, 23.922253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296895, 0.520519, -0.800571,
		-0.701045, -0.450434, -0.552851,
		-0.648374, 0.725375, 0.231175,
		34.642231, 40.401165, 23.991606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.864162, 40.112335, 23.182566>,  <35.096092, 39.893402, 23.829782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.864162, 40.112335, 23.182566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.762604, 40.429672, 23.403889>,  <34.701668, 40.620075, 23.536682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.762604, 40.429672, 23.403889>,  <34.864162, 40.112335, 23.182566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.762604, 40.429672, 23.403889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340835, 0.608741, -0.716426,
		-0.905190, 0.006690, -0.424954,
		-0.253894, 0.793341, 0.553307,
		34.686436, 40.667675, 23.569881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.702999, 40.649700, 22.766396>,  <34.864162, 40.112335, 23.182566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.702999, 40.649700, 22.766396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.768986, 40.851948, 23.105131>,  <34.808578, 40.973297, 23.308372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.768986, 40.851948, 23.105131>,  <34.702999, 40.649700, 22.766396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.768986, 40.851948, 23.105131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387429, 0.756368, -0.527072,
		-0.907019, 0.415040, -0.071115,
		0.164968, 0.505617, 0.846840,
		34.818478, 41.003632, 23.359182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.679348, 41.348549, 22.550144>,  <34.702999, 40.649700, 22.766396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.679348, 41.348549, 22.550144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.855831, 41.364376, 22.908756>,  <34.961720, 41.373871, 23.123924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.855831, 41.364376, 22.908756>,  <34.679348, 41.348549, 22.550144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.855831, 41.364376, 22.908756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409174, 0.880269, -0.240215,
		-0.798693, 0.472823, 0.372193,
		0.441209, 0.039567, 0.896532,
		34.988194, 41.376247, 23.177715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.530067, 42.037357, 22.906870>,  <34.679348, 41.348549, 22.550144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.530067, 42.037357, 22.906870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.862259, 41.868084, 23.051765>,  <35.061573, 41.766521, 23.138702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.862259, 41.868084, 23.051765>,  <34.530067, 42.037357, 22.906870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.862259, 41.868084, 23.051765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515150, 0.830880, -0.210376,
		-0.211951, 0.361322, 0.908033,
		0.830480, -0.423184, 0.362241,
		35.111404, 41.741127, 23.160439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.873932, 42.651703, 22.982712>,  <34.530067, 42.037357, 22.906870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.873932, 42.651703, 22.982712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.151901, 42.371094, 23.045885>,  <35.318684, 42.202728, 23.083788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.151901, 42.371094, 23.045885>,  <34.873932, 42.651703, 22.982712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.151901, 42.371094, 23.045885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706547, 0.706969, 0.031407,
		-0.133686, 0.089761, 0.986950,
		0.694924, -0.701526, 0.157932,
		35.360378, 42.160637, 23.093266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.096931, 42.736862, 23.737339>,  <34.873932, 42.651703, 22.982712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.096931, 42.736862, 23.737339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.368397, 42.559029, 23.503496>,  <35.531277, 42.452328, 23.363190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.368397, 42.559029, 23.503496>,  <35.096931, 42.736862, 23.737339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.368397, 42.559029, 23.503496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616211, 0.777781, 0.123860,
		0.399630, -0.444300, 0.801807,
		0.678661, -0.444584, -0.584606,
		35.571995, 42.425655, 23.328114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.803368, 43.032200, 23.950016>,  <35.096931, 42.736862, 23.737339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.803368, 43.032200, 23.950016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.856842, 42.898285, 23.576910>,  <35.888927, 42.817936, 23.353046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.856842, 42.898285, 23.576910>,  <35.803368, 43.032200, 23.950016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.856842, 42.898285, 23.576910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458938, 0.855118, -0.241143,
		0.878354, -0.395843, 0.267960,
		0.133683, -0.334786, -0.932763,
		35.896946, 42.797848, 23.297081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.471748, 43.316845, 23.699726>,  <35.803368, 43.032200, 23.950016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.471748, 43.316845, 23.699726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.255642, 43.217148, 23.378233>,  <36.125977, 43.157330, 23.185337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.255642, 43.217148, 23.378233>,  <36.471748, 43.316845, 23.699726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.255642, 43.217148, 23.378233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179230, 0.899129, -0.399304,
		0.822182, -0.359786, -0.441101,
		-0.540271, -0.249242, -0.803732,
		36.093559, 43.142376, 23.137114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.899368, 43.541000, 23.209728>,  <36.471748, 43.316845, 23.699726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.899368, 43.541000, 23.209728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.545067, 43.488197, 23.031731>,  <36.332485, 43.456516, 22.924932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.545067, 43.488197, 23.031731>,  <36.899368, 43.541000, 23.209728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.545067, 43.488197, 23.031731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195644, 0.763202, -0.615829,
		0.420916, -0.632531, -0.650180,
		-0.885750, -0.132009, -0.444995,
		36.279343, 43.448593, 22.898232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.050419, 43.749195, 22.489952>,  <36.899368, 43.541000, 23.209728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.050419, 43.749195, 22.489952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.653069, 43.768318, 22.531754>,  <36.414658, 43.779793, 22.556835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.653069, 43.768318, 22.531754>,  <37.050419, 43.749195, 22.489952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.653069, 43.768318, 22.531754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018816, 0.829429, -0.558295,
		-0.113369, -0.556563, -0.823034,
		-0.993375, 0.047807, 0.104504,
		36.355057, 43.782661, 22.563105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.772041, 43.912354, 21.810040>,  <37.050419, 43.749195, 22.489952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.772041, 43.912354, 21.810040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.487793, 44.039474, 22.061125>,  <36.317245, 44.115746, 22.211777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.487793, 44.039474, 22.061125>,  <36.772041, 43.912354, 21.810040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.487793, 44.039474, 22.061125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052156, 0.865925, -0.497448,
		-0.701644, -0.386234, -0.598765,
		-0.710617, 0.317802, 0.627715,
		36.274609, 44.134815, 22.249439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.059502, 44.004887, 21.475676>,  <36.772041, 43.912354, 21.810040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.059502, 44.004887, 21.475676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.195068, 44.276600, 21.736048>,  <36.276409, 44.439629, 21.892271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.195068, 44.276600, 21.736048>,  <36.059502, 44.004887, 21.475676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.195068, 44.276600, 21.736048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119678, 0.655128, -0.745979,
		-0.933173, 0.330728, 0.140740,
		0.338919, 0.679284, 0.650928,
		36.296745, 44.480385, 21.931326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.574875, 44.555405, 21.495096>,  <36.059502, 44.004887, 21.475676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.574875, 44.555405, 21.495096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.933884, 44.685066, 21.614685>,  <36.149288, 44.762863, 21.686438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.933884, 44.685066, 21.614685>,  <35.574875, 44.555405, 21.495096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.933884, 44.685066, 21.614685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032519, 0.627481, -0.777953,
		-0.439775, 0.707950, 0.552635,
		0.897519, 0.324153, 0.298972,
		36.203140, 44.782310, 21.704376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.654362, 45.370625, 21.732346>,  <35.574875, 44.555405, 21.495096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.654362, 45.370625, 21.732346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.982841, 45.203117, 21.577291>,  <36.179932, 45.102612, 21.484259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.982841, 45.203117, 21.577291>,  <35.654362, 45.370625, 21.732346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.982841, 45.203117, 21.577291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078816, 0.756028, -0.649777,
		0.565167, 0.503047, 0.653858,
		0.821203, -0.418767, -0.387634,
		36.229202, 45.077488, 21.461000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.201340, 45.832291, 21.421410>,  <35.654362, 45.370625, 21.732346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.201340, 45.832291, 21.421410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.885975, 45.981255, 21.225563>,  <34.696758, 46.070633, 21.108055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.885975, 45.981255, 21.225563>,  <35.201340, 45.832291, 21.421410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.885975, 45.981255, 21.225563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055055, 0.750018, 0.659122,
		0.612682, 0.546614, -0.570819,
		-0.788409, 0.372406, -0.489616,
		34.649452, 46.092976, 21.078678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.375587, 46.545860, 21.474438>,  <35.201340, 45.832291, 21.421410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.375587, 46.545860, 21.474438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.992439, 46.504059, 21.367439>,  <34.762550, 46.478977, 21.303240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.992439, 46.504059, 21.367439>,  <35.375587, 46.545860, 21.474438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.992439, 46.504059, 21.367439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247624, 0.772319, 0.584984,
		0.145456, 0.626580, -0.765663,
		-0.957875, -0.104508, -0.267495,
		34.705078, 46.472706, 21.287191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.092411, 47.185886, 21.322752>,  <35.375587, 46.545860, 21.474438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.092411, 47.185886, 21.322752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.810543, 46.955536, 21.488550>,  <34.641422, 46.817326, 21.588030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.810543, 46.955536, 21.488550>,  <35.092411, 47.185886, 21.322752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.810543, 46.955536, 21.488550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120883, 0.673081, 0.729623,
		-0.699159, 0.464040, -0.543915,
		-0.704673, -0.575873, 0.414496,
		34.599140, 46.782776, 21.612900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.796406, 47.156124, 21.559433>,  <35.092411, 47.185886, 21.322752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.796406, 47.156124, 21.559433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.010464, 47.265614, 21.879107>,  <36.138901, 47.331306, 22.070910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.010464, 47.265614, 21.879107>,  <35.796406, 47.156124, 21.559433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.010464, 47.265614, 21.879107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200064, -0.878069, 0.434705,
		0.820726, -0.392520, -0.415136,
		0.535149, 0.273720, 0.799183,
		36.171009, 47.347729, 22.118862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.281281, 46.656940, 21.636261>,  <35.796406, 47.156124, 21.559433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.281281, 46.656940, 21.636261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.214424, 46.858757, 21.975084>,  <36.174309, 46.979847, 22.178377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.214424, 46.858757, 21.975084>,  <36.281281, 46.656940, 21.636261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.214424, 46.858757, 21.975084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098550, -0.863389, 0.494821,
		0.980995, -0.000772, 0.194031,
		-0.167142, 0.504539, 0.847056,
		36.164280, 47.010120, 22.229200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.767612, 46.494297, 22.102705>,  <36.281281, 46.656940, 21.636261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.767612, 46.494297, 22.102705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.444122, 46.613693, 22.305431>,  <36.250027, 46.685329, 22.427067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.444122, 46.613693, 22.305431>,  <36.767612, 46.494297, 22.102705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.444122, 46.613693, 22.305431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006311, -0.857210, 0.514928,
		0.588152, 0.419634, 0.691365,
		-0.808726, 0.298492, 0.506818,
		36.201504, 46.703239, 22.457478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.855072, 46.411423, 22.821562>,  <36.767612, 46.494297, 22.102705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.855072, 46.411423, 22.821562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.460918, 46.418846, 22.753834>,  <36.224426, 46.423302, 22.713198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.460918, 46.418846, 22.753834>,  <36.855072, 46.411423, 22.821562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.460918, 46.418846, 22.753834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131017, -0.717821, 0.683790,
		-0.108850, 0.695981, 0.709762,
		-0.985386, 0.018560, -0.169320,
		36.165302, 46.424416, 22.703037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.523602, 46.684189, 23.371887>,  <36.855072, 46.411423, 22.821562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.523602, 46.684189, 23.371887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.292770, 46.398998, 23.212564>,  <36.154270, 46.227882, 23.116970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.292770, 46.398998, 23.212564>,  <36.523602, 46.684189, 23.371887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.292770, 46.398998, 23.212564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084707, -0.537331, 0.839107,
		-0.812285, 0.450490, 0.370476,
		-0.577077, -0.712975, -0.398307,
		36.119648, 46.185104, 23.093073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.150089, 46.446495, 23.909443>,  <36.523602, 46.684189, 23.371887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.150089, 46.446495, 23.909443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.137444, 46.137650, 23.655563>,  <36.129856, 45.952343, 23.503235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.137444, 46.137650, 23.655563>,  <36.150089, 46.446495, 23.909443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.137444, 46.137650, 23.655563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014208, -0.634606, 0.772705,
		-0.999399, 0.033449, 0.009094,
		-0.031618, -0.772112, -0.634700,
		36.127960, 45.906017, 23.465153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.544975, 46.056641, 24.097780>,  <36.150089, 46.446495, 23.909443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.544975, 46.056641, 24.097780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.830696, 45.834499, 23.927439>,  <36.002129, 45.701214, 23.825233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.830696, 45.834499, 23.927439>,  <35.544975, 46.056641, 24.097780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.830696, 45.834499, 23.927439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156673, -0.719959, 0.676101,
		-0.682074, -0.416221, -0.601278,
		0.714303, -0.555355, -0.425854,
		36.044987, 45.667892, 23.799683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.115330, 45.408897, 24.008371>,  <35.544975, 46.056641, 24.097780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.115330, 45.408897, 24.008371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.496353, 45.293941, 23.968294>,  <35.724968, 45.224968, 23.944248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.496353, 45.293941, 23.968294>,  <35.115330, 45.408897, 24.008371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.496353, 45.293941, 23.968294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138227, -0.701789, 0.698846,
		-0.271155, -0.651842, -0.708221,
		0.952559, -0.287390, -0.100191,
		35.782120, 45.207726, 23.938236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.100479, 44.670990, 24.106380>,  <35.115330, 45.408897, 24.008371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.100479, 44.670990, 24.106380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.479889, 44.780941, 24.169291>,  <35.707535, 44.846912, 24.207037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.479889, 44.780941, 24.169291>,  <35.100479, 44.670990, 24.106380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.479889, 44.780941, 24.169291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032662, -0.578877, 0.814760,
		0.315003, -0.767686, -0.558060,
		0.948528, 0.274880, 0.157274,
		35.764446, 44.863403, 24.216473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.423717, 43.972084, 24.232103>,  <35.100479, 44.670990, 24.106380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.423717, 43.972084, 24.232103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.654377, 44.266140, 24.374678>,  <35.792774, 44.442574, 24.460222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.654377, 44.266140, 24.374678>,  <35.423717, 43.972084, 24.232103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.654377, 44.266140, 24.374678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233385, -0.566325, 0.790448,
		0.782947, -0.372624, -0.498141,
		0.576650, 0.735137, 0.356438,
		35.827374, 44.486683, 24.481609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.157745, 43.692856, 24.342146>,  <35.423717, 43.972084, 24.232103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.157745, 43.692856, 24.342146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.093388, 44.016411, 24.568356>,  <36.054775, 44.210545, 24.704081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.093388, 44.016411, 24.568356>,  <36.157745, 43.692856, 24.342146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.093388, 44.016411, 24.568356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237758, -0.524349, 0.817636,
		0.957906, 0.266008, -0.107956,
		-0.160891, 0.808887, 0.565523,
		36.045120, 44.259075, 24.738012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.563137, 43.567822, 24.866198>,  <36.157745, 43.692856, 24.342146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.563137, 43.567822, 24.866198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.326420, 43.844437, 25.031879>,  <36.184391, 44.010406, 25.131289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.326420, 43.844437, 25.031879>,  <36.563137, 43.567822, 24.866198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.326420, 43.844437, 25.031879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072764, -0.465914, 0.881833,
		0.802801, 0.551999, 0.225405,
		-0.591790, 0.691535, 0.414202,
		36.148884, 44.051899, 25.156139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.837639, 43.500751, 25.463688>,  <36.563137, 43.567822, 24.866198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.837639, 43.500751, 25.463688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.488678, 43.694866, 25.487041>,  <36.279301, 43.811337, 25.501053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.488678, 43.694866, 25.487041>,  <36.837639, 43.500751, 25.463688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.488678, 43.694866, 25.487041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282934, -0.598770, 0.749281,
		0.398577, 0.637156, 0.659673,
		-0.872402, 0.485290, 0.058383,
		36.226959, 43.840454, 25.504557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.767380, 43.699589, 26.102192>,  <36.837639, 43.500751, 25.463688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.767380, 43.699589, 26.102192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.388645, 43.677441, 25.975424>,  <36.161404, 43.664154, 25.899363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.388645, 43.677441, 25.975424>,  <36.767380, 43.699589, 26.102192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.388645, 43.677441, 25.975424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236683, -0.547341, 0.802745,
		-0.217909, 0.835076, 0.505137,
		-0.946835, -0.055368, -0.316919,
		36.104595, 43.660831, 25.880348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.416714, 44.039005, 26.643246>,  <36.767380, 43.699589, 26.102192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.416714, 44.039005, 26.643246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.136116, 43.846333, 26.433142>,  <35.967758, 43.730728, 26.307079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.136116, 43.846333, 26.433142>,  <36.416714, 44.039005, 26.643246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.136116, 43.846333, 26.433142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399222, -0.344945, 0.849491,
		-0.590367, 0.805605, 0.049680,
		-0.701491, -0.481678, -0.525259,
		35.925671, 43.701828, 26.275564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.843678, 44.333820, 26.937696>,  <36.416714, 44.039005, 26.643246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.843678, 44.333820, 26.937696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.751686, 43.977901, 26.780024>,  <35.696491, 43.764351, 26.685419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.751686, 43.977901, 26.780024>,  <35.843678, 44.333820, 26.937696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.751686, 43.977901, 26.780024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423803, -0.273052, 0.863616,
		-0.876072, 0.365665, -0.314302,
		-0.229974, -0.889793, -0.394183,
		35.682693, 43.710964, 26.661768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.176792, 44.242989, 27.205128>,  <35.843678, 44.333820, 26.937696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.176792, 44.242989, 27.205128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.309757, 43.883728, 27.090008>,  <35.389534, 43.668171, 27.020937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.309757, 43.883728, 27.090008>,  <35.176792, 44.242989, 27.205128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.309757, 43.883728, 27.090008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547812, -0.432266, 0.716273,
		-0.767727, -0.080436, -0.635708,
		0.332410, -0.898151, -0.287799,
		35.409481, 43.614285, 27.003668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.541748, 43.801937, 27.184677>,  <35.176792, 44.242989, 27.205128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.541748, 43.801937, 27.184677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.849281, 43.547264, 27.208414>,  <35.033802, 43.394459, 27.222656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.849281, 43.547264, 27.208414>,  <34.541748, 43.801937, 27.184677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.849281, 43.547264, 27.208414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518248, -0.566061, 0.641088,
		-0.374579, -0.523647, -0.765170,
		0.768837, -0.636685, 0.059345,
		35.079933, 43.356258, 27.226217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.245380, 43.105583, 27.074116>,  <34.541748, 43.801937, 27.184677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.245380, 43.105583, 27.074116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.586170, 43.050285, 27.276114>,  <34.790646, 43.017109, 27.397312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.586170, 43.050285, 27.276114>,  <34.245380, 43.105583, 27.074116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.586170, 43.050285, 27.276114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474996, -0.609820, 0.634428,
		0.220252, -0.780390, -0.585218,
		0.851979, -0.138242, 0.504996,
		34.841763, 43.008812, 27.427612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.264191, 42.446571, 27.218086>,  <34.245380, 43.105583, 27.074116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.264191, 42.446571, 27.218086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.478226, 42.607368, 27.515295>,  <34.606647, 42.703846, 27.693619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.478226, 42.607368, 27.515295>,  <34.264191, 42.446571, 27.218086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.478226, 42.607368, 27.515295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653354, -0.360640, 0.665633,
		0.535545, -0.841628, 0.069672,
		0.535089, 0.401997, 0.743019,
		34.638752, 42.727966, 27.738201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.284275, 41.930527, 27.575371>,  <34.264191, 42.446571, 27.218086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.284275, 41.930527, 27.575371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.386242, 42.231987, 27.817703>,  <34.447422, 42.412865, 27.963102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.386242, 42.231987, 27.817703>,  <34.284275, 41.930527, 27.575371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.386242, 42.231987, 27.817703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518323, -0.422414, 0.743577,
		0.816309, -0.503563, 0.282956,
		0.254913, 0.753652, 0.605829,
		34.462715, 42.458084, 27.999453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.524223, 41.643505, 28.213078>,  <34.284275, 41.930527, 27.575371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.524223, 41.643505, 28.213078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.409618, 42.015903, 28.303545>,  <34.340855, 42.239342, 28.357824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.409618, 42.015903, 28.303545>,  <34.524223, 41.643505, 28.213078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.409618, 42.015903, 28.303545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703647, -0.364689, 0.609822,
		0.650224, 0.015579, 0.759583,
		-0.286512, 0.930999, 0.226168,
		34.323666, 42.295204, 28.371395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.539711, 41.714619, 28.911209>,  <34.524223, 41.643505, 28.213078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.539711, 41.714619, 28.911209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.283211, 41.994244, 28.784653>,  <34.129311, 42.162018, 28.708719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.283211, 41.994244, 28.784653>,  <34.539711, 41.714619, 28.911209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.283211, 41.994244, 28.784653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675370, -0.318464, 0.665174,
		0.364241, 0.640224, 0.676344,
		-0.641252, 0.699066, -0.316390,
		34.090836, 42.203964, 28.689735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.128162, 41.781631, 29.483318>,  <34.539711, 41.714619, 28.911209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.128162, 41.781631, 29.483318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.908722, 41.994274, 29.225191>,  <33.777058, 42.121861, 29.070314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.908722, 41.994274, 29.225191>,  <34.128162, 41.781631, 29.483318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.908722, 41.994274, 29.225191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817781, -0.180558, 0.546473,
		0.173989, 0.827525, 0.533789,
		-0.548600, 0.531603, -0.645319,
		33.744141, 42.153755, 29.031595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.849827, 42.316422, 29.865303>,  <34.128162, 41.781631, 29.483318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.849827, 42.316422, 29.865303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.600792, 42.260239, 29.557365>,  <33.451370, 42.226528, 29.372602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.600792, 42.260239, 29.557365>,  <33.849827, 42.316422, 29.865303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.600792, 42.260239, 29.557365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773487, -0.038835, 0.632621,
		-0.118752, 0.989325, -0.084462,
		-0.622588, -0.140455, -0.769842,
		33.414017, 42.218102, 29.326412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.260704, 42.665451, 30.038099>,  <33.849827, 42.316422, 29.865303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.260704, 42.665451, 30.038099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.149204, 42.394112, 29.766174>,  <33.082302, 42.231308, 29.603020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.149204, 42.394112, 29.766174>,  <33.260704, 42.665451, 30.038099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.149204, 42.394112, 29.766174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748573, -0.289966, 0.596288,
		-0.601611, 0.675105, -0.426963,
		-0.278752, -0.678346, -0.679812,
		33.065578, 42.190609, 29.562231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.541893, 42.592915, 30.041309>,  <33.260704, 42.665451, 30.038099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.541893, 42.592915, 30.041309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.631824, 42.269814, 29.823322>,  <32.685783, 42.075954, 29.692530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.631824, 42.269814, 29.823322>,  <32.541893, 42.592915, 30.041309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.631824, 42.269814, 29.823322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493842, -0.576596, 0.650890,
		-0.839983, 0.122789, -0.528537,
		0.224830, -0.807750, -0.544969,
		32.699272, 42.027489, 29.659832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.913353, 42.302647, 29.817711>,  <32.541893, 42.592915, 30.041309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.913353, 42.302647, 29.817711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.180790, 42.005661, 29.801094>,  <32.341251, 41.827469, 29.791124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.180790, 42.005661, 29.801094>,  <31.913353, 42.302647, 29.817711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.180790, 42.005661, 29.801094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642832, -0.605147, 0.469642,
		-0.373832, -0.287296, -0.881879,
		0.668593, -0.742468, -0.041540,
		32.381367, 41.782921, 29.788631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.492510, 41.842205, 29.560709>,  <31.913353, 42.302647, 29.817711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.492510, 41.842205, 29.560709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.796677, 41.655888, 29.741728>,  <31.979177, 41.544098, 29.850340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.796677, 41.655888, 29.741728>,  <31.492510, 41.842205, 29.560709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.796677, 41.655888, 29.741728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646441, -0.476057, 0.596225,
		-0.062278, -0.745927, -0.663110,
		0.760418, -0.465793, 0.452549,
		32.024803, 41.516151, 29.877493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.274479, 41.159142, 29.625278>,  <31.492510, 41.842205, 29.560709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.274479, 41.159142, 29.625278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.561741, 41.223740, 29.896032>,  <31.734098, 41.262501, 30.058485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.561741, 41.223740, 29.896032>,  <31.274479, 41.159142, 29.625278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.561741, 41.223740, 29.896032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494176, -0.566480, 0.659462,
		0.489945, -0.808095, -0.327011,
		0.718154, 0.161499, 0.676885,
		31.777187, 41.272190, 30.099098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.273575, 40.496193, 30.003012>,  <31.274479, 41.159142, 29.625278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.273575, 40.496193, 30.003012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.422981, 40.793839, 30.224562>,  <31.512625, 40.972427, 30.357491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.422981, 40.793839, 30.224562>,  <31.273575, 40.496193, 30.003012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.422981, 40.793839, 30.224562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471675, -0.361787, 0.804135,
		0.798755, -0.561605, 0.215849,
		0.373515, 0.744117, 0.553874,
		31.535036, 41.017075, 30.390724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.362906, 40.185707, 30.646648>,  <31.273575, 40.496193, 30.003012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.362906, 40.185707, 30.646648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.408806, 40.573387, 30.733810>,  <31.436346, 40.805996, 30.786108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.408806, 40.573387, 30.733810>,  <31.362906, 40.185707, 30.646648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.408806, 40.573387, 30.733810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392360, -0.157302, 0.906262,
		0.912626, -0.189491, 0.362225,
		0.114750, 0.969200, 0.217907,
		31.443232, 40.864147, 30.799183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.601545, 40.117981, 31.301577>,  <31.362906, 40.185707, 30.646648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.601545, 40.117981, 31.301577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.488234, 40.500870, 31.277950>,  <31.420246, 40.730602, 31.263775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.488234, 40.500870, 31.277950>,  <31.601545, 40.117981, 31.301577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.488234, 40.500870, 31.277950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440923, -0.075296, 0.894381,
		0.851669, 0.279402, 0.443389,
		-0.283277, 0.957217, -0.059067,
		31.403250, 40.788036, 31.260231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.671318, 40.306473, 31.972883>,  <31.601545, 40.117981, 31.301577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.671318, 40.306473, 31.972883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.425571, 40.588001, 31.830229>,  <31.278124, 40.756920, 31.744637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.425571, 40.588001, 31.830229>,  <31.671318, 40.306473, 31.972883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.425571, 40.588001, 31.830229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463983, 0.043318, 0.884784,
		0.638180, 0.709054, 0.299948,
		-0.614367, 0.703822, -0.356634,
		31.241261, 40.799149, 31.723238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.586761, 40.764339, 32.517223>,  <31.671318, 40.306473, 31.972883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.586761, 40.764339, 32.517223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.273859, 40.786118, 32.268993>,  <31.086117, 40.799187, 32.120056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.273859, 40.786118, 32.268993>,  <31.586761, 40.764339, 32.517223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.273859, 40.786118, 32.268993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622193, -0.117627, 0.773977,
		-0.030853, 0.991564, 0.125892,
		-0.782256, 0.054450, -0.620573,
		31.039183, 40.802452, 32.082821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.216619, 41.359455, 32.800907>,  <31.586761, 40.764339, 32.517223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.216619, 41.359455, 32.800907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.974123, 41.127090, 32.583645>,  <30.828625, 40.987671, 32.453285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.974123, 41.127090, 32.583645>,  <31.216619, 41.359455, 32.800907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.974123, 41.127090, 32.583645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585489, -0.136204, 0.799157,
		-0.538217, 0.802493, -0.257542,
		-0.606239, -0.580908, -0.543158,
		30.792252, 40.952820, 32.420696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.560743, 41.527538, 33.055050>,  <31.216619, 41.359455, 32.800907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.560743, 41.527538, 33.055050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.473183, 41.192299, 32.855183>,  <30.420647, 40.991154, 32.735260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.473183, 41.192299, 32.855183>,  <30.560743, 41.527538, 33.055050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.473183, 41.192299, 32.855183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512326, -0.337100, 0.789864,
		-0.830424, 0.428898, -0.355588,
		-0.218902, -0.838099, -0.499672,
		30.407513, 40.940868, 32.705280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.850660, 41.419041, 33.173809>,  <30.560743, 41.527538, 33.055050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.850660, 41.419041, 33.173809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.996380, 41.070564, 33.042164>,  <30.083811, 40.861477, 32.963177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.996380, 41.070564, 33.042164>,  <29.850660, 41.419041, 33.173809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.996380, 41.070564, 33.042164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419507, -0.469025, 0.777193,
		-0.831445, -0.145064, -0.536335,
		0.364297, -0.871190, -0.329113,
		30.105669, 40.809208, 32.943432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.276327, 41.000259, 33.279839>,  <29.850660, 41.419041, 33.173809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.276327, 41.000259, 33.279839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.578348, 40.739376, 33.252953>,  <29.759562, 40.582848, 33.236820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.578348, 40.739376, 33.252953>,  <29.276327, 41.000259, 33.279839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.578348, 40.739376, 33.252953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392588, -0.531831, 0.750354,
		-0.525109, -0.540191, -0.657612,
		0.755073, -0.652188, -0.067196,
		29.804865, 40.543713, 33.232788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.005257, 40.308872, 33.248001>,  <29.276327, 41.000259, 33.279839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.005257, 40.308872, 33.248001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.379526, 40.289848, 33.387859>,  <29.604088, 40.278435, 33.471775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.379526, 40.289848, 33.387859>,  <29.005257, 40.308872, 33.248001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.379526, 40.289848, 33.387859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324107, -0.507669, 0.798265,
		0.139541, -0.860238, -0.490426,
		0.935672, -0.047560, 0.349651,
		29.660229, 40.275581, 33.492756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.035101, 39.661987, 33.474419>,  <29.005257, 40.308872, 33.248001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.035101, 39.661987, 33.474419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.362728, 39.807304, 33.652023>,  <29.559303, 39.894497, 33.758587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.362728, 39.807304, 33.652023>,  <29.035101, 39.661987, 33.474419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.362728, 39.807304, 33.652023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010994, -0.763864, 0.645283,
		0.573593, -0.533412, -0.621662,
		0.819067, 0.363295, 0.444011,
		29.608448, 39.916294, 33.785225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.470636, 39.104317, 33.609787>,  <29.035101, 39.661987, 33.474419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.470636, 39.104317, 33.609787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.622669, 39.396305, 33.837006>,  <29.713888, 39.571499, 33.973335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.622669, 39.396305, 33.837006>,  <29.470636, 39.104317, 33.609787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.622669, 39.396305, 33.837006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118838, -0.570508, 0.812649,
		0.917287, -0.376378, -0.130091,
		0.380081, 0.729973, 0.568048,
		29.736694, 39.615295, 34.007420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.912603, 38.763092, 34.037376>,  <29.470636, 39.104317, 33.609787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.912603, 38.763092, 34.037376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.879230, 39.106426, 34.239883>,  <29.859207, 39.312428, 34.361385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.879230, 39.106426, 34.239883>,  <29.912603, 38.763092, 34.037376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.879230, 39.106426, 34.239883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230400, -0.510886, 0.828198,
		0.969513, -0.047544, 0.240385,
		-0.083434, 0.858333, 0.506265,
		29.854200, 39.363926, 34.391762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.452890, 38.905506, 34.670170>,  <29.912603, 38.763092, 34.037376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.452890, 38.905506, 34.670170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.098778, 39.080162, 34.734200>,  <29.886311, 39.184956, 34.772617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.098778, 39.080162, 34.734200>,  <30.452890, 38.905506, 34.670170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.098778, 39.080162, 34.734200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076561, -0.476341, 0.875921,
		0.458708, 0.763182, 0.455126,
		-0.885283, 0.436637, 0.160072,
		29.833193, 39.211151, 34.782223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.044010, 38.802200, 35.161594>,  <30.452890, 38.905506, 34.670170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.044010, 38.802200, 35.161594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.395733, 38.619877, 35.216812>,  <31.606766, 38.510483, 35.249943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.395733, 38.619877, 35.216812>,  <31.044010, 38.802200, 35.161594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.395733, 38.619877, 35.216812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475136, 0.819678, -0.319958,
		0.032687, 0.346932, 0.937320,
		0.879305, -0.455813, 0.138047,
		31.659525, 38.483131, 35.258224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.484713, 39.326847, 35.563602>,  <31.044010, 38.802200, 35.161594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.484713, 39.326847, 35.563602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.727844, 39.063072, 35.386658>,  <31.873724, 38.904808, 35.280491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.727844, 39.063072, 35.386658>,  <31.484713, 39.326847, 35.563602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.727844, 39.063072, 35.386658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726918, 0.686296, -0.024246,
		0.319583, -0.306827, 0.896507,
		0.607830, -0.659435, -0.442366,
		31.910192, 38.865242, 35.253948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.100677, 39.619568, 35.719231>,  <31.484713, 39.326847, 35.563602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.100677, 39.619568, 35.719231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.193432, 39.354561, 35.434334>,  <32.249084, 39.195557, 35.263393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.193432, 39.354561, 35.434334>,  <32.100677, 39.619568, 35.719231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.193432, 39.354561, 35.434334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815645, 0.531407, -0.228756,
		0.530048, -0.527894, 0.663609,
		0.231887, -0.662521, -0.712246,
		32.262997, 39.155804, 35.220661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.782249, 39.288597, 35.764565>,  <32.100677, 39.619568, 35.719231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.782249, 39.288597, 35.764565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.701881, 39.248631, 35.374763>,  <32.653660, 39.224651, 35.140884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.701881, 39.248631, 35.374763>,  <32.782249, 39.288597, 35.764565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.701881, 39.248631, 35.374763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847621, 0.480966, -0.224075,
		0.491090, -0.871027, -0.011940,
		-0.200918, -0.099920, -0.974499,
		32.641605, 39.218655, 35.082413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.397865, 39.365589, 35.545933>,  <32.782249, 39.288597, 35.764565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.397865, 39.365589, 35.545933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.188667, 39.406307, 35.207439>,  <33.063148, 39.430737, 35.004345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.188667, 39.406307, 35.207439>,  <33.397865, 39.365589, 35.545933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.188667, 39.406307, 35.207439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801576, 0.396245, -0.447733,
		0.289738, -0.912484, -0.288832,
		-0.522998, 0.101796, -0.846233,
		33.031769, 39.436848, 34.953568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.838482, 39.069927, 34.974594>,  <33.397865, 39.365589, 35.545933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.838482, 39.069927, 34.974594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.570889, 39.294888, 34.780205>,  <33.410332, 39.429863, 34.663570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.570889, 39.294888, 34.780205>,  <33.838482, 39.069927, 34.974594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.570889, 39.294888, 34.780205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694269, 0.239319, -0.678761,
		-0.265437, -0.791471, -0.550560,
		-0.668979, 0.562406, -0.485970,
		33.370193, 39.463608, 34.634415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.914799, 38.909470, 34.301357>,  <33.838482, 39.069927, 34.974594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.914799, 38.909470, 34.301357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.759151, 39.277813, 34.311195>,  <33.665764, 39.498821, 34.317101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.759151, 39.277813, 34.311195>,  <33.914799, 38.909470, 34.301357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.759151, 39.277813, 34.311195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673955, 0.302785, -0.673874,
		-0.627991, -0.245638, -0.738437,
		-0.389117, 0.920860, 0.024598,
		33.642418, 39.554070, 34.318573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.691338, 39.071270, 33.598026>,  <33.914799, 38.909470, 34.301357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.691338, 39.071270, 33.598026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.741264, 39.414974, 33.796455>,  <33.771221, 39.621197, 33.915512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.741264, 39.414974, 33.796455>,  <33.691338, 39.071270, 33.598026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.741264, 39.414974, 33.796455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742653, 0.250645, -0.621002,
		-0.657941, 0.445924, -0.606848,
		0.124816, 0.859261, 0.496076,
		33.778709, 39.672752, 33.945278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.938145, 39.530872, 33.090645>,  <33.691338, 39.071270, 33.598026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.938145, 39.530872, 33.090645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.010540, 39.765793, 33.406197>,  <34.053978, 39.906746, 33.595528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.010540, 39.765793, 33.406197>,  <33.938145, 39.530872, 33.090645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.010540, 39.765793, 33.406197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660021, 0.522132, -0.540140,
		-0.729120, 0.618434, -0.293127,
		0.180990, 0.587297, 0.788876,
		34.064838, 39.941982, 33.642860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.847649, 40.217312, 32.864433>,  <33.938145, 39.530872, 33.090645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.847649, 40.217312, 32.864433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.087914, 40.243473, 33.183163>,  <34.232071, 40.259171, 33.374401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.087914, 40.243473, 33.183163>,  <33.847649, 40.217312, 32.864433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.087914, 40.243473, 33.183163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677185, 0.488180, -0.550546,
		-0.425003, 0.870289, 0.248938,
		0.600661, 0.065406, 0.796824,
		34.268112, 40.263096, 33.422211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.085732, 40.886501, 32.889565>,  <33.847649, 40.217312, 32.864433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.085732, 40.886501, 32.889565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.341812, 40.663017, 33.100464>,  <34.495461, 40.528927, 33.227001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.341812, 40.663017, 33.100464>,  <34.085732, 40.886501, 32.889565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.341812, 40.663017, 33.100464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765428, 0.405596, -0.499612,
		0.065290, 0.723419, 0.687315,
		0.640201, -0.558709, 0.527244,
		34.533871, 40.495403, 33.258636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.509510, 41.356407, 33.178642>,  <34.085732, 40.886501, 32.889565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.509510, 41.356407, 33.178642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.757366, 41.044456, 33.214066>,  <34.906078, 40.857285, 33.235317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.757366, 41.044456, 33.214066>,  <34.509510, 41.356407, 33.178642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.757366, 41.044456, 33.214066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671592, 0.468419, -0.574062,
		0.406218, 0.415182, 0.814009,
		0.619638, -0.779876, 0.088554,
		34.943256, 40.810493, 33.240631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.182602, 41.681995, 33.275421>,  <34.509510, 41.356407, 33.178642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.182602, 41.681995, 33.275421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.264927, 41.296741, 33.206127>,  <35.314323, 41.065590, 33.164551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.264927, 41.296741, 33.206127>,  <35.182602, 41.681995, 33.275421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.264927, 41.296741, 33.206127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837410, 0.264939, -0.478071,
		0.506344, -0.046675, 0.861068,
		0.205817, -0.963135, -0.173236,
		35.326672, 41.007801, 33.154156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.953564, 41.649242, 33.285465>,  <35.182602, 41.681995, 33.275421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.953564, 41.649242, 33.285465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.813183, 41.335598, 33.080723>,  <35.728954, 41.147411, 32.957878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.813183, 41.335598, 33.080723>,  <35.953564, 41.649242, 33.285465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.813183, 41.335598, 33.080723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744989, 0.097356, -0.659934,
		0.567295, -0.612935, 0.549988,
		-0.350952, -0.784112, -0.511859,
		35.707897, 41.100365, 32.927166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.487408, 41.164341, 33.119972>,  <35.953564, 41.649242, 33.285465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.487408, 41.164341, 33.119972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.199951, 41.124622, 32.844669>,  <36.027477, 41.100792, 32.679485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.199951, 41.124622, 32.844669>,  <36.487408, 41.164341, 33.119972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.199951, 41.124622, 32.844669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643065, 0.281751, -0.712098,
		0.264622, -0.954337, -0.138626,
		-0.718639, -0.099291, -0.688258,
		35.984360, 41.094833, 32.638191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.880943, 40.985085, 32.502701>,  <36.487408, 41.164341, 33.119972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.880943, 40.985085, 32.502701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.516727, 41.047096, 32.349400>,  <36.298199, 41.084305, 32.257420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.516727, 41.047096, 32.349400>,  <36.880943, 40.985085, 32.502701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.516727, 41.047096, 32.349400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401113, 0.106747, -0.909788,
		-0.100136, -0.982125, -0.159382,
		-0.910539, 0.155033, -0.383254,
		36.243565, 41.093605, 32.234425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.800972, 40.460274, 31.863861>,  <36.880943, 40.985085, 32.502701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.800972, 40.460274, 31.863861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.558178, 40.777401, 31.841948>,  <36.412502, 40.967678, 31.828800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.558178, 40.777401, 31.841948>,  <36.800972, 40.460274, 31.863861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.558178, 40.777401, 31.841948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407439, 0.251270, -0.877984,
		-0.682317, -0.555249, -0.475544,
		-0.606990, 0.792819, -0.054784,
		36.376080, 41.015247, 31.825512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.354664, 40.324463, 31.347330>,  <36.800972, 40.460274, 31.863861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.354664, 40.324463, 31.347330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.401169, 40.721241, 31.367435>,  <36.429070, 40.959309, 31.379499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.401169, 40.721241, 31.367435>,  <36.354664, 40.324463, 31.347330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.401169, 40.721241, 31.367435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204028, 0.025676, -0.978628,
		-0.972037, 0.124030, -0.199400,
		0.116259, 0.991946, 0.050264,
		36.436047, 41.018826, 31.382515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.252644, 40.455036, 30.675076>,  <36.354664, 40.324463, 31.347330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.252644, 40.455036, 30.675076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.392635, 40.802132, 30.816236>,  <36.476631, 41.010391, 30.900932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.392635, 40.802132, 30.816236>,  <36.252644, 40.455036, 30.675076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.392635, 40.802132, 30.816236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161538, 0.315179, -0.935183,
		-0.922724, 0.384302, -0.029867,
		0.349979, 0.867741, 0.352903,
		36.497627, 41.062454, 30.922108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.007275, 40.992245, 30.187754>,  <36.252644, 40.455036, 30.675076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.007275, 40.992245, 30.187754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.313942, 41.175613, 30.367561>,  <36.497944, 41.285637, 30.475447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.313942, 41.175613, 30.367561>,  <36.007275, 40.992245, 30.187754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.313942, 41.175613, 30.367561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141044, 0.562779, -0.814485,
		-0.626361, 0.687841, 0.366806,
		0.766667, 0.458426, 0.449519,
		36.543941, 41.313141, 30.502417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.991550, 41.676502, 29.934328>,  <36.007275, 40.992245, 30.187754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.991550, 41.676502, 29.934328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.358894, 41.646629, 30.089785>,  <36.579300, 41.628708, 30.183060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.358894, 41.646629, 30.089785>,  <35.991550, 41.676502, 29.934328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.358894, 41.646629, 30.089785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336616, 0.663818, -0.667859,
		-0.208113, 0.744156, 0.634760,
		0.918357, -0.074680, 0.388644,
		36.634403, 41.624226, 30.206377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.233231, 42.293079, 29.978855>,  <35.991550, 41.676502, 29.934328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.233231, 42.293079, 29.978855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.566715, 42.073410, 29.955791>,  <36.766808, 41.941608, 29.941954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.566715, 42.073410, 29.955791>,  <36.233231, 42.293079, 29.978855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.566715, 42.073410, 29.955791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402489, 0.675855, -0.617432,
		0.378048, 0.491556, 0.784508,
		0.833716, -0.549174, -0.057660,
		36.816830, 41.908657, 29.938494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.673790, 42.826981, 29.808504>,  <36.233231, 42.293079, 29.978855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.673790, 42.826981, 29.808504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.860184, 42.487083, 29.709883>,  <36.972019, 42.283146, 29.650711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.860184, 42.487083, 29.709883>,  <36.673790, 42.826981, 29.808504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.860184, 42.487083, 29.709883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320125, 0.421697, -0.848346,
		0.824849, 0.316392, 0.468530,
		0.465988, -0.849746, -0.246552,
		36.999981, 42.232159, 29.635918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.365044, 43.070259, 29.590923>,  <36.673790, 42.826981, 29.808504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.365044, 43.070259, 29.590923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.276134, 42.710186, 29.441120>,  <37.222790, 42.494141, 29.351238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.276134, 42.710186, 29.441120>,  <37.365044, 43.070259, 29.590923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.276134, 42.710186, 29.441120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560449, 0.196346, -0.804577,
		0.797804, -0.388730, 0.460867,
		-0.222274, -0.900187, -0.374509,
		37.209454, 42.440128, 29.328768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.881420, 42.927509, 29.196478>,  <37.365044, 43.070259, 29.590923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.881420, 42.927509, 29.196478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.628704, 42.642807, 29.073683>,  <37.477074, 42.471985, 29.000006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.628704, 42.642807, 29.073683>,  <37.881420, 42.927509, 29.196478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.628704, 42.642807, 29.073683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493464, -0.063902, -0.867416,
		0.597771, -0.699514, 0.391599,
		-0.631794, -0.711756, -0.306986,
		37.439167, 42.429279, 28.981586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.279129, 42.398983, 28.933460>,  <37.881420, 42.927509, 29.196478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.279129, 42.398983, 28.933460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.924458, 42.354633, 28.753899>,  <37.711655, 42.328022, 28.646162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.924458, 42.354633, 28.753899>,  <38.279129, 42.398983, 28.933460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.924458, 42.354633, 28.753899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461997, -0.252589, -0.850152,
		-0.019126, -0.961200, 0.275188,
		-0.886675, -0.110876, -0.448903,
		37.658455, 42.321369, 28.619228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.415733, 41.893711, 28.471287>,  <38.279129, 42.398983, 28.933460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.415733, 41.893711, 28.471287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.084732, 42.082584, 28.349770>,  <37.886131, 42.195908, 28.276859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.084732, 42.082584, 28.349770>,  <38.415733, 41.893711, 28.471287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.084732, 42.082584, 28.349770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291214, -0.101659, -0.951241,
		-0.480040, -0.875621, -0.053383,
		-0.827500, 0.472180, -0.303794,
		37.836483, 42.224239, 28.258631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.150986, 41.549206, 27.975262>,  <38.415733, 41.893711, 28.471287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.150986, 41.549206, 27.975262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.015682, 41.921455, 27.919365>,  <37.934502, 42.144806, 27.885828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.015682, 41.921455, 27.919365>,  <38.150986, 41.549206, 27.975262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.015682, 41.921455, 27.919365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094862, -0.114018, -0.988940,
		-0.936259, -0.347774, -0.049713,
		-0.338260, 0.930620, -0.139741,
		37.914204, 42.200642, 27.877443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.845997, 41.565205, 27.330372>,  <38.150986, 41.549206, 27.975262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.845997, 41.565205, 27.330372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.839493, 41.961143, 27.386862>,  <37.835590, 42.198708, 27.420755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.839493, 41.961143, 27.386862>,  <37.845997, 41.565205, 27.330372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.839493, 41.961143, 27.386862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131700, 0.142134, -0.981047,
		-0.991156, 0.002645, -0.132674,
		-0.016262, 0.989844, 0.141225,
		37.834614, 42.258095, 27.429230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.410458, 41.887486, 26.778076>,  <37.845997, 41.565205, 27.330372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.410458, 41.887486, 26.778076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.653492, 42.184494, 26.890862>,  <37.799313, 42.362698, 26.958532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.653492, 42.184494, 26.890862>,  <37.410458, 41.887486, 26.778076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.653492, 42.184494, 26.890862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131597, 0.255984, -0.957682,
		-0.783275, 0.618981, 0.057819,
		0.607587, 0.742519, 0.281962,
		37.835770, 42.407249, 26.975451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.093170, 42.568134, 26.537502>,  <37.410458, 41.887486, 26.778076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.093170, 42.568134, 26.537502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.486832, 42.587818, 26.605642>,  <37.723030, 42.599628, 26.646526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.486832, 42.587818, 26.605642>,  <37.093170, 42.568134, 26.537502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.486832, 42.587818, 26.605642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138488, 0.386622, -0.911781,
		-0.110731, 0.920924, 0.373680,
		0.984154, 0.049213, 0.170348,
		37.782078, 42.602581, 26.656746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.356113, 43.215755, 26.183846>,  <37.093170, 42.568134, 26.537502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.356113, 43.215755, 26.183846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.687859, 42.995499, 26.221685>,  <37.886906, 42.863346, 26.244390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.687859, 42.995499, 26.221685>,  <37.356113, 43.215755, 26.183846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.687859, 42.995499, 26.221685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381065, 0.433669, -0.816530,
		0.408590, 0.713249, 0.569499,
		0.829364, -0.550642, 0.094601,
		37.936668, 42.830307, 26.250065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.809731, 43.599476, 25.844257>,  <37.356113, 43.215755, 26.183846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.809731, 43.599476, 25.844257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.017231, 43.260822, 25.891766>,  <38.141731, 43.057629, 25.920271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.017231, 43.260822, 25.891766>,  <37.809731, 43.599476, 25.844257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.017231, 43.260822, 25.891766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551833, 0.225486, -0.802892,
		0.652975, 0.482044, 0.584172,
		0.518752, -0.846634, 0.118771,
		38.172855, 43.006832, 25.927397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.501141, 43.833023, 25.998806>,  <37.809731, 43.599476, 25.844257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.501141, 43.833023, 25.998806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.533997, 43.446186, 25.902491>,  <38.553711, 43.214085, 25.844702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.533997, 43.446186, 25.902491>,  <38.501141, 43.833023, 25.998806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.533997, 43.446186, 25.902491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726817, 0.223439, -0.649471,
		0.681902, -0.121660, 0.721255,
		0.082142, -0.967095, -0.240788,
		38.558640, 43.156059, 25.830254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.129971, 43.743477, 25.794256>,  <38.501141, 43.833023, 25.998806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.129971, 43.743477, 25.794256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.956753, 43.432697, 25.611465>,  <38.852821, 43.246231, 25.501791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.956753, 43.432697, 25.611465>,  <39.129971, 43.743477, 25.794256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.956753, 43.432697, 25.611465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580210, 0.147708, -0.800961,
		0.689802, -0.611995, 0.386827,
		-0.433046, -0.776946, -0.456975,
		38.826839, 43.199612, 25.474373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.690960, 43.296970, 25.503220>,  <39.129971, 43.743477, 25.794256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.690960, 43.296970, 25.503220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.356697, 43.238716, 25.291386>,  <39.156139, 43.203762, 25.164286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.356697, 43.238716, 25.291386>,  <39.690960, 43.296970, 25.503220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.356697, 43.238716, 25.291386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524255, 0.076041, -0.848160,
		0.163798, -0.986411, 0.012810,
		-0.835660, -0.145642, -0.529586,
		39.105999, 43.195026, 25.132509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.790348, 42.759876, 24.955790>,  <39.690960, 43.296970, 25.503220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.790348, 42.759876, 24.955790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.494743, 43.015831, 24.871506>,  <39.317379, 43.169403, 24.820936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.494743, 43.015831, 24.871506>,  <39.790348, 42.759876, 24.955790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.494743, 43.015831, 24.871506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493686, 0.301571, -0.815677,
		-0.458400, -0.706821, -0.538770,
		-0.739016, 0.639889, -0.210708,
		39.273037, 43.207798, 24.808294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.164074, 42.595459, 24.458141>,  <39.790348, 42.759876, 24.955790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.164074, 42.595459, 24.458141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.277958, 42.978649, 24.472181>,  <39.346287, 43.208561, 24.480606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.277958, 42.978649, 24.472181>,  <39.164074, 42.595459, 24.458141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.277958, 42.978649, 24.472181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518661, -0.123147, -0.846065,
		-0.806183, 0.259088, -0.531923,
		0.284710, 0.957971, 0.035100,
		39.363369, 43.266041, 24.482712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.877918, 42.414799, 24.315605>,  <39.164074, 42.595459, 24.458141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.877918, 42.414799, 24.315605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.178349, 42.187572, 24.181038>,  <40.358608, 42.051235, 24.100298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.178349, 42.187572, 24.181038>,  <39.877918, 42.414799, 24.315605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.178349, 42.187572, 24.181038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136397, -0.632083, 0.762802,
		-0.645974, -0.527034, -0.552225,
		0.751075, -0.568072, -0.336424,
		40.403671, 42.017151, 24.080112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.628826, 41.740623, 24.244896>,  <39.877918, 42.414799, 24.315605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.628826, 41.740623, 24.244896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.022587, 41.724621, 24.313416>,  <40.258842, 41.715019, 24.354528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.022587, 41.724621, 24.313416>,  <39.628826, 41.740623, 24.244896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.022587, 41.724621, 24.313416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155314, -0.654913, 0.739572,
		0.082596, -0.754644, -0.650915,
		0.984406, -0.040010, 0.171300,
		40.317909, 41.712616, 24.364805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.819134, 41.039677, 24.443935>,  <39.628826, 41.740623, 24.244896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.819134, 41.039677, 24.443935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.143826, 41.225300, 24.585781>,  <40.338642, 41.336674, 24.670889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.143826, 41.225300, 24.585781>,  <39.819134, 41.039677, 24.443935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.143826, 41.225300, 24.585781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038244, -0.563641, 0.825134,
		0.582782, -0.683347, -0.439776,
		0.811729, 0.464054, 0.354614,
		40.387344, 41.364517, 24.692165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.014168, 40.419655, 24.813862>,  <39.819134, 41.039677, 24.443935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.014168, 40.419655, 24.813862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.207947, 40.753075, 24.920069>,  <40.324215, 40.953129, 24.983793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.207947, 40.753075, 24.920069>,  <40.014168, 40.419655, 24.813862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.207947, 40.753075, 24.920069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212251, -0.406434, 0.888685,
		0.848680, -0.374168, -0.373820,
		0.484450, 0.833552, 0.265515,
		40.353283, 41.003139, 24.999723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.593521, 40.164433, 25.115778>,  <40.014168, 40.419655, 24.813862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.593521, 40.164433, 25.115778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.572067, 40.536530, 25.260977>,  <40.559196, 40.759789, 25.348097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.572067, 40.536530, 25.260977>,  <40.593521, 40.164433, 25.115778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.572067, 40.536530, 25.260977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018781, -0.362517, 0.931788,
		0.998384, 0.056791, 0.001972,
		-0.053632, 0.930245, 0.362998,
		40.555977, 40.815601, 25.369877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.928860, 40.054024, 25.623920>,  <40.593521, 40.164433, 25.115778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.928860, 40.054024, 25.623920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.718731, 40.380787, 25.719173>,  <40.592655, 40.576843, 25.776325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.718731, 40.380787, 25.719173>,  <40.928860, 40.054024, 25.623920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.718731, 40.380787, 25.719173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000959, -0.280426, 0.959875,
		0.850905, 0.504013, 0.148097,
		-0.525320, 0.816904, 0.238132,
		40.561134, 40.625858, 25.790613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.307480, 40.427963, 26.086060>,  <40.928860, 40.054024, 25.623920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.307480, 40.427963, 26.086060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.941284, 40.574726, 26.152100>,  <40.721565, 40.662785, 26.191723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.941284, 40.574726, 26.152100>,  <41.307480, 40.427963, 26.086060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.941284, 40.574726, 26.152100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003143, -0.416855, 0.908967,
		0.402330, 0.831631, 0.382780,
		-0.915489, 0.366908, 0.165099,
		40.666637, 40.684799, 26.201630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.337173, 40.691456, 26.777876>,  <41.307480, 40.427963, 26.086060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.337173, 40.691456, 26.777876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.944244, 40.642990, 26.720798>,  <40.708488, 40.613911, 26.686552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.944244, 40.642990, 26.720798>,  <41.337173, 40.691456, 26.777876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.944244, 40.642990, 26.720798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104818, -0.275535, 0.955559,
		-0.155094, 0.953625, 0.257965,
		-0.982323, -0.121162, -0.142691,
		40.649548, 40.606640, 26.677992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.001774, 41.044182, 27.359394>,  <41.337173, 40.691456, 26.777876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.001774, 41.044182, 27.359394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.774776, 40.751797, 27.207790>,  <40.638580, 40.576366, 27.116827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.774776, 40.751797, 27.207790>,  <41.001774, 41.044182, 27.359394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.774776, 40.751797, 27.207790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321665, -0.226916, 0.919261,
		-0.757949, 0.643585, -0.106353,
		-0.567489, -0.730963, -0.379010,
		40.604530, 40.532509, 27.094088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.376923, 41.095043, 27.666042>,  <41.001774, 41.044182, 27.359394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.376923, 41.095043, 27.666042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.308914, 40.726124, 27.527216>,  <40.268108, 40.504772, 27.443920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.308914, 40.726124, 27.527216>,  <40.376923, 41.095043, 27.666042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.308914, 40.726124, 27.527216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502990, -0.221635, 0.835391,
		-0.847404, 0.316605, -0.426225,
		-0.170022, -0.922301, -0.347064,
		40.257908, 40.449432, 27.423098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.675453, 40.936344, 27.739790>,  <40.376923, 41.095043, 27.666042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.675453, 40.936344, 27.739790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.845108, 40.574543, 27.722002>,  <39.946899, 40.357460, 27.711329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.845108, 40.574543, 27.722002>,  <39.675453, 40.936344, 27.739790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.845108, 40.574543, 27.722002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586736, -0.311872, 0.747313,
		-0.689819, -0.290869, -0.662982,
		0.424136, -0.904506, -0.044472,
		39.972347, 40.303192, 27.708660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.132965, 40.397972, 27.849010>,  <39.675453, 40.936344, 27.739790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.132965, 40.397972, 27.849010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.463810, 40.187588, 27.928255>,  <39.662319, 40.061359, 27.975801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.463810, 40.187588, 27.928255>,  <39.132965, 40.397972, 27.849010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.463810, 40.187588, 27.928255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404878, -0.313115, 0.859088,
		-0.389815, -0.790774, -0.471932,
		0.827114, -0.525961, 0.198110,
		39.711945, 40.029800, 27.987688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.003689, 39.605915, 28.020027>,  <39.132965, 40.397972, 27.849010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.003689, 39.605915, 28.020027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.350441, 39.697411, 28.197205>,  <39.558491, 39.752308, 28.303511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.350441, 39.697411, 28.197205>,  <39.003689, 39.605915, 28.020027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.350441, 39.697411, 28.197205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380628, -0.270095, 0.884404,
		0.321936, -0.935268, -0.147074,
		0.866879, 0.228741, 0.442943,
		39.610504, 39.766033, 28.330088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.173389, 38.992722, 28.444630>,  <39.003689, 39.605915, 28.020027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.173389, 38.992722, 28.444630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.387077, 39.302071, 28.581165>,  <39.515289, 39.487679, 28.663086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.387077, 39.302071, 28.581165>,  <39.173389, 38.992722, 28.444630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.387077, 39.302071, 28.581165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279924, -0.219168, 0.934670,
		0.797657, -0.594864, 0.099402,
		0.534215, 0.773371, 0.341337,
		39.547340, 39.534081, 28.683567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.510944, 38.754055, 29.042747>,  <39.173389, 38.992722, 28.444630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.510944, 38.754055, 29.042747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.501858, 39.152325, 29.078770>,  <39.496407, 39.391289, 29.100382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.501858, 39.152325, 29.078770>,  <39.510944, 38.754055, 29.042747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.501858, 39.152325, 29.078770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300258, -0.092712, 0.949342,
		0.953588, -0.005477, 0.301066,
		-0.022713, 0.995678, 0.090054,
		39.495045, 39.451027, 29.105785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.595245, 38.821991, 29.797276>,  <39.510944, 38.754055, 29.042747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.595245, 38.821991, 29.797276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.435219, 39.159565, 29.654322>,  <39.339203, 39.362110, 29.568550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.435219, 39.159565, 29.654322>,  <39.595245, 38.821991, 29.797276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.435219, 39.159565, 29.654322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503196, 0.123653, 0.855280,
		0.765992, 0.522000, 0.375196,
		-0.400062, 0.843935, -0.357385,
		39.315201, 39.412746, 29.547106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.608135, 39.253101, 30.274601>,  <39.595245, 38.821991, 29.797276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.608135, 39.253101, 30.274601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.309292, 39.415157, 30.063816>,  <39.129986, 39.512390, 29.937346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.309292, 39.415157, 30.063816>,  <39.608135, 39.253101, 30.274601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.309292, 39.415157, 30.063816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546482, 0.076932, 0.833930,
		0.378401, 0.911011, 0.163927,
		-0.747108, 0.405142, -0.526962,
		39.085159, 39.536701, 29.905727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.340878, 39.720123, 30.705231>,  <39.608135, 39.253101, 30.274601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.340878, 39.720123, 30.705231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.059044, 39.660389, 30.427740>,  <38.889942, 39.624550, 30.261246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.059044, 39.660389, 30.427740>,  <39.340878, 39.720123, 30.705231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.059044, 39.660389, 30.427740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709327, 0.120254, 0.694546,
		-0.020295, 0.981447, -0.190655,
		-0.704587, -0.149333, -0.693726,
		38.847668, 39.615589, 30.219622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.823593, 40.019806, 30.983608>,  <39.340878, 39.720123, 30.705231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.823593, 40.019806, 30.983608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.587944, 39.855850, 30.705061>,  <38.446556, 39.757477, 30.537933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.587944, 39.855850, 30.705061>,  <38.823593, 40.019806, 30.983608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.587944, 39.855850, 30.705061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755160, -0.027365, 0.654969,
		-0.287520, 0.911725, -0.293410,
		-0.589123, -0.409889, -0.696366,
		38.411205, 39.732883, 30.496151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.189751, 40.333195, 31.016584>,  <38.823593, 40.019806, 30.983608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.189751, 40.333195, 31.016584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.142307, 39.966644, 30.863646>,  <38.113842, 39.746716, 30.771881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.142307, 39.966644, 30.863646>,  <38.189751, 40.333195, 31.016584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.142307, 39.966644, 30.863646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755434, -0.166622, 0.633685,
		-0.644400, 0.364000, -0.672498,
		-0.118608, -0.916374, -0.382349,
		38.106724, 39.691730, 30.748941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.430019, 40.220013, 30.999954>,  <38.189751, 40.333195, 31.016584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.430019, 40.220013, 30.999954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.586987, 39.852589, 30.980955>,  <37.681168, 39.632133, 30.969555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.586987, 39.852589, 30.980955>,  <37.430019, 40.220013, 30.999954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.586987, 39.852589, 30.980955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727368, -0.341521, 0.595231,
		-0.562977, -0.199030, -0.802150,
		0.392419, -0.918559, -0.047500,
		37.704712, 39.577023, 30.966705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.841702, 39.788376, 31.090244>,  <37.430019, 40.220013, 30.999954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.841702, 39.788376, 31.090244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.131336, 39.517273, 31.141384>,  <37.305119, 39.354610, 31.172068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.131336, 39.517273, 31.141384>,  <36.841702, 39.788376, 31.090244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.131336, 39.517273, 31.141384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595703, -0.521137, 0.611191,
		-0.347610, -0.518717, -0.781089,
		0.724089, -0.677753, 0.127849,
		37.348564, 39.313946, 31.179739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.458427, 39.162262, 31.077286>,  <36.841702, 39.788376, 31.090244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.458427, 39.162262, 31.077286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.801872, 39.103527, 31.273741>,  <37.007938, 39.068287, 31.391615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.801872, 39.103527, 31.273741>,  <36.458427, 39.162262, 31.077286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.801872, 39.103527, 31.273741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503478, -0.421694, 0.754111,
		0.096380, -0.894770, -0.436002,
		0.858616, -0.146837, 0.491140,
		37.059456, 39.059475, 31.421083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.465797, 38.382896, 31.300804>,  <36.458427, 39.162262, 31.077286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.465797, 38.382896, 31.300804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.703625, 38.608578, 31.529947>,  <36.846321, 38.743984, 31.667433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.703625, 38.608578, 31.529947>,  <36.465797, 38.382896, 31.300804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.703625, 38.608578, 31.529947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413592, -0.396377, 0.819650,
		0.689515, -0.724268, -0.002325,
		0.594568, 0.564199, 0.572860,
		36.881996, 38.777836, 31.701805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.441128, 37.979305, 31.921688>,  <36.465797, 38.382896, 31.300804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.441128, 37.979305, 31.921688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.610664, 38.319046, 32.047520>,  <36.712387, 38.522892, 32.123016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.610664, 38.319046, 32.047520>,  <36.441128, 37.979305, 31.921688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.610664, 38.319046, 32.047520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445156, -0.107127, 0.889022,
		0.788791, -0.516843, 0.332689,
		0.423845, 0.849351, 0.314577,
		36.737820, 38.573853, 32.141891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.039211, 37.861946, 32.359550>,  <36.441128, 37.979305, 31.921688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.039211, 37.861946, 32.359550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.883385, 38.213379, 32.470066>,  <36.789890, 38.424240, 32.536373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.883385, 38.213379, 32.470066>,  <37.039211, 37.861946, 32.359550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.883385, 38.213379, 32.470066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044135, -0.317448, 0.947248,
		0.919941, 0.356820, 0.162442,
		-0.389564, 0.878582, 0.276286,
		36.766514, 38.476952, 32.552952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.452251, 38.073311, 32.935574>,  <37.039211, 37.861946, 32.359550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.452251, 38.073311, 32.935574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.118328, 38.291840, 32.962795>,  <36.917976, 38.422958, 32.979130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.118328, 38.291840, 32.962795>,  <37.452251, 38.073311, 32.935574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.118328, 38.291840, 32.962795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143198, -0.334834, 0.931332,
		0.531596, 0.767735, 0.357754,
		-0.834805, 0.546322, 0.068058,
		36.867886, 38.455738, 32.983212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.430965, 38.308586, 33.657200>,  <37.452251, 38.073311, 32.935574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.430965, 38.308586, 33.657200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.052597, 38.383575, 33.551300>,  <36.825577, 38.428570, 33.487759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.052597, 38.383575, 33.551300>,  <37.430965, 38.308586, 33.657200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.052597, 38.383575, 33.551300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305768, -0.242588, 0.920683,
		0.108382, 0.951842, 0.286793,
		-0.945917, 0.187478, -0.264751,
		36.768822, 38.439819, 33.471874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.161037, 38.781532, 34.149788>,  <37.430965, 38.308586, 33.657200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.161037, 38.781532, 34.149788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.843990, 38.601025, 33.985783>,  <36.653763, 38.492722, 33.887379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.843990, 38.601025, 33.985783>,  <37.161037, 38.781532, 34.149788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.843990, 38.601025, 33.985783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390930, -0.139915, 0.909724,
		-0.467898, 0.881351, -0.065516,
		-0.792619, -0.451270, -0.410013,
		36.606205, 38.465645, 33.862778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.487335, 39.055851, 34.514763>,  <37.161037, 38.781532, 34.149788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.487335, 39.055851, 34.514763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.310291, 38.784225, 34.280510>,  <36.204063, 38.621250, 34.139957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.310291, 38.784225, 34.280510>,  <36.487335, 39.055851, 34.514763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.310291, 38.784225, 34.280510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449983, -0.396710, 0.800085,
		-0.775634, 0.617655, -0.129977,
		-0.442613, -0.679061, -0.585636,
		36.177505, 38.580505, 34.104820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.683159, 38.987389, 34.484306>,  <36.487335, 39.055851, 34.514763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.683159, 38.987389, 34.484306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.817787, 38.613010, 34.442875>,  <35.898563, 38.388382, 34.418015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.817787, 38.613010, 34.442875>,  <35.683159, 38.987389, 34.484306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.817787, 38.613010, 34.442875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661349, -0.313248, 0.681538,
		-0.670327, -0.160884, -0.724416,
		0.336570, -0.935945, -0.103578,
		35.918758, 38.332226, 34.411800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.004292, 38.535660, 34.321156>,  <35.683159, 38.987389, 34.484306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.004292, 38.535660, 34.321156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.309307, 38.313000, 34.453018>,  <35.492317, 38.179405, 34.532135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.309307, 38.313000, 34.453018>,  <35.004292, 38.535660, 34.321156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.309307, 38.313000, 34.453018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609798, -0.448284, 0.653596,
		-0.216041, -0.699420, -0.681277,
		0.762543, -0.556645, 0.329657,
		35.538071, 38.146008, 34.551914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.668236, 37.821640, 34.403091>,  <35.004292, 38.535660, 34.321156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.668236, 37.821640, 34.403091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.009380, 37.814613, 34.611832>,  <35.214066, 37.810398, 34.737076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.009380, 37.814613, 34.611832>,  <34.668236, 37.821640, 34.403091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.009380, 37.814613, 34.611832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386517, -0.693191, 0.608351,
		0.351052, -0.720539, -0.597984,
		0.852858, -0.017568, 0.521847,
		35.265236, 37.809341, 34.768387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.813416, 37.072315, 34.608894>,  <34.668236, 37.821640, 34.403091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.813416, 37.072315, 34.608894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.033855, 37.304985, 34.848206>,  <35.166119, 37.444588, 34.991795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.033855, 37.304985, 34.848206>,  <34.813416, 37.072315, 34.608894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.033855, 37.304985, 34.848206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134536, -0.645667, 0.751674,
		0.823519, -0.494741, -0.277574,
		0.551104, 0.581674, 0.598280,
		35.199188, 37.479488, 35.027691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.240284, 36.586765, 34.841934>,  <34.813416, 37.072315, 34.608894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.240284, 36.586765, 34.841934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.262856, 36.888054, 35.104069>,  <35.276398, 37.068829, 35.261349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.262856, 36.888054, 35.104069>,  <35.240284, 36.586765, 34.841934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.262856, 36.888054, 35.104069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034163, -0.654545, 0.755251,
		0.997822, -0.065003, -0.011201,
		0.056425, 0.753223, 0.655341,
		35.279781, 37.114021, 35.300671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.736782, 36.389236, 35.272362>,  <35.240284, 36.586765, 34.841934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.736782, 36.389236, 35.272362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.510258, 36.660324, 35.459972>,  <35.374344, 36.822979, 35.572536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.510258, 36.660324, 35.459972>,  <35.736782, 36.389236, 35.272362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.510258, 36.660324, 35.459972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138732, -0.639335, 0.756309,
		0.812432, 0.363238, 0.456084,
		-0.566311, 0.677723, 0.469024,
		35.340366, 36.863640, 35.600681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.979290, 36.445251, 36.012947>,  <35.736782, 36.389236, 35.272362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.979290, 36.445251, 36.012947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.604847, 36.585552, 36.023357>,  <35.380180, 36.669735, 36.029602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.604847, 36.585552, 36.023357>,  <35.979290, 36.445251, 36.012947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.604847, 36.585552, 36.023357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118443, -0.384043, 0.915687,
		0.331174, 0.854098, 0.401049,
		-0.936106, 0.350754, 0.026023,
		35.324017, 36.690777, 36.031166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.747677, 36.685978, 36.735298>,  <35.979290, 36.445251, 36.012947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.747677, 36.685978, 36.735298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.410648, 36.574558, 36.550911>,  <35.208431, 36.507706, 36.440281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.410648, 36.574558, 36.550911>,  <35.747677, 36.685978, 36.735298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.410648, 36.574558, 36.550911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294669, -0.478004, 0.827455,
		-0.450834, 0.833019, 0.320669,
		-0.842567, -0.278554, -0.460965,
		35.157879, 36.490993, 36.412621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.232059, 36.530567, 37.262733>,  <35.747677, 36.685978, 36.735298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.232059, 36.530567, 37.262733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.037922, 36.383286, 36.945530>,  <34.921440, 36.294918, 36.755207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.037922, 36.383286, 36.945530>,  <35.232059, 36.530567, 37.262733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.037922, 36.383286, 36.945530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640252, -0.467992, 0.609147,
		-0.595413, 0.803374, -0.008605,
		-0.485346, -0.368203, -0.793011,
		34.892319, 36.272823, 36.707626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.584610, 36.667034, 37.416618>,  <35.232059, 36.530567, 37.262733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.584610, 36.667034, 37.416618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.590385, 36.372871, 37.145630>,  <34.593853, 36.196373, 36.983036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.590385, 36.372871, 37.145630>,  <34.584610, 36.667034, 37.416618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.590385, 36.372871, 37.145630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680105, -0.503894, 0.532492,
		-0.732972, 0.453061, -0.507432,
		0.014440, -0.735409, -0.677470,
		34.594719, 36.152248, 36.942390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.701435, 37.417442, 37.805950>,  <34.584610, 36.667034, 37.416618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.701435, 37.417442, 37.805950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.555737, 37.677155, 37.538887>,  <34.468319, 37.832981, 37.378651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.555737, 37.677155, 37.538887>,  <34.701435, 37.417442, 37.805950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.555737, 37.677155, 37.538887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099114, 0.685809, 0.721001,
		0.926013, 0.328797, -0.185451,
		-0.364247, 0.649276, -0.667656,
		34.446461, 37.871937, 37.338589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.172321, 37.376392, 38.409420>,  <34.701435, 37.417442, 37.805950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.172321, 37.376392, 38.409420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.811783, 37.370422, 38.582558>,  <33.595459, 37.366840, 38.686440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.811783, 37.370422, 38.582558>,  <34.172321, 37.376392, 38.409420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.811783, 37.370422, 38.582558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427017, 0.136247, 0.893920,
		-0.072316, 0.990562, -0.116433,
		-0.901347, -0.014926, 0.432840,
		33.541378, 37.365944, 38.712410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.517647, 37.418888, 39.001263>,  <34.172321, 37.376392, 38.409420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.517647, 37.418888, 39.001263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.613071, 37.141651, 38.729172>,  <34.670326, 36.975311, 38.565918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.613071, 37.141651, 38.729172>,  <34.517647, 37.418888, 39.001263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.613071, 37.141651, 38.729172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721122, -0.342721, 0.602101,
		-0.650440, -0.634168, 0.418042,
		0.238561, -0.693090, -0.680232,
		34.684639, 36.933723, 38.525101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.351574, 36.696556, 39.265388>,  <34.517647, 37.418888, 39.001263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.351574, 36.696556, 39.265388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.661968, 36.763458, 39.022121>,  <34.848206, 36.803600, 38.876160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.661968, 36.763458, 39.022121>,  <34.351574, 36.696556, 39.265388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.661968, 36.763458, 39.022121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628247, -0.290753, 0.721642,
		-0.056127, -0.942066, -0.330699,
		0.775986, 0.167257, -0.608170,
		34.894764, 36.813637, 38.839672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.664680, 36.055241, 39.317955>,  <34.351574, 36.696556, 39.265388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.664680, 36.055241, 39.317955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.900433, 36.369431, 39.242416>,  <35.041885, 36.557945, 39.197094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.900433, 36.369431, 39.242416>,  <34.664680, 36.055241, 39.317955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.900433, 36.369431, 39.242416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575471, -0.244147, 0.780529,
		0.566977, -0.568706, -0.595912,
		0.589382, 0.785472, -0.188848,
		35.077248, 36.605072, 39.185760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.401775, 35.789963, 39.319221>,  <34.664680, 36.055241, 39.317955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.401775, 35.789963, 39.319221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.355419, 36.178459, 39.402412>,  <35.327606, 36.411556, 39.452328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.355419, 36.178459, 39.402412>,  <35.401775, 35.789963, 39.319221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.355419, 36.178459, 39.402412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399022, -0.146226, 0.905207,
		0.909588, 0.187893, -0.370601,
		-0.115891, 0.971244, 0.207979,
		35.320652, 36.469833, 39.464806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.089176, 36.205818, 39.530361>,  <35.401775, 35.789963, 39.319221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.089176, 36.205818, 39.530361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.748863, 36.335854, 39.695518>,  <35.544674, 36.413876, 39.794613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.748863, 36.335854, 39.695518>,  <36.089176, 36.205818, 39.530361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.748863, 36.335854, 39.695518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382016, -0.156949, 0.910731,
		0.360869, 0.932570, 0.009342,
		-0.850786, 0.325086, 0.412894,
		35.493626, 36.433380, 39.819386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.235451, 36.626484, 39.972675>,  <36.089176, 36.205818, 39.530361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.235451, 36.626484, 39.972675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.904709, 36.430870, 40.083790>,  <35.706264, 36.313503, 40.150459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.904709, 36.430870, 40.083790>,  <36.235451, 36.626484, 39.972675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.904709, 36.430870, 40.083790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474868, -0.342385, 0.810724,
		-0.301358, 0.802261, 0.515326,
		-0.826852, -0.489030, 0.277787,
		35.656654, 36.284161, 40.167126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.006622, 36.851608, 40.741131>,  <36.235451, 36.626484, 39.972675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.006622, 36.851608, 40.741131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.901665, 36.479122, 40.639950>,  <35.838692, 36.255630, 40.579239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.901665, 36.479122, 40.639950>,  <36.006622, 36.851608, 40.741131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.901665, 36.479122, 40.639950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487197, -0.354122, 0.798271,
		-0.832939, 0.086224, 0.546605,
		-0.262395, -0.931216, -0.252954,
		35.822945, 36.199757, 40.564064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.480312, 37.425388, 40.765018>,  <36.006622, 36.851608, 40.741131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.480312, 37.425388, 40.765018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.838757, 37.315517, 40.904472>,  <37.053822, 37.249596, 40.988144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.838757, 37.315517, 40.904472>,  <36.480312, 37.425388, 40.765018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.838757, 37.315517, 40.904472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344679, -0.064199, -0.936523,
		0.279620, 0.959392, 0.037145,
		0.896108, -0.274673, 0.348634,
		37.107590, 37.233116, 41.009064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.023727, 37.890598, 40.707642>,  <36.480312, 37.425388, 40.765018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.023727, 37.890598, 40.707642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.209209, 37.537228, 40.734585>,  <37.320499, 37.325207, 40.750751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.209209, 37.537228, 40.734585>,  <37.023727, 37.890598, 40.707642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.209209, 37.537228, 40.734585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640003, 0.281420, -0.714981,
		0.612676, 0.374651, 0.695891,
		0.463706, -0.883425, 0.067358,
		37.348320, 37.272202, 40.754791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.720242, 37.977596, 40.767986>,  <37.023727, 37.890598, 40.707642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.720242, 37.977596, 40.767986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.642643, 37.638783, 40.570038>,  <37.596085, 37.435493, 40.451267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.642643, 37.638783, 40.570038>,  <37.720242, 37.977596, 40.767986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.642643, 37.638783, 40.570038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427794, 0.380922, -0.819689,
		0.882813, -0.370718, 0.288459,
		-0.193993, -0.847034, -0.494874,
		37.584446, 37.384674, 40.421577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.367718, 37.639629, 40.467850>,  <37.720242, 37.977596, 40.767986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.367718, 37.639629, 40.467850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.037807, 37.571926, 40.252037>,  <37.839863, 37.531303, 40.122551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.037807, 37.571926, 40.252037>,  <38.367718, 37.639629, 40.467850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.037807, 37.571926, 40.252037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493546, 0.250172, -0.832962,
		0.275965, -0.953291, -0.122797,
		-0.824776, -0.169263, -0.539532,
		37.790375, 37.521149, 40.090179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.567867, 37.304153, 39.881115>,  <38.367718, 37.639629, 40.467850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.567867, 37.304153, 39.881115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.204517, 37.434414, 39.776188>,  <37.986507, 37.512569, 39.713230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.204517, 37.434414, 39.776188>,  <38.567867, 37.304153, 39.881115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.204517, 37.434414, 39.776188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360951, 0.293905, -0.885062,
		-0.211127, -0.898649, -0.384520,
		-0.908372, 0.325653, -0.262317,
		37.932007, 37.532108, 39.697495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.414299, 37.047401, 39.170303>,  <38.567867, 37.304153, 39.881115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.414299, 37.047401, 39.170303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.199997, 37.376034, 39.248245>,  <38.071415, 37.573212, 39.295010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.199997, 37.376034, 39.248245>,  <38.414299, 37.047401, 39.170303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.199997, 37.376034, 39.248245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295446, 0.398586, -0.868240,
		-0.790996, -0.407596, -0.456278,
		-0.535757, 0.821580, 0.194857,
		38.039268, 37.622509, 39.306702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.872189, 37.146130, 38.666294>,  <38.414299, 37.047401, 39.170303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.872189, 37.146130, 38.666294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.016922, 37.484760, 38.822445>,  <38.103760, 37.687939, 38.916134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.016922, 37.484760, 38.822445>,  <37.872189, 37.146130, 38.666294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.016922, 37.484760, 38.822445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402252, 0.235980, -0.884594,
		-0.840995, 0.477100, -0.255152,
		0.361829, 0.846574, 0.390373,
		38.125469, 37.738731, 38.939556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.577221, 37.775291, 38.250317>,  <37.872189, 37.146130, 38.666294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.577221, 37.775291, 38.250317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.927292, 37.868843, 38.419720>,  <38.137337, 37.924976, 38.521362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.927292, 37.868843, 38.419720>,  <37.577221, 37.775291, 38.250317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.927292, 37.868843, 38.419720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394207, 0.162740, -0.904498,
		-0.280469, 0.958548, 0.050228,
		0.875179, 0.233883, 0.423510,
		38.189846, 37.939007, 38.546772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.766514, 38.445015, 37.977955>,  <37.577221, 37.775291, 38.250317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.766514, 38.445015, 37.977955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.084900, 38.218182, 38.062668>,  <38.275932, 38.082081, 38.113495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.084900, 38.218182, 38.062668>,  <37.766514, 38.445015, 37.977955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.084900, 38.218182, 38.062668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369679, 0.178336, -0.911885,
		0.479344, 0.804124, 0.351588,
		0.795969, -0.567081, 0.211783,
		38.323692, 38.048058, 38.126202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.346737, 38.795952, 37.916248>,  <37.766514, 38.445015, 37.977955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.346737, 38.795952, 37.916248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.476440, 38.421459, 37.862099>,  <38.554264, 38.196762, 37.829609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.476440, 38.421459, 37.862099>,  <38.346737, 38.795952, 37.916248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.476440, 38.421459, 37.862099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024547, 0.151381, -0.988171,
		0.945649, 0.317101, 0.072069,
		0.324260, -0.936232, -0.135369,
		38.573719, 38.140591, 37.821487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.014294, 38.764992, 37.525570>,  <38.346737, 38.795952, 37.916248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.014294, 38.764992, 37.525570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.742825, 38.474190, 37.483864>,  <38.579945, 38.299709, 37.458839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.742825, 38.474190, 37.483864>,  <39.014294, 38.764992, 37.525570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.742825, 38.474190, 37.483864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138543, 0.266145, -0.953925,
		0.721254, -0.632958, -0.281347,
		-0.678674, -0.727001, -0.104266,
		38.539223, 38.256088, 37.452583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.293861, 38.228329, 37.069599>,  <39.014294, 38.764992, 37.525570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.293861, 38.228329, 37.069599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.904129, 38.318268, 37.074081>,  <38.670288, 38.372231, 37.076771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.904129, 38.318268, 37.074081>,  <39.293861, 38.228329, 37.069599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.904129, 38.318268, 37.074081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046902, 0.251419, -0.966741,
		-0.220186, -0.941399, -0.255511,
		-0.974330, 0.224847, 0.011205,
		38.611832, 38.385723, 37.077442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.920795, 37.749500, 36.704231>,  <39.293861, 38.228329, 37.069599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.920795, 37.749500, 36.704231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.821457, 38.136745, 36.717426>,  <38.761852, 38.369091, 36.725342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.821457, 38.136745, 36.717426>,  <38.920795, 37.749500, 36.704231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.821457, 38.136745, 36.717426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223301, 0.090351, -0.970553,
		-0.942582, -0.233669, -0.238619,
		-0.248347, 0.968109, 0.032985,
		38.746952, 38.427177, 36.727322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.404419, 37.927757, 36.289211>,  <38.920795, 37.749500, 36.704231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.404419, 37.927757, 36.289211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.632896, 38.253761, 36.328197>,  <38.769981, 38.449364, 36.351589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.632896, 38.253761, 36.328197>,  <38.404419, 37.927757, 36.289211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.632896, 38.253761, 36.328197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019754, 0.132361, -0.991005,
		-0.820578, 0.564129, 0.091703,
		0.571192, 0.815009, 0.097469,
		38.804253, 38.498264, 36.357437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.081398, 38.381905, 35.902195>,  <38.404419, 37.927757, 36.289211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.081398, 38.381905, 35.902195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.476048, 38.441128, 35.929504>,  <38.712837, 38.476662, 35.945889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.476048, 38.441128, 35.929504>,  <38.081398, 38.381905, 35.902195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.476048, 38.441128, 35.929504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071207, -0.014611, -0.997355,
		-0.146671, 0.988870, -0.024958,
		0.986619, 0.148061, 0.068271,
		38.772034, 38.485546, 35.949986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.592426, 37.776642, 35.732323>,  <38.081398, 38.381905, 35.902195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.592426, 37.776642, 35.732323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.928959, 37.749470, 35.517830>,  <38.130878, 37.733166, 35.389133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.928959, 37.749470, 35.517830>,  <37.592426, 37.776642, 35.732323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.928959, 37.749470, 35.517830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483543, 0.537914, 0.690532,
		0.241540, -0.840259, 0.485411,
		0.841335, -0.067927, -0.536229,
		38.181358, 37.729092, 35.356960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.118504, 37.229458, 35.790974>,  <37.592426, 37.776642, 35.732323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.118504, 37.229458, 35.790974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.457043, 37.271454, 35.582100>,  <38.660168, 37.296650, 35.456776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.457043, 37.271454, 35.582100>,  <38.118504, 37.229458, 35.790974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.457043, 37.271454, 35.582100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522313, -0.355634, 0.775057,
		-0.104335, -0.928710, -0.355826,
		0.846347, 0.104987, -0.522183,
		38.710945, 37.302952, 35.425446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.680550, 36.656891, 35.625912>,  <38.118504, 37.229458, 35.790974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.680550, 36.656891, 35.625912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.884277, 37.001080, 35.631245>,  <39.006512, 37.207592, 35.634445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.884277, 37.001080, 35.631245>,  <38.680550, 36.656891, 35.625912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.884277, 37.001080, 35.631245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679285, -0.411484, 0.607662,
		0.528364, -0.300436, -0.794084,
		0.509316, 0.860476, 0.013332,
		39.037071, 37.259224, 35.635242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.208771, 36.657707, 36.091896>,  <38.680550, 36.656891, 35.625912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.208771, 36.657707, 36.091896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.124756, 36.314503, 36.279385>,  <39.074348, 36.108582, 36.391880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.124756, 36.314503, 36.279385>,  <39.208771, 36.657707, 36.091896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.124756, 36.314503, 36.279385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549727, -0.292816, -0.782342,
		0.808508, -0.421992, -0.410169,
		-0.210038, -0.858010, 0.468724,
		39.061745, 36.057098, 36.420002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.464981, 36.024075, 35.668499>,  <39.208771, 36.657707, 36.091896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.464981, 36.024075, 35.668499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.148388, 35.983494, 35.909584>,  <38.958431, 35.959145, 36.054237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.148388, 35.983494, 35.909584>,  <39.464981, 36.024075, 35.668499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.148388, 35.983494, 35.909584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557527, -0.284236, -0.779983,
		0.250444, -0.953372, 0.168405,
		-0.791480, -0.101451, 0.602716,
		38.910942, 35.953060, 36.090397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.045853, 36.386993, 35.404675>,  <39.464981, 36.024075, 35.668499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.045853, 36.386993, 35.404675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.156845, 36.528496, 35.047382>,  <40.223442, 36.613396, 34.833008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.156845, 36.528496, 35.047382>,  <40.045853, 36.386993, 35.404675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.156845, 36.528496, 35.047382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055476, 0.922291, 0.382494,
		0.959128, -0.155688, 0.236295,
		0.277482, 0.353752, -0.893232,
		40.240089, 36.634621, 34.779411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.027634, 35.950119, 34.807140>,  <40.045853, 36.386993, 35.404675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.027634, 35.950119, 34.807140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.924305, 35.998528, 34.423759>,  <39.862309, 36.027573, 34.193733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.924305, 35.998528, 34.423759>,  <40.027634, 35.950119, 34.807140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.924305, 35.998528, 34.423759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830757, -0.478538, -0.284331,
		-0.493064, -0.869687, 0.023080,
		-0.258323, 0.121019, -0.958448,
		39.846809, 36.034832, 34.136227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.745861, 35.272560, 34.391613>,  <40.027634, 35.950119, 34.807140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.745861, 35.272560, 34.391613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.928112, 35.515354, 34.131161>,  <40.037464, 35.661030, 33.974888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.928112, 35.515354, 34.131161>,  <39.745861, 35.272560, 34.391613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.928112, 35.515354, 34.131161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698554, -0.697187, -0.161099,
		-0.551745, -0.381449, -0.741670,
		0.455632, 0.606982, -0.651132,
		40.064800, 35.697449, 33.935822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.048061, 34.822414, 33.833153>,  <39.745861, 35.272560, 34.391613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.048061, 34.822414, 33.833153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.265640, 35.151283, 33.900276>,  <40.396187, 35.348606, 33.940548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.265640, 35.151283, 33.900276>,  <40.048061, 34.822414, 33.833153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.265640, 35.151283, 33.900276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835643, -0.548938, -0.019204,
		0.076325, 0.150670, -0.985633,
		0.543945, 0.822171, 0.167804,
		40.428825, 35.397934, 33.950619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.562008, 34.748138, 33.425514>,  <40.048061, 34.822414, 33.833153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.562008, 34.748138, 33.425514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.618202, 34.957214, 33.761864>,  <40.651917, 35.082661, 33.963673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.618202, 34.957214, 33.761864>,  <40.562008, 34.748138, 33.425514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.618202, 34.957214, 33.761864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722516, -0.634793, 0.273878,
		0.676931, 0.569068, -0.466825,
		0.140482, 0.522685, 0.840872,
		40.660347, 35.114021, 34.014126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.316895, 35.067837, 33.633984>,  <40.562008, 34.748138, 33.425514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.316895, 35.067837, 33.633984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.092182, 34.966145, 33.948887>,  <40.957355, 34.905128, 34.137829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.092182, 34.966145, 33.948887>,  <41.316895, 35.067837, 33.633984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.092182, 34.966145, 33.948887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695211, -0.660895, 0.282666,
		0.448430, 0.706104, 0.548021,
		-0.561776, -0.254234, 0.787256,
		40.923649, 34.889874, 34.185062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.818336, 35.058224, 34.227245>,  <41.316895, 35.067837, 33.633984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.818336, 35.058224, 34.227245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.498245, 34.820957, 34.191940>,  <41.306190, 34.678596, 34.170757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.498245, 34.820957, 34.191940>,  <41.818336, 35.058224, 34.227245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.498245, 34.820957, 34.191940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509406, -0.750007, 0.421895,
		-0.316453, 0.292649, 0.902338,
		-0.800227, -0.593166, -0.088265,
		41.258179, 34.643005, 34.165462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.863495, 34.772854, 34.842125>,  <41.818336, 35.058224, 34.227245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.863495, 34.772854, 34.842125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.638481, 34.554054, 34.594147>,  <41.503471, 34.422775, 34.445358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.638481, 34.554054, 34.594147>,  <41.863495, 34.772854, 34.842125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.638481, 34.554054, 34.594147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444240, -0.832385, 0.331341,
		-0.697281, -0.089015, 0.711249,
		-0.562539, -0.547003, -0.619950,
		41.469719, 34.389954, 34.408161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.430450, 34.275352, 35.073105>,  <41.863495, 34.772854, 34.842125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.430450, 34.275352, 35.073105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.536495, 34.140438, 34.711784>,  <41.600121, 34.059490, 34.494991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.536495, 34.140438, 34.711784>,  <41.430450, 34.275352, 35.073105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.536495, 34.140438, 34.711784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427659, -0.798506, 0.423669,
		-0.864191, -0.498623, -0.067445,
		0.265107, -0.337287, -0.903303,
		41.616028, 34.039253, 34.440792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.135754, 33.581829, 34.945942>,  <41.430450, 34.275352, 35.073105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.135754, 33.581829, 34.945942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.485073, 33.645248, 34.761677>,  <41.694664, 33.683300, 34.651119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.485073, 33.645248, 34.761677>,  <41.135754, 33.581829, 34.945942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.485073, 33.645248, 34.761677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315988, -0.904031, 0.287889,
		-0.370806, -0.396977, -0.839590,
		0.873300, 0.158550, -0.460660,
		41.747063, 33.692814, 34.623478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.165169, 33.156418, 34.410088>,  <41.135754, 33.581829, 34.945942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.165169, 33.156418, 34.410088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.498058, 33.270420, 34.600319>,  <41.697792, 33.338821, 34.714458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.498058, 33.270420, 34.600319>,  <41.165169, 33.156418, 34.410088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.498058, 33.270420, 34.600319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199505, -0.954245, 0.222743,
		0.517305, -0.090490, -0.851003,
		0.832222, 0.285006, 0.475583,
		41.747726, 33.355923, 34.742992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.778248, 32.699253, 34.216648>,  <41.165169, 33.156418, 34.410088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.778248, 32.699253, 34.216648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.824532, 32.848484, 34.584869>,  <41.852303, 32.938023, 34.805801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.824532, 32.848484, 34.584869>,  <41.778248, 32.699253, 34.216648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.824532, 32.848484, 34.584869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192930, -0.917572, 0.347621,
		0.974366, 0.137380, -0.178148,
		0.115707, 0.373080, 0.920556,
		41.859245, 32.960407, 34.861034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.403736, 32.478863, 34.440773>,  <41.778248, 32.699253, 34.216648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.403736, 32.478863, 34.440773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.168270, 32.541424, 34.758015>,  <42.026989, 32.578960, 34.948360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.168270, 32.541424, 34.758015>,  <42.403736, 32.478863, 34.440773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.168270, 32.541424, 34.758015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151915, -0.942221, 0.298567,
		0.793975, 0.296240, 0.530891,
		-0.588664, 0.156405, 0.793103,
		41.991673, 32.588345, 34.995945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.840084, 31.943003, 34.529255>,  <42.403736, 32.478863, 34.440773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.840084, 31.943003, 34.529255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.640930, 32.164028, 34.796623>,  <42.521439, 32.296642, 34.957043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.640930, 32.164028, 34.796623>,  <42.840084, 31.943003, 34.529255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.640930, 32.164028, 34.796623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282925, -0.832061, 0.477103,
		0.819797, 0.048429, 0.570603,
		-0.497882, 0.552565, 0.668420,
		42.491566, 32.329800, 34.997150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.657379, 31.195654, 34.644886>,  <42.840084, 31.943003, 34.529255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.657379, 31.195654, 34.644886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.595455, 31.211054, 34.250008>,  <42.558300, 31.220293, 34.013081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.595455, 31.211054, 34.250008>,  <42.657379, 31.195654, 34.644886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.595455, 31.211054, 34.250008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771420, 0.619553, 0.145135,
		0.617207, 0.784010, -0.066213,
		-0.154810, 0.038501, -0.987194,
		42.549011, 31.222605, 33.953850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.383228, 31.319544, 34.832771>,  <42.657379, 31.195654, 34.644886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.383228, 31.319544, 34.832771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.694897, 31.427912, 35.058865>,  <43.881897, 31.492933, 35.194523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.694897, 31.427912, 35.058865>,  <43.383228, 31.319544, 34.832771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.694897, 31.427912, 35.058865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511851, 0.795517, 0.324287,
		-0.361800, -0.541992, 0.758515,
		0.779172, 0.270920, 0.565237,
		43.928650, 31.509188, 35.228436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.173061, 31.626827, 35.510464>,  <43.383228, 31.319544, 34.832771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.173061, 31.626827, 35.510464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.541439, 31.771217, 35.451733>,  <43.762466, 31.857851, 35.416492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.541439, 31.771217, 35.451733>,  <43.173061, 31.626827, 35.510464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.541439, 31.771217, 35.451733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321084, 0.916392, 0.239021,
		0.220832, -0.172981, 0.959850,
		0.920944, 0.360976, -0.146827,
		43.817722, 31.879511, 35.407684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.946976, 32.383976, 35.620308>,  <43.173061, 31.626827, 35.510464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.946976, 32.383976, 35.620308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.775967, 32.741463, 35.674713>,  <42.673363, 32.955956, 35.707355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.775967, 32.741463, 35.674713>,  <42.946976, 32.383976, 35.620308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.775967, 32.741463, 35.674713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721251, -0.246507, -0.647327,
		-0.544998, -0.374843, 0.749980,
		-0.427521, 0.893715, 0.136010,
		42.647709, 33.009579, 35.715515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.282978, 32.303417, 35.887356>,  <42.946976, 32.383976, 35.620308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.282978, 32.303417, 35.887356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.310116, 32.635494, 35.666019>,  <42.326397, 32.834740, 35.533218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.310116, 32.635494, 35.666019>,  <42.282978, 32.303417, 35.887356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.310116, 32.635494, 35.666019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564162, -0.425508, -0.707576,
		-0.822872, 0.360176, 0.439494,
		0.067844, 0.830191, -0.553336,
		42.330467, 32.884552, 35.500019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.475887, 32.137035, 36.581844>,  <42.282978, 32.303417, 35.887356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.475887, 32.137035, 36.581844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.836876, 32.306011, 36.615540>,  <43.053467, 32.407398, 36.635757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.836876, 32.306011, 36.615540>,  <42.475887, 32.137035, 36.581844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.836876, 32.306011, 36.615540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429328, 0.866199, 0.255688,
		0.035042, -0.266917, 0.963082,
		0.902468, 0.422438, 0.084241,
		43.107616, 32.432743, 36.640812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.549595, 32.446815, 37.264889>,  <42.475887, 32.137035, 36.581844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.549595, 32.446815, 37.264889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.768734, 32.631901, 36.986103>,  <42.900219, 32.742950, 36.818832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.768734, 32.631901, 36.986103>,  <42.549595, 32.446815, 37.264889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.768734, 32.631901, 36.986103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326828, 0.885286, 0.330836,
		0.770096, 0.046541, 0.636228,
		0.547846, 0.462713, -0.696966,
		42.933086, 32.770714, 36.777012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.859749, 33.021870, 37.543911>,  <42.549595, 32.446815, 37.264889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.859749, 33.021870, 37.543911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.818390, 33.092499, 37.152374>,  <42.793575, 33.134876, 36.917454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.818390, 33.092499, 37.152374>,  <42.859749, 33.021870, 37.543911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.818390, 33.092499, 37.152374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494596, 0.844692, 0.204620,
		0.862950, 0.505289, -0.000009,
		-0.103400, 0.176573, -0.978841,
		42.787369, 33.145470, 36.858723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.166569, 33.660522, 37.331795>,  <42.859749, 33.021870, 37.543911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.166569, 33.660522, 37.331795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.883186, 33.584263, 37.059990>,  <42.713158, 33.538509, 36.896908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.883186, 33.584263, 37.059990>,  <43.166569, 33.660522, 37.331795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.883186, 33.584263, 37.059990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443967, 0.868839, 0.219116,
		0.548615, 0.456916, -0.700179,
		-0.708460, -0.190646, -0.679513,
		42.670647, 33.527069, 36.856136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.892731, 33.737171, 37.199551>,  <43.166569, 33.660522, 37.331795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.892731, 33.737171, 37.199551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.283195, 33.769478, 37.280128>,  <44.517475, 33.788860, 37.328476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.283195, 33.769478, 37.280128>,  <43.892731, 33.737171, 37.199551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.283195, 33.769478, 37.280128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118351, -0.976123, -0.182148,
		0.181927, 0.201648, -0.962414,
		0.976164, 0.080765, 0.201448,
		44.576046, 33.793709, 37.340565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.346546, 33.412647, 36.561493>,  <43.892731, 33.737171, 37.199551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.346546, 33.412647, 36.561493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.465694, 33.392757, 36.942818>,  <44.537186, 33.380821, 37.171612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.465694, 33.392757, 36.942818>,  <44.346546, 33.412647, 36.561493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.465694, 33.392757, 36.942818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044060, -0.996862, -0.065765,
		0.953588, 0.061592, -0.294747,
		0.297873, -0.049727, 0.953310,
		44.555058, 33.377838, 37.228809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.927048, 32.928978, 36.616184>,  <44.346546, 33.412647, 36.561493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.927048, 32.928978, 36.616184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.757298, 32.941586, 36.978161>,  <44.655449, 32.949150, 37.195347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.757298, 32.941586, 36.978161>,  <44.927048, 32.928978, 36.616184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.757298, 32.941586, 36.978161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019364, -0.998850, 0.043868,
		0.905280, 0.036140, 0.423275,
		-0.424373, 0.031516, 0.904939,
		44.629986, 32.951042, 37.249641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.219772, 32.153557, 36.318558>,  <44.927048, 32.928978, 36.616184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.219772, 32.153557, 36.318558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.208778, 32.525330, 36.171371>,  <45.202183, 32.748394, 36.083061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.208778, 32.525330, 36.171371>,  <45.219772, 32.153557, 36.318558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.208778, 32.525330, 36.171371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635213, -0.267990, -0.724352,
		-0.771848, -0.253643, -0.583023,
		-0.027483, 0.929434, -0.367964,
		45.200535, 32.804161, 36.060982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.993141, 32.188339, 35.541054>,  <45.219772, 32.153557, 36.318558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.993141, 32.188339, 35.541054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.268135, 32.439110, 35.687664>,  <45.433132, 32.589573, 35.775631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.268135, 32.439110, 35.687664>,  <44.993141, 32.188339, 35.541054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.268135, 32.439110, 35.687664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651743, -0.310021, -0.692184,
		-0.320315, 0.714742, -0.621725,
		0.687481, 0.626922, 0.366523,
		45.474380, 32.627186, 35.797623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.448345, 32.556454, 34.992035>,  <44.993141, 32.188339, 35.541054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.448345, 32.556454, 34.992035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.677574, 32.597095, 35.317307>,  <45.815113, 32.621483, 35.512470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.677574, 32.597095, 35.317307>,  <45.448345, 32.556454, 34.992035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.677574, 32.597095, 35.317307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819493, -0.075582, -0.568083,
		0.003740, 0.991949, -0.126581,
		0.573077, 0.101607, 0.813178,
		45.849499, 32.627579, 35.561260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.968792, 33.199612, 35.137417>,  <45.448345, 32.556454, 34.992035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.968792, 33.199612, 35.137417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.960754, 33.597336, 35.179245>,  <45.955933, 33.835972, 35.204342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.960754, 33.597336, 35.179245>,  <45.968792, 33.199612, 35.137417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.960754, 33.597336, 35.179245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698124, 0.088828, -0.710446,
		-0.715695, 0.058728, -0.695939,
		-0.020096, 0.994314, 0.104573,
		45.954727, 33.895630, 35.210617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.052914, 33.469986, 34.401737>,  <45.968792, 33.199612, 35.137417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.052914, 33.469986, 34.401737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.183849, 33.771515, 34.629631>,  <46.262409, 33.952435, 34.766365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.183849, 33.771515, 34.629631>,  <46.052914, 33.469986, 34.401737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.183849, 33.771515, 34.629631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554634, 0.334869, -0.761737,
		-0.765003, 0.565340, -0.308482,
		0.327340, 0.753826, 0.569733,
		46.282051, 33.997662, 34.800552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.983746, 34.065590, 34.015732>,  <46.052914, 33.469986, 34.401737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.983746, 34.065590, 34.015732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.234974, 34.194401, 34.299091>,  <46.385712, 34.271687, 34.469109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.234974, 34.194401, 34.299091>,  <45.983746, 34.065590, 34.015732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.234974, 34.194401, 34.299091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508935, 0.518669, -0.686999,
		-0.588655, 0.792012, 0.161871,
		0.628069, 0.322024, 0.708400,
		46.423393, 34.291008, 34.511612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.898132, 34.755363, 34.389423>,  <45.983746, 34.065590, 34.015732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.898132, 34.755363, 34.389423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.263359, 34.626194, 34.289803>,  <46.482494, 34.548691, 34.230030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.263359, 34.626194, 34.289803>,  <45.898132, 34.755363, 34.389423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.263359, 34.626194, 34.289803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225576, 0.908703, -0.351247,
		0.339738, 0.264533, 0.902552,
		0.913068, -0.322926, -0.249049,
		46.537281, 34.529316, 34.215088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.120987, 35.403751, 34.208889>,  <45.898132, 34.755363, 34.389423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.120987, 35.403751, 34.208889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.432236, 35.170959, 34.114380>,  <46.618984, 35.031284, 34.057674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.432236, 35.170959, 34.114380>,  <46.120987, 35.403751, 34.208889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.432236, 35.170959, 34.114380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397741, 0.747682, -0.531765,
		0.486131, 0.319805, 0.813266,
		0.778125, -0.581976, -0.236271,
		46.665672, 34.996368, 34.043499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.744598, 35.788467, 34.327682>,  <46.120987, 35.403751, 34.208889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.744598, 35.788467, 34.327682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.803062, 35.502636, 34.054035>,  <46.838142, 35.331139, 33.889847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.803062, 35.502636, 34.054035>,  <46.744598, 35.788467, 34.327682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.803062, 35.502636, 34.054035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316547, 0.688969, -0.652011,
		0.937249, -0.121258, 0.326897,
		0.146160, -0.714575, -0.684120,
		46.846912, 35.288265, 33.848801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.435986, 35.592640, 34.034725>,  <46.744598, 35.788467, 34.327682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.435986, 35.592640, 34.034725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.264984, 35.659409, 34.390114>,  <47.162384, 35.699471, 34.603348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.264984, 35.659409, 34.390114>,  <47.435986, 35.592640, 34.034725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.264984, 35.659409, 34.390114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016673, -0.984093, 0.176869,
		0.903861, 0.060799, 0.423485,
		-0.427502, 0.166926, 0.888469,
		47.136734, 35.709488, 34.656654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.961693, 35.393394, 34.510941>,  <47.435986, 35.592640, 34.034725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.961693, 35.393394, 34.510941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.573460, 35.360359, 34.601406>,  <47.340519, 35.340538, 34.655685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.573460, 35.360359, 34.601406>,  <47.961693, 35.393394, 34.510941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.573460, 35.360359, 34.601406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120508, -0.979839, 0.159353,
		0.208442, 0.181920, 0.960967,
		-0.970582, -0.082588, 0.226163,
		47.282284, 35.335583, 34.669254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.992329, 35.024120, 35.233257>,  <47.961693, 35.393394, 34.510941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.992329, 35.024120, 35.233257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.689892, 34.984886, 34.974426>,  <47.508430, 34.961346, 34.819126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.689892, 34.984886, 34.974426>,  <47.992329, 35.024120, 35.233257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.689892, 34.984886, 34.974426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009143, -0.987027, 0.160294,
		-0.654406, 0.127113, 0.745383,
		-0.756088, -0.098082, -0.647079,
		47.463066, 34.955460, 34.780304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.519882, 37.281788, 27.074007> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.167183, 37.467213, 27.039076>,  <35.955563, 37.578468, 27.018118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.167183, 37.467213, 27.039076>,  <36.519882, 37.281788, 27.074007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.167183, 37.467213, 27.039076> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318505, -0.448518, 0.835096,
		0.347948, 0.764163, 0.543128,
		-0.881752, 0.463559, -0.087329,
		35.902657, 37.606281, 27.012877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.408192, 37.697735, 27.737951>,  <36.519882, 37.281788, 27.074007>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.408192, 37.697735, 27.737951> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.051174, 37.645306, 27.565357>,  <35.836964, 37.613846, 27.461802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.051174, 37.645306, 27.565357>,  <36.408192, 37.697735, 27.737951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.051174, 37.645306, 27.565357> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420961, -0.100940, 0.901445,
		-0.161713, 0.986220, 0.034916,
		-0.892547, -0.131077, -0.431483,
		35.783409, 37.605984, 27.435913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.046551, 38.140915, 28.121746>,  <36.408192, 37.697735, 27.737951>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.046551, 38.140915, 28.121746> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.777161, 37.894814, 27.957844>,  <35.615528, 37.747154, 27.859503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.777161, 37.894814, 27.957844>,  <36.046551, 38.140915, 28.121746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.777161, 37.894814, 27.957844> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510007, -0.014518, 0.860048,
		-0.535095, 0.788197, -0.304005,
		-0.673473, -0.615252, -0.409754,
		35.575119, 37.710239, 27.834917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.462383, 38.353371, 28.393921>,  <36.046551, 38.140915, 28.121746>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.462383, 38.353371, 28.393921> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.344276, 38.006653, 28.233181>,  <35.273411, 37.798622, 28.136738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.344276, 38.006653, 28.233181>,  <35.462383, 38.353371, 28.393921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.344276, 38.006653, 28.233181> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498369, -0.219112, 0.838820,
		-0.815135, 0.447946, -0.367287,
		-0.295269, -0.866795, -0.401848,
		35.255695, 37.746613, 28.112627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.726719, 38.182686, 28.618553>,  <35.462383, 38.353371, 28.393921>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.726719, 38.182686, 28.618553> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.894859, 37.837032, 28.507870>,  <34.995743, 37.629639, 28.441460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.894859, 37.837032, 28.507870>,  <34.726719, 38.182686, 28.618553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.894859, 37.837032, 28.507870> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560642, -0.487140, 0.669608,
		-0.713431, -0.126336, -0.689243,
		0.420353, -0.864138, -0.276711,
		35.020966, 37.577789, 28.424856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.148621, 37.690159, 28.369370>,  <34.726719, 38.182686, 28.618553>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.148621, 37.690159, 28.369370> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.459213, 37.476665, 28.503363>,  <34.645569, 37.348572, 28.583757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.459213, 37.476665, 28.503363>,  <34.148621, 37.690159, 28.369370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.459213, 37.476665, 28.503363> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615518, -0.528539, 0.584623,
		-0.134981, -0.660134, -0.738920,
		0.776478, -0.533731, 0.334982,
		34.692158, 37.316547, 28.603857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.827656, 37.062836, 28.514338>,  <34.148621, 37.690159, 28.369370>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.827656, 37.062836, 28.514338> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.171322, 37.036995, 28.717381>,  <34.377522, 37.021492, 28.839207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.171322, 37.036995, 28.717381>,  <33.827656, 37.062836, 28.514338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.171322, 37.036995, 28.717381> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463998, -0.516595, 0.719609,
		0.215741, -0.853790, -0.473813,
		0.859164, -0.064599, 0.507607,
		34.429070, 37.017616, 28.869663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.692177, 36.381500, 28.862637>,  <33.827656, 37.062836, 28.514338>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.692177, 36.381500, 28.862637> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.010773, 36.538715, 29.046427>,  <34.201931, 36.633045, 29.156702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.010773, 36.538715, 29.046427>,  <33.692177, 36.381500, 28.862637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.010773, 36.538715, 29.046427> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310387, -0.386369, 0.868550,
		0.518902, -0.834409, -0.185745,
		0.796492, 0.393040, 0.459478,
		34.249722, 36.656628, 29.184271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.092205, 35.839348, 29.054913>,  <33.692177, 36.381500, 28.862637>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.092205, 35.839348, 29.054913> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.196072, 36.141251, 29.295883>,  <34.258392, 36.322392, 29.440466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.196072, 36.141251, 29.295883>,  <34.092205, 35.839348, 29.054913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.196072, 36.141251, 29.295883> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334456, -0.514930, 0.789295,
		0.905933, -0.406437, 0.118724,
		0.259664, 0.754756, 0.602427,
		34.273972, 36.367676, 29.476612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.440300, 35.594307, 29.589476>,  <34.092205, 35.839348, 29.054913>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.440300, 35.594307, 29.589476> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.289017, 35.938316, 29.726488>,  <34.198246, 36.144722, 29.808695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.289017, 35.938316, 29.726488>,  <34.440300, 35.594307, 29.589476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.289017, 35.938316, 29.726488> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394688, -0.484502, 0.780691,
		0.837367, 0.160068, 0.522681,
		-0.378204, 0.860021, 0.342529,
		34.175556, 36.196323, 29.829247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.676498, 35.618698, 30.211910>,  <34.440300, 35.594307, 29.589476>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.676498, 35.618698, 30.211910> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.358196, 35.859562, 30.237759>,  <34.167213, 36.004082, 30.253267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.358196, 35.859562, 30.237759>,  <34.676498, 35.618698, 30.211910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.358196, 35.859562, 30.237759> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212686, -0.377775, 0.901139,
		0.567041, 0.703344, 0.428688,
		-0.795758, 0.602158, 0.064622,
		34.119469, 36.040211, 30.257145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.677628, 35.968853, 30.889215>,  <34.676498, 35.618698, 30.211910>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.677628, 35.968853, 30.889215> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.293659, 35.976601, 30.777380>,  <34.063278, 35.981251, 30.710279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.293659, 35.976601, 30.777380>,  <34.677628, 35.968853, 30.889215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.293659, 35.976601, 30.777380> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277029, -0.216627, 0.936124,
		-0.042430, 0.976062, 0.213313,
		-0.959924, 0.019374, -0.279589,
		34.005680, 35.982414, 30.693502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.288300, 36.190285, 31.481907>,  <34.677628, 35.968853, 30.889215>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.288300, 36.190285, 31.481907> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.982349, 36.055302, 31.262419>,  <33.798779, 35.974312, 31.130726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.982349, 36.055302, 31.262419>,  <34.288300, 36.190285, 31.481907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.982349, 36.055302, 31.262419> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560263, -0.071908, 0.825188,
		-0.317919, 0.938592, -0.134062,
		-0.764874, -0.337453, -0.548719,
		33.752888, 35.954067, 31.097803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.621681, 36.623417, 31.660210>,  <34.288300, 36.190285, 31.481907>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.621681, 36.623417, 31.660210> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.500576, 36.280224, 31.494223>,  <33.427914, 36.074306, 31.394630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.500576, 36.280224, 31.494223>,  <33.621681, 36.623417, 31.660210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.500576, 36.280224, 31.494223> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610289, -0.159899, 0.775874,
		-0.732040, 0.488158, -0.475205,
		-0.302764, -0.857983, -0.414969,
		33.409748, 36.022827, 31.369732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.766964, 36.583092, 31.669842>,  <33.621681, 36.623417, 31.660210>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.766964, 36.583092, 31.669842> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.946407, 36.225620, 31.665924>,  <33.054073, 36.011139, 31.663574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.946407, 36.225620, 31.665924>,  <32.766964, 36.583092, 31.669842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.946407, 36.225620, 31.665924> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471562, -0.245997, 0.846827,
		-0.759197, -0.375276, -0.531779,
		0.448610, -0.893674, -0.009794,
		33.080990, 35.957520, 31.662987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.363434, 36.206451, 32.050121>,  <32.766964, 36.583092, 31.669842>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.363434, 36.206451, 32.050121> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.658092, 35.936062, 32.042122>,  <32.834888, 35.773827, 32.037323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.658092, 35.936062, 32.042122>,  <32.363434, 36.206451, 32.050121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.658092, 35.936062, 32.042122> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332817, -0.388119, 0.859416,
		-0.588709, -0.626433, -0.510885,
		0.736651, -0.675977, -0.020002,
		32.879089, 35.733269, 32.036121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.074394, 35.642979, 32.193295>,  <32.363434, 36.206451, 32.050121>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.074394, 35.642979, 32.193295> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.448017, 35.547512, 32.299557>,  <32.672192, 35.490231, 32.363312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.448017, 35.547512, 32.299557>,  <32.074394, 35.642979, 32.193295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.448017, 35.547512, 32.299557> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343915, -0.400777, 0.849176,
		-0.096204, -0.884543, -0.456431,
		0.934059, -0.238668, 0.265651,
		32.728233, 35.475910, 32.379253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.942001, 35.002552, 32.615593>,  <32.074394, 35.642979, 32.193295>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.942001, 35.002552, 32.615593> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.316887, 35.120651, 32.689846>,  <32.541817, 35.191513, 32.734398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.316887, 35.120651, 32.689846>,  <31.942001, 35.002552, 32.615593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.316887, 35.120651, 32.689846> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080966, -0.333518, 0.939260,
		0.339230, -0.895316, -0.288672,
		0.937213, 0.295253, 0.185630,
		32.598049, 35.209229, 32.745533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.226601, 34.563839, 33.133301>,  <31.942001, 35.002552, 32.615593>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.226601, 34.563839, 33.133301> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.490536, 34.864212, 33.122616>,  <32.648895, 35.044437, 33.116203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.490536, 34.864212, 33.122616>,  <32.226601, 34.563839, 33.133301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.490536, 34.864212, 33.122616> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157520, -0.103474, 0.982080,
		0.734715, -0.652219, -0.186563,
		0.659835, 0.750936, -0.026713,
		32.688488, 35.089493, 33.114601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.840313, 34.325104, 33.306011>,  <32.226601, 34.563839, 33.133301>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.840313, 34.325104, 33.306011> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.812778, 34.713703, 33.396744>,  <32.796257, 34.946861, 33.451183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.812778, 34.713703, 33.396744>,  <32.840313, 34.325104, 33.306011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.812778, 34.713703, 33.396744> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108039, -0.218770, 0.969777,
		0.991760, 0.091266, -0.089900,
		-0.068841, 0.971499, 0.226828,
		32.792126, 35.005154, 33.464790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.310585, 34.409073, 33.786926>,  <32.840313, 34.325104, 33.306011>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.310585, 34.409073, 33.786926> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.117538, 34.753925, 33.848648>,  <33.001709, 34.960838, 33.885681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.117538, 34.753925, 33.848648>,  <33.310585, 34.409073, 33.786926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.117538, 34.753925, 33.848648> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153485, -0.090204, 0.984025,
		0.862277, 0.498593, -0.088790,
		-0.482618, 0.862130, 0.154307,
		32.972752, 35.012566, 33.894939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.673214, 34.938187, 34.191772>,  <33.310585, 34.409073, 33.786926>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.673214, 34.938187, 34.191772> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.301453, 35.068783, 34.260612>,  <33.078396, 35.147141, 34.301918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.301453, 35.068783, 34.260612>,  <33.673214, 34.938187, 34.191772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.301453, 35.068783, 34.260612> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212891, 0.093345, 0.972607,
		0.301482, 0.940580, -0.156262,
		-0.929401, 0.326490, 0.172099,
		33.022633, 35.166729, 34.312241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.341415, 35.156803, 34.122486>,  <33.673214, 34.938187, 34.191772>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.341415, 35.156803, 34.122486> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.653229, 35.010662, 34.325996>,  <34.840317, 34.922977, 34.448101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.653229, 35.010662, 34.325996>,  <34.341415, 35.156803, 34.122486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.653229, 35.010662, 34.325996> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607355, 0.242287, -0.756582,
		0.153148, 0.898785, 0.410768,
		0.779529, -0.365351, 0.508776,
		34.887089, 34.901058, 34.478630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.980465, 35.609566, 34.115963>,  <34.341415, 35.156803, 34.122486>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.980465, 35.609566, 34.115963> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.141247, 35.250172, 34.186577>,  <35.237717, 35.034534, 34.228947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.141247, 35.250172, 34.186577>,  <34.980465, 35.609566, 34.115963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.141247, 35.250172, 34.186577> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781122, 0.235861, -0.578117,
		0.477790, 0.370269, 0.796628,
		0.401952, -0.898482, 0.176534,
		35.261833, 34.980625, 34.239536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.681644, 35.758919, 34.321758>,  <34.980465, 35.609566, 34.115963>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.681644, 35.758919, 34.321758> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.687096, 35.373787, 34.213852>,  <35.690369, 35.142708, 34.149109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.687096, 35.373787, 34.213852>,  <35.681644, 35.758919, 34.321758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.687096, 35.373787, 34.213852> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793164, 0.174688, -0.583416,
		0.608855, -0.206013, 0.766064,
		0.013631, -0.962830, -0.269762,
		35.691185, 35.084938, 34.132923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.359158, 35.531212, 34.393269>,  <35.681644, 35.758919, 34.321758>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.359158, 35.531212, 34.393269> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.185505, 35.277939, 34.136955>,  <36.081314, 35.125973, 33.983166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.185505, 35.277939, 34.136955>,  <36.359158, 35.531212, 34.393269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.185505, 35.277939, 34.136955> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810307, 0.036328, -0.584879,
		0.393615, -0.773148, 0.497303,
		-0.434132, -0.633185, -0.640786,
		36.055264, 35.087982, 33.944721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.930122, 35.291763, 34.104053>,  <36.359158, 35.531212, 34.393269>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.930122, 35.291763, 34.104053> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.647778, 35.169346, 33.848522>,  <36.478371, 35.095894, 33.695202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.647778, 35.169346, 33.848522>,  <36.930122, 35.291763, 34.104053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.647778, 35.169346, 33.848522> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599117, 0.223212, -0.768918,
		0.377919, -0.925479, 0.025802,
		-0.705858, -0.306048, -0.638826,
		36.436020, 35.077530, 33.656876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.350075, 34.849434, 33.684948>,  <36.930122, 35.291763, 34.104053>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.350075, 34.849434, 33.684948> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.012409, 34.933765, 33.487793>,  <36.809811, 34.984364, 33.369499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.012409, 34.933765, 33.487793>,  <37.350075, 34.849434, 33.684948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.012409, 34.933765, 33.487793> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502404, -0.009644, -0.864580,
		-0.187035, -0.977475, -0.097782,
		-0.844161, 0.210833, -0.492890,
		36.759159, 34.997017, 33.339928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.476673, 34.523605, 33.082100>,  <37.350075, 34.849434, 33.684948>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.476673, 34.523605, 33.082100> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.179684, 34.784218, 33.019821>,  <37.001492, 34.940586, 32.982452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.179684, 34.784218, 33.019821>,  <37.476673, 34.523605, 33.082100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.179684, 34.784218, 33.019821> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302571, 0.118806, -0.945693,
		-0.597648, -0.749263, -0.285345,
		-0.742474, 0.651529, -0.155701,
		36.956940, 34.979675, 32.973110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.023075, 34.228794, 32.516117>,  <37.476673, 34.523605, 33.082100>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.023075, 34.228794, 32.516117> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.969830, 34.624695, 32.536781>,  <36.937881, 34.862236, 32.549179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.969830, 34.624695, 32.536781>,  <37.023075, 34.228794, 32.516117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.969830, 34.624695, 32.536781> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190195, 0.076667, -0.978748,
		-0.972680, -0.120460, -0.198452,
		-0.133115, 0.989753, 0.051661,
		36.929893, 34.921619, 32.552280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.705433, 34.426888, 31.831127>,  <37.023075, 34.228794, 32.516117>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.705433, 34.426888, 31.831127> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.880116, 34.753086, 31.983046>,  <36.984924, 34.948807, 32.074196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.880116, 34.753086, 31.983046>,  <36.705433, 34.426888, 31.831127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.880116, 34.753086, 31.983046> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283805, 0.275732, -0.918383,
		-0.853663, 0.508853, -0.111029,
		0.436708, 0.815500, 0.379797,
		37.011127, 34.997738, 32.096985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.504036, 34.926353, 31.411373>,  <36.705433, 34.426888, 31.831127>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.504036, 34.926353, 31.411373> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.829491, 35.073219, 31.591677>,  <37.024765, 35.161339, 31.699858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.829491, 35.073219, 31.591677>,  <36.504036, 34.926353, 31.411373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.829491, 35.073219, 31.591677> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348949, 0.311718, -0.883780,
		-0.465003, 0.876368, 0.125503,
		0.813638, 0.367166, 0.450758,
		37.073582, 35.183369, 31.726904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.721943, 35.549065, 31.009539>,  <36.504036, 34.926353, 31.411373>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.721943, 35.549065, 31.009539> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.046902, 35.495861, 31.236633>,  <37.241875, 35.463940, 31.372890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.046902, 35.495861, 31.236633>,  <36.721943, 35.549065, 31.009539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.046902, 35.495861, 31.236633> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547781, 0.507830, -0.664865,
		-0.199883, 0.851128, 0.485416,
		0.812394, -0.133006, 0.567738,
		37.290619, 35.455959, 31.406954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.085911, 36.229156, 31.084034>,  <36.721943, 35.549065, 31.009539>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.085911, 36.229156, 31.084034> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.351654, 35.934078, 31.132099>,  <37.511101, 35.757030, 31.160938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.351654, 35.934078, 31.132099>,  <37.085911, 36.229156, 31.084034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.351654, 35.934078, 31.132099> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548375, 0.371854, -0.749005,
		0.507855, 0.563499, 0.651577,
		0.664355, -0.737695, 0.120161,
		37.550961, 35.712769, 31.168148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.754642, 36.580288, 31.205597>,  <37.085911, 36.229156, 31.084034>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.754642, 36.580288, 31.205597> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.812710, 36.208672, 31.069479>,  <37.847549, 35.985703, 30.987808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.812710, 36.208672, 31.069479>,  <37.754642, 36.580288, 31.205597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.812710, 36.208672, 31.069479> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491048, 0.366244, -0.790403,
		0.858951, -0.052359, 0.509374,
		0.145171, -0.929045, -0.340297,
		37.856262, 35.929958, 30.967390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.476978, 36.611130, 30.878590>,  <37.754642, 36.580288, 31.205597>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.476978, 36.611130, 30.878590> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.290955, 36.302151, 30.705593>,  <38.179340, 36.116764, 30.601795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.290955, 36.302151, 30.705593>,  <38.476978, 36.611130, 30.878590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.290955, 36.302151, 30.705593> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250434, 0.353789, -0.901175,
		0.849119, -0.527409, 0.028914,
		-0.465058, -0.772446, -0.432490,
		38.151436, 36.070415, 30.575846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.934780, 36.486328, 30.445042>,  <38.476978, 36.611130, 30.878590>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.934780, 36.486328, 30.445042> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.598785, 36.298664, 30.335995>,  <38.397190, 36.186066, 30.270567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.598785, 36.298664, 30.335995>,  <38.934780, 36.486328, 30.445042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.598785, 36.298664, 30.335995> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189457, 0.217210, -0.957563,
		0.508462, -0.855986, -0.093568,
		-0.839983, -0.469157, -0.272615,
		38.346790, 36.157917, 30.254210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.201065, 36.154827, 29.841949>,  <38.934780, 36.486328, 30.445042>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.201065, 36.154827, 29.841949> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.801205, 36.144238, 29.841274>,  <38.561291, 36.137882, 29.840870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.801205, 36.144238, 29.841274>,  <39.201065, 36.154827, 29.841949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.801205, 36.144238, 29.841274> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010989, 0.471157, -0.881981,
		0.024146, -0.881652, -0.471282,
		-0.999648, -0.026475, -0.001688,
		38.501308, 36.136295, 29.840769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.969471, 35.877041, 29.165651>,  <39.201065, 36.154827, 29.841949>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.969471, 35.877041, 29.165651> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.647606, 36.069641, 29.304602>,  <38.454487, 36.185200, 29.387972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.647606, 36.069641, 29.304602>,  <38.969471, 35.877041, 29.165651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.647606, 36.069641, 29.304602> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035425, 0.622968, -0.781445,
		-0.592669, -0.616497, -0.518338,
		-0.804666, 0.481500, 0.347375,
		38.406204, 36.214092, 29.408813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.422260, 35.748795, 28.652582>,  <38.969471, 35.877041, 29.165651>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.422260, 35.748795, 28.652582> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.328072, 36.072598, 28.867708>,  <38.271561, 36.266880, 28.996784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.328072, 36.072598, 28.867708>,  <38.422260, 35.748795, 28.652582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.328072, 36.072598, 28.867708> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186709, 0.505390, -0.842449,
		-0.953779, -0.298786, 0.032140,
		-0.235469, 0.809511, 0.537817,
		38.257431, 36.315453, 29.029053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.785503, 35.998684, 28.271646> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.908981, 36.303658, 28.499119>,  <37.983067, 36.486641, 28.635603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.908981, 36.303658, 28.499119>,  <37.785503, 35.998684, 28.271646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.908981, 36.303658, 28.499119> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229841, 0.639956, -0.733232,
		-0.922974, 0.095639, 0.372790,
		0.308695, 0.762437, 0.568681,
		38.001591, 36.532387, 28.669724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.326908, 36.468040, 28.156057>,  <37.785503, 35.998684, 28.271646>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.326908, 36.468040, 28.156057> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.650486, 36.662708, 28.287968>,  <37.844635, 36.779510, 28.367113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.650486, 36.662708, 28.287968>,  <37.326908, 36.468040, 28.156057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.650486, 36.662708, 28.287968> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241702, 0.786687, -0.568070,
		-0.535895, 0.379832, 0.754019,
		0.808948, 0.486674, 0.329775,
		37.893169, 36.808712, 28.386900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.098938, 37.182076, 28.167475>,  <37.326908, 36.468040, 28.156057>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.098938, 37.182076, 28.167475> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.497097, 37.217461, 28.182253>,  <37.735992, 37.238689, 28.191120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.497097, 37.217461, 28.182253>,  <37.098938, 37.182076, 28.167475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.497097, 37.217461, 28.182253> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059157, 0.870076, -0.489355,
		-0.075435, 0.484915, 0.871302,
		0.995394, 0.088458, 0.036948,
		37.795715, 37.243999, 28.193336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.292088, 37.971737, 28.124113>,  <37.098938, 37.182076, 28.167475>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.292088, 37.971737, 28.124113> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.623631, 37.779156, 28.010130>,  <37.822556, 37.663609, 27.941740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.623631, 37.779156, 28.010130>,  <37.292088, 37.971737, 28.124113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.623631, 37.779156, 28.010130> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268213, 0.788953, -0.552824,
		0.490976, 0.381783, 0.783061,
		0.828857, -0.481451, -0.284958,
		37.872288, 37.634720, 27.924643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.676979, 38.495293, 27.920702>,  <37.292088, 37.971737, 28.124113>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.676979, 38.495293, 27.920702> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.872726, 38.185848, 27.759686>,  <37.990177, 38.000179, 27.663076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.872726, 38.185848, 27.759686>,  <37.676979, 38.495293, 27.920702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.872726, 38.185848, 27.759686> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260534, 0.570201, -0.779098,
		0.832249, 0.276393, 0.480592,
		0.489371, -0.773613, -0.402540,
		38.019539, 37.953766, 27.638924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.185333, 38.789959, 27.507046>,  <37.676979, 38.495293, 27.920702>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.185333, 38.789959, 27.507046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.135551, 38.424194, 27.352976>,  <38.105682, 38.204735, 27.260534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.135551, 38.424194, 27.352976>,  <38.185333, 38.789959, 27.507046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.135551, 38.424194, 27.352976> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203700, 0.356378, -0.911867,
		0.971091, -0.191943, 0.141915,
		-0.124451, -0.914414, -0.385174,
		38.098217, 38.149872, 27.237423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.748600, 38.726013, 27.017872>,  <38.185333, 38.789959, 27.507046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.748600, 38.726013, 27.017872> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.499855, 38.426422, 26.926376>,  <38.350609, 38.246666, 26.871479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.499855, 38.426422, 26.926376>,  <38.748600, 38.726013, 27.017872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.499855, 38.426422, 26.926376> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296761, 0.044928, -0.953894,
		0.724721, -0.661072, 0.194328,
		-0.621862, -0.748976, -0.228741,
		38.313297, 38.201729, 26.857754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.256008, 38.297604, 26.596489>,  <38.748600, 38.726013, 27.017872>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.256008, 38.297604, 26.596489> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.869255, 38.247810, 26.507368>,  <38.637203, 38.217934, 26.453896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.869255, 38.247810, 26.507368>,  <39.256008, 38.297604, 26.596489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.869255, 38.247810, 26.507368> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219558, 0.039378, -0.974804,
		0.130118, -0.991440, -0.010743,
		-0.966884, -0.124481, -0.222803,
		38.579189, 38.210464, 26.440527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.135914, 37.764381, 26.318769>,  <39.256008, 38.297604, 26.596489>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.135914, 37.764381, 26.318769> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.847363, 38.006561, 26.184284>,  <38.674232, 38.151871, 26.103594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.847363, 38.006561, 26.184284>,  <39.135914, 37.764381, 26.318769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.847363, 38.006561, 26.184284> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490751, 0.104361, -0.865027,
		-0.488644, -0.789011, -0.372410,
		-0.721381, 0.605451, -0.336212,
		38.630947, 38.188198, 26.083420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.032425, 37.679306, 25.561829>,  <39.135914, 37.764381, 26.318769>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.032425, 37.679306, 25.561829> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.843143, 38.028793, 25.606909>,  <38.729576, 38.238483, 25.633957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.843143, 38.028793, 25.606909>,  <39.032425, 37.679306, 25.561829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.843143, 38.028793, 25.606909> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365752, 0.311235, -0.877131,
		-0.801438, -0.373842, -0.466840,
		-0.473205, 0.873714, 0.112702,
		38.701183, 38.290909, 25.640718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.545570, 37.830986, 25.023968>,  <39.032425, 37.679306, 25.561829>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.545570, 37.830986, 25.023968> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.619087, 38.202271, 25.153360>,  <38.663197, 38.425041, 25.230995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.619087, 38.202271, 25.153360>,  <38.545570, 37.830986, 25.023968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.619087, 38.202271, 25.153360> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177849, 0.292255, -0.939658,
		-0.966743, 0.230229, -0.111369,
		0.183788, 0.928214, 0.323482,
		38.674225, 38.480736, 25.250404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.161770, 38.263973, 24.525751>,  <38.545570, 37.830986, 25.023968>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.161770, 38.263973, 24.525751> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.440445, 38.494598, 24.696491>,  <38.607651, 38.632973, 24.798935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.440445, 38.494598, 24.696491>,  <38.161770, 38.263973, 24.525751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.440445, 38.494598, 24.696491> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260951, 0.350571, -0.899447,
		-0.668231, 0.738019, 0.093783,
		0.696687, 0.576565, 0.426849,
		38.649452, 38.667568, 24.824547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.106445, 38.951797, 24.154932>,  <38.161770, 38.263973, 24.525751>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.106445, 38.951797, 24.154932> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.471302, 38.948505, 24.318848>,  <38.690216, 38.946529, 24.417196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.471302, 38.948505, 24.318848>,  <38.106445, 38.951797, 24.154932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.471302, 38.948505, 24.318848> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389117, 0.331489, -0.859478,
		-0.128768, 0.943423, 0.305567,
		0.912144, -0.008228, 0.409788,
		38.744946, 38.946037, 24.441784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.275795, 39.554146, 24.024263>,  <38.106445, 38.951797, 24.154932>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.275795, 39.554146, 24.024263> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.610268, 39.342831, 24.083200>,  <38.810951, 39.216042, 24.118563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.610268, 39.342831, 24.083200>,  <38.275795, 39.554146, 24.024263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.610268, 39.342831, 24.083200> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405393, 0.414406, -0.814815,
		0.369401, 0.741065, 0.560684,
		0.836181, -0.528291, 0.147341,
		38.861122, 39.184345, 24.127403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.777893, 40.089001, 23.994547>,  <38.275795, 39.554146, 24.024263>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.777893, 40.089001, 23.994547> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.977608, 39.748108, 23.932045>,  <39.097435, 39.543571, 23.894543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.977608, 39.748108, 23.932045>,  <38.777893, 40.089001, 23.994547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.977608, 39.748108, 23.932045> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558869, 0.454581, -0.693557,
		0.662101, 0.258957, 0.703252,
		0.499286, -0.852231, -0.156256,
		39.127392, 39.492439, 23.885168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.479847, 40.308685, 24.048645>,  <38.777893, 40.089001, 23.994547>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.479847, 40.308685, 24.048645> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.495140, 39.956879, 23.858913>,  <39.504314, 39.745792, 23.745075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.495140, 39.956879, 23.858913>,  <39.479847, 40.308685, 24.048645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.495140, 39.956879, 23.858913> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613010, 0.395507, -0.683954,
		0.789150, -0.264616, 0.554275,
		0.038234, -0.879518, -0.474327,
		39.506611, 39.693024, 23.716616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.146591, 40.159470, 23.877802>,  <39.479847, 40.308685, 24.048645>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.146591, 40.159470, 23.877802> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.968502, 39.929840, 23.602930>,  <39.861649, 39.792065, 23.438007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.968502, 39.929840, 23.602930>,  <40.146591, 40.159470, 23.877802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.968502, 39.929840, 23.602930> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614537, 0.362261, -0.700793,
		0.651244, -0.734308, 0.191501,
		-0.445224, -0.574072, -0.687180,
		39.834934, 39.757618, 23.396776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.649296, 39.710392, 23.635626>,  <40.146591, 40.159470, 23.877802>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.649296, 39.710392, 23.635626> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.359619, 39.743843, 23.361824>,  <40.185814, 39.763916, 23.197542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.359619, 39.743843, 23.361824>,  <40.649296, 39.710392, 23.635626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.359619, 39.743843, 23.361824> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687469, 0.165467, -0.707112,
		0.054126, -0.982663, -0.177325,
		-0.724194, 0.083633, -0.684506,
		40.142361, 39.768932, 23.156473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.973415, 39.346756, 22.995085>,  <40.649296, 39.710392, 23.635626>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.973415, 39.346756, 22.995085> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.659847, 39.544819, 22.845263>,  <40.471706, 39.663658, 22.755369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.659847, 39.544819, 22.845263>,  <40.973415, 39.346756, 22.995085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.659847, 39.544819, 22.845263> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555340, 0.289462, -0.779621,
		-0.277617, -0.819163, -0.501896,
		-0.783917, 0.495160, -0.374554,
		40.424671, 39.693367, 22.732897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.036152, 39.243858, 22.344494>,  <40.973415, 39.346756, 22.995085>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.036152, 39.243858, 22.344494> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.775829, 39.547508, 22.349855>,  <40.619637, 39.729698, 22.353073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.775829, 39.547508, 22.349855>,  <41.036152, 39.243858, 22.344494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.775829, 39.547508, 22.349855> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391122, 0.350343, -0.851049,
		-0.650747, -0.548627, -0.524916,
		-0.650808, 0.759124, 0.013405,
		40.580585, 39.775246, 22.353876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.757923, 39.151501, 21.650349>,  <41.036152, 39.243858, 22.344494>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.757923, 39.151501, 21.650349> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.682079, 39.534130, 21.738909>,  <40.636574, 39.763706, 21.792044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.682079, 39.534130, 21.738909>,  <40.757923, 39.151501, 21.650349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.682079, 39.534130, 21.738909> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548570, 0.290222, -0.784119,
		-0.814321, -0.027224, -0.579776,
		-0.189611, 0.956572, 0.221399,
		40.625195, 39.821102, 21.805328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.497013, 39.484634, 21.090191>,  <40.757923, 39.151501, 21.650349>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.497013, 39.484634, 21.090191> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.665108, 39.754807, 21.332577>,  <40.765965, 39.916912, 21.478008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.665108, 39.754807, 21.332577>,  <40.497013, 39.484634, 21.090191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.665108, 39.754807, 21.332577> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515220, 0.372107, -0.772065,
		-0.746963, 0.636652, -0.191625,
		0.420232, 0.675433, 0.605966,
		40.791176, 39.957436, 21.514366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.371689, 40.173885, 20.796276>,  <40.497013, 39.484634, 21.090191>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.371689, 40.173885, 20.796276> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.702789, 40.121124, 21.014425>,  <40.901451, 40.089466, 21.145315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.702789, 40.121124, 21.014425>,  <40.371689, 40.173885, 20.796276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.702789, 40.121124, 21.014425> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553822, 0.348079, -0.756388,
		-0.090062, 0.928139, 0.361173,
		0.827750, -0.131904, 0.545373,
		40.951115, 40.081554, 21.178038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.764492, 40.403542, 20.235146>,  <40.371689, 40.173885, 20.796276>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.764492, 40.403542, 20.235146> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.765423, 40.082882, 19.996027>,  <39.765980, 39.890488, 19.852556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.765423, 40.082882, 19.996027>,  <39.764492, 40.403542, 20.235146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.765423, 40.082882, 19.996027> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855448, 0.307995, -0.416350,
		0.517883, 0.512352, -0.685049,
		0.002326, -0.801645, -0.597796,
		39.766121, 39.842388, 19.816689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.073326, 40.739368, 20.551474>,  <39.764492, 40.403542, 20.235146>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.073326, 40.739368, 20.551474> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.717674, 40.874908, 20.428429>,  <38.504284, 40.956234, 20.354601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.717674, 40.874908, 20.428429>,  <39.073326, 40.739368, 20.551474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.717674, 40.874908, 20.428429> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317508, 0.027350, 0.947861,
		0.329598, 0.940442, 0.083271,
		-0.889131, 0.338852, -0.307613,
		38.450935, 40.976562, 20.336145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.789433, 41.129459, 21.059477>,  <39.073326, 40.739368, 20.551474>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.789433, 41.129459, 21.059477> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.492222, 40.997833, 20.826368>,  <38.313896, 40.918858, 20.686502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.492222, 40.997833, 20.826368>,  <38.789433, 41.129459, 21.059477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.492222, 40.997833, 20.826368> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540175, -0.219215, 0.812499,
		-0.395118, 0.918510, -0.014870,
		-0.743029, -0.329066, -0.582772,
		38.269314, 40.899113, 20.651537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.219475, 41.480816, 21.286236>,  <38.789433, 41.129459, 21.059477>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.219475, 41.480816, 21.286236> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.092754, 41.144554, 21.110538>,  <38.016720, 40.942799, 21.005119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.092754, 41.144554, 21.110538>,  <38.219475, 41.480816, 21.286236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.092754, 41.144554, 21.110538> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420035, -0.290869, 0.859632,
		-0.850415, 0.456834, -0.260955,
		-0.316805, -0.840654, -0.439245,
		37.997711, 40.892357, 20.978765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.499859, 41.393002, 21.595915>,  <38.219475, 41.480816, 21.286236>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.499859, 41.393002, 21.595915> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.543774, 41.033409, 21.426313>,  <37.570122, 40.817654, 21.324553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.543774, 41.033409, 21.426313>,  <37.499859, 41.393002, 21.595915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.543774, 41.033409, 21.426313> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434670, -0.427051, 0.792899,
		-0.893874, 0.097255, -0.437643,
		0.109783, -0.898982, -0.424004,
		37.576710, 40.763714, 21.299112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.823570, 40.985359, 21.476877>,  <37.499859, 41.393002, 21.595915>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.823570, 40.985359, 21.476877> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.134071, 40.734783, 21.505180>,  <37.320370, 40.584438, 21.522161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.134071, 40.734783, 21.505180>,  <36.823570, 40.985359, 21.476877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.134071, 40.734783, 21.505180> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461542, -0.488258, 0.740664,
		-0.429433, -0.607600, -0.668139,
		0.776251, -0.626440, 0.070759,
		37.366947, 40.546852, 21.526407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.530365, 40.328712, 21.537930>,  <36.823570, 40.985359, 21.476877>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.530365, 40.328712, 21.537930> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.904655, 40.288700, 21.673223>,  <37.129230, 40.264690, 21.754400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.904655, 40.288700, 21.673223>,  <36.530365, 40.328712, 21.537930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.904655, 40.288700, 21.673223> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338267, -0.526166, 0.780208,
		0.099920, -0.844478, -0.526188,
		0.935731, -0.100034, 0.338233,
		37.185375, 40.258690, 21.774693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.524788, 39.669842, 21.758564>,  <36.530365, 40.328712, 21.537930>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.524788, 39.669842, 21.758564> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.842503, 39.834923, 21.936905>,  <37.033131, 39.933971, 22.043909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.842503, 39.834923, 21.936905>,  <36.524788, 39.669842, 21.758564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.842503, 39.834923, 21.936905> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199635, -0.515816, 0.833115,
		0.573806, -0.750741, -0.327316,
		0.794288, 0.412702, 0.445852,
		37.080788, 39.958733, 22.070660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.923847, 39.129742, 22.220158>,  <36.524788, 39.669842, 21.758564>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.923847, 39.129742, 22.220158> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.026897, 39.485298, 22.371679>,  <37.088730, 39.698631, 22.462593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.026897, 39.485298, 22.371679>,  <36.923847, 39.129742, 22.220158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.026897, 39.485298, 22.371679> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126085, -0.357760, 0.925262,
		0.957982, -0.286136, 0.019907,
		0.257629, 0.888894, 0.378806,
		37.104187, 39.751968, 22.485321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.025974, 38.962543, 22.895565>,  <36.923847, 39.129742, 22.220158>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.025974, 38.962543, 22.895565> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.045979, 39.361629, 22.913725>,  <37.057980, 39.601082, 22.924622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.045979, 39.361629, 22.913725>,  <37.025974, 38.962543, 22.895565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.045979, 39.361629, 22.913725> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246390, -0.031727, 0.968651,
		0.967880, -0.059627, 0.244241,
		0.050008, 0.997716, 0.045400,
		37.060982, 39.660946, 22.927345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.497543, 39.177422, 23.363142>,  <37.025974, 38.962543, 22.895565>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.497543, 39.177422, 23.363142> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.221710, 39.464977, 23.328108>,  <37.056210, 39.637512, 23.307087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.221710, 39.464977, 23.328108>,  <37.497543, 39.177422, 23.363142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.221710, 39.464977, 23.328108> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248192, -0.120975, 0.961127,
		0.680351, 0.684514, 0.261845,
		-0.689582, 0.718892, -0.087586,
		37.014835, 39.680645, 23.301832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.516403, 39.599152, 23.925404>,  <37.497543, 39.177422, 23.363142>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.516403, 39.599152, 23.925404> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.149403, 39.648205, 23.774057>,  <36.929203, 39.677635, 23.683250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.149403, 39.648205, 23.774057>,  <37.516403, 39.599152, 23.925404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.149403, 39.648205, 23.774057> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375227, 0.048650, 0.925655,
		0.131921, 0.991260, 0.001378,
		-0.917497, 0.122630, -0.378366,
		36.874153, 39.684994, 23.660547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.239052, 40.078030, 24.324192>,  <37.516403, 39.599152, 23.925404>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.239052, 40.078030, 24.324192> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.925850, 39.874126, 24.181620>,  <36.737926, 39.751785, 24.096077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.925850, 39.874126, 24.181620>,  <37.239052, 40.078030, 24.324192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.925850, 39.874126, 24.181620> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403692, -0.019474, 0.914687,
		-0.473214, 0.860095, -0.190539,
		-0.783008, -0.509762, -0.356429,
		36.690948, 39.721199, 24.074692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.707348, 40.299652, 24.779541>,  <37.239052, 40.078030, 24.324192>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.707348, 40.299652, 24.779541> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.572887, 39.980698, 24.579069>,  <36.492210, 39.789326, 24.458786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.572887, 39.980698, 24.579069>,  <36.707348, 40.299652, 24.779541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.572887, 39.980698, 24.579069> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425787, -0.345992, 0.836059,
		-0.840066, 0.494435, -0.223212,
		-0.336147, -0.797386, -0.501180,
		36.472042, 39.741482, 24.428715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.242844, 40.137203, 25.209303>,  <36.707348, 40.299652, 24.779541>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.242844, 40.137203, 25.209303> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.257664, 39.814396, 24.973558>,  <36.266556, 39.620712, 24.832111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.257664, 39.814396, 24.973558>,  <36.242844, 40.137203, 25.209303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.257664, 39.814396, 24.973558> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387065, -0.555321, 0.736070,
		-0.921308, 0.200849, -0.332944,
		0.037052, -0.807018, -0.589363,
		36.268780, 39.572289, 24.796749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.630421, 39.817413, 25.284752>,  <36.242844, 40.137203, 25.209303>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.630421, 39.817413, 25.284752> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.873260, 39.528744, 25.151712>,  <36.018963, 39.355541, 25.071890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.873260, 39.528744, 25.151712>,  <35.630421, 39.817413, 25.284752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.873260, 39.528744, 25.151712> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419742, -0.646644, 0.636921,
		-0.674719, -0.247070, -0.695494,
		0.607101, -0.721671, -0.332597,
		36.055389, 39.312244, 25.051933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.239689, 39.142605, 25.108980>,  <35.630421, 39.817413, 25.284752>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.239689, 39.142605, 25.108980> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.620167, 39.040081, 25.177711>,  <35.848454, 38.978565, 25.218950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.620167, 39.040081, 25.177711>,  <35.239689, 39.142605, 25.108980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.620167, 39.040081, 25.177711> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307522, -0.741336, 0.596533,
		-0.025517, -0.620262, -0.783980,
		0.951199, -0.256312, 0.171828,
		35.905525, 38.963188, 25.229259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.239574, 38.423538, 25.118273>,  <35.239689, 39.142605, 25.108980>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.239574, 38.423538, 25.118273> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.582050, 38.482632, 25.316311>,  <35.787537, 38.518089, 25.435133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.582050, 38.482632, 25.316311>,  <35.239574, 38.423538, 25.118273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.582050, 38.482632, 25.316311> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273755, -0.682968, 0.677210,
		0.438181, -0.715353, -0.544305,
		0.856187, 0.147735, 0.495095,
		35.838905, 38.526951, 25.464840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.621162, 37.762989, 25.204445>,  <35.239574, 38.423538, 25.118273>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.621162, 37.762989, 25.204445> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.717709, 38.023464, 25.492249>,  <35.775635, 38.179749, 25.664930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.717709, 38.023464, 25.492249>,  <35.621162, 37.762989, 25.204445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.717709, 38.023464, 25.492249> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182459, -0.697755, 0.692710,
		0.953128, -0.298474, -0.049595,
		0.241361, 0.651192, 0.719509,
		35.790115, 38.218822, 25.708101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.799088, 37.252319, 25.744274>,  <35.621162, 37.762989, 25.204445>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.799088, 37.252319, 25.744274> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.822575, 37.595005, 25.949251>,  <35.836666, 37.800617, 26.072237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.822575, 37.595005, 25.949251>,  <35.799088, 37.252319, 25.744274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.822575, 37.595005, 25.949251> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201609, -0.492575, 0.846595,
		0.977704, -0.153026, 0.143797,
		0.058720, 0.856711, 0.512444,
		35.840191, 37.852016, 26.102983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.153919, 36.983860, 26.293716>,  <35.799088, 37.252319, 25.744274>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.153919, 36.983860, 26.293716> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.958336, 37.322472, 26.377909>,  <35.840988, 37.525639, 26.428425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.958336, 37.322472, 26.377909>,  <36.153919, 36.983860, 26.293716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.958336, 37.322472, 26.377909> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361293, -0.416156, 0.834435,
		0.793970, 0.331956, 0.509329,
		-0.488956, 0.846533, 0.210482,
		35.811649, 37.576431, 26.441053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.471123, 34.809147, 31.328535> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.194614, 35.091976, 31.268951>,  <38.028709, 35.261673, 31.233202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.194614, 35.091976, 31.268951>,  <38.471123, 34.809147, 31.328535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.194614, 35.091976, 31.268951> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465906, -0.278566, 0.839841,
		0.552335, 0.649960, 0.521995,
		-0.691273, 0.707074, -0.148958,
		37.987232, 35.304100, 31.224264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.409737, 35.136021, 32.017159>,  <38.471123, 34.809147, 31.328535>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.409737, 35.136021, 32.017159> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.079815, 35.274769, 31.838549>,  <37.881863, 35.358017, 31.731382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.079815, 35.274769, 31.838549>,  <38.409737, 35.136021, 32.017159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.079815, 35.274769, 31.838549> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505163, -0.097316, 0.857520,
		0.253995, 0.932850, 0.255493,
		-0.824801, 0.346872, -0.446523,
		37.832375, 35.378830, 31.704592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.141747, 35.661003, 32.329121>,  <38.409737, 35.136021, 32.017159>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.141747, 35.661003, 32.329121> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.808647, 35.551102, 32.136852>,  <37.608788, 35.485161, 32.021492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.808647, 35.551102, 32.136852>,  <38.141747, 35.661003, 32.329121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.808647, 35.551102, 32.136852> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534129, 0.170172, 0.828099,
		-0.145728, 0.946336, -0.288465,
		-0.832748, -0.274755, -0.480667,
		37.558823, 35.468674, 31.992653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.487877, 36.113037, 32.524532>,  <38.141747, 35.661003, 32.329121>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.487877, 36.113037, 32.524532> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.337952, 35.761276, 32.407120>,  <37.247997, 35.550220, 32.336670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.337952, 35.761276, 32.407120>,  <37.487877, 36.113037, 32.524532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.337952, 35.761276, 32.407120> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590852, -0.017403, 0.806592,
		-0.714430, 0.475754, -0.513076,
		-0.374811, -0.879406, -0.293533,
		37.225510, 35.497456, 32.319061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.794636, 36.208611, 32.530186>,  <37.487877, 36.113037, 32.524532>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.794636, 36.208611, 32.530186> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.854683, 35.814461, 32.562435>,  <36.890709, 35.577972, 32.581787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.854683, 35.814461, 32.562435>,  <36.794636, 36.208611, 32.530186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.854683, 35.814461, 32.562435> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655527, -0.038154, 0.754207,
		-0.740101, -0.166071, -0.651668,
		0.150116, -0.985376, 0.080626,
		36.899719, 35.518848, 32.586624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.082588, 35.884331, 32.570240>,  <36.794636, 36.208611, 32.530186>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.082588, 35.884331, 32.570240> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.333748, 35.600159, 32.697376>,  <36.484444, 35.429653, 32.773659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.333748, 35.600159, 32.697376>,  <36.082588, 35.884331, 32.570240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.333748, 35.600159, 32.697376> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638143, -0.236157, 0.732805,
		-0.445550, -0.662957, -0.601643,
		0.627900, -0.710435, 0.317841,
		36.522118, 35.387028, 32.792728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.708668, 35.282619, 32.663147>,  <36.082588, 35.884331, 32.570240>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.708668, 35.282619, 32.663147> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.030510, 35.214279, 32.890625>,  <36.223618, 35.173275, 33.027111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.030510, 35.214279, 32.890625>,  <35.708668, 35.282619, 32.663147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.030510, 35.214279, 32.890625> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585834, -0.384797, 0.713253,
		0.096974, -0.907051, -0.409700,
		0.804609, -0.170849, 0.568696,
		36.271893, 35.163025, 33.061234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.617847, 34.596771, 32.813576>,  <35.708668, 35.282619, 32.663147>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.617847, 34.596771, 32.813576> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.853489, 34.765560, 33.089226>,  <35.994873, 34.866833, 33.254616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.853489, 34.765560, 33.089226>,  <35.617847, 34.596771, 32.813576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.853489, 34.765560, 33.089226> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661098, -0.238714, 0.711312,
		0.464662, -0.874615, 0.138341,
		0.589100, 0.421977, 0.689128,
		36.030220, 34.892155, 33.295963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.573601, 34.029381, 33.326534>,  <35.617847, 34.596771, 32.813576>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.573601, 34.029381, 33.326534> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.708221, 34.365089, 33.497349>,  <35.788994, 34.566513, 33.599838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.708221, 34.365089, 33.497349>,  <35.573601, 34.029381, 33.326534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.708221, 34.365089, 33.497349> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522895, -0.210594, 0.825973,
		0.783145, -0.501277, 0.367974,
		0.336548, 0.839269, 0.427041,
		35.809185, 34.616871, 33.625462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.757195, 33.822762, 33.963692>,  <35.573601, 34.029381, 33.326534>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.757195, 33.822762, 33.963692> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.726822, 34.217606, 34.020046>,  <35.708599, 34.454514, 34.053860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.726822, 34.217606, 34.020046>,  <35.757195, 33.822762, 33.963692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.726822, 34.217606, 34.020046> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558349, -0.159161, 0.814196,
		0.826124, -0.016839, 0.563237,
		-0.075935, 0.987109, 0.140889,
		35.704041, 34.513737, 34.062313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.747776, 33.879364, 34.699429>,  <35.757195, 33.822762, 33.963692>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.747776, 33.879364, 34.699429> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.612709, 34.226368, 34.553333>,  <35.531670, 34.434570, 34.465675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.612709, 34.226368, 34.553333>,  <35.747776, 33.879364, 34.699429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.612709, 34.226368, 34.553333> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612863, 0.091877, 0.784830,
		0.714407, 0.488855, 0.500643,
		-0.337671, 0.867513, -0.365239,
		35.511410, 34.486622, 34.443760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.843456, 34.414059, 35.171181>,  <35.747776, 33.879364, 34.699429>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.843456, 34.414059, 35.171181> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.529770, 34.523594, 34.948463>,  <35.341557, 34.589314, 34.814835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.529770, 34.523594, 34.948463>,  <35.843456, 34.414059, 35.171181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.529770, 34.523594, 34.948463> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558909, 0.077986, 0.825553,
		0.269490, 0.958609, 0.091893,
		-0.784217, 0.273838, -0.556792,
		35.294506, 34.605743, 34.781425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.828819, 35.173023, 35.039654>,  <35.843456, 34.414059, 35.171181>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.828819, 35.173023, 35.039654> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.928295, 35.551662, 35.121727>,  <35.987980, 35.778847, 35.170971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.928295, 35.551662, 35.121727>,  <35.828819, 35.173023, 35.039654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.928295, 35.551662, 35.121727> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773707, 0.321582, -0.545859,
		-0.582695, -0.023003, 0.812366,
		0.248686, 0.946602, 0.205182,
		36.002899, 35.835644, 35.183281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.460888, 35.045170, 35.608967>,  <35.828819, 35.173023, 35.039654>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.460888, 35.045170, 35.608967> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.512226, 34.819130, 35.934959>,  <35.543030, 34.683506, 36.130554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.512226, 34.819130, 35.934959>,  <35.460888, 35.045170, 35.608967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.512226, 34.819130, 35.934959> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991312, 0.049247, -0.121964,
		0.028787, 0.823552, 0.566510,
		0.128343, -0.565099, 0.814979,
		35.550728, 34.649601, 36.179455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.747257, 35.297359, 35.810524>,  <35.460888, 35.045170, 35.608967>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.747257, 35.297359, 35.810524> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.637104, 35.532146, 36.115059>,  <34.571011, 35.673019, 36.297779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.637104, 35.532146, 36.115059>,  <34.747257, 35.297359, 35.810524>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.637104, 35.532146, 36.115059> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175971, 0.809359, -0.560333,
		-0.945091, -0.020333, -0.326173,
		-0.275384, 0.586963, 0.761340,
		34.554489, 35.708237, 36.343460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.347702, 35.875027, 35.547771>,  <34.747257, 35.297359, 35.810524>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.347702, 35.875027, 35.547771> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.471203, 36.006950, 35.904625>,  <34.545303, 36.086105, 36.118736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.471203, 36.006950, 35.904625>,  <34.347702, 35.875027, 35.547771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.471203, 36.006950, 35.904625> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256951, 0.874162, -0.412089,
		-0.915778, 0.356466, 0.185153,
		0.308750, 0.329807, 0.892133,
		34.563828, 36.105892, 36.172264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.980621, 36.552006, 35.793671>,  <34.347702, 35.875027, 35.547771>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.980621, 36.552006, 35.793671> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.326073, 36.548019, 35.995281>,  <34.533344, 36.545628, 36.116249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.326073, 36.548019, 35.995281>,  <33.980621, 36.552006, 35.793671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.326073, 36.548019, 35.995281> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239483, 0.887897, -0.392794,
		-0.443612, 0.459935, 0.769200,
		0.863630, -0.009962, 0.504028,
		34.585163, 36.545033, 36.146488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.079178, 37.184006, 36.148243>,  <33.980621, 36.552006, 35.793671>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.079178, 37.184006, 36.148243> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.447514, 37.035896, 36.099342>,  <34.668514, 36.947029, 36.070000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.447514, 37.035896, 36.099342>,  <34.079178, 37.184006, 36.148243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.447514, 37.035896, 36.099342> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244005, 0.791724, -0.560030,
		0.304159, 0.485868, 0.819402,
		0.920842, -0.370277, -0.122255,
		34.723766, 36.924812, 36.062664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.653587, 37.738773, 36.315754>,  <34.079178, 37.184006, 36.148243>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.653587, 37.738773, 36.315754> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.851788, 37.465599, 36.101063>,  <34.970707, 37.301697, 35.972248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.851788, 37.465599, 36.101063>,  <34.653587, 37.738773, 36.315754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.851788, 37.465599, 36.101063> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268128, 0.708003, -0.653330,
		0.826186, 0.179816, 0.533932,
		0.495504, -0.682934, -0.536728,
		35.000439, 37.260719, 35.940044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.234032, 38.141575, 36.071709>,  <34.653587, 37.738773, 36.315754>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.234032, 38.141575, 36.071709> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.248203, 37.812843, 35.844257>,  <35.256706, 37.615604, 35.707787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.248203, 37.812843, 35.844257>,  <35.234032, 38.141575, 36.071709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.248203, 37.812843, 35.844257> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529545, 0.497978, -0.686731,
		0.847542, -0.276785, 0.452839,
		0.035427, -0.821832, -0.568628,
		35.258831, 37.566296, 35.673668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.906708, 38.212208, 35.879223>,  <35.234032, 38.141575, 36.071709>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.906708, 38.212208, 35.879223> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.709381, 37.980846, 35.619350>,  <35.590984, 37.842030, 35.463425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.709381, 37.980846, 35.619350>,  <35.906708, 38.212208, 35.879223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.709381, 37.980846, 35.619350> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544349, 0.377285, -0.749226,
		0.678472, -0.723259, 0.128733,
		-0.493316, -0.578405, -0.649683,
		35.561386, 37.807323, 35.424446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.339691, 37.884510, 35.454868>,  <35.906708, 38.212208, 35.879223>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.339691, 37.884510, 35.454868> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.004169, 37.857571, 35.238770>,  <35.802856, 37.841408, 35.109108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.004169, 37.857571, 35.238770>,  <36.339691, 37.884510, 35.454868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.004169, 37.857571, 35.238770> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509390, 0.253179, -0.822449,
		0.192163, -0.965073, -0.178066,
		-0.838806, -0.067339, -0.540250,
		35.752529, 37.837368, 35.076694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.543076, 37.400093, 34.903835>,  <36.339691, 37.884510, 35.454868>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.543076, 37.400093, 34.903835> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.229622, 37.608406, 34.768360>,  <36.041550, 37.733395, 34.687077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.229622, 37.608406, 34.768360>,  <36.543076, 37.400093, 34.903835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.229622, 37.608406, 34.768360> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503131, 0.212253, -0.837740,
		-0.364390, -0.826884, -0.428348,
		-0.783632, 0.520780, -0.338688,
		35.994534, 37.764641, 34.666752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.473087, 37.199528, 34.200047>,  <36.543076, 37.400093, 34.903835>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.473087, 37.199528, 34.200047> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.295475, 37.551571, 34.267273>,  <36.188908, 37.762798, 34.307610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.295475, 37.551571, 34.267273>,  <36.473087, 37.199528, 34.200047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.295475, 37.551571, 34.267273> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325895, 0.333354, -0.884685,
		-0.834645, -0.338053, -0.434842,
		-0.444027, 0.880111, 0.168063,
		36.162266, 37.815605, 34.317692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.145393, 37.414669, 33.559139>,  <36.473087, 37.199528, 34.200047>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.145393, 37.414669, 33.559139> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.174526, 37.748688, 33.777275>,  <36.192005, 37.949100, 33.908157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.174526, 37.748688, 33.777275>,  <36.145393, 37.414669, 33.559139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.174526, 37.748688, 33.777275> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136065, 0.533358, -0.834875,
		-0.988019, 0.135004, -0.074776,
		0.072829, 0.835047, 0.545338,
		36.196377, 37.999203, 33.940876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.722321, 37.813858, 33.156986>,  <36.145393, 37.414669, 33.559139>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.722321, 37.813858, 33.156986> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.976185, 38.016468, 33.390446>,  <36.128502, 38.138035, 33.530521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.976185, 38.016468, 33.390446>,  <35.722321, 37.813858, 33.156986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.976185, 38.016468, 33.390446> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210528, 0.613353, -0.761234,
		-0.743563, 0.605998, 0.282633,
		0.634660, 0.506523, 0.583645,
		36.166584, 38.168427, 33.565540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.555687, 38.496811, 33.144657>,  <35.722321, 37.813858, 33.156986>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.555687, 38.496811, 33.144657> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.946014, 38.487602, 33.231606>,  <36.180210, 38.482079, 33.283775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.946014, 38.487602, 33.231606>,  <35.555687, 38.496811, 33.144657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.946014, 38.487602, 33.231606> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166121, 0.724433, -0.669029,
		-0.142065, 0.688960, 0.710740,
		0.975818, -0.023023, 0.217368,
		36.238758, 38.480694, 33.296814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.784386, 39.196033, 33.099709>,  <35.555687, 38.496811, 33.144657>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.784386, 39.196033, 33.099709> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.110893, 38.965305, 33.087185>,  <36.306797, 38.826866, 33.079670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.110893, 38.965305, 33.087185>,  <35.784386, 39.196033, 33.099709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.110893, 38.965305, 33.087185> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306863, 0.478884, -0.822499,
		0.489429, 0.661774, 0.567904,
		0.816269, -0.576824, -0.031306,
		36.355774, 38.792259, 33.077793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.771938, 39.825104, 33.514061>,  <35.784386, 39.196033, 33.099709>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.771938, 39.825104, 33.514061> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.513218, 40.105080, 33.392906>,  <35.357986, 40.273064, 33.320213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.513218, 40.105080, 33.392906>,  <35.771938, 39.825104, 33.514061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.513218, 40.105080, 33.392906> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600806, -0.223000, 0.767661,
		0.469769, 0.678498, 0.564763,
		-0.646799, 0.699936, -0.302887,
		35.319180, 40.315060, 33.302040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.334377, 39.907772, 34.138805>,  <35.771938, 39.825104, 33.514061>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.334377, 39.907772, 34.138805> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.110905, 40.108807, 33.874901>,  <34.976822, 40.229427, 33.716560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.110905, 40.108807, 33.874901>,  <35.334377, 39.907772, 34.138805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.110905, 40.108807, 33.874901> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798910, -0.112463, 0.590843,
		0.222751, 0.857181, 0.464352,
		-0.558682, 0.502586, -0.659759,
		34.943298, 40.259583, 33.676971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.989178, 40.483562, 34.450821>,  <35.334377, 39.907772, 34.138805>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.989178, 40.483562, 34.450821> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.775784, 40.358875, 34.136311>,  <34.647747, 40.284065, 33.947605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.775784, 40.358875, 34.136311>,  <34.989178, 40.483562, 34.450821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.775784, 40.358875, 34.136311> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782757, -0.170231, 0.598592,
		-0.320438, 0.934803, -0.153180,
		-0.533489, -0.311714, -0.786272,
		34.615738, 40.265362, 33.900429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.373074, 40.791348, 34.582623>,  <34.989178, 40.483562, 34.450821>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.373074, 40.791348, 34.582623> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.279320, 40.508217, 34.316074>,  <34.223068, 40.338337, 34.156147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.279320, 40.508217, 34.316074>,  <34.373074, 40.791348, 34.582623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.279320, 40.508217, 34.316074> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819069, -0.225425, 0.527551,
		-0.523630, 0.669451, -0.526922,
		-0.234389, -0.707827, -0.666366,
		34.209003, 40.295868, 34.116165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.702953, 40.898670, 34.436195>,  <34.373074, 40.791348, 34.582623>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.702953, 40.898670, 34.436195> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.754402, 40.517925, 34.324902>,  <33.785271, 40.289478, 34.258125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.754402, 40.517925, 34.324902>,  <33.702953, 40.898670, 34.436195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.754402, 40.517925, 34.324902> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.921226, -0.218553, 0.321835,
		-0.367151, 0.214919, -0.904992,
		0.128621, -0.951864, -0.278231,
		33.792988, 40.232365, 34.241432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.060932, 40.739746, 34.458050>,  <33.702953, 40.898670, 34.436195>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.060932, 40.739746, 34.458050> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.253971, 40.391407, 34.420677>,  <33.369797, 40.182404, 34.398254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.253971, 40.391407, 34.420677>,  <33.060932, 40.739746, 34.458050>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.253971, 40.391407, 34.420677> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849131, -0.491356, 0.193766,
		-0.214647, -0.014178, -0.976589,
		0.482600, -0.870843, -0.093429,
		33.398750, 40.130154, 34.392647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.663773, 40.351131, 33.987110>,  <33.060932, 40.739746, 34.458050>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.663773, 40.351131, 33.987110> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.876785, 40.066238, 34.170036>,  <33.004593, 39.895302, 34.279793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.876785, 40.066238, 34.170036>,  <32.663773, 40.351131, 33.987110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.876785, 40.066238, 34.170036> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839736, -0.512287, 0.180014,
		0.106066, -0.479888, -0.870895,
		0.532535, -0.712229, 0.457315,
		33.036545, 39.852570, 34.307232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.270184, 39.777668, 33.943336>,  <32.663773, 40.351131, 33.987110>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.270184, 39.777668, 33.943336> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.514992, 39.645329, 34.230659>,  <32.661877, 39.565926, 34.403053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.514992, 39.645329, 34.230659>,  <32.270184, 39.777668, 33.943336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.514992, 39.645329, 34.230659> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670523, -0.698679, 0.249493,
		0.419325, -0.634339, -0.649447,
		0.612017, -0.330851, 0.718312,
		32.698597, 39.546074, 34.446152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.280815, 39.052986, 33.855701>,  <32.270184, 39.777668, 33.943336>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.280815, 39.052986, 33.855701> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.421135, 39.120491, 34.224148>,  <32.505325, 39.160992, 34.445217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.421135, 39.120491, 34.224148>,  <32.280815, 39.052986, 33.855701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.421135, 39.120491, 34.224148> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362339, -0.882553, 0.299684,
		0.863512, -0.438885, -0.248449,
		0.350796, 0.168758, 0.921121,
		32.526375, 39.171120, 34.500484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.535088, 38.397987, 34.169476>,  <32.280815, 39.052986, 33.855701>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.535088, 38.397987, 34.169476> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.459080, 38.627277, 34.488300>,  <32.413475, 38.764851, 34.679596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.459080, 38.627277, 34.488300>,  <32.535088, 38.397987, 34.169476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.459080, 38.627277, 34.488300> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606231, -0.707099, 0.363998,
		0.772253, -0.414036, 0.481870,
		-0.190022, 0.573224, 0.797061,
		32.402073, 38.799244, 34.727417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.781364, 38.006451, 34.781200>,  <32.535088, 38.397987, 34.169476>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.781364, 38.006451, 34.781200> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.532200, 38.280220, 34.932751>,  <32.382702, 38.444481, 35.023682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.532200, 38.280220, 34.932751>,  <32.781364, 38.006451, 34.781200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.532200, 38.280220, 34.932751> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385466, -0.689970, 0.612664,
		0.680733, 0.235593, 0.693613,
		-0.622912, 0.684424, 0.378872,
		32.345325, 38.485546, 35.046413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.842934, 38.021690, 35.454983>,  <32.781364, 38.006451, 34.781200>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.842934, 38.021690, 35.454983> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.472412, 38.139812, 35.361374>,  <32.250099, 38.210686, 35.305210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.472412, 38.139812, 35.361374>,  <32.842934, 38.021690, 35.454983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.472412, 38.139812, 35.361374> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376701, -0.712555, 0.591914,
		0.008039, 0.636446, 0.771280,
		-0.926300, 0.295301, -0.234021,
		32.194523, 38.228401, 35.291168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.766869, 41.407776, 30.802134> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.428787, 41.503693, 30.611080>,  <37.225941, 41.561245, 30.496449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.428787, 41.503693, 30.611080>,  <37.766869, 41.407776, 30.802134>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.428787, 41.503693, 30.611080> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514935, -0.126084, 0.847906,
		0.143100, 0.962602, 0.230044,
		-0.845201, 0.239793, -0.477634,
		37.175228, 41.575630, 30.467791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.525887, 42.002392, 31.113974>,  <37.766869, 41.407776, 30.802134>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.525887, 42.002392, 31.113974> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.251461, 41.763130, 30.948309>,  <37.086807, 41.619572, 30.848911>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.251461, 41.763130, 30.948309>,  <37.525887, 42.002392, 31.113974>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.251461, 41.763130, 30.948309> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405434, -0.158349, 0.900305,
		-0.604105, 0.785579, -0.133876,
		-0.686062, -0.598156, -0.414159,
		37.045643, 41.583683, 30.824060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.036900, 41.962170, 31.619593>,  <37.525887, 42.002392, 31.113974>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.036900, 41.962170, 31.619593> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.852970, 41.723907, 31.356152>,  <36.742611, 41.580952, 31.198088>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.852970, 41.723907, 31.356152>,  <37.036900, 41.962170, 31.619593>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.852970, 41.723907, 31.356152> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696821, -0.217706, 0.683407,
		-0.550458, 0.773173, -0.314959,
		-0.459824, -0.595657, -0.658601,
		36.715023, 41.545212, 31.158571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.416637, 42.319397, 31.536871>,  <37.036900, 41.962170, 31.619593>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.416637, 42.319397, 31.536871> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.403728, 41.922668, 31.487467>,  <36.395985, 41.684631, 31.457825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.403728, 41.922668, 31.487467>,  <36.416637, 42.319397, 31.536871>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.403728, 41.922668, 31.487467> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614920, -0.077718, 0.784750,
		-0.787929, 0.101276, -0.607381,
		-0.032272, -0.991818, -0.123513,
		36.394047, 41.625122, 31.450413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.684265, 42.054703, 31.729002>,  <36.416637, 42.319397, 31.536871>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.684265, 42.054703, 31.729002> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.911255, 41.727585, 31.767351>,  <36.047447, 41.531315, 31.790361>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.911255, 41.727585, 31.767351>,  <35.684265, 42.054703, 31.729002>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.911255, 41.727585, 31.767351> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574290, -0.309660, 0.757827,
		-0.590058, -0.485103, -0.645373,
		0.567470, -0.817793, 0.095873,
		36.081497, 41.482246, 31.796114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.177181, 41.544937, 31.693842>,  <35.684265, 42.054703, 31.729002>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.177181, 41.544937, 31.693842> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.513439, 41.414227, 31.866604>,  <35.715195, 41.335800, 31.970261>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.513439, 41.414227, 31.866604>,  <35.177181, 41.544937, 31.693842>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.513439, 41.414227, 31.866604> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537313, -0.403134, 0.740795,
		-0.067959, -0.854810, -0.514472,
		0.840640, -0.326776, 0.431904,
		35.765633, 41.316193, 31.996176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.151375, 40.793186, 31.769142>,  <35.177181, 41.544937, 31.693842>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.151375, 40.793186, 31.769142> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.425560, 40.881413, 32.046700>,  <35.590073, 40.934349, 32.213234>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.425560, 40.881413, 32.046700>,  <35.151375, 40.793186, 31.769142>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.425560, 40.881413, 32.046700> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502087, -0.546990, 0.669859,
		0.527298, -0.807560, -0.264202,
		0.685467, 0.220563, 0.693892,
		35.631199, 40.947582, 32.254868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.193684, 40.182556, 32.116093>,  <35.151375, 40.793186, 31.769142>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.193684, 40.182556, 32.116093> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.375980, 40.430859, 32.371269>,  <35.485359, 40.579838, 32.524376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.375980, 40.430859, 32.371269>,  <35.193684, 40.182556, 32.116093>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.375980, 40.430859, 32.371269> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393295, -0.502509, 0.769937,
		0.798511, -0.601791, 0.015125,
		0.455741, 0.620752, 0.637940,
		35.512703, 40.617085, 32.562653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.617615, 39.803200, 32.626129>,  <35.193684, 40.182556, 32.116093>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.617615, 39.803200, 32.626129> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.519653, 40.152714, 32.794186>,  <35.460876, 40.362423, 32.895020>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.519653, 40.152714, 32.794186>,  <35.617615, 39.803200, 32.626129>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.519653, 40.152714, 32.794186> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464103, -0.486115, 0.740473,
		0.851252, -0.013644, 0.524579,
		-0.244903, 0.873788, 0.420139,
		35.446182, 40.414852, 32.920227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.382965, 39.685509, 32.920593>,  <35.617615, 39.803200, 32.626129>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.382965, 39.685509, 32.920593> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.501064, 39.324673, 32.794697>,  <36.571922, 39.108170, 32.719158>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.501064, 39.324673, 32.794697>,  <36.382965, 39.685509, 32.920593>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.501064, 39.324673, 32.794697> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653780, 0.430976, -0.621958,
		0.696708, -0.022140, 0.717013,
		0.295245, -0.902092, -0.314739,
		36.589638, 39.054047, 32.700275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.101501, 39.750134, 32.644909>,  <36.382965, 39.685509, 32.920593>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.101501, 39.750134, 32.644909> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.997746, 39.395245, 32.492302>,  <36.935493, 39.182312, 32.400738>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.997746, 39.395245, 32.492302>,  <37.101501, 39.750134, 32.644909>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.997746, 39.395245, 32.492302> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694736, 0.102994, -0.711853,
		0.670866, -0.449697, 0.589671,
		-0.259385, -0.887223, -0.381516,
		36.919930, 39.129078, 32.377846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.712910, 39.329075, 32.473106>,  <37.101501, 39.750134, 32.644909>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.712910, 39.329075, 32.473106> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.446255, 39.158413, 32.228626>,  <37.286263, 39.056015, 32.081940>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.446255, 39.158413, 32.228626>,  <37.712910, 39.329075, 32.473106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.446255, 39.158413, 32.228626> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660332, 0.042332, -0.749780,
		0.345769, -0.903424, 0.253513,
		-0.666638, -0.426653, -0.611197,
		37.246262, 39.030418, 32.045269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.145248, 38.852089, 32.063969>,  <37.712910, 39.329075, 32.473106>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.145248, 38.852089, 32.063969> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.811821, 38.917904, 31.853027>,  <37.611767, 38.957394, 31.726463>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.811821, 38.917904, 31.853027>,  <38.145248, 38.852089, 32.063969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.811821, 38.917904, 31.853027> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551382, 0.189228, -0.812509,
		-0.033899, -0.968050, -0.248456,
		-0.833564, 0.164537, -0.527350,
		37.561752, 38.967266, 31.694822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.235161, 38.426598, 31.523109>,  <38.145248, 38.852089, 32.063969>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.235161, 38.426598, 31.523109> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.970261, 38.701180, 31.402971>,  <37.811321, 38.865929, 31.330889>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.970261, 38.701180, 31.402971>,  <38.235161, 38.426598, 31.523109>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.970261, 38.701180, 31.402971> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531347, 0.147622, -0.834193,
		-0.528299, -0.712030, -0.462508,
		-0.662247, 0.686456, -0.300346,
		37.771587, 38.907116, 31.312868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.216743, 38.390995, 30.821066>,  <38.235161, 38.426598, 31.523109>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.216743, 38.390995, 30.821066> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.038509, 38.746998, 30.859728>,  <37.931568, 38.960598, 30.882925>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.038509, 38.746998, 30.859728>,  <38.216743, 38.390995, 30.821066>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.038509, 38.746998, 30.859728> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378122, 0.284965, -0.880806,
		-0.811466, -0.355927, -0.463507,
		-0.445586, 0.890006, 0.096656,
		37.904835, 39.014000, 30.888725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.013042, 38.513348, 30.206642>,  <38.216743, 38.390995, 30.821066>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.013042, 38.513348, 30.206642> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.028965, 38.874546, 30.377764>,  <38.038517, 39.091267, 30.480436>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.028965, 38.874546, 30.377764>,  <38.013042, 38.513348, 30.206642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.028965, 38.874546, 30.377764> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395864, 0.378858, -0.836515,
		-0.917446, 0.202647, -0.342384,
		0.039802, 0.902996, 0.427802,
		38.040905, 39.145443, 30.506104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.757160, 38.932323, 29.702654>,  <38.013042, 38.513348, 30.206642>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.757160, 38.932323, 29.702654> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.988419, 39.159237, 29.937237>,  <38.127174, 39.295383, 30.077988>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.988419, 39.159237, 29.937237>,  <37.757160, 38.932323, 29.702654>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.988419, 39.159237, 29.937237> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426542, 0.402592, -0.809927,
		-0.695563, 0.718406, -0.009213,
		0.578147, 0.567285, 0.586459,
		38.161861, 39.329422, 30.113174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.891064, 39.571453, 29.309601>,  <37.757160, 38.932323, 29.702654>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.891064, 39.571453, 29.309601> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.177761, 39.557438, 29.588184>,  <38.349781, 39.549026, 29.755335>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.177761, 39.557438, 29.588184>,  <37.891064, 39.571453, 29.309601>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.177761, 39.557438, 29.588184> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661282, 0.351145, -0.662875,
		-0.221329, 0.935665, 0.274854,
		0.716742, -0.035042, 0.696457,
		38.392784, 39.546925, 29.797121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.255695, 40.260578, 29.274462>,  <37.891064, 39.571453, 29.309601>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.255695, 40.260578, 29.274462> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.501209, 40.021790, 29.481112>,  <38.648518, 39.878517, 29.605103>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.501209, 40.021790, 29.481112>,  <38.255695, 40.260578, 29.274462>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.501209, 40.021790, 29.481112> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743929, 0.218280, -0.631604,
		0.264278, 0.771999, 0.578078,
		0.613781, -0.596968, 0.516626,
		38.685345, 39.842701, 29.636099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.884556, 40.549656, 29.255072>,  <38.255695, 40.260578, 29.274462>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.884556, 40.549656, 29.255072> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.024025, 40.189068, 29.357656>,  <39.107708, 39.972713, 29.419209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.024025, 40.189068, 29.357656>,  <38.884556, 40.549656, 29.255072>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.024025, 40.189068, 29.357656> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787895, 0.133731, -0.601114,
		0.507590, 0.411659, 0.756894,
		0.348675, -0.901472, 0.256464,
		39.128628, 39.918625, 29.434595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.633553, 40.738071, 29.192490>,  <38.884556, 40.549656, 29.255072>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.633553, 40.738071, 29.192490> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.601971, 40.339725, 29.174490>,  <39.583019, 40.100719, 29.163691>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.601971, 40.339725, 29.174490>,  <39.633553, 40.738071, 29.192490>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.601971, 40.339725, 29.174490> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660688, -0.018475, -0.750433,
		0.746496, -0.088983, 0.659413,
		-0.078959, -0.995862, -0.044999,
		39.578281, 40.040966, 29.160990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.307953, 40.486919, 29.195391>,  <39.633553, 40.738071, 29.192490>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.307953, 40.486919, 29.195391> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.086136, 40.189651, 29.045628>,  <39.953045, 40.011292, 28.955770>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.086136, 40.189651, 29.045628>,  <40.307953, 40.486919, 29.195391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.086136, 40.189651, 29.045628> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554961, 0.004987, -0.831862,
		0.620085, -0.669080, 0.409666,
		-0.554539, -0.743173, -0.374406,
		39.919773, 39.966698, 28.933306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.743671, 39.953667, 28.888126>,  <40.307953, 40.486919, 29.195391>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.743671, 39.953667, 28.888126> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.395687, 39.881687, 28.704479>,  <40.186897, 39.838497, 28.594292>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.395687, 39.881687, 28.704479>,  <40.743671, 39.953667, 28.888126>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.395687, 39.881687, 28.704479> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461924, 0.028536, -0.886460,
		0.172624, -0.983261, 0.058301,
		-0.869958, -0.179955, -0.459117,
		40.134701, 39.827702, 28.566744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<33.349808, 39.445450, 24.394281> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.551422, 39.696022, 24.632114>,  <33.672390, 39.846367, 24.774815>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.551422, 39.696022, 24.632114>,  <33.349808, 39.445450, 24.394281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.551422, 39.696022, 24.632114> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259835, -0.546554, 0.796093,
		0.823670, -0.555755, -0.112715,
		0.504038, 0.626430, 0.594585,
		33.702633, 39.883949, 24.810490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.804939, 39.052250, 24.854937>,  <33.349808, 39.445450, 24.394281>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.804939, 39.052250, 24.854937> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.739838, 39.405933, 25.030064>,  <33.700775, 39.618145, 25.135139>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.739838, 39.405933, 25.030064>,  <33.804939, 39.052250, 24.854937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.739838, 39.405933, 25.030064> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077652, -0.453838, 0.887695,
		0.983606, 0.110480, 0.142525,
		-0.162755, 0.884209, 0.437819,
		33.691010, 39.671196, 25.161409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.212391, 39.095291, 25.388786>,  <33.804939, 39.052250, 24.854937>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.212391, 39.095291, 25.388786> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.946163, 39.377857, 25.485119>,  <33.786427, 39.547398, 25.542919>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.946163, 39.377857, 25.485119>,  <34.212391, 39.095291, 25.388786>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.946163, 39.377857, 25.485119> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099079, -0.236197, 0.966641,
		0.739733, 0.667224, 0.087213,
		-0.665566, 0.706416, 0.240831,
		33.746494, 39.589783, 25.557367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.365589, 39.342339, 26.066278>,  <34.212391, 39.095291, 25.388786>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.365589, 39.342339, 26.066278> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.987644, 39.469139, 26.033434>,  <33.760876, 39.545219, 26.013727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.987644, 39.469139, 26.033434>,  <34.365589, 39.342339, 26.066278>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.987644, 39.469139, 26.033434> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183880, -0.306136, 0.934061,
		0.270964, 0.897658, 0.347547,
		-0.944863, 0.317004, -0.082110,
		33.704185, 39.564240, 26.008801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.273308, 39.837444, 26.547150>,  <34.365589, 39.342339, 26.066278>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.273308, 39.837444, 26.547150> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.910828, 39.695629, 26.454981>,  <33.693340, 39.610538, 26.399679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.910828, 39.695629, 26.454981>,  <34.273308, 39.837444, 26.547150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.910828, 39.695629, 26.454981> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185671, -0.155949, 0.970158,
		-0.379894, 0.921945, 0.075494,
		-0.906205, -0.354540, -0.230422,
		33.638966, 39.589268, 26.385855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.751034, 40.081234, 26.987829>,  <34.273308, 39.837444, 26.547150>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.751034, 40.081234, 26.987829> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.588123, 39.733120, 26.877035>,  <33.490376, 39.524250, 26.810558>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.588123, 39.733120, 26.877035>,  <33.751034, 40.081234, 26.987829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.588123, 39.733120, 26.877035> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416157, -0.093122, 0.904512,
		-0.812980, 0.483658, -0.324250,
		-0.407279, -0.870289, -0.276984,
		33.465939, 39.472034, 26.793940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.064629, 40.077076, 27.268364>,  <33.751034, 40.081234, 26.987829>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.064629, 40.077076, 27.268364> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.136066, 39.693005, 27.182417>,  <33.178928, 39.462563, 27.130848>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.136066, 39.693005, 27.182417>,  <33.064629, 40.077076, 27.268364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.136066, 39.693005, 27.182417> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442115, -0.273407, 0.854273,
		-0.878998, -0.057575, -0.473337,
		0.178598, -0.960174, -0.214869,
		33.189648, 39.404953, 27.117956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.591671, 39.799347, 27.609394>,  <33.064629, 40.077076, 27.268364>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.591671, 39.799347, 27.609394> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.810982, 39.477077, 27.519693>,  <32.942566, 39.283714, 27.465874>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.810982, 39.477077, 27.519693>,  <32.591671, 39.799347, 27.609394>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.810982, 39.477077, 27.519693> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527872, -0.541376, 0.654418,
		-0.648651, -0.240423, -0.722114,
		0.548272, -0.805673, -0.224252,
		32.975464, 39.235374, 27.452417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.099819, 39.249928, 27.658596>,  <32.591671, 39.799347, 27.609394>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.099819, 39.249928, 27.658596> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.456181, 39.074238, 27.704844>,  <32.669998, 38.968826, 27.732592>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.456181, 39.074238, 27.704844>,  <32.099819, 39.249928, 27.658596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.456181, 39.074238, 27.704844> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295388, -0.366961, 0.882092,
		-0.345008, -0.820014, -0.456669,
		0.890907, -0.439223, 0.115618,
		32.723454, 38.942471, 27.739529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.973881, 38.583225, 27.841230>,  <32.099819, 39.249928, 27.658596>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.973881, 38.583225, 27.841230> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.344185, 38.670139, 27.965010>,  <32.566368, 38.722286, 28.039278>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.344185, 38.670139, 27.965010>,  <31.973881, 38.583225, 27.841230>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.344185, 38.670139, 27.965010> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272360, -0.184491, 0.944343,
		0.262280, -0.958515, -0.111615,
		0.925759, 0.217283, 0.309450,
		32.621914, 38.735325, 28.057844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.233891, 37.945217, 28.119381>,  <31.973881, 38.583225, 27.841230>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.233891, 37.945217, 28.119381> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.475086, 38.205193, 28.304415>,  <32.619804, 38.361179, 28.415436>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.475086, 38.205193, 28.304415>,  <32.233891, 37.945217, 28.119381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.475086, 38.205193, 28.304415> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229951, -0.413644, 0.880921,
		0.763889, -0.637557, -0.099969,
		0.602989, 0.649938, 0.462585,
		32.655983, 38.400173, 28.443190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.672478, 37.588268, 28.519190>,  <32.233891, 37.945217, 28.119381>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.672478, 37.588268, 28.519190> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.697090, 37.946163, 28.696121>,  <32.711857, 38.160900, 28.802280>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.697090, 37.946163, 28.696121>,  <32.672478, 37.588268, 28.519190>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.697090, 37.946163, 28.696121> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178376, -0.426178, 0.886879,
		0.982036, -0.133475, 0.133375,
		0.061535, 0.894739, 0.442331,
		32.715549, 38.214584, 28.828821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.028473, 37.468418, 29.157034>,  <32.672478, 37.588268, 28.519190>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.028473, 37.468418, 29.157034> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.847801, 37.816444, 29.235998>,  <32.739399, 38.025261, 29.283377>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.847801, 37.816444, 29.235998>,  <33.028473, 37.468418, 29.157034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.847801, 37.816444, 29.235998> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284916, -0.350351, 0.892232,
		0.845462, 0.346759, 0.406142,
		-0.451682, 0.870064, 0.197411,
		32.712296, 38.077465, 29.295221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.157784, 37.585884, 29.836649>,  <33.028473, 37.468418, 29.157034>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.157784, 37.585884, 29.836649> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.834301, 37.817009, 29.792595>,  <32.640213, 37.955685, 29.766163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.834301, 37.817009, 29.792595>,  <33.157784, 37.585884, 29.836649>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.834301, 37.817009, 29.792595> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382443, -0.374246, 0.844794,
		0.446913, 0.725310, 0.523635,
		-0.808706, 0.577810, -0.110134,
		32.591690, 37.990353, 29.759554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.722336, 37.268265, 30.321955>,  <33.157784, 37.585884, 29.836649>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.722336, 37.268265, 30.321955> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.900169, 36.936489, 30.186676>,  <34.006870, 36.737423, 30.105509>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.900169, 36.936489, 30.186676>,  <33.722336, 37.268265, 30.321955>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.900169, 36.936489, 30.186676> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676323, 0.558395, -0.480398,
		0.587306, -0.015151, 0.809223,
		0.444587, -0.829437, -0.338196,
		34.033546, 36.687656, 30.085217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.489727, 37.357868, 30.337053>,  <33.722336, 37.268265, 30.321955>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.489727, 37.357868, 30.337053> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.428226, 37.070282, 30.065920>,  <34.391327, 36.897732, 29.903240>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.428226, 37.070282, 30.065920>,  <34.489727, 37.357868, 30.337053>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.428226, 37.070282, 30.065920> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673177, 0.425947, -0.604485,
		0.723322, -0.549240, 0.418499,
		-0.153749, -0.718961, -0.677832,
		34.382103, 36.854595, 29.862570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.156986, 37.174179, 30.010273>,  <34.489727, 37.357868, 30.337053>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.156986, 37.174179, 30.010273> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.880882, 37.037506, 29.755148>,  <34.715221, 36.955502, 29.602074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.880882, 37.037506, 29.755148>,  <35.156986, 37.174179, 30.010273>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.880882, 37.037506, 29.755148> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594876, 0.233831, -0.769055,
		0.411910, -0.910263, 0.041853,
		-0.690256, -0.341678, -0.637811,
		34.673805, 36.935001, 29.563805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.494335, 36.698421, 29.468678>,  <35.156986, 37.174179, 30.010273>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.494335, 36.698421, 29.468678> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.161091, 36.840336, 29.298948>,  <34.961143, 36.925484, 29.197111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.161091, 36.840336, 29.298948>,  <35.494335, 36.698421, 29.468678>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.161091, 36.840336, 29.298948> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512613, 0.207160, -0.833254,
		-0.207721, -0.911710, -0.354454,
		-0.833114, 0.354782, -0.424323,
		34.911156, 36.946770, 29.171652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.704056, 36.532860, 28.822094>,  <35.494335, 36.698421, 29.468678>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.704056, 36.532860, 28.822094> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.379932, 36.755116, 28.747620>,  <35.185459, 36.888470, 28.702936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.379932, 36.755116, 28.747620>,  <35.704056, 36.532860, 28.822094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.379932, 36.755116, 28.747620> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385741, 0.266579, -0.883255,
		-0.441136, -0.787530, -0.430344,
		-0.810310, 0.555637, -0.186185,
		35.136841, 36.921806, 28.691765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.661156, 36.481239, 28.116199>,  <35.704056, 36.532860, 28.822094>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.661156, 36.481239, 28.116199> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.438042, 36.799397, 28.211046>,  <35.304173, 36.990292, 28.267954>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.438042, 36.799397, 28.211046>,  <35.661156, 36.481239, 28.116199>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.438042, 36.799397, 28.211046> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178865, 0.394173, -0.901462,
		-0.810481, -0.460413, -0.362133,
		-0.557788, 0.795391, 0.237118,
		35.270706, 37.038013, 28.282181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.099701, 36.500931, 27.615753>,  <35.661156, 36.481239, 28.116199>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.099701, 36.500931, 27.615753> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.154629, 36.864437, 27.773378>,  <35.187588, 37.082542, 27.867954>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.154629, 36.864437, 27.773378>,  <35.099701, 36.500931, 27.615753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.154629, 36.864437, 27.773378> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149313, 0.374294, -0.915210,
		-0.979208, 0.184519, -0.084291,
		0.137324, 0.908767, 0.394062,
		35.195827, 37.137066, 27.891598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.619404, 36.892990, 27.332893>,  <35.099701, 36.500931, 27.615753>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.619404, 36.892990, 27.332893> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.904869, 37.141361, 27.462589>,  <35.076149, 37.290382, 27.540407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.904869, 37.141361, 27.462589>,  <34.619404, 36.892990, 27.332893>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.904869, 37.141361, 27.462589> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043565, 0.422637, -0.905252,
		-0.699130, 0.660173, 0.274571,
		0.713666, 0.620927, 0.324238,
		35.118969, 37.327641, 27.559860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.550148, 37.536346, 26.963602>,  <34.619404, 36.892990, 27.332893>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.550148, 37.536346, 26.963602> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.920483, 37.565823, 27.111868>,  <35.142685, 37.583508, 27.200827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.920483, 37.565823, 27.111868>,  <34.550148, 37.536346, 26.963602>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.920483, 37.565823, 27.111868> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345144, 0.234642, -0.908745,
		-0.153936, 0.969285, 0.191808,
		0.925840, 0.073687, 0.370663,
		35.198235, 37.587929, 27.223066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.723808, 38.135647, 26.954498>,  <34.550148, 37.536346, 26.963602>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.723808, 38.135647, 26.954498> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.060150, 37.920948, 26.926617>,  <35.261955, 37.792130, 26.909887>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.060150, 37.920948, 26.926617>,  <34.723808, 38.135647, 26.954498>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.060150, 37.920948, 26.926617> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327599, 0.607210, -0.723861,
		0.430859, 0.585827, 0.686416,
		0.840856, -0.536752, -0.069706,
		35.312408, 37.759922, 26.905704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.174519, 38.619045, 26.865089>,  <34.723808, 38.135647, 26.954498>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.174519, 38.619045, 26.865089> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.391525, 38.313179, 26.725967>,  <35.521729, 38.129662, 26.642494>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.391525, 38.313179, 26.725967>,  <35.174519, 38.619045, 26.865089>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.391525, 38.313179, 26.725967> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482196, 0.622493, -0.616433,
		0.687868, 0.166716, 0.706430,
		0.542517, -0.764662, -0.347804,
		35.554279, 38.083782, 26.621626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.799873, 38.915009, 26.759609>,  <35.174519, 38.619045, 26.865089>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.799873, 38.915009, 26.759609> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.824417, 38.573990, 26.551996>,  <35.839146, 38.369377, 26.427427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.824417, 38.573990, 26.551996>,  <35.799873, 38.915009, 26.759609>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.824417, 38.573990, 26.551996> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601191, 0.446672, -0.662611,
		0.796745, -0.271378, 0.539954,
		0.061364, -0.852548, -0.519034,
		35.842827, 38.318226, 26.396286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.452602, 38.907917, 26.594896>,  <35.799873, 38.915009, 26.759609>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.452602, 38.907917, 26.594896> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.253853, 38.677837, 26.334967>,  <36.134605, 38.539791, 26.179008>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.253853, 38.677837, 26.334967>,  <36.452602, 38.907917, 26.594896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.253853, 38.677837, 26.334967> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569586, 0.348793, -0.744255,
		0.654746, -0.739928, 0.154318,
		-0.496870, -0.575195, -0.649823,
		36.104794, 38.505280, 26.140020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.967354, 38.612522, 26.133951>,  <36.452602, 38.907917, 26.594896>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.967354, 38.612522, 26.133951> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.612938, 38.614914, 25.948523>,  <36.400288, 38.616348, 25.837265>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.612938, 38.614914, 25.948523>,  <36.967354, 38.612522, 26.133951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.612938, 38.614914, 25.948523> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434161, 0.361401, -0.825163,
		0.162604, -0.932391, -0.322810,
		-0.886039, 0.005977, -0.463573,
		36.347126, 38.616707, 25.809450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.320393, 37.961281, 26.061676>,  <36.967354, 38.612522, 26.133951>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.320393, 37.961281, 26.061676> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.697514, 38.044167, 26.166126>,  <37.923786, 38.093899, 26.228796>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.697514, 38.044167, 26.166126>,  <37.320393, 37.961281, 26.061676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.697514, 38.044167, 26.166126> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213843, -0.224969, 0.950610,
		0.255724, -0.952078, -0.167791,
		0.942803, 0.207213, 0.261125,
		37.980354, 38.106331, 26.244463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.332901, 37.411175, 26.505526>,  <37.320393, 37.961281, 26.061676>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.332901, 37.411175, 26.505526> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.647591, 37.646183, 26.581303>,  <37.836403, 37.787186, 26.626768>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.647591, 37.646183, 26.581303>,  <37.332901, 37.411175, 26.505526>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.647591, 37.646183, 26.581303> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032324, -0.345672, 0.937798,
		0.616458, -0.731665, -0.290940,
		0.786724, 0.587517, 0.189442,
		37.883610, 37.822437, 26.638136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.862041, 36.997330, 26.795073>,  <37.332901, 37.411175, 26.505526>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.862041, 36.997330, 26.795073> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.981121, 37.356422, 26.924969>,  <38.052567, 37.571877, 27.002907>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.981121, 37.356422, 26.924969>,  <37.862041, 36.997330, 26.795073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.981121, 37.356422, 26.924969> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252949, -0.402181, 0.879925,
		0.920540, -0.179808, -0.346808,
		0.297697, 0.897730, 0.324742,
		38.070431, 37.625740, 27.022390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.463009, 36.864147, 27.086596>,  <37.862041, 36.997330, 26.795073>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.463009, 36.864147, 27.086596> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.336700, 37.207687, 27.247923>,  <38.260918, 37.413811, 27.344719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.336700, 37.207687, 27.247923>,  <38.463009, 36.864147, 27.086596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.336700, 37.207687, 27.247923> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143155, -0.377077, 0.915052,
		0.937975, 0.346681, -0.003880,
		-0.315768, 0.858851, 0.403318,
		38.241970, 37.465343, 27.368917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.914803, 37.002213, 27.618639>,  <38.463009, 36.864147, 27.086596>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.914803, 37.002213, 27.618639> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.590904, 37.210011, 27.727766>,  <38.396564, 37.334690, 27.793242>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.590904, 37.210011, 27.727766>,  <38.914803, 37.002213, 27.618639>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.590904, 37.210011, 27.727766> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079191, -0.363937, 0.928051,
		0.581406, 0.773095, 0.253559,
		-0.809750, 0.519495, 0.272818,
		38.347980, 37.365860, 27.809610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.106033, 37.258453, 28.265852>,  <38.914803, 37.002213, 27.618639>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.106033, 37.258453, 28.265852> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.707577, 37.243172, 28.234251>,  <38.468502, 37.234001, 28.215290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.707577, 37.243172, 28.234251>,  <39.106033, 37.258453, 28.265852>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.707577, 37.243172, 28.234251> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051995, -0.468247, 0.882067,
		-0.070694, 0.882771, 0.464454,
		-0.996142, -0.038208, -0.079002,
		38.408733, 37.231709, 28.210550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.916225, 37.438004, 28.863508>,  <39.106033, 37.258453, 28.265852>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.916225, 37.438004, 28.863508> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.599739, 37.237701, 28.723093>,  <38.409847, 37.117519, 28.638844>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.599739, 37.237701, 28.723093>,  <38.916225, 37.438004, 28.863508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.599739, 37.237701, 28.723093> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085091, -0.478293, 0.874068,
		-0.605589, 0.721446, 0.335823,
		-0.791215, -0.500750, -0.351038,
		38.362373, 37.087475, 28.617781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.316319, 37.573906, 29.406410>,  <38.916225, 37.438004, 28.863508>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.316319, 37.573906, 29.406410> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.238811, 37.241898, 29.197216>,  <38.192307, 37.042690, 29.071699>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.238811, 37.241898, 29.197216>,  <38.316319, 37.573906, 29.406410>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.238811, 37.241898, 29.197216> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184338, -0.492789, 0.850399,
		-0.963573, 0.261189, -0.057516,
		-0.193771, -0.830024, -0.522985,
		38.180679, 36.992889, 29.040321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.753372, 37.301186, 29.652000>,  <38.316319, 37.573906, 29.406410>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.753372, 37.301186, 29.652000> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.915539, 36.983368, 29.471184>,  <38.012836, 36.792679, 29.362694>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.915539, 36.983368, 29.471184>,  <37.753372, 37.301186, 29.652000>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.915539, 36.983368, 29.471184> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131915, -0.540175, 0.831150,
		-0.904565, -0.277329, -0.323806,
		0.405414, -0.794544, -0.452039,
		38.037163, 36.745007, 29.335571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.407272, 36.777203, 29.956999>,  <37.753372, 37.301186, 29.652000>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.407272, 36.777203, 29.956999> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.720131, 36.601528, 29.780199>,  <37.907845, 36.496124, 29.674118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.720131, 36.601528, 29.780199>,  <37.407272, 36.777203, 29.956999>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.720131, 36.601528, 29.780199> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074054, -0.769856, 0.633907,
		-0.618679, -0.463076, -0.634663,
		0.782146, -0.439185, -0.442001,
		37.954773, 36.469772, 29.647598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.160557, 36.185432, 29.633909>,  <37.407272, 36.777203, 29.956999>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.160557, 36.185432, 29.633909> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.551632, 36.162106, 29.714636>,  <37.786278, 36.148109, 29.763071>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.551632, 36.162106, 29.714636>,  <37.160557, 36.185432, 29.633909>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.551632, 36.162106, 29.714636> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185362, -0.691537, 0.698152,
		0.098848, -0.719983, -0.686916,
		0.977686, -0.058317, 0.201815,
		37.844936, 36.144611, 29.775181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.331821, 35.435028, 29.814821>,  <37.160557, 36.185432, 29.633909>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.331821, 35.435028, 29.814821> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.633652, 35.661774, 29.947056>,  <37.814751, 35.797821, 30.026398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.633652, 35.661774, 29.947056>,  <37.331821, 35.435028, 29.814821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.633652, 35.661774, 29.947056> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068004, -0.568616, 0.819787,
		0.652682, -0.596109, -0.467612,
		0.754574, 0.566860, 0.330588,
		37.860023, 35.831833, 30.046232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.712341, 34.980976, 30.038210>,  <37.331821, 35.435028, 29.814821>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.712341, 34.980976, 30.038210> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.842186, 35.319180, 30.207790>,  <37.920094, 35.522102, 30.309540>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.842186, 35.319180, 30.207790>,  <37.712341, 34.980976, 30.038210>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.842186, 35.319180, 30.207790> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127717, -0.404937, 0.905381,
		0.937184, -0.348045, -0.023461,
		0.324614, 0.845512, 0.423952,
		37.939571, 35.572834, 30.334976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.147030, 34.732498, 30.600090>,  <37.712341, 34.980976, 30.038210>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.147030, 34.732498, 30.600090> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.064629, 35.108528, 30.708773>,  <38.015190, 35.334145, 30.773981>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.064629, 35.108528, 30.708773>,  <38.147030, 34.732498, 30.600090>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.064629, 35.108528, 30.708773> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142145, -0.303462, 0.942182,
		0.968173, 0.155468, 0.196140,
		-0.206000, 0.940075, 0.271704,
		38.002831, 35.390553, 30.790283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<40.877411, 39.495674, 28.307053> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.519958, 39.648792, 28.213343>,  <40.305485, 39.740662, 28.157118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.519958, 39.648792, 28.213343>,  <40.877411, 39.495674, 28.307053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.519958, 39.648792, 28.213343> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358484, 0.294781, -0.885773,
		-0.270010, -0.875541, -0.400653,
		-0.893635, 0.382794, -0.234273,
		40.251869, 39.763630, 28.143061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.595673, 39.176758, 27.674574>,  <40.877411, 39.495674, 28.307053>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.595673, 39.176758, 27.674574> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.382950, 39.515495, 27.677227>,  <40.255318, 39.718739, 27.678818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.382950, 39.515495, 27.677227>,  <40.595673, 39.176758, 27.674574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.382950, 39.515495, 27.677227> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125397, 0.086488, -0.988330,
		-0.837531, -0.524769, -0.152187,
		-0.531807, 0.846840, 0.006632,
		40.223408, 39.769547, 27.679216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.334965, 39.245583, 27.038893>,  <40.595673, 39.176758, 27.674574>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.334965, 39.245583, 27.038893> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.275764, 39.623634, 27.155392>,  <40.240246, 39.850464, 27.225290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.275764, 39.623634, 27.155392>,  <40.334965, 39.245583, 27.038893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.275764, 39.623634, 27.155392> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035700, 0.299402, -0.953459,
		-0.988343, -0.130713, -0.078052,
		-0.147999, 0.945131, 0.291246,
		40.231365, 39.907173, 27.242765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.804489, 39.581661, 26.668358>,  <40.334965, 39.245583, 27.038893>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.804489, 39.581661, 26.668358> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.058414, 39.869465, 26.781013>,  <40.210770, 40.042149, 26.848606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.058414, 39.869465, 26.781013>,  <39.804489, 39.581661, 26.668358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.058414, 39.869465, 26.781013> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028544, 0.386090, -0.922019,
		-0.772137, 0.577272, 0.265633,
		0.634815, 0.719508, 0.281637,
		40.248859, 40.085316, 26.865505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.411278, 40.314865, 26.595551>,  <39.804489, 39.581661, 26.668358>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.411278, 40.314865, 26.595551> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.806843, 40.373940, 26.589258>,  <40.044182, 40.409386, 26.585484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.806843, 40.373940, 26.589258>,  <39.411278, 40.314865, 26.595551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.806843, 40.373940, 26.589258> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113889, 0.686077, -0.718559,
		-0.095330, 0.712381, 0.695288,
		0.988909, 0.147686, -0.015729,
		40.103516, 40.418243, 26.584539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.451012, 41.033993, 26.412952>,  <39.411278, 40.314865, 26.595551>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.451012, 41.033993, 26.412952> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.824635, 40.913506, 26.336226>,  <40.048809, 40.841213, 26.290190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.824635, 40.913506, 26.336226>,  <39.451012, 41.033993, 26.412952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.824635, 40.913506, 26.336226> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024131, 0.589150, -0.807663,
		0.356297, 0.749778, 0.557572,
		0.934061, -0.301222, -0.191819,
		40.104855, 40.823139, 26.278679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.783531, 41.588474, 26.179647>,  <39.451012, 41.033993, 26.412952>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.783531, 41.588474, 26.179647> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.048943, 41.324245, 26.039145>,  <40.208187, 41.165707, 25.954844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.048943, 41.324245, 26.039145>,  <39.783531, 41.588474, 26.179647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.048943, 41.324245, 26.039145> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020566, 0.453215, -0.891164,
		0.747872, 0.598533, 0.287134,
		0.663525, -0.660571, -0.351256,
		40.248001, 41.126076, 25.933767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.287094, 42.017670, 25.776764>,  <39.783531, 41.588474, 26.179647>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.287094, 42.017670, 25.776764> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.367790, 41.642113, 25.665211>,  <40.416206, 41.416779, 25.598280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.367790, 41.642113, 25.665211>,  <40.287094, 42.017670, 25.776764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.367790, 41.642113, 25.665211> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220900, 0.321015, -0.920952,
		0.954204, 0.124188, 0.272163,
		0.201740, -0.938897, -0.278881,
		40.428310, 41.360443, 25.581547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.031063, 42.008732, 25.556723>,  <40.287094, 42.017670, 25.776764>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.031063, 42.008732, 25.556723> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.830898, 41.712486, 25.377357>,  <40.710800, 41.534737, 25.269739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.830898, 41.712486, 25.377357>,  <41.031063, 42.008732, 25.556723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.830898, 41.712486, 25.377357> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292599, 0.342782, -0.892685,
		0.814846, -0.577915, 0.045171,
		-0.500412, -0.740617, -0.448412,
		40.680775, 41.490303, 25.242834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.511997, 41.737286, 25.091183>,  <41.031063, 42.008732, 25.556723>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.511997, 41.737286, 25.091183> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.156261, 41.629601, 24.943344>,  <40.942822, 41.564991, 24.854641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.156261, 41.629601, 24.943344>,  <41.511997, 41.737286, 25.091183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.156261, 41.629601, 24.943344> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311054, 0.236259, -0.920558,
		0.335148, -0.933651, -0.126374,
		-0.889337, -0.269214, -0.369598,
		40.889462, 41.548836, 24.832464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.636688, 41.662876, 24.427942>,  <41.511997, 41.737286, 25.091183>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.636688, 41.662876, 24.427942> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.237892, 41.650967, 24.399317>,  <40.998615, 41.643822, 24.382141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.237892, 41.650967, 24.399317>,  <41.636688, 41.662876, 24.427942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.237892, 41.650967, 24.399317> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063776, 0.209633, -0.975698,
		0.044052, -0.977327, -0.207103,
		-0.996992, -0.029773, -0.071565,
		40.938793, 41.642033, 24.377848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.406418, 41.215466, 23.742167>,  <41.636688, 41.662876, 24.427942>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.406418, 41.215466, 23.742167> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.124229, 41.479679, 23.844934>,  <40.954918, 41.638206, 23.906595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.124229, 41.479679, 23.844934>,  <41.406418, 41.215466, 23.742167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.124229, 41.479679, 23.844934> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101270, 0.452729, -0.885879,
		-0.701467, -0.598943, -0.386279,
		-0.705471, 0.660533, 0.256919,
		40.912590, 41.677837, 23.922010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.945351, 41.245636, 23.225599>,  <41.406418, 41.215466, 23.742167>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.945351, 41.245636, 23.225599> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.894375, 41.590080, 23.422476>,  <40.863789, 41.796745, 23.540602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.894375, 41.590080, 23.422476>,  <40.945351, 41.245636, 23.225599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.894375, 41.590080, 23.422476> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019478, 0.498314, -0.866778,
		-0.991655, -0.100876, -0.080278,
		-0.127441, 0.861108, 0.492191,
		40.856144, 41.848412, 23.570133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.532642, 41.059814, 22.799751>,  <40.945351, 41.245636, 23.225599>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.532642, 41.059814, 22.799751> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.629166, 40.673317, 22.763641>,  <41.687080, 40.441418, 22.741976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.629166, 40.673317, 22.763641>,  <41.532642, 41.059814, 22.799751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.629166, 40.673317, 22.763641> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696553, -0.107684, -0.709378,
		0.675709, 0.234061, -0.699023,
		0.241311, -0.966240, -0.090273,
		41.701561, 40.383446, 22.736559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.197479, 40.992470, 22.117437>,  <41.532642, 41.059814, 22.799751>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.197479, 40.992470, 22.117437> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.061642, 40.671581, 21.921024>,  <40.980137, 40.479050, 21.803177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.061642, 40.671581, 21.921024>,  <41.197479, 40.992470, 22.117437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.061642, 40.671581, 21.921024> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647208, -0.179509, 0.740876,
		-0.682493, 0.569400, -0.458243,
		-0.339596, -0.802221, -0.491034,
		40.959763, 40.430916, 21.773714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.583557, 41.037510, 22.284962>,  <41.197479, 40.992470, 22.117437>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.583557, 41.037510, 22.284962> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.600945, 40.657688, 22.160730>,  <40.611378, 40.429794, 22.086191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.600945, 40.657688, 22.160730>,  <40.583557, 41.037510, 22.284962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.600945, 40.657688, 22.160730> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669423, -0.258448, 0.696475,
		-0.741609, 0.177632, -0.646888,
		0.043470, -0.949554, -0.310578,
		40.613987, 40.372822, 22.067556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.883236, 40.839474, 22.135838>,  <40.583557, 41.037510, 22.284962>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.883236, 40.839474, 22.135838> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.091206, 40.507843, 22.218107>,  <40.215988, 40.308865, 22.267469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.091206, 40.507843, 22.218107>,  <39.883236, 40.839474, 22.135838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.091206, 40.507843, 22.218107> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602395, -0.185159, 0.776425,
		-0.605638, -0.527580, -0.595703,
		0.519926, -0.829081, 0.205672,
		40.247185, 40.259117, 22.279808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.344372, 40.370789, 22.169476>,  <39.883236, 40.839474, 22.135838>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.344372, 40.370789, 22.169476> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.660358, 40.190826, 22.336102>,  <39.849953, 40.082848, 22.436077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.660358, 40.190826, 22.336102>,  <39.344372, 40.370789, 22.169476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.660358, 40.190826, 22.336102> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597284, -0.411143, 0.688631,
		-0.138554, -0.792807, -0.593515,
		0.789971, -0.449910, 0.416566,
		39.897350, 40.055855, 22.461071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.136497, 39.682018, 22.364479>,  <39.344372, 40.370789, 22.169476>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.136497, 39.682018, 22.364479> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.464996, 39.690414, 22.592554>,  <39.662094, 39.695454, 22.729399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.464996, 39.690414, 22.592554>,  <39.136497, 39.682018, 22.364479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.464996, 39.690414, 22.592554> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505800, -0.435673, 0.744550,
		0.264043, -0.899860, -0.347179,
		0.821248, 0.020990, 0.570185,
		39.711372, 39.696712, 22.763609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.240620, 38.942616, 22.557451>,  <39.136497, 39.682018, 22.364479>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.240620, 38.942616, 22.557451> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.423237, 39.192272, 22.811068>,  <39.532806, 39.342068, 22.963238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.423237, 39.192272, 22.811068>,  <39.240620, 38.942616, 22.557451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.423237, 39.192272, 22.811068> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338690, -0.537068, 0.772559,
		0.822713, -0.567451, -0.033804,
		0.456544, 0.624146, 0.634042,
		39.560200, 39.379517, 23.001280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.388069, 38.491135, 23.149178>,  <39.240620, 38.942616, 22.557451>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.388069, 38.491135, 23.149178> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.447365, 38.852406, 23.310324>,  <39.482941, 39.069168, 23.407011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.447365, 38.852406, 23.310324>,  <39.388069, 38.491135, 23.149178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.447365, 38.852406, 23.310324> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248323, -0.360321, 0.899169,
		0.957267, -0.233333, 0.170865,
		0.148240, 0.903175, 0.402865,
		39.491837, 39.123360, 23.431183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.784237, 38.345440, 23.731937>,  <39.388069, 38.491135, 23.149178>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.784237, 38.345440, 23.731937> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.577190, 38.684494, 23.778563>,  <39.452961, 38.887928, 23.806538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.577190, 38.684494, 23.778563>,  <39.784237, 38.345440, 23.731937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.577190, 38.684494, 23.778563> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347173, -0.332584, 0.876846,
		0.782010, 0.413406, 0.466428,
		-0.517620, 0.847634, 0.116561,
		39.421906, 38.938786, 23.813530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.034107, 38.672325, 24.332775>,  <39.784237, 38.345440, 23.731937>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.034107, 38.672325, 24.332775> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.659504, 38.802277, 24.280001>,  <39.434742, 38.880249, 24.248337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.659504, 38.802277, 24.280001>,  <40.034107, 38.672325, 24.332775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.659504, 38.802277, 24.280001> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204825, -0.201447, 0.957844,
		0.284607, 0.924052, 0.255200,
		-0.936507, 0.324880, -0.131936,
		39.378551, 38.899742, 24.240419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.932041, 39.085968, 24.889786>,  <40.034107, 38.672325, 24.332775>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.932041, 39.085968, 24.889786> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.552132, 39.024216, 24.780901>,  <39.324188, 38.987164, 24.715570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.552132, 39.024216, 24.780901>,  <39.932041, 39.085968, 24.889786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.552132, 39.024216, 24.780901> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268988, -0.041815, 0.962236,
		-0.159937, 0.987126, -0.001813,
		-0.949771, -0.154385, -0.272212,
		39.267200, 38.977901, 24.699238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.513557, 39.410168, 25.447048>,  <39.932041, 39.085968, 24.889786>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.513557, 39.410168, 25.447048> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.233337, 39.199860, 25.254053>,  <39.065205, 39.073677, 25.138256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.233337, 39.199860, 25.254053>,  <39.513557, 39.410168, 25.447048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.233337, 39.199860, 25.254053> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459748, -0.184566, 0.868658,
		-0.545763, 0.830364, -0.112423,
		-0.700553, -0.525768, -0.482488,
		39.023170, 39.042130, 25.109306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.821365, 39.674431, 25.770281>,  <39.513557, 39.410168, 25.447048>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.821365, 39.674431, 25.770281> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.772709, 39.313183, 25.605560>,  <38.743515, 39.096436, 25.506727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.772709, 39.313183, 25.605560>,  <38.821365, 39.674431, 25.770281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.772709, 39.313183, 25.605560> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503111, -0.301537, 0.809910,
		-0.855618, 0.305703, -0.417688,
		-0.121644, -0.903117, -0.411803,
		38.736217, 39.042248, 25.482019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.070175, 39.429062, 25.852959>,  <38.821365, 39.674431, 25.770281>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.070175, 39.429062, 25.852959> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.278954, 39.094116, 25.787971>,  <38.404221, 38.893150, 25.748980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.278954, 39.094116, 25.787971>,  <38.070175, 39.429062, 25.852959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.278954, 39.094116, 25.787971> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458670, -0.436113, 0.774227,
		-0.719165, -0.329582, -0.611700,
		0.521942, -0.837366, -0.162468,
		38.435535, 38.842907, 25.739231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.592461, 38.966797, 25.753990>,  <38.070175, 39.429062, 25.852959>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.592461, 38.966797, 25.753990> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.906387, 38.739788, 25.853577>,  <38.094742, 38.603584, 25.913328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.906387, 38.739788, 25.853577>,  <37.592461, 38.966797, 25.753990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.906387, 38.739788, 25.853577> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486067, -0.314471, 0.815382,
		-0.384456, -0.760937, -0.522655,
		0.784813, -0.567524, 0.248966,
		38.141830, 38.569530, 25.928267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.077740, 38.567585, 25.399612>,  <37.592461, 38.966797, 25.753990>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.077740, 38.567585, 25.399612> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.700962, 38.699291, 25.373327>,  <36.474895, 38.778313, 25.357557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.700962, 38.699291, 25.373327>,  <37.077740, 38.567585, 25.399612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.700962, 38.699291, 25.373327> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197891, 0.386329, -0.900882,
		-0.271241, -0.861589, -0.429061,
		-0.941949, 0.329264, -0.065712,
		36.418377, 38.798069, 25.353613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.889847, 38.380424, 24.743975>,  <37.077740, 38.567585, 25.399612>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.889847, 38.380424, 24.743975> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.624802, 38.668297, 24.826925>,  <36.465775, 38.841019, 24.876696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.624802, 38.668297, 24.826925>,  <36.889847, 38.380424, 24.743975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.624802, 38.668297, 24.826925> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153365, 0.401395, -0.902974,
		-0.733093, -0.566517, -0.376343,
		-0.662612, 0.719681, 0.207376,
		36.426018, 38.884201, 24.889137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.498951, 38.412281, 24.153576>,  <36.889847, 38.380424, 24.743975>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.498951, 38.412281, 24.153576> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.395222, 38.756241, 24.329447>,  <36.332985, 38.962616, 24.434969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.395222, 38.756241, 24.329447>,  <36.498951, 38.412281, 24.153576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.395222, 38.756241, 24.329447> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126388, 0.481551, -0.867257,
		-0.957485, -0.169331, -0.233560,
		-0.259325, 0.859904, 0.439676,
		36.317425, 39.014214, 24.461349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.068768, 38.720360, 23.770555>,  <36.498951, 38.412281, 24.153576>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.068768, 38.720360, 23.770555> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.145771, 39.044460, 23.991980>,  <36.191975, 39.238922, 24.124834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.145771, 39.044460, 23.991980>,  <36.068768, 38.720360, 23.770555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.145771, 39.044460, 23.991980> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062928, 0.552755, -0.830964,
		-0.979275, 0.194802, 0.055422,
		0.192508, 0.810255, 0.553558,
		36.203522, 39.287537, 24.158047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.597534, 39.261822, 23.522850>,  <36.068768, 38.720360, 23.770555>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.597534, 39.261822, 23.522850> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.936535, 39.396477, 23.687002>,  <36.139935, 39.477268, 23.785494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.936535, 39.396477, 23.687002>,  <35.597534, 39.261822, 23.522850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.936535, 39.396477, 23.687002> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236160, 0.453260, -0.859525,
		-0.475357, 0.825367, 0.304639,
		0.847504, 0.336638, 0.410379,
		36.190784, 39.497467, 23.810116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.716759, 39.817276, 23.115891>,  <35.597534, 39.261822, 23.522850>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.716759, 39.817276, 23.115891> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.057446, 39.796627, 23.324474>,  <36.261856, 39.784237, 23.449625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.057446, 39.796627, 23.324474>,  <35.716759, 39.817276, 23.115891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.057446, 39.796627, 23.324474> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454954, 0.566617, -0.686994,
		-0.260004, 0.822362, 0.506081,
		0.851713, -0.051623, 0.521460,
		36.312958, 39.781139, 23.480913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.106556, 40.558441, 23.186659>,  <35.716759, 39.817276, 23.115891>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.106556, 40.558441, 23.186659> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.400105, 40.291210, 23.235821>,  <36.576233, 40.130871, 23.265318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.400105, 40.291210, 23.235821>,  <36.106556, 40.558441, 23.186659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.400105, 40.291210, 23.235821> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526004, 0.444406, -0.725137,
		0.429827, 0.596806, 0.677548,
		0.733872, -0.668076, 0.122905,
		36.620266, 40.090786, 23.272692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.089317, 41.129784, 23.718237>,  <36.106556, 40.558441, 23.186659>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.089317, 41.129784, 23.718237> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.795315, 41.335548, 23.541533>,  <35.618912, 41.459007, 23.435511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.795315, 41.335548, 23.541533>,  <36.089317, 41.129784, 23.718237>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.795315, 41.335548, 23.541533> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677927, -0.544522, 0.493872,
		0.013502, 0.662481, 0.748957,
		-0.735005, 0.514407, -0.441761,
		35.574814, 41.489872, 23.409004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.652042, 41.444191, 24.311224>,  <36.089317, 41.129784, 23.718237>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.652042, 41.444191, 24.311224> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.452785, 41.426414, 23.964842>,  <35.333229, 41.415749, 23.757013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.452785, 41.426414, 23.964842>,  <35.652042, 41.444191, 24.311224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.452785, 41.426414, 23.964842> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760095, -0.458204, 0.460765,
		-0.417261, 0.887735, 0.194471,
		-0.498145, -0.044443, -0.865954,
		35.303341, 41.413082, 23.705055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.034897, 41.582561, 24.474724>,  <35.652042, 41.444191, 24.311224>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.034897, 41.582561, 24.474724> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.983028, 41.398033, 24.123640>,  <34.951908, 41.287315, 23.912991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.983028, 41.398033, 24.123640>,  <35.034897, 41.582561, 24.474724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.983028, 41.398033, 24.123640> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753914, -0.529082, 0.389468,
		-0.644048, 0.712221, -0.279184,
		-0.129676, -0.461317, -0.877708,
		34.944126, 41.259640, 23.860329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.369743, 41.785610, 24.296034>,  <35.034897, 41.582561, 24.474724>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.369743, 41.785610, 24.296034> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.474686, 41.453396, 24.099514>,  <34.537651, 41.254066, 23.981602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.474686, 41.453396, 24.099514>,  <34.369743, 41.785610, 24.296034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.474686, 41.453396, 24.099514> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798333, -0.472818, 0.372972,
		-0.542063, 0.294369, -0.787093,
		0.262360, -0.830537, -0.491301,
		34.553394, 41.204235, 23.952124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.720848, 41.421307, 24.150747>,  <34.369743, 41.785610, 24.296034>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.720848, 41.421307, 24.150747> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.968891, 41.109783, 24.112978>,  <34.117718, 40.922867, 24.090317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.968891, 41.109783, 24.112978>,  <33.720848, 41.421307, 24.150747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.968891, 41.109783, 24.112978> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670971, -0.588874, 0.450583,
		-0.406521, -0.216058, -0.887727,
		0.620112, -0.778811, -0.094421,
		34.154926, 40.876141, 24.084652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.324944, 40.854786, 24.005045>,  <33.720848, 41.421307, 24.150747>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.324944, 40.854786, 24.005045> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.668472, 40.705658, 24.145576>,  <33.874588, 40.616180, 24.229895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.668472, 40.705658, 24.145576>,  <33.324944, 40.854786, 24.005045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.668472, 40.705658, 24.145576> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511886, -0.651235, 0.560237,
		0.019929, -0.660983, -0.750136,
		0.858822, -0.372819, 0.351327,
		33.926121, 40.593811, 24.250975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.271252, 40.138535, 24.020226>,  <33.324944, 40.854786, 24.005045>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.271252, 40.138535, 24.020226> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.565784, 40.210178, 24.281218>,  <33.742504, 40.253166, 24.437813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.565784, 40.210178, 24.281218>,  <33.271252, 40.138535, 24.020226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.565784, 40.210178, 24.281218> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431655, -0.618249, 0.656842,
		0.521041, -0.765303, -0.377926,
		0.736335, 0.179108, 0.652480,
		33.786686, 40.263912, 24.476961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<38.701794, 44.270069, 24.883005> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.877247, 44.007248, 24.637768>,  <38.982521, 43.849556, 24.490625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.877247, 44.007248, 24.637768>,  <38.701794, 44.270069, 24.883005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.877247, 44.007248, 24.637768> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511871, -0.743412, 0.430496,
		-0.738643, 0.125002, -0.662405,
		0.438628, -0.657049, -0.613101,
		39.008839, 43.810135, 24.453838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.190521, 43.840675, 24.554665>,  <38.701794, 44.270069, 24.883005>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.190521, 43.840675, 24.554665> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.526611, 43.633408, 24.618565>,  <38.728264, 43.509045, 24.656904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.526611, 43.633408, 24.618565>,  <38.190521, 43.840675, 24.554665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.526611, 43.633408, 24.618565> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463488, -0.533415, 0.707564,
		-0.281429, -0.668554, -0.688355,
		0.840224, -0.518173, 0.159749,
		38.778679, 43.477955, 24.666489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.031521, 43.027176, 24.449419>,  <38.190521, 43.840675, 24.554665>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.031521, 43.027176, 24.449419> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.363342, 43.082584, 24.665808>,  <38.562435, 43.115829, 24.795641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.363342, 43.082584, 24.665808>,  <38.031521, 43.027176, 24.449419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.363342, 43.082584, 24.665808> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406511, -0.514397, 0.755079,
		0.382870, -0.846290, -0.370409,
		0.829553, 0.138522, 0.540974,
		38.612209, 43.124142, 24.828100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.100628, 42.409367, 24.798065>,  <38.031521, 43.027176, 24.449419>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.100628, 42.409367, 24.798065> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.343563, 42.644512, 25.011814>,  <38.489323, 42.785599, 25.140064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.343563, 42.644512, 25.011814>,  <38.100628, 42.409367, 24.798065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.343563, 42.644512, 25.011814> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341885, -0.413763, 0.843750,
		0.717116, -0.695136, -0.050311,
		0.607338, 0.587866, 0.534373,
		38.525764, 42.820873, 25.172127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.447895, 41.918900, 25.346270>,  <38.100628, 42.409367, 24.798065>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.447895, 41.918900, 25.346270> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.508835, 42.296345, 25.463833>,  <38.545399, 42.522812, 25.534370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.508835, 42.296345, 25.463833>,  <38.447895, 41.918900, 25.346270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.508835, 42.296345, 25.463833> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339105, -0.229422, 0.912345,
		0.928331, -0.238658, 0.285033,
		0.152345, 0.943614, 0.293910,
		38.554539, 42.579430, 25.552006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.749882, 41.873711, 25.990757>,  <38.447895, 41.918900, 25.346270>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.749882, 41.873711, 25.990757> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.578613, 42.235161, 25.995378>,  <38.475853, 42.452030, 25.998152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.578613, 42.235161, 25.995378>,  <38.749882, 41.873711, 25.990757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.578613, 42.235161, 25.995378> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433226, -0.216466, 0.874904,
		0.793085, 0.369605, 0.484158,
		-0.428172, 0.903623, 0.011553,
		38.450161, 42.506248, 25.998844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.038586, 42.302273, 26.568394>,  <38.749882, 41.873711, 25.990757>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.038586, 42.302273, 26.568394> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.688446, 42.458321, 26.454153>,  <38.478363, 42.551949, 26.385609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.688446, 42.458321, 26.454153>,  <39.038586, 42.302273, 26.568394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.688446, 42.458321, 26.454153> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335036, -0.063552, 0.940060,
		0.348584, 0.918569, 0.186334,
		-0.875352, 0.390118, -0.285600,
		38.425842, 42.575356, 26.368473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.994499, 42.905403, 27.019241>,  <39.038586, 42.302273, 26.568394>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.994499, 42.905403, 27.019241> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.629734, 42.805725, 26.888813>,  <38.410873, 42.745918, 26.810556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.629734, 42.805725, 26.888813>,  <38.994499, 42.905403, 27.019241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.629734, 42.805725, 26.888813> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334573, -0.008682, 0.942330,
		-0.237651, 0.968415, -0.075456,
		-0.911912, -0.249192, -0.326069,
		38.356159, 42.730968, 26.790993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.554123, 43.400074, 27.340984>,  <38.994499, 42.905403, 27.019241>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.554123, 43.400074, 27.340984> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.333157, 43.085236, 27.231211>,  <38.200577, 42.896332, 27.165346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.333157, 43.085236, 27.231211>,  <38.554123, 43.400074, 27.340984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.333157, 43.085236, 27.231211> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522665, 0.070594, 0.849610,
		-0.649353, 0.612774, -0.450386,
		-0.552414, -0.787098, -0.274435,
		38.167431, 42.849106, 27.148880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.896328, 43.568512, 27.584023>,  <38.554123, 43.400074, 27.340984>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.896328, 43.568512, 27.584023> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.931137, 43.171238, 27.552996>,  <37.952023, 42.932873, 27.534380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.931137, 43.171238, 27.552996>,  <37.896328, 43.568512, 27.584023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.931137, 43.171238, 27.552996> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473158, -0.109726, 0.874117,
		-0.876668, -0.039370, -0.479481,
		0.087025, -0.993182, -0.077565,
		37.957245, 42.873283, 27.529726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.215366, 43.345207, 27.807068>,  <37.896328, 43.568512, 27.584023>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.215366, 43.345207, 27.807068> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.432777, 43.009464, 27.809771>,  <37.563225, 42.808018, 27.811392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.432777, 43.009464, 27.809771>,  <37.215366, 43.345207, 27.807068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.432777, 43.009464, 27.809771> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438927, -0.277349, 0.854647,
		-0.715484, -0.467493, -0.519166,
		0.543532, -0.839362, 0.006756,
		37.595837, 42.757656, 27.811798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.744373, 42.785995, 27.731197>,  <37.215366, 43.345207, 27.807068>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.744373, 42.785995, 27.731197> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.060234, 42.650669, 27.935938>,  <37.249752, 42.569473, 28.058783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.060234, 42.650669, 27.935938>,  <36.744373, 42.785995, 27.731197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.060234, 42.650669, 27.935938> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612878, -0.395786, 0.683911,
		-0.028792, -0.853755, -0.519879,
		0.789653, -0.338313, 0.511852,
		37.297131, 42.549175, 28.089493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.111820, 42.602867, 27.383068>,  <36.744373, 42.785995, 27.731197>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.111820, 42.602867, 27.383068> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.775883, 42.815136, 27.337360>,  <35.574322, 42.942497, 27.309935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.775883, 42.815136, 27.337360>,  <36.111820, 42.602867, 27.383068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.775883, 42.815136, 27.337360> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400257, 0.463174, -0.790736,
		-0.366693, -0.709829, -0.601397,
		-0.839839, 0.530671, -0.114271,
		35.523930, 42.974339, 27.303080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.866650, 42.469891, 26.722675>,  <36.111820, 42.602867, 27.383068>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.866650, 42.469891, 26.722675> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.718052, 42.826347, 26.826876>,  <35.628895, 43.040222, 26.889397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.718052, 42.826347, 26.826876>,  <35.866650, 42.469891, 26.722675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.718052, 42.826347, 26.826876> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134265, 0.329196, -0.934667,
		-0.918676, -0.312248, -0.241943,
		-0.371494, 0.891141, 0.260501,
		35.606606, 43.093689, 26.905025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.357922, 42.571110, 26.150414>,  <35.866650, 42.469891, 26.722675>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.357922, 42.571110, 26.150414> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.493698, 42.914795, 26.303535>,  <35.575165, 43.121006, 26.395409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.493698, 42.914795, 26.303535>,  <35.357922, 42.571110, 26.150414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.493698, 42.914795, 26.303535> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051187, 0.389490, -0.919607,
		-0.939235, 0.331744, 0.088227,
		0.339437, 0.859211, 0.382803,
		35.595528, 43.172558, 26.418377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.925652, 43.071213, 25.813896>,  <35.357922, 42.571110, 26.150414>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.925652, 43.071213, 25.813896> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.233543, 43.278934, 25.962406>,  <35.418278, 43.403568, 26.051512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.233543, 43.278934, 25.962406>,  <34.925652, 43.071213, 25.813896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.233543, 43.278934, 25.962406> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087690, 0.490065, -0.867264,
		-0.632324, 0.700112, 0.331677,
		0.769725, 0.519307, 0.371273,
		35.464462, 43.434727, 26.073788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.880905, 43.724255, 25.501047>,  <34.925652, 43.071213, 25.813896>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.880905, 43.724255, 25.501047> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.258186, 43.707882, 25.632919>,  <35.484554, 43.698059, 25.712042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.258186, 43.707882, 25.632919>,  <34.880905, 43.724255, 25.501047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.258186, 43.707882, 25.632919> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286545, 0.602379, -0.745005,
		-0.168099, 0.797161, 0.579895,
		0.943205, -0.040931, 0.329681,
		35.541149, 43.695602, 25.731823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.040874, 44.336975, 25.511013>,  <34.880905, 43.724255, 25.501047>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.040874, 44.336975, 25.511013> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.413326, 44.192680, 25.532398>,  <35.636799, 44.106102, 25.545229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.413326, 44.192680, 25.532398>,  <35.040874, 44.336975, 25.511013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.413326, 44.192680, 25.532398> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314027, 0.718597, -0.620487,
		0.185417, 0.594545, 0.782392,
		0.931132, -0.360741, 0.053464,
		35.692665, 44.084457, 25.548437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.471588, 44.961033, 25.728556>,  <35.040874, 44.336975, 25.511013>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.471588, 44.961033, 25.728556> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.686512, 44.683762, 25.536386>,  <35.815468, 44.517399, 25.421085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.686512, 44.683762, 25.536386>,  <35.471588, 44.961033, 25.728556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.686512, 44.683762, 25.536386> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241972, 0.672390, -0.699530,
		0.807928, 0.259616, 0.529010,
		0.537309, -0.693176, -0.480423,
		35.847706, 44.475807, 25.392260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.993027, 45.338783, 25.386600>,  <35.471588, 44.961033, 25.728556>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.993027, 45.338783, 25.386600> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.025089, 44.988838, 25.195520>,  <36.044327, 44.778873, 25.080872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.025089, 44.988838, 25.195520>,  <35.993027, 45.338783, 25.386600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.025089, 44.988838, 25.195520> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194123, 0.483768, -0.853396,
		0.977697, -0.024332, 0.208605,
		0.080152, -0.874858, -0.477702,
		36.049133, 44.726379, 25.052210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.618984, 45.444275, 24.967642>,  <35.993027, 45.338783, 25.386600>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.618984, 45.444275, 24.967642> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.413139, 45.137436, 24.814419>,  <36.289631, 44.953331, 24.722485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.413139, 45.137436, 24.814419>,  <36.618984, 45.444275, 24.967642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.413139, 45.137436, 24.814419> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196421, 0.329406, -0.923531,
		0.834621, -0.550503, -0.018843,
		-0.514613, -0.767097, -0.383060,
		36.258755, 44.907307, 24.699501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.991776, 45.245548, 24.338867>,  <36.618984, 45.444275, 24.967642>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.991776, 45.245548, 24.338867> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.625114, 45.090511, 24.299850>,  <36.405117, 44.997490, 24.276442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.625114, 45.090511, 24.299850>,  <36.991776, 45.245548, 24.338867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.625114, 45.090511, 24.299850> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011641, 0.269831, -0.962837,
		0.399512, -0.881453, -0.251853,
		-0.916654, -0.387597, -0.097540,
		36.350117, 44.974232, 24.270588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.056126, 44.994595, 23.716413>,  <36.991776, 45.245548, 24.338867>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.056126, 44.994595, 23.716413> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.666706, 45.060265, 23.779982>,  <36.433056, 45.099667, 23.818123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.666706, 45.060265, 23.779982>,  <37.056126, 44.994595, 23.716413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.666706, 45.060265, 23.779982> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040448, 0.560701, -0.827030,
		-0.224885, -0.811579, -0.539227,
		-0.973545, 0.164176, 0.158920,
		36.374641, 45.109516, 23.827658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.764622, 44.858227, 23.130449>,  <37.056126, 44.994595, 23.716413>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.764622, 44.858227, 23.130449> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.513313, 45.102165, 23.323681>,  <36.362530, 45.248528, 23.439619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.513313, 45.102165, 23.323681>,  <36.764622, 44.858227, 23.130449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.513313, 45.102165, 23.323681> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251574, 0.428318, -0.867902,
		-0.736197, -0.666807, -0.115678,
		-0.628271, 0.609845, 0.483078,
		36.324833, 45.285118, 23.468605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.163853, 44.849693, 22.757799>,  <36.764622, 44.858227, 23.130449>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.163853, 44.849693, 22.757799> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.118443, 45.181473, 22.976572>,  <36.091198, 45.380539, 23.107836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.118443, 45.181473, 22.976572>,  <36.163853, 44.849693, 22.757799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.118443, 45.181473, 22.976572> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318432, 0.491074, -0.810831,
		-0.941123, -0.266211, 0.208372,
		-0.113527, 0.829444, 0.546931,
		36.084385, 45.430305, 23.140652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.482227, 45.143063, 22.697924>,  <36.163853, 44.849693, 22.757799>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.482227, 45.143063, 22.697924> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.696297, 45.460320, 22.814205>,  <35.824738, 45.650673, 22.883974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.696297, 45.460320, 22.814205>,  <35.482227, 45.143063, 22.697924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.696297, 45.460320, 22.814205> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368100, 0.528703, -0.764837,
		-0.760322, 0.302314, 0.574906,
		0.535175, 0.793145, 0.290703,
		35.856850, 45.698261, 22.901417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.247135, 44.484531, 22.998995>,  <35.482227, 45.143063, 22.697924>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.247135, 44.484531, 22.998995> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.561684, 44.384594, 22.773003>,  <35.750412, 44.324631, 22.637407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.561684, 44.384594, 22.773003>,  <35.247135, 44.484531, 22.998995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.561684, 44.384594, 22.773003> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063182, -0.942299, 0.328756,
		-0.614517, -0.222827, -0.756780,
		0.786369, -0.249841, -0.564980,
		35.797596, 44.309643, 22.603508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.075211, 43.878178, 22.485214>,  <35.247135, 44.484531, 22.998995>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.075211, 43.878178, 22.485214> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.474308, 43.853313, 22.495371>,  <35.713768, 43.838394, 22.501465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.474308, 43.853313, 22.495371>,  <35.075211, 43.878178, 22.485214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.474308, 43.853313, 22.495371> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065960, -0.978076, 0.197524,
		0.012558, -0.198753, -0.979969,
		0.997743, -0.062158, 0.025393,
		35.773632, 43.834667, 22.502989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.179615, 43.320786, 22.184126>,  <35.075211, 43.878178, 22.485214>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.179615, 43.320786, 22.184126> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.514793, 43.351841, 22.400208>,  <35.715900, 43.370476, 22.529858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.514793, 43.351841, 22.400208>,  <35.179615, 43.320786, 22.184126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.514793, 43.351841, 22.400208> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069814, -0.966449, 0.247190,
		0.541273, -0.244845, -0.804410,
		0.837944, 0.077638, 0.540206,
		35.766178, 43.375134, 22.562269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.629581, 42.735863, 21.983488>,  <35.179615, 43.320786, 22.184126>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.629581, 42.735863, 21.983488> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.787392, 42.851883, 22.332251>,  <35.882076, 42.921494, 22.541508>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.787392, 42.851883, 22.332251>,  <35.629581, 42.735863, 21.983488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.787392, 42.851883, 22.332251> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031059, -0.944124, 0.328123,
		0.918361, -0.156532, -0.363471,
		0.394524, 0.290046, 0.871909,
		35.905750, 42.938896, 22.593822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.141815, 42.346504, 22.052889>,  <35.629581, 42.735863, 21.983488>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.141815, 42.346504, 22.052889> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.060139, 42.474037, 22.423111>,  <36.011135, 42.550556, 22.645245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.060139, 42.474037, 22.423111>,  <36.141815, 42.346504, 22.052889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.060139, 42.474037, 22.423111> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088618, -0.947612, 0.306884,
		0.974912, -0.019358, 0.221747,
		-0.204189, 0.318836, 0.925554,
		35.998882, 42.569687, 22.700777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.480301, 41.839825, 22.556080>,  <36.141815, 42.346504, 22.052889>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.480301, 41.839825, 22.556080> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.203945, 42.018265, 22.783646>,  <36.038132, 42.125328, 22.920185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.203945, 42.018265, 22.783646>,  <36.480301, 41.839825, 22.556080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.203945, 42.018265, 22.783646> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405007, -0.890673, 0.206568,
		0.598869, -0.087700, 0.796030,
		-0.690887, 0.446105, 0.568916,
		35.996677, 42.152096, 22.954321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.293797, 41.320690, 22.968210>,  <36.480301, 41.839825, 22.556080>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.293797, 41.320690, 22.968210> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.999569, 41.584789, 23.028885>,  <35.823032, 41.743248, 23.065289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.999569, 41.584789, 23.028885>,  <36.293797, 41.320690, 22.968210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.999569, 41.584789, 23.028885> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573622, -0.726140, 0.379049,
		0.360412, 0.191807, 0.912860,
		-0.735569, 0.660250, 0.151685,
		35.778900, 41.782864, 23.074390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.840733, 41.000877, 23.000999>,  <36.293797, 41.320690, 22.968210>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.840733, 41.000877, 23.000999> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.899952, 40.605473, 22.988779>,  <36.935482, 40.368229, 22.981447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.899952, 40.605473, 22.988779>,  <36.840733, 41.000877, 23.000999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.899952, 40.605473, 22.988779> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418060, 0.090549, -0.903895,
		0.896274, 0.121048, 0.426661,
		0.148049, -0.988508, -0.030551,
		36.944366, 40.308922, 22.979614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.585274, 40.848789, 22.916391>,  <36.840733, 41.000877, 23.000999>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.585274, 40.848789, 22.916391> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.413879, 40.518078, 22.770603>,  <37.311043, 40.319653, 22.683130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.413879, 40.518078, 22.770603>,  <37.585274, 40.848789, 22.916391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.413879, 40.518078, 22.770603> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522641, 0.102256, -0.846399,
		0.737053, -0.553157, 0.388292,
		-0.428486, -0.826778, -0.364470,
		37.285332, 40.270046, 22.661263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.118771, 40.510399, 22.650745>,  <37.585274, 40.848789, 22.916391>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.118771, 40.510399, 22.650745> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.792713, 40.355553, 22.478382>,  <37.597080, 40.262646, 22.374964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.792713, 40.355553, 22.478382>,  <38.118771, 40.510399, 22.650745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.792713, 40.355553, 22.478382> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440815, 0.068050, -0.895015,
		0.375801, -0.919515, 0.115178,
		-0.815141, -0.387120, -0.430910,
		37.548172, 40.239418, 22.349110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.377766, 40.033813, 22.188927>,  <38.118771, 40.510399, 22.650745>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.377766, 40.033813, 22.188927> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.008018, 40.109058, 22.056166>,  <37.786171, 40.154205, 21.976509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.008018, 40.109058, 22.056166>,  <38.377766, 40.033813, 22.188927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.008018, 40.109058, 22.056166> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331544, -0.034298, -0.942816,
		-0.188741, -0.981548, -0.030664,
		-0.924368, 0.188114, -0.331900,
		37.730709, 40.165493, 21.956596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.299747, 39.628628, 21.441843>,  <38.377766, 40.033813, 22.188927>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.299747, 39.628628, 21.441843> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.012321, 39.906212, 21.460104>,  <37.839867, 40.072762, 21.471060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.012321, 39.906212, 21.460104>,  <38.299747, 39.628628, 21.441843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.012321, 39.906212, 21.460104> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256416, 0.325381, -0.910153,
		-0.646462, -0.642299, -0.411750,
		-0.718566, 0.693959, 0.045651,
		37.796753, 40.114399, 21.473799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.950371, 39.552650, 20.896929>,  <38.299747, 39.628628, 21.441843>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.950371, 39.552650, 20.896929> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.841545, 39.921547, 21.006796>,  <37.776249, 40.142887, 21.072716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.841545, 39.921547, 21.006796>,  <37.950371, 39.552650, 20.896929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.841545, 39.921547, 21.006796> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029619, 0.293327, -0.955553,
		-0.961822, -0.251839, -0.107121,
		-0.272067, 0.922245, 0.274669,
		37.759926, 40.198219, 21.089197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.482227, 39.819908, 20.361567>,  <37.950371, 39.552650, 20.896929>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.482227, 39.819908, 20.361567> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.636337, 40.134792, 20.554176>,  <37.728802, 40.323723, 20.669743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.636337, 40.134792, 20.554176>,  <37.482227, 39.819908, 20.361567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.636337, 40.134792, 20.554176> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289711, 0.392239, -0.873049,
		-0.876146, 0.475865, -0.076945,
		0.385273, 0.787211, 0.481522,
		37.751919, 40.370956, 20.698633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.297272, 40.397961, 20.014072>,  <37.482227, 39.819908, 20.361567>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.297272, 40.397961, 20.014072> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.619980, 40.531971, 20.208755>,  <37.813602, 40.612377, 20.325565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.619980, 40.531971, 20.208755>,  <37.297272, 40.397961, 20.014072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.619980, 40.531971, 20.208755> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408565, 0.278760, -0.869119,
		-0.426849, 0.900029, 0.088017,
		0.806768, 0.335022, 0.486709,
		37.862011, 40.632477, 20.354769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.508522, 40.881371, 19.585915>,  <37.297272, 40.397961, 20.014072>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.508522, 40.881371, 19.585915> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.839207, 40.836662, 19.806480>,  <38.037617, 40.809837, 19.938820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.839207, 40.836662, 19.806480>,  <37.508522, 40.881371, 19.585915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.839207, 40.836662, 19.806480> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559572, 0.265361, -0.785151,
		-0.058570, 0.957649, 0.281918,
		0.826709, -0.111768, 0.551416,
		38.087219, 40.803131, 19.971905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<31.793535, 35.547974, 34.290874> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.183388, 35.461571, 34.314301>,  <32.417301, 35.409729, 34.328358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.183388, 35.461571, 34.314301>,  <31.793535, 35.547974, 34.290874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.183388, 35.461571, 34.314301> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118735, 0.277233, -0.953438,
		0.189715, 0.936206, 0.295848,
		0.974633, -0.216009, 0.058565,
		32.475777, 35.396767, 34.331871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.193573, 36.041531, 34.015778>,  <31.793535, 35.547974, 34.290874>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.193573, 36.041531, 34.015778> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.433052, 35.723118, 33.980228>,  <32.576740, 35.532070, 33.958900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.433052, 35.723118, 33.980228>,  <32.193573, 36.041531, 34.015778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.433052, 35.723118, 33.980228> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213498, 0.265538, -0.940164,
		0.771998, 0.543898, 0.328928,
		0.598696, -0.796030, -0.088874,
		32.612659, 35.484310, 33.953568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.743073, 36.315529, 33.727634>,  <32.193573, 36.041531, 34.015778>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.743073, 36.315529, 33.727634> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.773216, 35.923695, 33.653091>,  <32.791302, 35.688595, 33.608368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.773216, 35.923695, 33.653091>,  <32.743073, 36.315529, 33.727634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.773216, 35.923695, 33.653091> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333622, 0.200885, -0.921055,
		0.939690, 0.007238, 0.341951,
		0.075360, -0.979588, -0.186355,
		32.795826, 35.629818, 33.597183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.437115, 36.170753, 33.440670>,  <32.743073, 36.315529, 33.727634>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.437115, 36.170753, 33.440670> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.208485, 35.862144, 33.328915>,  <33.071308, 35.676979, 33.261864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.208485, 35.862144, 33.328915>,  <33.437115, 36.170753, 33.440670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.208485, 35.862144, 33.328915> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286430, 0.131470, -0.949038,
		0.768933, -0.622473, 0.145841,
		-0.571576, -0.771520, -0.279386,
		33.037010, 35.630688, 33.245098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.911842, 35.799488, 33.038376>,  <33.437115, 36.170753, 33.440670>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.911842, 35.799488, 33.038376> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.550953, 35.649078, 32.953899>,  <33.334419, 35.558830, 32.903214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.550953, 35.649078, 32.953899>,  <33.911842, 35.799488, 33.038376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.550953, 35.649078, 32.953899> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194150, 0.083143, -0.977442,
		0.385106, -0.922870, -0.002007,
		-0.902219, -0.376029, -0.211194,
		33.280289, 35.536270, 32.890541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.963196, 35.301300, 32.577938>,  <33.911842, 35.799488, 33.038376>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.963196, 35.301300, 32.577938> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.579494, 35.393925, 32.513165>,  <33.349274, 35.449501, 32.474300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.579494, 35.393925, 32.513165>,  <33.963196, 35.301300, 32.577938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.579494, 35.393925, 32.513165> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125300, -0.165061, -0.978292,
		-0.253264, -0.958715, 0.129319,
		-0.959248, 0.231562, -0.161931,
		33.291721, 35.463394, 32.464584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.815010, 34.852188, 31.924623>,  <33.963196, 35.301300, 32.577938>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.815010, 34.852188, 31.924623> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.507187, 35.104897, 31.961823>,  <33.322495, 35.256523, 31.984142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.507187, 35.104897, 31.961823>,  <33.815010, 34.852188, 31.924623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.507187, 35.104897, 31.961823> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024442, 0.174664, -0.984325,
		-0.638115, -0.755217, -0.149855,
		-0.769553, 0.631775, 0.092997,
		33.276321, 35.294430, 31.989721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.316540, 34.672604, 31.405989>,  <33.815010, 34.852188, 31.924623>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.316540, 34.672604, 31.405989> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.260059, 35.059422, 31.490736>,  <33.226173, 35.291512, 31.541584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.260059, 35.059422, 31.490736>,  <33.316540, 34.672604, 31.405989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.260059, 35.059422, 31.490736> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032808, 0.218466, -0.975293,
		-0.989438, -0.130757, -0.062574,
		-0.141197, 0.967045, 0.211868,
		33.217701, 35.349533, 31.554296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.053162, 34.968189, 30.763494>,  <33.316540, 34.672604, 31.405989>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.053162, 34.968189, 30.763494> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.170910, 35.296078, 30.960024>,  <33.241558, 35.492809, 31.077942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.170910, 35.296078, 30.960024>,  <33.053162, 34.968189, 30.763494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.170910, 35.296078, 30.960024> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233578, 0.436802, -0.868703,
		-0.926706, 0.370487, -0.062886,
		0.294375, 0.819721, 0.491325,
		33.259224, 35.541996, 31.107422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.779011, 35.524017, 30.359610>,  <33.053162, 34.968189, 30.763494>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.779011, 35.524017, 30.359610> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.058681, 35.685009, 30.595968>,  <33.226486, 35.781605, 30.737783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.058681, 35.685009, 30.595968>,  <32.779011, 35.524017, 30.359610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.058681, 35.685009, 30.595968> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393787, 0.473031, -0.788146,
		-0.596723, 0.783743, 0.172245,
		0.699181, 0.402477, 0.590896,
		33.268436, 35.805752, 30.773237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.822571, 36.221256, 30.253075>,  <32.779011, 35.524017, 30.359610>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.822571, 36.221256, 30.253075> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.184246, 36.138794, 30.402710>,  <33.401253, 36.089317, 30.492491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.184246, 36.138794, 30.402710>,  <32.822571, 36.221256, 30.253075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.184246, 36.138794, 30.402710> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426577, 0.480374, -0.766337,
		-0.021720, 0.852492, 0.522290,
		0.904190, -0.206152, 0.374087,
		33.455502, 36.076950, 30.514936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.100304, 36.838833, 30.220192>,  <32.822571, 36.221256, 30.253075>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.100304, 36.838833, 30.220192> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.412476, 36.588737, 30.219053>,  <33.599777, 36.438683, 30.218370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.412476, 36.588737, 30.219053>,  <33.100304, 36.838833, 30.220192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.412476, 36.588737, 30.219053> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492651, 0.617726, -0.612952,
		0.384999, 0.476963, 0.790115,
		0.780430, -0.625237, -0.002848,
		33.646606, 36.401165, 30.218199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.001404, 37.632156, 30.604111>,  <33.100304, 36.838833, 30.220192>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.001404, 37.632156, 30.604111> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.684544, 37.770023, 30.402632>,  <32.494427, 37.852741, 30.281744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.684544, 37.770023, 30.402632>,  <33.001404, 37.632156, 30.604111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.684544, 37.770023, 30.402632> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593901, -0.245094, 0.766297,
		0.140661, 0.906166, 0.398846,
		-0.792146, 0.344664, -0.503698,
		32.446899, 37.873421, 30.251522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.693111, 38.127285, 30.956871>,  <33.001404, 37.632156, 30.604111>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.693111, 38.127285, 30.956871> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.398869, 38.005333, 30.714901>,  <32.222324, 37.932159, 30.569719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.398869, 38.005333, 30.714901>,  <32.693111, 38.127285, 30.956871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.398869, 38.005333, 30.714901> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581103, -0.174938, 0.794805,
		-0.348146, 0.936186, -0.048483,
		-0.735604, -0.304882, -0.604925,
		32.178188, 37.913868, 30.533424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.057468, 38.528999, 31.131479>,  <32.693111, 38.127285, 30.956871>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.057468, 38.528999, 31.131479> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.934917, 38.187271, 30.963539>,  <31.861387, 37.982235, 30.862774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.934917, 38.187271, 30.963539>,  <32.057468, 38.528999, 31.131479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.934917, 38.187271, 30.963539> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697349, -0.098788, 0.709891,
		-0.647948, 0.510279, -0.565490,
		-0.306379, -0.854316, -0.419852,
		31.843004, 37.930977, 30.837584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.485399, 38.518711, 31.455467>,  <32.057468, 38.528999, 31.131479>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.485399, 38.518711, 31.455467> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.476147, 38.147888, 31.305782>,  <31.470596, 37.925396, 31.215971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.476147, 38.147888, 31.305782>,  <31.485399, 38.518711, 31.455467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.476147, 38.147888, 31.305782> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684424, -0.258156, 0.681850,
		-0.728718, 0.271890, -0.628527,
		-0.023130, -0.927055, -0.374211,
		31.469208, 37.869770, 31.193520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.750393, 38.324501, 31.379341>,  <31.485399, 38.518711, 31.455467>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.750393, 38.324501, 31.379341> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.927404, 37.965801, 31.379913>,  <31.033611, 37.750580, 31.380257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.927404, 37.965801, 31.379913>,  <30.750393, 38.324501, 31.379341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.927404, 37.965801, 31.379913> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546928, -0.268631, 0.792911,
		-0.710661, -0.351669, -0.609336,
		0.442529, -0.896753, 0.001432,
		31.060163, 37.696774, 31.380342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.152073, 37.857750, 31.301538>,  <30.750393, 38.324501, 31.379341>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.152073, 37.857750, 31.301538> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.484173, 37.696236, 31.455236>,  <30.683434, 37.599327, 31.547455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.484173, 37.696236, 31.455236>,  <30.152073, 37.857750, 31.301538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.484173, 37.696236, 31.455236> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495399, -0.218596, 0.840711,
		-0.255477, -0.888352, -0.381526,
		0.830248, -0.403790, 0.384242,
		30.733248, 37.575100, 31.570509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.933294, 37.327942, 31.517464>,  <30.152073, 37.857750, 31.301538>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.933294, 37.327942, 31.517464> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.272114, 37.373672, 31.725096>,  <30.475405, 37.401112, 31.849674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.272114, 37.373672, 31.725096>,  <29.933294, 37.327942, 31.517464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.272114, 37.373672, 31.725096> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473320, -0.282079, 0.834505,
		0.241826, -0.952555, -0.184821,
		0.847046, 0.114326, 0.519078,
		30.526228, 37.407970, 31.880819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.926733, 36.792122, 31.933971>,  <29.933294, 37.327942, 31.517464>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.926733, 36.792122, 31.933971> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.165127, 37.068565, 32.097519>,  <30.308163, 37.234432, 32.195648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.165127, 37.068565, 32.097519>,  <29.926733, 36.792122, 31.933971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.165127, 37.068565, 32.097519> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387961, -0.197986, 0.900160,
		0.703058, -0.695106, 0.150126,
		0.595983, 0.691108, 0.408869,
		30.343922, 37.275898, 32.220181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.174730, 36.470806, 32.593319>,  <29.926733, 36.792122, 31.933971>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.174730, 36.470806, 32.593319> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.197983, 36.870064, 32.586021>,  <30.211933, 37.109619, 32.581642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.197983, 36.870064, 32.586021>,  <30.174730, 36.470806, 32.593319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.197983, 36.870064, 32.586021> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496751, 0.044771, 0.866738,
		0.865944, -0.041321, 0.498431,
		0.058130, 0.998142, -0.018243,
		30.215422, 37.169506, 32.580547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.995834, 36.586678, 33.232239>,  <30.174730, 36.470806, 32.593319>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.995834, 36.586678, 33.232239> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.021172, 36.967884, 33.113747>,  <30.036373, 37.196606, 33.042652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.021172, 36.967884, 33.113747>,  <29.995834, 36.586678, 33.232239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.021172, 36.967884, 33.113747> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341417, 0.299611, 0.890880,
		0.937775, 0.044708, 0.344353,
		0.063343, 0.953014, -0.296232,
		30.040174, 37.253788, 33.024876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.511625, 36.986580, 33.675400>,  <29.995834, 36.586678, 33.232239>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.511625, 36.986580, 33.675400> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.210659, 37.207905, 33.532452>,  <30.030079, 37.340702, 33.446682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.210659, 37.207905, 33.532452>,  <30.511625, 36.986580, 33.675400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.210659, 37.207905, 33.532452> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309277, 0.182261, 0.933343,
		0.581568, 0.812788, 0.033991,
		-0.752414, 0.553315, -0.357374,
		29.984936, 37.373898, 33.425240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.314886, 37.420013, 34.284946>,  <30.511625, 36.986580, 33.675400>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.314886, 37.420013, 34.284946> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.031586, 37.497948, 34.013531>,  <29.861605, 37.544708, 33.850681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.031586, 37.497948, 34.013531>,  <30.314886, 37.420013, 34.284946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.031586, 37.497948, 34.013531> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627854, 0.265596, 0.731614,
		0.322765, 0.944190, -0.065778,
		-0.708253, 0.194840, -0.678538,
		29.819109, 37.556400, 33.809971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.092575, 38.033638, 34.482239>,  <30.314886, 37.420013, 34.284946>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.092575, 38.033638, 34.482239> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.791681, 37.925476, 34.241898>,  <29.611145, 37.860577, 34.097694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.791681, 37.925476, 34.241898>,  <30.092575, 38.033638, 34.482239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.791681, 37.925476, 34.241898> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653632, 0.191218, 0.732257,
		-0.083115, 0.943565, -0.320590,
		-0.752235, -0.270409, -0.600851,
		29.566011, 37.844353, 34.061642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.584295, 38.566540, 34.668430>,  <30.092575, 38.033638, 34.482239>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.584295, 38.566540, 34.668430> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.399170, 38.250092, 34.508465>,  <29.288094, 38.060223, 34.412487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.399170, 38.250092, 34.508465>,  <29.584295, 38.566540, 34.668430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.399170, 38.250092, 34.508465> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627997, -0.025787, 0.777789,
		-0.625637, 0.611116, -0.484887,
		-0.462816, -0.791121, -0.399912,
		29.260324, 38.012756, 34.388493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.924255, 38.761703, 34.744053>,  <29.584295, 38.566540, 34.668430>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.924255, 38.761703, 34.744053> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.930584, 38.365532, 34.689217>,  <28.934381, 38.127827, 34.656315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.930584, 38.365532, 34.689217>,  <28.924255, 38.761703, 34.744053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.930584, 38.365532, 34.689217> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628094, -0.116522, 0.769364,
		-0.777977, 0.073931, -0.623928,
		0.015821, -0.990433, -0.137087,
		28.935329, 38.068401, 34.648090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.711546, 39.348759, 34.536613>,  <28.924255, 38.761703, 34.744053>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.711546, 39.348759, 34.536613> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.014568, 39.298553, 34.792850>,  <29.196383, 39.268429, 34.946590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.014568, 39.298553, 34.792850>,  <28.711546, 39.348759, 34.536613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.014568, 39.298553, 34.792850> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509304, 0.727481, -0.459763,
		-0.408309, 0.674550, 0.615033,
		0.757557, -0.125513, 0.640588,
		29.241837, 39.260899, 34.985027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.865696, 40.074692, 34.846344>,  <28.711546, 39.348759, 34.536613>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.865696, 40.074692, 34.846344> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.183897, 39.832836, 34.862259>,  <29.374817, 39.687721, 34.871807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.183897, 39.832836, 34.862259>,  <28.865696, 40.074692, 34.846344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.183897, 39.832836, 34.862259> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451125, 0.547131, -0.705077,
		0.404553, 0.578838, 0.708014,
		0.795502, -0.604644, 0.039784,
		29.422548, 39.651443, 34.874195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.445612, 40.479080, 34.870735>,  <28.865696, 40.074692, 34.846344>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.445612, 40.479080, 34.870735> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.581400, 40.121101, 34.754925>,  <29.662872, 39.906315, 34.685436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.581400, 40.121101, 34.754925>,  <29.445612, 40.479080, 34.870735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.581400, 40.121101, 34.754925> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460368, 0.426504, -0.778560,
		0.820256, 0.131009, 0.556792,
		0.339472, -0.894947, -0.289530,
		29.683241, 39.852615, 34.668064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.181290, 40.439316, 34.889652>,  <29.445612, 40.479080, 34.870735>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.181290, 40.439316, 34.889652> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.012878, 40.202755, 34.614559>,  <29.911831, 40.060818, 34.449505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.012878, 40.202755, 34.614559>,  <30.181290, 40.439316, 34.889652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.012878, 40.202755, 34.614559> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453119, 0.519688, -0.724298,
		0.785760, -0.616575, 0.049173,
		-0.421029, -0.591405, -0.687731,
		29.886570, 40.025333, 34.408241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.525349, 40.557205, 34.351997>,  <30.181290, 40.439316, 34.889652>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.525349, 40.557205, 34.351997> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.249010, 40.327621, 34.176132>,  <30.083208, 40.189873, 34.070614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.249010, 40.327621, 34.176132>,  <30.525349, 40.557205, 34.351997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.249010, 40.327621, 34.176132> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340329, 0.278367, -0.898158,
		0.637894, -0.770118, 0.003027,
		-0.690845, -0.573960, -0.439662,
		30.041756, 40.155434, 34.044235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.910589, 40.098736, 33.821960>,  <30.525349, 40.557205, 34.351997>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.910589, 40.098736, 33.821960> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.532892, 40.172779, 33.713047>,  <30.306274, 40.217205, 33.647697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.532892, 40.172779, 33.713047>,  <30.910589, 40.098736, 33.821960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.532892, 40.172779, 33.713047> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312782, 0.246047, -0.917403,
		-0.102822, -0.951418, -0.290226,
		-0.944243, 0.185106, -0.272287,
		30.249619, 40.228310, 33.631359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.819963, 39.750317, 33.294949>,  <30.910589, 40.098736, 33.821960>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.819963, 39.750317, 33.294949> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.524689, 40.017689, 33.258553>,  <30.347525, 40.178112, 33.236717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.524689, 40.017689, 33.258553>,  <30.819963, 39.750317, 33.294949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.524689, 40.017689, 33.258553> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316830, 0.224451, -0.921543,
		-0.595568, -0.709097, -0.377466,
		-0.738185, 0.668434, -0.090987,
		30.303232, 40.218220, 33.231255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.418507, 39.532867, 32.704510>,  <30.819963, 39.750317, 33.294949>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.418507, 39.532867, 32.704510> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.370018, 39.923870, 32.773540>,  <30.340925, 40.158474, 32.814957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.370018, 39.923870, 32.773540>,  <30.418507, 39.532867, 32.704510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.370018, 39.923870, 32.773540> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199729, 0.194320, -0.960390,
		-0.972324, -0.081953, -0.218793,
		-0.121222, 0.977509, 0.172573,
		30.333651, 40.217121, 32.825314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.211391, 39.803574, 32.084286>,  <30.418507, 39.532867, 32.704510>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.211391, 39.803574, 32.084286> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.289577, 40.149124, 32.269978>,  <30.336489, 40.356453, 32.381393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.289577, 40.149124, 32.269978>,  <30.211391, 39.803574, 32.084286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.289577, 40.149124, 32.269978> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187865, 0.431611, -0.882280,
		-0.962549, 0.259668, -0.077928,
		0.195465, 0.863878, 0.464229,
		30.348217, 40.408287, 32.409245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.890396, 40.327110, 31.688578>,  <30.211391, 39.803574, 32.084286>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.890396, 40.327110, 31.688578> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.173830, 40.507812, 31.905399>,  <30.343891, 40.616234, 32.035492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.173830, 40.507812, 31.905399>,  <29.890396, 40.327110, 31.688578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.173830, 40.507812, 31.905399> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431711, 0.330088, -0.839445,
		-0.558150, 0.828829, 0.038868,
		0.708586, 0.451756, 0.542054,
		30.386406, 40.643341, 32.068016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.952570, 40.867085, 31.291246>,  <29.890396, 40.327110, 31.688578>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.952570, 40.867085, 31.291246> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.276815, 40.870304, 31.525455>,  <30.471363, 40.872234, 31.665981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.276815, 40.870304, 31.525455>,  <29.952570, 40.867085, 31.291246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.276815, 40.870304, 31.525455> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543045, 0.363791, -0.756808,
		-0.219101, 0.931446, 0.290523,
		0.810615, 0.008050, 0.585524,
		30.520000, 40.872719, 31.701113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.289709, 41.412434, 31.139135>,  <29.952570, 40.867085, 31.291246>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.289709, 41.412434, 31.139135> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.593946, 41.226803, 31.320742>,  <30.776489, 41.115425, 31.429705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.593946, 41.226803, 31.320742>,  <30.289709, 41.412434, 31.139135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.593946, 41.226803, 31.320742> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630085, 0.359077, -0.688518,
		0.156499, 0.809750, 0.565520,
		0.760593, -0.464078, 0.454016,
		30.822124, 41.087578, 31.456947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.832449, 41.959881, 31.279190>,  <30.289709, 41.412434, 31.139135>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.832449, 41.959881, 31.279190> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.982368, 41.589920, 31.253622>,  <31.072321, 41.367943, 31.238281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.982368, 41.589920, 31.253622>,  <30.832449, 41.959881, 31.279190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.982368, 41.589920, 31.253622> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700856, 0.327793, -0.633525,
		0.606900, 0.192644, 0.771078,
		0.374799, -0.924900, -0.063922,
		31.094809, 41.312450, 31.234446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.489107, 42.129848, 31.170870>,  <30.832449, 41.959881, 31.279190>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.489107, 42.129848, 31.170870> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.488947, 41.744896, 31.062195>,  <31.488852, 41.513924, 30.996990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.488947, 41.744896, 31.062195>,  <31.489107, 42.129848, 31.170870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.488947, 41.744896, 31.062195> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639037, 0.208730, -0.740313,
		0.769176, -0.173914, 0.614917,
		-0.000399, -0.962385, -0.271687,
		31.488827, 41.456181, 30.980688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.191757, 41.866844, 31.233299>,  <31.489107, 42.129848, 31.170870>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.191757, 41.866844, 31.233299> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.993710, 41.641933, 30.968361>,  <31.874882, 41.506989, 30.809399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.993710, 41.641933, 30.968361>,  <32.191757, 41.866844, 31.233299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.993710, 41.641933, 30.968361> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741872, 0.123174, -0.659131,
		0.452198, -0.817724, 0.356153,
		-0.495119, -0.562278, -0.662345,
		31.845175, 41.473251, 30.769657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.695507, 41.361023, 30.999985>,  <32.191757, 41.866844, 31.233299>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.695507, 41.361023, 30.999985> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.412102, 41.307152, 30.722893>,  <32.242058, 41.274830, 30.556637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.412102, 41.307152, 30.722893>,  <32.695507, 41.361023, 30.999985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.412102, 41.307152, 30.722893> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659260, 0.223894, -0.717808,
		0.251774, -0.965263, -0.069840,
		-0.708510, -0.134683, -0.692730,
		32.199547, 41.266747, 30.515074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.937004, 40.785786, 30.459764>,  <32.695507, 41.361023, 30.999985>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.937004, 40.785786, 30.459764> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.678421, 41.035595, 30.284462>,  <32.523273, 41.185482, 30.179279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.678421, 41.035595, 30.284462>,  <32.937004, 40.785786, 30.459764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.678421, 41.035595, 30.284462> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733633, 0.351109, -0.581812,
		-0.209478, -0.697634, -0.685146,
		-0.646453, 0.624522, -0.438258,
		32.484486, 41.222950, 30.152985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.147671, 40.739555, 29.805553>,  <32.937004, 40.785786, 30.459764>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.147671, 40.739555, 29.805553> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.907387, 41.059315, 29.801308>,  <32.763218, 41.251171, 29.798759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.907387, 41.059315, 29.801308>,  <33.147671, 40.739555, 29.805553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.907387, 41.059315, 29.801308> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641245, 0.473853, -0.603546,
		-0.477443, -0.369363, -0.797257,
		-0.600711, 0.799396, -0.010614,
		32.727173, 41.299133, 29.798124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.942677, 40.884335, 29.103657>,  <33.147671, 40.739555, 29.805553>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.942677, 40.884335, 29.103657> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.885117, 41.238796, 29.279846>,  <32.850582, 41.451473, 29.385559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.885117, 41.238796, 29.279846>,  <32.942677, 40.884335, 29.103657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.885117, 41.238796, 29.279846> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407079, 0.458708, -0.789857,
		-0.901987, 0.065649, -0.426743,
		-0.143897, 0.886159, 0.440473,
		32.841946, 41.504642, 29.411987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.635971, 41.331158, 28.563824>,  <32.942677, 40.884335, 29.103657>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.635971, 41.331158, 28.563824> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.778107, 41.580265, 28.842649>,  <32.863388, 41.729729, 29.009945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.778107, 41.580265, 28.842649>,  <32.635971, 41.331158, 28.563824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.778107, 41.580265, 28.842649> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452377, 0.538011, -0.711266,
		-0.817980, 0.568075, -0.090550,
		0.355335, 0.622764, 0.697067,
		32.884708, 41.767094, 29.051769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.815807, 41.927025, 28.230240>,  <32.635971, 41.331158, 28.563824>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.815807, 41.927025, 28.230240> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.973732, 42.026104, 28.584139>,  <33.068485, 42.085552, 28.796478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.973732, 42.026104, 28.584139>,  <32.815807, 41.927025, 28.230240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.973732, 42.026104, 28.584139> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605450, 0.654168, -0.453315,
		-0.691056, 0.714641, 0.108304,
		0.394807, 0.247694, 0.884746,
		33.092175, 42.100410, 28.849564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.879002, 42.737331, 28.239975>,  <32.815807, 41.927025, 28.230240>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.879002, 42.737331, 28.239975> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.153870, 42.597420, 28.494675>,  <33.318790, 42.513474, 28.647495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.153870, 42.597420, 28.494675>,  <32.879002, 42.737331, 28.239975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.153870, 42.597420, 28.494675> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704777, 0.533661, -0.467436,
		-0.176309, 0.769975, 0.613232,
		0.687172, -0.349778, 0.636750,
		33.360020, 42.492485, 28.685699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.394432, 43.321487, 28.502584>,  <32.879002, 42.737331, 28.239975>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.394432, 43.321487, 28.502584> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.599590, 42.983170, 28.561337>,  <33.722687, 42.780178, 28.596588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.599590, 42.983170, 28.561337>,  <33.394432, 43.321487, 28.502584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.599590, 42.983170, 28.561337> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819516, 0.431472, -0.377129,
		0.255596, 0.313801, 0.914439,
		0.512899, -0.845790, 0.146882,
		33.753460, 42.729431, 28.605402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.973827, 43.501129, 28.731617>,  <33.394432, 43.321487, 28.502584>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.973827, 43.501129, 28.731617> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.092724, 43.132637, 28.631231>,  <34.164062, 42.911541, 28.571001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.092724, 43.132637, 28.631231>,  <33.973827, 43.501129, 28.731617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.092724, 43.132637, 28.631231> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802202, 0.383493, -0.457608,
		0.517805, -0.065304, 0.853002,
		0.297237, -0.921232, -0.250962,
		34.181896, 42.856266, 28.555943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.792645, 43.440601, 28.832590>,  <33.973827, 43.501129, 28.731617>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.792645, 43.440601, 28.832590> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.711052, 43.129185, 28.595181>,  <34.662098, 42.942337, 28.452734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.711052, 43.129185, 28.595181>,  <34.792645, 43.440601, 28.832590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.711052, 43.129185, 28.595181> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608912, 0.373830, -0.699627,
		0.766563, -0.504114, 0.397808,
		-0.203979, -0.778538, -0.593525,
		34.649857, 42.895622, 28.417124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.435181, 43.156792, 28.564764>,  <34.792645, 43.440601, 28.832590>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.435181, 43.156792, 28.564764> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.154751, 43.049824, 28.300344>,  <34.986492, 42.985641, 28.141693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.154751, 43.049824, 28.300344>,  <35.435181, 43.156792, 28.564764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.154751, 43.049824, 28.300344> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552387, 0.382589, -0.740604,
		0.450965, -0.884370, -0.120500,
		-0.701070, -0.267424, -0.661049,
		34.944431, 42.969597, 28.102030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.863533, 42.744186, 28.133739>,  <35.435181, 43.156792, 28.564764>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.863533, 42.744186, 28.133739> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.549667, 42.864803, 27.917082>,  <35.361347, 42.937176, 27.787086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.549667, 42.864803, 27.917082>,  <35.863533, 42.744186, 28.133739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.549667, 42.864803, 27.917082> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613205, 0.249217, -0.749580,
		-0.091046, -0.920305, -0.380460,
		-0.784660, 0.301546, -0.541645,
		35.314270, 42.955269, 27.754589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.423111, 42.155266, 28.098141>,  <35.863533, 42.744186, 28.133739>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.423111, 42.155266, 28.098141> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.792217, 42.211464, 28.241671>,  <37.013683, 42.245182, 28.327789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.792217, 42.211464, 28.241671>,  <36.423111, 42.155266, 28.098141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.792217, 42.211464, 28.241671> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329943, -0.193004, 0.924060,
		0.199083, -0.971087, -0.131742,
		0.922770, 0.140498, 0.358827,
		37.069050, 42.253613, 28.349319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.582623, 41.542511, 28.580353>,  <36.423111, 42.155266, 28.098141>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.582623, 41.542511, 28.580353> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.864548, 41.798126, 28.703558>,  <37.033703, 41.951496, 28.777481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.864548, 41.798126, 28.703558>,  <36.582623, 41.542511, 28.580353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.864548, 41.798126, 28.703558> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167917, -0.271567, 0.947658,
		0.689234, -0.719641, -0.084098,
		0.704812, 0.639037, 0.308013,
		37.075993, 41.989838, 28.795961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.079769, 41.122448, 28.926199>,  <36.582623, 41.542511, 28.580353>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.079769, 41.122448, 28.926199> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.120186, 41.502907, 29.042892>,  <37.144436, 41.731182, 29.112909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.120186, 41.502907, 29.042892>,  <37.079769, 41.122448, 28.926199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.120186, 41.502907, 29.042892> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132599, -0.303493, 0.943562,
		0.986007, -0.056652, -0.156785,
		0.101038, 0.951148, 0.291734,
		37.150497, 41.788250, 29.130413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.576332, 41.112877, 29.319017>,  <37.079769, 41.122448, 28.926199>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.576332, 41.112877, 29.319017> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.414970, 41.466835, 29.412170>,  <37.318153, 41.679211, 29.468061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.414970, 41.466835, 29.412170>,  <37.576332, 41.112877, 29.319017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.414970, 41.466835, 29.412170> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015576, -0.261112, 0.965183,
		0.914890, 0.385730, 0.119117,
		-0.403403, 0.884891, 0.232880,
		37.293949, 41.732304, 29.482035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.876266, 41.225811, 29.933205>,  <37.576332, 41.112877, 29.319017>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.876266, 41.225811, 29.933205> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.546638, 41.452381, 29.929609>,  <37.348862, 41.588322, 29.927452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.546638, 41.452381, 29.929609>,  <37.876266, 41.225811, 29.933205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.546638, 41.452381, 29.929609> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295636, -0.416470, 0.859739,
		0.483232, 0.711139, 0.510654,
		-0.824067, 0.566422, -0.008987,
		37.299419, 41.622307, 29.926914>
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
