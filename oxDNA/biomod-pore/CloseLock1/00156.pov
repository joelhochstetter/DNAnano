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
	<23.940073, 34.923611, 34.560551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.179920, 34.873299, 34.876686>,  <24.323828, 34.843113, 35.066368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.179920, 34.873299, 34.876686>,  <23.940073, 34.923611, 34.560551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.179920, 34.873299, 34.876686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697094, 0.567170, -0.438609,
		-0.393090, 0.813940, 0.427764,
		0.599616, -0.125779, 0.790342,
		24.359804, 34.835564, 35.113789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.194281, 35.521397, 34.849209>,  <23.940073, 34.923611, 34.560551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.194281, 35.521397, 34.849209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.471943, 35.276299, 35.000305>,  <24.638540, 35.129238, 35.090961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.471943, 35.276299, 35.000305>,  <24.194281, 35.521397, 34.849209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.471943, 35.276299, 35.000305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716797, 0.540320, -0.440745,
		0.065965, 0.576709, 0.814282,
		0.694155, -0.612749, 0.377741,
		24.680189, 35.092472, 35.113628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.601336, 35.822540, 35.285679>,  <24.194281, 35.521397, 34.849209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.601336, 35.822540, 35.285679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.819914, 35.533531, 35.116276>,  <24.951061, 35.360126, 35.014633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.819914, 35.533531, 35.116276>,  <24.601336, 35.822540, 35.285679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.819914, 35.533531, 35.116276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626951, 0.688189, -0.365142,
		0.555276, -0.065989, 0.829044,
		0.546444, -0.722524, -0.423507,
		24.983847, 35.316772, 34.989223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.340166, 35.801739, 35.537395>,  <24.601336, 35.822540, 35.285679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.340166, 35.801739, 35.537395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.305271, 35.663311, 35.163738>,  <25.284334, 35.580254, 34.939545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.305271, 35.663311, 35.163738>,  <25.340166, 35.801739, 35.537395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.305271, 35.663311, 35.163738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463020, 0.816189, -0.345611,
		0.882044, -0.462678, 0.089033,
		-0.087239, -0.346068, -0.934145,
		25.279099, 35.559490, 34.883495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.910650, 35.689159, 35.170189>,  <25.340166, 35.801739, 35.537395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.910650, 35.689159, 35.170189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.632212, 35.785259, 34.899567>,  <25.465149, 35.842918, 34.737194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.632212, 35.785259, 34.899567>,  <25.910650, 35.689159, 35.170189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.632212, 35.785259, 34.899567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560102, 0.771262, -0.302391,
		0.449153, -0.589435, -0.671438,
		-0.696094, 0.240254, -0.676558,
		25.423384, 35.857334, 34.696598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.150724, 35.597294, 34.383541>,  <25.910650, 35.689159, 35.170189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.150724, 35.597294, 34.383541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.850231, 35.859295, 34.416080>,  <25.669935, 36.016495, 34.435604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.850231, 35.859295, 34.416080>,  <26.150724, 35.597294, 34.383541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.850231, 35.859295, 34.416080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617952, 0.741277, -0.261999,
		-0.231915, -0.146550, -0.961633,
		-0.751233, 0.655005, 0.081353,
		25.624861, 36.055798, 34.440487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.029417, 35.996731, 33.749607>,  <26.150724, 35.597294, 34.383541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.029417, 35.996731, 33.749607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.899628, 36.221050, 34.054295>,  <25.821754, 36.355644, 34.237106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.899628, 36.221050, 34.054295>,  <26.029417, 35.996731, 33.749607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.899628, 36.221050, 34.054295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561915, 0.762076, -0.321702,
		-0.760901, 0.323640, -0.562394,
		-0.324471, 0.560801, 0.761722,
		25.802286, 36.389290, 34.282810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.625595, 36.660439, 33.586411>,  <26.029417, 35.996731, 33.749607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.625595, 36.660439, 33.586411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.835382, 36.695740, 33.925148>,  <25.961254, 36.716923, 34.128391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.835382, 36.695740, 33.925148>,  <25.625595, 36.660439, 33.586411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.835382, 36.695740, 33.925148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321684, 0.900353, -0.293058,
		-0.788323, 0.426116, 0.443816,
		0.524467, 0.088255, 0.846844,
		25.992723, 36.722218, 34.179203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.573593, 37.343056, 33.828739>,  <25.625595, 36.660439, 33.586411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.573593, 37.343056, 33.828739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.884705, 37.205784, 34.039371>,  <26.071371, 37.123421, 34.165752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.884705, 37.205784, 34.039371>,  <25.573593, 37.343056, 33.828739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.884705, 37.205784, 34.039371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476783, 0.868039, -0.138514,
		-0.409562, 0.358799, 0.838762,
		0.777777, -0.343178, 0.526585,
		26.118038, 37.102829, 34.197346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.706505, 37.817356, 34.292068>,  <25.573593, 37.343056, 33.828739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.706505, 37.817356, 34.292068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.052336, 37.628819, 34.222393>,  <26.259834, 37.515694, 34.180588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.052336, 37.628819, 34.222393>,  <25.706505, 37.817356, 34.292068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.052336, 37.628819, 34.222393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467088, 0.881644, -0.067322,
		0.185307, -0.023157, 0.982408,
		0.864575, -0.471346, -0.174191,
		26.311708, 37.487415, 34.170135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.221970, 38.102039, 34.743572>,  <25.706505, 37.817356, 34.292068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.221970, 38.102039, 34.743572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.414619, 37.906754, 34.452454>,  <26.530209, 37.789581, 34.277782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.414619, 37.906754, 34.452454>,  <26.221970, 38.102039, 34.743572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.414619, 37.906754, 34.452454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682321, 0.730054, -0.038202,
		0.549978, -0.478189, 0.684734,
		0.481625, -0.488218, -0.727792,
		26.559107, 37.760288, 34.234116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.920341, 38.241257, 34.861633>,  <26.221970, 38.102039, 34.743572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.920341, 38.241257, 34.861633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.966995, 38.094177, 34.492592>,  <26.994987, 38.005928, 34.271168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.966995, 38.094177, 34.492592>,  <26.920341, 38.241257, 34.861633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.966995, 38.094177, 34.492592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788694, 0.598873, -0.138972,
		0.603621, -0.711442, 0.359849,
		0.116634, -0.367697, -0.922602,
		27.001986, 37.983868, 34.215813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.545549, 37.918652, 34.733837>,  <26.920341, 38.241257, 34.861633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.545549, 37.918652, 34.733837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.467436, 38.032146, 34.358315>,  <27.420567, 38.100243, 34.132999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.467436, 38.032146, 34.358315>,  <27.545549, 37.918652, 34.733837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.467436, 38.032146, 34.358315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934636, 0.343903, -0.090479,
		0.297186, -0.895111, -0.332351,
		-0.195286, 0.283738, -0.938806,
		27.408850, 38.117268, 34.076672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.130972, 37.817726, 34.453587>,  <27.545549, 37.918652, 34.733837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.130972, 37.817726, 34.453587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.942295, 38.036419, 34.176865>,  <27.829088, 38.167633, 34.010830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.942295, 38.036419, 34.176865>,  <28.130972, 37.817726, 34.453587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.942295, 38.036419, 34.176865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856166, 0.471646, -0.211019,
		0.210916, -0.691835, -0.690564,
		-0.471692, 0.546730, -0.691804,
		27.800787, 38.200439, 33.969322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.625362, 37.910728, 33.927624>,  <28.130972, 37.817726, 34.453587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.625362, 37.910728, 33.927624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.357548, 38.179878, 33.801788>,  <28.196859, 38.341366, 33.726288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.357548, 38.179878, 33.801788>,  <28.625362, 37.910728, 33.927624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.357548, 38.179878, 33.801788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742221, 0.589628, -0.318508,
		-0.028825, -0.446746, -0.894197,
		-0.669535, 0.672872, -0.314588,
		28.156687, 38.381741, 33.707413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.799284, 38.230068, 33.212399>,  <28.625362, 37.910728, 33.927624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.799284, 38.230068, 33.212399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.576319, 38.477268, 33.434162>,  <28.442539, 38.625587, 33.567219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.576319, 38.477268, 33.434162>,  <28.799284, 38.230068, 33.212399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.576319, 38.477268, 33.434162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630081, 0.749733, -0.202234,
		-0.540637, 0.236592, -0.807302,
		-0.557414, 0.618001, 0.554406,
		28.409094, 38.662670, 33.600483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.723993, 38.892277, 32.820721>,  <28.799284, 38.230068, 33.212399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.723993, 38.892277, 32.820721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.645967, 38.971058, 33.205044>,  <28.599152, 39.018326, 33.435638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.645967, 38.971058, 33.205044>,  <28.723993, 38.892277, 32.820721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.645967, 38.971058, 33.205044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617214, 0.785980, -0.035810,
		-0.762232, 0.586041, -0.274879,
		-0.195063, 0.196954, 0.960812,
		28.587448, 39.030144, 33.493286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.765213, 39.603779, 32.868927>,  <28.723993, 38.892277, 32.820721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.765213, 39.603779, 32.868927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.808491, 39.488106, 33.249382>,  <28.834457, 39.418701, 33.477657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.808491, 39.488106, 33.249382>,  <28.765213, 39.603779, 32.868927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.808491, 39.488106, 33.249382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798304, 0.595458, 0.090230,
		-0.592457, 0.749537, 0.295279,
		0.108195, -0.289179, 0.951141,
		28.840950, 39.401352, 33.534725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.003197, 40.304417, 33.232056>,  <28.765213, 39.603779, 32.868927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.003197, 40.304417, 33.232056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.064003, 39.998703, 33.482738>,  <29.100487, 39.815277, 33.633148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.064003, 39.998703, 33.482738>,  <29.003197, 40.304417, 33.232056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.064003, 39.998703, 33.482738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862923, 0.411803, 0.292886,
		-0.481929, 0.496281, 0.722115,
		0.152016, -0.764280, 0.626712,
		29.109608, 39.769421, 33.670753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.234608, 40.681095, 33.898617>,  <29.003197, 40.304417, 33.232056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.234608, 40.681095, 33.898617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.355524, 40.300812, 33.926228>,  <29.428074, 40.072639, 33.942795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.355524, 40.300812, 33.926228>,  <29.234608, 40.681095, 33.898617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.355524, 40.300812, 33.926228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882101, 0.306450, 0.357752,
		-0.361273, -0.047256, 0.931262,
		0.302291, -0.950713, 0.069027,
		29.446211, 40.015598, 33.946938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.527008, 40.605450, 34.484653>,  <29.234608, 40.681095, 33.898617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.527008, 40.605450, 34.484653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.678892, 40.330597, 34.236889>,  <29.770023, 40.165688, 34.088230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.678892, 40.330597, 34.236889>,  <29.527008, 40.605450, 34.484653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.678892, 40.330597, 34.236889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905880, 0.411965, 0.098320,
		0.187618, -0.598446, 0.778885,
		0.379712, -0.687130, -0.619412,
		29.792807, 40.124458, 34.051064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.166222, 40.546661, 34.760460>,  <29.527008, 40.605450, 34.484653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.166222, 40.546661, 34.760460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.205971, 40.390305, 34.394440>,  <30.229820, 40.296490, 34.174828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.205971, 40.390305, 34.394440>,  <30.166222, 40.546661, 34.760460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.205971, 40.390305, 34.394440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920046, 0.386359, -0.065131,
		0.378999, -0.835420, 0.398036,
		0.099373, -0.390896, -0.915055,
		30.235783, 40.273037, 34.119923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.839127, 40.309002, 34.774284>,  <30.166222, 40.546661, 34.760460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.839127, 40.309002, 34.774284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.718040, 40.370331, 34.398018>,  <30.645390, 40.407127, 34.172256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.718040, 40.370331, 34.398018>,  <30.839127, 40.309002, 34.774284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.718040, 40.370331, 34.398018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845301, 0.499108, -0.190675,
		0.440261, -0.852868, -0.280689,
		-0.302715, 0.153320, -0.940668,
		30.627226, 40.416328, 34.115818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.439060, 40.166412, 34.273018>,  <30.839127, 40.309002, 34.774284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.439060, 40.166412, 34.273018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.184385, 40.401443, 34.073265>,  <31.031580, 40.542461, 33.953415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.184385, 40.401443, 34.073265>,  <31.439060, 40.166412, 34.273018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.184385, 40.401443, 34.073265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718101, 0.687773, -0.106301,
		0.280998, -0.426284, -0.859838,
		-0.636688, 0.587580, -0.499377,
		30.993380, 40.577717, 33.923450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.718885, 40.404812, 33.552235>,  <31.439060, 40.166412, 34.273018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.718885, 40.404812, 33.552235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.453657, 40.666817, 33.697178>,  <31.294521, 40.824020, 33.784145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.453657, 40.666817, 33.697178>,  <31.718885, 40.404812, 33.552235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.453657, 40.666817, 33.697178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692059, 0.720905, -0.036748,
		-0.285296, 0.226407, -0.931314,
		-0.663069, 0.655008, 0.362359,
		31.254736, 40.863319, 33.805885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.886967, 40.999233, 33.156994>,  <31.718885, 40.404812, 33.552235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.886967, 40.999233, 33.156994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.707298, 41.093388, 33.501747>,  <31.599497, 41.149879, 33.708599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.707298, 41.093388, 33.501747>,  <31.886967, 40.999233, 33.156994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.707298, 41.093388, 33.501747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557710, 0.827514, 0.064654,
		-0.697999, 0.509720, -0.502973,
		-0.449173, 0.235385, 0.861880,
		31.572546, 41.164001, 33.760311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.550060, 41.650097, 33.207390>,  <31.886967, 40.999233, 33.156994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.550060, 41.650097, 33.207390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.702976, 41.538029, 33.559608>,  <31.794725, 41.470787, 33.770939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.702976, 41.538029, 33.559608>,  <31.550060, 41.650097, 33.207390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.702976, 41.538029, 33.559608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623338, 0.781645, -0.021920,
		-0.682133, 0.557257, 0.473455,
		0.382289, -0.280170, 0.880545,
		31.817663, 41.453979, 33.823772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.614321, 42.292789, 33.624973>,  <31.550060, 41.650097, 33.207390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.614321, 42.292789, 33.624973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.866114, 42.007561, 33.748440>,  <32.017189, 41.836422, 33.822521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.866114, 42.007561, 33.748440>,  <31.614321, 42.292789, 33.624973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.866114, 42.007561, 33.748440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732161, 0.677351, 0.071658,
		-0.260176, 0.180889, 0.948466,
		0.629483, -0.713074, 0.308670,
		32.054958, 41.793640, 33.841042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.631493, 43.007957, 33.688763>,  <31.614321, 42.292789, 33.624973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.631493, 43.007957, 33.688763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.860363, 43.336002, 33.690754>,  <31.997686, 43.532829, 33.691948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.860363, 43.336002, 33.690754>,  <31.631493, 43.007957, 33.688763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.860363, 43.336002, 33.690754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638999, 0.441996, 0.629540,
		0.514097, -0.363387, 0.776952,
		0.572176, 0.820116, 0.004975,
		32.032017, 43.582035, 33.692245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.855253, 43.196526, 33.560169>,  <31.631493, 43.007957, 33.688763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.855253, 43.196526, 33.560169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.915644, 43.142574, 33.951885>,  <30.951878, 43.110203, 34.186916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.915644, 43.142574, 33.951885>,  <30.855253, 43.196526, 33.560169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.915644, 43.142574, 33.951885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559771, 0.804852, 0.197153,
		-0.814778, -0.577945, 0.046010,
		0.150975, -0.134880, 0.979293,
		30.960936, 43.102112, 34.245674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.242847, 43.302158, 33.849442>,  <30.855253, 43.196526, 33.560169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.242847, 43.302158, 33.849442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.496504, 43.366661, 34.151928>,  <30.648699, 43.405365, 34.333420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.496504, 43.366661, 34.151928>,  <30.242847, 43.302158, 33.849442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.496504, 43.366661, 34.151928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595988, 0.725020, 0.345174,
		-0.492606, -0.669583, 0.555876,
		0.634143, 0.161260, 0.756212,
		30.686747, 43.415039, 34.378792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.971931, 43.110889, 34.569908>,  <30.242847, 43.302158, 33.849442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.971931, 43.110889, 34.569908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.231226, 43.411190, 34.519058>,  <30.386803, 43.591370, 34.488548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.231226, 43.411190, 34.519058>,  <29.971931, 43.110889, 34.569908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.231226, 43.411190, 34.519058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667764, 0.640736, 0.378877,
		0.365893, -0.160716, 0.916675,
		0.648239, 0.750751, -0.127120,
		30.425697, 43.636414, 34.480923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.173040, 43.438141, 35.244995>,  <29.971931, 43.110889, 34.569908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.173040, 43.438141, 35.244995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.203831, 43.742298, 34.987041>,  <30.222305, 43.924793, 34.832268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.203831, 43.742298, 34.987041>,  <30.173040, 43.438141, 35.244995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.203831, 43.742298, 34.987041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555751, 0.569728, 0.605434,
		0.827777, 0.311791, 0.466445,
		0.076978, 0.760392, -0.644886,
		30.226925, 43.970417, 34.793575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.316402, 44.070087, 35.632313>,  <30.173040, 43.438141, 35.244995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.316402, 44.070087, 35.632313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.122618, 44.153893, 35.292572>,  <30.006346, 44.204174, 35.088726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.122618, 44.153893, 35.292572>,  <30.316402, 44.070087, 35.632313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.122618, 44.153893, 35.292572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783613, 0.327689, 0.527798,
		0.388903, 0.921263, 0.005422,
		-0.484464, 0.209510, -0.849353,
		29.977278, 44.216747, 35.037766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.184166, 44.794258, 36.017254>,  <30.316402, 44.070087, 35.632313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.184166, 44.794258, 36.017254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.236916, 44.940796, 35.648819>,  <30.268566, 45.028717, 35.427757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.236916, 44.940796, 35.648819>,  <30.184166, 44.794258, 36.017254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.236916, 44.940796, 35.648819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886198, -0.459905, -0.056038,
		-0.444142, -0.808876, -0.385303,
		0.131875, 0.366344, -0.921087,
		30.276478, 45.050697, 35.372494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.760496, 44.879990, 36.288593>,  <30.184166, 44.794258, 36.017254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.760496, 44.879990, 36.288593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.505976, 45.077831, 36.525402>,  <30.353264, 45.196537, 36.667488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.505976, 45.077831, 36.525402>,  <30.760496, 44.879990, 36.288593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.505976, 45.077831, 36.525402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176662, -0.840450, 0.512284,
		0.750940, 0.221380, 0.622158,
		-0.636302, 0.494606, 0.592018,
		30.315084, 45.226212, 36.703007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.844669, 44.567032, 36.948257>,  <30.760496, 44.879990, 36.288593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.844669, 44.567032, 36.948257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.474058, 44.717461, 36.952518>,  <30.251692, 44.807716, 36.955074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.474058, 44.717461, 36.952518>,  <30.844669, 44.567032, 36.948257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.474058, 44.717461, 36.952518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342362, -0.854542, 0.390571,
		0.155982, 0.358230, 0.920511,
		-0.926530, 0.376070, 0.010649,
		30.196098, 44.830280, 36.955711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.675707, 44.448860, 37.600533>,  <30.844669, 44.567032, 36.948257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.675707, 44.448860, 37.600533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.363640, 44.475605, 37.351738>,  <30.176399, 44.491653, 37.202461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.363640, 44.475605, 37.351738>,  <30.675707, 44.448860, 37.600533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.363640, 44.475605, 37.351738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232013, -0.954287, 0.188430,
		-0.580954, 0.291316, 0.760018,
		-0.780168, 0.066865, -0.621986,
		30.129589, 44.495663, 37.165142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.122290, 44.015079, 37.967396>,  <30.675707, 44.448860, 37.600533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.122290, 44.015079, 37.967396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.949593, 44.071297, 37.611004>,  <29.845974, 44.105026, 37.397167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.949593, 44.071297, 37.611004>,  <30.122290, 44.015079, 37.967396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.949593, 44.071297, 37.611004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561079, -0.815267, 0.143284,
		-0.706251, 0.561773, 0.430838,
		-0.431741, 0.140540, -0.890982,
		29.820070, 44.113457, 37.343708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.405823, 44.021732, 38.004524>,  <30.122290, 44.015079, 37.967396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.405823, 44.021732, 38.004524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.467714, 43.903702, 37.627380>,  <29.504850, 43.832882, 37.401093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.467714, 43.903702, 37.627380>,  <29.405823, 44.021732, 38.004524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.467714, 43.903702, 37.627380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655947, -0.744334, 0.125299,
		-0.738777, 0.599080, -0.308725,
		0.154730, -0.295076, -0.942862,
		29.514133, 43.815178, 37.344521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.755653, 43.839931, 37.840145>,  <29.405823, 44.021732, 38.004524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.755653, 43.839931, 37.840145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.987558, 43.657452, 37.570107>,  <29.126701, 43.547962, 37.408081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.987558, 43.657452, 37.570107>,  <28.755653, 43.839931, 37.840145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.987558, 43.657452, 37.570107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673068, -0.735101, -0.081273,
		-0.459190, 0.501507, -0.733236,
		0.579762, -0.456198, -0.675099,
		29.161488, 43.520592, 37.367577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.255598, 43.707500, 37.357250>,  <28.755653, 43.839931, 37.840145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.255598, 43.707500, 37.357250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.558229, 43.462780, 37.264908>,  <28.739809, 43.315948, 37.209503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.558229, 43.462780, 37.264908>,  <28.255598, 43.707500, 37.357250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.558229, 43.462780, 37.264908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653809, -0.713764, -0.251146,
		-0.011127, 0.340947, -0.940017,
		0.756578, -0.611797, -0.230856,
		28.785202, 43.279240, 37.195652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.989613, 43.413902, 36.781189>,  <28.255598, 43.707500, 37.357250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.989613, 43.413902, 36.781189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.289925, 43.173733, 36.891327>,  <28.470112, 43.029629, 36.957409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.289925, 43.173733, 36.891327>,  <27.989613, 43.413902, 36.781189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.289925, 43.173733, 36.891327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458829, -0.773907, -0.436513,
		0.475187, 0.201388, -0.856528,
		0.750782, -0.600425, 0.275348,
		28.515160, 42.993607, 36.973930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.027025, 42.901184, 36.255692>,  <27.989613, 43.413902, 36.781189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.027025, 42.901184, 36.255692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.230646, 42.718571, 36.547565>,  <28.352818, 42.609001, 36.722691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.230646, 42.718571, 36.547565>,  <28.027025, 42.901184, 36.255692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.230646, 42.718571, 36.547565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288882, -0.889192, -0.354803,
		0.810811, -0.030180, -0.584529,
		0.509050, -0.456538, 0.729685,
		28.383362, 42.581608, 36.766472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.470293, 42.388538, 35.922668>,  <28.027025, 42.901184, 36.255692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.470293, 42.388538, 35.922668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.418589, 42.268730, 36.300785>,  <28.387566, 42.196846, 36.527657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.418589, 42.268730, 36.300785>,  <28.470293, 42.388538, 35.922668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.418589, 42.268730, 36.300785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229775, -0.918297, -0.322387,
		0.964622, -0.258876, 0.049876,
		-0.129260, -0.299521, 0.945293,
		28.379810, 42.178875, 36.584373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.718126, 41.697075, 35.863815>,  <28.470293, 42.388538, 35.922668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.718126, 41.697075, 35.863815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.515667, 41.731724, 36.207050>,  <28.394192, 41.752514, 36.412991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.515667, 41.731724, 36.207050>,  <28.718126, 41.697075, 35.863815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.515667, 41.731724, 36.207050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276858, -0.958605, -0.066532,
		0.816800, -0.271243, 0.509180,
		-0.506149, 0.086627, 0.858084,
		28.363823, 41.757713, 36.464478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.002636, 41.084133, 36.287655>,  <28.718126, 41.697075, 35.863815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.002636, 41.084133, 36.287655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.664150, 41.211517, 36.458538>,  <28.461060, 41.287949, 36.561069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.664150, 41.211517, 36.458538>,  <29.002636, 41.084133, 36.287655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.664150, 41.211517, 36.458538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187184, -0.928319, 0.321226,
		0.498882, 0.191860, 0.845166,
		-0.846214, 0.318456, 0.427209,
		28.410286, 41.307053, 36.586700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.902889, 40.733067, 36.951221>,  <29.002636, 41.084133, 36.287655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.902889, 40.733067, 36.951221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.545012, 40.873474, 36.840725>,  <28.330284, 40.957718, 36.774429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.545012, 40.873474, 36.840725>,  <28.902889, 40.733067, 36.951221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.545012, 40.873474, 36.840725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410169, -0.890494, 0.196931,
		-0.176864, 0.289498, 0.940697,
		-0.894696, 0.351015, -0.276239,
		28.276602, 40.978779, 36.757854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.439718, 40.324032, 37.348381>,  <28.902889, 40.733067, 36.951221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.439718, 40.324032, 37.348381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.219137, 40.466576, 37.046677>,  <28.086788, 40.552101, 36.865654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.219137, 40.466576, 37.046677>,  <28.439718, 40.324032, 37.348381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.219137, 40.466576, 37.046677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596580, -0.800456, 0.057984,
		-0.583088, 0.481951, 0.654012,
		-0.551454, 0.356360, -0.754259,
		28.053701, 40.573483, 36.820400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.727598, 40.252605, 37.606312>,  <28.439718, 40.324032, 37.348381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.727598, 40.252605, 37.606312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.726278, 40.264732, 37.206497>,  <27.725487, 40.272011, 36.966610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.726278, 40.264732, 37.206497>,  <27.727598, 40.252605, 37.606312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.726278, 40.264732, 37.206497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642098, -0.766331, -0.021128,
		-0.766615, 0.641730, 0.021996,
		-0.003298, 0.030321, -0.999535,
		27.725288, 40.273830, 36.906635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.045416, 40.075478, 37.419819>,  <27.727598, 40.252605, 37.606312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.045416, 40.075478, 37.419819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.274672, 40.006218, 37.099438>,  <27.412226, 39.964661, 36.907207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.274672, 40.006218, 37.099438>,  <27.045416, 40.075478, 37.419819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.274672, 40.006218, 37.099438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359129, -0.931632, -0.055579,
		-0.736572, 0.319501, -0.596138,
		0.573139, -0.173152, -0.800956,
		27.446613, 39.954273, 36.859150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.514246, 39.819515, 36.906975>,  <27.045416, 40.075478, 37.419819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.514246, 39.819515, 36.906975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.875467, 39.698505, 36.785007>,  <27.092199, 39.625900, 36.711826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.875467, 39.698505, 36.785007>,  <26.514246, 39.819515, 36.906975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.875467, 39.698505, 36.785007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351404, -0.928574, -0.119438,
		-0.247004, 0.215008, -0.944860,
		0.903053, -0.302526, -0.304916,
		27.146383, 39.607746, 36.693531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.351976, 39.340889, 36.475597>,  <26.514246, 39.819515, 36.906975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.351976, 39.340889, 36.475597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.739521, 39.269325, 36.544067>,  <26.972048, 39.226387, 36.585148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.739521, 39.269325, 36.544067>,  <26.351976, 39.340889, 36.475597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.739521, 39.269325, 36.544067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162135, -0.980896, -0.107494,
		0.187138, 0.076393, -0.979359,
		0.968861, -0.178905, 0.171176,
		27.030180, 39.215652, 36.595421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.739063, 39.109001, 35.821632>,  <26.351976, 39.340889, 36.475597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.739063, 39.109001, 35.821632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.906742, 38.988720, 36.164295>,  <27.007349, 38.916553, 36.369892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.906742, 38.988720, 36.164295>,  <26.739063, 39.109001, 35.821632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.906742, 38.988720, 36.164295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043859, -0.949164, -0.311713,
		0.906836, 0.093097, -0.411074,
		0.419196, -0.300701, 0.856653,
		27.032501, 38.898510, 36.421291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.077360, 38.668854, 35.567051>,  <26.739063, 39.109001, 35.821632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.077360, 38.668854, 35.567051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.097115, 38.564526, 35.952702>,  <27.108967, 38.501930, 36.184090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.097115, 38.564526, 35.952702>,  <27.077360, 38.668854, 35.567051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.097115, 38.564526, 35.952702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147885, -0.952752, -0.265316,
		0.987771, 0.155683, -0.008482,
		0.049387, -0.260817, 0.964124,
		27.111931, 38.486279, 36.241940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.735374, 38.174088, 35.671722>,  <27.077360, 38.668854, 35.567051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.735374, 38.174088, 35.671722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.489958, 38.109966, 35.981010>,  <27.342709, 38.071495, 36.166584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.489958, 38.109966, 35.981010>,  <27.735374, 38.174088, 35.671722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.489958, 38.109966, 35.981010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193553, -0.979837, -0.049557,
		0.765576, 0.119254, 0.632196,
		-0.613539, -0.160304, 0.773222,
		27.305897, 38.061874, 36.212978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.127520, 37.760269, 36.089561>,  <27.735374, 38.174088, 35.671722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.127520, 37.760269, 36.089561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.751595, 37.704689, 36.214424>,  <27.526039, 37.671341, 36.289341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.751595, 37.704689, 36.214424>,  <28.127520, 37.760269, 36.089561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.751595, 37.704689, 36.214424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159235, -0.986417, 0.040317,
		0.302315, 0.087597, 0.949175,
		-0.939814, -0.138954, 0.312157,
		27.469650, 37.663002, 36.308071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.185036, 37.319496, 36.753510>,  <28.127520, 37.760269, 36.089561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.185036, 37.319496, 36.753510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.807762, 37.297157, 36.622494>,  <27.581398, 37.283756, 36.543884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.807762, 37.297157, 36.622494>,  <28.185036, 37.319496, 36.753510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.807762, 37.297157, 36.622494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029360, -0.995927, 0.085251,
		-0.330966, 0.070791, 0.940983,
		-0.943186, -0.055843, -0.327540,
		27.524807, 37.280403, 36.524231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.775499, 36.953079, 36.832062>,  <28.185036, 37.319496, 36.753510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.775499, 36.953079, 36.832062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.939659, 36.716831, 37.109982>,  <29.038155, 36.575081, 37.276733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.939659, 36.716831, 37.109982>,  <28.775499, 36.953079, 36.832062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.939659, 36.716831, 37.109982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850076, -0.027992, -0.525916,
		0.330064, 0.806465, 0.490584,
		0.410400, -0.590619, 0.694795,
		29.062778, 36.539646, 37.318420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.412130, 37.192230, 36.946056>,  <28.775499, 36.953079, 36.832062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.412130, 37.192230, 36.946056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.429167, 36.827892, 37.110275>,  <29.439388, 36.609291, 37.208805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.429167, 36.827892, 37.110275>,  <29.412130, 37.192230, 36.946056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.429167, 36.827892, 37.110275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916104, -0.128366, -0.379835,
		0.398671, 0.392281, 0.828961,
		0.042591, -0.910845, 0.410546,
		29.441944, 36.554638, 37.233440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.067764, 37.184261, 37.327606>,  <29.412130, 37.192230, 36.946056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.067764, 37.184261, 37.327606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.957386, 36.818840, 37.208088>,  <29.891159, 36.599586, 37.136375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.957386, 36.818840, 37.208088>,  <30.067764, 37.184261, 37.327606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.957386, 36.818840, 37.208088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883410, -0.118561, -0.453354,
		0.378736, -0.389061, 0.839756,
		-0.275944, -0.913551, -0.298797,
		29.874603, 36.544773, 37.118450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.720831, 36.835197, 37.573898>,  <30.067764, 37.184261, 37.327606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.720831, 36.835197, 37.573898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.745695, 37.225594, 37.490402>,  <30.760614, 37.459831, 37.440304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.745695, 37.225594, 37.490402>,  <30.720831, 36.835197, 37.573898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.745695, 37.225594, 37.490402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724127, 0.099826, 0.682404,
		0.686860, -0.193571, -0.700538,
		0.062162, 0.975994, -0.208736,
		30.764343, 37.518391, 37.427780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.471031, 37.011497, 37.468296>,  <30.720831, 36.835197, 37.573898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.471031, 37.011497, 37.468296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.272371, 37.320976, 37.625637>,  <31.153175, 37.506664, 37.720043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.272371, 37.320976, 37.625637>,  <31.471031, 37.011497, 37.468296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.272371, 37.320976, 37.625637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866184, 0.412922, 0.281462,
		0.055342, 0.480505, -0.875244,
		-0.496651, 0.773699, 0.393354,
		31.123377, 37.553085, 37.743645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.025753, 37.609020, 37.541515>,  <31.471031, 37.011497, 37.468296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.025753, 37.609020, 37.541515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.033062, 37.255318, 37.728172>,  <32.037445, 37.043095, 37.840164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.033062, 37.255318, 37.728172>,  <32.025753, 37.609020, 37.541515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.033062, 37.255318, 37.728172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271618, 0.453554, 0.848830,
		-0.962232, 0.111242, 0.248466,
		0.018268, -0.884259, 0.466639,
		32.038544, 36.990040, 37.868164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.626171, 37.531292, 38.140804>,  <32.025753, 37.609020, 37.541515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.626171, 37.531292, 38.140804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.900492, 37.250370, 38.217171>,  <32.065083, 37.081818, 38.262989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.900492, 37.250370, 38.217171>,  <31.626171, 37.531292, 38.140804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.900492, 37.250370, 38.217171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069590, 0.324394, 0.943359,
		-0.724456, -0.633669, 0.271343,
		0.685799, -0.702305, 0.190912,
		32.106232, 37.039680, 38.274445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.314888, 37.101383, 38.761379>,  <31.626171, 37.531292, 38.140804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.314888, 37.101383, 38.761379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.711466, 37.111832, 38.710217>,  <31.949411, 37.118099, 38.679520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.711466, 37.111832, 38.710217>,  <31.314888, 37.101383, 38.761379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.711466, 37.111832, 38.710217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122012, 0.163020, 0.979049,
		0.046420, -0.986277, 0.158439,
		0.991442, 0.026116, -0.127905,
		32.008900, 37.119667, 38.671844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.558052, 36.846237, 39.462757>,  <31.314888, 37.101383, 38.761379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.558052, 36.846237, 39.462757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.914436, 36.937222, 39.305553>,  <32.128265, 36.991810, 39.211231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.914436, 36.937222, 39.305553>,  <31.558052, 36.846237, 39.462757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.914436, 36.937222, 39.305553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323321, 0.289926, 0.900781,
		0.318839, -0.929625, 0.184768,
		0.890957, 0.227465, -0.393007,
		32.181725, 37.005459, 39.187653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.091743, 36.490086, 39.818810>,  <31.558052, 36.846237, 39.462757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.091743, 36.490086, 39.818810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.234707, 36.827858, 39.659214>,  <32.320484, 37.030521, 39.563457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.234707, 36.827858, 39.659214>,  <32.091743, 36.490086, 39.818810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.234707, 36.827858, 39.659214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299305, 0.301113, 0.905399,
		0.884691, -0.443014, -0.145124,
		0.357406, 0.844435, -0.398988,
		32.341930, 37.081188, 39.539516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.735626, 36.576382, 40.112934>,  <32.091743, 36.490086, 39.818810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.735626, 36.576382, 40.112934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.620045, 36.936058, 39.981503>,  <32.550694, 37.151863, 39.902645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.620045, 36.936058, 39.981503>,  <32.735626, 36.576382, 40.112934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.620045, 36.936058, 39.981503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211306, 0.394656, 0.894201,
		0.933731, 0.188957, -0.304043,
		-0.288958, 0.899190, -0.328575,
		32.533356, 37.205814, 39.882931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.307190, 37.006649, 40.272026>,  <32.735626, 36.576382, 40.112934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.307190, 37.006649, 40.272026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.990631, 37.244675, 40.216045>,  <32.800697, 37.387489, 40.182457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.990631, 37.244675, 40.216045>,  <33.307190, 37.006649, 40.272026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.990631, 37.244675, 40.216045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271776, 0.547568, 0.791396,
		0.547568, 0.588271, -0.595068,
		-0.791396, 0.595068, -0.139953,
		32.753212, 37.423195, 40.174061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.515808, 37.700722, 40.276089>,  <33.307190, 37.006649, 40.272026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.515808, 37.700722, 40.276089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.123512, 37.740997, 40.343044>,  <32.888134, 37.765163, 40.383217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.123512, 37.740997, 40.343044>,  <33.515808, 37.700722, 40.276089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.123512, 37.740997, 40.343044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193338, 0.622581, 0.758297,
		-0.027864, 0.776051, -0.630054,
		-0.980736, 0.100684, 0.167388,
		32.829292, 37.771202, 40.393261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.341644, 38.467228, 40.409370>,  <33.515808, 37.700722, 40.276089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.341644, 38.467228, 40.409370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.023727, 38.277515, 40.560822>,  <32.832977, 38.163689, 40.651691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.023727, 38.277515, 40.560822>,  <33.341644, 38.467228, 40.409370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.023727, 38.277515, 40.560822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014519, 0.638573, 0.769425,
		-0.606703, 0.606038, -0.514421,
		-0.794796, -0.474281, 0.378625,
		32.785290, 38.135231, 40.674408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.193180, 38.968365, 40.851631>,  <33.341644, 38.467228, 40.409370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.193180, 38.968365, 40.851631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.952446, 38.662674, 40.944374>,  <32.808006, 38.479259, 41.000019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.952446, 38.662674, 40.944374>,  <33.193180, 38.968365, 40.851631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.952446, 38.662674, 40.944374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152676, 0.395062, 0.905879,
		-0.783893, 0.509788, -0.354439,
		-0.601832, -0.764226, 0.231854,
		32.771896, 38.433407, 41.013931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.547897, 39.298428, 41.140411>,  <33.193180, 38.968365, 40.851631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.547897, 39.298428, 41.140411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.641167, 38.947620, 41.308445>,  <32.697128, 38.737137, 41.409264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.641167, 38.947620, 41.308445>,  <32.547897, 39.298428, 41.140411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.641167, 38.947620, 41.308445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052317, 0.442681, 0.895152,
		-0.971027, -0.186749, 0.149105,
		0.233174, -0.877016, 0.420085,
		32.711121, 38.684517, 41.434471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.246098, 39.273148, 41.853504>,  <32.547897, 39.298428, 41.140411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.246098, 39.273148, 41.853504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.484341, 38.953060, 41.881535>,  <32.627285, 38.761009, 41.898354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.484341, 38.953060, 41.881535>,  <32.246098, 39.273148, 41.853504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.484341, 38.953060, 41.881535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059447, 0.130912, 0.989610,
		-0.801075, -0.585251, 0.125542,
		0.595605, -0.800215, 0.070079,
		32.663021, 38.712997, 41.902557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.019623, 38.853897, 42.325817>,  <32.246098, 39.273148, 41.853504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.019623, 38.853897, 42.325817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.390236, 38.703407, 42.326019>,  <32.612602, 38.613113, 42.326141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.390236, 38.703407, 42.326019>,  <32.019623, 38.853897, 42.325817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.390236, 38.703407, 42.326019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048328, 0.120347, 0.991555,
		-0.373109, -0.918679, 0.129687,
		0.926528, -0.376226, 0.000504,
		32.668194, 38.590538, 42.326172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.047684, 38.131218, 42.619789>,  <32.019623, 38.853897, 42.325817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.047684, 38.131218, 42.619789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.423252, 38.257355, 42.674904>,  <32.648594, 38.333038, 42.707973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.423252, 38.257355, 42.674904>,  <32.047684, 38.131218, 42.619789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.423252, 38.257355, 42.674904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091216, -0.158022, 0.983214,
		0.331827, -0.935727, -0.119605,
		0.938920, 0.315347, 0.137789,
		32.704929, 38.351959, 42.716240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.308655, 37.677517, 42.995480>,  <32.047684, 38.131218, 42.619789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.308655, 37.677517, 42.995480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.556324, 37.985615, 43.056610>,  <32.704926, 38.170471, 43.093288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.556324, 37.985615, 43.056610>,  <32.308655, 37.677517, 42.995480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.556324, 37.985615, 43.056610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024910, -0.213788, 0.976562,
		0.784860, -0.600853, -0.151558,
		0.619172, 0.770240, 0.152827,
		32.742077, 38.216686, 43.102459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.050671, 37.442009, 43.285652>,  <32.308655, 37.677517, 42.995480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.050671, 37.442009, 43.285652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.959705, 37.817131, 43.390579>,  <32.905125, 38.042202, 43.453537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.959705, 37.817131, 43.390579>,  <33.050671, 37.442009, 43.285652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.959705, 37.817131, 43.390579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095866, -0.246505, 0.964388,
		0.969068, 0.244461, -0.033845,
		-0.227412, 0.937803, 0.262316,
		32.891483, 38.098473, 43.469273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.415325, 37.614189, 43.814415>,  <33.050671, 37.442009, 43.285652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.415325, 37.614189, 43.814415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.168499, 37.927616, 43.843414>,  <33.020401, 38.115673, 43.860813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.168499, 37.927616, 43.843414>,  <33.415325, 37.614189, 43.814415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.168499, 37.927616, 43.843414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162542, 0.036778, 0.986016,
		0.769940, 0.620223, -0.150056,
		-0.617068, 0.783563, 0.072495,
		32.983379, 38.162685, 43.865162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.748661, 37.941933, 44.184753>,  <33.415325, 37.614189, 43.814415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.748661, 37.941933, 44.184753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.388451, 38.107075, 44.239323>,  <33.172325, 38.206161, 44.272064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.388451, 38.107075, 44.239323>,  <33.748661, 37.941933, 44.184753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.388451, 38.107075, 44.239323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160044, 0.022998, 0.986842,
		0.404286, 0.910506, -0.086785,
		-0.900521, 0.412856, 0.136423,
		33.118294, 38.230930, 44.280251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.819641, 38.580074, 44.590458>,  <33.748661, 37.941933, 44.184753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.819641, 38.580074, 44.590458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.443726, 38.456532, 44.648987>,  <33.218178, 38.382404, 44.684105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.443726, 38.456532, 44.648987>,  <33.819641, 38.580074, 44.590458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.443726, 38.456532, 44.648987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123844, 0.091280, 0.988094,
		-0.318540, 0.946717, -0.047533,
		-0.939784, -0.308861, 0.146321,
		33.161789, 38.363873, 44.692883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.601646, 38.954544, 45.190399>,  <33.819641, 38.580074, 44.590458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.601646, 38.954544, 45.190399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.313789, 38.679863, 45.149315>,  <33.141075, 38.515053, 45.124664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.313789, 38.679863, 45.149315>,  <33.601646, 38.954544, 45.190399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.313789, 38.679863, 45.149315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106773, -0.036715, 0.993605,
		-0.686086, 0.726007, -0.046900,
		-0.719643, -0.686707, -0.102707,
		33.097897, 38.473850, 45.118504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.068348, 39.248070, 45.533783>,  <33.601646, 38.954544, 45.190399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.068348, 39.248070, 45.533783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.971905, 38.859898, 45.529095>,  <32.914040, 38.626995, 45.526283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.971905, 38.859898, 45.529095>,  <33.068348, 39.248070, 45.533783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.971905, 38.859898, 45.529095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284749, 0.059194, 0.956773,
		-0.927784, 0.234024, -0.290601,
		-0.241110, -0.970427, -0.011719,
		32.899570, 38.568771, 45.525578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.503716, 39.138222, 45.880699>,  <33.068348, 39.248070, 45.533783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.503716, 39.138222, 45.880699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.673931, 38.776302, 45.887032>,  <32.776058, 38.559151, 45.890831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.673931, 38.776302, 45.887032>,  <32.503716, 39.138222, 45.880699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.673931, 38.776302, 45.887032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176937, -0.066031, 0.982005,
		-0.887476, -0.420679, -0.188192,
		0.425535, -0.904804, 0.015833,
		32.801590, 38.504860, 45.891781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.122719, 38.802280, 46.302696>,  <32.503716, 39.138222, 45.880699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.122719, 38.802280, 46.302696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.441277, 38.560654, 46.290932>,  <32.632412, 38.415680, 46.283875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.441277, 38.560654, 46.290932>,  <32.122719, 38.802280, 46.302696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.441277, 38.560654, 46.290932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014711, -0.067967, 0.997579,
		-0.604601, -0.794032, -0.063015,
		0.796393, -0.604064, -0.029412,
		32.680195, 38.379433, 46.282108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.955248, 38.316956, 46.741184>,  <32.122719, 38.802280, 46.302696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.955248, 38.316956, 46.741184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.354416, 38.303474, 46.719208>,  <32.593918, 38.295387, 46.706020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.354416, 38.303474, 46.719208>,  <31.955248, 38.316956, 46.741184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.354416, 38.303474, 46.719208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047910, -0.182382, 0.982060,
		-0.043115, -0.982650, -0.180389,
		0.997921, -0.033699, -0.054943,
		32.653793, 38.293365, 46.702724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.188763, 37.769184, 47.153957>,  <31.955248, 38.316956, 46.741184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.188763, 37.769184, 47.153957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.520580, 37.984612, 47.094894>,  <32.719669, 38.113869, 47.059456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.520580, 37.984612, 47.094894>,  <32.188763, 37.769184, 47.153957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.520580, 37.984612, 47.094894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177622, -0.003788, 0.984091,
		0.529444, -0.842571, -0.098805,
		0.829541, 0.538572, -0.147654,
		32.769444, 38.146183, 47.050598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.697273, 37.351746, 47.450771>,  <32.188763, 37.769184, 47.153957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.697273, 37.351746, 47.450771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.827827, 37.729813, 47.446236>,  <32.906162, 37.956654, 47.443516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.827827, 37.729813, 47.446236>,  <32.697273, 37.351746, 47.450771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.827827, 37.729813, 47.446236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277997, -0.084522, 0.956856,
		0.903432, -0.315458, -0.290340,
		0.326388, 0.945168, -0.011336,
		32.925743, 38.013363, 47.442833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.437057, 37.340034, 47.774940>,  <32.697273, 37.351746, 47.450771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.437057, 37.340034, 47.774940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.248886, 37.692860, 47.785240>,  <33.135983, 37.904552, 47.791420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.248886, 37.692860, 47.785240>,  <33.437057, 37.340034, 47.774940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.248886, 37.692860, 47.785240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012453, -0.022545, 0.999668,
		0.882348, 0.470597, -0.000379,
		-0.470432, 0.882061, 0.025753,
		33.107758, 37.957478, 47.792965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.690460, 37.711098, 48.426785>,  <33.437057, 37.340034, 47.774940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.690460, 37.711098, 48.426785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.350327, 37.886669, 48.310665>,  <33.146248, 37.992012, 48.240993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.350327, 37.886669, 48.310665>,  <33.690460, 37.711098, 48.426785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.350327, 37.886669, 48.310665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213472, 0.216515, 0.952655,
		0.481005, 0.872044, -0.090410,
		-0.850332, 0.438932, -0.290301,
		33.095226, 38.018349, 48.223576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.582630, 38.329678, 48.881554>,  <33.690460, 37.711098, 48.426785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.582630, 38.329678, 48.881554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.216331, 38.262150, 48.735722>,  <32.996552, 38.221634, 48.648224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.216331, 38.262150, 48.735722>,  <33.582630, 38.329678, 48.881554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.216331, 38.262150, 48.735722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377623, 0.051852, 0.924506,
		-0.137168, 0.984283, -0.111232,
		-0.915743, -0.168816, -0.364576,
		32.941608, 38.211506, 48.626350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.139118, 38.753529, 49.251556>,  <33.582630, 38.329678, 48.881554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.139118, 38.753529, 49.251556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.883652, 38.485840, 49.099640>,  <32.730373, 38.325226, 49.008492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.883652, 38.485840, 49.099640>,  <33.139118, 38.753529, 49.251556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.883652, 38.485840, 49.099640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489378, -0.027628, 0.871634,
		-0.593812, 0.742546, -0.309859,
		-0.638667, -0.669225, -0.379792,
		32.692051, 38.285072, 48.985703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.558270, 39.021790, 49.550343>,  <33.139118, 38.753529, 49.251556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.558270, 39.021790, 49.550343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.479214, 38.642036, 49.452675>,  <32.431778, 38.414185, 49.394073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.479214, 38.642036, 49.452675>,  <32.558270, 39.021790, 49.550343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.479214, 38.642036, 49.452675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375563, -0.156740, 0.913447,
		-0.905478, 0.272235, -0.325573,
		-0.197642, -0.949379, -0.244166,
		32.419922, 38.357224, 49.379425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.893684, 38.857895, 49.793957>,  <32.558270, 39.021790, 49.550343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.893684, 38.857895, 49.793957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.067207, 38.497810, 49.778862>,  <32.171322, 38.281757, 49.769806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.067207, 38.497810, 49.778862>,  <31.893684, 38.857895, 49.793957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.067207, 38.497810, 49.778862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285153, -0.176900, 0.942016,
		-0.854693, -0.397892, -0.333439,
		0.433807, -0.900216, -0.037735,
		32.197350, 38.227745, 49.767540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.376522, 38.390343, 50.107964>,  <31.893684, 38.857895, 49.793957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.376522, 38.390343, 50.107964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.749449, 38.248226, 50.134964>,  <31.973206, 38.162956, 50.151165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.749449, 38.248226, 50.134964>,  <31.376522, 38.390343, 50.107964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.749449, 38.248226, 50.134964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124732, -0.140725, 0.982160,
		-0.339450, -0.924104, -0.175516,
		0.932317, -0.355287, 0.067497,
		32.029144, 38.141640, 50.155212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.346436, 37.813316, 50.573799>,  <31.376522, 38.390343, 50.107964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.346436, 37.813316, 50.573799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.737825, 37.895172, 50.563156>,  <31.972660, 37.944286, 50.556770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.737825, 37.895172, 50.563156>,  <31.346436, 37.813316, 50.573799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.737825, 37.895172, 50.563156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075000, -0.232527, 0.969694,
		0.192253, -0.950817, -0.242870,
		0.978475, 0.204642, -0.026608,
		32.031368, 37.956566, 50.555172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.623127, 37.424931, 51.083866>,  <31.346436, 37.813316, 50.573799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.623127, 37.424931, 51.083866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.949039, 37.641975, 51.002174>,  <32.144588, 37.772202, 50.953159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.949039, 37.641975, 51.002174>,  <31.623127, 37.424931, 51.083866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.949039, 37.641975, 51.002174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311752, -0.113041, 0.943415,
		0.488819, -0.832345, -0.261263,
		0.814780, 0.542608, -0.204228,
		32.193474, 37.804756, 50.940907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.151901, 36.999573, 51.274014>,  <31.623127, 37.424931, 51.083866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.151901, 36.999573, 51.274014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.268021, 37.382217, 51.283966>,  <32.337692, 37.611805, 51.289940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.268021, 37.382217, 51.283966>,  <32.151901, 36.999573, 51.274014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.268021, 37.382217, 51.283966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371106, -0.136513, 0.918501,
		0.882047, -0.257405, -0.394634,
		0.290299, 0.956612, 0.024886,
		32.355110, 37.669201, 51.291431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.758408, 36.979382, 51.603779>,  <32.151901, 36.999573, 51.274014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.758408, 36.979382, 51.603779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.669010, 37.367561, 51.640160>,  <32.615372, 37.600471, 51.661987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.669010, 37.367561, 51.640160>,  <32.758408, 36.979382, 51.603779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.669010, 37.367561, 51.640160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467364, 0.024810, 0.883717,
		0.855350, 0.240009, -0.459100,
		-0.223490, 0.970454, 0.090951,
		32.601963, 37.658699, 51.667446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.340328, 37.353642, 51.928631>,  <32.758408, 36.979382, 51.603779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.340328, 37.353642, 51.928631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.014751, 37.571342, 52.009914>,  <32.819405, 37.701962, 52.058685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.014751, 37.571342, 52.009914>,  <33.340328, 37.353642, 51.928631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.014751, 37.571342, 52.009914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309185, 0.109680, 0.944656,
		0.491841, 0.831722, -0.257546,
		-0.813939, 0.544250, 0.203211,
		32.770569, 37.734619, 52.070877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.580257, 37.756626, 52.485073>,  <33.340328, 37.353642, 51.928631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.580257, 37.756626, 52.485073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.187012, 37.827244, 52.465824>,  <32.951065, 37.869614, 52.454273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.187012, 37.827244, 52.465824>,  <33.580257, 37.756626, 52.485073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.187012, 37.827244, 52.465824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020635, 0.154361, 0.987799,
		0.181821, 0.972113, -0.148112,
		-0.983115, 0.176547, -0.048125,
		32.892078, 37.880207, 52.451385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.497223, 38.381744, 52.777023>,  <33.580257, 37.756626, 52.485073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.497223, 38.381744, 52.777023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.154930, 38.176418, 52.803051>,  <32.949554, 38.053223, 52.818668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.154930, 38.176418, 52.803051>,  <33.497223, 38.381744, 52.777023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.154930, 38.176418, 52.803051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010982, 0.107712, 0.994121,
		-0.517310, 0.851412, -0.086535,
		-0.855728, -0.513318, 0.065071,
		32.898212, 38.022423, 52.822571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.155228, 38.643658, 53.353367>,  <33.497223, 38.381744, 52.777023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.155228, 38.643658, 53.353367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.953354, 38.301994, 53.303246>,  <32.832230, 38.096996, 53.273174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.953354, 38.301994, 53.303246>,  <33.155228, 38.643658, 53.353367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.953354, 38.301994, 53.303246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149240, -0.056633, 0.987178,
		-0.850305, 0.516915, -0.098893,
		-0.504686, -0.854162, -0.125300,
		32.801949, 38.045746, 53.265656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.599243, 38.646355, 53.720383>,  <33.155228, 38.643658, 53.353367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.599243, 38.646355, 53.720383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.665455, 38.253273, 53.687199>,  <32.705181, 38.017422, 53.667290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.665455, 38.253273, 53.687199>,  <32.599243, 38.646355, 53.720383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.665455, 38.253273, 53.687199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256456, -0.124121, 0.958553,
		-0.952276, -0.137397, -0.272568,
		0.165534, -0.982709, -0.082961,
		32.715115, 37.958462, 53.662312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.158272, 38.380028, 54.164566>,  <32.599243, 38.646355, 53.720383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.158272, 38.380028, 54.164566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.381821, 38.060272, 54.076351>,  <32.515949, 37.868420, 54.023422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.381821, 38.060272, 54.076351>,  <32.158272, 38.380028, 54.164566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.381821, 38.060272, 54.076351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181946, -0.377669, 0.907889,
		-0.809050, -0.467264, -0.356513,
		0.558868, -0.799394, -0.220537,
		32.549480, 37.820454, 54.010189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.854589, 37.702168, 54.328335>,  <32.158272, 38.380028, 54.164566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.854589, 37.702168, 54.328335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.231968, 37.590961, 54.400578>,  <32.458393, 37.524239, 54.443924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.231968, 37.590961, 54.400578>,  <31.854589, 37.702168, 54.328335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.231968, 37.590961, 54.400578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321371, -0.633084, 0.704220,
		-0.081444, -0.722435, -0.686626,
		0.943445, -0.278016, 0.180608,
		32.514999, 37.507557, 54.454762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.958504, 37.034752, 54.166340>,  <31.854589, 37.702168, 54.328335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.958504, 37.034752, 54.166340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.205570, 37.152317, 54.458122>,  <32.353809, 37.222855, 54.633190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.205570, 37.152317, 54.458122>,  <31.958504, 37.034752, 54.166340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.205570, 37.152317, 54.458122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368037, -0.711678, 0.598384,
		0.695010, -0.638067, -0.331408,
		0.617665, 0.293912, 0.729455,
		32.390869, 37.240490, 54.676960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.173088, 36.459347, 54.424671>,  <31.958504, 37.034752, 54.166340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.173088, 36.459347, 54.424671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.236473, 36.729702, 54.712578>,  <32.274506, 36.891914, 54.885323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.236473, 36.729702, 54.712578>,  <32.173088, 36.459347, 54.424671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.236473, 36.729702, 54.712578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280739, -0.668047, 0.689129,
		0.946613, -0.311268, 0.083888,
		0.158462, 0.675888, 0.719767,
		32.284012, 36.932468, 54.928509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.994450, 36.338573, 55.097404>,  <32.173088, 36.459347, 54.424671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.994450, 36.338573, 55.097404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.934368, 36.062134, 55.380196>,  <31.898319, 35.896271, 55.549870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.934368, 36.062134, 55.380196>,  <31.994450, 36.338573, 55.097404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.934368, 36.062134, 55.380196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967033, -0.251436, -0.040332,
		0.205634, 0.677615, 0.706083,
		-0.150205, -0.691099, 0.706980,
		31.889307, 35.854805, 55.592289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.404560, 36.410954, 55.846500>,  <31.994450, 36.338573, 55.097404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.404560, 36.410954, 55.846500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.310863, 36.039112, 55.732674>,  <32.254646, 35.816010, 55.664379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.310863, 36.039112, 55.732674>,  <32.404560, 36.410954, 55.846500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.310863, 36.039112, 55.732674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968462, -0.197558, -0.151828,
		0.084922, -0.311153, 0.946558,
		-0.234242, -0.929599, -0.284563,
		32.240589, 35.760231, 55.647305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.836018, 35.863651, 56.250286>,  <32.404560, 36.410954, 55.846500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.836018, 35.863651, 56.250286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.698627, 35.752811, 55.891346>,  <32.616192, 35.686306, 55.675983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.698627, 35.752811, 55.891346>,  <32.836018, 35.863651, 56.250286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.698627, 35.752811, 55.891346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939139, -0.107974, -0.326127,
		-0.006520, -0.954755, 0.297323,
		-0.343475, -0.277102, -0.897351,
		32.595585, 35.669682, 55.622139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.548412, 36.052094, 56.170647>,  <32.836018, 35.863651, 56.250286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.548412, 36.052094, 56.170647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.811825, 35.752941, 56.204151>,  <33.969872, 35.573452, 56.224255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.811825, 35.752941, 56.204151>,  <33.548412, 36.052094, 56.170647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.811825, 35.752941, 56.204151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453697, -0.483346, -0.748689,
		0.600412, 0.455034, -0.657609,
		0.658532, -0.747877, 0.083759,
		34.009384, 35.528580, 56.229279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.944477, 35.887321, 55.578697>,  <33.548412, 36.052094, 56.170647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.944477, 35.887321, 55.578697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.879070, 35.569523, 55.812630>,  <33.839825, 35.378841, 55.952991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.879070, 35.569523, 55.812630>,  <33.944477, 35.887321, 55.578697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.879070, 35.569523, 55.812630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417347, -0.481445, -0.770735,
		0.893915, -0.370107, -0.252858,
		-0.163517, -0.794501, 0.584834,
		33.830013, 35.331173, 55.988079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.113834, 35.363365, 55.153839>,  <33.944477, 35.887321, 55.578697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.113834, 35.363365, 55.153839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.808849, 35.256657, 55.389629>,  <33.625858, 35.192631, 55.531105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.808849, 35.256657, 55.389629>,  <34.113834, 35.363365, 55.153839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.808849, 35.256657, 55.389629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508497, -0.316304, -0.800864,
		0.400101, -0.910376, 0.105518,
		-0.762463, -0.266771, 0.589477,
		33.580109, 35.176624, 55.566471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.953255, 34.663132, 55.196426>,  <34.113834, 35.363365, 55.153839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.953255, 34.663132, 55.196426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.612530, 34.869221, 55.234303>,  <33.408096, 34.992874, 55.257027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.612530, 34.869221, 55.234303>,  <33.953255, 34.663132, 55.196426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.612530, 34.869221, 55.234303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350865, -0.426897, -0.833458,
		-0.388994, -0.743171, 0.544409,
		-0.851808, 0.515224, 0.094692,
		33.356987, 35.023788, 55.262711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.257500, 34.211441, 55.104568>,  <33.953255, 34.663132, 55.196426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.257500, 34.211441, 55.104568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.330284, 34.584293, 54.979328>,  <33.373955, 34.808002, 54.904186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.330284, 34.584293, 54.979328>,  <33.257500, 34.211441, 55.104568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.330284, 34.584293, 54.979328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031623, -0.312701, -0.949326,
		-0.982797, 0.182640, -0.027423,
		0.181960, 0.932127, -0.313097,
		33.384872, 34.863930, 54.885399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.716202, 34.382553, 54.604961>,  <33.257500, 34.211441, 55.104568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.716202, 34.382553, 54.604961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.013451, 34.644039, 54.547798>,  <33.191799, 34.800930, 54.513500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.013451, 34.644039, 54.547798>,  <32.716202, 34.382553, 54.604961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.013451, 34.644039, 54.547798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016973, -0.231907, -0.972590,
		-0.668939, 0.720329, -0.183431,
		0.743124, 0.653717, -0.142905,
		33.236389, 34.840153, 54.504925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.546608, 34.598793, 53.983082>,  <32.716202, 34.382553, 54.604961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.546608, 34.598793, 53.983082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.914902, 34.753387, 54.004547>,  <33.135880, 34.846142, 54.017426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.914902, 34.753387, 54.004547>,  <32.546608, 34.598793, 53.983082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.914902, 34.753387, 54.004547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089877, -0.076232, -0.993031,
		-0.379699, 0.919141, -0.104925,
		0.920734, 0.386483, 0.053664,
		33.191120, 34.869331, 54.020645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.560181, 35.182915, 53.501675>,  <32.546608, 34.598793, 53.983082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.560181, 35.182915, 53.501675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.931812, 35.042469, 53.548195>,  <33.154793, 34.958202, 53.576107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.931812, 35.042469, 53.548195>,  <32.560181, 35.182915, 53.501675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.931812, 35.042469, 53.548195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078314, -0.120575, -0.989610,
		0.361488, 0.928537, -0.084527,
		0.929082, -0.351113, 0.116304,
		33.210537, 34.937134, 53.583088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.917049, 35.520832, 52.943718>,  <32.560181, 35.182915, 53.501675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.917049, 35.520832, 52.943718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.115891, 35.199963, 53.076023>,  <33.235195, 35.007442, 53.155407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.115891, 35.199963, 53.076023>,  <32.917049, 35.520832, 52.943718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.115891, 35.199963, 53.076023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396619, -0.128979, -0.908877,
		0.771739, 0.582994, 0.254042,
		0.497104, -0.802174, 0.330765,
		33.265022, 34.959309, 53.175251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.523441, 35.643124, 52.696495>,  <32.917049, 35.520832, 52.943718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.523441, 35.643124, 52.696495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.544064, 35.251347, 52.774509>,  <33.556435, 35.016281, 52.821320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.544064, 35.251347, 52.774509>,  <33.523441, 35.643124, 52.696495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.544064, 35.251347, 52.774509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443890, -0.152473, -0.883014,
		0.894597, 0.132096, 0.426903,
		0.051552, -0.979440, 0.195038,
		33.559528, 34.957516, 52.833019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.203953, 35.339588, 52.463840>,  <33.523441, 35.643124, 52.696495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.203953, 35.339588, 52.463840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.955620, 35.026024, 52.460972>,  <33.806622, 34.837883, 52.459251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.955620, 35.026024, 52.460972>,  <34.203953, 35.339588, 52.463840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.955620, 35.026024, 52.460972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183747, -0.136618, -0.973433,
		0.762108, -0.605653, 0.228858,
		-0.620828, -0.783913, -0.007169,
		33.769371, 34.790852, 52.458820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.587986, 34.844269, 52.180649>,  <34.203953, 35.339588, 52.463840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.587986, 34.844269, 52.180649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.210716, 34.727962, 52.116314>,  <33.984352, 34.658180, 52.077713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.210716, 34.727962, 52.116314>,  <34.587986, 34.844269, 52.180649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.210716, 34.727962, 52.116314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274996, -0.411319, -0.869019,
		0.186526, -0.863870, 0.467907,
		-0.943178, -0.290767, -0.160839,
		33.927761, 34.640732, 52.068062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.652466, 34.136726, 51.793777>,  <34.587986, 34.844269, 52.180649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.652466, 34.136726, 51.793777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.271339, 34.248135, 51.745495>,  <34.042664, 34.314980, 51.716526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.271339, 34.248135, 51.745495>,  <34.652466, 34.136726, 51.793777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.271339, 34.248135, 51.745495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013712, -0.357754, -0.933715,
		-0.303239, -0.891314, 0.337055,
		-0.952816, 0.278517, -0.120707,
		33.985497, 34.331692, 51.709282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.312550, 33.640591, 51.326191>,  <34.652466, 34.136726, 51.793777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.312550, 33.640591, 51.326191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.063900, 33.952095, 51.292446>,  <33.914711, 34.138996, 51.272198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.063900, 33.952095, 51.292446>,  <34.312550, 33.640591, 51.326191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.063900, 33.952095, 51.292446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190265, -0.254589, -0.948148,
		-0.759854, -0.573344, 0.306429,
		-0.621628, 0.778757, -0.084363,
		33.877411, 34.185722, 51.267136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.704285, 33.349365, 50.870838>,  <34.312550, 33.640591, 51.326191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.704285, 33.349365, 50.870838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.706570, 33.748547, 50.845364>,  <33.707943, 33.988056, 50.830078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.706570, 33.748547, 50.845364>,  <33.704285, 33.349365, 50.870838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.706570, 33.748547, 50.845364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176870, -0.061675, -0.982300,
		-0.984218, 0.016880, 0.176155,
		0.005717, 0.997954, -0.063687,
		33.708286, 34.047932, 50.826256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.050968, 33.563377, 50.583138>,  <33.704285, 33.349365, 50.870838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.050968, 33.563377, 50.583138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.273251, 33.886059, 50.502720>,  <33.406620, 34.079666, 50.454468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.273251, 33.886059, 50.502720>,  <33.050968, 33.563377, 50.583138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.273251, 33.886059, 50.502720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166824, -0.128703, -0.977551,
		-0.814468, 0.576772, 0.063056,
		0.555709, 0.806703, -0.201044,
		33.439964, 34.128071, 50.442406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.653942, 33.956131, 50.110737>,  <33.050968, 33.563377, 50.583138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.653942, 33.956131, 50.110737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.025887, 34.093342, 50.057545>,  <33.249054, 34.175667, 50.025627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.025887, 34.093342, 50.057545>,  <32.653942, 33.956131, 50.110737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.025887, 34.093342, 50.057545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106068, -0.096162, -0.989698,
		-0.352280, 0.934391, -0.053034,
		0.929865, 0.343026, -0.132985,
		33.304848, 34.196251, 50.017651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.621368, 34.551781, 49.680386>,  <32.653942, 33.956131, 50.110737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.621368, 34.551781, 49.680386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.000687, 34.442577, 49.615650>,  <33.228279, 34.377056, 49.576809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.000687, 34.442577, 49.615650>,  <32.621368, 34.551781, 49.680386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.000687, 34.442577, 49.615650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113340, 0.184998, -0.976181,
		0.296448, 0.944055, 0.144491,
		0.948300, -0.273010, -0.161842,
		33.285175, 34.360676, 49.567097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.999256, 35.056702, 49.160015>,  <32.621368, 34.551781, 49.680386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.999256, 35.056702, 49.160015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.191601, 34.707397, 49.128551>,  <33.307007, 34.497814, 49.109673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.191601, 34.707397, 49.128551>,  <32.999256, 35.056702, 49.160015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.191601, 34.707397, 49.128551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094626, 0.037502, -0.994806,
		0.871675, 0.485808, -0.064600,
		0.480862, -0.873261, -0.078659,
		33.335861, 34.445419, 49.104954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.283894, 35.165947, 48.539658>,  <32.999256, 35.056702, 49.160015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.283894, 35.165947, 48.539658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.326485, 34.776028, 48.618076>,  <33.352039, 34.542076, 48.665127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.326485, 34.776028, 48.618076>,  <33.283894, 35.165947, 48.539658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.326485, 34.776028, 48.618076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215629, -0.215115, -0.952486,
		0.970653, 0.059147, -0.233100,
		0.106480, -0.974796, 0.196048,
		33.358429, 34.483589, 48.676891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.711178, 34.918388, 48.022614>,  <33.283894, 35.165947, 48.539658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.711178, 34.918388, 48.022614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.554306, 34.574165, 48.152622>,  <33.460182, 34.367630, 48.230625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.554306, 34.574165, 48.152622>,  <33.711178, 34.918388, 48.022614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.554306, 34.574165, 48.152622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011530, -0.348696, -0.937165,
		0.919816, -0.371286, 0.126830,
		-0.392181, -0.860557, 0.325017,
		33.436653, 34.315998, 48.250126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.161884, 34.384747, 47.762581>,  <33.711178, 34.918388, 48.022614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.161884, 34.384747, 47.762581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.798084, 34.237610, 47.840034>,  <33.579803, 34.149326, 47.886509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.798084, 34.237610, 47.840034>,  <34.161884, 34.384747, 47.762581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.798084, 34.237610, 47.840034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126222, -0.199449, -0.971745,
		0.396074, -0.908245, 0.134969,
		-0.909502, -0.367846, 0.193637,
		33.525234, 34.127254, 47.898125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.936043, 33.852440, 47.281082>,  <34.161884, 34.384747, 47.762581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.936043, 33.852440, 47.281082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.567417, 33.884392, 47.433056>,  <33.346241, 33.903564, 47.524239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.567417, 33.884392, 47.433056>,  <33.936043, 33.852440, 47.281082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.567417, 33.884392, 47.433056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388103, -0.215268, -0.896123,
		0.010207, -0.973283, 0.229383,
		-0.921560, 0.079877, 0.379931,
		33.290951, 33.908356, 47.547035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.673405, 33.262280, 46.989532>,  <33.936043, 33.852440, 47.281082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.673405, 33.262280, 46.989532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.378101, 33.514503, 47.085339>,  <33.200920, 33.665836, 47.142822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.378101, 33.514503, 47.085339>,  <33.673405, 33.262280, 46.989532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.378101, 33.514503, 47.085339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314957, -0.008259, -0.949070,
		-0.596465, -0.776099, 0.204696,
		-0.738263, 0.630558, 0.239511,
		33.156624, 33.703671, 47.157192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.948101, 32.943108, 46.685406>,  <33.673405, 33.262280, 46.989532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.948101, 32.943108, 46.685406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.906719, 33.338345, 46.730976>,  <32.881889, 33.575485, 46.758320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.906719, 33.338345, 46.730976>,  <32.948101, 32.943108, 46.685406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.906719, 33.338345, 46.730976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517570, 0.044332, -0.854492,
		-0.849363, -0.147369, 0.506818,
		-0.103457, 0.988087, 0.113927,
		32.875683, 33.634769, 46.765156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.266636, 33.123665, 46.472145>,  <32.948101, 32.943108, 46.685406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.266636, 33.123665, 46.472145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.389587, 33.503769, 46.452019>,  <32.463360, 33.731831, 46.439941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.389587, 33.503769, 46.452019>,  <32.266636, 33.123665, 46.472145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.389587, 33.503769, 46.452019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538608, 0.130146, -0.832444,
		-0.784487, 0.282974, 0.551820,
		0.307377, 0.950257, -0.050315,
		32.481800, 33.788845, 46.436924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.693718, 33.444485, 46.274925>,  <32.266636, 33.123665, 46.472145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.693718, 33.444485, 46.274925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.010017, 33.675804, 46.194645>,  <32.199799, 33.814598, 46.146477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.010017, 33.675804, 46.194645>,  <31.693718, 33.444485, 46.274925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.010017, 33.675804, 46.194645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449513, 0.326019, -0.831655,
		-0.415516, 0.747849, 0.517754,
		0.790750, 0.578303, -0.200702,
		32.247242, 33.849297, 46.134434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.404009, 34.022362, 46.068260>,  <31.693718, 33.444485, 46.274925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.404009, 34.022362, 46.068260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.777454, 34.042881, 45.926422>,  <32.001522, 34.055191, 45.841320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.777454, 34.042881, 45.926422>,  <31.404009, 34.022362, 46.068260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.777454, 34.042881, 45.926422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340708, 0.433287, -0.834374,
		0.110841, 0.899795, 0.422000,
		0.933613, 0.051296, -0.354593,
		32.057537, 34.058270, 45.820045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.395668, 34.657738, 45.682991>,  <31.404009, 34.022362, 46.068260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.395668, 34.657738, 45.682991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.725239, 34.476322, 45.547081>,  <31.922981, 34.367474, 45.465534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.725239, 34.476322, 45.547081>,  <31.395668, 34.657738, 45.682991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.725239, 34.476322, 45.547081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162911, 0.384694, -0.908554,
		0.542775, 0.803935, 0.243072,
		0.823927, -0.453541, -0.339772,
		31.972416, 34.340260, 45.445148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.833651, 35.154568, 45.276436>,  <31.395668, 34.657738, 45.682991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.833651, 35.154568, 45.276436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.965252, 34.796154, 45.157188>,  <32.044212, 34.581104, 45.085640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.965252, 34.796154, 45.157188>,  <31.833651, 35.154568, 45.276436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.965252, 34.796154, 45.157188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069770, 0.291769, -0.953941,
		0.941748, 0.334649, 0.033476,
		0.329003, -0.896036, -0.298121,
		32.063953, 34.527344, 45.067753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.421379, 35.215931, 44.925617>,  <31.833651, 35.154568, 45.276436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.421379, 35.215931, 44.925617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.278584, 34.864243, 44.799427>,  <32.192905, 34.653229, 44.723713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.278584, 34.864243, 44.799427>,  <32.421379, 35.215931, 44.925617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.278584, 34.864243, 44.799427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006913, 0.335230, -0.942111,
		0.934084, -0.338502, -0.113594,
		-0.356986, -0.879226, -0.315473,
		32.171486, 34.600475, 44.704784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.799587, 35.074036, 44.382004>,  <32.421379, 35.215931, 44.925617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.799587, 35.074036, 44.382004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.485474, 34.832764, 44.326130>,  <32.297005, 34.688000, 44.292606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.485474, 34.832764, 44.326130>,  <32.799587, 35.074036, 44.382004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.485474, 34.832764, 44.326130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088842, 0.113497, -0.989558,
		0.612732, -0.789492, -0.035540,
		-0.785281, -0.603176, -0.139684,
		32.249889, 34.651810, 44.284225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.034573, 34.573433, 43.943047>,  <32.799587, 35.074036, 44.382004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.034573, 34.573433, 43.943047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.638462, 34.595882, 43.892132>,  <32.400795, 34.609352, 43.861584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.638462, 34.595882, 43.892132>,  <33.034573, 34.573433, 43.943047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.638462, 34.595882, 43.892132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126706, -0.013846, -0.991844,
		-0.057431, -0.998328, 0.006600,
		-0.990276, 0.056127, -0.127290,
		32.341377, 34.612717, 43.853947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.984592, 34.247204, 43.350815>,  <33.034573, 34.573433, 43.943047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.984592, 34.247204, 43.350815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.605473, 34.372520, 43.374542>,  <32.377998, 34.447708, 43.388779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.605473, 34.372520, 43.374542>,  <32.984592, 34.247204, 43.350815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.605473, 34.372520, 43.374542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097150, -0.106537, -0.989551,
		-0.303695, -0.943663, 0.131412,
		-0.947804, 0.313288, 0.059322,
		32.321133, 34.466507, 43.392338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.703415, 33.821404, 42.805847>,  <32.984592, 34.247204, 43.350815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.703415, 33.821404, 42.805847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.458733, 34.131901, 42.866859>,  <32.311924, 34.318199, 42.903465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.458733, 34.131901, 42.866859>,  <32.703415, 33.821404, 42.805847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.458733, 34.131901, 42.866859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157868, 0.069151, -0.985036,
		-0.775173, -0.626633, 0.080243,
		-0.611707, 0.776241, 0.152529,
		32.275219, 34.364773, 42.912617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.046711, 33.715866, 42.576183>,  <32.703415, 33.821404, 42.805847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.046711, 33.715866, 42.576183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.095192, 34.112885, 42.571220>,  <32.124279, 34.351097, 42.568245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.095192, 34.112885, 42.571220>,  <32.046711, 33.715866, 42.576183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.095192, 34.112885, 42.571220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314142, 0.026501, -0.949006,
		-0.941607, 0.118919, 0.315014,
		0.121203, 0.992550, -0.012404,
		32.131554, 34.410648, 42.567501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.601166, 33.923477, 42.079639>,  <32.046711, 33.715866, 42.576183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.601166, 33.923477, 42.079639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.805037, 34.263718, 42.131344>,  <31.927359, 34.467861, 42.162365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.805037, 34.263718, 42.131344>,  <31.601166, 33.923477, 42.079639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.805037, 34.263718, 42.131344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004409, 0.147652, -0.989030,
		-0.860355, 0.504655, 0.071504,
		0.509677, 0.850601, 0.129258,
		31.957939, 34.518898, 42.170120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.329374, 34.428307, 41.574448>,  <31.601166, 33.923477, 42.079639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.329374, 34.428307, 41.574448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.683170, 34.585796, 41.674576>,  <31.895449, 34.680290, 41.734653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.683170, 34.585796, 41.674576>,  <31.329374, 34.428307, 41.574448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.683170, 34.585796, 41.674576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126227, 0.314574, -0.940803,
		-0.449160, 0.863727, 0.228539,
		0.884490, 0.393723, 0.250320,
		31.948517, 34.703915, 41.749672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.323324, 35.033798, 41.288521>,  <31.329374, 34.428307, 41.574448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.323324, 35.033798, 41.288521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.716742, 34.978970, 41.335602>,  <31.952791, 34.946072, 41.363850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.716742, 34.978970, 41.335602>,  <31.323324, 35.033798, 41.288521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.716742, 34.978970, 41.335602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144475, 0.205518, -0.967930,
		0.108488, 0.969006, 0.221940,
		0.983543, -0.137074, 0.117701,
		32.011803, 34.937847, 41.370911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.628313, 35.626133, 41.109692>,  <31.323324, 35.033798, 41.288521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.628313, 35.626133, 41.109692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.947130, 35.386604, 41.078354>,  <32.138420, 35.242889, 41.059551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.947130, 35.386604, 41.078354>,  <31.628313, 35.626133, 41.109692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.947130, 35.386604, 41.078354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163391, 0.338701, -0.926599,
		0.581400, 0.725739, 0.367801,
		0.797043, -0.598819, -0.078342,
		32.186245, 35.206959, 41.054852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.111202, 36.005589, 40.680645>,  <31.628313, 35.626133, 41.109692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.111202, 36.005589, 40.680645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.260056, 35.634666, 40.696754>,  <32.349369, 35.412113, 40.706421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.260056, 35.634666, 40.696754>,  <32.111202, 36.005589, 40.680645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.260056, 35.634666, 40.696754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435502, 0.136121, -0.889837,
		0.819666, 0.348682, 0.454498,
		0.372137, -0.927303, 0.040278,
		32.371696, 35.356476, 40.708839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.931896, 35.959007, 40.710430>,  <32.111202, 36.005589, 40.680645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.931896, 35.959007, 40.710430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.790241, 35.618198, 40.556210>,  <32.705246, 35.413715, 40.463676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.790241, 35.618198, 40.556210>,  <32.931896, 35.959007, 40.710430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.790241, 35.618198, 40.556210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371081, 0.250404, -0.894202,
		0.858420, -0.459744, 0.227490,
		-0.354139, -0.852018, -0.385553,
		32.683998, 35.362595, 40.440544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.468048, 35.822300, 40.195442>,  <32.931896, 35.959007, 40.710430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.468048, 35.822300, 40.195442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.160004, 35.591793, 40.086010>,  <32.975178, 35.453487, 40.020351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.160004, 35.591793, 40.086010>,  <33.468048, 35.822300, 40.195442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.160004, 35.591793, 40.086010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302208, 0.048110, -0.952027,
		0.561789, -0.815840, 0.137104,
		-0.770106, -0.576272, -0.273581,
		32.928970, 35.418911, 40.003937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.923405, 35.211128, 39.954384>,  <33.468048, 35.822300, 40.195442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.923405, 35.211128, 39.954384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.288235, 35.089008, 39.844906>,  <34.507133, 35.015736, 39.779221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.288235, 35.089008, 39.844906>,  <33.923405, 35.211128, 39.954384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.288235, 35.089008, 39.844906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049498, -0.744621, 0.665649,
		-0.407021, -0.593576, -0.694264,
		0.912077, -0.305298, -0.273696,
		34.561859, 34.997417, 39.762798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.871368, 34.450142, 39.998047>,  <33.923405, 35.211128, 39.954384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.871368, 34.450142, 39.998047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.251926, 34.568539, 40.032051>,  <34.480263, 34.639576, 40.052452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.251926, 34.568539, 40.032051>,  <33.871368, 34.450142, 39.998047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.251926, 34.568539, 40.032051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115792, -0.599602, 0.791877,
		0.285364, -0.743548, -0.604735,
		0.951399, 0.295997, 0.085008,
		34.537346, 34.657337, 40.057552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.213783, 33.850571, 40.246170>,  <33.871368, 34.450142, 39.998047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.213783, 33.850571, 40.246170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.496227, 34.129612, 40.294781>,  <34.665691, 34.297035, 40.323948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.496227, 34.129612, 40.294781>,  <34.213783, 33.850571, 40.246170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.496227, 34.129612, 40.294781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360507, -0.501867, 0.786234,
		0.609467, -0.511354, -0.605861,
		0.706106, 0.697600, 0.121525,
		34.708057, 34.338894, 40.331238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.657703, 33.480728, 40.638451>,  <34.213783, 33.850571, 40.246170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.657703, 33.480728, 40.638451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.789734, 33.847847, 40.726715>,  <34.868954, 34.068119, 40.779675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.789734, 33.847847, 40.726715>,  <34.657703, 33.480728, 40.638451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.789734, 33.847847, 40.726715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248603, -0.310032, 0.917647,
		0.910630, -0.248035, -0.330502,
		0.330075, 0.917801, 0.220663,
		34.888756, 34.123188, 40.792915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.280548, 33.390179, 40.823738>,  <34.657703, 33.480728, 40.638451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.280548, 33.390179, 40.823738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.163006, 33.735146, 40.988609>,  <35.092480, 33.942123, 41.087532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.163006, 33.735146, 40.988609>,  <35.280548, 33.390179, 40.823738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.163006, 33.735146, 40.988609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360454, -0.299399, 0.883421,
		0.885281, 0.408168, -0.222881,
		-0.293854, 0.862414, 0.412178,
		35.074848, 33.993870, 41.112263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.875820, 33.729252, 41.180023>,  <35.280548, 33.390179, 40.823738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.875820, 33.729252, 41.180023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.549778, 33.883141, 41.353268>,  <35.354153, 33.975475, 41.457214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.549778, 33.883141, 41.353268>,  <35.875820, 33.729252, 41.180023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.549778, 33.883141, 41.353268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350904, -0.266979, 0.897546,
		0.460941, 0.883577, 0.082615,
		-0.815108, 0.384726, 0.433112,
		35.305244, 33.998558, 41.483200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.175545, 34.144371, 41.760742>,  <35.875820, 33.729252, 41.180023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.175545, 34.144371, 41.760742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.786728, 34.096043, 41.841270>,  <35.553436, 34.067047, 41.889587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.786728, 34.096043, 41.841270>,  <36.175545, 34.144371, 41.760742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.786728, 34.096043, 41.841270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218832, -0.155467, 0.963298,
		-0.085085, 0.980425, 0.177560,
		-0.972046, -0.120818, 0.201321,
		35.495113, 34.059795, 41.901669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.052147, 34.566620, 42.386414>,  <36.175545, 34.144371, 41.760742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.052147, 34.566620, 42.386414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.758221, 34.295925, 42.368217>,  <35.581863, 34.133507, 42.357300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.758221, 34.295925, 42.368217>,  <36.052147, 34.566620, 42.386414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.758221, 34.295925, 42.368217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103701, -0.178375, 0.978483,
		-0.670288, 0.714291, 0.201252,
		-0.734819, -0.676736, -0.045490,
		35.537773, 34.092903, 42.354572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.705162, 34.704044, 43.016953>,  <36.052147, 34.566620, 42.386414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.705162, 34.704044, 43.016953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.593121, 34.339039, 42.897720>,  <35.525898, 34.120033, 42.826180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.593121, 34.339039, 42.897720>,  <35.705162, 34.704044, 43.016953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.593121, 34.339039, 42.897720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026276, -0.303110, 0.952593,
		-0.959611, 0.274655, 0.060925,
		-0.280101, -0.912518, -0.298085,
		35.509090, 34.065285, 42.808296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.071362, 34.473122, 43.407146>,  <35.705162, 34.704044, 43.016953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.071362, 34.473122, 43.407146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.259548, 34.150429, 43.264130>,  <35.372459, 33.956814, 43.178318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.259548, 34.150429, 43.264130>,  <35.071362, 34.473122, 43.407146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.259548, 34.150429, 43.264130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003954, -0.403253, 0.915080,
		-0.882408, -0.431929, -0.186527,
		0.470467, -0.806737, -0.357542,
		35.400688, 33.908409, 43.156868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.766659, 33.900646, 43.768013>,  <35.071362, 34.473122, 43.407146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.766659, 33.900646, 43.768013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.114746, 33.755733, 43.634468>,  <35.323601, 33.668785, 43.554340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.114746, 33.755733, 43.634468>,  <34.766659, 33.900646, 43.768013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.114746, 33.755733, 43.634468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207602, -0.344909, 0.915390,
		-0.446783, -0.865903, -0.224937,
		0.870222, -0.362284, -0.333863,
		35.375813, 33.647049, 43.534309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.798290, 33.211708, 44.013836>,  <34.766659, 33.900646, 43.768013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.798290, 33.211708, 44.013836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.173447, 33.314255, 43.920341>,  <35.398540, 33.375782, 43.864246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.173447, 33.314255, 43.920341>,  <34.798290, 33.211708, 44.013836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.173447, 33.314255, 43.920341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306586, -0.297180, 0.904262,
		0.162365, -0.919760, -0.357323,
		0.937893, 0.256371, -0.233734,
		35.454815, 33.391167, 43.850220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.180698, 32.663471, 44.278973>,  <34.798290, 33.211708, 44.013836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.180698, 32.663471, 44.278973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.419212, 32.983845, 44.257256>,  <35.562321, 33.176067, 44.244225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.419212, 32.983845, 44.257256>,  <35.180698, 32.663471, 44.278973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.419212, 32.983845, 44.257256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250731, -0.121559, 0.960394,
		0.762613, -0.586283, -0.273303,
		0.596285, 0.800934, -0.054297,
		35.598099, 33.224125, 44.240967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.782421, 32.523045, 44.596634>,  <35.180698, 32.663471, 44.278973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.782421, 32.523045, 44.596634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.795555, 32.922665, 44.608150>,  <35.803436, 33.162437, 44.615059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.795555, 32.922665, 44.608150>,  <35.782421, 32.523045, 44.596634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.795555, 32.922665, 44.608150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376481, -0.039044, 0.925601,
		0.925842, -0.019551, -0.377404,
		0.032832, 0.999046, 0.028788,
		35.805405, 33.222378, 44.616787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.431591, 32.590336, 44.920170>,  <35.782421, 32.523045, 44.596634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.431591, 32.590336, 44.920170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.212624, 32.922951, 44.957851>,  <36.081242, 33.122520, 44.980461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.212624, 32.922951, 44.957851>,  <36.431591, 32.590336, 44.920170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.212624, 32.922951, 44.957851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373319, 0.141908, 0.916785,
		0.748973, 0.537036, -0.388113,
		-0.547423, 0.831537, 0.094201,
		36.048397, 33.172413, 44.986111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.771290, 32.933563, 45.527111>,  <36.431591, 32.590336, 44.920170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.771290, 32.933563, 45.527111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.437717, 33.150494, 45.486240>,  <36.237572, 33.280651, 45.461716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.437717, 33.150494, 45.486240>,  <36.771290, 32.933563, 45.527111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.437717, 33.150494, 45.486240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046733, 0.115091, 0.992255,
		0.549882, 0.832250, -0.070634,
		-0.833934, 0.542322, -0.102179,
		36.187538, 33.313190, 45.455585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.855122, 33.580544, 45.909863>,  <36.771290, 32.933563, 45.527111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.855122, 33.580544, 45.909863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.465687, 33.492222, 45.886627>,  <36.232025, 33.439228, 45.872688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.465687, 33.492222, 45.886627>,  <36.855122, 33.580544, 45.909863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.465687, 33.492222, 45.886627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085252, 0.115565, 0.989635,
		-0.211805, 0.968447, -0.131336,
		-0.973587, -0.220806, -0.058085,
		36.173611, 33.425980, 45.869202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.542797, 34.132618, 46.301178>,  <36.855122, 33.580544, 45.909863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.542797, 34.132618, 46.301178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.274982, 33.835598, 46.293797>,  <36.114292, 33.657387, 46.289368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.274982, 33.835598, 46.293797>,  <36.542797, 34.132618, 46.301178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.274982, 33.835598, 46.293797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199950, 0.156250, 0.967267,
		-0.715358, 0.651314, -0.253088,
		-0.669540, -0.742547, -0.018455,
		36.074120, 33.612835, 46.288261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.985291, 34.362083, 46.672474>,  <36.542797, 34.132618, 46.301178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.985291, 34.362083, 46.672474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.910843, 33.969143, 46.665123>,  <35.866173, 33.733379, 46.660713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.910843, 33.969143, 46.665123>,  <35.985291, 34.362083, 46.672474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.910843, 33.969143, 46.665123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200152, 0.019599, 0.979569,
		-0.961924, 0.185997, -0.200268,
		-0.186122, -0.982355, -0.018375,
		35.855007, 33.674435, 46.659611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.503326, 34.330040, 47.134449>,  <35.985291, 34.362083, 46.672474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.503326, 34.330040, 47.134449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.621059, 33.949547, 47.097523>,  <35.691700, 33.721249, 47.075367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.621059, 33.949547, 47.097523>,  <35.503326, 34.330040, 47.134449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.621059, 33.949547, 47.097523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171920, -0.147720, 0.973973,
		-0.940114, -0.270798, -0.207014,
		0.294330, -0.951235, -0.092318,
		35.709358, 33.664177, 47.069828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.082451, 34.002689, 47.589111>,  <35.503326, 34.330040, 47.134449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.082451, 34.002689, 47.589111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.384407, 33.743797, 47.546707>,  <35.565578, 33.588463, 47.521267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.384407, 33.743797, 47.546707>,  <35.082451, 34.002689, 47.589111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.384407, 33.743797, 47.546707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068308, -0.238340, 0.968776,
		-0.652288, -0.724075, -0.224131,
		0.754887, -0.647232, -0.106006,
		35.610874, 33.549629, 47.514904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.875751, 33.461430, 47.953518>,  <35.082451, 34.002689, 47.589111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.875751, 33.461430, 47.953518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.274490, 33.450764, 47.923622>,  <35.513733, 33.444366, 47.905685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.274490, 33.450764, 47.923622>,  <34.875751, 33.461430, 47.953518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.274490, 33.450764, 47.923622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071709, -0.100683, 0.992331,
		-0.033982, -0.994561, -0.098454,
		0.996847, -0.026661, -0.074740,
		35.573544, 33.442764, 47.901199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.026394, 33.093155, 48.516571>,  <34.875751, 33.461430, 47.953518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.026394, 33.093155, 48.516571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.374710, 33.276527, 48.445499>,  <35.583698, 33.386551, 48.402855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.374710, 33.276527, 48.445499>,  <35.026394, 33.093155, 48.516571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.374710, 33.276527, 48.445499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150330, 0.095828, 0.983981,
		0.468111, -0.883550, 0.014531,
		0.870789, 0.458428, -0.177682,
		35.635948, 33.414055, 48.392197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.460098, 32.752674, 48.928356>,  <35.026394, 33.093155, 48.516571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.460098, 32.752674, 48.928356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.635822, 33.100613, 48.838577>,  <35.741257, 33.309376, 48.784710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.635822, 33.100613, 48.838577>,  <35.460098, 32.752674, 48.928356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.635822, 33.100613, 48.838577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038076, 0.231594, 0.972067,
		0.897528, -0.435585, 0.068622,
		0.439311, 0.869845, -0.224447,
		35.767616, 33.361565, 48.771244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.968830, 32.915642, 49.552193>,  <35.460098, 32.752674, 48.928356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.968830, 32.915642, 49.552193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.936260, 33.265572, 49.361172>,  <35.916718, 33.475529, 49.246559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.936260, 33.265572, 49.361172>,  <35.968830, 32.915642, 49.552193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.936260, 33.265572, 49.361172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088543, 0.483601, 0.870798,
		0.992738, 0.028621, -0.116837,
		-0.081425, 0.874820, -0.477555,
		35.911831, 33.528019, 49.217907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.566093, 33.443817, 49.687889>,  <35.968830, 32.915642, 49.552193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.566093, 33.443817, 49.687889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.247219, 33.659195, 49.578659>,  <36.055893, 33.788422, 49.513119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.247219, 33.659195, 49.578659>,  <36.566093, 33.443817, 49.687889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.247219, 33.659195, 49.578659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081544, 0.544198, 0.834984,
		0.598201, 0.643371, -0.477734,
		-0.797187, 0.538445, -0.273077,
		36.008064, 33.820728, 49.496735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.746651, 34.091835, 49.714695>,  <36.566093, 33.443817, 49.687889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.746651, 34.091835, 49.714695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.346958, 34.107307, 49.717255>,  <36.107143, 34.116589, 49.718792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.346958, 34.107307, 49.717255>,  <36.746651, 34.091835, 49.714695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.346958, 34.107307, 49.717255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030044, 0.650541, 0.758877,
		0.025186, 0.758486, -0.651203,
		-0.999231, 0.038678, 0.006404,
		36.047188, 34.118912, 49.719177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.682220, 34.789684, 49.673538>,  <36.746651, 34.091835, 49.714695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.682220, 34.789684, 49.673538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.376041, 34.582199, 49.825863>,  <36.192333, 34.457706, 49.917259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.376041, 34.582199, 49.825863>,  <36.682220, 34.789684, 49.673538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.376041, 34.582199, 49.825863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023004, 0.569357, 0.821768,
		-0.643083, 0.637783, -0.423882,
		-0.765451, -0.518715, 0.380816,
		36.146408, 34.426586, 49.940109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.239731, 35.322426, 50.045265>,  <36.682220, 34.789684, 49.673538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.239731, 35.322426, 50.045265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.153694, 34.960827, 50.193062>,  <36.102070, 34.743866, 50.281738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.153694, 34.960827, 50.193062>,  <36.239731, 35.322426, 50.045265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.153694, 34.960827, 50.193062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022776, 0.373596, 0.927312,
		-0.976328, 0.207874, -0.059769,
		-0.215094, -0.903999, 0.369487,
		36.089165, 34.689629, 50.303909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.684715, 35.359318, 50.564133>,  <36.239731, 35.322426, 50.045265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.684715, 35.359318, 50.564133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.881462, 35.030258, 50.678196>,  <35.999512, 34.832825, 50.746635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.881462, 35.030258, 50.678196>,  <35.684715, 35.359318, 50.564133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.881462, 35.030258, 50.678196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021136, 0.338707, 0.940655,
		-0.870412, -0.456652, 0.183988,
		0.491870, -0.822646, 0.285163,
		36.029022, 34.783463, 50.763744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.396145, 35.183277, 51.195564>,  <35.684715, 35.359318, 50.564133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.396145, 35.183277, 51.195564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.731014, 34.964943, 51.181717>,  <35.931934, 34.833942, 51.173409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.731014, 34.964943, 51.181717>,  <35.396145, 35.183277, 51.195564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.731014, 34.964943, 51.181717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169710, 0.199075, 0.965178,
		-0.519941, -0.813897, 0.259295,
		0.837174, -0.545840, -0.034620,
		35.982166, 34.801189, 51.171329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.340759, 34.600327, 51.523022>,  <35.396145, 35.183277, 51.195564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.340759, 34.600327, 51.523022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.727058, 34.702175, 51.542980>,  <35.958839, 34.763287, 51.554955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.727058, 34.702175, 51.542980>,  <35.340759, 34.600327, 51.523022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.727058, 34.702175, 51.542980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130023, 0.308490, 0.942299,
		0.224537, -0.916516, 0.331032,
		0.965752, 0.254623, 0.049900,
		36.016785, 34.778564, 51.557949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.523254, 34.499851, 52.154236>,  <35.340759, 34.600327, 51.523022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.523254, 34.499851, 52.154236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.865982, 34.689274, 52.072647>,  <36.071617, 34.802929, 52.023693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.865982, 34.689274, 52.072647>,  <35.523254, 34.499851, 52.154236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.865982, 34.689274, 52.072647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040691, 0.332250, 0.942313,
		0.514011, -0.815691, 0.265408,
		0.856818, 0.473560, -0.203972,
		36.123028, 34.831341, 52.011456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.010567, 34.275330, 52.674416>,  <35.523254, 34.499851, 52.154236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.010567, 34.275330, 52.674416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.137344, 34.625210, 52.527752>,  <36.213409, 34.835140, 52.439754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.137344, 34.625210, 52.527752>,  <36.010567, 34.275330, 52.674416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.137344, 34.625210, 52.527752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031968, 0.376521, 0.925856,
		0.947906, -0.305165, 0.091373,
		0.316943, 0.874703, -0.366662,
		36.232426, 34.887619, 52.417755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.683575, 34.524895, 53.055790>,  <36.010567, 34.275330, 52.674416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.683575, 34.524895, 53.055790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.499287, 34.856510, 52.929031>,  <36.388714, 35.055481, 52.852974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.499287, 34.856510, 52.929031>,  <36.683575, 34.524895, 53.055790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.499287, 34.856510, 52.929031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056099, 0.383539, 0.921819,
		0.885771, 0.406923, -0.223213,
		-0.460720, 0.829042, -0.316900,
		36.361073, 35.105225, 52.833961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.124989, 35.077217, 53.286320>,  <36.683575, 34.524895, 53.055790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.124989, 35.077217, 53.286320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.793819, 35.291775, 53.220806>,  <36.595116, 35.420509, 53.181499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.793819, 35.291775, 53.220806>,  <37.124989, 35.077217, 53.286320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.793819, 35.291775, 53.220806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144751, 0.486511, 0.861600,
		0.541836, 0.689633, -0.480438,
		-0.827926, 0.536390, -0.163784,
		36.545441, 35.452690, 53.171673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.319641, 35.801792, 53.355949>,  <37.124989, 35.077217, 53.286320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.319641, 35.801792, 53.355949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.938026, 35.723465, 53.446690>,  <36.709057, 35.676468, 53.501133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.938026, 35.723465, 53.446690>,  <37.319641, 35.801792, 53.355949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.938026, 35.723465, 53.446690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111373, 0.471094, 0.875023,
		-0.278211, 0.860074, -0.427635,
		-0.954041, -0.195814, 0.226852,
		36.651814, 35.664722, 53.514744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.389954, 36.585094, 53.193707>,  <37.319641, 35.801792, 53.355949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.389954, 36.585094, 53.193707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.316044, 36.975037, 53.243519>,  <37.271698, 37.209003, 53.273407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.316044, 36.975037, 53.243519>,  <37.389954, 36.585094, 53.193707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.316044, 36.975037, 53.243519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319620, 0.179432, -0.930402,
		-0.929355, -0.132115, -0.344740,
		-0.184777, 0.974859, 0.124529,
		37.260612, 37.267494, 53.280876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.746185, 36.782894, 52.892742>,  <37.389954, 36.585094, 53.193707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.746185, 36.782894, 52.892742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.055504, 37.035881, 52.910591>,  <37.241096, 37.187675, 52.921299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.055504, 37.035881, 52.910591>,  <36.746185, 36.782894, 52.892742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.055504, 37.035881, 52.910591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138703, -0.100075, -0.985265,
		-0.618685, 0.768092, -0.165114,
		0.773298, 0.632471, 0.044622,
		37.287495, 37.225624, 52.923977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.707165, 37.123886, 52.174351>,  <36.746185, 36.782894, 52.892742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.707165, 37.123886, 52.174351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.060062, 37.176788, 52.355087>,  <37.271801, 37.208530, 52.463528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.060062, 37.176788, 52.355087>,  <36.707165, 37.123886, 52.174351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.060062, 37.176788, 52.355087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454597, 0.010291, -0.890638,
		-0.122437, 0.991163, -0.051042,
		0.882242, 0.132251, 0.451840,
		37.324734, 37.216465, 52.490639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.017250, 37.595680, 51.888615>,  <36.707165, 37.123886, 52.174351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.017250, 37.595680, 51.888615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.329941, 37.406792, 52.051540>,  <37.517555, 37.293457, 52.149296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.329941, 37.406792, 52.051540>,  <37.017250, 37.595680, 51.888615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.329941, 37.406792, 52.051540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418381, -0.087203, -0.904076,
		0.462443, 0.877156, 0.129399,
		0.781732, -0.472221, 0.407312,
		37.564461, 37.265125, 52.173733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.579208, 37.823769, 51.540775>,  <37.017250, 37.595680, 51.888615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.579208, 37.823769, 51.540775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.721272, 37.481323, 51.690941>,  <37.806511, 37.275856, 51.781040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.721272, 37.481323, 51.690941>,  <37.579208, 37.823769, 51.540775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.721272, 37.481323, 51.690941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527539, -0.147985, -0.836542,
		0.771728, 0.495153, 0.399073,
		0.355160, -0.856110, 0.375417,
		37.827820, 37.224491, 51.803566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.227631, 37.864582, 51.359959>,  <37.579208, 37.823769, 51.540775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.227631, 37.864582, 51.359959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.155075, 37.479496, 51.440235>,  <38.111542, 37.248444, 51.488400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.155075, 37.479496, 51.440235>,  <38.227631, 37.864582, 51.359959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.155075, 37.479496, 51.440235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406128, -0.259195, -0.876287,
		0.895633, -0.077444, 0.438001,
		-0.181391, -0.962715, 0.200691,
		38.100658, 37.190681, 51.500443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.893162, 37.506359, 51.225796>,  <38.227631, 37.864582, 51.359959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.893162, 37.506359, 51.225796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.590714, 37.247784, 51.185005>,  <38.409245, 37.092640, 51.160530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.590714, 37.247784, 51.185005>,  <38.893162, 37.506359, 51.225796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.590714, 37.247784, 51.185005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436658, -0.382291, -0.814361,
		0.487448, -0.660285, 0.571330,
		-0.756125, -0.646434, -0.101972,
		38.363876, 37.053852, 51.154415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.200222, 36.811695, 51.093708>,  <38.893162, 37.506359, 51.225796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.200222, 36.811695, 51.093708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.828938, 36.750729, 50.957947>,  <38.606167, 36.714149, 50.876492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.828938, 36.750729, 50.957947>,  <39.200222, 36.811695, 51.093708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.828938, 36.750729, 50.957947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368590, -0.500899, -0.783098,
		-0.050650, -0.851980, 0.521119,
		-0.928211, -0.152415, -0.339402,
		38.550472, 36.705006, 50.856125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.097713, 36.154209, 51.007282>,  <39.200222, 36.811695, 51.093708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.097713, 36.154209, 51.007282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.829979, 36.307404, 50.752625>,  <38.669338, 36.399323, 50.599831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.829979, 36.307404, 50.752625>,  <39.097713, 36.154209, 51.007282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.829979, 36.307404, 50.752625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256267, -0.685298, -0.681685,
		-0.697368, -0.619424, 0.360544,
		-0.669332, 0.382989, -0.636643,
		38.629181, 36.422302, 50.561630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.910038, 35.598949, 50.530880>,  <39.097713, 36.154209, 51.007282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.910038, 35.598949, 50.530880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.764767, 35.914459, 50.332508>,  <38.677605, 36.103764, 50.213486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.764767, 35.914459, 50.332508>,  <38.910038, 35.598949, 50.530880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.764767, 35.914459, 50.332508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066219, -0.509071, -0.858173,
		-0.929365, -0.344507, 0.132650,
		-0.363175, 0.788772, -0.495926,
		38.655815, 36.151093, 50.183731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.356846, 35.371315, 50.125042>,  <38.910038, 35.598949, 50.530880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.356846, 35.371315, 50.125042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.472584, 35.714291, 49.954826>,  <38.542027, 35.920074, 49.852699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.472584, 35.714291, 49.954826>,  <38.356846, 35.371315, 50.125042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.472584, 35.714291, 49.954826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133345, -0.476325, -0.869099,
		-0.947891, 0.194729, -0.252159,
		0.289348, 0.857435, -0.425537,
		38.559387, 35.971519, 49.827164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.919056, 35.452377, 49.461700>,  <38.356846, 35.371315, 50.125042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.919056, 35.452377, 49.461700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.246887, 35.679470, 49.430790>,  <38.443584, 35.815727, 49.412243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.246887, 35.679470, 49.430790>,  <37.919056, 35.452377, 49.461700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.246887, 35.679470, 49.430790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119760, -0.301624, -0.945875,
		-0.560312, 0.765964, -0.315197,
		0.819578, 0.567733, -0.077272,
		38.492760, 35.849789, 49.407608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.761044, 35.963367, 48.935364>,  <37.919056, 35.452377, 49.461700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.761044, 35.963367, 48.935364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.159882, 35.991783, 48.946392>,  <38.399185, 36.008831, 48.953011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.159882, 35.991783, 48.946392>,  <37.761044, 35.963367, 48.935364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.159882, 35.991783, 48.946392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042206, -0.213559, -0.976018,
		-0.063447, 0.974344, -0.215936,
		0.997092, 0.071039, 0.027573,
		38.459011, 36.013096, 48.954662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.950298, 36.466949, 48.420444>,  <37.761044, 35.963367, 48.935364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.950298, 36.466949, 48.420444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.259842, 36.219246, 48.473595>,  <38.445568, 36.070625, 48.505486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.259842, 36.219246, 48.473595>,  <37.950298, 36.466949, 48.420444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.259842, 36.219246, 48.473595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023330, -0.237529, -0.971100,
		0.632923, 0.748399, -0.198263,
		0.773863, -0.619257, 0.132878,
		38.492001, 36.033470, 48.513458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.457623, 36.636448, 48.012466>,  <37.950298, 36.466949, 48.420444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.457623, 36.636448, 48.012466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.568169, 36.261051, 48.095268>,  <38.634499, 36.035812, 48.144947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.568169, 36.261051, 48.095268>,  <38.457623, 36.636448, 48.012466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.568169, 36.261051, 48.095268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274030, -0.129497, -0.952963,
		0.921156, 0.320094, 0.221387,
		0.276369, -0.938494, 0.207002,
		38.651081, 35.979504, 48.157368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.943550, 36.479687, 47.462509>,  <38.457623, 36.636448, 48.012466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.943550, 36.479687, 47.462509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.845711, 36.130363, 47.631035>,  <38.787006, 35.920769, 47.732151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.845711, 36.130363, 47.631035>,  <38.943550, 36.479687, 47.462509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.845711, 36.130363, 47.631035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178453, -0.467634, -0.865721,
		0.953061, -0.136570, 0.270227,
		-0.244599, -0.873308, 0.421313,
		38.772331, 35.868370, 47.757427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.476871, 35.962330, 47.283485>,  <38.943550, 36.479687, 47.462509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.476871, 35.962330, 47.283485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.129017, 35.782803, 47.365753>,  <38.920303, 35.675087, 47.415115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.129017, 35.782803, 47.365753>,  <39.476871, 35.962330, 47.283485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.129017, 35.782803, 47.365753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017149, -0.443800, -0.895962,
		0.493399, -0.775632, 0.393640,
		-0.869634, -0.448818, 0.205669,
		38.868126, 35.648159, 47.427452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.543926, 35.312450, 46.907642>,  <39.476871, 35.962330, 47.283485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.543926, 35.312450, 46.907642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.147888, 35.321533, 46.963062>,  <38.910267, 35.326981, 46.996315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.147888, 35.321533, 46.963062>,  <39.543926, 35.312450, 46.907642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.147888, 35.321533, 46.963062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123215, -0.613566, -0.779971,
		0.067301, -0.789317, 0.610286,
		-0.990095, 0.022703, 0.138549,
		38.850861, 35.328342, 47.004627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.299065, 34.645943, 46.685146>,  <39.543926, 35.312450, 46.907642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.299065, 34.645943, 46.685146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.977093, 34.883278, 46.682697>,  <38.783909, 35.025681, 46.681229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.977093, 34.883278, 46.682697>,  <39.299065, 34.645943, 46.685146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.977093, 34.883278, 46.682697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259368, -0.361105, -0.895730,
		-0.533683, -0.719411, 0.444557,
		-0.804929, 0.593340, -0.006123,
		38.735615, 35.061279, 46.680859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.778587, 34.193005, 46.590580>,  <39.299065, 34.645943, 46.685146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.778587, 34.193005, 46.590580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.663483, 34.554550, 46.463955>,  <38.594418, 34.771477, 46.387978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.663483, 34.554550, 46.463955>,  <38.778587, 34.193005, 46.590580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.663483, 34.554550, 46.463955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220625, -0.384223, -0.896492,
		-0.931942, -0.188138, 0.309982,
		-0.287766, 0.903868, -0.316565,
		38.577152, 34.825710, 46.368984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.318016, 34.027782, 46.077572>,  <38.778587, 34.193005, 46.590580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.318016, 34.027782, 46.077572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.380501, 34.415928, 46.003819>,  <38.417992, 34.648815, 45.959568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.380501, 34.415928, 46.003819>,  <38.318016, 34.027782, 46.077572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.380501, 34.415928, 46.003819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374056, -0.114648, -0.920292,
		-0.914155, 0.212729, 0.345060,
		0.156213, 0.970362, -0.184379,
		38.427364, 34.707035, 45.948505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.785450, 34.179340, 45.650352>,  <38.318016, 34.027782, 46.077572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.785450, 34.179340, 45.650352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.052944, 34.475430, 45.622482>,  <38.213440, 34.653084, 45.605759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.052944, 34.475430, 45.622482>,  <37.785450, 34.179340, 45.650352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.052944, 34.475430, 45.622482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349624, 0.230383, -0.908123,
		-0.656163, 0.631658, 0.412866,
		0.668740, 0.740224, -0.069674,
		38.253567, 34.697498, 45.601582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.328526, 34.700634, 45.448792>,  <37.785450, 34.179340, 45.650352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.328526, 34.700634, 45.448792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.711792, 34.737316, 45.340340>,  <37.941753, 34.759327, 45.275269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.711792, 34.737316, 45.340340>,  <37.328526, 34.700634, 45.448792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.711792, 34.737316, 45.340340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275737, 0.041803, -0.960324,
		-0.076735, 0.994908, 0.065341,
		0.958165, 0.091708, -0.271125,
		37.999241, 34.764828, 45.259003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.317497, 35.304214, 44.949677>,  <37.328526, 34.700634, 45.448792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.317497, 35.304214, 44.949677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.654728, 35.098763, 44.885910>,  <37.857067, 34.975491, 44.847652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.654728, 35.098763, 44.885910>,  <37.317497, 35.304214, 44.949677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.654728, 35.098763, 44.885910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167561, 0.030791, -0.985381,
		0.511026, 0.857461, -0.060104,
		0.843075, -0.513626, -0.159412,
		37.907650, 34.944675, 44.838085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.707211, 35.668819, 44.408573>,  <37.317497, 35.304214, 44.949677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.707211, 35.668819, 44.408573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.835007, 35.289787, 44.410637>,  <37.911682, 35.062370, 44.411877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.835007, 35.289787, 44.410637>,  <37.707211, 35.668819, 44.408573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.835007, 35.289787, 44.410637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044949, -0.020592, -0.998777,
		0.946524, 0.318865, -0.049171,
		0.319488, -0.947576, 0.005158,
		37.930855, 35.005516, 44.412186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.148220, 35.650284, 43.883423>,  <37.707211, 35.668819, 44.408573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.148220, 35.650284, 43.883423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.067196, 35.265800, 43.958302>,  <38.018581, 35.035110, 44.003227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.067196, 35.265800, 43.958302>,  <38.148220, 35.650284, 43.883423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.067196, 35.265800, 43.958302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013457, -0.193875, -0.980934,
		0.979178, -0.196177, 0.052206,
		-0.202558, -0.961211, 0.187198,
		38.006428, 34.977436, 44.014462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.594406, 35.259628, 43.423286>,  <38.148220, 35.650284, 43.883423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.594406, 35.259628, 43.423286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.313236, 34.992981, 43.522499>,  <38.144535, 34.832993, 43.582027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.313236, 34.992981, 43.522499>,  <38.594406, 35.259628, 43.423286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.313236, 34.992981, 43.522499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156263, -0.195458, -0.968183,
		0.693884, -0.719320, 0.033226,
		-0.702927, -0.666614, 0.248028,
		38.102360, 34.792995, 43.596909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.851669, 34.775867, 43.100491>,  <38.594406, 35.259628, 43.423286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.851669, 34.775867, 43.100491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.469097, 34.677845, 43.163971>,  <38.239552, 34.619034, 43.202057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.469097, 34.677845, 43.163971>,  <38.851669, 34.775867, 43.100491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.469097, 34.677845, 43.163971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076765, -0.313368, -0.946524,
		0.281680, -0.917469, 0.280904,
		-0.956433, -0.245054, 0.158699,
		38.182167, 34.604328, 43.211582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.744507, 34.178333, 42.781811>,  <38.851669, 34.775867, 43.100491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.744507, 34.178333, 42.781811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.380035, 34.342319, 42.798183>,  <38.161350, 34.440712, 42.808006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.380035, 34.342319, 42.798183>,  <38.744507, 34.178333, 42.781811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.380035, 34.342319, 42.798183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123814, -0.177719, -0.976261,
		-0.392958, -0.894620, 0.212694,
		-0.911183, 0.409964, 0.040931,
		38.106682, 34.465309, 42.810463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.362976, 33.745216, 42.455177>,  <38.744507, 34.178333, 42.781811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.362976, 33.745216, 42.455177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.146503, 34.081573, 42.457314>,  <38.016621, 34.283386, 42.458595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.146503, 34.081573, 42.457314>,  <38.362976, 33.745216, 42.455177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.146503, 34.081573, 42.457314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156019, -0.094171, -0.983255,
		-0.826306, -0.532951, 0.182158,
		-0.541181, 0.840889, 0.005336,
		37.984150, 34.333839, 42.458916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.741268, 33.589836, 42.056965>,  <38.362976, 33.745216, 42.455177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.741268, 33.589836, 42.056965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.793312, 33.986431, 42.054878>,  <37.824539, 34.224388, 42.053627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.793312, 33.986431, 42.054878>,  <37.741268, 33.589836, 42.056965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.793312, 33.986431, 42.054878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132640, 0.012189, -0.991090,
		-0.982588, 0.129641, 0.133097,
		0.130108, 0.991486, -0.005219,
		37.832344, 34.283878, 42.053314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.202095, 33.781464, 41.595184>,  <37.741268, 33.589836, 42.056965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.202095, 33.781464, 41.595184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.447468, 34.093216, 41.646191>,  <37.594692, 34.280270, 41.676796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.447468, 34.093216, 41.646191>,  <37.202095, 33.781464, 41.595184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.447468, 34.093216, 41.646191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149448, 0.043990, -0.987791,
		-0.775476, 0.625002, -0.089492,
		0.613435, 0.779383, 0.127519,
		37.631496, 34.327030, 41.684444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.021046, 34.361279, 41.110031>,  <37.202095, 33.781464, 41.595184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.021046, 34.361279, 41.110031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.408482, 34.393612, 41.204090>,  <37.640945, 34.413013, 41.260525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.408482, 34.393612, 41.204090>,  <37.021046, 34.361279, 41.110031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.408482, 34.393612, 41.204090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215672, 0.197561, -0.956272,
		-0.123757, 0.976952, 0.173922,
		0.968592, 0.080835, 0.235151,
		37.699059, 34.417862, 41.274635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.234741, 34.893448, 40.655853>,  <37.021046, 34.361279, 41.110031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.234741, 34.893448, 40.655853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.575062, 34.734203, 40.793049>,  <37.779255, 34.638657, 40.875366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.575062, 34.734203, 40.793049>,  <37.234741, 34.893448, 40.655853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.575062, 34.734203, 40.793049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428024, 0.146378, -0.891835,
		0.304843, 0.905584, 0.294939,
		0.850803, -0.398110, 0.342989,
		37.830303, 34.614769, 40.895947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.660213, 35.419842, 40.520172>,  <37.234741, 34.893448, 40.655853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.660213, 35.419842, 40.520172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.864017, 35.077366, 40.554436>,  <37.986298, 34.871880, 40.574993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.864017, 35.077366, 40.554436>,  <37.660213, 35.419842, 40.520172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.864017, 35.077366, 40.554436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490002, 0.206866, -0.846820,
		0.707320, 0.473435, 0.524936,
		0.509506, -0.856192, 0.085664,
		38.016869, 34.820507, 40.580135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.271683, 35.570923, 40.519375>,  <37.660213, 35.419842, 40.520172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.271683, 35.570923, 40.519375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.248379, 35.192703, 40.391285>,  <38.234398, 34.965771, 40.314430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.248379, 35.192703, 40.391285>,  <38.271683, 35.570923, 40.519375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.248379, 35.192703, 40.391285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492281, 0.251847, -0.833206,
		0.868484, -0.206183, 0.450803,
		-0.058260, -0.945548, -0.320226,
		38.230900, 34.909039, 40.295216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.031948, 35.524273, 40.287373>,  <38.271683, 35.570923, 40.519375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.031948, 35.524273, 40.287373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.820702, 35.231110, 40.115818>,  <38.693954, 35.055210, 40.012886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.820702, 35.231110, 40.115818>,  <39.031948, 35.524273, 40.287373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.820702, 35.231110, 40.115818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324346, 0.292669, -0.899525,
		0.784791, -0.614157, 0.083154,
		-0.528113, -0.732909, -0.428883,
		38.662266, 35.011238, 39.987152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.556545, 35.238277, 39.792870>,  <39.031948, 35.524273, 40.287373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.556545, 35.238277, 39.792870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.188618, 35.125816, 39.683407>,  <38.967861, 35.058342, 39.617729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.188618, 35.125816, 39.683407>,  <39.556545, 35.238277, 39.792870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.188618, 35.125816, 39.683407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240355, 0.147499, -0.959413,
		0.310103, -0.948261, -0.068096,
		-0.919818, -0.281150, -0.273659,
		38.912674, 35.041473, 39.601311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.696083, 34.838337, 39.206455>,  <39.556545, 35.238277, 39.792870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.696083, 34.838337, 39.206455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.310173, 34.942703, 39.192978>,  <39.078629, 35.005325, 39.184891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.310173, 34.942703, 39.192978>,  <39.696083, 34.838337, 39.206455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.310173, 34.942703, 39.192978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050591, 0.058318, -0.997015,
		-0.258176, -0.963597, -0.069464,
		-0.964772, 0.260919, -0.033693,
		39.020741, 35.020977, 39.182869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.390503, 34.398552, 38.711052>,  <39.696083, 34.838337, 39.206455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.390503, 34.398552, 38.711052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.151581, 34.719353, 38.709240>,  <39.008228, 34.911835, 38.708153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.151581, 34.719353, 38.709240>,  <39.390503, 34.398552, 38.711052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.151581, 34.719353, 38.709240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189961, 0.135985, -0.972329,
		-0.779193, -0.581637, -0.233574,
		-0.597304, 0.802002, -0.004530,
		38.972389, 34.959953, 38.707882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.783455, 34.377327, 38.095848>,  <39.390503, 34.398552, 38.711052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.783455, 34.377327, 38.095848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.956909, 34.715183, 38.221413>,  <39.060982, 34.917896, 38.296753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.956909, 34.715183, 38.221413>,  <38.783455, 34.377327, 38.095848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.956909, 34.715183, 38.221413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301144, 0.192496, -0.933947,
		-0.849277, 0.499527, -0.170885,
		0.433637, 0.844641, 0.313912,
		39.087002, 34.968575, 38.315586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.468483, 34.677345, 37.743267>,  <38.783455, 34.377327, 38.095848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.468483, 34.677345, 37.743267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.700775, 34.816807, 37.449005>,  <39.840149, 34.900482, 37.272446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.700775, 34.816807, 37.449005>,  <39.468483, 34.677345, 37.743267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.700775, 34.816807, 37.449005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763874, 0.545845, -0.344311,
		0.281510, 0.761902, 0.583316,
		0.580731, 0.348652, -0.735658,
		39.874996, 34.921402, 37.228310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.304729, 35.389782, 37.619354>,  <39.468483, 34.677345, 37.743267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.304729, 35.389782, 37.619354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.426506, 35.187645, 37.296383>,  <39.499573, 35.066364, 37.102600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.426506, 35.187645, 37.296383>,  <39.304729, 35.389782, 37.619354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.426506, 35.187645, 37.296383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779092, 0.355586, -0.516309,
		0.548023, 0.786249, -0.285452,
		0.304445, -0.505342, -0.807430,
		39.517841, 35.036041, 37.054153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.946564, 35.637451, 37.332497>,  <39.304729, 35.389782, 37.619354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.946564, 35.637451, 37.332497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.568726, 35.573235, 37.217983>,  <39.342022, 35.534702, 37.149277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.568726, 35.573235, 37.217983>,  <39.946564, 35.637451, 37.332497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.568726, 35.573235, 37.217983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322013, 0.622166, 0.713595,
		0.063549, 0.766247, -0.639395,
		-0.944600, -0.160545, -0.286279,
		39.285347, 35.525070, 37.132099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.762035, 35.857403, 37.029465>,  <39.946564, 35.637451, 37.332497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.762035, 35.857403, 37.029465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.058418, 35.660587, 37.212276>,  <41.236248, 35.542500, 37.321964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.058418, 35.660587, 37.212276>,  <40.762035, 35.857403, 37.029465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.058418, 35.660587, 37.212276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591960, -0.799924, 0.098514,
		0.317118, -0.343539, -0.883978,
		0.740959, -0.492039, 0.457032,
		41.280704, 35.512974, 37.349384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.907284, 35.182018, 36.669498>,  <40.762035, 35.857403, 37.029465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.907284, 35.182018, 36.669498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.057735, 35.128349, 37.036217>,  <41.148006, 35.096146, 37.256248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.057735, 35.128349, 37.036217>,  <40.907284, 35.182018, 36.669498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.057735, 35.128349, 37.036217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700218, -0.689162, 0.186414,
		0.606811, -0.712076, -0.353168,
		0.376131, -0.134176, 0.916800,
		41.170574, 35.088097, 37.311256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.684639, 35.241215, 36.348919>,  <40.907284, 35.182018, 36.669498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.684639, 35.241215, 36.348919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.055206, 35.186909, 36.208454>,  <42.277546, 35.154327, 36.124176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.055206, 35.186909, 36.208454>,  <41.684639, 35.241215, 36.348919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.055206, 35.186909, 36.208454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333365, 0.137655, -0.932694,
		0.174963, 0.981132, 0.082268,
		0.926421, -0.135762, -0.351160,
		42.333134, 35.146179, 36.103107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.934856, 35.859295, 35.893570>,  <41.684639, 35.241215, 36.348919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.934856, 35.859295, 35.893570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.111687, 35.519474, 35.778446>,  <42.217785, 35.315582, 35.709370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.111687, 35.519474, 35.778446>,  <41.934856, 35.859295, 35.893570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.111687, 35.519474, 35.778446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341745, 0.137145, -0.929732,
		0.829324, 0.509371, -0.229700,
		0.442077, -0.849548, -0.287813,
		42.244308, 35.264610, 35.692101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.646793, 35.671432, 35.281082>,  <41.934856, 35.859295, 35.893570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.646793, 35.671432, 35.281082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.975780, 35.444035, 35.288689>,  <42.173172, 35.307598, 35.293251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.975780, 35.444035, 35.288689>,  <41.646793, 35.671432, 35.281082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.975780, 35.444035, 35.288689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105789, -0.185723, -0.976891,
		0.558884, 0.801452, -0.212892,
		0.822470, -0.568490, 0.019013,
		42.222523, 35.273487, 35.294392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.052677, 35.799511, 34.638668>,  <41.646793, 35.671432, 35.281082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.052677, 35.799511, 34.638668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.188911, 35.443844, 34.760899>,  <42.270653, 35.230442, 34.834236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.188911, 35.443844, 34.760899>,  <42.052677, 35.799511, 34.638668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.188911, 35.443844, 34.760899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033459, -0.336263, -0.941173,
		0.939616, 0.310330, -0.144279,
		0.340590, -0.889169, 0.305575,
		42.291088, 35.177094, 34.852570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.660378, 35.556358, 34.116962>,  <42.052677, 35.799511, 34.638668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.660378, 35.556358, 34.116962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.534008, 35.226158, 34.304043>,  <42.458187, 35.028038, 34.416290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.534008, 35.226158, 34.304043>,  <42.660378, 35.556358, 34.116962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.534008, 35.226158, 34.304043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053822, -0.476557, -0.877495,
		0.947257, -0.302392, 0.106125,
		-0.315922, -0.825502, 0.467697,
		42.439232, 34.978508, 34.444351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.973545, 35.032974, 33.737156>,  <42.660378, 35.556358, 34.116962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.973545, 35.032974, 33.737156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.724995, 34.805412, 33.952652>,  <42.575863, 34.668877, 34.081951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.724995, 34.805412, 33.952652>,  <42.973545, 35.032974, 33.737156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.724995, 34.805412, 33.952652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195444, -0.553318, -0.809717,
		0.758743, -0.608434, 0.232632,
		-0.621378, -0.568901, 0.538741,
		42.538582, 34.634743, 34.114273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.096138, 34.237251, 33.566208>,  <42.973545, 35.032974, 33.737156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.096138, 34.237251, 33.566208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.723797, 34.270180, 33.708611>,  <42.500393, 34.289936, 33.794052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.723797, 34.270180, 33.708611>,  <43.096138, 34.237251, 33.566208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.723797, 34.270180, 33.708611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338076, -0.563701, -0.753622,
		0.138641, -0.821866, 0.552553,
		-0.930851, 0.082322, 0.356005,
		42.444542, 34.294876, 33.815411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.806488, 33.539715, 33.713451>,  <43.096138, 34.237251, 33.566208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.806488, 33.539715, 33.713451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.488106, 33.778774, 33.674957>,  <42.297077, 33.922211, 33.651859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.488106, 33.778774, 33.674957>,  <42.806488, 33.539715, 33.713451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.488106, 33.778774, 33.674957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379509, -0.616514, -0.689843,
		-0.471614, -0.512566, 0.717535,
		-0.795960, 0.597651, -0.096233,
		42.249317, 33.958069, 33.646088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.253193, 33.081421, 33.741848>,  <42.806488, 33.539715, 33.713451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.253193, 33.081421, 33.741848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.119686, 33.415760, 33.567513>,  <42.039581, 33.616364, 33.462910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.119686, 33.415760, 33.567513>,  <42.253193, 33.081421, 33.741848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.119686, 33.415760, 33.567513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485980, -0.548749, -0.680219,
		-0.807728, -0.015224, 0.589360,
		-0.333766, 0.835849, -0.435841,
		42.019558, 33.666515, 33.436760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.512348, 32.972565, 33.594185>,  <42.253193, 33.081421, 33.741848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.512348, 32.972565, 33.594185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.598183, 33.271549, 33.342709>,  <41.649685, 33.450939, 33.191822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.598183, 33.271549, 33.342709>,  <41.512348, 32.972565, 33.594185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.598183, 33.271549, 33.342709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521740, -0.456426, -0.720737,
		-0.825675, 0.482675, 0.292038,
		0.214588, 0.747462, -0.628691,
		41.662560, 33.495789, 33.154102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.915222, 33.121262, 33.212955>,  <41.512348, 32.972565, 33.594185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.915222, 33.121262, 33.212955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.213371, 33.267502, 32.989971>,  <41.392262, 33.355247, 32.856182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.213371, 33.267502, 32.989971>,  <40.915222, 33.121262, 33.212955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.213371, 33.267502, 32.989971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439710, -0.358908, -0.823310,
		-0.501079, 0.858791, -0.106761,
		0.745369, 0.365599, -0.557461,
		41.436981, 33.377182, 32.822735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.565319, 33.476662, 32.698864>,  <40.915222, 33.121262, 33.212955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.565319, 33.476662, 32.698864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.932873, 33.411480, 32.555145>,  <41.153404, 33.372372, 32.468914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.932873, 33.411480, 32.555145>,  <40.565319, 33.476662, 32.698864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.932873, 33.411480, 32.555145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376042, -0.086255, -0.922579,
		0.119346, 0.982856, -0.140536,
		0.918884, -0.162954, -0.359301,
		41.208538, 33.362595, 32.447353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.478043, 33.703377, 32.114029>,  <40.565319, 33.476662, 32.698864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.478043, 33.703377, 32.114029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.799419, 33.471901, 32.058025>,  <40.992245, 33.333015, 32.024422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.799419, 33.471901, 32.058025>,  <40.478043, 33.703377, 32.114029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.799419, 33.471901, 32.058025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326363, -0.231378, -0.916489,
		0.497965, 0.782039, -0.374761,
		0.803441, -0.578688, -0.140010,
		41.040451, 33.298294, 32.016022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.674294, 33.918407, 31.453005>,  <40.478043, 33.703377, 32.114029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.674294, 33.918407, 31.453005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.835098, 33.566788, 31.555508>,  <40.931580, 33.355816, 31.617010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.835098, 33.566788, 31.555508>,  <40.674294, 33.918407, 31.453005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.835098, 33.566788, 31.555508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237496, -0.370395, -0.898000,
		0.884299, 0.300144, -0.357672,
		0.402009, -0.879046, 0.256257,
		40.955700, 33.303074, 31.632385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.059078, 33.771358, 30.896877>,  <40.674294, 33.918407, 31.453005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.059078, 33.771358, 30.896877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.990208, 33.423664, 31.082260>,  <40.948887, 33.215050, 31.193489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.990208, 33.423664, 31.082260>,  <41.059078, 33.771358, 30.896877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.990208, 33.423664, 31.082260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302160, -0.401199, -0.864719,
		0.937579, -0.288923, -0.193569,
		-0.172177, -0.869231, 0.463456,
		40.938553, 33.162895, 31.221296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.174606, 33.358536, 30.351055>,  <41.059078, 33.771358, 30.896877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.174606, 33.358536, 30.351055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.973900, 33.137249, 30.617041>,  <40.853477, 33.004478, 30.776632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.973900, 33.137249, 30.617041>,  <41.174606, 33.358536, 30.351055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.973900, 33.137249, 30.617041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469557, -0.471418, -0.746513,
		0.726461, -0.686815, -0.023226,
		-0.501767, -0.553218, 0.664966,
		40.823368, 32.971283, 30.816530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.223286, 32.609158, 30.276436>,  <41.174606, 33.358536, 30.351055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.223286, 32.609158, 30.276436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.862560, 32.685261, 30.431631>,  <40.646126, 32.730923, 30.524748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.862560, 32.685261, 30.431631>,  <41.223286, 32.609158, 30.276436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.862560, 32.685261, 30.431631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429465, -0.295164, -0.853486,
		-0.047859, -0.936313, 0.347890,
		-0.901814, 0.190254, 0.387988,
		40.592014, 32.742336, 30.548027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.784790, 32.035851, 30.023962>,  <41.223286, 32.609158, 30.276436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.784790, 32.035851, 30.023962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.512470, 32.278614, 30.188000>,  <40.349079, 32.424271, 30.286423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.512470, 32.278614, 30.188000>,  <40.784790, 32.035851, 30.023962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.512470, 32.278614, 30.188000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680265, -0.316308, -0.661202,
		-0.271562, -0.729127, 0.628194,
		-0.680803, 0.606896, 0.410103,
		40.308231, 32.460686, 30.311029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.229351, 31.673174, 30.021461>,  <40.784790, 32.035851, 30.023962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.229351, 31.673174, 30.021461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.070820, 32.034214, 30.088678>,  <39.975700, 32.250839, 30.129009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.070820, 32.034214, 30.088678>,  <40.229351, 31.673174, 30.021461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.070820, 32.034214, 30.088678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810666, -0.258112, -0.525546,
		-0.430986, -0.344511, 0.834005,
		-0.396323, 0.902602, 0.168041,
		39.951923, 32.304993, 30.139091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.524502, 31.516945, 30.254652>,  <40.229351, 31.673174, 30.021461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.524502, 31.516945, 30.254652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.519123, 31.898413, 30.134432>,  <39.515896, 32.127293, 30.062300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.519123, 31.898413, 30.134432>,  <39.524502, 31.516945, 30.254652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.519123, 31.898413, 30.134432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835823, -0.175698, -0.520125,
		-0.548834, 0.244214, 0.799463,
		-0.013442, 0.953672, -0.300549,
		39.515091, 32.184513, 30.044268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.800915, 31.775076, 30.394846>,  <39.524502, 31.516945, 30.254652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.800915, 31.775076, 30.394846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.981556, 31.980055, 30.102695>,  <39.089939, 32.103043, 29.927404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.981556, 31.980055, 30.102695>,  <38.800915, 31.775076, 30.394846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.981556, 31.980055, 30.102695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776416, -0.177599, -0.604679,
		-0.439582, 0.840151, 0.317669,
		0.451604, 0.512449, -0.730376,
		39.117039, 32.133789, 29.883583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.197422, 31.938564, 30.079800>,  <38.800915, 31.775076, 30.394846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.197422, 31.938564, 30.079800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.494389, 31.996851, 29.818239>,  <38.672569, 32.031822, 29.661303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.494389, 31.996851, 29.818239>,  <38.197422, 31.938564, 30.079800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.494389, 31.996851, 29.818239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625193, -0.200041, -0.754398,
		-0.240734, 0.968891, -0.057414,
		0.742415, 0.145715, -0.653901,
		38.717113, 32.040565, 29.622068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.972450, 32.399612, 29.733849>,  <38.197422, 31.938564, 30.079800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.972450, 32.399612, 29.733849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.247208, 32.213360, 29.510649>,  <38.412064, 32.101608, 29.376730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.247208, 32.213360, 29.510649>,  <37.972450, 32.399612, 29.733849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.247208, 32.213360, 29.510649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688179, -0.169905, -0.705367,
		0.233635, 0.868516, -0.437145,
		0.686895, -0.465632, -0.557998,
		38.453278, 32.073669, 29.343248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.871315, 32.659687, 29.125782>,  <37.972450, 32.399612, 29.733849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.871315, 32.659687, 29.125782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.020115, 32.291378, 29.078789>,  <38.109394, 32.070393, 29.050592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.020115, 32.291378, 29.078789>,  <37.871315, 32.659687, 29.125782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.020115, 32.291378, 29.078789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772199, -0.236742, -0.589629,
		0.515099, 0.310060, -0.799084,
		0.371998, -0.920769, -0.117482,
		38.131714, 32.015148, 29.043545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.302143, 32.655640, 28.558878>,  <37.871315, 32.659687, 29.125782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.302143, 32.655640, 28.558878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.462784, 32.296867, 28.484865>,  <38.559170, 32.081604, 28.440458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.462784, 32.296867, 28.484865>,  <38.302143, 32.655640, 28.558878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.462784, 32.296867, 28.484865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733368, -0.193952, -0.651579,
		0.548532, 0.397370, -0.735669,
		0.401602, -0.896928, -0.185030,
		38.583263, 32.027790, 28.429356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.288780, 32.504654, 27.774910>,  <38.302143, 32.655640, 28.558878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.288780, 32.504654, 27.774910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.263390, 32.178921, 28.005678>,  <38.248154, 31.983480, 28.144138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.263390, 32.178921, 28.005678>,  <38.288780, 32.504654, 27.774910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.263390, 32.178921, 28.005678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725020, -0.359618, -0.587385,
		0.685796, -0.455566, -0.567577,
		-0.063481, -0.814331, 0.576919,
		38.244347, 31.934622, 28.178755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.684685, 33.082611, 27.521137>,  <38.288780, 32.504654, 27.774910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.684685, 33.082611, 27.521137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.379646, 33.338451, 27.482437>,  <38.196625, 33.491955, 27.459217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.379646, 33.338451, 27.482437>,  <38.684685, 33.082611, 27.521137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.379646, 33.338451, 27.482437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466522, -0.647401, -0.602685,
		-0.448114, -0.414468, 0.792092,
		-0.762595, 0.639600, -0.096751,
		38.150867, 33.530331, 27.453411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.358894, 32.528198, 27.486958>,  <38.684685, 33.082611, 27.521137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.358894, 32.528198, 27.486958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.185062, 32.171005, 27.440102>,  <39.080765, 31.956690, 27.411989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.185062, 32.171005, 27.440102>,  <39.358894, 32.528198, 27.486958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.185062, 32.171005, 27.440102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855553, 0.449952, -0.256071,
		0.281374, -0.011065, -0.959534,
		-0.434578, -0.892984, -0.117138,
		39.054688, 31.903111, 27.404961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.006359, 32.526981, 27.831726>,  <39.358894, 32.528198, 27.486958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.006359, 32.526981, 27.831726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.111000, 32.272152, 27.541702>,  <40.173782, 32.119255, 27.367689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.111000, 32.272152, 27.541702>,  <40.006359, 32.526981, 27.831726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.111000, 32.272152, 27.541702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945027, 0.321762, 0.058247,
		0.196189, -0.700437, 0.686220,
		0.261598, -0.637069, -0.725058,
		40.189480, 32.081032, 27.324184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.648499, 32.227962, 28.061565>,  <40.006359, 32.526981, 27.831726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.648499, 32.227962, 28.061565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.648232, 32.171349, 27.665592>,  <40.648071, 32.137379, 27.428009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.648232, 32.171349, 27.665592>,  <40.648499, 32.227962, 28.061565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.648232, 32.171349, 27.665592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985036, 0.170522, -0.025042,
		0.172350, -0.975136, 0.139305,
		-0.000665, -0.141536, -0.989933,
		40.648033, 32.128887, 27.368612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.154434, 31.766016, 27.822952>,  <40.648499, 32.227962, 28.061565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.154434, 31.766016, 27.822952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.087601, 32.031616, 27.531422>,  <41.047501, 32.190975, 27.356504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.087601, 32.031616, 27.531422>,  <41.154434, 31.766016, 27.822952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.087601, 32.031616, 27.531422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907401, 0.392687, 0.149739,
		0.385627, -0.636317, -0.668126,
		-0.167083, 0.664001, -0.728825,
		41.037476, 32.230816, 27.312775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.914631, 31.664604, 27.430868>,  <41.154434, 31.766016, 27.822952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.914631, 31.664604, 27.430868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.698837, 31.995853, 27.369974>,  <41.569363, 32.194603, 27.333437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.698837, 31.995853, 27.369974>,  <41.914631, 31.664604, 27.430868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.698837, 31.995853, 27.369974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816704, 0.558633, 0.144649,
		0.204831, -0.046298, -0.977702,
		-0.539480, 0.828122, -0.152237,
		41.536995, 32.244289, 27.324303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.390606, 32.242020, 27.338844>,  <41.914631, 31.664604, 27.430868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.390606, 32.242020, 27.338844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.043400, 32.413227, 27.439514>,  <41.835075, 32.515953, 27.499916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.043400, 32.413227, 27.439514>,  <42.390606, 32.242020, 27.338844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.043400, 32.413227, 27.439514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496098, 0.768793, 0.403539,
		-0.020762, 0.475135, -0.879668,
		-0.868018, 0.428023, 0.251675,
		41.782993, 32.541634, 27.515017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.436268, 32.908276, 27.181351>,  <42.390606, 32.242020, 27.338844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.436268, 32.908276, 27.181351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.146622, 32.894222, 27.456865>,  <41.972836, 32.885788, 27.622175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.146622, 32.894222, 27.456865>,  <42.436268, 32.908276, 27.181351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.146622, 32.894222, 27.456865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438052, 0.747956, 0.498671,
		-0.532704, 0.662818, -0.526212,
		-0.724111, -0.035136, 0.688788,
		41.929390, 32.883682, 27.663502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.227074, 33.624668, 27.426252>,  <42.436268, 32.908276, 27.181351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.227074, 33.624668, 27.426252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.112305, 33.382137, 27.722914>,  <42.043442, 33.236618, 27.900909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.112305, 33.382137, 27.722914>,  <42.227074, 33.624668, 27.426252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.112305, 33.382137, 27.722914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593816, 0.494943, 0.634361,
		-0.751704, 0.622416, 0.218035,
		-0.286922, -0.606324, 0.741651,
		42.026230, 33.200241, 27.945410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.185589, 34.071133, 27.926165>,  <42.227074, 33.624668, 27.426252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.185589, 34.071133, 27.926165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.221474, 33.729401, 28.130938>,  <42.243004, 33.524361, 28.253801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.221474, 33.729401, 28.130938>,  <42.185589, 34.071133, 27.926165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.221474, 33.729401, 28.130938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558446, 0.468752, 0.684404,
		-0.824675, 0.224484, 0.519151,
		0.089715, -0.854329, 0.511931,
		42.248386, 33.473103, 28.284517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.770554, 34.164825, 28.626656>,  <42.185589, 34.071133, 27.926165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.770554, 34.164825, 28.626656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.043514, 33.872440, 28.624786>,  <42.207291, 33.697010, 28.623665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.043514, 33.872440, 28.624786>,  <41.770554, 34.164825, 28.626656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.043514, 33.872440, 28.624786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547304, 0.506683, 0.666131,
		-0.484551, -0.457125, 0.745820,
		0.682399, -0.730965, -0.004673,
		42.248234, 33.653152, 28.623384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.875603, 34.074936, 29.321150>,  <41.770554, 34.164825, 28.626656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.875603, 34.074936, 29.321150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.188519, 33.911362, 29.133198>,  <42.376270, 33.813217, 29.020426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.188519, 33.911362, 29.133198>,  <41.875603, 34.074936, 29.321150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.188519, 33.911362, 29.133198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620638, 0.447299, 0.643997,
		-0.053178, -0.795420, 0.603721,
		0.782292, -0.408938, -0.469881,
		42.423206, 33.788681, 28.992233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.324154, 33.828098, 29.820423>,  <41.875603, 34.074936, 29.321150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.324154, 33.828098, 29.820423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.569614, 33.820263, 29.504688>,  <42.716888, 33.815563, 29.315247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.569614, 33.820263, 29.504688>,  <42.324154, 33.828098, 29.820423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.569614, 33.820263, 29.504688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733619, 0.383792, 0.560808,
		0.291958, -0.923212, 0.249881,
		0.613648, -0.019585, -0.789338,
		42.753708, 33.814388, 29.267887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.821083, 33.506657, 30.027813>,  <42.324154, 33.828098, 29.820423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.821083, 33.506657, 30.027813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.979702, 33.694878, 29.712515>,  <43.074875, 33.807808, 29.523336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.979702, 33.694878, 29.712515>,  <42.821083, 33.506657, 30.027813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.979702, 33.694878, 29.712515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749720, 0.329521, 0.573878,
		0.529783, -0.818533, -0.222111,
		0.396548, 0.470551, -0.788246,
		43.098667, 33.836044, 29.476042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.421051, 33.215721, 29.857796>,  <42.821083, 33.506657, 30.027813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.421051, 33.215721, 29.857796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.463581, 33.591015, 29.726091>,  <43.489098, 33.816193, 29.647068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.463581, 33.591015, 29.726091>,  <43.421051, 33.215721, 29.857796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.463581, 33.591015, 29.726091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779426, 0.126972, 0.613493,
		0.617406, -0.321864, -0.717783,
		0.106323, 0.938233, -0.329263,
		43.495480, 33.872486, 29.627312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.087547, 33.301170, 29.800171>,  <43.421051, 33.215721, 29.857796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.087547, 33.301170, 29.800171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.932659, 33.667816, 29.839928>,  <43.839725, 33.887802, 29.863781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.932659, 33.667816, 29.839928>,  <44.087547, 33.301170, 29.800171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.932659, 33.667816, 29.839928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724438, 0.235798, 0.647756,
		0.570307, 0.322827, -0.755337,
		-0.387220, 0.916615, 0.099390,
		43.816494, 33.942802, 29.869745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.657753, 33.663677, 30.054939>,  <44.087547, 33.301170, 29.800171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.657753, 33.663677, 30.054939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.366695, 33.932777, 30.108534>,  <44.192062, 34.094238, 30.140690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.366695, 33.932777, 30.108534>,  <44.657753, 33.663677, 30.054939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.366695, 33.932777, 30.108534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535627, 0.435204, 0.723672,
		0.428537, 0.598338, -0.677014,
		-0.727640, 0.672747, 0.133985,
		44.148403, 34.134602, 30.148729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.015064, 34.267071, 30.151161>,  <44.657753, 33.663677, 30.054939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.015064, 34.267071, 30.151161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.654987, 34.333321, 30.312269>,  <44.438942, 34.373070, 30.408934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.654987, 34.333321, 30.312269>,  <45.015064, 34.267071, 30.151161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.654987, 34.333321, 30.312269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433588, 0.427273, 0.793372,
		-0.040689, 0.888823, -0.456441,
		-0.900192, 0.165626, 0.402768,
		44.384930, 34.383007, 30.433100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.120907, 34.817944, 30.574533>,  <45.015064, 34.267071, 30.151161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.120907, 34.817944, 30.574533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.778656, 34.657578, 30.705481>,  <44.573307, 34.561359, 30.784050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.778656, 34.657578, 30.705481>,  <45.120907, 34.817944, 30.574533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.778656, 34.657578, 30.705481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193536, 0.338795, 0.920740,
		-0.480051, 0.851166, -0.212290,
		-0.855626, -0.400916, 0.327370,
		44.521969, 34.537304, 30.803692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.780975, 35.334656, 31.070147>,  <45.120907, 34.817944, 30.574533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.780975, 35.334656, 31.070147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.617287, 34.986069, 31.178278>,  <44.519073, 34.776917, 31.243156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.617287, 34.986069, 31.178278>,  <44.780975, 35.334656, 31.070147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.617287, 34.986069, 31.178278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006814, 0.299185, 0.954171,
		-0.912408, 0.388629, -0.128372,
		-0.409225, -0.871468, 0.270330,
		44.494518, 34.724628, 31.259377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.450069, 35.413715, 31.754612>,  <44.780975, 35.334656, 31.070147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.450069, 35.413715, 31.754612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.467384, 35.014095, 31.752562>,  <44.477776, 34.774323, 31.751331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.467384, 35.014095, 31.752562>,  <44.450069, 35.413715, 31.754612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.467384, 35.014095, 31.752562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125184, 0.000336, 0.992134,
		-0.991189, -0.043591, 0.125079,
		0.043290, -0.999049, -0.005124,
		44.480370, 34.714382, 31.751024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.876987, 35.162788, 32.256180>,  <44.450069, 35.413715, 31.754612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.876987, 35.162788, 32.256180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.156944, 34.881905, 32.203949>,  <44.324921, 34.713375, 32.172611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.156944, 34.881905, 32.203949>,  <43.876987, 35.162788, 32.256180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.156944, 34.881905, 32.203949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113765, -0.070878, 0.990976,
		-0.705126, -0.708435, 0.030279,
		0.699896, -0.702208, -0.130573,
		44.366913, 34.671242, 32.164776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.725323, 34.633335, 32.647621>,  <43.876987, 35.162788, 32.256180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.725323, 34.633335, 32.647621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.107471, 34.526501, 32.597141>,  <44.336761, 34.462399, 32.566853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.107471, 34.526501, 32.597141>,  <43.725323, 34.633335, 32.647621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.107471, 34.526501, 32.597141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103058, -0.099030, 0.989733,
		-0.276842, -0.958571, -0.067085,
		0.955373, -0.267086, -0.126204,
		44.394085, 34.446377, 32.559280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.764492, 34.084713, 33.041042>,  <43.725323, 34.633335, 32.647621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.764492, 34.084713, 33.041042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.142403, 34.211895, 33.009315>,  <44.369148, 34.288204, 32.990280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.142403, 34.211895, 33.009315>,  <43.764492, 34.084713, 33.041042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.142403, 34.211895, 33.009315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166214, -0.256366, 0.952181,
		0.282422, -0.912786, -0.295059,
		0.944781, 0.317959, -0.079314,
		44.425838, 34.307281, 32.985519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.146370, 33.657814, 33.327480>,  <43.764492, 34.084713, 33.041042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.146370, 33.657814, 33.327480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.367371, 33.991089, 33.336742>,  <44.499969, 34.191055, 33.342300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.367371, 33.991089, 33.336742>,  <44.146370, 33.657814, 33.327480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.367371, 33.991089, 33.336742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225991, -0.176478, 0.958010,
		0.802292, -0.524068, -0.285798,
		0.552500, 0.833192, 0.023152,
		44.533119, 34.241047, 33.343689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.559044, 33.510384, 33.834549>,  <44.146370, 33.657814, 33.327480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.559044, 33.510384, 33.834549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.641808, 33.897713, 33.778629>,  <44.691467, 34.130108, 33.745079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.641808, 33.897713, 33.778629>,  <44.559044, 33.510384, 33.834549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.641808, 33.897713, 33.778629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164787, 0.106356, 0.980578,
		0.964382, -0.225931, -0.137560,
		0.206912, 0.968320, -0.139799,
		44.703880, 34.188210, 33.736691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.269695, 33.698364, 33.823093>,  <44.559044, 33.510384, 33.834549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.269695, 33.698364, 33.823093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.037941, 33.991863, 33.965038>,  <44.898888, 34.167965, 34.050205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.037941, 33.991863, 33.965038>,  <45.269695, 33.698364, 33.823093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.037941, 33.991863, 33.965038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303305, -0.210019, 0.929461,
		0.756519, 0.646145, -0.100869,
		-0.579383, 0.733749, 0.354863,
		44.864124, 34.211987, 34.071499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.709862, 34.056583, 34.214779>,  <45.269695, 33.698364, 33.823093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.709862, 34.056583, 34.214779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.331196, 34.100834, 34.335827>,  <45.103996, 34.127384, 34.408455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.331196, 34.100834, 34.335827>,  <45.709862, 34.056583, 34.214779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.331196, 34.100834, 34.335827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258154, -0.301609, 0.917817,
		0.192807, 0.946992, 0.256965,
		-0.946669, 0.110625, 0.302623,
		45.047195, 34.134022, 34.426613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.801968, 34.694313, 34.481750>,  <45.709862, 34.056583, 34.214779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.801968, 34.694313, 34.481750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.961655, 34.618412, 34.122948>,  <46.057468, 34.572872, 33.907665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.961655, 34.618412, 34.122948>,  <45.801968, 34.694313, 34.481750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.961655, 34.618412, 34.122948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736006, 0.649730, 0.190122,
		0.546734, -0.736101, 0.399046,
		0.399221, -0.189754, -0.897004,
		46.081421, 34.561485, 33.853848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.568787, 34.514084, 34.534775>,  <45.801968, 34.694313, 34.481750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.568787, 34.514084, 34.534775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.554012, 34.696651, 34.179176>,  <46.545147, 34.806190, 33.965816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.554012, 34.696651, 34.179176>,  <46.568787, 34.514084, 34.534775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.554012, 34.696651, 34.179176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693466, 0.652252, 0.306059,
		0.719543, -0.605187, -0.340597,
		-0.036932, 0.456415, -0.889000,
		46.542934, 34.833576, 33.912476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.000568, 35.123199, 34.564457>,  <46.568787, 34.514084, 34.534775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.000568, 35.123199, 34.564457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.256744, 35.428726, 34.596504>,  <47.410450, 35.612041, 34.615730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.256744, 35.428726, 34.596504>,  <47.000568, 35.123199, 34.564457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.256744, 35.428726, 34.596504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623665, 0.456360, 0.634647,
		0.448179, -0.456436, 0.768636,
		0.640451, 0.763808, 0.080132,
		47.448875, 35.657871, 34.620537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.588272, 34.718166, 34.378830>,  <47.000568, 35.123199, 34.564457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.588272, 34.718166, 34.378830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.773746, 34.862423, 34.702541>,  <47.885033, 34.948978, 34.896767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.773746, 34.862423, 34.702541>,  <47.588272, 34.718166, 34.378830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.773746, 34.862423, 34.702541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699399, -0.709725, -0.084450,
		0.543908, 0.605167, -0.581324,
		0.463686, 0.360644, 0.809278,
		47.912853, 34.970615, 34.945324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.621571, 41.042446, 46.822762> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.278011, 40.897991, 46.677505>,  <34.071877, 40.811317, 46.590351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.278011, 40.897991, 46.677505>,  <34.621571, 41.042446, 46.822762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.278011, 40.897991, 46.677505> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440916, -0.160683, -0.883048,
		0.260553, -0.918564, 0.297242,
		-0.858897, -0.361140, -0.363143,
		34.020344, 40.789650, 46.568562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.861107, 40.398121, 46.434116>,  <34.621571, 41.042446, 46.822762>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.861107, 40.398121, 46.434116> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.506199, 40.513618, 46.290241>,  <34.293255, 40.582916, 46.203915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.506199, 40.513618, 46.290241>,  <34.861107, 40.398121, 46.434116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.506199, 40.513618, 46.290241> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348510, -0.091151, -0.932862,
		-0.302150, -0.953056, -0.019757,
		-0.887269, 0.288749, -0.359691,
		34.240017, 40.600243, 46.182335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.870789, 40.046276, 45.876846>,  <34.861107, 40.398121, 46.434116>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.870789, 40.046276, 45.876846> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.567856, 40.295727, 45.799351>,  <34.386097, 40.445396, 45.752853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.567856, 40.295727, 45.799351>,  <34.870789, 40.046276, 45.876846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.567856, 40.295727, 45.799351> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134630, -0.141193, -0.980785,
		-0.639000, -0.768864, 0.022971,
		-0.757334, 0.623629, -0.193734,
		34.340656, 40.482815, 45.741230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.210712, 39.721687, 45.512608>,  <34.870789, 40.046276, 45.876846>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.210712, 39.721687, 45.512608> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.220451, 40.114620, 45.438393>,  <34.226295, 40.350380, 45.393864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.220451, 40.114620, 45.438393>,  <34.210712, 39.721687, 45.512608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.220451, 40.114620, 45.438393> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121542, -0.187121, -0.974789,
		-0.992287, 0.001182, -0.123951,
		0.024346, 0.982336, -0.185534,
		34.227757, 40.409321, 45.382732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.917770, 39.707207, 44.859833>,  <34.210712, 39.721687, 45.512608>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.917770, 39.707207, 44.859833> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.044331, 40.084084, 44.903965>,  <34.120266, 40.310207, 44.930443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.044331, 40.084084, 44.903965>,  <33.917770, 39.707207, 44.859833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.044331, 40.084084, 44.903965> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242783, 0.032003, -0.969552,
		-0.917031, 0.333553, -0.218622,
		0.316401, 0.942188, 0.110329,
		34.139252, 40.366741, 44.937065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.570236, 40.086887, 44.342884>,  <33.917770, 39.707207, 44.859833>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.570236, 40.086887, 44.342884> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.922726, 40.264702, 44.407162>,  <34.134220, 40.371391, 44.445728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.922726, 40.264702, 44.407162>,  <33.570236, 40.086887, 44.342884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.922726, 40.264702, 44.407162> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205076, -0.053256, -0.977296,
		-0.425890, 0.894174, -0.138095,
		0.881227, 0.444541, 0.160693,
		34.187096, 40.398064, 44.455368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.623299, 40.424919, 43.732800>,  <33.570236, 40.086887, 44.342884>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.623299, 40.424919, 43.732800> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.005894, 40.433872, 43.849163>,  <34.235451, 40.439243, 43.918980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.005894, 40.433872, 43.849163>,  <33.623299, 40.424919, 43.732800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.005894, 40.433872, 43.849163> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290342, -0.171380, -0.941451,
		0.028780, 0.984951, -0.170423,
		0.956490, 0.022386, 0.290905,
		34.292839, 40.440590, 43.936436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.066372, 40.932396, 43.278633>,  <33.623299, 40.424919, 43.732800>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.066372, 40.932396, 43.278633> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.331249, 40.681664, 43.442867>,  <34.490177, 40.531223, 43.541409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.331249, 40.681664, 43.442867>,  <34.066372, 40.932396, 43.278633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.331249, 40.681664, 43.442867> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418639, -0.144973, -0.896507,
		0.621479, 0.765552, 0.166414,
		0.662197, -0.626828, 0.410587,
		34.529907, 40.493614, 43.566044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.687576, 41.043144, 42.874706>,  <34.066372, 40.932396, 43.278633>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.687576, 41.043144, 42.874706> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.764454, 40.675514, 43.012318>,  <34.810581, 40.454937, 43.094887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.764454, 40.675514, 43.012318>,  <34.687576, 41.043144, 42.874706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.764454, 40.675514, 43.012318> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310213, -0.275692, -0.909815,
		0.931036, 0.281587, 0.232122,
		0.192198, -0.919077, 0.344031,
		34.822113, 40.399792, 43.115528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.334850, 40.820107, 42.622097>,  <34.687576, 41.043144, 42.874706>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.334850, 40.820107, 42.622097> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.133461, 40.481911, 42.693275>,  <35.012627, 40.278992, 42.735985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.133461, 40.481911, 42.693275>,  <35.334850, 40.820107, 42.622097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.133461, 40.481911, 42.693275> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384122, -0.403520, -0.830435,
		0.773929, -0.349746, 0.527931,
		-0.503472, -0.845488, 0.177951,
		34.982418, 40.228264, 42.746662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.773834, 40.312607, 42.515274>,  <35.334850, 40.820107, 42.622097>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.773834, 40.312607, 42.515274> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.420868, 40.133457, 42.457661>,  <35.209087, 40.025967, 42.423092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.420868, 40.133457, 42.457661>,  <35.773834, 40.312607, 42.515274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.420868, 40.133457, 42.457661> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424711, -0.626656, -0.653393,
		0.202374, -0.637742, 0.743190,
		-0.882420, -0.447870, -0.144037,
		35.156143, 39.999096, 42.414448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.845001, 39.605499, 42.635483>,  <35.773834, 40.312607, 42.515274>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.845001, 39.605499, 42.635483> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.518856, 39.629654, 42.405167>,  <35.323170, 39.644146, 42.266979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.518856, 39.629654, 42.405167>,  <35.845001, 39.605499, 42.635483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.518856, 39.629654, 42.405167> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460898, -0.534161, -0.708693,
		-0.350356, -0.843223, 0.407707,
		-0.815367, 0.060383, -0.575786,
		35.274246, 39.647770, 42.232430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.798962, 38.977093, 42.334663>,  <35.845001, 39.605499, 42.635483>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.798962, 38.977093, 42.334663> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.569592, 39.199734, 42.094204>,  <35.431969, 39.333317, 41.949928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.569592, 39.199734, 42.094204>,  <35.798962, 38.977093, 42.334663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.569592, 39.199734, 42.094204> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403114, -0.447108, -0.798494,
		-0.713221, -0.700208, 0.032009,
		-0.573424, 0.556599, -0.601151,
		35.397564, 39.366714, 41.913860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.499153, 38.505150, 41.807846>,  <35.798962, 38.977093, 42.334663>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.499153, 38.505150, 41.807846> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.484241, 38.879845, 41.668629>,  <35.475296, 39.104660, 41.585098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.484241, 38.879845, 41.668629>,  <35.499153, 38.505150, 41.807846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.484241, 38.879845, 41.668629> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414238, -0.302467, -0.858441,
		-0.909405, -0.176173, -0.376757,
		-0.037277, 0.936737, -0.348043,
		35.473057, 39.160866, 41.564217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.321999, 38.405457, 41.057213>,  <35.499153, 38.505150, 41.807846>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.321999, 38.405457, 41.057213> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.440182, 38.787430, 41.068520>,  <35.511093, 39.016613, 41.075302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.440182, 38.787430, 41.068520>,  <35.321999, 38.405457, 41.057213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.440182, 38.787430, 41.068520> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458169, -0.115668, -0.881307,
		-0.838324, 0.273340, -0.471698,
		0.295457, 0.954938, 0.028268,
		35.528820, 39.073910, 41.077000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.016689, 38.733112, 40.467262>,  <35.321999, 38.405457, 41.057213>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.016689, 38.733112, 40.467262> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.337460, 38.944351, 40.578991>,  <35.529922, 39.071095, 40.646027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.337460, 38.944351, 40.578991>,  <35.016689, 38.733112, 40.467262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.337460, 38.944351, 40.578991> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376927, -0.084510, -0.922380,
		-0.463502, 0.844967, -0.266826,
		0.801930, 0.528098, 0.279320,
		35.578037, 39.102779, 40.662788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.068642, 39.282379, 39.935154>,  <35.016689, 38.733112, 40.467262>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.068642, 39.282379, 39.935154> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.418762, 39.263851, 40.127697>,  <35.628834, 39.252735, 40.243225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.418762, 39.263851, 40.127697>,  <35.068642, 39.282379, 39.935154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.418762, 39.263851, 40.127697> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483575, 0.089636, -0.870701,
		-0.002819, 0.994897, 0.100857,
		0.875298, -0.046318, 0.481360,
		35.681351, 39.249954, 40.272106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.488525, 39.906746, 39.626602>,  <35.068642, 39.282379, 39.935154>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.488525, 39.906746, 39.626602> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.731953, 39.624100, 39.771011>,  <35.878010, 39.454514, 39.857658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.731953, 39.624100, 39.771011>,  <35.488525, 39.906746, 39.626602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.731953, 39.624100, 39.771011> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478951, -0.035645, -0.877118,
		0.632652, 0.706701, 0.316741,
		0.608570, -0.706614, 0.361026,
		35.914524, 39.412117, 39.879318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.227493, 40.116516, 39.366199>,  <35.488525, 39.906746, 39.626602>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.227493, 40.116516, 39.366199> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.261700, 39.734005, 39.478069>,  <36.282223, 39.504498, 39.545189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.261700, 39.734005, 39.478069>,  <36.227493, 40.116516, 39.366199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.261700, 39.734005, 39.478069> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546711, -0.189630, -0.815566,
		0.832944, 0.222640, 0.506593,
		0.085512, -0.956280, 0.279671,
		36.287354, 39.447121, 39.561970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.959396, 39.893776, 39.235390>,  <36.227493, 40.116516, 39.366199>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.959396, 39.893776, 39.235390> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.735226, 39.562737, 39.248062>,  <36.600723, 39.364113, 39.255665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.735226, 39.562737, 39.248062>,  <36.959396, 39.893776, 39.235390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.735226, 39.562737, 39.248062> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516507, -0.379157, -0.767763,
		0.647410, -0.413913, 0.639950,
		-0.560429, -0.827596, 0.031681,
		36.567097, 39.314457, 39.257565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.474514, 39.250072, 39.177124>,  <36.959396, 39.893776, 39.235390>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.474514, 39.250072, 39.177124> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.117653, 39.103813, 39.071018>,  <36.903538, 39.016056, 39.007355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.117653, 39.103813, 39.071018>,  <37.474514, 39.250072, 39.177124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.117653, 39.103813, 39.071018> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431001, -0.513158, -0.742231,
		0.135275, -0.776512, 0.615410,
		-0.892154, -0.365647, -0.265260,
		36.850006, 38.994118, 38.991440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.606579, 38.654060, 38.701603>,  <37.474514, 39.250072, 39.177124>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.606579, 38.654060, 38.701603> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.229168, 38.772449, 38.642063>,  <37.002720, 38.843483, 38.606339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.229168, 38.772449, 38.642063>,  <37.606579, 38.654060, 38.701603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.229168, 38.772449, 38.642063> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126009, -0.094918, -0.987478,
		-0.306398, -0.950468, 0.052262,
		-0.943527, 0.295976, -0.148850,
		36.946110, 38.861240, 38.597408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.838905, 37.926071, 38.689175>,  <37.606579, 38.654060, 38.701603>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.838905, 37.926071, 38.689175> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.214676, 37.806389, 38.756058>,  <38.440136, 37.734581, 38.796188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.214676, 37.806389, 38.756058>,  <37.838905, 37.926071, 38.689175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.214676, 37.806389, 38.756058> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144532, 0.096549, 0.984779,
		-0.310797, -0.949291, 0.047456,
		0.939424, -0.299207, 0.167210,
		38.496502, 37.716625, 38.806221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.744511, 37.457645, 39.174320>,  <37.838905, 37.926071, 38.689175>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.744511, 37.457645, 39.174320> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.121998, 37.582962, 39.216724>,  <38.348492, 37.658154, 39.242168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.121998, 37.582962, 39.216724>,  <37.744511, 37.457645, 39.174320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.121998, 37.582962, 39.216724> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170052, 0.184699, 0.967971,
		0.283680, -0.931522, 0.227581,
		0.943720, 0.313295, 0.106012,
		38.405113, 37.676952, 39.248528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.927956, 37.221973, 39.806732>,  <37.744511, 37.457645, 39.174320>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.927956, 37.221973, 39.806732> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.183109, 37.522739, 39.740139>,  <38.336201, 37.703201, 39.700184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.183109, 37.522739, 39.740139>,  <37.927956, 37.221973, 39.806732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.183109, 37.522739, 39.740139> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027444, 0.193847, 0.980648,
		0.769640, -0.630112, 0.103017,
		0.637888, 0.751919, -0.166485,
		38.374477, 37.748314, 39.690193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.458336, 37.131504, 40.306709>,  <37.927956, 37.221973, 39.806732>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.458336, 37.131504, 40.306709> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.459709, 37.507744, 40.170906>,  <38.460533, 37.733486, 40.089424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.459709, 37.507744, 40.170906>,  <38.458336, 37.131504, 40.306709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.459709, 37.507744, 40.170906> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087703, 0.337923, 0.937079,
		0.996141, -0.032995, -0.081332,
		0.003435, 0.940596, -0.339512,
		38.460739, 37.789921, 40.069054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.959484, 37.507809, 40.824230>,  <38.458336, 37.131504, 40.306709>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.959484, 37.507809, 40.824230> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.804333, 37.842163, 40.668877>,  <38.711243, 38.042778, 40.575665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.804333, 37.842163, 40.668877>,  <38.959484, 37.507809, 40.824230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.804333, 37.842163, 40.668877> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004881, 0.419501, 0.907741,
		0.921697, 0.353991, -0.158636,
		-0.387880, 0.835888, -0.388381,
		38.687969, 38.092930, 40.552361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.384327, 38.096004, 41.073616>,  <38.959484, 37.507809, 40.824230>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.384327, 38.096004, 41.073616> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.026955, 38.231266, 40.955338>,  <38.812531, 38.312424, 40.884373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.026955, 38.231266, 40.955338>,  <39.384327, 38.096004, 41.073616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.026955, 38.231266, 40.955338> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028702, 0.613941, 0.788830,
		0.448287, 0.713250, -0.538807,
		-0.893429, 0.338157, -0.295694,
		38.758926, 38.332714, 40.866631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.419907, 38.812424, 41.141857>,  <39.384327, 38.096004, 41.073616>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.419907, 38.812424, 41.141857> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.023010, 38.771740, 41.113274>,  <38.784870, 38.747330, 41.096123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.023010, 38.771740, 41.113274>,  <39.419907, 38.812424, 41.141857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.023010, 38.771740, 41.113274> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119895, 0.631496, 0.766053,
		-0.032790, 0.768680, -0.638793,
		-0.992245, -0.101707, -0.071454,
		38.725338, 38.741226, 41.091839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.145630, 39.489151, 41.161430>,  <39.419907, 38.812424, 41.141857>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.145630, 39.489151, 41.161430> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.862953, 39.233578, 41.282986>,  <38.693348, 39.080235, 41.355919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.862953, 39.233578, 41.282986>,  <39.145630, 39.489151, 41.161430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.862953, 39.233578, 41.282986> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251371, 0.628233, 0.736299,
		-0.661360, 0.443948, -0.604577,
		-0.706694, -0.638931, 0.303892,
		38.650944, 39.041897, 41.374153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.589947, 39.887234, 41.291340>,  <39.145630, 39.489151, 41.161430>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.589947, 39.887234, 41.291340> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.500633, 39.557560, 41.499519>,  <38.447044, 39.359756, 41.624428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.500633, 39.557560, 41.499519>,  <38.589947, 39.887234, 41.291340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.500633, 39.557560, 41.499519> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427080, 0.562671, 0.707817,
		-0.876212, -0.064232, -0.477625,
		-0.223282, -0.824182, 0.520452,
		38.433647, 39.310307, 41.655655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.871002, 39.952599, 41.524036>,  <38.589947, 39.887234, 41.291340>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.871002, 39.952599, 41.524036> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.036774, 39.668652, 41.751839>,  <38.136238, 39.498283, 41.888519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.036774, 39.668652, 41.751839>,  <37.871002, 39.952599, 41.524036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.036774, 39.668652, 41.751839> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431621, 0.397607, 0.809698,
		-0.801220, -0.581370, -0.141616,
		0.414427, -0.709871, 0.569503,
		38.161102, 39.455688, 41.922691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.338085, 39.672924, 41.859070>,  <37.871002, 39.952599, 41.524036>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.338085, 39.672924, 41.859070> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.648994, 39.563175, 42.085545>,  <37.835541, 39.497326, 42.221428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.648994, 39.563175, 42.085545>,  <37.338085, 39.672924, 41.859070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.648994, 39.563175, 42.085545> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499402, 0.278299, 0.820455,
		-0.382680, -0.920472, 0.079292,
		0.777273, -0.274374, 0.566185,
		37.882175, 39.480862, 42.255402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.973068, 39.381447, 42.363232>,  <37.338085, 39.672924, 41.859070>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.973068, 39.381447, 42.363232> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.329311, 39.477787, 42.517536>,  <37.543056, 39.535591, 42.610119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.329311, 39.477787, 42.517536>,  <36.973068, 39.381447, 42.363232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.329311, 39.477787, 42.517536> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419165, 0.105664, 0.901741,
		0.176427, -0.964792, 0.195063,
		0.890603, 0.240855, 0.385765,
		37.596493, 39.550041, 42.633266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.980278, 39.146297, 43.069931>,  <36.973068, 39.381447, 42.363232>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.980278, 39.146297, 43.069931> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.306427, 39.376907, 43.091068>,  <37.502117, 39.515274, 43.103752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.306427, 39.376907, 43.091068>,  <36.980278, 39.146297, 43.069931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.306427, 39.376907, 43.091068> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234573, 0.245539, 0.940577,
		0.529290, -0.779314, 0.335442,
		0.815369, 0.576524, 0.052845,
		37.551037, 39.549866, 43.106922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.432228, 38.998569, 43.762218>,  <36.980278, 39.146297, 43.069931>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.432228, 38.998569, 43.762218> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.509853, 39.371658, 43.640648>,  <37.556427, 39.595512, 43.567707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.509853, 39.371658, 43.640648>,  <37.432228, 38.998569, 43.762218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.509853, 39.371658, 43.640648> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381322, 0.357175, 0.852654,
		0.903844, -0.049574, 0.424982,
		0.194062, 0.932721, -0.303926,
		37.568073, 39.651474, 43.549469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.798885, 39.340935, 44.309158>,  <37.432228, 38.998569, 43.762218>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.798885, 39.340935, 44.309158> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.679256, 39.653732, 44.090416>,  <37.607479, 39.841412, 43.959171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.679256, 39.653732, 44.090416>,  <37.798885, 39.340935, 44.309158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.679256, 39.653732, 44.090416> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131717, 0.533768, 0.835310,
		0.945097, 0.321846, -0.056633,
		-0.299070, 0.781989, -0.546855,
		37.589535, 39.888329, 43.926361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.049297, 39.876869, 44.746578>,  <37.798885, 39.340935, 44.309158>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.049297, 39.876869, 44.746578> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.774712, 40.032867, 44.501083>,  <37.609962, 40.126469, 44.353786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.774712, 40.032867, 44.501083>,  <38.049297, 39.876869, 44.746578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.774712, 40.032867, 44.501083> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308826, 0.607753, 0.731616,
		0.658331, 0.691763, -0.296756,
		-0.686460, 0.390000, -0.613737,
		37.568775, 40.149868, 44.316963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.191322, 40.560257, 44.704163>,  <38.049297, 39.876869, 44.746578>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.191322, 40.560257, 44.704163> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.802410, 40.485363, 44.648132>,  <37.569065, 40.440426, 44.614513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.802410, 40.485363, 44.648132>,  <38.191322, 40.560257, 44.704163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.802410, 40.485363, 44.648132> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215766, 0.487479, 0.846055,
		-0.090122, 0.852824, -0.514363,
		-0.972277, -0.187231, -0.140078,
		37.510727, 40.429195, 44.606110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.930508, 41.111542, 45.064209>,  <38.191322, 40.560257, 44.704163>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.930508, 41.111542, 45.064209> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.618984, 40.869411, 44.998440>,  <37.432068, 40.724133, 44.958977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.618984, 40.869411, 44.998440>,  <37.930508, 41.111542, 45.064209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.618984, 40.869411, 44.998440> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518459, 0.473674, 0.711922,
		-0.353059, 0.639701, -0.682738,
		-0.778813, -0.605322, -0.164423,
		37.385342, 40.687817, 44.949112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.685692, 41.563633, 45.098614> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.736691, 41.167713, 45.124069>,  <36.767292, 40.930161, 45.139343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.736691, 41.167713, 45.124069>,  <36.685692, 41.563633, 45.098614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.736691, 41.167713, 45.124069> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641849, -0.033424, 0.766103,
		-0.756158, -0.138522, -0.639560,
		0.127499, -0.989795, 0.063636,
		36.774940, 40.870773, 45.143162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.963165, 41.317680, 45.173473>,  <36.685692, 41.563633, 45.098614>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.963165, 41.317680, 45.173473> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.240345, 41.072102, 45.324680>,  <36.406651, 40.924755, 45.415405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.240345, 41.072102, 45.324680>,  <35.963165, 41.317680, 45.173473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.240345, 41.072102, 45.324680> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523665, -0.068189, 0.849191,
		-0.495583, -0.786395, -0.368755,
		0.692945, -0.613948, 0.378014,
		36.448227, 40.887917, 45.438084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.598049, 40.737202, 45.557514>,  <35.963165, 41.317680, 45.173473>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.598049, 40.737202, 45.557514> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.962158, 40.737720, 45.723122>,  <36.180622, 40.738033, 45.822487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.962158, 40.737720, 45.723122>,  <35.598049, 40.737202, 45.557514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.962158, 40.737720, 45.723122> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402175, -0.234677, 0.884976,
		0.098311, -0.972073, -0.213096,
		0.910269, 0.001301, 0.414014,
		36.235241, 40.738110, 45.847324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.598705, 40.170261, 46.068810>,  <35.598049, 40.737202, 45.557514>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.598705, 40.170261, 46.068810> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.947231, 40.338654, 46.169670>,  <36.156349, 40.439690, 46.230186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.947231, 40.338654, 46.169670>,  <35.598705, 40.170261, 46.068810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.947231, 40.338654, 46.169670> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169744, -0.223553, 0.959797,
		0.460427, -0.879089, -0.123327,
		0.871317, 0.420982, 0.252150,
		36.208626, 40.464947, 46.245316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.934254, 39.640575, 46.488647>,  <35.598705, 40.170261, 46.068810>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.934254, 39.640575, 46.488647> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.091236, 39.990795, 46.601349>,  <36.185425, 40.200928, 46.668968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.091236, 39.990795, 46.601349>,  <35.934254, 39.640575, 46.488647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.091236, 39.990795, 46.601349> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155045, -0.238969, 0.958569,
		0.906609, -0.419881, 0.041965,
		0.392457, 0.875553, 0.281752,
		36.208973, 40.253460, 46.685875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.455002, 39.516327, 46.851234>,  <35.934254, 39.640575, 46.488647>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.455002, 39.516327, 46.851234> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.352486, 39.885502, 46.966125>,  <36.290977, 40.107006, 47.035061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.352486, 39.885502, 46.966125>,  <36.455002, 39.516327, 46.851234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.352486, 39.885502, 46.966125> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060976, -0.281126, 0.957732,
		0.964676, 0.262968, 0.015772,
		-0.256287, 0.922939, 0.287230,
		36.275600, 40.162384, 47.052296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.768070, 39.635063, 47.526623>,  <36.455002, 39.516327, 46.851234>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.768070, 39.635063, 47.526623> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.512596, 39.942749, 47.518742>,  <36.359310, 40.127361, 47.514011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.512596, 39.942749, 47.518742>,  <36.768070, 39.635063, 47.526623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.512596, 39.942749, 47.518742> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120117, -0.074374, 0.989970,
		0.760032, 0.634649, 0.139898,
		-0.638688, 0.769213, -0.019705,
		36.320992, 40.173512, 47.512829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.089642, 40.047493, 48.000305>,  <36.768070, 39.635063, 47.526623>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.089642, 40.047493, 48.000305> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.712563, 40.178345, 47.974075>,  <36.486313, 40.256855, 47.958336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.712563, 40.178345, 47.974075>,  <37.089642, 40.047493, 48.000305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.712563, 40.178345, 47.974075> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053407, 0.046048, 0.997510,
		0.329339, 0.943855, -0.025938,
		-0.942700, 0.327134, -0.065574,
		36.429752, 40.276485, 47.954403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.088623, 40.620148, 48.347519>,  <37.089642, 40.047493, 48.000305>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.088623, 40.620148, 48.347519> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.706966, 40.500500, 48.342789>,  <36.477974, 40.428711, 48.339951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.706966, 40.500500, 48.342789>,  <37.088623, 40.620148, 48.347519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.706966, 40.500500, 48.342789> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058767, 0.148439, 0.987174,
		-0.293532, 0.942598, -0.159210,
		-0.954141, -0.299123, -0.011823,
		36.420723, 40.410763, 48.339241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.704033, 41.152542, 48.724991>,  <37.088623, 40.620148, 48.347519>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.704033, 41.152542, 48.724991> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.445473, 40.847679, 48.739315>,  <36.290337, 40.664761, 48.747910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.445473, 40.847679, 48.739315>,  <36.704033, 41.152542, 48.724991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.445473, 40.847679, 48.739315> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069287, 0.105371, 0.992016,
		-0.759844, 0.638761, -0.120920,
		-0.646403, -0.762156, 0.035808,
		36.251553, 40.619034, 48.750057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.223835, 41.363323, 49.282246>,  <36.704033, 41.152542, 48.724991>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.223835, 41.363323, 49.282246> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.172909, 40.968777, 49.240536>,  <36.142353, 40.732048, 49.215511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.172909, 40.968777, 49.240536>,  <36.223835, 41.363323, 49.282246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.172909, 40.968777, 49.240536> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011734, -0.106622, 0.994230,
		-0.991793, 0.125353, 0.025148,
		-0.127311, -0.986366, -0.104276,
		36.134716, 40.672867, 49.209251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.725620, 41.202469, 49.719723>,  <36.223835, 41.363323, 49.282246>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.725620, 41.202469, 49.719723> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.941917, 40.873856, 49.647415>,  <36.071697, 40.676689, 49.604031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.941917, 40.873856, 49.647415>,  <35.725620, 41.202469, 49.719723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.941917, 40.873856, 49.647415> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025140, -0.199015, 0.979674,
		-0.840810, -0.534299, -0.086963,
		0.540746, -0.821534, -0.180766,
		36.104141, 40.627396, 49.593185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.376534, 40.644154, 50.074875>,  <35.725620, 41.202469, 49.719723>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.376534, 40.644154, 50.074875> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.746490, 40.500900, 50.023800>,  <35.968464, 40.414948, 49.993156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.746490, 40.500900, 50.023800>,  <35.376534, 40.644154, 50.074875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.746490, 40.500900, 50.023800> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045507, -0.229138, 0.972329,
		-0.377486, -0.905115, -0.195631,
		0.924897, -0.358138, -0.127686,
		36.023960, 40.393459, 49.985493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.421562, 40.022003, 50.463768>,  <35.376534, 40.644154, 50.074875>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.421562, 40.022003, 50.463768> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.799496, 40.128338, 50.387230>,  <36.026257, 40.192139, 50.341309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.799496, 40.128338, 50.387230>,  <35.421562, 40.022003, 50.463768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.799496, 40.128338, 50.387230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249045, -0.203646, 0.946839,
		0.212742, -0.942262, -0.258619,
		0.944837, 0.265841, -0.191341,
		36.082947, 40.208092, 50.329826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.810417, 39.575073, 50.923286>,  <35.421562, 40.022003, 50.463768>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.810417, 39.575073, 50.923286> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.072845, 39.859596, 50.822399>,  <36.230301, 40.030312, 50.761868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.072845, 39.859596, 50.822399>,  <35.810417, 39.575073, 50.923286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.072845, 39.859596, 50.822399> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398975, -0.043218, 0.915943,
		0.640619, -0.701549, -0.312149,
		0.656069, 0.711310, -0.252214,
		36.269665, 40.072990, 50.746735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.493813, 39.319904, 50.900700>,  <35.810417, 39.575073, 50.923286>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.493813, 39.319904, 50.900700> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.513378, 39.710361, 50.985325>,  <36.525116, 39.944633, 51.036098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.513378, 39.710361, 50.985325>,  <36.493813, 39.319904, 50.900700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.513378, 39.710361, 50.985325> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433337, -0.211581, 0.876044,
		0.899904, 0.048828, -0.433346,
		0.048912, 0.976140, 0.211562,
		36.528053, 40.003204, 51.048794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.910057, 39.280117, 51.451740>,  <36.493813, 39.319904, 50.900700>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.910057, 39.280117, 51.451740> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.804394, 39.665382, 51.471893>,  <36.740993, 39.896542, 51.483986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.804394, 39.665382, 51.471893>,  <36.910057, 39.280117, 51.451740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.804394, 39.665382, 51.471893> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325159, 0.039756, 0.944823,
		0.908014, 0.265970, -0.323683,
		-0.264163, 0.963161, 0.050384,
		36.725143, 39.954330, 51.487007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.468990, 39.603008, 51.685158>,  <36.910057, 39.280117, 51.451740>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.468990, 39.603008, 51.685158> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.151543, 39.830933, 51.770458>,  <36.961075, 39.967690, 51.821640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.151543, 39.830933, 51.770458>,  <37.468990, 39.603008, 51.685158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.151543, 39.830933, 51.770458> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293699, 0.051837, 0.954491,
		0.532828, 0.820137, -0.208493,
		-0.793622, 0.569814, 0.213253,
		36.913456, 40.001877, 51.834435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.742302, 40.161766, 52.241970>,  <37.468990, 39.603008, 51.685158>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.742302, 40.161766, 52.241970> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.342545, 40.155758, 52.254482>,  <37.102688, 40.152153, 52.261990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.342545, 40.155758, 52.254482>,  <37.742302, 40.161766, 52.241970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.342545, 40.155758, 52.254482> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031173, 0.007607, 0.999485,
		-0.015246, 0.999858, -0.007135,
		-0.999398, -0.015016, 0.031285,
		37.042725, 40.151253, 52.263866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.429539, 40.726749, 52.591312>,  <37.742302, 40.161766, 52.241970>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.429539, 40.726749, 52.591312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.163670, 40.430901, 52.633602>,  <37.004150, 40.253391, 52.658978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.163670, 40.430901, 52.633602>,  <37.429539, 40.726749, 52.591312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.163670, 40.430901, 52.633602> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126950, 0.027646, 0.991524,
		-0.736273, 0.672457, 0.075519,
		-0.664669, -0.739619, 0.105724,
		36.964268, 40.209015, 52.665318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.286640, 40.818913, 53.244438>,  <37.429539, 40.726749, 52.591312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.286640, 40.818913, 53.244438> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.115314, 40.462349, 53.185200>,  <37.012520, 40.248409, 53.149658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.115314, 40.462349, 53.185200>,  <37.286640, 40.818913, 53.244438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.115314, 40.462349, 53.185200> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045084, -0.142603, 0.988752,
		-0.902503, 0.430177, 0.020891,
		-0.428318, -0.891410, -0.148094,
		36.986820, 40.194927, 53.140770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.862659, 40.743118, 53.794926>,  <37.286640, 40.818913, 53.244438>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.862659, 40.743118, 53.794926> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.923527, 40.362675, 53.687424>,  <36.960045, 40.134407, 53.622925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.923527, 40.362675, 53.687424>,  <36.862659, 40.743118, 53.794926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.923527, 40.362675, 53.687424> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152222, -0.291228, 0.944465,
		-0.976562, -0.102806, -0.189096,
		0.152166, -0.951114, -0.268753,
		36.969177, 40.077339, 53.606796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.873260, 40.327774, 54.400955>,  <36.862659, 40.743118, 53.794926>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.873260, 40.327774, 54.400955> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.646938, 40.105003, 54.644165>,  <36.511147, 39.971340, 54.790092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.646938, 40.105003, 54.644165>,  <36.873260, 40.327774, 54.400955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.646938, 40.105003, 54.644165> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263604, 0.820890, 0.506610,
		-0.781269, 0.126363, -0.611270,
		-0.565802, -0.556931, 0.608026,
		36.477200, 39.937923, 54.826572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.200642, 40.666847, 54.418797>,  <36.873260, 40.327774, 54.400955>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.200642, 40.666847, 54.418797> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.259022, 40.439583, 54.742748>,  <36.294048, 40.303226, 54.937119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.259022, 40.439583, 54.742748>,  <36.200642, 40.666847, 54.418797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.259022, 40.439583, 54.742748> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079509, 0.809256, 0.582051,
		-0.986092, -0.149341, 0.072935,
		0.145947, -0.568157, 0.809875,
		36.302807, 40.269135, 54.985710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.557354, 40.274376, 54.198891>,  <36.200642, 40.666847, 54.418797>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.557354, 40.274376, 54.198891> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.198982, 40.372494, 54.347023>,  <34.983959, 40.431366, 54.435902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.198982, 40.372494, 54.347023>,  <35.557354, 40.274376, 54.198891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.198982, 40.372494, 54.347023> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399529, -0.080610, -0.913170,
		-0.194146, -0.966091, 0.170224,
		-0.895926, 0.245297, 0.370331,
		34.930202, 40.446083, 54.458122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.089428, 39.800983, 53.857281>,  <35.557354, 40.274376, 54.198891>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.089428, 39.800983, 53.857281> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.846016, 40.095615, 53.975365>,  <34.699970, 40.272392, 54.046215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.846016, 40.095615, 53.975365>,  <35.089428, 39.800983, 53.857281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.846016, 40.095615, 53.975365> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566333, -0.142545, -0.811756,
		-0.555841, -0.661161, 0.503891,
		-0.608528, 0.736578, 0.295205,
		34.663456, 40.316589, 54.063927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.540012, 39.550304, 53.749012>,  <35.089428, 39.800983, 53.857281>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.540012, 39.550304, 53.749012> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.459236, 39.941883, 53.760853>,  <34.410770, 40.176830, 53.767960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.459236, 39.941883, 53.760853>,  <34.540012, 39.550304, 53.749012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.459236, 39.941883, 53.760853> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619644, -0.104292, -0.777923,
		-0.758461, -0.175437, 0.627661,
		-0.201936, 0.978951, 0.029607,
		34.398655, 40.235569, 53.769733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.804523, 39.625385, 53.812752>,  <34.540012, 39.550304, 53.749012>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.804523, 39.625385, 53.812752> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.940304, 39.968197, 53.657692>,  <34.021770, 40.173885, 53.564655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.940304, 39.968197, 53.657692>,  <33.804523, 39.625385, 53.812752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.940304, 39.968197, 53.657692> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643757, -0.088810, -0.760058,
		-0.685821, 0.507554, 0.521573,
		0.339450, 0.857030, -0.387650,
		34.042137, 40.225307, 53.541397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.287296, 39.884865, 53.471020>,  <33.804523, 39.625385, 53.812752>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.287296, 39.884865, 53.471020> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.578495, 40.105923, 53.308731>,  <33.753212, 40.238556, 53.211357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.578495, 40.105923, 53.308731>,  <33.287296, 39.884865, 53.471020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.578495, 40.105923, 53.308731> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471737, -0.025638, -0.881366,
		-0.497483, 0.833023, 0.242038,
		0.727993, 0.552643, -0.405723,
		33.796894, 40.271717, 53.187016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.941261, 40.312977, 53.006721>,  <33.287296, 39.884865, 53.471020>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.941261, 40.312977, 53.006721> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.318581, 40.323219, 52.874340>,  <33.544971, 40.329365, 52.794910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.318581, 40.323219, 52.874340>,  <32.941261, 40.312977, 53.006721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.318581, 40.323219, 52.874340> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328436, -0.072534, -0.941737,
		-0.048124, 0.997037, -0.060009,
		0.943299, 0.025611, -0.330954,
		33.601570, 40.330902, 52.775055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.966156, 40.821026, 52.378986>,  <32.941261, 40.312977, 53.006721>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.966156, 40.821026, 52.378986> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.277874, 40.573399, 52.340084>,  <33.464905, 40.424824, 52.316742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.277874, 40.573399, 52.340084>,  <32.966156, 40.821026, 52.378986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.277874, 40.573399, 52.340084> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131296, -0.009537, -0.991297,
		0.612751, 0.785281, -0.088713,
		0.779293, -0.619066, -0.097260,
		33.511662, 40.387680, 52.310905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.961990, 40.829884, 51.700069>,  <32.966156, 40.821026, 52.378986>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.961990, 40.829884, 51.700069> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.272324, 40.584385, 51.758572>,  <33.458527, 40.437084, 51.793671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.272324, 40.584385, 51.758572>,  <32.961990, 40.829884, 51.700069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.272324, 40.584385, 51.758572> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117574, -0.087105, -0.989237,
		0.619881, 0.784683, 0.004581,
		0.775838, -0.613747, 0.146253,
		33.505074, 40.400261, 51.802448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.603107, 41.128841, 51.406265>,  <32.961990, 40.829884, 51.700069>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.603107, 41.128841, 51.406265> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.636700, 40.730282, 51.411060>,  <33.656857, 40.491146, 51.413937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.636700, 40.730282, 51.411060>,  <33.603107, 41.128841, 51.406265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.636700, 40.730282, 51.411060> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068421, -0.006237, -0.997637,
		0.994115, 0.084605, 0.067650,
		0.083983, -0.996395, 0.011989,
		33.661896, 40.431362, 51.414658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.290916, 40.911915, 50.963631>,  <33.603107, 41.128841, 51.406265>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.290916, 40.911915, 50.963631> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.063438, 40.585186, 51.002380>,  <33.926952, 40.389149, 51.025631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.063438, 40.585186, 51.002380>,  <34.290916, 40.911915, 50.963631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.063438, 40.585186, 51.002380> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037831, -0.143623, -0.988909,
		0.821678, -0.558722, 0.112579,
		-0.568695, -0.816824, 0.096875,
		33.892830, 40.340137, 51.031445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.670902, 40.302998, 50.593555>,  <34.290916, 40.911915, 50.963631>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.670902, 40.302998, 50.593555> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.278439, 40.225983, 50.599854>,  <34.042961, 40.179771, 50.603634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.278439, 40.225983, 50.599854>,  <34.670902, 40.302998, 50.593555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.278439, 40.225983, 50.599854> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013503, -0.149671, -0.988644,
		0.192713, -0.969808, 0.149451,
		-0.981162, -0.192542, 0.015749,
		33.984089, 40.168221, 50.604580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.638645, 39.732136, 50.139503>,  <34.670902, 40.302998, 50.593555>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.638645, 39.732136, 50.139503> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.289951, 39.927887, 50.149151>,  <34.080734, 40.045338, 50.154942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.289951, 39.927887, 50.149151>,  <34.638645, 39.732136, 50.139503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.289951, 39.927887, 50.149151> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053283, -0.045744, -0.997531,
		-0.487068, -0.870870, 0.065952,
		-0.871737, 0.489379, 0.024122,
		34.028431, 40.074699, 50.156387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.265472, 39.483570, 49.540474>,  <34.638645, 39.732136, 50.139503>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.265472, 39.483570, 49.540474> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.040531, 39.796093, 49.648785>,  <33.905567, 39.983608, 49.713772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.040531, 39.796093, 49.648785>,  <34.265472, 39.483570, 49.540474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.040531, 39.796093, 49.648785> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257904, 0.145405, -0.955166,
		-0.785652, -0.606971, 0.119734,
		-0.562348, 0.781309, 0.270778,
		33.871826, 40.030487, 49.730019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.646275, 39.399837, 49.168358>,  <34.265472, 39.483570, 49.540474>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.646275, 39.399837, 49.168358> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.670731, 39.786217, 49.268929>,  <33.685406, 40.018044, 49.329269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.670731, 39.786217, 49.268929>,  <33.646275, 39.399837, 49.168358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.670731, 39.786217, 49.268929> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437351, 0.252354, -0.863158,
		-0.897210, -0.057188, 0.437886,
		0.061140, 0.965943, 0.251426,
		33.689072, 40.076000, 49.344357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.030518, 39.616474, 49.003067>,  <33.646275, 39.399837, 49.168358>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.030518, 39.616474, 49.003067> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.285999, 39.924210, 48.997906>,  <33.439289, 40.108852, 48.994808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.285999, 39.924210, 48.997906>,  <33.030518, 39.616474, 49.003067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.285999, 39.924210, 48.997906> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395566, 0.313924, -0.863122,
		-0.659987, 0.556384, 0.504831,
		0.638706, 0.769343, -0.012901,
		33.477612, 40.155014, 48.994034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.703232, 40.188423, 48.677269>,  <33.030518, 39.616474, 49.003067>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.703232, 40.188423, 48.677269> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.079811, 40.312935, 48.625446>,  <33.305759, 40.387642, 48.594353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.079811, 40.312935, 48.625446>,  <32.703232, 40.188423, 48.677269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.079811, 40.312935, 48.625446> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229686, 0.310812, -0.922302,
		-0.246830, 0.898053, 0.364110,
		0.941445, 0.311283, -0.129552,
		33.362244, 40.406319, 48.586582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.654289, 40.862930, 48.262505>,  <32.703232, 40.188423, 48.677269>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.654289, 40.862930, 48.262505> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.018398, 40.706760, 48.207405>,  <33.236862, 40.613060, 48.174343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.018398, 40.706760, 48.207405>,  <32.654289, 40.862930, 48.262505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.018398, 40.706760, 48.207405> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064364, 0.462131, -0.884473,
		0.408978, 0.796244, 0.445794,
		0.910272, -0.390423, -0.137751,
		33.291481, 40.589634, 48.166080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.967537, 41.315742, 47.808380>,  <32.654289, 40.862930, 48.262505>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.967537, 41.315742, 47.808380> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.207626, 41.004997, 47.732262>,  <33.351681, 40.818550, 47.686592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.207626, 41.004997, 47.732262>,  <32.967537, 41.315742, 47.808380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.207626, 41.004997, 47.732262> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211547, 0.383640, -0.898926,
		0.771347, 0.499303, 0.394614,
		0.600226, -0.776863, -0.190294,
		33.387695, 40.771938, 47.675175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.408474, 41.631653, 47.193649>,  <32.967537, 41.315742, 47.808380>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.408474, 41.631653, 47.193649> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.464840, 41.235954, 47.177937>,  <33.498661, 40.998535, 47.168507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.464840, 41.235954, 47.177937>,  <33.408474, 41.631653, 47.193649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.464840, 41.235954, 47.177937> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467833, 0.101507, -0.877968,
		0.872511, 0.105341, 0.477104,
		0.140915, -0.989242, -0.039284,
		33.507114, 40.939182, 47.166153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.178402, 41.604538, 46.970993>,  <33.408474, 41.631653, 47.193649>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.178402, 41.604538, 46.970993> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.976891, 41.265423, 46.904701>,  <33.855984, 41.061954, 46.864925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.976891, 41.265423, 46.904701>,  <34.178402, 41.604538, 46.970993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.976891, 41.265423, 46.904701> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451298, -0.094715, -0.887332,
		0.736570, -0.521814, 0.430319,
		-0.503780, -0.847785, -0.165729,
		33.825756, 41.011086, 46.854984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<39.423676, 31.477036, 28.772629> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.128338, 31.678869, 28.951622>,  <38.951134, 31.799971, 29.059017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.128338, 31.678869, 28.951622>,  <39.423676, 31.477036, 28.772629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.128338, 31.678869, 28.951622> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671919, 0.607490, 0.423652,
		-0.058072, 0.613473, -0.787578,
		-0.738344, 0.504586, 0.447482,
		38.906834, 31.830246, 29.085867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.668789, 32.196972, 28.794012>,  <39.423676, 31.477036, 28.772629>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.668789, 32.196972, 28.794012> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.367168, 32.171391, 29.055489>,  <39.186195, 32.156040, 29.212376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.367168, 32.171391, 29.055489>,  <39.668789, 32.196972, 28.794012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.367168, 32.171391, 29.055489> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569872, 0.431145, 0.699543,
		-0.326575, 0.900013, -0.288661,
		-0.754052, -0.063953, 0.653694,
		39.140953, 32.152206, 29.251596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.480938, 32.964794, 28.984329>,  <39.668789, 32.196972, 28.794012>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.480938, 32.964794, 28.984329> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.385170, 32.692642, 29.261389>,  <39.327709, 32.529350, 29.427624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.385170, 32.692642, 29.261389>,  <39.480938, 32.964794, 28.984329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.385170, 32.692642, 29.261389> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626206, 0.436979, 0.645690,
		-0.741987, 0.588332, 0.321436,
		-0.239419, -0.680378, 0.692650,
		39.313343, 32.488529, 29.469183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.462799, 33.405315, 29.625351>,  <39.480938, 32.964794, 28.984329>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.462799, 33.405315, 29.625351> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.477058, 33.031414, 29.766758>,  <39.485615, 32.807076, 29.851603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.477058, 33.031414, 29.766758>,  <39.462799, 33.405315, 29.625351>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.477058, 33.031414, 29.766758> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550237, 0.313651, 0.773862,
		-0.834247, 0.166933, 0.525513,
		0.035645, -0.934749, 0.353516,
		39.487751, 32.750988, 29.872812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.548458, 33.484562, 30.303192>,  <39.462799, 33.405315, 29.625351>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.548458, 33.484562, 30.303192> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.637474, 33.096344, 30.266281>,  <39.690884, 32.863415, 30.244135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.637474, 33.096344, 30.266281>,  <39.548458, 33.484562, 30.303192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.637474, 33.096344, 30.266281> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516486, 0.037089, 0.855492,
		-0.826872, -0.238046, 0.509527,
		0.222544, -0.970546, -0.092279,
		39.704239, 32.805180, 30.238598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.452953, 33.196514, 30.941088>,  <39.548458, 33.484562, 30.303192>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.452953, 33.196514, 30.941088> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.715912, 32.971870, 30.740124>,  <39.873688, 32.837086, 30.619545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.715912, 32.971870, 30.740124>,  <39.452953, 33.196514, 30.941088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.715912, 32.971870, 30.740124> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654087, 0.094235, 0.750527,
		-0.374159, -0.822018, 0.429292,
		0.657401, -0.561611, -0.502412,
		39.913132, 32.803387, 30.589399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.624451, 32.688900, 31.350273>,  <39.452953, 33.196514, 30.941088>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.624451, 32.688900, 31.350273> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.931267, 32.724472, 31.096113>,  <40.115356, 32.745815, 30.943617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.931267, 32.724472, 31.096113>,  <39.624451, 32.688900, 31.350273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.931267, 32.724472, 31.096113> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630507, 0.078824, 0.772170,
		0.118753, -0.992914, 0.004392,
		0.767045, 0.088929, -0.635400,
		40.161381, 32.751152, 30.905493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.105492, 32.218719, 31.601913>,  <39.624451, 32.688900, 31.350273>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.105492, 32.218719, 31.601913> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.329823, 32.442207, 31.357517>,  <40.464420, 32.576298, 31.210878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.329823, 32.442207, 31.357517>,  <40.105492, 32.218719, 31.601913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.329823, 32.442207, 31.357517> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657281, 0.148288, 0.738913,
		0.503445, -0.815995, -0.284069,
		0.560825, 0.558716, -0.610993,
		40.498070, 32.609821, 31.174219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.732399, 32.048244, 31.825020>,  <40.105492, 32.218719, 31.601913>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.732399, 32.048244, 31.825020> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.793659, 32.387157, 31.621586>,  <40.830418, 32.590504, 31.499525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.793659, 32.387157, 31.621586>,  <40.732399, 32.048244, 31.825020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.793659, 32.387157, 31.621586> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670810, 0.288779, 0.683096,
		0.725643, -0.445783, -0.524137,
		0.153153, 0.847280, -0.508587,
		40.839603, 32.641342, 31.469009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.490601, 32.076900, 31.788507>,  <40.732399, 32.048244, 31.825020>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.490601, 32.076900, 31.788507> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.331493, 32.441841, 31.749748>,  <41.236027, 32.660805, 31.726492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.331493, 32.441841, 31.749748>,  <41.490601, 32.076900, 31.788507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.331493, 32.441841, 31.749748> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492968, 0.301603, 0.816099,
		0.773795, 0.276854, -0.569730,
		-0.397773, 0.912353, -0.096899,
		41.212162, 32.715546, 31.720678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.057301, 32.577431, 31.858778>,  <41.490601, 32.076900, 31.788507>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.057301, 32.577431, 31.858778> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.719917, 32.779724, 31.931244>,  <41.517487, 32.901100, 31.974724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.719917, 32.779724, 31.931244>,  <42.057301, 32.577431, 31.858778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.719917, 32.779724, 31.931244> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464401, 0.516921, 0.719114,
		0.270031, 0.690672, -0.670861,
		-0.843454, 0.505732, 0.181164,
		41.466881, 32.931442, 31.985594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.383678, 33.231400, 31.903343>,  <42.057301, 32.577431, 31.858778>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.383678, 33.231400, 31.903343> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.024231, 33.266697, 32.075253>,  <41.808563, 33.287876, 32.178398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.024231, 33.266697, 32.075253>,  <42.383678, 33.231400, 31.903343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.024231, 33.266697, 32.075253> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402810, 0.554152, 0.728464,
		-0.173878, 0.827725, -0.533514,
		-0.898616, 0.088241, 0.429771,
		41.754646, 33.293171, 32.204185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.390507, 33.937000, 32.076725>,  <42.383678, 33.231400, 31.903343>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.390507, 33.937000, 32.076725> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.091557, 33.782372, 32.292870>,  <41.912186, 33.689594, 32.422554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.091557, 33.782372, 32.292870>,  <42.390507, 33.937000, 32.076725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.091557, 33.782372, 32.292870> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140557, 0.702900, 0.697263,
		-0.649362, 0.597070, -0.470995,
		-0.747377, -0.386575, 0.540359,
		41.867344, 33.666401, 32.454979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.958977, 34.497250, 32.374214>,  <42.390507, 33.937000, 32.076725>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.958977, 34.497250, 32.374214> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.854023, 34.194435, 32.613564>,  <41.791050, 34.012745, 32.757172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.854023, 34.194435, 32.613564>,  <41.958977, 34.497250, 32.374214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.854023, 34.194435, 32.613564> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131336, 0.586314, 0.799367,
		-0.955984, 0.288330, -0.054414,
		-0.262385, -0.757035, 0.598374,
		41.775307, 33.967323, 32.793076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.500496, 34.738762, 32.902859>,  <41.958977, 34.497250, 32.374214>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.500496, 34.738762, 32.902859> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.643211, 34.402237, 33.065285>,  <41.728840, 34.200321, 33.162739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.643211, 34.402237, 33.065285>,  <41.500496, 34.738762, 32.902859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.643211, 34.402237, 33.065285> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126832, 0.474274, 0.871194,
		-0.925536, -0.259328, 0.275920,
		0.356786, -0.841317, 0.406066,
		41.750248, 34.149841, 33.187103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.175457, 34.638947, 33.578415>,  <41.500496, 34.738762, 32.902859>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.175457, 34.638947, 33.578415> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.521069, 34.438335, 33.595978>,  <41.728436, 34.317966, 33.606514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.521069, 34.438335, 33.595978>,  <41.175457, 34.638947, 33.578415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.521069, 34.438335, 33.595978> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180069, 0.389302, 0.903338,
		-0.470145, -0.772600, 0.426677,
		0.864025, -0.501531, 0.043908,
		41.780277, 34.287876, 33.609150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.211918, 34.397865, 34.274139>,  <41.175457, 34.638947, 33.578415>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.211918, 34.397865, 34.274139> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.586952, 34.389053, 34.135323>,  <41.811974, 34.383766, 34.052032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.586952, 34.389053, 34.135323>,  <41.211918, 34.397865, 34.274139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.586952, 34.389053, 34.135323> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328617, 0.382524, 0.863531,
		0.113732, -0.923683, 0.365890,
		0.937591, -0.022027, -0.347044,
		41.868229, 34.382446, 34.031208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.615482, 34.061802, 34.891964>,  <41.211918, 34.397865, 34.274139>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.615482, 34.061802, 34.891964> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.870121, 34.254250, 34.650879>,  <42.022903, 34.369717, 34.506226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.870121, 34.254250, 34.650879>,  <41.615482, 34.061802, 34.891964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.870121, 34.254250, 34.650879> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517471, 0.312990, 0.796406,
		0.571810, -0.818879, -0.049716,
		0.636598, 0.481119, -0.602716,
		42.061100, 34.398586, 34.470062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.327995, 33.953377, 35.196304>,  <41.615482, 34.061802, 34.891964>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.327995, 33.953377, 35.196304> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.326855, 34.270325, 34.952290>,  <42.326172, 34.460491, 34.805882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.326855, 34.270325, 34.952290>,  <42.327995, 33.953377, 35.196304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.326855, 34.270325, 34.952290> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528340, 0.519137, 0.671828,
		0.849028, -0.320392, -0.420119,
		-0.002851, 0.792367, -0.610038,
		42.326000, 34.508034, 34.769279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.987877, 34.155605, 35.156158>,  <42.327995, 33.953377, 35.196304>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.987877, 34.155605, 35.156158> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.749866, 34.465443, 35.070423>,  <42.607059, 34.651344, 35.018982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.749866, 34.465443, 35.070423>,  <42.987877, 34.155605, 35.156158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.749866, 34.465443, 35.070423> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464321, 0.548995, 0.694989,
		0.656009, 0.314014, -0.686329,
		-0.595028, 0.774596, -0.214343,
		42.571358, 34.697823, 35.006119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.400017, 34.731457, 35.063316>,  <42.987877, 34.155605, 35.156158>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.400017, 34.731457, 35.063316> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.045048, 34.891846, 35.154266>,  <42.832066, 34.988079, 35.208836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.045048, 34.891846, 35.154266>,  <43.400017, 34.731457, 35.063316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.045048, 34.891846, 35.154266> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454302, 0.677318, 0.578663,
		0.078019, 0.616818, -0.783230,
		-0.887425, 0.400970, 0.227377,
		42.778820, 35.012138, 35.222481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.936386, 34.929066, 34.513237>,  <43.400017, 34.731457, 35.063316>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.936386, 34.929066, 34.513237> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.282349, 34.728554, 34.523502>,  <44.489925, 34.608246, 34.529659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.282349, 34.728554, 34.523502>,  <43.936386, 34.929066, 34.513237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.282349, 34.728554, 34.523502> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252549, 0.390423, -0.885318,
		0.433776, 0.772195, 0.464277,
		0.864903, -0.501283, 0.025661,
		44.541821, 34.578167, 34.531200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.464851, 35.445534, 34.305130>,  <43.936386, 34.929066, 34.513237>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.464851, 35.445534, 34.305130> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.557037, 35.065369, 34.221615>,  <44.612350, 34.837269, 34.171505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.557037, 35.065369, 34.221615>,  <44.464851, 35.445534, 34.305130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.557037, 35.065369, 34.221615> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141481, 0.245013, -0.959141,
		0.962740, 0.191510, 0.190933,
		0.230466, -0.950417, -0.208788,
		44.626179, 34.780243, 34.158978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.787052, 35.514740, 33.691837>,  <44.464851, 35.445534, 34.305130>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.787052, 35.514740, 33.691837> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.786785, 35.114761, 33.687897>,  <44.786625, 34.874775, 33.685532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.786785, 35.114761, 33.687897>,  <44.787052, 35.514740, 33.691837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.786785, 35.114761, 33.687897> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061319, 0.009792, -0.998070,
		0.998118, -0.001269, 0.061309,
		-0.000666, -0.999951, -0.009851,
		44.786587, 34.814777, 33.684940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.430454, 35.196213, 33.308418>,  <44.787052, 35.514740, 33.691837>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.430454, 35.196213, 33.308418> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.154392, 34.906761, 33.305984>,  <44.988754, 34.733089, 33.304523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.154392, 34.906761, 33.305984>,  <45.430454, 35.196213, 33.308418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.154392, 34.906761, 33.305984> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152671, -0.137383, -0.978682,
		0.707371, -0.676374, 0.205294,
		-0.690158, -0.723633, -0.006082,
		44.947346, 34.689671, 33.304161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.705620, 34.687363, 32.826740>,  <45.430454, 35.196213, 33.308418>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.705620, 34.687363, 32.826740> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.320454, 34.584881, 32.860584>,  <45.089355, 34.523392, 32.880890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.320454, 34.584881, 32.860584>,  <45.705620, 34.687363, 32.826740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.320454, 34.584881, 32.860584> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084936, -0.009827, -0.996338,
		0.256094, -0.966574, -0.012298,
		-0.962913, -0.256201, 0.084613,
		45.031578, 34.508022, 32.885967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.645550, 34.207035, 32.383953>,  <45.705620, 34.687363, 32.826740>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.645550, 34.207035, 32.383953> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.260235, 34.282616, 32.460251>,  <45.029045, 34.327965, 32.506027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.260235, 34.282616, 32.460251>,  <45.645550, 34.207035, 32.383953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.260235, 34.282616, 32.460251> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233562, -0.239368, -0.942418,
		-0.132412, -0.952366, 0.274710,
		-0.963284, 0.188949, 0.190742,
		44.971249, 34.339302, 32.517471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.237728, 33.685917, 32.038448>,  <45.645550, 34.207035, 32.383953>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.237728, 33.685917, 32.038448> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.976929, 33.985729, 32.084213>,  <44.820450, 34.165619, 32.111671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.976929, 33.985729, 32.084213>,  <45.237728, 33.685917, 32.038448>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.976929, 33.985729, 32.084213> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285850, -0.103224, -0.952699,
		-0.702270, -0.653867, 0.281557,
		-0.652002, 0.749535, 0.114416,
		44.781326, 34.210590, 32.118538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.681992, 33.498322, 31.683575>,  <45.237728, 33.685917, 32.038448>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.681992, 33.498322, 31.683575> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.605015, 33.888851, 31.723085>,  <44.558830, 34.123169, 31.746792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.605015, 33.888851, 31.723085>,  <44.681992, 33.498322, 31.683575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.605015, 33.888851, 31.723085> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318534, 0.033057, -0.947335,
		-0.928172, -0.213769, 0.304631,
		-0.192441, 0.976325, 0.098775,
		44.547283, 34.181747, 31.752718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.997913, 33.527805, 31.511196>,  <44.681992, 33.498322, 31.683575>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.997913, 33.527805, 31.511196> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.158600, 33.884544, 31.428026>,  <44.255013, 34.098587, 31.378124>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.158600, 33.884544, 31.428026>,  <43.997913, 33.527805, 31.511196>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.158600, 33.884544, 31.428026> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356152, -0.057026, -0.932686,
		-0.843672, 0.448725, 0.294725,
		0.401712, 0.891849, -0.207925,
		44.279114, 34.152100, 31.365648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.479877, 34.022835, 31.309256>,  <43.997913, 33.527805, 31.511196>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.479877, 34.022835, 31.309256> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.805359, 34.190933, 31.148619>,  <44.000648, 34.291790, 31.052237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.805359, 34.190933, 31.148619>,  <43.479877, 34.022835, 31.309256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.805359, 34.190933, 31.148619> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441801, -0.001847, -0.897111,
		-0.377746, 0.907410, 0.184161,
		0.813708, 0.420242, -0.401592,
		44.049473, 34.317005, 31.028141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.201271, 34.541088, 30.943722>,  <43.479877, 34.022835, 31.309256>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.201271, 34.541088, 30.943722> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.566204, 34.502556, 30.784538>,  <43.785164, 34.479439, 30.689028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.566204, 34.502556, 30.784538>,  <43.201271, 34.541088, 30.943722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.566204, 34.502556, 30.784538> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402586, -0.033774, -0.914759,
		0.074675, 0.994776, -0.069593,
		0.912331, -0.096327, -0.397961,
		43.839905, 34.473660, 30.665150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.156322, 34.946926, 30.371637>,  <43.201271, 34.541088, 30.943722>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.156322, 34.946926, 30.371637> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.453651, 34.689342, 30.299210>,  <43.632050, 34.534794, 30.255753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.453651, 34.689342, 30.299210>,  <43.156322, 34.946926, 30.371637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.453651, 34.689342, 30.299210> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229871, 0.008298, -0.973186,
		0.628193, 0.765016, -0.141859,
		0.743325, -0.643958, -0.181068,
		43.676647, 34.496155, 30.244888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.467789, 35.150482, 29.750231>,  <43.156322, 34.946926, 30.371637>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.467789, 35.150482, 29.750231> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.583546, 34.768349, 29.774227>,  <43.653000, 34.539070, 29.788624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.583546, 34.768349, 29.774227>,  <43.467789, 35.150482, 29.750231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.583546, 34.768349, 29.774227> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264464, -0.140029, -0.954176,
		0.919952, 0.260266, -0.293173,
		0.289392, -0.955329, 0.059989,
		43.670364, 34.481750, 29.792223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.744835, 35.070770, 29.152306>,  <43.467789, 35.150482, 29.750231>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.744835, 35.070770, 29.152306> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.658459, 34.707504, 29.295752>,  <43.606632, 34.489544, 29.381819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.658459, 34.707504, 29.295752>,  <43.744835, 35.070770, 29.152306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.658459, 34.707504, 29.295752> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442884, -0.236223, -0.864900,
		0.870185, -0.345594, -0.351201,
		-0.215943, -0.908165, 0.358616,
		43.593678, 34.435055, 29.403336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.720776, 34.532654, 28.526007>,  <43.744835, 35.070770, 29.152306>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.720776, 34.532654, 28.526007> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.517002, 34.327187, 28.802158>,  <43.394737, 34.203907, 28.967850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.517002, 34.327187, 28.802158>,  <43.720776, 34.532654, 28.526007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.517002, 34.327187, 28.802158> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562791, -0.408028, -0.718874,
		0.650958, -0.754756, -0.081227,
		-0.509432, -0.513670, 0.690378,
		43.364174, 34.173084, 29.009272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.652874, 33.863609, 28.293758>,  <43.720776, 34.532654, 28.526007>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.652874, 33.863609, 28.293758> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.371105, 33.839233, 28.576622>,  <43.202042, 33.824608, 28.746340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.371105, 33.839233, 28.576622>,  <43.652874, 33.863609, 28.293758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.371105, 33.839233, 28.576622> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601010, -0.478810, -0.639944,
		0.377591, -0.875801, 0.300662,
		-0.704424, -0.060936, 0.707159,
		43.159779, 33.820953, 28.788771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.447433, 33.167728, 28.406862>,  <43.652874, 33.863609, 28.293758>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.447433, 33.167728, 28.406862> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.137787, 33.364609, 28.566103>,  <42.952000, 33.482738, 28.661648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.137787, 33.364609, 28.566103>,  <43.447433, 33.167728, 28.406862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.137787, 33.364609, 28.566103> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630675, -0.654006, -0.417762,
		0.054738, -0.574468, 0.816695,
		-0.774114, 0.492201, 0.398101,
		42.905552, 33.512268, 28.685534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.112667, 32.620895, 28.898844>,  <43.447433, 33.167728, 28.406862>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.112667, 32.620895, 28.898844> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.886322, 32.934086, 28.795500>,  <42.750515, 33.122002, 28.733494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.886322, 32.934086, 28.795500>,  <43.112667, 32.620895, 28.898844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.886322, 32.934086, 28.795500> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732959, -0.621202, -0.277271,
		-0.377592, 0.032472, 0.925403,
		-0.565858, 0.782977, -0.258362,
		42.716564, 33.168980, 28.717991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.466866, 32.371922, 28.990458>,  <43.112667, 32.620895, 28.898844>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.466866, 32.371922, 28.990458> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.376534, 32.703560, 28.785868>,  <42.322334, 32.902542, 28.663115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.376534, 32.703560, 28.785868>,  <42.466866, 32.371922, 28.990458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.376534, 32.703560, 28.785868> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721213, -0.495240, -0.484345,
		-0.654869, 0.259502, 0.709792,
		-0.225829, 0.829094, -0.511473,
		42.308784, 32.952290, 28.632425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.639267, 32.441078, 28.904636>,  <42.466866, 32.371922, 28.990458>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.639267, 32.441078, 28.904636> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.764278, 32.679226, 28.608564>,  <41.839283, 32.822113, 28.430922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.764278, 32.679226, 28.608564>,  <41.639267, 32.441078, 28.904636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.764278, 32.679226, 28.608564> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648916, -0.435240, -0.624079,
		-0.693712, 0.675354, 0.250320,
		0.312525, 0.595368, -0.740179,
		41.858036, 32.857838, 28.386511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.006729, 32.669720, 28.605844>,  <41.639267, 32.441078, 28.904636>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.006729, 32.669720, 28.605844> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.299049, 32.711037, 28.335953>,  <41.474442, 32.735825, 28.174017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.299049, 32.711037, 28.335953>,  <41.006729, 32.669720, 28.605844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.299049, 32.711037, 28.335953> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582185, -0.421737, -0.695125,
		-0.356358, 0.900816, -0.248072,
		0.730800, 0.103290, -0.674731,
		41.518288, 32.742023, 28.133533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.774620, 39.874481, 43.059563> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.414719, 39.743370, 42.944321>,  <38.198776, 39.664703, 42.875175>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.414719, 39.743370, 42.944321>,  <38.774620, 39.874481, 43.059563>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.414719, 39.743370, 42.944321> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432831, -0.586035, -0.684996,
		0.055682, -0.741031, 0.669158,
		-0.899754, -0.327774, -0.288110,
		38.144791, 39.645039, 42.857887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.836121, 39.073879, 43.061028>,  <38.774620, 39.874481, 43.059563>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.836121, 39.073879, 43.061028> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.550652, 39.200855, 42.811260>,  <38.379368, 39.277039, 42.661400>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.550652, 39.200855, 42.811260>,  <38.836121, 39.073879, 43.061028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.550652, 39.200855, 42.811260> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312204, -0.653835, -0.689224,
		-0.627054, -0.686828, 0.367520,
		-0.713675, 0.317439, -0.624420,
		38.336548, 39.296085, 42.623936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.683228, 38.522995, 42.727272>,  <38.836121, 39.073879, 43.061028>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.683228, 38.522995, 42.727272> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.532925, 38.798679, 42.479465>,  <38.442745, 38.964088, 42.330784>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.532925, 38.798679, 42.479465>,  <38.683228, 38.522995, 42.727272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.532925, 38.798679, 42.479465> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342791, -0.517718, -0.783877,
		-0.860989, -0.506909, -0.041720,
		-0.375755, 0.689211, -0.619513,
		38.420197, 39.005444, 42.293610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.270081, 38.132877, 42.255836>,  <38.683228, 38.522995, 42.727272>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.270081, 38.132877, 42.255836> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.335186, 38.491367, 42.090771>,  <38.374249, 38.706459, 41.991730>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.335186, 38.491367, 42.090771>,  <38.270081, 38.132877, 42.255836>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.335186, 38.491367, 42.090771> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085093, -0.429436, -0.899080,
		-0.982989, 0.111219, -0.146158,
		0.162760, 0.896223, -0.412667,
		38.384014, 38.760235, 41.966972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.808510, 38.152672, 41.704861>,  <38.270081, 38.132877, 42.255836>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.808510, 38.152672, 41.704861> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.069828, 38.440552, 41.610855>,  <38.226620, 38.613281, 41.554451>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.069828, 38.440552, 41.610855>,  <37.808510, 38.152672, 41.704861>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.069828, 38.440552, 41.610855> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000815, -0.311077, -0.950385,
		-0.757100, 0.620693, -0.203812,
		0.653298, 0.719702, -0.235011,
		38.265816, 38.656464, 41.540352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.484573, 38.474087, 41.151707>,  <37.808510, 38.152672, 41.704861>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.484573, 38.474087, 41.151707> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.880329, 38.532078, 41.147926>,  <38.117783, 38.566872, 41.145660>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.880329, 38.532078, 41.147926>,  <37.484573, 38.474087, 41.151707>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.880329, 38.532078, 41.147926> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014192, -0.161170, -0.986825,
		-0.144592, 0.976220, -0.161518,
		0.989390, 0.144979, -0.009449,
		38.177147, 38.575573, 41.145092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.599007, 38.782200, 40.536087>,  <37.484573, 38.474087, 41.151707>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.599007, 38.782200, 40.536087> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.963894, 38.658291, 40.643337>,  <38.182827, 38.583946, 40.707687>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.963894, 38.658291, 40.643337>,  <37.599007, 38.782200, 40.536087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.963894, 38.658291, 40.643337> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249902, -0.097900, -0.963309,
		0.324656, 0.945758, -0.011894,
		0.912221, -0.309772, 0.268130,
		38.237560, 38.565361, 40.723778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.037128, 39.132694, 40.061615>,  <37.599007, 38.782200, 40.536087>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.037128, 39.132694, 40.061615> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.256752, 38.827045, 40.197052>,  <38.388527, 38.643654, 40.278313>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.256752, 38.827045, 40.197052>,  <38.037128, 39.132694, 40.061615>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.256752, 38.827045, 40.197052> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414334, -0.102975, -0.904280,
		0.725851, 0.636795, 0.260064,
		0.549061, -0.764126, 0.338591,
		38.421471, 38.597809, 40.298630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.693169, 39.085861, 39.681992>,  <38.037128, 39.132694, 40.061615>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.693169, 39.085861, 39.681992> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.641899, 38.706646, 39.798473>,  <38.611137, 38.479118, 39.868362>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.641899, 38.706646, 39.798473>,  <38.693169, 39.085861, 39.681992>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.641899, 38.706646, 39.798473> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300676, -0.316955, -0.899518,
		0.945074, -0.027735, 0.325677,
		-0.128173, -0.948035, 0.291207,
		38.603447, 38.422237, 39.885834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.251553, 38.661636, 39.444881>,  <38.693169, 39.085861, 39.681992>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.251553, 38.661636, 39.444881> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.985023, 38.375957, 39.530613>,  <38.825108, 38.204548, 39.582050>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.985023, 38.375957, 39.530613>,  <39.251553, 38.661636, 39.444881>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.985023, 38.375957, 39.530613> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253893, -0.487556, -0.835361,
		0.701113, -0.502200, 0.506198,
		-0.666318, -0.714202, 0.214326,
		38.785130, 38.161697, 39.594910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.607666, 38.038792, 39.480606>,  <39.251553, 38.661636, 39.444881>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.607666, 38.038792, 39.480606> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.229038, 37.948071, 39.388897>,  <39.001862, 37.893639, 39.333874>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.229038, 37.948071, 39.388897>,  <39.607666, 38.038792, 39.480606>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.229038, 37.948071, 39.388897> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310531, -0.449145, -0.837758,
		0.087031, -0.864192, 0.495577,
		-0.946570, -0.226804, -0.229269,
		38.945068, 37.880028, 39.320118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.673031, 37.444729, 39.129265>,  <39.607666, 38.038792, 39.480606>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.673031, 37.444729, 39.129265> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.301750, 37.546474, 39.020641>,  <39.078983, 37.607521, 38.955467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.301750, 37.546474, 39.020641>,  <39.673031, 37.444729, 39.129265>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.301750, 37.546474, 39.020641> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159542, -0.387253, -0.908065,
		-0.336140, -0.886191, 0.318866,
		-0.928201, 0.254364, -0.271556,
		39.023289, 37.622784, 38.939175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.400440, 36.934345, 38.668716>,  <39.673031, 37.444729, 39.129265>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.400440, 36.934345, 38.668716> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.175865, 37.247681, 38.562004>,  <39.041119, 37.435680, 38.497978>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.175865, 37.247681, 38.562004>,  <39.400440, 36.934345, 38.668716>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.175865, 37.247681, 38.562004> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126373, -0.399768, -0.907863,
		-0.817812, -0.475996, 0.323438,
		-0.561439, 0.783335, -0.266782,
		39.007435, 37.482681, 38.481968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.964764, 36.674454, 38.142097>,  <39.400440, 36.934345, 38.668716>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.964764, 36.674454, 38.142097> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.895065, 37.065407, 38.094170>,  <38.853245, 37.299980, 38.065414>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.895065, 37.065407, 38.094170>,  <38.964764, 36.674454, 38.142097>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.895065, 37.065407, 38.094170> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379481, -0.178930, -0.907732,
		-0.908643, -0.112702, 0.402077,
		-0.174247, 0.977386, -0.119815,
		38.842793, 37.358624, 38.058224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.629387, 36.145237, 38.608936>,  <38.964764, 36.674454, 38.142097>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.629387, 36.145237, 38.608936> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.703281, 35.774067, 38.479427>,  <38.747620, 35.551365, 38.401722>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.703281, 35.774067, 38.479427>,  <38.629387, 36.145237, 38.608936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.703281, 35.774067, 38.479427> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505402, -0.372239, 0.778464,
		-0.842877, 0.019826, -0.537741,
		0.184735, -0.927925, -0.323772,
		38.758701, 35.495689, 38.382298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.012047, 35.877037, 38.806015>,  <38.629387, 36.145237, 38.608936>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.012047, 35.877037, 38.806015> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.307411, 35.611538, 38.758369>,  <38.484631, 35.452236, 38.729782>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.307411, 35.611538, 38.758369>,  <38.012047, 35.877037, 38.806015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.307411, 35.611538, 38.758369> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334649, -0.514023, 0.789804,
		-0.585462, -0.543335, -0.601682,
		0.738407, -0.663753, -0.119114,
		38.528934, 35.412411, 38.722637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.681969, 35.163208, 38.957924>,  <38.012047, 35.877037, 38.806015>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.681969, 35.163208, 38.957924> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.073242, 35.124710, 39.031563>,  <38.308006, 35.101612, 39.075745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.073242, 35.124710, 39.031563>,  <37.681969, 35.163208, 38.957924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.073242, 35.124710, 39.031563> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207641, -0.426332, 0.880413,
		-0.006251, -0.899432, -0.437016,
		0.978185, -0.096246, 0.184094,
		38.366699, 35.095837, 39.086792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.738743, 34.545364, 39.212753>,  <37.681969, 35.163208, 38.957924>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.738743, 34.545364, 39.212753> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.092773, 34.689159, 39.331013>,  <38.305191, 34.775436, 39.401970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.092773, 34.689159, 39.331013>,  <37.738743, 34.545364, 39.212753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.092773, 34.689159, 39.331013> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129784, -0.419397, 0.898477,
		0.446983, -0.833593, -0.324544,
		0.885078, 0.359483, 0.295651,
		38.358295, 34.797005, 39.419708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.125839, 33.971806, 39.427681>,  <37.738743, 34.545364, 39.212753>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.125839, 33.971806, 39.427681> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.269196, 34.295799, 39.613361>,  <38.355209, 34.490196, 39.724770>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.269196, 34.295799, 39.613361>,  <38.125839, 33.971806, 39.427681>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.269196, 34.295799, 39.613361> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163946, -0.434901, 0.885428,
		0.919064, -0.393431, -0.023070,
		0.358388, 0.809983, 0.464203,
		38.376713, 34.538795, 39.752621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.397003, 33.694370, 40.025604>,  <38.125839, 33.971806, 39.427681>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.397003, 33.694370, 40.025604> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.345821, 34.082348, 40.108387>,  <38.315113, 34.315136, 40.158058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.345821, 34.082348, 40.108387>,  <38.397003, 33.694370, 40.025604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.345821, 34.082348, 40.108387> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107519, -0.221008, 0.969327,
		0.985934, 0.101782, 0.132567,
		-0.127959, 0.969946, 0.206956,
		38.307434, 34.373333, 40.170475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.731834, 33.701344, 40.616467>,  <38.397003, 33.694370, 40.025604>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.731834, 33.701344, 40.616467> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.541286, 34.052525, 40.635540>,  <38.426956, 34.263233, 40.646984>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.541286, 34.052525, 40.635540>,  <38.731834, 33.701344, 40.616467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.541286, 34.052525, 40.635540> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124455, -0.121019, 0.984817,
		0.870391, 0.463205, 0.166915,
		-0.476373, 0.877949, 0.047685,
		38.398376, 34.315910, 40.649845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.932175, 34.065594, 41.275116>,  <38.731834, 33.701344, 40.616467>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.932175, 34.065594, 41.275116> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.593723, 34.242229, 41.155739>,  <38.390652, 34.348209, 41.084114>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.593723, 34.242229, 41.155739>,  <38.932175, 34.065594, 41.275116>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.593723, 34.242229, 41.155739> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292892, 0.082571, 0.952573,
		0.445288, 0.893410, 0.059472,
		-0.846128, 0.441588, -0.298441,
		38.339886, 34.374706, 41.066208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.882206, 34.751942, 41.601257>,  <38.932175, 34.065594, 41.275116>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.882206, 34.751942, 41.601257> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.519760, 34.646706, 41.468754>,  <38.302292, 34.583565, 41.389252>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.519760, 34.646706, 41.468754>,  <38.882206, 34.751942, 41.601257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.519760, 34.646706, 41.468754> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400470, 0.281210, 0.872092,
		-0.136285, 0.922878, -0.360169,
		-0.906118, -0.263090, -0.331261,
		38.247925, 34.567780, 41.369377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.451927, 35.346828, 41.782612>,  <38.882206, 34.751942, 41.601257>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.451927, 35.346828, 41.782612> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.204182, 35.036285, 41.735870>,  <38.055534, 34.849960, 41.707825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.204182, 35.036285, 41.735870>,  <38.451927, 35.346828, 41.782612>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.204182, 35.036285, 41.735870> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367777, 0.155403, 0.916837,
		-0.693633, 0.610835, -0.381778,
		-0.619365, -0.776357, -0.116858,
		38.018372, 34.803379, 41.700813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.879368, 35.518116, 42.153511>,  <38.451927, 35.346828, 41.782612>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.879368, 35.518116, 42.153511> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.824528, 35.125954, 42.096928>,  <37.791622, 34.890656, 42.062977>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.824528, 35.125954, 42.096928>,  <37.879368, 35.518116, 42.153511>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.824528, 35.125954, 42.096928> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330947, -0.089266, 0.939418,
		-0.933637, 0.175612, -0.312223,
		-0.137102, -0.980404, -0.141460,
		37.783398, 34.831833, 42.054489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.246269, 35.330414, 42.494923>,  <37.879368, 35.518116, 42.153511>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.246269, 35.330414, 42.494923> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.499294, 35.020611, 42.494545>,  <37.651108, 34.834728, 42.494320>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.499294, 35.020611, 42.494545>,  <37.246269, 35.330414, 42.494923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.499294, 35.020611, 42.494545> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177574, -0.146212, 0.973185,
		-0.753880, -0.615432, -0.230021,
		0.632561, -0.774510, -0.000942,
		37.689064, 34.788258, 42.494263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.880753, 34.847496, 42.919609>,  <37.246269, 35.330414, 42.494923>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.880753, 34.847496, 42.919609> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.266987, 34.746490, 42.894703>,  <37.498730, 34.685886, 42.879761>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.266987, 34.746490, 42.894703>,  <36.880753, 34.847496, 42.919609>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.266987, 34.746490, 42.894703> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022299, -0.158143, 0.987164,
		-0.259118, -0.954583, -0.147070,
		0.965588, -0.252512, -0.062264,
		37.556664, 34.670738, 42.876022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.931385, 34.368465, 43.382164>,  <36.880753, 34.847496, 42.919609>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.931385, 34.368465, 43.382164> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.319149, 34.441101, 43.316109>,  <37.551807, 34.484684, 43.276474>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.319149, 34.441101, 43.316109>,  <36.931385, 34.368465, 43.382164>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.319149, 34.441101, 43.316109> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176625, -0.048877, 0.983064,
		0.170444, -0.982159, -0.079456,
		0.969408, 0.181591, -0.165143,
		37.609970, 34.495579, 43.266567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.628010, 33.735386, 43.618328>,  <36.931385, 34.368465, 43.382164>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.628010, 33.735386, 43.618328> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.271671, 33.569744, 43.693069>,  <36.057869, 33.470360, 43.737915>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.271671, 33.569744, 43.693069>,  <36.628010, 33.735386, 43.618328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.271671, 33.569744, 43.693069> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306666, 0.244672, -0.919832,
		0.335193, -0.876727, -0.344958,
		-0.890843, -0.414108, 0.186850,
		36.004417, 33.445511, 43.749126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.486126, 33.227612, 43.005779>,  <36.628010, 33.735386, 43.618328>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.486126, 33.227612, 43.005779> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.147362, 33.345921, 43.182529>,  <35.944103, 33.416904, 43.288582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.147362, 33.345921, 43.182529>,  <36.486126, 33.227612, 43.005779>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.147362, 33.345921, 43.182529> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371510, 0.265401, -0.889687,
		-0.380417, -0.917651, -0.114891,
		-0.846914, 0.295769, 0.441879,
		35.893288, 33.434650, 43.315094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.937859, 32.886646, 42.545391>,  <36.486126, 33.227612, 43.005779>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.937859, 32.886646, 42.545391> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.756947, 33.177883, 42.751431>,  <35.648399, 33.352627, 42.875053>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.756947, 33.177883, 42.751431>,  <35.937859, 32.886646, 42.545391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.756947, 33.177883, 42.751431> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409713, 0.343380, -0.845118,
		-0.792197, -0.593274, 0.143004,
		-0.452282, 0.728091, 0.515097,
		35.621262, 33.396309, 42.905960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.153839, 32.880245, 42.334351>,  <35.937859, 32.886646, 42.545391>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.153839, 32.880245, 42.334351> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.247276, 33.244751, 42.470016>,  <35.303337, 33.463455, 42.551418>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.247276, 33.244751, 42.470016>,  <35.153839, 32.880245, 42.334351>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.247276, 33.244751, 42.470016> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369218, 0.405819, -0.836056,
		-0.899508, 0.070068, 0.431250,
		0.233590, 0.911264, 0.339167,
		35.317352, 33.518131, 42.571766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.596146, 33.234882, 42.272633>,  <35.153839, 32.880245, 42.334351>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.596146, 33.234882, 42.272633> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.874546, 33.519119, 42.313900>,  <35.041584, 33.689663, 42.338661>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.874546, 33.519119, 42.313900>,  <34.596146, 33.234882, 42.272633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.874546, 33.519119, 42.313900> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312534, 0.429153, -0.847438,
		-0.646460, 0.557570, 0.520774,
		0.695997, 0.710594, 0.103170,
		35.083344, 33.732296, 42.344852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.266098, 33.871468, 42.165150>,  <34.596146, 33.234882, 42.272633>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.266098, 33.871468, 42.165150> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.652313, 33.911831, 42.069191>,  <34.884045, 33.936050, 42.011616>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.652313, 33.911831, 42.069191>,  <34.266098, 33.871468, 42.165150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.652313, 33.911831, 42.069191> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256934, 0.516362, -0.816918,
		0.041437, 0.850404, 0.524496,
		0.965540, 0.100910, -0.239894,
		34.941975, 33.942104, 41.997223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.262104, 34.549065, 42.030582>,  <34.266098, 33.871468, 42.165150>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.262104, 34.549065, 42.030582> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.579792, 34.375748, 41.860184>,  <34.770405, 34.271755, 41.757946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.579792, 34.375748, 41.860184>,  <34.262104, 34.549065, 42.030582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.579792, 34.375748, 41.860184> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102331, 0.595685, -0.796673,
		0.598954, 0.676325, 0.428765,
		0.794219, -0.433294, -0.425996,
		34.818058, 34.245758, 41.732384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.711281, 35.099926, 41.713337>,  <34.262104, 34.549065, 42.030582>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.711281, 35.099926, 41.713337> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.791836, 34.761395, 41.516090>,  <34.840168, 34.558273, 41.397743>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.791836, 34.761395, 41.516090>,  <34.711281, 35.099926, 41.713337>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.791836, 34.761395, 41.516090> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032217, 0.508880, -0.860234,
		0.978981, 0.157357, 0.129751,
		0.201392, -0.846333, -0.493114,
		34.852253, 34.507496, 41.368156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.049995, 35.341984, 41.082169>,  <34.711281, 35.099926, 41.713337>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.049995, 35.341984, 41.082169> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.017223, 34.952213, 40.998482>,  <34.997559, 34.718349, 40.948269>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.017223, 34.952213, 40.998482>,  <35.049995, 35.341984, 41.082169>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.017223, 34.952213, 40.998482> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228167, 0.186008, -0.955689,
		0.970168, -0.126039, 0.207093,
		-0.081934, -0.974431, -0.209217,
		34.992641, 34.659885, 40.935719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.649647, 35.164501, 40.657158>,  <35.049995, 35.341984, 41.082169>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.649647, 35.164501, 40.657158> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.354942, 34.908989, 40.568485>,  <35.178120, 34.755684, 40.515282>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.354942, 34.908989, 40.568485>,  <35.649647, 35.164501, 40.657158>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.354942, 34.908989, 40.568485> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082650, 0.240325, -0.967167,
		0.671080, -0.730896, -0.124268,
		-0.736763, -0.638777, -0.221686,
		35.133915, 34.717358, 40.501980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.809208, 34.824535, 40.005886>,  <35.649647, 35.164501, 40.657158>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.809208, 34.824535, 40.005886> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.412262, 34.795544, 40.045788>,  <35.174095, 34.778149, 40.069729>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.412262, 34.795544, 40.045788>,  <35.809208, 34.824535, 40.005886>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.412262, 34.795544, 40.045788> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117060, 0.299589, -0.946860,
		0.038741, -0.951311, -0.305787,
		-0.992369, -0.072478, 0.099754,
		35.114552, 34.773800, 40.075714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.631371, 34.413990, 39.456333>,  <35.809208, 34.824535, 40.005886>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.631371, 34.413990, 39.456333> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.323833, 34.653492, 39.546104>,  <35.139309, 34.797192, 39.599968>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.323833, 34.653492, 39.546104>,  <35.631371, 34.413990, 39.456333>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.323833, 34.653492, 39.546104> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050427, 0.293114, -0.954746,
		-0.637442, -0.745371, -0.195166,
		-0.768847, 0.598753, 0.224431,
		35.093178, 34.833118, 39.613434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.548065, 32.692871, 47.454147> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.262333, 32.972775, 47.457535>,  <36.090893, 33.140717, 47.459568>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.262333, 32.972775, 47.457535>,  <36.548065, 32.692871, 47.454147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.262333, 32.972775, 47.457535> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118983, -0.109516, -0.986838,
		-0.689618, -0.705938, 0.161490,
		-0.714332, 0.699755, 0.008471,
		36.048035, 33.182701, 47.460075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.130203, 32.447834, 46.993958>,  <36.548065, 32.692871, 47.454147>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.130203, 32.447834, 46.993958> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.985970, 32.819523, 47.026276>,  <35.899429, 33.042538, 47.045666>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.985970, 32.819523, 47.026276>,  <36.130203, 32.447834, 46.993958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.985970, 32.819523, 47.026276> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178725, 0.016185, -0.983766,
		-0.915444, -0.369168, 0.160239,
		-0.360581, 0.929222, 0.080796,
		35.877796, 33.098289, 47.050514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.427868, 32.444218, 46.765991>,  <36.130203, 32.447834, 46.993958>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.427868, 32.444218, 46.765991> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.591663, 32.805378, 46.713703>,  <35.689941, 33.022076, 46.682331>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.591663, 32.805378, 46.713703>,  <35.427868, 32.444218, 46.765991>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.591663, 32.805378, 46.713703> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349546, 0.022921, -0.936639,
		-0.842694, 0.429240, 0.324991,
		0.409492, 0.902900, -0.130724,
		35.714512, 33.076248, 46.674484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.202118, 32.633450, 46.143078>,  <35.427868, 32.444218, 46.765991>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.202118, 32.633450, 46.143078> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.446190, 32.946659, 46.191334>,  <35.592632, 33.134586, 46.220287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.446190, 32.946659, 46.191334>,  <35.202118, 32.633450, 46.143078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.446190, 32.946659, 46.191334> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114306, 0.237682, -0.964594,
		-0.783977, 0.574782, 0.234533,
		0.610175, 0.783028, 0.120636,
		35.629242, 33.181568, 46.227524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.932407, 33.101791, 45.700581>,  <35.202118, 32.633450, 46.143078>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.932407, 33.101791, 45.700581> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.312954, 33.214733, 45.749863>,  <35.541283, 33.282497, 45.779430>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.312954, 33.214733, 45.749863>,  <34.932407, 33.101791, 45.700581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.312954, 33.214733, 45.749863> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093983, 0.114841, -0.988928,
		-0.293375, 0.952412, 0.082719,
		0.951367, 0.282353, 0.123202,
		35.598366, 33.299438, 45.786823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.073254, 33.867310, 45.486679>,  <34.932407, 33.101791, 45.700581>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.073254, 33.867310, 45.486679> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.434193, 33.698212, 45.453068>,  <35.650757, 33.596752, 45.432899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.434193, 33.698212, 45.453068>,  <35.073254, 33.867310, 45.486679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.434193, 33.698212, 45.453068> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077430, 0.350774, -0.933253,
		0.424007, 0.835608, 0.349252,
		0.902343, -0.422748, -0.084030,
		35.704895, 33.571388, 45.427860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.463215, 34.327728, 45.144714>,  <35.073254, 33.867310, 45.486679>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.463215, 34.327728, 45.144714> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.651917, 33.980824, 45.081085>,  <35.765137, 33.772682, 45.042908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.651917, 33.980824, 45.081085>,  <35.463215, 34.327728, 45.144714>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.651917, 33.980824, 45.081085> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115826, 0.117898, -0.986247,
		0.874088, 0.483695, -0.044832,
		0.471758, -0.867260, -0.159077,
		35.793446, 33.720646, 45.033363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.999001, 34.461704, 44.701660>,  <35.463215, 34.327728, 45.144714>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.999001, 34.461704, 44.701660> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.930458, 34.068680, 44.672768>,  <35.889332, 33.832867, 44.655430>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.930458, 34.068680, 44.672768>,  <35.999001, 34.461704, 44.701660>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.930458, 34.068680, 44.672768> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151394, 0.098707, -0.983533,
		0.973508, -0.157596, -0.165667,
		-0.171353, -0.982558, -0.072233,
		35.879051, 33.773911, 44.651096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.397091, 34.240696, 44.169189>,  <35.999001, 34.461704, 44.701660>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.397091, 34.240696, 44.169189> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.123222, 33.951508, 44.206131>,  <35.958900, 33.777992, 44.228294>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.123222, 33.951508, 44.206131>,  <36.397091, 34.240696, 44.169189>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.123222, 33.951508, 44.206131> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164201, 0.029552, -0.985984,
		0.710113, -0.690242, -0.138946,
		-0.684674, -0.722975, 0.092353,
		35.917820, 33.734615, 44.233837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.112450, 34.021290, 44.037464>,  <36.397091, 34.240696, 44.169189>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.112450, 34.021290, 44.037464> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.426102, 34.229111, 43.901699>,  <37.614292, 34.353806, 43.820240>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.426102, 34.229111, 43.901699>,  <37.112450, 34.021290, 44.037464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.426102, 34.229111, 43.901699> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377046, 0.035554, 0.925512,
		0.492921, -0.853697, -0.168017,
		0.784133, 0.519555, -0.339409,
		37.661343, 34.384975, 43.799877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.724049, 33.693218, 44.247196>,  <37.112450, 34.021290, 44.037464>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.724049, 33.693218, 44.247196> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.831406, 34.073437, 44.184685>,  <37.895821, 34.301567, 44.147179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.831406, 34.073437, 44.184685>,  <37.724049, 33.693218, 44.247196>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.831406, 34.073437, 44.184685> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390347, 0.040999, 0.919754,
		0.880679, -0.307857, -0.360041,
		0.268391, 0.950549, -0.156278,
		37.911922, 34.358601, 44.137802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.463730, 33.798302, 44.393677>,  <37.724049, 33.693218, 44.247196>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.463730, 33.798302, 44.393677> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.290886, 34.158638, 44.410492>,  <38.187180, 34.374840, 44.420582>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.290886, 34.158638, 44.410492>,  <38.463730, 33.798302, 44.393677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.290886, 34.158638, 44.410492> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237851, 0.068880, 0.968856,
		0.869891, 0.428649, -0.244029,
		-0.432108, 0.900842, 0.042036,
		38.161255, 34.428890, 44.423103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.987637, 34.236771, 44.706993>,  <38.463730, 33.798302, 44.393677>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.987637, 34.236771, 44.706993> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.663731, 34.470856, 44.723984>,  <38.469387, 34.611309, 44.734180>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.663731, 34.470856, 44.723984>,  <38.987637, 34.236771, 44.706993>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.663731, 34.470856, 44.723984> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178149, 0.176232, 0.968094,
		0.559058, 0.791494, -0.246962,
		-0.809763, 0.585217, 0.042480,
		38.420803, 34.646420, 44.736729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.168671, 34.978832, 44.806530>,  <38.987637, 34.236771, 44.706993>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.168671, 34.978832, 44.806530> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.811134, 34.885326, 44.959579>,  <38.596611, 34.829224, 45.051407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.811134, 34.885326, 44.959579>,  <39.168671, 34.978832, 44.806530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.811134, 34.885326, 44.959579> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359644, 0.135829, 0.923150,
		-0.267770, 0.962759, -0.037338,
		-0.893843, -0.233764, 0.382621,
		38.542980, 34.815197, 45.074368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.190994, 35.477558, 45.294571>,  <39.168671, 34.978832, 44.806530>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.190994, 35.477558, 45.294571> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.875343, 35.255573, 45.399864>,  <38.685951, 35.122383, 45.463039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.875343, 35.255573, 45.399864>,  <39.190994, 35.477558, 45.294571>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.875343, 35.255573, 45.399864> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035238, 0.386946, 0.921429,
		-0.613219, 0.736400, -0.285794,
		-0.789127, -0.554966, 0.263232,
		38.638607, 35.089085, 45.478832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.727398, 35.961548, 45.696117>,  <39.190994, 35.477558, 45.294571>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.727398, 35.961548, 45.696117> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.621700, 35.584164, 45.776184>,  <38.558281, 35.357735, 45.824226>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.621700, 35.584164, 45.776184>,  <38.727398, 35.961548, 45.696117>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.621700, 35.584164, 45.776184> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167891, 0.249374, 0.953743,
		-0.949731, 0.218412, -0.224292,
		-0.264242, -0.943456, 0.200169,
		38.542427, 35.301128, 45.836235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.085426, 35.966221, 45.968456>,  <38.727398, 35.961548, 45.696117>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.085426, 35.966221, 45.968456> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.236996, 35.613869, 46.081928>,  <38.327938, 35.402458, 46.150009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.236996, 35.613869, 46.081928>,  <38.085426, 35.966221, 45.968456>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.236996, 35.613869, 46.081928> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188961, 0.226433, 0.955522,
		-0.905932, -0.415670, -0.080652,
		0.378920, -0.880878, 0.283678,
		38.350670, 35.349606, 46.167030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.662811, 35.754036, 46.582497>,  <38.085426, 35.966221, 45.968456>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.662811, 35.754036, 46.582497> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.022114, 35.579384, 46.602482>,  <38.237694, 35.474594, 46.614471>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.022114, 35.579384, 46.602482>,  <37.662811, 35.754036, 46.582497>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.022114, 35.579384, 46.602482> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057120, 0.228705, 0.971819,
		-0.435751, -0.870085, 0.230375,
		0.898253, -0.436631, 0.049959,
		38.291588, 35.448395, 46.617470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.550591, 35.412296, 47.229393>,  <37.662811, 35.754036, 46.582497>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.550591, 35.412296, 47.229393> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.940907, 35.360149, 47.159145>,  <38.175095, 35.328861, 47.116997>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.940907, 35.360149, 47.159145>,  <37.550591, 35.412296, 47.229393>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.940907, 35.360149, 47.159145> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200117, 0.208120, 0.957413,
		-0.088270, -0.969376, 0.229170,
		0.975788, -0.130372, -0.175617,
		38.233643, 35.321037, 47.106461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.841721, 34.998360, 47.840683>,  <37.550591, 35.412296, 47.229393>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.841721, 34.998360, 47.840683> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.158585, 35.186375, 47.684967>,  <38.348705, 35.299183, 47.591537>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.158585, 35.186375, 47.684967>,  <37.841721, 34.998360, 47.840683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.158585, 35.186375, 47.684967> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316009, 0.229791, 0.920508,
		0.522128, -0.852209, 0.033495,
		0.792162, 0.470038, -0.389286,
		38.396233, 35.327385, 47.568180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.398365, 34.773251, 48.210033>,  <37.841721, 34.998360, 47.840683>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.398365, 34.773251, 48.210033> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.500820, 35.132900, 48.068062>,  <38.562294, 35.348690, 47.982880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.500820, 35.132900, 48.068062>,  <38.398365, 34.773251, 48.210033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.500820, 35.132900, 48.068062> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457596, 0.210650, 0.863848,
		0.851469, -0.383680, -0.357478,
		0.256138, 0.899120, -0.354932,
		38.577663, 35.402637, 47.961582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.117985, 34.885063, 48.373562>,  <38.398365, 34.773251, 48.210033>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.117985, 34.885063, 48.373562> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.927414, 35.235004, 48.338577>,  <38.813072, 35.444969, 48.317589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.927414, 35.235004, 48.338577>,  <39.117985, 34.885063, 48.373562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.927414, 35.235004, 48.338577> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371318, 0.290376, 0.881932,
		0.796958, 0.387699, -0.463192,
		-0.476424, 0.874855, -0.087458,
		38.784485, 35.497459, 48.312340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.608841, 35.333931, 48.712978>,  <39.117985, 34.885063, 48.373562>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.608841, 35.333931, 48.712978> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.272621, 35.543633, 48.658371>,  <39.070889, 35.669453, 48.625607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.272621, 35.543633, 48.658371>,  <39.608841, 35.333931, 48.712978>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.272621, 35.543633, 48.658371> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222641, 0.564038, 0.795168,
		0.493872, 0.637982, -0.590821,
		-0.840548, 0.524253, -0.136521,
		39.020458, 35.700909, 48.617416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.022614, 38.665688, 47.834126> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.343403, 38.457985, 47.952251>,  <32.535877, 38.333363, 48.023125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.343403, 38.457985, 47.952251>,  <32.022614, 38.665688, 47.834126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.343403, 38.457985, 47.952251> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446575, 0.192818, -0.873723,
		0.396745, 0.832583, 0.386522,
		0.801975, -0.519257, 0.295311,
		32.583996, 38.302208, 48.040844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.641556, 39.181667, 47.726322>,  <32.022614, 38.665688, 47.834126>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.641556, 39.181667, 47.726322> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.793633, 38.812222, 47.745907>,  <32.884876, 38.590553, 47.757656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.793633, 38.812222, 47.745907>,  <32.641556, 39.181667, 47.726322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.793633, 38.812222, 47.745907> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389909, 0.112047, -0.914011,
		0.838706, 0.366587, 0.402724,
		0.380188, -0.923612, 0.048961,
		32.907688, 38.535137, 47.760593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.297886, 39.267685, 47.455536>,  <32.641556, 39.181667, 47.726322>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.297886, 39.267685, 47.455536> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.195515, 38.881012, 47.453247>,  <33.134090, 38.649010, 47.451874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.195515, 38.881012, 47.453247>,  <33.297886, 39.267685, 47.455536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.195515, 38.881012, 47.453247> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113827, -0.024256, -0.993205,
		0.959971, -0.254839, 0.116242,
		-0.255927, -0.966679, -0.005723,
		33.118736, 38.591007, 47.451530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.803169, 38.888275, 47.019234>,  <33.297886, 39.267685, 47.455536>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.803169, 38.888275, 47.019234> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.488197, 38.641727, 47.021744>,  <33.299213, 38.493797, 47.023251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.488197, 38.641727, 47.021744>,  <33.803169, 38.888275, 47.019234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.488197, 38.641727, 47.021744> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103759, -0.142578, -0.984330,
		0.607610, -0.774439, 0.176224,
		-0.787429, -0.616374, 0.006277,
		33.251968, 38.456814, 47.023628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.943771, 38.356781, 46.588085>,  <33.803169, 38.888275, 47.019234>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.943771, 38.356781, 46.588085> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.547131, 38.320927, 46.625359>,  <33.309147, 38.299416, 46.647724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.547131, 38.320927, 46.625359>,  <33.943771, 38.356781, 46.588085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.547131, 38.320927, 46.625359> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080787, -0.133221, -0.987788,
		0.100953, -0.987025, 0.124862,
		-0.991606, -0.089633, 0.093188,
		33.249649, 38.294037, 46.653316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.755009, 37.684948, 46.209965>,  <33.943771, 38.356781, 46.588085>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.755009, 37.684948, 46.209965> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.429913, 37.917431, 46.226234>,  <33.234856, 38.056923, 46.235996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.429913, 37.917431, 46.226234>,  <33.755009, 37.684948, 46.209965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.429913, 37.917431, 46.226234> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132042, -0.115752, -0.984462,
		-0.567471, -0.805479, 0.170821,
		-0.812737, 0.581210, 0.040671,
		33.186092, 38.091793, 46.238434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.312187, 37.308868, 45.869797>,  <33.755009, 37.684948, 46.209965>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.312187, 37.308868, 45.869797> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.155571, 37.676529, 45.887028>,  <33.061600, 37.897125, 45.897366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.155571, 37.676529, 45.887028>,  <33.312187, 37.308868, 45.869797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.155571, 37.676529, 45.887028> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355405, -0.107881, -0.928466,
		-0.848755, -0.378841, 0.368911,
		-0.391539, 0.919153, 0.043077,
		33.038109, 37.952274, 45.899952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.634949, 37.303253, 45.528530>,  <33.312187, 37.308868, 45.869797>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.634949, 37.303253, 45.528530> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.725025, 37.692600, 45.545681>,  <32.779072, 37.926208, 45.555973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.725025, 37.692600, 45.545681>,  <32.634949, 37.303253, 45.528530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.725025, 37.692600, 45.545681> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282318, 0.107311, -0.953300,
		-0.932516, 0.202567, 0.298965,
		0.225189, 0.973371, 0.042881,
		32.792583, 37.984612, 45.558544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.159241, 37.576813, 45.169956>,  <32.634949, 37.303253, 45.528530>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.159241, 37.576813, 45.169956> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.424782, 37.874657, 45.142082>,  <32.584106, 38.053364, 45.125359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.424782, 37.874657, 45.142082>,  <32.159241, 37.576813, 45.169956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.424782, 37.874657, 45.142082> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195373, 0.082727, -0.977234,
		-0.721891, 0.662356, 0.200395,
		0.663855, 0.744608, -0.069687,
		32.623940, 38.098038, 45.121178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.874474, 38.121235, 44.849331>,  <32.159241, 37.576813, 45.169956>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.874474, 38.121235, 44.849331> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.263580, 38.198025, 44.797375>,  <32.497044, 38.244099, 44.766201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.263580, 38.198025, 44.797375>,  <31.874474, 38.121235, 44.849331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.263580, 38.198025, 44.797375> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173541, 0.231744, -0.957172,
		-0.153651, 0.953646, 0.258748,
		0.972767, 0.191974, -0.129889,
		32.555408, 38.255615, 44.758408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.939718, 38.692341, 44.347744>,  <31.874474, 38.121235, 44.849331>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.939718, 38.692341, 44.347744> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.310730, 38.544147, 44.328041>,  <32.533337, 38.455231, 44.316219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.310730, 38.544147, 44.328041>,  <31.939718, 38.692341, 44.347744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.310730, 38.544147, 44.328041> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042643, 0.235847, -0.970854,
		0.371305, 0.898397, 0.234554,
		0.927531, -0.370485, -0.049261,
		32.588989, 38.433002, 44.313263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.317772, 39.230667, 43.997513>,  <31.939718, 38.692341, 44.347744>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.317772, 39.230667, 43.997513> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.514427, 38.885052, 43.954205>,  <32.632420, 38.677681, 43.928219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.514427, 38.885052, 43.954205>,  <32.317772, 39.230667, 43.997513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.514427, 38.885052, 43.954205> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182117, 0.223608, -0.957514,
		0.851542, 0.451034, 0.267291,
		0.491640, -0.864042, -0.108270,
		32.661919, 38.625839, 43.921722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.834633, 39.356697, 43.653484>,  <32.317772, 39.230667, 43.997513>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.834633, 39.356697, 43.653484> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.868874, 38.960148, 43.613796>,  <32.889416, 38.722218, 43.589985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.868874, 38.960148, 43.613796>,  <32.834633, 39.356697, 43.653484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.868874, 38.960148, 43.613796> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225423, 0.116271, -0.967298,
		0.970493, 0.060435, 0.233432,
		0.085600, -0.991377, -0.099217,
		32.894554, 38.662735, 43.584030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.590218, 39.201267, 43.259537>,  <32.834633, 39.356697, 43.653484>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.590218, 39.201267, 43.259537> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.342171, 38.893490, 43.198330>,  <33.193344, 38.708824, 43.161606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.342171, 38.893490, 43.198330>,  <33.590218, 39.201267, 43.259537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.342171, 38.893490, 43.198330> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124000, 0.096466, -0.987582,
		0.774651, -0.631386, 0.035592,
		-0.620112, -0.769445, -0.153020,
		33.156136, 38.662655, 43.152424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.270893, 39.223522, 43.223618>,  <33.590218, 39.201267, 43.259537>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.270893, 39.223522, 43.223618> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.534584, 39.492496, 43.089005>,  <34.692799, 39.653881, 43.008236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.534584, 39.492496, 43.089005>,  <34.270893, 39.223522, 43.223618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.534584, 39.492496, 43.089005> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106141, 0.359849, 0.926953,
		0.744417, -0.646790, 0.165849,
		0.659225, 0.672437, -0.336529,
		34.732353, 39.694229, 42.988045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.821136, 39.204853, 43.651249>,  <34.270893, 39.223522, 43.223618>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.821136, 39.204853, 43.651249> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.807034, 39.573177, 43.495884>,  <34.798573, 39.794174, 43.402664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.807034, 39.573177, 43.495884>,  <34.821136, 39.204853, 43.651249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.807034, 39.573177, 43.495884> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097295, 0.383641, 0.918343,
		0.994631, 0.070172, 0.076062,
		-0.035261, 0.920813, -0.388408,
		34.796455, 39.849422, 43.379360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.321308, 39.589130, 44.087189>,  <34.821136, 39.204853, 43.651249>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.321308, 39.589130, 44.087189> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.075031, 39.858692, 43.923840>,  <34.927265, 40.020432, 43.825832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.075031, 39.858692, 43.923840>,  <35.321308, 39.589130, 44.087189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.075031, 39.858692, 43.923840> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112613, 0.437676, 0.892053,
		0.779895, 0.595221, -0.193585,
		-0.615696, 0.673908, -0.408371,
		34.890324, 40.060863, 43.801327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.447449, 40.213959, 44.458530>,  <35.321308, 39.589130, 44.087189>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.447449, 40.213959, 44.458530> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.084679, 40.293312, 44.309860>,  <34.867016, 40.340923, 44.220657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.084679, 40.293312, 44.309860>,  <35.447449, 40.213959, 44.458530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.084679, 40.293312, 44.309860> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228785, 0.508882, 0.829878,
		0.353767, 0.837666, -0.416130,
		-0.906921, 0.198379, -0.371671,
		34.812603, 40.352825, 44.198360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.379406, 40.925915, 44.611572>,  <35.447449, 40.213959, 44.458530>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.379406, 40.925915, 44.611572> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.011185, 40.787865, 44.538391>,  <34.790253, 40.705032, 44.494480>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.011185, 40.787865, 44.538391>,  <35.379406, 40.925915, 44.611572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.011185, 40.787865, 44.538391> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309255, 0.357777, 0.881111,
		-0.238639, 0.867687, -0.436084,
		-0.920550, -0.345129, -0.182957,
		34.735020, 40.684326, 44.483505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.914753, 41.465157, 44.907757>,  <35.379406, 40.925915, 44.611572>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.914753, 41.465157, 44.907757> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.694794, 41.131138, 44.914787>,  <34.562817, 40.930729, 44.919006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.694794, 41.131138, 44.914787>,  <34.914753, 41.465157, 44.907757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.694794, 41.131138, 44.914787> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335462, 0.240085, 0.910947,
		-0.764901, 0.495035, -0.412149,
		-0.549901, -0.835045, 0.017576,
		34.529823, 40.880623, 44.920059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.259373, 41.664375, 45.290302>,  <34.914753, 41.465157, 44.907757>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.259373, 41.664375, 45.290302> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.241623, 41.264782, 45.293320>,  <34.230972, 41.025024, 45.295132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.241623, 41.264782, 45.293320>,  <34.259373, 41.664375, 45.290302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.241623, 41.264782, 45.293320> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201801, 0.016364, 0.979290,
		-0.978421, 0.041936, -0.202322,
		-0.044378, -0.998986, 0.007548,
		34.228310, 40.965088, 45.295586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.580601, 41.508232, 45.459282>,  <34.259373, 41.664375, 45.290302>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.580601, 41.508232, 45.459282> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.806110, 41.195221, 45.564964>,  <33.941414, 41.007412, 45.628372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.806110, 41.195221, 45.564964>,  <33.580601, 41.508232, 45.459282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.806110, 41.195221, 45.564964> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493749, -0.062885, 0.867328,
		-0.662097, -0.619426, -0.421828,
		0.563772, -0.782532, 0.264205,
		33.975243, 40.960461, 45.644226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.037525, 40.933350, 45.701134>,  <33.580601, 41.508232, 45.459282>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.037525, 40.933350, 45.701134> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.400139, 40.836266, 45.839283>,  <33.617706, 40.778015, 45.922173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.400139, 40.836266, 45.839283>,  <33.037525, 40.933350, 45.701134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.400139, 40.836266, 45.839283> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381648, -0.121651, 0.916267,
		-0.180383, -0.962438, -0.202915,
		0.906535, -0.242721, 0.345369,
		33.672100, 40.763451, 45.942894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.918453, 40.322437, 46.096432>,  <33.037525, 40.933350, 45.701134>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.918453, 40.322437, 46.096432> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.265923, 40.460712, 46.238361>,  <33.474403, 40.543678, 46.323521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.265923, 40.460712, 46.238361>,  <32.918453, 40.322437, 46.096432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.265923, 40.460712, 46.238361> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268525, -0.273322, 0.923682,
		0.416289, -0.897660, -0.144602,
		0.868676, 0.345689, 0.354825,
		33.526524, 40.564419, 46.344810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.162682, 39.875690, 46.630817>,  <32.918453, 40.322437, 46.096432>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.162682, 39.875690, 46.630817> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.389446, 40.200058, 46.688812>,  <33.525505, 40.394680, 46.723610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.389446, 40.200058, 46.688812>,  <33.162682, 39.875690, 46.630817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.389446, 40.200058, 46.688812> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111462, -0.098873, 0.988838,
		0.816203, -0.576744, 0.034334,
		0.566912, 0.810920, 0.144985,
		33.559521, 40.443333, 46.732307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.771969, 39.693092, 46.935379>,  <33.162682, 39.875690, 46.630817>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.771969, 39.693092, 46.935379> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.698727, 40.074696, 47.030323>,  <33.654781, 40.303658, 47.087288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.698727, 40.074696, 47.030323>,  <33.771969, 39.693092, 46.935379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.698727, 40.074696, 47.030323> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033934, -0.235161, 0.971364,
		0.982507, 0.185917, 0.010686,
		-0.183106, 0.954010, 0.237356,
		33.643795, 40.360897, 47.101528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.170319, 39.703022, 47.530483>,  <33.771969, 39.693092, 46.935379>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.170319, 39.703022, 47.530483> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.928364, 40.017410, 47.581646>,  <33.783192, 40.206043, 47.612343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.928364, 40.017410, 47.581646>,  <34.170319, 39.703022, 47.530483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.928364, 40.017410, 47.581646> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135821, -0.056439, 0.989124,
		0.784644, 0.615680, -0.072613,
		-0.604886, 0.785973, 0.127907,
		33.746899, 40.253201, 47.620018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.532696, 40.188919, 48.005089>,  <34.170319, 39.703022, 47.530483>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.532696, 40.188919, 48.005089> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.137962, 40.246410, 48.034744>,  <33.901123, 40.280903, 48.052536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.137962, 40.246410, 48.034744>,  <34.532696, 40.188919, 48.005089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.137962, 40.246410, 48.034744> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060853, -0.094739, 0.993641,
		0.149835, 0.985072, 0.084746,
		-0.986837, 0.143726, 0.074140,
		33.841911, 40.289528, 48.056988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.116325, 40.585423, 47.890289>,  <34.532696, 40.188919, 48.005089>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.116325, 40.585423, 47.890289> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.505325, 40.492828, 47.900593>,  <35.738724, 40.437271, 47.906776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.505325, 40.492828, 47.900593>,  <35.116325, 40.585423, 47.890289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.505325, 40.492828, 47.900593> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040054, 0.057251, -0.997556,
		0.229447, 0.971152, 0.064949,
		0.972497, -0.231488, 0.025762,
		35.797073, 40.423382, 47.908321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.504200, 41.169182, 47.636375>,  <35.116325, 40.585423, 47.890289>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.504200, 41.169182, 47.636375> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.761459, 40.866879, 47.587090>,  <35.915813, 40.685497, 47.557518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.761459, 40.866879, 47.587090>,  <35.504200, 41.169182, 47.636375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.761459, 40.866879, 47.587090> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188651, 0.312337, -0.931051,
		0.742139, 0.575560, 0.343454,
		0.643149, -0.755762, -0.123218,
		35.954403, 40.640148, 47.550125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.058880, 41.447224, 47.284100>,  <35.504200, 41.169182, 47.636375>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.058880, 41.447224, 47.284100> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.104958, 41.055344, 47.218464>,  <36.132603, 40.820217, 47.179081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.104958, 41.055344, 47.218464>,  <36.058880, 41.447224, 47.284100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.104958, 41.055344, 47.218464> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390714, 0.196559, -0.899281,
		0.913276, 0.039479, 0.405424,
		0.115192, -0.979697, -0.164088,
		36.139515, 40.761436, 47.169239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.723114, 41.443199, 46.925495>,  <36.058880, 41.447224, 47.284100>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.723114, 41.443199, 46.925495> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.554203, 41.084591, 46.871933>,  <36.452854, 40.869427, 46.839798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.554203, 41.084591, 46.871933>,  <36.723114, 41.443199, 46.925495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.554203, 41.084591, 46.871933> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479080, -0.095329, -0.872579,
		0.769521, -0.432623, 0.469761,
		-0.422280, -0.896521, -0.133903,
		36.427521, 40.815636, 46.831760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.240547, 41.028366, 46.740013>,  <36.723114, 41.443199, 46.925495>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.240547, 41.028366, 46.740013> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.915581, 40.851501, 46.587975>,  <36.720600, 40.745384, 46.496750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.915581, 40.851501, 46.587975>,  <37.240547, 41.028366, 46.740013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.915581, 40.851501, 46.587975> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390687, 0.071107, -0.917773,
		0.432833, -0.894112, 0.114979,
		-0.812416, -0.442163, -0.380095,
		36.671856, 40.718853, 46.473946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.440781, 40.654491, 46.201801>,  <37.240547, 41.028366, 46.740013>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.440781, 40.654491, 46.201801> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.058273, 40.652267, 46.084831>,  <36.828770, 40.650932, 46.014648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.058273, 40.652267, 46.084831>,  <37.440781, 40.654491, 46.201801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.058273, 40.652267, 46.084831> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286590, -0.217457, -0.933048,
		-0.058403, -0.976054, 0.209541,
		-0.956271, -0.005559, -0.292427,
		36.771393, 40.650600, 45.997105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.290291, 39.995529, 45.911362>,  <37.440781, 40.654491, 46.201801>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.290291, 39.995529, 45.911362> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.035847, 40.265202, 45.761250>,  <36.883179, 40.427006, 45.671181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.035847, 40.265202, 45.761250>,  <37.290291, 39.995529, 45.911362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.035847, 40.265202, 45.761250> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160974, -0.359715, -0.919072,
		-0.754617, -0.645045, 0.120294,
		-0.636114, 0.674183, -0.375283,
		36.845013, 40.467457, 45.648666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.750088, 39.639919, 45.439930>,  <37.290291, 39.995529, 45.911362>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.750088, 39.639919, 45.439930> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.813358, 40.025097, 45.352554>,  <36.851322, 40.256203, 45.300129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.813358, 40.025097, 45.352554>,  <36.750088, 39.639919, 45.439930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.813358, 40.025097, 45.352554> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296107, -0.257301, -0.919846,
		-0.941966, 0.080819, -0.325834,
		0.158178, 0.962946, -0.218438,
		36.860813, 40.313980, 45.287022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.396080, 39.852589, 44.868332>,  <36.750088, 39.639919, 45.439930>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.396080, 39.852589, 44.868332> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.689865, 40.124046, 44.868179>,  <36.866138, 40.286922, 44.868088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.689865, 40.124046, 44.868179>,  <36.396080, 39.852589, 44.868332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.689865, 40.124046, 44.868179> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260153, -0.282067, -0.923449,
		-0.626802, 0.678143, -0.383720,
		0.734465, 0.678646, -0.000380,
		36.910206, 40.327641, 44.868065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.298374, 40.304424, 44.181461>,  <36.396080, 39.852589, 44.868332>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.298374, 40.304424, 44.181461> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.671562, 40.351021, 44.317692>,  <36.895473, 40.378979, 44.399429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.671562, 40.351021, 44.317692>,  <36.298374, 40.304424, 44.181461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.671562, 40.351021, 44.317692> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355672, -0.152874, -0.922023,
		-0.055342, 0.981356, -0.184059,
		0.932971, 0.116492, 0.340581,
		36.951454, 40.385967, 44.419865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.580956, 40.609673, 43.605705>,  <36.298374, 40.304424, 44.181461>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.580956, 40.609673, 43.605705> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.887066, 40.468746, 43.821194>,  <37.070732, 40.384190, 43.950485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.887066, 40.468746, 43.821194>,  <36.580956, 40.609673, 43.605705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.887066, 40.468746, 43.821194> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462352, -0.281438, -0.840847,
		0.447862, 0.892561, -0.052484,
		0.765278, -0.352318, 0.538722,
		37.116650, 40.363052, 43.982811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.202343, 40.959827, 43.364769>,  <36.580956, 40.609673, 43.605705>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.202343, 40.959827, 43.364769> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.320457, 40.609638, 43.517796>,  <37.391327, 40.399525, 43.609612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.320457, 40.609638, 43.517796>,  <37.202343, 40.959827, 43.364769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.320457, 40.609638, 43.517796> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556398, -0.167936, -0.813768,
		0.776675, 0.453158, 0.437519,
		0.295290, -0.875469, 0.382568,
		37.409046, 40.346996, 43.632565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.882389, 40.847664, 43.091324>,  <37.202343, 40.959827, 43.364769>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.882389, 40.847664, 43.091324> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.795269, 40.493443, 43.255451>,  <37.742996, 40.280910, 43.353928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.795269, 40.493443, 43.255451>,  <37.882389, 40.847664, 43.091324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.795269, 40.493443, 43.255451> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635249, -0.447789, -0.629240,
		0.740961, 0.123605, 0.660075,
		-0.217797, -0.885555, 0.410314,
		37.729931, 40.227776, 43.378544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.408154, 40.523159, 43.265175>,  <37.882389, 40.847664, 43.091324>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.408154, 40.523159, 43.265175> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.162056, 40.214622, 43.200047>,  <38.014397, 40.029503, 43.160969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.162056, 40.214622, 43.200047>,  <38.408154, 40.523159, 43.265175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.162056, 40.214622, 43.200047> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595367, -0.319252, -0.737303,
		0.516730, -0.550559, 0.655648,
		-0.615246, -0.771338, -0.162817,
		37.977482, 39.983223, 43.151203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<30.713203, 41.723305, 33.641640> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.860643, 41.369904, 33.526020>,  <30.949106, 41.157864, 33.456650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.860643, 41.369904, 33.526020>,  <30.713203, 41.723305, 33.641640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.860643, 41.369904, 33.526020> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776146, -0.463626, 0.427373,
		-0.511599, 0.066817, -0.856622,
		0.368597, -0.883508, -0.289051,
		30.971222, 41.104851, 33.439304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.219271, 41.278740, 33.223846>,  <30.713203, 41.723305, 33.641640>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.219271, 41.278740, 33.223846> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.471167, 41.042149, 33.425274>,  <30.622303, 40.900196, 33.546131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.471167, 41.042149, 33.425274>,  <30.219271, 41.278740, 33.223846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.471167, 41.042149, 33.425274> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739286, -0.655373, 0.154734,
		0.238507, -0.469726, -0.849984,
		0.629739, -0.591476, 0.503573,
		30.660088, 40.864704, 33.576347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.253592, 40.643688, 32.892155>,  <30.219271, 41.278740, 33.223846>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.253592, 40.643688, 32.892155> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.385008, 40.556538, 33.259762>,  <30.463858, 40.504246, 33.480324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.385008, 40.556538, 33.259762>,  <30.253592, 40.643688, 32.892155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.385008, 40.556538, 33.259762> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658840, -0.750067, 0.057708,
		0.676750, -0.624444, -0.389975,
		0.328543, -0.217877, 0.919016,
		30.483570, 40.491173, 33.535465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.466946, 39.829403, 32.941422>,  <30.253592, 40.643688, 32.892155>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.466946, 39.829403, 32.941422> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.391459, 39.946735, 33.316299>,  <30.346167, 40.017136, 33.541225>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.391459, 39.946735, 33.316299>,  <30.466946, 39.829403, 32.941422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.391459, 39.946735, 33.316299> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624855, -0.772100, 0.115838,
		0.757590, -0.563752, 0.328999,
		-0.188716, 0.293334, 0.937199,
		30.334845, 40.034737, 33.597458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.093966, 39.259949, 33.187740>,  <30.466946, 39.829403, 32.941422>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.093966, 39.259949, 33.187740> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.017687, 39.524151, 33.478222>,  <29.971920, 39.682671, 33.652512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.017687, 39.524151, 33.478222>,  <30.093966, 39.259949, 33.187740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.017687, 39.524151, 33.478222> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766679, -0.562216, 0.310026,
		0.613056, -0.497644, 0.613607,
		-0.190697, 0.660503, 0.726203,
		29.960478, 39.722301, 33.696083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.979717, 38.843452, 33.837910>,  <30.093966, 39.259949, 33.187740>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.979717, 38.843452, 33.837910> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.806301, 39.198574, 33.899685>,  <29.702251, 39.411648, 33.936752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.806301, 39.198574, 33.899685>,  <29.979717, 38.843452, 33.837910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.806301, 39.198574, 33.899685> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900491, -0.433295, -0.037040,
		0.034035, -0.155132, 0.987307,
		-0.433542, 0.887800, 0.154442,
		29.676239, 39.464912, 33.946018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.566782, 38.873268, 34.460545>,  <29.979717, 38.843452, 33.837910>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.566782, 38.873268, 34.460545> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.395403, 39.153206, 34.231930>,  <29.292576, 39.321167, 34.094761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.395403, 39.153206, 34.231930>,  <29.566782, 38.873268, 34.460545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.395403, 39.153206, 34.231930> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844476, -0.535132, -0.022212,
		-0.321392, 0.473132, 0.820277,
		-0.428447, 0.699843, -0.571536,
		29.266869, 39.363159, 34.060471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.840435, 39.050102, 34.767380>,  <29.566782, 38.873268, 34.460545>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.840435, 39.050102, 34.767380> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.862663, 39.133389, 34.376778>,  <28.875999, 39.183361, 34.142418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.862663, 39.133389, 34.376778>,  <28.840435, 39.050102, 34.767380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.862663, 39.133389, 34.376778> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905449, -0.401677, -0.137176,
		-0.420801, 0.891797, 0.166207,
		0.055571, 0.208216, -0.976503,
		28.879335, 39.195854, 34.083828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.235073, 39.375225, 34.659149>,  <28.840435, 39.050102, 34.767380>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.235073, 39.375225, 34.659149> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.346416, 39.259861, 34.292686>,  <28.413223, 39.190643, 34.072811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.346416, 39.259861, 34.292686>,  <28.235073, 39.375225, 34.659149>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.346416, 39.259861, 34.292686> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874619, -0.470309, -0.117688,
		-0.396934, 0.834045, -0.383161,
		0.278361, -0.288406, -0.916153,
		28.429924, 39.173340, 34.017841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.634985, 39.431721, 34.269356>,  <28.235073, 39.375225, 34.659149>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.634985, 39.431721, 34.269356> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.882917, 39.185413, 34.074776>,  <28.031677, 39.037628, 33.958027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.882917, 39.185413, 34.074776>,  <27.634985, 39.431721, 34.269356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.882917, 39.185413, 34.074776> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774245, -0.580892, -0.251216,
		-0.127883, 0.532343, -0.836813,
		0.619831, -0.615772, -0.486450,
		28.068867, 39.000683, 33.928841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.383478, 39.421265, 33.571526>,  <27.634985, 39.431721, 34.269356>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.383478, 39.421265, 33.571526> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.603827, 39.096626, 33.649353>,  <27.736034, 38.901844, 33.696049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.603827, 39.096626, 33.649353>,  <27.383478, 39.421265, 33.571526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.603827, 39.096626, 33.649353> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820695, -0.569137, -0.050436,
		0.151670, -0.131897, -0.979591,
		0.550869, -0.811595, 0.194568,
		27.769087, 38.853149, 33.707722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.336664, 38.865746, 32.988384>,  <27.383478, 39.421265, 33.571526>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.336664, 38.865746, 32.988384> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.491257, 38.653259, 33.289963>,  <27.584011, 38.525768, 33.470909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.491257, 38.653259, 33.289963>,  <27.336664, 38.865746, 32.988384>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.491257, 38.653259, 33.289963> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769368, -0.636512, -0.054093,
		0.508632, -0.559158, -0.654702,
		0.386479, -0.531220, 0.753949,
		27.607201, 38.493893, 33.516148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.996143, 38.349155, 32.862423>,  <27.336664, 38.865746, 32.988384>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.996143, 38.349155, 32.862423> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.135042, 38.259537, 33.226669>,  <27.218382, 38.205765, 33.445217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.135042, 38.259537, 33.226669>,  <26.996143, 38.349155, 32.862423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.135042, 38.259537, 33.226669> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729874, -0.674273, 0.112428,
		0.588816, -0.703676, -0.397664,
		0.347247, -0.224045, 0.910617,
		27.239216, 38.192322, 33.499855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.152645, 37.637024, 33.024719>,  <26.996143, 38.349155, 32.862423>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.152645, 37.637024, 33.024719> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.091494, 37.754108, 33.402279>,  <27.054804, 37.824360, 33.628815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.091494, 37.754108, 33.402279>,  <27.152645, 37.637024, 33.024719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.091494, 37.754108, 33.402279> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479474, -0.857148, 0.188154,
		0.864137, -0.423811, 0.271387,
		-0.152877, 0.292714, 0.943900,
		27.045631, 37.841923, 33.685448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.327435, 37.023880, 33.423698>,  <27.152645, 37.637024, 33.024719>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.327435, 37.023880, 33.423698> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.109003, 37.259510, 33.661957>,  <26.977945, 37.400887, 33.804913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.109003, 37.259510, 33.661957>,  <27.327435, 37.023880, 33.423698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.109003, 37.259510, 33.661957> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397868, -0.808077, 0.434410,
		0.737226, 0.000234, 0.675647,
		-0.546077, 0.589076, 0.595642,
		26.945181, 37.436234, 33.840649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.430799, 36.830734, 34.151985>,  <27.327435, 37.023880, 33.423698>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.430799, 36.830734, 34.151985> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.080906, 37.024460, 34.158730>,  <26.870970, 37.140694, 34.162777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.080906, 37.024460, 34.158730>,  <27.430799, 36.830734, 34.151985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.080906, 37.024460, 34.158730> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396122, -0.734633, 0.550819,
		0.279154, 0.475140, 0.834455,
		-0.874734, 0.484309, 0.016862,
		26.818485, 37.169754, 34.163788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.182688, 36.723930, 34.800571>,  <27.430799, 36.830734, 34.151985>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.182688, 36.723930, 34.800571> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.861820, 36.857388, 34.602497>,  <26.669300, 36.937462, 34.483654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.861820, 36.857388, 34.602497>,  <27.182688, 36.723930, 34.800571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.861820, 36.857388, 34.602497> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565550, -0.690557, 0.450871,
		-0.191525, 0.641727, 0.742634,
		-0.802167, 0.333643, -0.495187,
		26.621170, 36.957481, 34.453941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.667950, 36.653721, 35.277245>,  <27.182688, 36.723930, 34.800571>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.667950, 36.653721, 35.277245> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.476515, 36.667255, 34.926289>,  <26.361654, 36.675377, 34.715717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.476515, 36.667255, 34.926289>,  <26.667950, 36.653721, 35.277245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.476515, 36.667255, 34.926289> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663852, -0.667957, 0.336354,
		-0.574676, 0.743431, 0.342138,
		-0.478589, 0.033834, -0.877387,
		26.332937, 36.677406, 34.663071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.922544, 36.690987, 35.469376>,  <26.667950, 36.653721, 35.277245>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.922544, 36.690987, 35.469376> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.984234, 36.545311, 35.101990>,  <26.021248, 36.457905, 34.881557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.984234, 36.545311, 35.101990>,  <25.922544, 36.690987, 35.469376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.984234, 36.545311, 35.101990> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719589, -0.678408, 0.148170,
		-0.677060, 0.638074, -0.366675,
		0.154212, -0.364175, -0.918475,
		26.030500, 36.436054, 34.826450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.301022, 36.988079, 36.127396>,  <25.922544, 36.690987, 35.469376>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.301022, 36.988079, 36.127396> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.656574, 37.090149, 36.279591>,  <26.869905, 37.151390, 36.370907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.656574, 37.090149, 36.279591>,  <26.301022, 36.988079, 36.127396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.656574, 37.090149, 36.279591> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303489, 0.950125, 0.071808,
		-0.343192, -0.179304, 0.921992,
		0.888883, 0.255171, 0.380492,
		26.923239, 37.166698, 36.393738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.229336, 37.510273, 36.655476>,  <26.301022, 36.988079, 36.127396>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.229336, 37.510273, 36.655476> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.622416, 37.545795, 36.590462>,  <26.858263, 37.567108, 36.551453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.622416, 37.545795, 36.590462>,  <26.229336, 37.510273, 36.655476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.622416, 37.545795, 36.590462> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028927, 0.940374, 0.338909,
		0.182943, -0.328343, 0.926673,
		0.982698, 0.088807, -0.162537,
		26.917225, 37.572437, 36.541702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.560522, 37.794117, 37.237209>,  <26.229336, 37.510273, 36.655476>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.560522, 37.794117, 37.237209> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.811951, 37.878654, 36.937817>,  <26.962809, 37.929379, 36.758179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.811951, 37.878654, 36.937817>,  <26.560522, 37.794117, 37.237209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.811951, 37.878654, 36.937817> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094508, 0.934485, 0.343230,
		0.771987, -0.286483, 0.567418,
		0.628573, 0.211343, -0.748485,
		27.000523, 37.942059, 36.713272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.211807, 38.014694, 37.457565>,  <26.560522, 37.794117, 37.237209>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.211807, 38.014694, 37.457565> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.181118, 38.157059, 37.085018>,  <27.162704, 38.242477, 36.861492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.181118, 38.157059, 37.085018>,  <27.211807, 38.014694, 37.457565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.181118, 38.157059, 37.085018> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266913, 0.907356, 0.324749,
		0.960662, -0.223677, -0.164614,
		-0.076724, 0.355912, -0.931365,
		27.158100, 38.263832, 36.805607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.756758, 38.509274, 37.411697>,  <27.211807, 38.014694, 37.457565>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.756758, 38.509274, 37.411697> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.516319, 38.617687, 37.110973>,  <27.372057, 38.682735, 36.930538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.516319, 38.617687, 37.110973>,  <27.756758, 38.509274, 37.411697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.516319, 38.617687, 37.110973> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330331, 0.940874, 0.075089,
		0.727712, -0.203211, -0.655088,
		-0.601096, 0.271039, -0.751812,
		27.335991, 38.698997, 36.885429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.240274, 38.881516, 36.986084>,  <27.756758, 38.509274, 37.411697>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.240274, 38.881516, 36.986084> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.874798, 38.990585, 36.865540>,  <27.655512, 39.056026, 36.793213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.874798, 38.990585, 36.865540>,  <28.240274, 38.881516, 36.986084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.874798, 38.990585, 36.865540> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328352, 0.932244, -0.152010,
		0.239493, -0.237843, -0.941315,
		-0.913689, 0.272677, -0.301362,
		27.600691, 39.072388, 36.775131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.343252, 39.322170, 36.339352>,  <28.240274, 38.881516, 36.986084>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.343252, 39.322170, 36.339352> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.980682, 39.417995, 36.478497>,  <27.763140, 39.475491, 36.561981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.980682, 39.417995, 36.478497>,  <28.343252, 39.322170, 36.339352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.980682, 39.417995, 36.478497> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183255, 0.965093, -0.187118,
		-0.380543, -0.105861, -0.918684,
		-0.906424, 0.239560, 0.347859,
		27.708755, 39.489864, 36.582855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.125526, 39.818569, 35.767239>,  <28.343252, 39.322170, 36.339352>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.125526, 39.818569, 35.767239> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.911726, 39.865089, 36.102089>,  <27.783445, 39.893002, 36.302998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.911726, 39.865089, 36.102089>,  <28.125526, 39.818569, 35.767239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.911726, 39.865089, 36.102089> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054654, 0.993170, -0.103082,
		-0.843398, -0.009346, -0.537208,
		-0.534503, 0.116300, 0.837127,
		27.751375, 39.899979, 36.353226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.679422, 40.371998, 35.596493>,  <28.125526, 39.818569, 35.767239>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.679422, 40.371998, 35.596493> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.701502, 40.346779, 35.995087>,  <27.714750, 40.331650, 36.234241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.701502, 40.346779, 35.995087>,  <27.679422, 40.371998, 35.596493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.701502, 40.346779, 35.995087> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192327, 0.979987, 0.051345,
		-0.979777, 0.188817, 0.066221,
		0.055201, -0.063043, 0.996483,
		27.718061, 40.327866, 36.294033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.330000, 40.999557, 35.832054>,  <27.679422, 40.371998, 35.596493>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.330000, 40.999557, 35.832054> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.546822, 40.871773, 36.142956>,  <27.676914, 40.795101, 36.329494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.546822, 40.871773, 36.142956>,  <27.330000, 40.999557, 35.832054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.546822, 40.871773, 36.142956> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278411, 0.940956, 0.192585,
		-0.792884, 0.112004, 0.598991,
		0.542054, -0.319463, 0.777252,
		27.709438, 40.775932, 36.376133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.140011, 41.459534, 36.418377>,  <27.330000, 40.999557, 35.832054>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.140011, 41.459534, 36.418377> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.496391, 41.300236, 36.505653>,  <27.710220, 41.204659, 36.558018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.496391, 41.300236, 36.505653>,  <27.140011, 41.459534, 36.418377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.496391, 41.300236, 36.505653> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345516, 0.906312, 0.243345,
		-0.294660, -0.141420, 0.945080,
		0.890951, -0.398244, 0.218191,
		27.763678, 41.180763, 36.571110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.256433, 41.575340, 37.128353>,  <27.140011, 41.459534, 36.418377>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.256433, 41.575340, 37.128353> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.624298, 41.489662, 36.996689>,  <27.845016, 41.438255, 36.917690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.624298, 41.489662, 36.996689>,  <27.256433, 41.575340, 37.128353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.624298, 41.489662, 36.996689> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330279, 0.875314, 0.353187,
		0.212468, -0.433526, 0.875735,
		0.919659, -0.214196, -0.329161,
		27.900196, 41.425404, 36.897942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.699457, 41.688946, 37.623875>,  <27.256433, 41.575340, 37.128353>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.699457, 41.688946, 37.623875> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.906651, 41.713108, 37.282574>,  <28.030968, 41.727604, 37.077793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.906651, 41.713108, 37.282574>,  <27.699457, 41.688946, 37.623875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.906651, 41.713108, 37.282574> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405322, 0.861077, 0.307018,
		0.753263, -0.504874, 0.421542,
		0.517986, 0.060405, -0.853254,
		28.062046, 41.731228, 37.026596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.295193, 41.864639, 37.843845>,  <27.699457, 41.688946, 37.623875>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.295193, 41.864639, 37.843845> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.331430, 41.962612, 37.457726>,  <28.353172, 42.021397, 37.226055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.331430, 41.962612, 37.457726>,  <28.295193, 41.864639, 37.843845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.331430, 41.962612, 37.457726> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468248, 0.844985, 0.258348,
		0.878941, -0.475404, -0.038137,
		0.090595, 0.244930, -0.965299,
		28.358608, 42.036091, 37.168137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.013147, 42.127468, 37.794601>,  <28.295193, 41.864639, 37.843845>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.013147, 42.127468, 37.794601> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.825172, 42.260307, 37.467464>,  <28.712387, 42.340012, 37.271183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.825172, 42.260307, 37.467464>,  <29.013147, 42.127468, 37.794601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.825172, 42.260307, 37.467464> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491288, 0.868161, 0.070235,
		0.733344, -0.368791, -0.571139,
		-0.469939, 0.332100, -0.817843,
		28.684191, 42.359936, 37.222111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.583372, 42.247536, 37.447441>,  <29.013147, 42.127468, 37.794601>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.583372, 42.247536, 37.447441> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.256079, 42.435741, 37.315319>,  <29.059702, 42.548664, 37.236046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.256079, 42.435741, 37.315319>,  <29.583372, 42.247536, 37.447441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.256079, 42.435741, 37.315319> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508001, 0.860751, -0.032290,
		0.269121, -0.194218, -0.943320,
		-0.818235, 0.470518, -0.330309,
		29.010609, 42.576897, 37.216225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.748037, 42.500481, 36.845112>,  <29.583372, 42.247536, 37.447441>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.748037, 42.500481, 36.845112> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.448147, 42.735909, 36.966106>,  <29.268213, 42.877163, 37.038704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.448147, 42.735909, 36.966106>,  <29.748037, 42.500481, 36.845112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.448147, 42.735909, 36.966106> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552857, 0.808302, -0.202479,
		-0.363676, 0.015430, -0.931398,
		-0.749726, 0.588566, 0.302491,
		29.223228, 42.912479, 37.056854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.805267, 42.987877, 36.368340>,  <29.748037, 42.500481, 36.845112>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.805267, 42.987877, 36.368340> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.596708, 43.160454, 36.662823>,  <29.471573, 43.264000, 36.839512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.596708, 43.160454, 36.662823>,  <29.805267, 42.987877, 36.368340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.596708, 43.160454, 36.662823> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427076, 0.878870, -0.212587,
		-0.738749, 0.203573, -0.642501,
		-0.521398, 0.431446, 0.736206,
		29.440289, 43.289886, 36.883686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.613853, 43.517822, 36.120750>,  <29.805267, 42.987877, 36.368340>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.613853, 43.517822, 36.120750> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.577110, 43.612198, 36.507717>,  <29.555063, 43.668823, 36.739899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.577110, 43.612198, 36.507717>,  <29.613853, 43.517822, 36.120750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.577110, 43.612198, 36.507717> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456890, 0.873208, -0.169583,
		-0.884767, 0.426425, -0.188012,
		-0.091859, 0.235943, 0.967416,
		29.549553, 43.682980, 36.797943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.465757, 44.176186, 36.131111>,  <29.613853, 43.517822, 36.120750>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.465757, 44.176186, 36.131111> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.569815, 44.148968, 36.516380>,  <29.632250, 44.132637, 36.747540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.569815, 44.148968, 36.516380>,  <29.465757, 44.176186, 36.131111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.569815, 44.148968, 36.516380> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345536, 0.938016, -0.027056,
		-0.901626, 0.339848, 0.267533,
		0.260145, -0.068047, 0.963169,
		29.647858, 44.128555, 36.805332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.066364, 44.695038, 36.428719>,  <29.465757, 44.176186, 36.131111>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.066364, 44.695038, 36.428719> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.394283, 44.632938, 36.649200>,  <29.591034, 44.595676, 36.781490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.394283, 44.632938, 36.649200>,  <29.066364, 44.695038, 36.428719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.394283, 44.632938, 36.649200> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155139, 0.986764, 0.047198,
		-0.551240, 0.046821, 0.833032,
		0.819797, -0.155253, 0.551207,
		29.640223, 44.586361, 36.814564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.009331, 45.243523, 36.861912>,  <29.066364, 44.695038, 36.428719>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.009331, 45.243523, 36.861912> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.381554, 45.098526, 36.882572>,  <29.604887, 45.011528, 36.894966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.381554, 45.098526, 36.882572>,  <29.009331, 45.243523, 36.861912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.381554, 45.098526, 36.882572> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364760, 0.930034, -0.044567,
		-0.031880, 0.060311, 0.997670,
		0.930555, -0.362490, 0.051648,
		29.660721, 44.989780, 36.898067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.353205, 45.621029, 37.460461>,  <29.009331, 45.243523, 36.861912>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.353205, 45.621029, 37.460461> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.617889, 45.500015, 37.186054>,  <29.776699, 45.427406, 37.021412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.617889, 45.500015, 37.186054>,  <29.353205, 45.621029, 37.460461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.617889, 45.500015, 37.186054> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286980, 0.947498, -0.141034,
		0.692662, -0.103548, 0.713790,
		0.661711, -0.302533, -0.686012,
		29.816402, 45.409256, 36.980251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.721214, 36.054710, 48.948658> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.321995, 36.033180, 48.961376>,  <39.082462, 36.020264, 48.969009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.321995, 36.033180, 48.961376>,  <39.721214, 36.054710, 48.948658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.321995, 36.033180, 48.961376> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004921, 0.439440, 0.898259,
		-0.062318, 0.896658, -0.438315,
		-0.998044, -0.053821, 0.031798,
		39.022583, 36.017033, 48.970917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.526752, 36.639404, 49.293819>,  <39.721214, 36.054710, 48.948658>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.526752, 36.639404, 49.293819> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.203732, 36.403790, 49.305767>,  <39.009918, 36.262421, 49.312935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.203732, 36.403790, 49.305767>,  <39.526752, 36.639404, 49.293819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.203732, 36.403790, 49.305767> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278060, 0.424889, 0.861482,
		-0.520137, 0.687387, -0.506908,
		-0.807552, -0.589040, 0.029865,
		38.961468, 36.227077, 49.314728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.958675, 37.112972, 49.409851>,  <39.526752, 36.639404, 49.293819>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.958675, 37.112972, 49.409851> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.827988, 36.753052, 49.525517>,  <38.749577, 36.537098, 49.594917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.827988, 36.753052, 49.525517>,  <38.958675, 37.112972, 49.409851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.827988, 36.753052, 49.525517> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458329, 0.418413, 0.784133,
		-0.826554, 0.123656, -0.549107,
		-0.326716, -0.899800, 0.289166,
		38.729973, 36.483112, 49.612267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.187168, 37.191013, 49.599968>,  <38.958675, 37.112972, 49.409851>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.187168, 37.191013, 49.599968> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.333622, 36.864353, 49.778416>,  <38.421494, 36.668358, 49.885487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.333622, 36.864353, 49.778416>,  <38.187168, 37.191013, 49.599968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.333622, 36.864353, 49.778416> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421558, 0.281838, 0.861891,
		-0.829601, -0.503631, -0.241078,
		0.366130, -0.816654, 0.446122,
		38.443462, 36.619358, 49.912251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.683613, 37.058407, 49.968540>,  <38.187168, 37.191013, 49.599968>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.683613, 37.058407, 49.968540> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.982071, 36.849106, 50.133209>,  <38.161144, 36.723526, 50.232010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.982071, 36.849106, 50.133209>,  <37.683613, 37.058407, 49.968540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.982071, 36.849106, 50.133209> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328366, 0.248678, 0.911227,
		-0.579180, -0.815084, 0.013729,
		0.746141, -0.523257, 0.411676,
		38.205914, 36.692127, 50.256710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.352283, 36.582340, 50.407238>,  <37.683613, 37.058407, 49.968540>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.352283, 36.582340, 50.407238> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.727505, 36.609589, 50.543129>,  <37.952637, 36.625938, 50.624664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.727505, 36.609589, 50.543129>,  <37.352283, 36.582340, 50.407238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.727505, 36.609589, 50.543129> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346481, 0.178315, 0.920953,
		0.002156, -0.981613, 0.190871,
		0.938055, 0.068119, 0.339726,
		38.008923, 36.630024, 50.645046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.451225, 36.118999, 51.084995>,  <37.352283, 36.582340, 50.407238>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.451225, 36.118999, 51.084995> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.736507, 36.398750, 51.103790>,  <37.907677, 36.566601, 51.115067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.736507, 36.398750, 51.103790>,  <37.451225, 36.118999, 51.084995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.736507, 36.398750, 51.103790> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059030, -0.006872, 0.998232,
		0.698467, -0.714716, 0.036384,
		0.713203, 0.699381, 0.046989,
		37.950470, 36.608566, 51.117886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.886703, 35.919666, 51.671051>,  <37.451225, 36.118999, 51.084995>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.886703, 35.919666, 51.671051> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.964703, 36.308907, 51.621994>,  <38.011501, 36.542450, 51.592560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.964703, 36.308907, 51.621994>,  <37.886703, 35.919666, 51.671051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.964703, 36.308907, 51.621994> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133837, 0.150272, 0.979544,
		0.971629, -0.174598, 0.159541,
		0.195001, 0.973105, -0.122641,
		38.023205, 36.600838, 51.585201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.365765, 36.081478, 52.262135>,  <37.886703, 35.919666, 51.671051>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.365765, 36.081478, 52.262135> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.196617, 36.428108, 52.156139>,  <38.095127, 36.636086, 52.092541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.196617, 36.428108, 52.156139>,  <38.365765, 36.081478, 52.262135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.196617, 36.428108, 52.156139> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197368, 0.197329, 0.960264,
		0.884436, 0.458367, 0.087590,
		-0.422870, 0.866580, -0.264992,
		38.069756, 36.688084, 52.076641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.531143, 36.628139, 52.770069>,  <38.365765, 36.081478, 52.262135>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.531143, 36.628139, 52.770069> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.251179, 36.828953, 52.566860>,  <38.083199, 36.949440, 52.444935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.251179, 36.828953, 52.566860>,  <38.531143, 36.628139, 52.770069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.251179, 36.828953, 52.566860> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389885, 0.327407, 0.860694,
		0.598427, 0.800480, -0.033421,
		-0.699911, 0.502032, -0.508024,
		38.041206, 36.979561, 52.414452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.576580, 37.308453, 53.000248>,  <38.531143, 36.628139, 52.770069>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.576580, 37.308453, 53.000248> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.206539, 37.287395, 52.849831>,  <37.984516, 37.274761, 52.759579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.206539, 37.287395, 52.849831>,  <38.576580, 37.308453, 53.000248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.206539, 37.287395, 52.849831> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374405, 0.291513, 0.880250,
		0.063280, 0.955117, -0.289391,
		-0.925103, -0.052647, -0.376048,
		37.929008, 37.271603, 52.737015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.388214, 37.943039, 53.040871>,  <38.576580, 37.308453, 53.000248>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.388214, 37.943039, 53.040871> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.074703, 37.694729, 53.033600>,  <37.886597, 37.545742, 53.029236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.074703, 37.694729, 53.033600>,  <38.388214, 37.943039, 53.040871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.074703, 37.694729, 53.033600> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281215, 0.328655, 0.901612,
		-0.553721, 0.711778, -0.432164,
		-0.783780, -0.620772, -0.018180,
		37.839569, 37.508495, 53.028145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.796871, 38.351891, 53.377796>,  <38.388214, 37.943039, 53.040871>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.796871, 38.351891, 53.377796> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.682796, 37.969242, 53.354012>,  <37.614349, 37.739651, 53.339741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.682796, 37.969242, 53.354012>,  <37.796871, 38.351891, 53.377796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.682796, 37.969242, 53.354012> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288221, 0.026429, 0.957199,
		-0.914109, 0.290120, -0.283256,
		-0.285189, -0.956625, -0.059460,
		37.597240, 37.682255, 53.336174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.068085, 38.201221, 53.698956>,  <37.796871, 38.351891, 53.377796>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.068085, 38.201221, 53.698956> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.314194, 37.886070, 53.688469>,  <37.461857, 37.696980, 53.682178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.314194, 37.886070, 53.688469>,  <37.068085, 38.201221, 53.698956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.314194, 37.886070, 53.688469> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073748, -0.090635, 0.993150,
		-0.784859, -0.609122, -0.113870,
		0.615270, -0.787880, -0.026214,
		37.498775, 37.649708, 53.680603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.714222, 38.731987, 53.305550>,  <37.068085, 38.201221, 53.698956>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.714222, 38.731987, 53.305550> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.789921, 39.115799, 53.388966>,  <36.835339, 39.346085, 53.439014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.789921, 39.115799, 53.388966>,  <36.714222, 38.731987, 53.305550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.789921, 39.115799, 53.388966> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444141, 0.273056, -0.853334,
		-0.875742, 0.068869, 0.477841,
		0.189246, 0.959530, 0.208539,
		36.846695, 39.403656, 53.451527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.287502, 39.083031, 52.989788>,  <36.714222, 38.731987, 53.305550>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.287502, 39.083031, 52.989788> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.478134, 39.431328, 53.038258>,  <36.592514, 39.640305, 53.067337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.478134, 39.431328, 53.038258>,  <36.287502, 39.083031, 52.989788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.478134, 39.431328, 53.038258> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254641, 0.268646, -0.928971,
		-0.841444, 0.411875, 0.349758,
		0.476581, 0.870740, 0.121170,
		36.621109, 39.692551, 53.074608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.894703, 39.603195, 52.728088>,  <36.287502, 39.083031, 52.989788>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.894703, 39.603195, 52.728088> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.244141, 39.796822, 52.708050>,  <36.453804, 39.912998, 52.696026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.244141, 39.796822, 52.708050>,  <35.894703, 39.603195, 52.728088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.244141, 39.796822, 52.708050> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198074, 0.259657, -0.945169,
		-0.444514, 0.835621, 0.322716,
		0.873598, 0.484062, -0.050094,
		36.506222, 39.942039, 52.693020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.724728, 40.170685, 52.374229>,  <35.894703, 39.603195, 52.728088>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.724728, 40.170685, 52.374229> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.123287, 40.175728, 52.340672>,  <36.362423, 40.178753, 52.320538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.123287, 40.175728, 52.340672>,  <35.724728, 40.170685, 52.374229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.123287, 40.175728, 52.340672> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083040, 0.347328, -0.934060,
		0.017366, 0.937659, 0.347123,
		0.996395, 0.012604, -0.083895,
		36.422207, 40.179508, 52.315502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.940449, 40.789021, 52.118324>,  <35.724728, 40.170685, 52.374229>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.940449, 40.789021, 52.118324> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.249695, 40.548363, 52.038013>,  <36.435242, 40.403969, 51.989826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.249695, 40.548363, 52.038013>,  <35.940449, 40.789021, 52.118324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.249695, 40.548363, 52.038013> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027350, 0.347877, -0.937141,
		0.633674, 0.719029, 0.285404,
		0.773117, -0.601647, -0.200775,
		36.481628, 40.367870, 51.977779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.384930, 41.174572, 51.648060>,  <35.940449, 40.789021, 52.118324>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.384930, 41.174572, 51.648060> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.478329, 40.789608, 51.592579>,  <36.534367, 40.558628, 51.559292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.478329, 40.789608, 51.592579>,  <36.384930, 41.174572, 51.648060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.478329, 40.789608, 51.592579> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194528, 0.185993, -0.963102,
		0.952700, 0.197901, 0.230646,
		0.233497, -0.962414, -0.138698,
		36.548378, 40.500885, 51.550968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.795563, 41.262199, 51.053635>,  <36.384930, 41.174572, 51.648060>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.795563, 41.262199, 51.053635> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.708778, 40.871853, 51.063549>,  <36.656708, 40.637646, 51.069496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.708778, 40.871853, 51.063549>,  <36.795563, 41.262199, 51.053635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.708778, 40.871853, 51.063549> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076432, -0.042294, -0.996177,
		0.973184, -0.214234, 0.083764,
		-0.216958, -0.975866, 0.024785,
		36.643692, 40.579094, 51.070984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.100857, 41.010738, 50.410519>,  <36.795563, 41.262199, 51.053635>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.100857, 41.010738, 50.410519> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.861034, 40.708618, 50.516396>,  <36.717140, 40.527348, 50.579922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.861034, 40.708618, 50.516396>,  <37.100857, 41.010738, 50.410519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.861034, 40.708618, 50.516396> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301674, -0.093059, -0.948859,
		0.741302, -0.648742, -0.172060,
		-0.599553, -0.755297, 0.264693,
		36.681168, 40.482029, 50.595802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.368858, 40.476162, 49.970943>,  <37.100857, 41.010738, 50.410519>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.368858, 40.476162, 49.970943> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.995224, 40.408634, 50.096794>,  <36.771046, 40.368118, 50.172306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.995224, 40.408634, 50.096794>,  <37.368858, 40.476162, 49.970943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.995224, 40.408634, 50.096794> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297371, -0.119945, -0.947198,
		0.197640, -0.978322, 0.061838,
		-0.934082, -0.168815, 0.314631,
		36.715000, 40.357990, 50.191185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.116676, 39.834652, 49.657837>,  <37.368858, 40.476162, 49.970943>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.116676, 39.834652, 49.657837> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.796066, 40.035091, 49.788345>,  <36.603699, 40.155354, 49.866650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.796066, 40.035091, 49.788345>,  <37.116676, 39.834652, 49.657837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.796066, 40.035091, 49.788345> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356704, 0.037242, -0.933475,
		-0.479911, -0.864590, 0.148892,
		-0.801528, 0.501096, 0.326275,
		36.555607, 40.185421, 49.886227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.719963, 39.551765, 49.330902>,  <37.116676, 39.834652, 49.657837>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.719963, 39.551765, 49.330902> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.515705, 39.875080, 49.448143>,  <36.393150, 40.069069, 49.518486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.515705, 39.875080, 49.448143>,  <36.719963, 39.551765, 49.330902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.515705, 39.875080, 49.448143> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474007, 0.019754, -0.880299,
		-0.717328, -0.588452, 0.373048,
		-0.510645, 0.808291, 0.293101,
		36.362511, 40.117569, 49.536072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.987595, 39.414608, 49.135281>,  <36.719963, 39.551765, 49.330902>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.987595, 39.414608, 49.135281> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.034763, 39.811176, 49.157803>,  <36.063065, 40.049118, 49.171318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.034763, 39.811176, 49.157803>,  <35.987595, 39.414608, 49.135281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.034763, 39.811176, 49.157803> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340143, 0.093602, -0.935704,
		-0.932951, 0.091187, 0.348264,
		0.117923, 0.991425, 0.056309,
		36.070141, 40.108604, 49.174694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.468765, 39.637333, 48.810547>,  <35.987595, 39.414608, 49.135281>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.468765, 39.637333, 48.810547> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.697517, 39.964024, 48.779797>,  <35.834766, 40.160038, 48.761345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.697517, 39.964024, 48.779797>,  <35.468765, 39.637333, 48.810547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.697517, 39.964024, 48.779797> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181850, 0.034829, -0.982709,
		-0.799930, 0.575969, 0.168440,
		0.571876, 0.816730, -0.076879,
		35.869080, 40.209042, 48.756733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.105812, 40.061516, 48.398258>,  <35.468765, 39.637333, 48.810547>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.105812, 40.061516, 48.398258> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.495628, 40.147644, 48.373272>,  <35.729519, 40.199322, 48.358280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.495628, 40.147644, 48.373272>,  <35.105812, 40.061516, 48.398258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.495628, 40.147644, 48.373272> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068017, 0.018468, -0.997513,
		-0.213633, 0.976369, 0.032643,
		0.974543, 0.215322, -0.062464,
		35.787991, 40.212242, 48.354534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.583179, 40.683357, 48.553013>,  <35.105812, 40.061516, 48.398258>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.583179, 40.683357, 48.553013> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.184933, 40.647091, 48.543823>,  <33.945984, 40.625332, 48.538311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.184933, 40.647091, 48.543823>,  <34.583179, 40.683357, 48.553013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.184933, 40.647091, 48.543823> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025255, 0.024116, 0.999390,
		-0.090060, 0.995589, -0.026300,
		-0.995616, -0.090669, -0.022972,
		33.886250, 40.619888, 48.536930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.277378, 41.192863, 49.049599>,  <34.583179, 40.683357, 48.553013>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.277378, 41.192863, 49.049599> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.027813, 40.881134, 49.026337>,  <33.878075, 40.694096, 49.012379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.027813, 40.881134, 49.026337>,  <34.277378, 41.192863, 49.049599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.027813, 40.881134, 49.026337> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020868, -0.057770, 0.998112,
		-0.781211, 0.623953, 0.019780,
		-0.623918, -0.779324, -0.058151,
		33.840637, 40.647335, 49.008892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.747189, 41.333664, 49.609341>,  <34.277378, 41.192863, 49.049599>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.747189, 41.333664, 49.609341> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.734661, 40.942722, 49.525620>,  <33.727146, 40.708157, 49.475388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.734661, 40.942722, 49.525620>,  <33.747189, 41.333664, 49.609341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.734661, 40.942722, 49.525620> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131675, -0.203546, 0.970170,
		-0.990798, 0.057940, -0.122319,
		-0.031315, -0.977349, -0.209302,
		33.725266, 40.649517, 49.462830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.332165, 41.164139, 50.124859>,  <33.747189, 41.333664, 49.609341>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.332165, 41.164139, 50.124859> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.486427, 40.819649, 49.992458>,  <33.578987, 40.612953, 49.913017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.486427, 40.819649, 49.992458>,  <33.332165, 41.164139, 50.124859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.486427, 40.819649, 49.992458> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130739, -0.406141, 0.904410,
		-0.913332, -0.305518, -0.269228,
		0.385658, -0.861225, -0.330998,
		33.602123, 40.561283, 49.893158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.857868, 40.608677, 50.263290>,  <33.332165, 41.164139, 50.124859>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.857868, 40.608677, 50.263290> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.211109, 40.422157, 50.242485>,  <33.423054, 40.310246, 50.230003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.211109, 40.422157, 50.242485>,  <32.857868, 40.608677, 50.263290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.211109, 40.422157, 50.242485> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082944, -0.264258, 0.960879,
		-0.461798, -0.844237, -0.272042,
		0.883098, -0.466296, -0.052010,
		33.476040, 40.282269, 50.226883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.746803, 39.968044, 50.524723>,  <32.857868, 40.608677, 50.263290>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.746803, 39.968044, 50.524723> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.138859, 40.040901, 50.556080>,  <33.374092, 40.084618, 50.574894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.138859, 40.040901, 50.556080>,  <32.746803, 39.968044, 50.524723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.138859, 40.040901, 50.556080> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016700, -0.318111, 0.947906,
		0.197596, -0.930391, -0.308752,
		0.980141, 0.182147, 0.078395,
		33.432899, 40.095547, 50.579597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.227272, 39.278091, 50.748302>,  <32.746803, 39.968044, 50.524723>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.227272, 39.278091, 50.748302> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.383259, 39.630497, 50.855438>,  <33.476849, 39.841942, 50.919720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.383259, 39.630497, 50.855438>,  <33.227272, 39.278091, 50.748302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.383259, 39.630497, 50.855438> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044307, -0.272580, 0.961112,
		0.919764, -0.386665, -0.067261,
		0.389963, 0.881017, 0.267841,
		33.500248, 39.894802, 50.935791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.237488, 38.547390, 50.852303>,  <33.227272, 39.278091, 50.748302>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.237488, 38.547390, 50.852303> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.902733, 38.329742, 50.876160>,  <32.701881, 38.199154, 50.890472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.902733, 38.329742, 50.876160>,  <33.237488, 38.547390, 50.852303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.902733, 38.329742, 50.876160> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099653, -0.258592, -0.960833,
		0.538228, -0.798165, 0.270635,
		-0.836887, -0.544117, 0.059642,
		32.651669, 38.166508, 50.894051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.333771, 38.050484, 50.379761>,  <33.237488, 38.547390, 50.852303>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.333771, 38.050484, 50.379761> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.940331, 38.030186, 50.448994>,  <32.704266, 38.018009, 50.490532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.940331, 38.030186, 50.448994>,  <33.333771, 38.050484, 50.379761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.940331, 38.030186, 50.448994> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159305, -0.205568, -0.965590,
		0.084575, -0.977326, 0.194113,
		-0.983600, -0.050741, 0.173079,
		32.645252, 38.014965, 50.500919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.090515, 37.396542, 50.109070>,  <33.333771, 38.050484, 50.379761>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.090515, 37.396542, 50.109070> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.782024, 37.650562, 50.091568>,  <32.596931, 37.802975, 50.081066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.782024, 37.650562, 50.091568>,  <33.090515, 37.396542, 50.109070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.782024, 37.650562, 50.091568> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206081, -0.314128, -0.926744,
		-0.602279, -0.705712, 0.373137,
		-0.771227, 0.635054, -0.043759,
		32.550655, 37.841080, 50.078442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.644989, 37.027878, 49.740360>,  <33.090515, 37.396542, 50.109070>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.644989, 37.027878, 49.740360> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.502090, 37.401482, 49.739353>,  <32.416351, 37.625645, 49.738747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.502090, 37.401482, 49.739353>,  <32.644989, 37.027878, 49.740360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.502090, 37.401482, 49.739353> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015029, 0.003050, -0.999882,
		-0.933889, -0.357244, -0.015127,
		-0.357248, 0.934006, -0.002520,
		32.394917, 37.681683, 49.738598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.207550, 37.117695, 49.121120>,  <32.644989, 37.027878, 49.740360>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.207550, 37.117695, 49.121120> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.278732, 37.506878, 49.180031>,  <32.321442, 37.740387, 49.215378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.278732, 37.506878, 49.180031>,  <32.207550, 37.117695, 49.121120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.278732, 37.506878, 49.180031> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117880, 0.127513, -0.984807,
		-0.976953, 0.192612, -0.092001,
		0.177955, 0.972955, 0.147280,
		32.332119, 37.798763, 49.224216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.830448, 37.418461, 48.659378>,  <32.207550, 37.117695, 49.121120>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.830448, 37.418461, 48.659378> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.130707, 37.665001, 48.754581>,  <32.310860, 37.812923, 48.811703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.130707, 37.665001, 48.754581>,  <31.830448, 37.418461, 48.659378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.130707, 37.665001, 48.754581> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069180, 0.284936, -0.956047,
		-0.657075, 0.734117, 0.171247,
		0.750644, 0.616347, 0.238010,
		32.355900, 37.849907, 48.825985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.712118, 38.024391, 48.209076>,  <31.830448, 37.418461, 48.659378>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.712118, 38.024391, 48.209076> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.088902, 38.079796, 48.331406>,  <32.314972, 38.113037, 48.404804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.088902, 38.079796, 48.331406>,  <31.712118, 38.024391, 48.209076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.088902, 38.079796, 48.331406> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267185, 0.242305, -0.932685,
		-0.203292, 0.960262, 0.191232,
		0.941958, 0.138513, 0.305826,
		32.371490, 38.121349, 48.423153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<35.619705, 35.268879, 53.855316> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.650551, 35.666374, 53.822975>,  <35.669060, 35.904873, 53.803570>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.650551, 35.666374, 53.822975>,  <35.619705, 35.268879, 53.855316>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.650551, 35.666374, 53.822975> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490463, -0.108417, -0.864692,
		-0.868043, 0.027025, -0.495752,
		0.077116, 0.993738, -0.080856,
		35.673687, 35.964497, 53.798717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.394970, 35.437664, 53.181828>,  <35.619705, 35.268879, 53.855316>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.394970, 35.437664, 53.181828> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.661476, 35.711716, 53.299595>,  <35.821381, 35.876148, 53.370255>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.661476, 35.711716, 53.299595>,  <35.394970, 35.437664, 53.181828>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.661476, 35.711716, 53.299595> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473684, -0.083907, -0.876688,
		-0.575943, 0.723571, -0.380440,
		0.666267, 0.685132, 0.294419,
		35.861355, 35.917255, 53.387920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.511902, 36.089283, 52.771790>,  <35.394970, 35.437664, 53.181828>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.511902, 36.089283, 52.771790> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.838665, 35.907799, 52.914234>,  <36.034721, 35.798908, 52.999702>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.838665, 35.907799, 52.914234>,  <35.511902, 36.089283, 52.771790>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.838665, 35.907799, 52.914234> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279722, -0.228301, -0.932542,
		0.504404, 0.861410, -0.059587,
		0.816904, -0.453710, 0.356110,
		36.083736, 35.771687, 53.021069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.114502, 36.299477, 52.303394>,  <35.511902, 36.089283, 52.771790>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.114502, 36.299477, 52.303394> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.149769, 35.929890, 52.452267>,  <36.170929, 35.708138, 52.541592>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.149769, 35.929890, 52.452267>,  <36.114502, 36.299477, 52.303394>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.149769, 35.929890, 52.452267> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158171, -0.355911, -0.921037,
		0.983468, 0.140072, 0.114765,
		0.088165, -0.923963, 0.372183,
		36.176220, 35.652702, 52.563923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.661293, 36.008331, 51.948868>,  <36.114502, 36.299477, 52.303394>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.661293, 36.008331, 51.948868> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.532089, 35.658115, 52.092587>,  <36.454567, 35.447987, 52.178818>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.532089, 35.658115, 52.092587>,  <36.661293, 36.008331, 51.948868>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.532089, 35.658115, 52.092587> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106962, -0.410985, -0.905345,
		0.940333, -0.254001, 0.226401,
		-0.323006, -0.875542, 0.359294,
		36.435188, 35.395454, 52.200375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.204723, 35.542675, 51.787022>,  <36.661293, 36.008331, 51.948868>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.204723, 35.542675, 51.787022> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.871140, 35.327370, 51.835651>,  <36.670990, 35.198185, 51.864830>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.871140, 35.327370, 51.835651>,  <37.204723, 35.542675, 51.787022>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.871140, 35.327370, 51.835651> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180818, -0.474702, -0.861372,
		0.521357, -0.696369, 0.493211,
		-0.833962, -0.538264, 0.121573,
		36.620953, 35.165890, 51.872124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.269436, 34.906780, 51.445469>,  <37.204723, 35.542675, 51.787022>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.269436, 34.906780, 51.445469> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.870399, 34.912663, 51.472603>,  <36.630978, 34.916191, 51.488884>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.870399, 34.912663, 51.472603>,  <37.269436, 34.906780, 51.445469>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.870399, 34.912663, 51.472603> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065597, -0.519206, -0.852128,
		0.022686, -0.854523, 0.518918,
		-0.997589, 0.014708, 0.067832,
		36.571121, 34.917076, 51.492954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.143333, 34.241879, 51.125744>,  <37.269436, 34.906780, 51.445469>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.143333, 34.241879, 51.125744> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.778904, 34.406128, 51.140385>,  <36.560246, 34.504677, 51.149170>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.778904, 34.406128, 51.140385>,  <37.143333, 34.241879, 51.125744>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.778904, 34.406128, 51.140385> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238783, -0.453250, -0.858806,
		-0.336054, -0.791173, 0.510993,
		-0.911071, 0.410621, 0.036602,
		36.505585, 34.529316, 51.151363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.651451, 33.713745, 50.985725>,  <37.143333, 34.241879, 51.125744>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.651451, 33.713745, 50.985725> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.431702, 34.042610, 50.926090>,  <36.299850, 34.239929, 50.890308>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.431702, 34.042610, 50.926090>,  <36.651451, 33.713745, 50.985725>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.431702, 34.042610, 50.926090> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420983, -0.426475, -0.800558,
		-0.721776, -0.377041, 0.580413,
		-0.549375, 0.822167, -0.149092,
		36.266888, 34.289261, 50.881363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.928497, 33.528179, 50.853546>,  <36.651451, 33.713745, 50.985725>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.928497, 33.528179, 50.853546> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.953270, 33.891083, 50.687153>,  <35.968132, 34.108826, 50.587315>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.953270, 33.891083, 50.687153>,  <35.928497, 33.528179, 50.853546>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.953270, 33.891083, 50.687153> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488543, -0.335889, -0.805298,
		-0.870339, 0.253098, 0.422434,
		0.061929, 0.907259, -0.415987,
		35.971848, 34.163261, 50.562355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.250484, 33.695484, 50.434544>,  <35.928497, 33.528179, 50.853546>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.250484, 33.695484, 50.434544> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.516701, 33.953838, 50.284931>,  <35.676430, 34.108849, 50.195164>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.516701, 33.953838, 50.284931>,  <35.250484, 33.695484, 50.434544>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.516701, 33.953838, 50.284931> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378812, -0.139475, -0.914903,
		-0.643087, 0.750589, 0.151842,
		0.665538, 0.645882, -0.374027,
		35.716362, 34.147602, 50.172722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.854290, 34.144421, 50.023735>,  <35.250484, 33.695484, 50.434544>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.854290, 34.144421, 50.023735> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.227730, 34.172264, 49.883141>,  <35.451794, 34.188969, 49.798782>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.227730, 34.172264, 49.883141>,  <34.854290, 34.144421, 50.023735>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.227730, 34.172264, 49.883141> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315680, -0.304276, -0.898756,
		-0.169510, 0.950037, -0.262099,
		0.933602, 0.069609, -0.351485,
		35.507809, 34.193146, 49.777695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.443066, 34.770153, 49.838028>,  <34.854290, 34.144421, 50.023735>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.443066, 34.770153, 49.838028> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.114136, 34.547192, 49.883789>,  <33.916779, 34.413414, 49.911243>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.114136, 34.547192, 49.883789>,  <34.443066, 34.770153, 49.838028>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.114136, 34.547192, 49.883789> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033701, 0.152984, 0.987654,
		-0.568021, 0.816027, -0.107017,
		-0.822324, -0.557401, 0.114399,
		33.867439, 34.379971, 49.918110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.169083, 35.110497, 50.288609>,  <34.443066, 34.770153, 49.838028>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.169083, 35.110497, 50.288609> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.952721, 34.777283, 50.335052>,  <33.822906, 34.577354, 50.362919>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.952721, 34.777283, 50.335052>,  <34.169083, 35.110497, 50.288609>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.952721, 34.777283, 50.335052> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005375, 0.134621, 0.990883,
		-0.841070, 0.536593, -0.068339,
		-0.540900, -0.833034, 0.116110,
		33.790451, 34.527374, 50.369884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.645527, 35.347641, 50.703068>,  <34.169083, 35.110497, 50.288609>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.645527, 35.347641, 50.703068> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.650539, 34.950020, 50.746323>,  <33.653549, 34.711445, 50.772274>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.650539, 34.950020, 50.746323>,  <33.645527, 35.347641, 50.703068>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.650539, 34.950020, 50.746323> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000494, 0.108136, 0.994136,
		-0.999921, -0.012514, 0.000864,
		0.012534, -0.994057, 0.108133,
		33.654301, 34.651802, 50.778763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.102234, 35.247993, 51.199604>,  <33.645527, 35.347641, 50.703068>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.102234, 35.247993, 51.199604> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.314865, 34.909306, 51.208397>,  <33.442444, 34.706093, 51.213673>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.314865, 34.909306, 51.208397>,  <33.102234, 35.247993, 51.199604>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.314865, 34.909306, 51.208397> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013112, 0.017727, 0.999757,
		-0.846906, -0.531740, -0.001679,
		0.531581, -0.846722, 0.021985,
		33.474339, 34.655289, 51.214993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.712490, 34.759365, 51.548702>,  <33.102234, 35.247993, 51.199604>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.712490, 34.759365, 51.548702> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.089817, 34.634300, 51.593231>,  <33.316216, 34.559261, 51.619949>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.089817, 34.634300, 51.593231>,  <32.712490, 34.759365, 51.548702>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.089817, 34.634300, 51.593231> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133219, -0.049511, 0.989849,
		-0.303978, -0.948573, -0.088357,
		0.943319, -0.312663, 0.111318,
		33.372814, 34.540501, 51.626625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.732548, 34.165047, 51.987209>,  <32.712490, 34.759365, 51.548702>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.732548, 34.165047, 51.987209> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.105663, 34.305737, 52.018711>,  <33.329533, 34.390152, 52.037613>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.105663, 34.305737, 52.018711>,  <32.732548, 34.165047, 51.987209>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.105663, 34.305737, 52.018711> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096067, 0.032018, 0.994860,
		0.347396, -0.935555, 0.063655,
		0.932785, 0.351726, 0.078753,
		33.385498, 34.411255, 52.042336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.998455, 33.806358, 52.581661>,  <32.732548, 34.165047, 51.987209>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.998455, 33.806358, 52.581661> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.262009, 34.105251, 52.546982>,  <33.420143, 34.284588, 52.526176>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.262009, 34.105251, 52.546982>,  <32.998455, 33.806358, 52.581661>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.262009, 34.105251, 52.546982> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030029, 0.141283, 0.989514,
		0.751643, -0.649374, 0.115528,
		0.658886, 0.747230, -0.086694,
		33.459675, 34.329422, 52.520973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.644848, 33.711697, 52.980438>,  <32.998455, 33.806358, 52.581661>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.644848, 33.711697, 52.980438> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.549015, 34.097404, 52.935215>,  <33.491516, 34.328831, 52.908081>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.549015, 34.097404, 52.935215>,  <33.644848, 33.711697, 52.980438>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.549015, 34.097404, 52.935215> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133555, 0.148081, 0.979916,
		0.961645, 0.219673, -0.164261,
		-0.239585, 0.964270, -0.113063,
		33.477139, 34.386684, 52.901295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.074326, 33.943806, 53.409050>,  <33.644848, 33.711697, 52.980438>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.074326, 33.943806, 53.409050> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.826153, 34.250015, 53.340893>,  <33.677250, 34.433743, 53.299999>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.826153, 34.250015, 53.340893>,  <34.074326, 33.943806, 53.409050>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.826153, 34.250015, 53.340893> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151439, 0.330121, 0.931711,
		0.769497, 0.552263, -0.320749,
		-0.620436, 0.765523, -0.170393,
		33.640022, 34.479671, 53.289776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.352470, 34.487473, 53.894455>,  <34.074326, 33.943806, 53.409050>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.352470, 34.487473, 53.894455> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.998085, 34.635910, 53.783203>,  <33.785454, 34.724972, 53.716454>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.998085, 34.635910, 53.783203>,  <34.352470, 34.487473, 53.894455>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.998085, 34.635910, 53.783203> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138825, 0.360001, 0.922565,
		0.442487, 0.855971, -0.267431,
		-0.885965, 0.371097, -0.278126,
		33.732296, 34.747238, 53.699764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.405075, 35.059910, 54.332218>,  <34.352470, 34.487473, 53.894455>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.405075, 35.059910, 54.332218> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.026600, 35.033424, 54.205513>,  <33.799515, 35.017532, 54.129490>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.026600, 35.033424, 54.205513>,  <34.405075, 35.059910, 54.332218>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.026600, 35.033424, 54.205513> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312060, 0.445893, 0.838927,
		0.085699, 0.892634, -0.442561,
		-0.946190, -0.066210, -0.316767,
		33.742744, 35.013561, 54.110481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.076839, 35.791302, 54.270607>,  <34.405075, 35.059910, 54.332218>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.076839, 35.791302, 54.270607> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.853935, 35.469582, 54.353127>,  <33.720192, 35.276550, 54.402637>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.853935, 35.469582, 54.353127>,  <34.076839, 35.791302, 54.270607>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.853935, 35.469582, 54.353127> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388414, 0.472094, 0.791367,
		-0.733893, 0.360864, -0.575480,
		-0.557257, -0.804304, 0.206302,
		33.686760, 35.228291, 54.415016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.449070, 36.080696, 54.403748>,  <34.076839, 35.791302, 54.270607>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.449070, 36.080696, 54.403748> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.445415, 35.718819, 54.574131>,  <33.443222, 35.501694, 54.676361>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.445415, 35.718819, 54.574131>,  <33.449070, 36.080696, 54.403748>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.445415, 35.718819, 54.574131> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318959, 0.406366, 0.856231,
		-0.947725, -0.128038, -0.292275,
		-0.009140, -0.904695, 0.425962,
		33.442673, 35.447411, 54.701920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.434753, 36.663036, 53.816326>,  <33.449070, 36.080696, 54.403748>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.434753, 36.663036, 53.816326> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.148117, 36.939190, 53.856071>,  <32.976135, 37.104881, 53.879917>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.148117, 36.939190, 53.856071>,  <33.434753, 36.663036, 53.816326>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.148117, 36.939190, 53.856071> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035506, 0.178374, -0.983322,
		-0.696592, -0.701109, -0.152334,
		-0.716588, 0.690384, 0.099360,
		32.933140, 37.146305, 53.885880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.929466, 36.736000, 53.264984>,  <33.434753, 36.663036, 53.816326>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.929466, 36.736000, 53.264984> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.862865, 37.105679, 53.402470>,  <32.822906, 37.327484, 53.484962>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.862865, 37.105679, 53.402470>,  <32.929466, 36.736000, 53.264984>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.862865, 37.105679, 53.402470> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000015, 0.348577, -0.937280,
		-0.986042, -0.156060, -0.058024,
		-0.166498, 0.924196, 0.343714,
		32.812916, 37.382938, 53.505585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.272076, 36.885288, 53.061726>,  <32.929466, 36.736000, 53.264984>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.272076, 36.885288, 53.061726> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.439693, 37.240948, 53.135288>,  <32.540264, 37.454342, 53.179424>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.439693, 37.240948, 53.135288>,  <32.272076, 36.885288, 53.061726>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.439693, 37.240948, 53.135288> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302950, 0.327856, -0.894836,
		-0.855937, 0.319258, 0.406752,
		0.419040, 0.889148, 0.183905,
		32.565407, 37.507690, 53.190460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.818102, 37.281044, 52.884556>,  <32.272076, 36.885288, 53.061726>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.818102, 37.281044, 52.884556> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.134045, 37.525448, 52.863449>,  <32.323612, 37.672092, 52.850784>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.134045, 37.525448, 52.863449>,  <31.818102, 37.281044, 52.884556>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.134045, 37.525448, 52.863449> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271977, 0.271869, -0.923101,
		-0.549683, 0.743471, 0.380920,
		0.789859, 0.611014, -0.052766,
		32.371002, 37.708752, 52.847618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.613518, 38.045429, 52.705788>,  <31.818102, 37.281044, 52.884556>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.613518, 38.045429, 52.705788> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.994469, 37.960480, 52.618263>,  <32.223038, 37.909512, 52.565750>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.994469, 37.960480, 52.618263>,  <31.613518, 38.045429, 52.705788>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.994469, 37.960480, 52.618263> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122180, 0.391676, -0.911955,
		0.279376, 0.895258, 0.347075,
		0.952376, -0.212373, -0.218808,
		32.280182, 37.896767, 52.552620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.848072, 38.580784, 52.392365>,  <31.613518, 38.045429, 52.705788>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.848072, 38.580784, 52.392365> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.097252, 38.292423, 52.270885>,  <32.246761, 38.119408, 52.197998>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.097252, 38.292423, 52.270885>,  <31.848072, 38.580784, 52.392365>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.097252, 38.292423, 52.270885> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098570, 0.312794, -0.944692,
		0.776028, 0.618430, 0.123795,
		0.622949, -0.720905, -0.303696,
		32.284138, 38.076153, 52.179775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.221954, 38.940132, 51.772091>,  <31.848072, 38.580784, 52.392365>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.221954, 38.940132, 51.772091> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.335304, 38.557274, 51.748196>,  <32.403313, 38.327557, 51.733860>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.335304, 38.557274, 51.748196>,  <32.221954, 38.940132, 51.772091>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.335304, 38.557274, 51.748196> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229827, -0.007303, -0.973204,
		0.931064, 0.289507, -0.222048,
		0.283371, -0.957148, -0.059737,
		32.420315, 38.270130, 51.730274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.885658, 38.913830, 51.359936>,  <32.221954, 38.940132, 51.772091>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.885658, 38.913830, 51.359936> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.717720, 38.551155, 51.343708>,  <32.616959, 38.333549, 51.333973>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.717720, 38.551155, 51.343708>,  <32.885658, 38.913830, 51.359936>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.717720, 38.551155, 51.343708> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018376, 0.036199, -0.999176,
		0.907412, -0.420240, 0.001464,
		-0.419841, -0.906691, -0.040570,
		32.591766, 38.279148, 51.331535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.630661, 39.168964, 51.395748>,  <32.885658, 38.913830, 51.359936>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.630661, 39.168964, 51.395748> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.668728, 39.566856, 51.411057>,  <33.691566, 39.805592, 51.420242>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.668728, 39.566856, 51.411057>,  <33.630661, 39.168964, 51.395748>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.668728, 39.566856, 51.411057> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088147, -0.046715, 0.995012,
		0.991551, -0.091316, -0.092128,
		0.095165, 0.994726, 0.038271,
		33.697277, 39.865273, 51.422539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.330513, 39.321918, 51.809856>,  <33.630661, 39.168964, 51.395748>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.330513, 39.321918, 51.809856> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.095314, 39.644493, 51.834908>,  <33.954193, 39.838036, 51.849937>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.095314, 39.644493, 51.834908>,  <34.330513, 39.321918, 51.809856>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.095314, 39.644493, 51.834908> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230055, 0.092501, 0.968771,
		0.775455, 0.584046, -0.239915,
		-0.588000, 0.806433, 0.062632,
		33.918915, 39.886421, 51.853699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.718201, 39.651562, 52.174702>,  <34.330513, 39.321918, 51.809856>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.718201, 39.651562, 52.174702> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.378487, 39.862057, 52.191650>,  <34.174660, 39.988354, 52.201820>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.378487, 39.862057, 52.191650>,  <34.718201, 39.651562, 52.174702>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.378487, 39.862057, 52.191650> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241030, 0.315085, 0.917947,
		0.469708, 0.789807, -0.394435,
		-0.849281, 0.526237, 0.042370,
		34.123703, 40.019928, 52.204361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.788971, 40.291912, 52.220314>,  <34.718201, 39.651562, 52.174702>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.788971, 40.291912, 52.220314> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.430084, 40.306042, 52.396389>,  <34.214752, 40.314522, 52.502033>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.430084, 40.306042, 52.396389>,  <34.788971, 40.291912, 52.220314>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.430084, 40.306042, 52.396389> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424837, 0.341072, 0.838560,
		-0.120511, 0.939373, -0.321022,
		-0.897213, 0.035326, 0.440183,
		34.160919, 40.316639, 52.528442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.852470, 40.897232, 52.731640>,  <34.788971, 40.291912, 52.220314>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.852470, 40.897232, 52.731640> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.519516, 40.714931, 52.857769>,  <34.319744, 40.605549, 52.933445>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.519516, 40.714931, 52.857769>,  <34.852470, 40.897232, 52.731640>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.519516, 40.714931, 52.857769> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151368, 0.360367, 0.920447,
		-0.533130, 0.813893, -0.230976,
		-0.832382, -0.455755, 0.315320,
		34.269802, 40.578205, 52.952366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.442791, 41.381542, 53.071468>,  <34.852470, 40.897232, 52.731640>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.442791, 41.381542, 53.071468> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.325661, 41.026859, 53.214573>,  <34.255383, 40.814049, 53.300434>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.325661, 41.026859, 53.214573>,  <34.442791, 41.381542, 53.071468>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.325661, 41.026859, 53.214573> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027608, 0.366165, 0.930140,
		-0.955766, 0.282250, -0.082744,
		-0.292830, -0.886712, 0.357761,
		34.237812, 40.760845, 53.321899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.261871, 41.518688, 53.790249>,  <34.442791, 41.381542, 53.071468>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.261871, 41.518688, 53.790249> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.277584, 41.119850, 53.764156>,  <34.287014, 40.880547, 53.748501>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.277584, 41.119850, 53.764156>,  <34.261871, 41.518688, 53.790249>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.277584, 41.119850, 53.764156> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225538, -0.054750, 0.972695,
		-0.973442, -0.052924, 0.222732,
		0.039284, -0.997097, -0.065232,
		34.289368, 40.820721, 53.744587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.835217, 41.258694, 54.354309>,  <34.261871, 41.518688, 53.790249>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.835217, 41.258694, 54.354309> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.081764, 40.954361, 54.273106>,  <34.229694, 40.771759, 54.224384>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.081764, 40.954361, 54.273106>,  <33.835217, 41.258694, 54.354309>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.081764, 40.954361, 54.273106> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332698, 0.017944, 0.942863,
		-0.713721, -0.648696, 0.264188,
		0.616372, -0.760836, -0.203013,
		34.266674, 40.726109, 54.212200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.762482, 40.862617, 54.961868>,  <33.835217, 41.258694, 54.354309>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.762482, 40.862617, 54.961868> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.109215, 40.748352, 54.798409>,  <34.317253, 40.679790, 54.700333>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.109215, 40.748352, 54.798409>,  <33.762482, 40.862617, 54.961868>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.109215, 40.748352, 54.798409> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431910, 0.020731, 0.901678,
		-0.249109, -0.958104, 0.141353,
		0.866832, -0.285669, -0.408651,
		34.369263, 40.662651, 54.675812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.878853, 38.962234, 38.082878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.189133, 38.821526, 38.292469>,  <36.375301, 38.737099, 38.418224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.189133, 38.821526, 38.292469>,  <35.878853, 38.962234, 38.082878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.189133, 38.821526, 38.292469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500291, 0.163361, 0.850307,
		-0.384711, -0.921721, -0.049270,
		0.775697, -0.351772, 0.523976,
		36.421841, 38.715992, 38.449661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.711502, 38.481190, 38.671120>,  <35.878853, 38.962234, 38.082878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.711502, 38.481190, 38.671120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.063354, 38.634586, 38.783676>,  <36.274467, 38.726624, 38.851208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.063354, 38.634586, 38.783676>,  <35.711502, 38.481190, 38.671120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.063354, 38.634586, 38.783676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368460, 0.175258, 0.912974,
		0.300805, -0.906761, 0.295465,
		0.879632, 0.383495, 0.281387,
		36.327244, 38.749634, 38.868092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.934681, 38.215443, 39.275642>,  <35.711502, 38.481190, 38.671120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.934681, 38.215443, 39.275642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.150974, 38.551914, 39.273354>,  <36.280750, 38.753796, 39.271980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.150974, 38.551914, 39.273354>,  <35.934681, 38.215443, 39.275642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.150974, 38.551914, 39.273354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382164, 0.251710, 0.889153,
		0.749374, -0.478606, 0.457575,
		0.540730, 0.841177, -0.005720,
		36.313194, 38.804268, 39.271637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.340561, 38.183186, 39.845722>,  <35.934681, 38.215443, 39.275642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.340561, 38.183186, 39.845722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.352238, 38.574520, 39.763741>,  <36.359245, 38.809322, 39.714550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.352238, 38.574520, 39.763741>,  <36.340561, 38.183186, 39.845722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.352238, 38.574520, 39.763741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415697, 0.198354, 0.887610,
		0.909034, 0.059290, 0.412482,
		0.029191, 0.978336, -0.204958,
		36.360996, 38.868019, 39.702251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.828247, 38.524925, 40.311459>,  <36.340561, 38.183186, 39.845722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.828247, 38.524925, 40.311459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.548309, 38.781357, 40.185455>,  <36.380348, 38.935215, 40.109852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.548309, 38.781357, 40.185455>,  <36.828247, 38.524925, 40.311459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.548309, 38.781357, 40.185455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154618, 0.294586, 0.943034,
		0.697359, 0.708683, -0.107042,
		-0.699845, 0.641083, -0.315007,
		36.338356, 38.973682, 40.090954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.795486, 39.082333, 40.839954>,  <36.828247, 38.524925, 40.311459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.795486, 39.082333, 40.839954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.440651, 39.143124, 40.665611>,  <36.227749, 39.179600, 40.561005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.440651, 39.143124, 40.665611>,  <36.795486, 39.082333, 40.839954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.440651, 39.143124, 40.665611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361355, 0.358874, 0.860600,
		0.287213, 0.920929, -0.263434,
		-0.887091, 0.151982, -0.435856,
		36.174522, 39.188717, 40.534855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.584377, 39.802044, 41.025707>,  <36.795486, 39.082333, 40.839954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.584377, 39.802044, 41.025707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.265289, 39.593086, 40.905209>,  <36.073837, 39.467712, 40.832909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.265289, 39.593086, 40.905209>,  <36.584377, 39.802044, 41.025707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.265289, 39.593086, 40.905209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533332, 0.378045, 0.756729,
		-0.281425, 0.764322, -0.580183,
		-0.797720, -0.522393, -0.301246,
		36.025974, 39.436367, 40.814835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.034508, 40.248081, 41.076763>,  <36.584377, 39.802044, 41.025707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.034508, 40.248081, 41.076763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.881569, 39.878532, 41.083420>,  <35.789806, 39.656803, 41.087414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.881569, 39.878532, 41.083420>,  <36.034508, 40.248081, 41.076763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.881569, 39.878532, 41.083420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593265, 0.259249, 0.762120,
		-0.708414, 0.281519, -0.647222,
		-0.382343, -0.923871, 0.016640,
		35.766865, 39.601372, 41.088413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.431416, 40.367748, 41.084793>,  <36.034508, 40.248081, 41.076763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.431416, 40.367748, 41.084793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.446110, 39.996857, 41.233868>,  <35.454926, 39.774323, 41.323315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.446110, 39.996857, 41.233868>,  <35.431416, 40.367748, 41.084793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.446110, 39.996857, 41.233868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710949, 0.237842, 0.661802,
		-0.702283, -0.289273, -0.650476,
		0.036731, -0.927228, 0.372691,
		35.457130, 39.718689, 41.345676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.770905, 40.107376, 41.079788>,  <35.431416, 40.367748, 41.084793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.770905, 40.107376, 41.079788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.969105, 39.886875, 41.348293>,  <35.088024, 39.754574, 41.509396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.969105, 39.886875, 41.348293>,  <34.770905, 40.107376, 41.079788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.969105, 39.886875, 41.348293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687046, 0.224107, 0.691190,
		-0.531455, -0.803678, -0.267689,
		0.495503, -0.551251, 0.671267,
		35.117756, 39.721500, 41.549675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.225834, 39.741539, 41.489681>,  <34.770905, 40.107376, 41.079788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.225834, 39.741539, 41.489681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.562920, 39.729710, 41.704700>,  <34.765171, 39.722614, 41.833714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.562920, 39.729710, 41.704700>,  <34.225834, 39.741539, 41.489681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.562920, 39.729710, 41.704700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513267, 0.257156, 0.818797,
		-0.162445, -0.965917, 0.201531,
		0.842715, -0.029570, 0.537547,
		34.815735, 39.720840, 41.865963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.105129, 39.346458, 42.137409>,  <34.225834, 39.741539, 41.489681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.105129, 39.346458, 42.137409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.417915, 39.583797, 42.213802>,  <34.605587, 39.726200, 42.259636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.417915, 39.583797, 42.213802>,  <34.105129, 39.346458, 42.137409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.417915, 39.583797, 42.213802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321632, 0.121633, 0.939020,
		0.533938, -0.795702, 0.285953,
		0.781961, 0.593350, 0.190979,
		34.652504, 39.761803, 42.271095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.860504, 38.877750, 42.656082>,  <34.105129, 39.346458, 42.137409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.860504, 38.877750, 42.656082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.510815, 38.688091, 42.697887>,  <33.301003, 38.574295, 42.722969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.510815, 38.688091, 42.697887>,  <33.860504, 38.877750, 42.656082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.510815, 38.688091, 42.697887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036526, -0.278875, -0.959632,
		0.484152, -0.835114, 0.261118,
		-0.874221, -0.474145, 0.104514,
		33.248547, 38.545849, 42.729240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.954311, 38.196602, 42.398312>,  <33.860504, 38.877750, 42.656082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.954311, 38.196602, 42.398312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.572998, 38.310810, 42.358841>,  <33.344212, 38.379333, 42.335159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.572998, 38.310810, 42.358841>,  <33.954311, 38.196602, 42.398312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.572998, 38.310810, 42.358841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034023, -0.223101, -0.974201,
		-0.300170, -0.932043, 0.202963,
		-0.953279, 0.285521, -0.098679,
		33.287014, 38.396465, 42.329239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.510872, 37.731358, 42.057701>,  <33.954311, 38.196602, 42.398312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.510872, 37.731358, 42.057701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.250847, 38.031788, 42.011574>,  <33.094833, 38.212048, 41.983898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.250847, 38.031788, 42.011574>,  <33.510872, 37.731358, 42.057701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.250847, 38.031788, 42.011574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323921, -0.411183, -0.852058,
		-0.687381, -0.516536, 0.510585,
		-0.650064, 0.751078, -0.115323,
		33.055828, 38.257111, 41.976978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.806717, 37.498459, 41.963917>,  <33.510872, 37.731358, 42.057701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.806717, 37.498459, 41.963917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.798275, 37.853405, 41.779682>,  <32.793209, 38.066372, 41.669144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.798275, 37.853405, 41.779682>,  <32.806717, 37.498459, 41.963917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.798275, 37.853405, 41.779682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426553, -0.424643, -0.798580,
		-0.904216, 0.179609, 0.387470,
		-0.021104, 0.887366, -0.460582,
		32.791943, 38.119614, 41.641506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.232475, 37.394424, 41.537735>,  <32.806717, 37.498459, 41.963917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.232475, 37.394424, 41.537735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.386211, 37.717995, 41.359779>,  <32.478455, 37.912136, 41.253006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.386211, 37.717995, 41.359779>,  <32.232475, 37.394424, 41.537735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.386211, 37.717995, 41.359779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340040, -0.323981, -0.882841,
		-0.858285, 0.490595, 0.150546,
		0.384343, 0.808921, -0.444890,
		32.501514, 37.960670, 41.226311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.672758, 37.697590, 41.131397>,  <32.232475, 37.394424, 41.537735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.672758, 37.697590, 41.131397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.017895, 37.828449, 40.977268>,  <32.224976, 37.906963, 40.884789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.017895, 37.828449, 40.977268>,  <31.672758, 37.697590, 41.131397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.017895, 37.828449, 40.977268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309388, -0.261021, -0.914411,
		-0.399724, 0.908209, -0.124005,
		0.862844, 0.327147, -0.385326,
		32.276749, 37.926594, 40.861671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.544403, 37.892117, 40.546181>,  <31.672758, 37.697590, 41.131397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.544403, 37.892117, 40.546181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.940407, 37.861164, 40.499027>,  <32.178009, 37.842594, 40.470734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.940407, 37.861164, 40.499027>,  <31.544403, 37.892117, 40.546181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.940407, 37.861164, 40.499027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124100, -0.081113, -0.988949,
		0.066962, 0.993697, -0.089905,
		0.990008, -0.077379, -0.117886,
		32.237408, 37.837952, 40.463661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.788715, 38.252750, 39.909977>,  <31.544403, 37.892117, 40.546181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.788715, 38.252750, 39.909977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.075176, 37.993275, 40.012993>,  <32.247051, 37.837589, 40.074802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.075176, 37.993275, 40.012993>,  <31.788715, 38.252750, 39.909977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.075176, 37.993275, 40.012993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145260, -0.222383, -0.964078,
		0.682660, 0.727837, -0.065031,
		0.716153, -0.648691, 0.257537,
		32.290024, 37.798668, 40.090256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.354893, 38.406033, 39.494251>,  <31.788715, 38.252750, 39.909977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.354893, 38.406033, 39.494251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.378078, 38.024086, 39.610783>,  <32.391991, 37.794918, 39.680702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.378078, 38.024086, 39.610783>,  <32.354893, 38.406033, 39.494251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.378078, 38.024086, 39.610783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247249, -0.269000, -0.930864,
		0.967217, 0.125985, 0.220498,
		0.057961, -0.954865, 0.291331,
		32.395466, 37.737625, 39.698181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.832951, 38.207748, 39.080570>,  <32.354893, 38.406033, 39.494251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.832951, 38.207748, 39.080570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.665154, 37.867882, 39.208382>,  <32.564476, 37.663963, 39.285069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.665154, 37.867882, 39.208382>,  <32.832951, 38.207748, 39.080570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.665154, 37.867882, 39.208382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185395, -0.424765, -0.886117,
		0.888627, -0.312477, 0.335708,
		-0.419489, -0.849666, 0.319526,
		32.539307, 37.612984, 39.304241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.245979, 37.636879, 38.781624>,  <32.832951, 38.207748, 39.080570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.245979, 37.636879, 38.781624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.898602, 37.464832, 38.880260>,  <32.690174, 37.361603, 38.939442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.898602, 37.464832, 38.880260>,  <33.245979, 37.636879, 38.781624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.898602, 37.464832, 38.880260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061197, -0.586564, -0.807587,
		0.491998, -0.686253, 0.535719,
		-0.868443, -0.430116, 0.246592,
		32.638069, 37.335796, 38.954239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.315319, 36.912262, 38.832081>,  <33.245979, 37.636879, 38.781624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.315319, 36.912262, 38.832081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.932766, 36.989037, 38.743992>,  <32.703236, 37.035103, 38.691139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.932766, 36.989037, 38.743992>,  <33.315319, 36.912262, 38.832081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.932766, 36.989037, 38.743992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074402, -0.568972, -0.818984,
		-0.282494, -0.799645, 0.529872,
		-0.956379, 0.191935, -0.220226,
		32.645851, 37.046616, 38.677925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.106747, 36.238926, 38.554253>,  <33.315319, 36.912262, 38.832081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.106747, 36.238926, 38.554253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.813999, 36.495102, 38.461117>,  <32.638351, 36.648808, 38.405235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.813999, 36.495102, 38.461117>,  <33.106747, 36.238926, 38.554253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.813999, 36.495102, 38.461117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005399, -0.347125, -0.937803,
		-0.681430, -0.685087, 0.257506,
		-0.731864, 0.640437, -0.232843,
		32.594440, 36.687233, 38.391266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.464390, 35.469452, 38.579472>,  <33.106747, 36.238926, 38.554253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.464390, 35.469452, 38.579472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.276501, 35.699947, 38.846996>,  <33.163769, 35.838245, 39.007511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.276501, 35.699947, 38.846996>,  <33.464390, 35.469452, 38.579472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.276501, 35.699947, 38.846996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575617, -0.774317, 0.262867,
		0.669348, -0.261506, 0.695405,
		-0.469723, 0.576236, 0.668815,
		33.135582, 35.872818, 39.047642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.753212, 35.526825, 38.952583>,  <33.464390, 35.469452, 38.579472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.753212, 35.526825, 38.952583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.559891, 35.567219, 38.604740>,  <32.443897, 35.591454, 38.396034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.559891, 35.567219, 38.604740>,  <32.753212, 35.526825, 38.952583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.559891, 35.567219, 38.604740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302024, 0.951574, -0.057356,
		0.821703, -0.290362, -0.490402,
		-0.483308, 0.100984, -0.869607,
		32.414898, 35.597515, 38.343857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.099384, 35.445675, 39.317612>,  <32.753212, 35.526825, 38.952583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.099384, 35.445675, 39.317612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.473526, 35.310070, 39.357998>,  <32.698009, 35.228706, 39.382229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.473526, 35.310070, 39.357998>,  <32.099384, 35.445675, 39.317612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.473526, 35.310070, 39.357998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270549, -0.501781, 0.821595,
		-0.227866, -0.795795, -0.561059,
		0.935350, -0.339008, 0.100962,
		32.754131, 35.208366, 39.388287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.896513, 34.771198, 39.587009>,  <32.099384, 35.445675, 39.317612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.896513, 34.771198, 39.587009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.229771, 34.936852, 39.733631>,  <32.429726, 35.036243, 39.821606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.229771, 34.936852, 39.733631>,  <31.896513, 34.771198, 39.587009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.229771, 34.936852, 39.733631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248414, -0.311942, 0.917051,
		0.494124, -0.855095, -0.157017,
		0.833146, 0.414132, 0.366555,
		32.479713, 35.061092, 39.843597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.126137, 34.297245, 39.993999>,  <31.896513, 34.771198, 39.587009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.126137, 34.297245, 39.993999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.289574, 34.640865, 40.117344>,  <32.387638, 34.847038, 40.191349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.289574, 34.640865, 40.117344>,  <32.126137, 34.297245, 39.993999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.289574, 34.640865, 40.117344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021530, -0.328683, 0.944195,
		0.912462, -0.392433, -0.115803,
		0.408596, 0.859048, 0.308360,
		32.412151, 34.898579, 40.209850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.620724, 34.135612, 40.492210>,  <32.126137, 34.297245, 39.993999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.620724, 34.135612, 40.492210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.531097, 34.520683, 40.552937>,  <32.477322, 34.751724, 40.589371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.531097, 34.520683, 40.552937>,  <32.620724, 34.135612, 40.492210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.531097, 34.520683, 40.552937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040745, -0.146385, 0.988388,
		0.973722, 0.227649, -0.006424,
		-0.224065, 0.962678, 0.151814,
		32.463879, 34.809486, 40.598480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.169930, 34.377937, 40.894661>,  <32.620724, 34.135612, 40.492210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.169930, 34.377937, 40.894661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.849869, 34.612808, 40.943630>,  <32.657833, 34.753731, 40.973011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.849869, 34.612808, 40.943630>,  <33.169930, 34.377937, 40.894661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.849869, 34.612808, 40.943630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050574, -0.137340, 0.989232,
		0.597665, 0.797725, 0.080196,
		-0.800149, 0.587174, 0.122428,
		32.609825, 34.788960, 40.980358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.321606, 34.599022, 41.567257>,  <33.169930, 34.377937, 40.894661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.321606, 34.599022, 41.567257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.944565, 34.720093, 41.510860>,  <32.718338, 34.792736, 41.477024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.944565, 34.720093, 41.510860>,  <33.321606, 34.599022, 41.567257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.944565, 34.720093, 41.510860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140765, 0.022680, 0.989783,
		0.302784, 0.952823, 0.021228,
		-0.942607, 0.302679, -0.140991,
		32.661781, 34.810898, 41.468563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.160793, 35.083549, 42.066387>,  <33.321606, 34.599022, 41.567257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.160793, 35.083549, 42.066387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.781799, 35.002087, 41.967762>,  <32.554401, 34.953209, 41.908588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.781799, 35.002087, 41.967762>,  <33.160793, 35.083549, 42.066387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.781799, 35.002087, 41.967762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275898, 0.130701, 0.952259,
		-0.161707, 0.970279, -0.180026,
		-0.947487, -0.203656, -0.246563,
		32.497555, 34.940990, 41.893795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.716412, 35.626343, 42.226994>,  <33.160793, 35.083549, 42.066387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.716412, 35.626343, 42.226994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.490829, 35.296146, 42.217922>,  <32.355480, 35.098026, 42.212479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.490829, 35.296146, 42.217922>,  <32.716412, 35.626343, 42.226994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.490829, 35.296146, 42.217922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119251, 0.054230, 0.991382,
		-0.817151, 0.561799, -0.129024,
		-0.563954, -0.825495, -0.022681,
		32.321644, 35.048496, 42.211117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.011059, 35.732880, 42.647812>,  <32.716412, 35.626343, 42.226994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.011059, 35.732880, 42.647812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.035141, 35.334053, 42.628902>,  <32.049591, 35.094757, 42.617558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.035141, 35.334053, 42.628902>,  <32.011059, 35.732880, 42.647812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.035141, 35.334053, 42.628902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056325, -0.050680, 0.997125,
		-0.996596, -0.057371, -0.059211,
		0.060207, -0.997066, -0.047276,
		32.053204, 35.034935, 42.614719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.707943, 35.512321, 43.190014>,  <32.011059, 35.732880, 42.647812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.707943, 35.512321, 43.190014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.890221, 35.169064, 43.095409>,  <31.999588, 34.963108, 43.038647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.890221, 35.169064, 43.095409>,  <31.707943, 35.512321, 43.190014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.890221, 35.169064, 43.095409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079330, -0.303793, 0.949430,
		-0.886594, -0.413888, -0.206513,
		0.455695, -0.858142, -0.236507,
		32.026928, 34.911621, 43.024456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.193075, 35.055908, 43.485836>,  <31.707943, 35.512321, 43.190014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.193075, 35.055908, 43.485836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.534519, 34.851624, 43.444794>,  <31.739386, 34.729053, 43.420166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.534519, 34.851624, 43.444794>,  <31.193075, 35.055908, 43.485836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.534519, 34.851624, 43.444794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106801, -0.364374, 0.925108,
		-0.509850, -0.778721, -0.365577,
		0.853608, -0.510710, -0.102608,
		31.790602, 34.698410, 43.414013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.045269, 34.368225, 43.693253>,  <31.193075, 35.055908, 43.485836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.045269, 34.368225, 43.693253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.436583, 34.435493, 43.741718>,  <31.671370, 34.475853, 43.770798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.436583, 34.435493, 43.741718>,  <31.045269, 34.368225, 43.693253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.436583, 34.435493, 43.741718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039346, -0.423282, 0.905143,
		0.203507, -0.890253, -0.407473,
		0.978283, 0.168170, 0.121169,
		31.730068, 34.485943, 43.778069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.238922, 33.872814, 44.117527>,  <31.045269, 34.368225, 43.693253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.238922, 33.872814, 44.117527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.534548, 34.140202, 44.150829>,  <31.711924, 34.300636, 44.170811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.534548, 34.140202, 44.150829>,  <31.238922, 33.872814, 44.117527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.534548, 34.140202, 44.150829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145619, -0.279202, 0.949127,
		0.657710, -0.689340, -0.303690,
		0.739062, 0.668473, 0.083252,
		31.756266, 34.340744, 44.175804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.696085, 33.442146, 44.407181>,  <31.238922, 33.872814, 44.117527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.696085, 33.442146, 44.407181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.853588, 33.802006, 44.482635>,  <31.948090, 34.017921, 44.527908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.853588, 33.802006, 44.482635>,  <31.696085, 33.442146, 44.407181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.853588, 33.802006, 44.482635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189314, -0.280187, 0.941093,
		0.899508, -0.334851, -0.280642,
		0.393758, 0.899650, 0.188639,
		31.971716, 34.071899, 44.539227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.376606, 33.337002, 44.670586>,  <31.696085, 33.442146, 44.407181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.376606, 33.337002, 44.670586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.293724, 33.703564, 44.807564>,  <32.243996, 33.923500, 44.889751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.293724, 33.703564, 44.807564>,  <32.376606, 33.337002, 44.670586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.293724, 33.703564, 44.807564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414161, -0.234956, 0.879356,
		0.886305, 0.324034, -0.330855,
		-0.207205, 0.916405, 0.342445,
		32.231564, 33.978485, 44.910297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.996841, 33.645252, 45.015881>,  <32.376606, 33.337002, 44.670586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.996841, 33.645252, 45.015881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.673450, 33.837799, 45.151318>,  <32.479416, 33.953327, 45.232578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.673450, 33.837799, 45.151318>,  <32.996841, 33.645252, 45.015881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.673450, 33.837799, 45.151318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378537, -0.015196, 0.925461,
		0.450635, 0.876386, -0.169931,
		-0.808479, 0.481370, 0.338592,
		32.430908, 33.982208, 45.252895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.243237, 34.169289, 45.332558>,  <32.996841, 33.645252, 45.015881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.243237, 34.169289, 45.332558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.873264, 34.138981, 45.481556>,  <32.651279, 34.120796, 45.570957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.873264, 34.138981, 45.481556>,  <33.243237, 34.169289, 45.332558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.873264, 34.138981, 45.481556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379122, -0.112675, 0.918461,
		-0.027616, 0.990739, 0.132941,
		-0.924935, -0.075765, 0.372499,
		32.595783, 34.116253, 45.593307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.388611, 34.442429, 45.851772>,  <33.243237, 34.169289, 45.332558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.388611, 34.442429, 45.851772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.036613, 34.274387, 45.940422>,  <32.825413, 34.173561, 45.993610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.036613, 34.274387, 45.940422>,  <33.388611, 34.442429, 45.851772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.036613, 34.274387, 45.940422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255939, -0.026329, 0.966334,
		-0.400125, 0.907094, 0.130690,
		-0.879997, -0.420103, 0.221626,
		32.772614, 34.148357, 46.006908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.180836, 34.863907, 46.372585>,  <33.388611, 34.442429, 45.851772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.180836, 34.863907, 46.372585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.949955, 34.538902, 46.405220>,  <32.811424, 34.343899, 46.424801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.949955, 34.538902, 46.405220>,  <33.180836, 34.863907, 46.372585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.949955, 34.538902, 46.405220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087176, 0.038028, 0.995467,
		-0.811932, 0.581701, 0.048882,
		-0.577205, -0.812513, 0.081587,
		32.776794, 34.295147, 46.429695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.703815, 34.933559, 46.918194>,  <33.180836, 34.863907, 46.372585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.703815, 34.933559, 46.918194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.734844, 34.539528, 46.856739>,  <32.753464, 34.303108, 46.819866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.734844, 34.539528, 46.856739>,  <32.703815, 34.933559, 46.918194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.734844, 34.539528, 46.856739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112085, -0.144504, 0.983135,
		-0.990666, -0.093485, 0.099202,
		0.077574, -0.985078, -0.153634,
		32.758118, 34.244003, 46.810650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.207523, 34.598255, 47.325291>,  <32.703815, 34.933559, 46.918194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.207523, 34.598255, 47.325291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.510891, 34.343323, 47.270741>,  <32.692913, 34.190361, 47.238010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.510891, 34.343323, 47.270741>,  <32.207523, 34.598255, 47.325291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.510891, 34.343323, 47.270741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044180, -0.158494, 0.986371,
		-0.650265, -0.754110, -0.092048,
		0.758422, -0.637336, -0.136380,
		32.738419, 34.152122, 47.229828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.104145, 34.116306, 47.832516>,  <32.207523, 34.598255, 47.325291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.104145, 34.116306, 47.832516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.491615, 34.066574, 47.746532>,  <32.724098, 34.036736, 47.694942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.491615, 34.066574, 47.746532>,  <32.104145, 34.116306, 47.832516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.491615, 34.066574, 47.746532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186954, -0.204592, 0.960828,
		-0.163436, -0.970920, -0.174940,
		0.968678, -0.124328, -0.214954,
		32.782219, 34.029274, 47.682045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.343899, 33.519924, 48.295601>,  <32.104145, 34.116306, 47.832516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.343899, 33.519924, 48.295601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.676796, 33.708019, 48.178131>,  <32.876534, 33.820877, 48.107647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.676796, 33.708019, 48.178131>,  <32.343899, 33.519924, 48.295601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.676796, 33.708019, 48.178131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386504, -0.112346, 0.915420,
		0.397470, -0.875361, -0.275248,
		0.832245, 0.470236, -0.293676,
		32.926468, 33.849091, 48.090027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.886723, 33.215805, 48.675537>,  <32.343899, 33.519924, 48.295601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.886723, 33.215805, 48.675537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.067837, 33.553642, 48.561237>,  <33.176506, 33.756344, 48.492657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.067837, 33.553642, 48.561237>,  <32.886723, 33.215805, 48.675537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.067837, 33.553642, 48.561237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477094, 0.041250, 0.877884,
		0.753240, -0.533820, -0.384272,
		0.452781, 0.844591, -0.285754,
		33.203671, 33.807018, 48.475510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.528782, 33.147816, 48.925552>,  <32.886723, 33.215805, 48.675537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.528782, 33.147816, 48.925552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.493511, 33.539108, 48.850410>,  <33.472351, 33.773884, 48.805325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.493511, 33.539108, 48.850410>,  <33.528782, 33.147816, 48.925552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.493511, 33.539108, 48.850410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412389, 0.207515, 0.887058,
		0.906731, 0.000746, -0.421709,
		-0.088173, 0.978232, -0.187853,
		33.467060, 33.832577, 48.794056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.129551, 33.451263, 49.066956>,  <33.528782, 33.147816, 48.925552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.129551, 33.451263, 49.066956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.859463, 33.745781, 49.084602>,  <33.697411, 33.922493, 49.095192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.859463, 33.745781, 49.084602>,  <34.129551, 33.451263, 49.066956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.859463, 33.745781, 49.084602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356645, 0.273532, 0.893300,
		0.645667, 0.618906, -0.447291,
		-0.675217, 0.736299, 0.044119,
		33.656898, 33.966671, 49.097839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.509541, 34.017056, 49.304356>,  <34.129551, 33.451263, 49.066956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.509541, 34.017056, 49.304356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.128242, 34.083591, 49.405281>,  <33.899464, 34.123512, 49.465836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.128242, 34.083591, 49.405281>,  <34.509541, 34.017056, 49.304356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.128242, 34.083591, 49.405281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289556, 0.263671, 0.920128,
		0.086526, 0.950163, -0.299507,
		-0.953242, 0.166339, 0.252311,
		33.842270, 34.133492, 49.480976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.057266, 34.551796, 49.042019>,  <34.509541, 34.017056, 49.304356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.057266, 34.551796, 49.042019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.340378, 34.319115, 49.202358>,  <35.510246, 34.179508, 49.298561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.340378, 34.319115, 49.202358>,  <35.057266, 34.551796, 49.042019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.340378, 34.319115, 49.202358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244488, -0.330654, -0.911534,
		0.662779, 0.743165, -0.091811,
		0.707778, -0.581699, 0.400845,
		35.552711, 34.144604, 49.322613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.602055, 34.628235, 48.560814>,  <35.057266, 34.551796, 49.042019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.602055, 34.628235, 48.560814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.702118, 34.293873, 48.756233>,  <35.762157, 34.093254, 48.873486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.702118, 34.293873, 48.756233>,  <35.602055, 34.628235, 48.560814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.702118, 34.293873, 48.756233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197976, -0.449766, -0.870928,
		0.947747, 0.314594, 0.052975,
		0.250162, -0.835908, 0.488546,
		35.777168, 34.043102, 48.902798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.362526, 34.429085, 48.403812>,  <35.602055, 34.628235, 48.560814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.362526, 34.429085, 48.403812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.173824, 34.098499, 48.526718>,  <36.060604, 33.900150, 48.600460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.173824, 34.098499, 48.526718>,  <36.362526, 34.429085, 48.403812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.173824, 34.098499, 48.526718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182032, -0.432256, -0.883187,
		0.862735, -0.360716, 0.354361,
		-0.471754, -0.826461, 0.307261,
		36.032299, 33.850559, 48.618896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.832447, 33.871510, 48.152790>,  <36.362526, 34.429085, 48.403812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.832447, 33.871510, 48.152790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.470039, 33.718555, 48.225357>,  <36.252594, 33.626781, 48.268898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.470039, 33.718555, 48.225357>,  <36.832447, 33.871510, 48.152790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.470039, 33.718555, 48.225357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002703, -0.423397, -0.905940,
		0.423228, -0.821289, 0.382572,
		-0.906019, -0.382385, 0.181413,
		36.198235, 33.603840, 48.279781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.836815, 33.259598, 47.858681>,  <36.832447, 33.871510, 48.152790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.836815, 33.259598, 47.858681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.445152, 33.337715, 47.880978>,  <36.210155, 33.384586, 47.894356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.445152, 33.337715, 47.880978>,  <36.836815, 33.259598, 47.858681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.445152, 33.337715, 47.880978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102989, -0.240899, -0.965070,
		-0.175043, -0.950699, 0.255992,
		-0.979160, 0.195293, 0.055744,
		36.151405, 33.396305, 47.897701>
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
