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
	sky <-0, 1, 0>
	up <-0, 1, 0>
	right 1.6 * <1, 0, 0>
	location <18.5, 18.5, 82.5562>
	look_at <18.5, 18.5, 18.5>
	direction <0, 0, -64.0562>
	angle 67.0682
}


# declare cpy_camera_pos = <18.5, 18.5, 82.5562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 29.6
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1, 1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1, -1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<22.943922, 16.818323, -2.329966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.065922, 17.185890, -2.430016>,  <23.139122, 17.406431, -2.490046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.065922, 17.185890, -2.430016>,  <22.943922, 16.818323, -2.329966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.065922, 17.185890, -2.430016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270266, 0.168325, 0.947957,
		0.913199, -0.356726, -0.197014,
		0.304999, 0.918920, -0.250125,
		23.157421, 17.461567, -2.505053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.495302, 16.996992, -1.843022>,  <22.943922, 16.818323, -2.329966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.495302, 16.996992, -1.843022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.372906, 17.350300, -1.985124>,  <23.299467, 17.562284, -2.070384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.372906, 17.350300, -1.985124>,  <23.495302, 16.996992, -1.843022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.372906, 17.350300, -1.985124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312356, 0.445638, 0.838951,
		0.899334, 0.145747, -0.412256,
		-0.305992, 0.883269, -0.355253,
		23.281109, 17.615280, -2.091699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.992247, 17.612724, -1.826219>,  <23.495302, 16.996992, -1.843022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.992247, 17.612724, -1.826219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.617321, 17.750622, -1.805847>,  <23.392366, 17.833361, -1.793624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.617321, 17.750622, -1.805847>,  <23.992247, 17.612724, -1.826219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.617321, 17.750622, -1.805847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178618, 0.349773, 0.919649,
		0.299230, 0.871097, -0.389425,
		-0.937314, 0.344745, 0.050931,
		23.336126, 17.854046, -1.790568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.987024, 18.344255, -1.666836>,  <23.992247, 17.612724, -1.826219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.987024, 18.344255, -1.666836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.654324, 18.173786, -1.524531>,  <23.454702, 18.071505, -1.439149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.654324, 18.173786, -1.524531>,  <23.987024, 18.344255, -1.666836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.654324, 18.173786, -1.524531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300515, 0.193184, 0.934008,
		-0.466777, 0.883774, -0.032609,
		-0.831751, -0.426174, 0.355761,
		23.404799, 18.045935, -1.417803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.589083, 18.842661, -1.291070>,  <23.987024, 18.344255, -1.666836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.589083, 18.842661, -1.291070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.559597, 18.469498, -1.150075>,  <23.541904, 18.245600, -1.065478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.559597, 18.469498, -1.150075>,  <23.589083, 18.842661, -1.291070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.559597, 18.469498, -1.150075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525779, 0.263982, 0.808622,
		-0.847421, 0.244939, 0.471044,
		-0.073716, -0.932909, 0.352488,
		23.537481, 18.189625, -1.044329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.281588, 18.876070, -0.626285>,  <23.589083, 18.842661, -1.291070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.281588, 18.876070, -0.626285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.513885, 18.554001, -0.674339>,  <23.653265, 18.360760, -0.703171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.513885, 18.554001, -0.674339>,  <23.281588, 18.876070, -0.626285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.513885, 18.554001, -0.674339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537670, 0.268554, 0.799243,
		-0.611266, -0.528749, 0.588879,
		0.580744, -0.805173, -0.120134,
		23.688108, 18.312449, -0.710379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.453896, 18.471054, -0.022079>,  <23.281588, 18.876070, -0.626285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.453896, 18.471054, -0.022079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.788132, 18.409962, -0.233159>,  <23.988672, 18.373306, -0.359806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.788132, 18.409962, -0.233159>,  <23.453896, 18.471054, -0.022079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.788132, 18.409962, -0.233159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545587, 0.343042, 0.764629,
		0.064240, -0.926820, 0.369970,
		0.835588, -0.152731, -0.527698,
		24.038809, 18.364141, -0.391468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.975792, 17.989166, 0.225702>,  <23.453896, 18.471054, -0.022079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.975792, 17.989166, 0.225702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.189720, 18.245399, 0.005295>,  <24.318077, 18.399139, -0.126949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.189720, 18.245399, 0.005295>,  <23.975792, 17.989166, 0.225702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.189720, 18.245399, 0.005295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449011, 0.336968, 0.827551,
		0.715791, -0.690005, -0.107411,
		0.534820, 0.640583, -0.551019,
		24.350166, 18.437574, -0.160011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.640276, 17.918341, 0.410164>,  <23.975792, 17.989166, 0.225702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.640276, 17.918341, 0.410164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.646427, 18.282635, 0.245080>,  <24.650118, 18.501211, 0.146030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.646427, 18.282635, 0.245080>,  <24.640276, 17.918341, 0.410164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.646427, 18.282635, 0.245080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672983, 0.295843, 0.677916,
		0.739498, -0.288170, -0.608359,
		0.015377, 0.910733, -0.412709,
		24.651041, 18.555855, 0.121268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.283133, 18.028038, 0.313109>,  <24.640276, 17.918341, 0.410164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.283133, 18.028038, 0.313109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.078983, 18.361633, 0.396996>,  <24.956493, 18.561790, 0.447328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.078983, 18.361633, 0.396996>,  <25.283133, 18.028038, 0.313109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.078983, 18.361633, 0.396996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573565, 0.148422, 0.805601,
		0.640737, 0.531442, -0.554098,
		-0.510371, 0.833991, 0.209717,
		24.925873, 18.611830, 0.459911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.774498, 18.463917, 0.498252>,  <25.283133, 18.028038, 0.313109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.774498, 18.463917, 0.498252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.435341, 18.594078, 0.665677>,  <25.231846, 18.672174, 0.766131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.435341, 18.594078, 0.665677>,  <25.774498, 18.463917, 0.498252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.435341, 18.594078, 0.665677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513425, 0.307128, 0.801291,
		0.132189, 0.894308, -0.427480,
		-0.847892, 0.325401, 0.418561,
		25.180973, 18.691698, 0.791245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.768766, 19.194689, 0.761188>,  <25.774498, 18.463917, 0.498252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.768766, 19.194689, 0.761188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.549484, 18.922905, 0.956250>,  <25.417915, 18.759834, 1.073287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.549484, 18.922905, 0.956250>,  <25.768766, 19.194689, 0.761188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.549484, 18.922905, 0.956250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587933, 0.101606, 0.802503,
		-0.594817, 0.726645, 0.343775,
		-0.548205, -0.679458, 0.487655,
		25.385023, 18.719067, 1.102546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.743320, 19.520088, 1.363015>,  <25.768766, 19.194689, 0.761188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.743320, 19.520088, 1.363015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.669418, 19.127701, 1.386889>,  <25.625078, 18.892267, 1.401214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.669418, 19.127701, 1.386889>,  <25.743320, 19.520088, 1.363015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.669418, 19.127701, 1.386889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432134, -0.026541, 0.901419,
		-0.882681, 0.192333, 0.428814,
		-0.184754, -0.980971, 0.059686,
		25.613993, 18.833410, 1.404795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.550251, 19.309214, 2.073106>,  <25.743320, 19.520088, 1.363015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.550251, 19.309214, 2.073106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.680534, 18.970482, 1.904920>,  <25.758705, 18.767242, 1.804008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.680534, 18.970482, 1.904920>,  <25.550251, 19.309214, 2.073106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.680534, 18.970482, 1.904920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420555, -0.268534, 0.866616,
		-0.846786, -0.459094, 0.268674,
		0.325710, -0.846831, -0.420465,
		25.778248, 18.716433, 1.778780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.837215, 18.967854, 1.852603>,  <25.550251, 19.309214, 2.073106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.837215, 18.967854, 1.852603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.501740, 18.849743, 1.669559>,  <24.300453, 18.778875, 1.559732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.501740, 18.849743, 1.669559>,  <24.837215, 18.967854, 1.852603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.501740, 18.849743, 1.669559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427490, -0.163651, 0.889084,
		-0.337416, 0.941291, 0.011024,
		-0.838691, -0.295278, -0.457611,
		24.250132, 18.761160, 1.532275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.123053, 19.302792, 2.020705>,  <24.837215, 18.967854, 1.852603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.123053, 19.302792, 2.020705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.124954, 18.908482, 1.953504>,  <24.126095, 18.671896, 1.913182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.124954, 18.908482, 1.953504>,  <24.123053, 19.302792, 2.020705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.124954, 18.908482, 1.953504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403252, -0.155630, 0.901758,
		-0.915077, 0.063463, -0.398255,
		0.004752, -0.985775, -0.168005,
		24.126379, 18.612749, 1.903102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.474173, 18.922483, 1.879975>,  <24.123053, 19.302792, 2.020705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.474173, 18.922483, 1.879975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.748665, 18.720181, 2.089087>,  <23.913361, 18.598799, 2.214553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.748665, 18.720181, 2.089087>,  <23.474173, 18.922483, 1.879975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.748665, 18.720181, 2.089087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611305, -0.011496, 0.791312,
		-0.394204, -0.862598, -0.317062,
		0.686229, -0.505759, 0.522778,
		23.954535, 18.568453, 2.245920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.194071, 18.351950, 2.186954>,  <23.474173, 18.922483, 1.879975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.194071, 18.351950, 2.186954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.496704, 18.479160, 2.415496>,  <23.678284, 18.555487, 2.552621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.496704, 18.479160, 2.415496>,  <23.194071, 18.351950, 2.186954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.496704, 18.479160, 2.415496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621729, 0.079168, 0.779221,
		0.202578, -0.944772, 0.257622,
		0.756581, 0.318024, 0.571354,
		23.723679, 18.574568, 2.586902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.879124, 18.279432, 2.829113>,  <23.194071, 18.351950, 2.186954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.879124, 18.279432, 2.829113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.194477, 18.512844, 2.907031>,  <23.383690, 18.652891, 2.953782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.194477, 18.512844, 2.907031>,  <22.879124, 18.279432, 2.829113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.194477, 18.512844, 2.907031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395821, 0.238762, 0.886746,
		0.470933, -0.776199, 0.419210,
		0.788383, 0.583530, 0.194795,
		23.430992, 18.687902, 2.965470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.139429, 18.031588, 3.461836>,  <22.879124, 18.279432, 2.829113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.139429, 18.031588, 3.461836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.241013, 18.410336, 3.382902>,  <23.301964, 18.637585, 3.335542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.241013, 18.410336, 3.382902>,  <23.139429, 18.031588, 3.461836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.241013, 18.410336, 3.382902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418873, 0.291568, 0.859961,
		0.871808, -0.135739, 0.470665,
		0.253961, 0.946870, -0.197334,
		23.317202, 18.694397, 3.323702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.488316, 18.296547, 4.106712>,  <23.139429, 18.031588, 3.461836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.488316, 18.296547, 4.106712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.283989, 18.579346, 3.911072>,  <23.161392, 18.749025, 3.793688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.283989, 18.579346, 3.911072>,  <23.488316, 18.296547, 4.106712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.283989, 18.579346, 3.911072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312363, 0.377406, 0.871776,
		0.800934, 0.598095, 0.028055,
		-0.510817, 0.706999, -0.489100,
		23.130743, 18.791445, 3.764342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.550104, 18.880741, 4.412837>,  <23.488316, 18.296547, 4.106712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.550104, 18.880741, 4.412837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.193539, 18.963150, 4.251377>,  <22.979599, 19.012596, 4.154501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.193539, 18.963150, 4.251377>,  <23.550104, 18.880741, 4.412837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.193539, 18.963150, 4.251377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300108, 0.399043, 0.866430,
		0.339579, 0.893487, -0.293884,
		-0.891416, 0.206024, -0.403649,
		22.926113, 19.024958, 4.130282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.249418, 19.557100, 4.620751>,  <23.550104, 18.880741, 4.412837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.249418, 19.557100, 4.620751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.947220, 19.315987, 4.518086>,  <22.765902, 19.171318, 4.456487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.947220, 19.315987, 4.518086>,  <23.249418, 19.557100, 4.620751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.947220, 19.315987, 4.518086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449295, 0.191570, 0.872602,
		-0.476822, 0.774566, -0.415559,
		-0.755496, -0.602785, -0.256664,
		22.720572, 19.135151, 4.441087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.471741, 19.883892, 4.683321>,  <23.249418, 19.557100, 4.620751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.471741, 19.883892, 4.683321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.523445, 19.491001, 4.737759>,  <22.554468, 19.255266, 4.770421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.523445, 19.491001, 4.737759>,  <22.471741, 19.883892, 4.683321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.523445, 19.491001, 4.737759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281834, 0.095194, 0.954729,
		-0.950716, -0.161764, -0.264520,
		0.129260, -0.982227, 0.136093,
		22.562223, 19.196333, 4.778587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.793619, 19.525393, 4.934571>,  <22.471741, 19.883892, 4.683321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.793619, 19.525393, 4.934571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.113209, 19.313110, 5.047707>,  <22.304962, 19.185741, 5.115588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.113209, 19.313110, 5.047707>,  <21.793619, 19.525393, 4.934571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.113209, 19.313110, 5.047707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320906, 0.021509, 0.946867,
		-0.508589, -0.847285, -0.153121,
		0.798972, -0.530703, 0.282838,
		22.352900, 19.153900, 5.132558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.460377, 19.048601, 5.319458>,  <21.793619, 19.525393, 4.934571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.460377, 19.048601, 5.319458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.844597, 19.109921, 5.412270>,  <22.075130, 19.146713, 5.467957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.844597, 19.109921, 5.412270>,  <21.460377, 19.048601, 5.319458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.844597, 19.109921, 5.412270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263446, 0.234361, 0.935773,
		0.089074, -0.959987, 0.265502,
		0.960553, 0.153298, 0.232030,
		22.132763, 19.155910, 5.481878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.672247, 18.649326, 5.967737>,  <21.460377, 19.048601, 5.319458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.672247, 18.649326, 5.967737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.895569, 18.973755, 5.897928>,  <22.029562, 19.168411, 5.856043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.895569, 18.973755, 5.897928>,  <21.672247, 18.649326, 5.967737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.895569, 18.973755, 5.897928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140815, 0.299949, 0.943505,
		0.817598, -0.502188, 0.281674,
		0.558305, 0.811072, -0.174522,
		22.063061, 19.217077, 5.845572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.308407, 18.741852, 6.370279>,  <21.672247, 18.649326, 5.967737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.308407, 18.741852, 6.370279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.219395, 19.121952, 6.283094>,  <22.165987, 19.350012, 6.230784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.219395, 19.121952, 6.283094>,  <22.308407, 18.741852, 6.370279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.219395, 19.121952, 6.283094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094161, 0.201573, 0.974937,
		0.970368, 0.237476, 0.044621,
		-0.222530, 0.950249, -0.217961,
		22.152636, 19.407026, 6.217706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.658882, 19.248579, 6.743302>,  <22.308407, 18.741852, 6.370279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.658882, 19.248579, 6.743302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.317162, 19.438232, 6.658102>,  <22.112129, 19.552025, 6.606982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.317162, 19.438232, 6.658102>,  <22.658882, 19.248579, 6.743302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.317162, 19.438232, 6.658102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064000, 0.310718, 0.948345,
		0.515825, 0.823803, -0.235102,
		-0.854300, 0.474134, -0.212999,
		22.060871, 19.580473, 6.594202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.689209, 19.949711, 6.990222>,  <22.658882, 19.248579, 6.743302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.689209, 19.949711, 6.990222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.312447, 19.815712, 6.980480>,  <22.086390, 19.735313, 6.974635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.312447, 19.815712, 6.980480>,  <22.689209, 19.949711, 6.990222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.312447, 19.815712, 6.980480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149316, 0.352667, 0.923759,
		-0.300867, 0.873729, -0.382199,
		-0.941904, -0.334997, -0.024356,
		22.029875, 19.715212, 6.973173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.260990, 20.378761, 7.367979>,  <22.689209, 19.949711, 6.990222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.260990, 20.378761, 7.367979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.060371, 20.033367, 7.389294>,  <21.940001, 19.826130, 7.402082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.060371, 20.033367, 7.389294>,  <22.260990, 20.378761, 7.367979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.060371, 20.033367, 7.389294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165439, 0.156185, 0.973774,
		-0.849164, 0.479578, -0.221189,
		-0.501547, -0.863488, 0.053286,
		21.909906, 19.774321, 7.405280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.544996, 20.491446, 7.660602>,  <22.260990, 20.378761, 7.367979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.544996, 20.491446, 7.660602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.733246, 20.145996, 7.732897>,  <21.846195, 19.938726, 7.776274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.733246, 20.145996, 7.732897>,  <21.544996, 20.491446, 7.660602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.733246, 20.145996, 7.732897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068015, 0.168721, 0.983315,
		-0.879708, -0.475065, 0.020664,
		0.470624, -0.863625, 0.180737,
		21.874434, 19.886909, 7.787118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.163137, 20.034672, 8.142298>,  <21.544996, 20.491446, 7.660602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.163137, 20.034672, 8.142298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.553226, 19.950638, 8.170024>,  <21.787279, 19.900217, 8.186660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.553226, 19.950638, 8.170024>,  <21.163137, 20.034672, 8.142298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.553226, 19.950638, 8.170024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080621, -0.045720, 0.995696,
		-0.206015, -0.976613, -0.061525,
		0.975222, -0.210089, 0.069316,
		21.845793, 19.887611, 8.190819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.242590, 19.469070, 8.697235>,  <21.163137, 20.034672, 8.142298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.242590, 19.469070, 8.697235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.599380, 19.643620, 8.649978>,  <21.813454, 19.748348, 8.621623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.599380, 19.643620, 8.649978>,  <21.242590, 19.469070, 8.697235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.599380, 19.643620, 8.649978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071129, 0.122617, 0.989902,
		0.446454, -0.891371, 0.078333,
		0.891975, 0.436374, -0.118145,
		21.866974, 19.774532, 8.614534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.787401, 18.985853, 8.928451>,  <21.242590, 19.469070, 8.697235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.787401, 18.985853, 8.928451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.816448, 19.382854, 8.967780>,  <21.833876, 19.621056, 8.991378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.816448, 19.382854, 8.967780>,  <21.787401, 18.985853, 8.928451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.816448, 19.382854, 8.967780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215399, -0.111863, 0.970098,
		0.973822, -0.049265, -0.221907,
		0.072615, 0.992502, 0.098323,
		21.838232, 19.680605, 8.997277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.282667, 19.066784, 9.459595>,  <21.787401, 18.985853, 8.928451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.282667, 19.066784, 9.459595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.062428, 19.400688, 9.458164>,  <21.930283, 19.601030, 9.457306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.062428, 19.400688, 9.458164>,  <22.282667, 19.066784, 9.459595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.062428, 19.400688, 9.458164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016033, 0.014858, 0.999761,
		0.834615, 0.550411, -0.021564,
		-0.550600, 0.834762, -0.003576,
		21.897247, 19.651117, 9.457091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.780823, 19.565722, 9.690039>,  <22.282667, 19.066784, 9.459595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.780823, 19.565722, 9.690039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.411297, 19.615757, 9.834767>,  <22.189581, 19.645779, 9.921604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.411297, 19.615757, 9.834767>,  <22.780823, 19.565722, 9.690039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.411297, 19.615757, 9.834767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350307, -0.105031, 0.930728,
		0.154426, 0.986571, 0.053210,
		-0.923817, 0.125088, 0.361822,
		22.134151, 19.653284, 9.943314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.840816, 20.057587, 10.275273>,  <22.780823, 19.565722, 9.690039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.840816, 20.057587, 10.275273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.496998, 19.860996, 10.331317>,  <22.290707, 19.743042, 10.364943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.496998, 19.860996, 10.331317>,  <22.840816, 20.057587, 10.275273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.496998, 19.860996, 10.331317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183910, -0.041681, 0.982059,
		-0.476819, 0.869893, 0.126214,
		-0.859547, -0.491476, 0.140108,
		22.239134, 19.713552, 10.373349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.456888, 20.359369, 10.844791>,  <22.840816, 20.057587, 10.275273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.456888, 20.359369, 10.844791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.275566, 20.003002, 10.833642>,  <22.166773, 19.789183, 10.826952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.275566, 20.003002, 10.833642>,  <22.456888, 20.359369, 10.844791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.275566, 20.003002, 10.833642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075906, -0.069741, 0.994673,
		-0.888116, 0.448777, 0.099240,
		-0.453307, -0.890918, -0.027873,
		22.139574, 19.735727, 10.825280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.121338, 20.351456, 11.478008>,  <22.456888, 20.359369, 10.844791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.121338, 20.351456, 11.478008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.139950, 19.969131, 11.361895>,  <22.151117, 19.739737, 11.292227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.139950, 19.969131, 11.361895>,  <22.121338, 20.351456, 11.478008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.139950, 19.969131, 11.361895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019746, -0.289661, 0.956926,
		-0.998722, -0.050257, 0.005396,
		0.046529, -0.955809, -0.290283,
		22.153908, 19.682388, 11.274810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.706619, 20.052059, 11.900411>,  <22.121338, 20.351456, 11.478008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.706619, 20.052059, 11.900411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.935112, 19.746754, 11.779662>,  <22.072206, 19.563570, 11.707213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.935112, 19.746754, 11.779662>,  <21.706619, 20.052059, 11.900411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.935112, 19.746754, 11.779662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045011, -0.396358, 0.916992,
		-0.819555, -0.510226, -0.260766,
		0.571229, -0.763263, -0.301871,
		22.106482, 19.517775, 11.689101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.308981, 19.379438, 11.993896>,  <21.706619, 20.052059, 11.900411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.308981, 19.379438, 11.993896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.695889, 19.278183, 11.986842>,  <21.928034, 19.217430, 11.982610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.695889, 19.278183, 11.986842>,  <21.308981, 19.379438, 11.993896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.695889, 19.278183, 11.986842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066071, -0.318350, 0.945668,
		-0.244995, -0.913552, -0.324655,
		0.967270, -0.253134, -0.017635,
		21.986069, 19.202242, 11.981551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.313726, 18.805235, 12.339350>,  <21.308981, 19.379438, 11.993896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.313726, 18.805235, 12.339350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.702324, 18.900021, 12.336650>,  <21.935482, 18.956892, 12.335030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.702324, 18.900021, 12.336650>,  <21.313726, 18.805235, 12.339350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.702324, 18.900021, 12.336650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034998, -0.115208, 0.992725,
		0.234463, -0.964663, -0.120218,
		0.971495, 0.236965, -0.006750,
		21.993773, 18.971109, 12.334625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.679937, 18.298582, 12.815392>,  <21.313726, 18.805235, 12.339350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.679937, 18.298582, 12.815392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.902046, 18.629055, 12.777243>,  <22.035311, 18.827339, 12.754353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.902046, 18.629055, 12.777243>,  <21.679937, 18.298582, 12.815392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.902046, 18.629055, 12.777243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053166, 0.079180, 0.995442,
		0.829969, -0.557809, 0.000041,
		0.555270, 0.826184, -0.095374,
		22.068626, 18.876909, 12.748631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.269258, 18.160009, 13.132619>,  <21.679937, 18.298582, 12.815392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.269258, 18.160009, 13.132619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.260727, 18.559792, 13.142723>,  <22.255608, 18.799660, 13.148786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.260727, 18.559792, 13.142723>,  <22.269258, 18.160009, 13.132619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.260727, 18.559792, 13.142723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200611, -0.020473, 0.979457,
		0.979439, 0.025959, -0.200065,
		-0.021330, 0.999453, 0.025259,
		22.254328, 18.859627, 13.150301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.870327, 18.274933, 13.499547>,  <22.269258, 18.160009, 13.132619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.870327, 18.274933, 13.499547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.678822, 18.625248, 13.524147>,  <22.563919, 18.835438, 13.538907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.678822, 18.625248, 13.524147>,  <22.870327, 18.274933, 13.499547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.678822, 18.625248, 13.524147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135771, 0.004649, 0.990730,
		0.867382, 0.482675, -0.121132,
		-0.478764, 0.875787, 0.061501,
		22.535192, 18.887983, 13.542597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.289066, 18.520508, 13.977625>,  <22.870327, 18.274933, 13.499547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.289066, 18.520508, 13.977625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.951580, 18.735107, 13.970577>,  <22.749088, 18.863867, 13.966349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.951580, 18.735107, 13.970577>,  <23.289066, 18.520508, 13.977625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.951580, 18.735107, 13.970577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002479, 0.028927, 0.999578,
		0.536782, 0.843405, -0.023076,
		-0.843717, 0.536499, -0.017618,
		22.698465, 18.896057, 13.965292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.355747, 19.056686, 14.405634>,  <23.289066, 18.520508, 13.977625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.355747, 19.056686, 14.405634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.956841, 19.031170, 14.420527>,  <22.717497, 19.015860, 14.429461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.956841, 19.031170, 14.420527>,  <23.355747, 19.056686, 14.405634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.956841, 19.031170, 14.420527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032702, 0.070634, 0.996966,
		-0.066225, 0.995461, -0.068356,
		-0.997269, -0.063789, 0.037231,
		22.657660, 19.012033, 14.431696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.158428, 19.615828, 14.821707>,  <23.355747, 19.056686, 14.405634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.158428, 19.615828, 14.821707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.854012, 19.356419, 14.827848>,  <22.671362, 19.200773, 14.831533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.854012, 19.356419, 14.827848>,  <23.158428, 19.615828, 14.821707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.854012, 19.356419, 14.827848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009086, 0.034324, 0.999370,
		-0.648642, 0.760420, -0.032014,
		-0.761039, -0.648524, 0.015355,
		22.625700, 19.161861, 14.832455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.714920, 19.940172, 15.298428>,  <23.158428, 19.615828, 14.821707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.714920, 19.940172, 15.298428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.611969, 19.553654, 15.296432>,  <22.550198, 19.321743, 15.295236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.611969, 19.553654, 15.296432>,  <22.714920, 19.940172, 15.298428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.611969, 19.553654, 15.296432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023039, 0.000977, 0.999734,
		-0.966036, 0.257426, -0.022514,
		-0.257379, -0.966298, -0.004987,
		22.534756, 19.263765, 15.294936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.283031, 19.930054, 15.822046>,  <22.714920, 19.940172, 15.298428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.283031, 19.930054, 15.822046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.384575, 19.548359, 15.758812>,  <22.445501, 19.319342, 15.720871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.384575, 19.548359, 15.758812>,  <22.283031, 19.930054, 15.822046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.384575, 19.548359, 15.758812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106682, -0.134820, 0.985110,
		-0.961340, -0.266944, 0.067574,
		0.253859, -0.954235, -0.158087,
		22.460733, 19.262089, 15.711386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.009905, 19.685625, 16.382681>,  <22.283031, 19.930054, 15.822046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.009905, 19.685625, 16.382681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.272316, 19.408066, 16.263929>,  <22.429762, 19.241531, 16.192678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.272316, 19.408066, 16.263929>,  <22.009905, 19.685625, 16.382681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.272316, 19.408066, 16.263929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067911, -0.337486, 0.938878,
		-0.751677, -0.636089, -0.174276,
		0.656026, -0.693897, -0.296877,
		22.469124, 19.199896, 16.174866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.771154, 19.067574, 16.700230>,  <22.009905, 19.685625, 16.382681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.771154, 19.067574, 16.700230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.160427, 19.030842, 16.615868>,  <22.393991, 19.008802, 16.565250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.160427, 19.030842, 16.615868>,  <21.771154, 19.067574, 16.700230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.160427, 19.030842, 16.615868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192248, -0.178754, 0.964929,
		-0.126306, -0.979599, -0.156307,
		0.973184, -0.091826, -0.210904,
		22.452383, 19.003294, 16.552597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.963451, 18.691650, 17.149376>,  <21.771154, 19.067574, 16.700230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.963451, 18.691650, 17.149376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.320110, 18.820404, 17.022030>,  <22.534105, 18.897655, 16.945621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.320110, 18.820404, 17.022030>,  <21.963451, 18.691650, 17.149376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.320110, 18.820404, 17.022030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398435, -0.224003, 0.889422,
		0.214977, -0.919898, -0.327982,
		0.891647, 0.321885, -0.318365,
		22.587605, 18.916969, 16.926521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.601788, 18.131296, 17.306379>,  <21.963451, 18.691650, 17.149376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.601788, 18.131296, 17.306379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.752052, 18.500851, 17.277218>,  <22.842211, 18.722584, 17.259720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.752052, 18.500851, 17.277218>,  <22.601788, 18.131296, 17.306379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.752052, 18.500851, 17.277218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408307, -0.094373, 0.907954,
		0.831965, -0.370849, -0.412681,
		0.375660, 0.923886, -0.072905,
		22.864750, 18.778017, 17.255346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.371845, 18.172865, 17.550241>,  <22.601788, 18.131296, 17.306379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.371845, 18.172865, 17.550241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.219250, 18.542366, 17.563780>,  <23.127693, 18.764067, 17.571903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.219250, 18.542366, 17.563780>,  <23.371845, 18.172865, 17.550241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.219250, 18.542366, 17.563780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535154, 0.190854, 0.822912,
		0.753709, 0.332045, -0.567159,
		-0.381489, 0.923754, 0.033847,
		23.104803, 18.819492, 17.573935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.921238, 18.520294, 17.699732>,  <23.371845, 18.172865, 17.550241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.921238, 18.520294, 17.699732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.593533, 18.731846, 17.788355>,  <23.396908, 18.858778, 17.841530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.593533, 18.731846, 17.788355>,  <23.921238, 18.520294, 17.699732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.593533, 18.731846, 17.788355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385532, 0.222032, 0.895582,
		0.424463, 0.819138, -0.385803,
		-0.819266, 0.528881, 0.221560,
		23.347754, 18.890511, 17.854822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.161850, 19.041269, 18.117546>,  <23.921238, 18.520294, 17.699732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.161850, 19.041269, 18.117546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.770466, 19.097031, 18.178450>,  <23.535635, 19.130487, 18.214991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.770466, 19.097031, 18.178450>,  <24.161850, 19.041269, 18.117546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.770466, 19.097031, 18.178450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181163, 0.226250, 0.957074,
		0.098972, 0.964042, -0.246632,
		-0.978460, 0.139404, 0.152257,
		23.476929, 19.138851, 18.224127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.089172, 19.774454, 18.358868>,  <24.161850, 19.041269, 18.117546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.089172, 19.774454, 18.358868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.790115, 19.540024, 18.483797>,  <23.610682, 19.399366, 18.558756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.790115, 19.540024, 18.483797>,  <24.089172, 19.774454, 18.358868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.790115, 19.540024, 18.483797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135681, 0.325576, 0.935730,
		-0.650093, 0.741968, -0.163895,
		-0.747643, -0.586075, 0.312326,
		23.565823, 19.364201, 18.577496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.709932, 20.194193, 18.780033>,  <24.089172, 19.774454, 18.358868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.709932, 20.194193, 18.780033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.632729, 19.816563, 18.886967>,  <23.586407, 19.589985, 18.951126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.632729, 19.816563, 18.886967>,  <23.709932, 20.194193, 18.780033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.632729, 19.816563, 18.886967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141844, 0.242748, 0.959663,
		-0.970890, 0.223143, 0.087059,
		-0.193009, -0.944076, 0.267333,
		23.574825, 19.533340, 18.967167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.434084, 20.264585, 19.405365>,  <23.709932, 20.194193, 18.780033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.434084, 20.264585, 19.405365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.491821, 19.869057, 19.420300>,  <23.526464, 19.631739, 19.429260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.491821, 19.869057, 19.420300>,  <23.434084, 20.264585, 19.405365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.491821, 19.869057, 19.420300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251527, 0.073159, 0.965081,
		-0.957026, -0.129912, 0.259276,
		0.144344, -0.988823, 0.037339,
		23.535124, 19.572411, 19.431501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.996681, 20.018276, 19.973827>,  <23.434084, 20.264585, 19.405365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.996681, 20.018276, 19.973827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.262691, 19.723423, 19.925865>,  <23.422297, 19.546511, 19.897089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.262691, 19.723423, 19.925865>,  <22.996681, 20.018276, 19.973827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.262691, 19.723423, 19.925865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204294, 0.025129, 0.978587,
		-0.718337, -0.675279, 0.167303,
		0.665024, -0.737134, -0.119904,
		23.462198, 19.502283, 19.889894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.912003, 19.628780, 20.618074>,  <22.996681, 20.018276, 19.973827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.912003, 19.628780, 20.618074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.273098, 19.538998, 20.471277>,  <23.489756, 19.485128, 20.383200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.273098, 19.538998, 20.471277>,  <22.912003, 19.628780, 20.618074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.273098, 19.538998, 20.471277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333032, -0.175375, 0.926463,
		-0.272313, -0.958573, -0.083566,
		0.902738, -0.224458, -0.366993,
		23.543919, 19.471661, 20.361179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.149126, 18.965662, 20.871168>,  <22.912003, 19.628780, 20.618074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.149126, 18.965662, 20.871168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.468544, 19.180790, 20.763037>,  <23.660194, 19.309866, 20.698158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.468544, 19.180790, 20.763037>,  <23.149126, 18.965662, 20.871168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.468544, 19.180790, 20.763037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290594, 0.048853, 0.955598,
		0.527144, -0.841644, -0.117276,
		0.798545, 0.537818, -0.270330,
		23.708107, 19.342134, 20.681938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.671764, 18.632561, 21.235113>,  <23.149126, 18.965662, 20.871168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.671764, 18.632561, 21.235113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.794865, 19.001492, 21.141642>,  <23.868725, 19.222849, 21.085560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.794865, 19.001492, 21.141642>,  <23.671764, 18.632561, 21.235113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.794865, 19.001492, 21.141642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240982, 0.162030, 0.956909,
		0.920444, -0.350802, -0.172399,
		0.307752, 0.922325, -0.233677,
		23.887190, 19.278189, 21.071539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.277533, 18.593422, 21.568918>,  <23.671764, 18.632561, 21.235113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.277533, 18.593422, 21.568918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.212776, 18.981636, 21.497526>,  <24.173922, 19.214563, 21.454691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.212776, 18.981636, 21.497526>,  <24.277533, 18.593422, 21.568918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.212776, 18.981636, 21.497526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067722, 0.191368, 0.979179,
		0.984482, 0.146433, -0.096707,
		-0.161890, 0.970534, -0.178482,
		24.164209, 19.272797, 21.443981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.659840, 19.028570, 22.153448>,  <24.277533, 18.593422, 21.568918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.659840, 19.028570, 22.153448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.399525, 19.291492, 22.001434>,  <24.243336, 19.449245, 21.910227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.399525, 19.291492, 22.001434>,  <24.659840, 19.028570, 22.153448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.399525, 19.291492, 22.001434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134030, 0.393216, 0.909624,
		0.747337, 0.642908, -0.167801,
		-0.650787, 0.657305, -0.380034,
		24.204288, 19.488684, 21.887424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.835808, 19.594225, 22.443356>,  <24.659840, 19.028570, 22.153448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.835808, 19.594225, 22.443356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.459927, 19.637550, 22.313601>,  <24.234398, 19.663546, 22.235748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.459927, 19.637550, 22.313601>,  <24.835808, 19.594225, 22.443356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.459927, 19.637550, 22.313601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242398, 0.458167, 0.855176,
		0.241250, 0.882242, -0.404286,
		-0.939703, 0.108313, -0.324386,
		24.178017, 19.670044, 22.216284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.751194, 20.227676, 22.702236>,  <24.835808, 19.594225, 22.443356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.751194, 20.227676, 22.702236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.386818, 20.089989, 22.611284>,  <24.168192, 20.007376, 22.556713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.386818, 20.089989, 22.611284>,  <24.751194, 20.227676, 22.702236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.386818, 20.089989, 22.611284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366008, 0.420063, 0.830413,
		-0.190330, 0.839679, -0.508639,
		-0.910941, -0.344218, -0.227379,
		24.113535, 19.986723, 22.543070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.342991, 20.857872, 22.659069>,  <24.751194, 20.227676, 22.702236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.342991, 20.857872, 22.659069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.115799, 20.533726, 22.716625>,  <23.979483, 20.339237, 22.751160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.115799, 20.533726, 22.716625>,  <24.342991, 20.857872, 22.659069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.115799, 20.533726, 22.716625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495118, 0.476075, 0.726781,
		-0.657461, 0.341555, -0.671629,
		-0.567981, -0.810366, 0.143890,
		23.945404, 20.290615, 22.759792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.738489, 21.085104, 22.612490>,  <24.342991, 20.857872, 22.659069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.738489, 21.085104, 22.612490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.686401, 20.736523, 22.801641>,  <23.655149, 20.527374, 22.915133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.686401, 20.736523, 22.801641>,  <23.738489, 21.085104, 22.612490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.686401, 20.736523, 22.801641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538796, 0.462569, 0.704080,
		-0.832311, -0.163103, -0.529769,
		-0.130217, -0.871451, 0.472881,
		23.647337, 20.475088, 22.943506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.018703, 21.017275, 22.664135>,  <23.738489, 21.085104, 22.612490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.018703, 21.017275, 22.664135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.182026, 20.810043, 22.964769>,  <23.280020, 20.685703, 23.145149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.182026, 20.810043, 22.964769>,  <23.018703, 21.017275, 22.664135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.182026, 20.810043, 22.964769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623062, 0.443565, 0.644239,
		-0.667145, -0.731330, -0.141686,
		0.408304, -0.518080, 0.751585,
		23.304518, 20.654619, 23.190245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.429302, 20.913406, 23.136763>,  <23.018703, 21.017275, 22.664135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.429302, 20.913406, 23.136763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.734543, 20.845970, 23.386322>,  <22.917686, 20.805508, 23.536058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.734543, 20.845970, 23.386322>,  <22.429302, 20.913406, 23.136763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.734543, 20.845970, 23.386322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522709, 0.406715, 0.749238,
		-0.380066, -0.897864, 0.222240,
		0.763102, -0.168593, 0.623900,
		22.963474, 20.795393, 23.573492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.067896, 20.849216, 23.801003>,  <22.429302, 20.913406, 23.136763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.067896, 20.849216, 23.801003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.452656, 20.902081, 23.896734>,  <22.683512, 20.933798, 23.954174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.452656, 20.902081, 23.896734>,  <22.067896, 20.849216, 23.801003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.452656, 20.902081, 23.896734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271436, 0.357062, 0.893772,
		0.032663, -0.924684, 0.379331,
		0.961902, 0.132157, 0.239330,
		22.741226, 20.941729, 23.968533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.305321, 20.350428, 24.481848>,  <22.067896, 20.849216, 23.801003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.305321, 20.350428, 24.481848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.530579, 20.680134, 24.458347>,  <22.665733, 20.877958, 24.444246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.530579, 20.680134, 24.458347>,  <22.305321, 20.350428, 24.481848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.530579, 20.680134, 24.458347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404001, 0.336642, 0.850561,
		0.720867, -0.455255, 0.522583,
		0.563146, 0.824266, -0.058751,
		22.699522, 20.927414, 24.440722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.693752, 20.424719, 25.156591>,  <22.305321, 20.350428, 24.481848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.693752, 20.424719, 25.156591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.699535, 20.790852, 24.995617>,  <22.703005, 21.010532, 24.899033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.699535, 20.790852, 24.995617>,  <22.693752, 20.424719, 25.156591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.699535, 20.790852, 24.995617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106708, 0.401593, 0.909580,
		0.994185, 0.029791, 0.103480,
		0.014460, 0.915333, -0.402437,
		22.703873, 21.065453, 24.874886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.067087, 20.845087, 25.613298>,  <22.693752, 20.424719, 25.156591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.067087, 20.845087, 25.613298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.862576, 21.127193, 25.416853>,  <22.739868, 21.296457, 25.298985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.862576, 21.127193, 25.416853>,  <23.067087, 20.845087, 25.613298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.862576, 21.127193, 25.416853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101271, 0.518031, 0.849346,
		0.853427, 0.483989, -0.193436,
		-0.511280, 0.705265, -0.491115,
		22.709192, 21.338774, 25.269518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.321619, 21.499603, 25.853594>,  <23.067087, 20.845087, 25.613298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.321619, 21.499603, 25.853594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.955647, 21.563606, 25.705379>,  <22.736063, 21.602007, 25.616451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.955647, 21.563606, 25.705379>,  <23.321619, 21.499603, 25.853594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.955647, 21.563606, 25.705379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111872, 0.781554, 0.613725,
		0.387795, 0.602969, -0.697168,
		-0.914931, 0.160006, -0.370538,
		22.681168, 21.611609, 25.594217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.227350, 22.246592, 25.670033>,  <23.321619, 21.499603, 25.853594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.227350, 22.246592, 25.670033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.923851, 22.030972, 25.816307>,  <22.741751, 21.901600, 25.904072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.923851, 22.030972, 25.816307>,  <23.227350, 22.246592, 25.670033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.923851, 22.030972, 25.816307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106996, 0.656910, 0.746338,
		-0.642536, 0.527157, -0.556106,
		-0.758749, -0.539050, 0.365685,
		22.696226, 21.869257, 25.926012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.580999, 22.620609, 25.750734>,  <23.227350, 22.246592, 25.670033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.580999, 22.620609, 25.750734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.630054, 22.346210, 26.037613>,  <22.659489, 22.181572, 26.209740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.630054, 22.346210, 26.037613>,  <22.580999, 22.620609, 25.750734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.630054, 22.346210, 26.037613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002516, 0.722862, 0.690988,
		-0.992448, -0.082938, 0.090377,
		0.122639, -0.685997, 0.717194,
		22.666845, 22.140411, 26.252771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.973162, 22.590981, 26.315420>,  <22.580999, 22.620609, 25.750734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.973162, 22.590981, 26.315420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.336609, 22.489990, 26.448486>,  <22.554678, 22.429396, 26.528326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.336609, 22.489990, 26.448486>,  <21.973162, 22.590981, 26.315420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.336609, 22.489990, 26.448486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021807, 0.824158, 0.565940,
		-0.417055, -0.506970, 0.754352,
		0.908620, -0.252478, 0.332663,
		22.609196, 22.414248, 26.548285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.851160, 22.814653, 27.035645>,  <21.973162, 22.590981, 26.315420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.851160, 22.814653, 27.035645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.231705, 22.763142, 26.923693>,  <22.460032, 22.732235, 26.856522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.231705, 22.763142, 26.923693>,  <21.851160, 22.814653, 27.035645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.231705, 22.763142, 26.923693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264511, 0.807180, 0.527726,
		0.157953, -0.576088, 0.801981,
		0.951360, -0.128777, -0.279878,
		22.517113, 22.724508, 26.839729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.201097, 23.010284, 27.644032>,  <21.851160, 22.814653, 27.035645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.201097, 23.010284, 27.644032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.419426, 23.052586, 27.311550>,  <22.550423, 23.077967, 27.112062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.419426, 23.052586, 27.311550>,  <22.201097, 23.010284, 27.644032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.419426, 23.052586, 27.311550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288720, 0.907515, 0.305053,
		0.786588, -0.406488, 0.464808,
		0.545821, 0.105752, -0.831202,
		22.583172, 23.084311, 27.062189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.401493, 23.765205, 27.445185>,  <22.201097, 23.010284, 27.644032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.401493, 23.765205, 27.445185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.376099, 24.016903, 27.135340>,  <22.360863, 24.167921, 26.949432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.376099, 24.016903, 27.135340>,  <22.401493, 23.765205, 27.445185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.376099, 24.016903, 27.135340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263727, -0.759162, -0.595080,
		-0.962506, 0.166507, 0.214145,
		-0.063485, 0.629244, -0.774610,
		22.357054, 24.205677, 26.902956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.737682, 23.668793, 27.227999>,  <22.401493, 23.765205, 27.445185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.737682, 23.668793, 27.227999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.948715, 23.814915, 26.921219>,  <22.075335, 23.902588, 26.737152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.948715, 23.814915, 26.921219>,  <21.737682, 23.668793, 27.227999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.948715, 23.814915, 26.921219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498296, -0.598111, -0.627665,
		-0.688010, 0.713312, -0.133522,
		0.527582, 0.365307, -0.766947,
		22.106989, 23.924507, 26.691135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.453857, 23.242090, 26.626291>,  <21.737682, 23.668793, 27.227999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.453857, 23.242090, 26.626291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.699680, 23.495632, 26.438440>,  <21.847174, 23.647757, 26.325729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.699680, 23.495632, 26.438440>,  <21.453857, 23.242090, 26.626291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.699680, 23.495632, 26.438440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290974, -0.371207, -0.881782,
		-0.733250, 0.678554, -0.043692,
		0.614555, 0.633853, -0.469629,
		21.884047, 23.685789, 26.297552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.027512, 23.516060, 26.206909>,  <21.453857, 23.242090, 26.626291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.027512, 23.516060, 26.206909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.395226, 23.589359, 26.067579>,  <21.615854, 23.633339, 25.983982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.395226, 23.589359, 26.067579>,  <21.027512, 23.516060, 26.206909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.395226, 23.589359, 26.067579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349255, -0.028248, -0.936602,
		-0.181471, 0.982660, 0.038033,
		0.919287, 0.183250, -0.348325,
		21.671011, 23.644335, 25.963081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.092890, 24.136038, 25.953438>,  <21.027512, 23.516060, 26.206909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.092890, 24.136038, 25.953438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.315430, 23.842602, 25.797325>,  <21.448954, 23.666540, 25.703657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.315430, 23.842602, 25.797325>,  <21.092890, 24.136038, 25.953438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.315430, 23.842602, 25.797325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528499, 0.050051, -0.847457,
		0.641220, 0.677746, -0.359856,
		0.556350, -0.733590, -0.390282,
		21.482334, 23.622524, 25.680241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.239916, 24.384636, 25.379383>,  <21.092890, 24.136038, 25.953438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.239916, 24.384636, 25.379383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.315220, 23.994164, 25.336256>,  <21.360403, 23.759880, 25.310381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.315220, 23.994164, 25.336256>,  <21.239916, 24.384636, 25.379383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.315220, 23.994164, 25.336256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340239, 0.038154, -0.939565,
		0.921301, 0.213567, -0.324952,
		0.188262, -0.976183, -0.107815,
		21.371698, 23.701309, 25.303911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.855986, 24.238483, 24.853014>,  <21.239916, 24.384636, 25.379383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.855986, 24.238483, 24.853014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.614685, 23.921669, 24.890469>,  <21.469904, 23.731581, 24.912941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.614685, 23.921669, 24.890469>,  <21.855986, 24.238483, 24.853014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.614685, 23.921669, 24.890469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036846, -0.089604, -0.995296,
		0.796698, -0.603866, 0.024871,
		-0.603254, -0.792034, 0.093637,
		21.433708, 23.684059, 24.918560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.241518, 23.653038, 24.561684>,  <21.855986, 24.238483, 24.853014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.241518, 23.653038, 24.561684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.845753, 23.595024, 24.559626>,  <21.608294, 23.560215, 24.558392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.845753, 23.595024, 24.559626>,  <22.241518, 23.653038, 24.561684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.845753, 23.595024, 24.559626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039524, -0.235185, -0.971147,
		0.139642, -0.961069, 0.238427,
		-0.989413, -0.145036, -0.005144,
		21.548929, 23.551514, 24.558083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.963076, 23.413855, 23.885462>,  <22.241518, 23.653038, 24.561684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.963076, 23.413855, 23.885462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.580452, 23.445770, 23.997627>,  <21.350878, 23.464920, 24.064926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.580452, 23.445770, 23.997627>,  <21.963076, 23.413855, 23.885462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.580452, 23.445770, 23.997627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288200, -0.404027, -0.868161,
		0.044024, -0.911261, 0.409471,
		-0.956558, 0.079789, 0.280412,
		21.293484, 23.469707, 24.081751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.561438, 22.886271, 23.520475>,  <21.963076, 23.413855, 23.885462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.561438, 22.886271, 23.520475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.266560, 23.126232, 23.644835>,  <21.089632, 23.270208, 23.719450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.266560, 23.126232, 23.644835>,  <21.561438, 22.886271, 23.520475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.266560, 23.126232, 23.644835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459698, -0.108086, -0.881474,
		-0.495196, -0.792738, 0.355455,
		-0.737197, 0.599904, 0.310896,
		21.045401, 23.306204, 23.738104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.061506, 22.408051, 23.479788>,  <21.561438, 22.886271, 23.520475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.061506, 22.408051, 23.479788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.938171, 22.787418, 23.450331>,  <20.864170, 23.015039, 23.432657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.938171, 22.787418, 23.450331>,  <21.061506, 22.408051, 23.479788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.938171, 22.787418, 23.450331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396920, -0.198622, -0.896105,
		-0.864513, -0.247074, 0.437690,
		-0.308339, 0.948422, -0.073643,
		20.845669, 23.071945, 23.428238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.413315, 22.400047, 23.128851>,  <21.061506, 22.408051, 23.479788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.413315, 22.400047, 23.128851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.497459, 22.788322, 23.082354>,  <20.547947, 23.021288, 23.054455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.497459, 22.788322, 23.082354>,  <20.413315, 22.400047, 23.128851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.497459, 22.788322, 23.082354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498340, 0.004174, -0.866972,
		-0.841074, 0.240308, 0.484610,
		0.210363, 0.970688, -0.116244,
		20.560568, 23.079529, 23.047480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.798815, 22.788027, 22.982965>,  <20.413315, 22.400047, 23.128851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.798815, 22.788027, 22.982965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.097950, 23.012051, 22.840376>,  <20.277431, 23.146465, 22.754822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.097950, 23.012051, 22.840376>,  <19.798815, 22.788027, 22.982965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.097950, 23.012051, 22.840376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464710, 0.058142, -0.883552,
		-0.474114, 0.826411, 0.303746,
		0.747837, 0.560058, -0.356475,
		20.322302, 23.180069, 22.733433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.467020, 23.415197, 22.677515>,  <19.798815, 22.788027, 22.982965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.467020, 23.415197, 22.677515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.830254, 23.379364, 22.513876>,  <20.048193, 23.357864, 22.415693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.830254, 23.379364, 22.513876>,  <19.467020, 23.415197, 22.677515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.830254, 23.379364, 22.513876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386833, 0.194849, -0.901329,
		0.160455, 0.976734, 0.142286,
		0.908083, -0.089582, -0.409097,
		20.102678, 23.352489, 22.391148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.485489, 23.837648, 22.105747>,  <19.467020, 23.415197, 22.677515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.485489, 23.837648, 22.105747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.814632, 23.625645, 22.023781>,  <20.012119, 23.498442, 21.974600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.814632, 23.625645, 22.023781>,  <19.485489, 23.837648, 22.105747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.814632, 23.625645, 22.023781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212555, 0.047350, -0.976001,
		0.526995, 0.846667, -0.073694,
		0.822859, -0.530011, -0.204917,
		20.061491, 23.466640, 21.962305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.709236, 24.295710, 21.499487>,  <19.485489, 23.837648, 22.105747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.709236, 24.295710, 21.499487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.899467, 23.943939, 21.491137>,  <20.013607, 23.732878, 21.486126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.899467, 23.943939, 21.491137>,  <19.709236, 24.295710, 21.499487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.899467, 23.943939, 21.491137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015545, 0.032131, -0.999363,
		0.879535, 0.474953, 0.028951,
		0.475580, -0.879424, -0.020877,
		20.042141, 23.680111, 21.484873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.279215, 24.362862, 21.086628>,  <19.709236, 24.295710, 21.499487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.279215, 24.362862, 21.086628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.154900, 23.983219, 21.066183>,  <20.080311, 23.755434, 21.053917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.154900, 23.983219, 21.066183>,  <20.279215, 24.362862, 21.086628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.154900, 23.983219, 21.066183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051773, 0.070598, -0.996160,
		0.949069, -0.306946, -0.071079,
		-0.310786, -0.949105, -0.051111,
		20.061665, 23.698488, 21.050850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.565071, 23.933714, 20.459906>,  <20.279215, 24.362862, 21.086628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.565071, 23.933714, 20.459906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.285378, 23.679806, 20.591442>,  <20.117561, 23.527462, 20.670364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.285378, 23.679806, 20.591442>,  <20.565071, 23.933714, 20.459906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.285378, 23.679806, 20.591442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168525, -0.300663, -0.938723,
		0.694743, -0.711807, 0.103260,
		-0.699236, -0.634770, 0.328841,
		20.075607, 23.489374, 20.690094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.837460, 23.218227, 20.298914>,  <20.565071, 23.933714, 20.459906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.837460, 23.218227, 20.298914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.439140, 23.241268, 20.327402>,  <20.200150, 23.255093, 20.344494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.439140, 23.241268, 20.327402>,  <20.837460, 23.218227, 20.298914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.439140, 23.241268, 20.327402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090279, -0.485823, -0.869383,
		-0.015477, -0.872157, 0.488980,
		-0.995796, 0.057601, 0.071219,
		20.140402, 23.258549, 20.348768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.613264, 22.501591, 20.300085>,  <20.837460, 23.218227, 20.298914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.613264, 22.501591, 20.300085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.320675, 22.752842, 20.193953>,  <20.145121, 22.903593, 20.130272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.320675, 22.752842, 20.193953>,  <20.613264, 22.501591, 20.300085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.320675, 22.752842, 20.193953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086632, -0.471581, -0.877557,
		-0.676343, -0.618924, 0.399366,
		-0.731475, 0.628127, -0.265332,
		20.101233, 22.941280, 20.114353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.072472, 22.017681, 20.178999>,  <20.613264, 22.501591, 20.300085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.072472, 22.017681, 20.178999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.958591, 22.356445, 19.999359>,  <19.890265, 22.559704, 19.891575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.958591, 22.356445, 19.999359>,  <20.072472, 22.017681, 20.178999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.958591, 22.356445, 19.999359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091613, -0.490378, -0.866681,
		-0.954229, -0.205599, 0.217198,
		-0.284698, 0.846911, -0.449097,
		19.873182, 22.610519, 19.864630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.575872, 21.793911, 19.689978>,  <20.072472, 22.017681, 20.178999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.575872, 21.793911, 19.689978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.717876, 22.140186, 19.548809>,  <19.803080, 22.347952, 19.464108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.717876, 22.140186, 19.548809>,  <19.575872, 21.793911, 19.689978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.717876, 22.140186, 19.548809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020960, -0.384789, -0.922766,
		-0.934627, 0.320194, -0.154749,
		0.355010, 0.865686, -0.352924,
		19.824379, 22.399893, 19.442932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.250238, 21.888611, 19.091652>,  <19.575872, 21.793911, 19.689978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.250238, 21.888611, 19.091652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.575249, 22.121731, 19.086843>,  <19.770254, 22.261602, 19.083958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.575249, 22.121731, 19.086843>,  <19.250238, 21.888611, 19.091652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.575249, 22.121731, 19.086843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161091, -0.244314, -0.956222,
		-0.560224, 0.775019, -0.292395,
		0.812526, 0.582801, -0.012022,
		19.819006, 22.296572, 19.083237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.229946, 22.154852, 18.430798>,  <19.250238, 21.888611, 19.091652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.229946, 22.154852, 18.430798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.615063, 22.200039, 18.528996>,  <19.846132, 22.227152, 18.587915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.615063, 22.200039, 18.528996>,  <19.229946, 22.154852, 18.430798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.615063, 22.200039, 18.528996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266845, -0.253862, -0.929703,
		-0.042704, 0.960621, -0.274561,
		0.962793, 0.112967, 0.245496,
		19.903900, 22.233929, 18.602644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.483402, 22.474691, 17.884554>,  <19.229946, 22.154852, 18.430798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.483402, 22.474691, 17.884554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.809452, 22.330559, 18.065985>,  <20.005081, 22.244080, 18.174843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.809452, 22.330559, 18.065985>,  <19.483402, 22.474691, 17.884554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.809452, 22.330559, 18.065985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395991, -0.224891, -0.890289,
		0.422805, 0.905309, -0.040626,
		0.815124, -0.360331, 0.453579,
		20.053989, 22.222460, 18.202059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.138596, 22.758936, 17.518648>,  <19.483402, 22.474691, 17.884554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.138596, 22.758936, 17.518648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.267010, 22.437252, 17.718723>,  <20.344059, 22.244242, 17.838768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.267010, 22.437252, 17.718723>,  <20.138596, 22.758936, 17.518648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.267010, 22.437252, 17.718723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367883, -0.380775, -0.848335,
		0.872696, 0.456355, 0.173612,
		0.321035, -0.804208, 0.500186,
		20.363319, 22.195990, 17.868778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.913670, 22.633144, 17.370249>,  <20.138596, 22.758936, 17.518648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.913670, 22.633144, 17.370249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.752590, 22.288761, 17.494558>,  <20.655943, 22.082130, 17.569143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.752590, 22.288761, 17.494558>,  <20.913670, 22.633144, 17.370249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.752590, 22.288761, 17.494558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296259, -0.443840, -0.845716,
		0.866062, -0.248501, 0.433802,
		-0.402701, -0.860960, 0.310772,
		20.631781, 22.030474, 17.587790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.343266, 22.160013, 17.166178>,  <20.913670, 22.633144, 17.370249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.343266, 22.160013, 17.166178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.017109, 21.934124, 17.217121>,  <20.821415, 21.798590, 17.247686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.017109, 21.934124, 17.217121>,  <21.343266, 22.160013, 17.166178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.017109, 21.934124, 17.217121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131183, -0.394522, -0.909474,
		0.563848, -0.724872, 0.395773,
		-0.815394, -0.564724, 0.127359,
		20.772491, 21.764708, 17.255329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.546713, 21.534357, 16.974277>,  <21.343266, 22.160013, 17.166178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.546713, 21.534357, 16.974277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.147175, 21.528042, 16.956127>,  <20.907452, 21.524252, 16.945236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.147175, 21.528042, 16.956127>,  <21.546713, 21.534357, 16.974277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.147175, 21.528042, 16.956127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047750, -0.430650, -0.901255,
		-0.005311, -0.902381, 0.430907,
		-0.998845, -0.015789, -0.045376,
		20.847521, 21.523306, 16.942514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.471838, 20.904137, 16.679131>,  <21.546713, 21.534357, 16.974277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.471838, 20.904137, 16.679131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.119560, 21.082649, 16.615620>,  <20.908194, 21.189756, 16.577513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.119560, 21.082649, 16.615620>,  <21.471838, 20.904137, 16.679131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.119560, 21.082649, 16.615620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020902, -0.371486, -0.928203,
		-0.473225, -0.814143, 0.336494,
		-0.880693, 0.446283, -0.158779,
		20.855352, 21.216534, 16.567986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.024420, 20.389906, 16.366425>,  <21.471838, 20.904137, 16.679131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.024420, 20.389906, 16.366425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.869625, 20.742264, 16.257416>,  <20.776749, 20.953678, 16.192011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.869625, 20.742264, 16.257416>,  <21.024420, 20.389906, 16.366425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.869625, 20.742264, 16.257416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098960, -0.333519, -0.937535,
		-0.916760, -0.335844, 0.216240,
		-0.386986, 0.880894, -0.272522,
		20.753529, 21.006533, 16.175659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.486401, 20.286541, 15.914205>,  <21.024420, 20.389906, 16.366425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.486401, 20.286541, 15.914205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.571671, 20.672501, 15.852856>,  <20.622833, 20.904078, 15.816046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.571671, 20.672501, 15.852856>,  <20.486401, 20.286541, 15.914205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.571671, 20.672501, 15.852856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246017, -0.098910, -0.964206,
		-0.945532, 0.243278, 0.216297,
		0.213176, 0.964900, -0.153373,
		20.635624, 20.961971, 15.806844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.939743, 20.496296, 15.457669>,  <20.486401, 20.286541, 15.914205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.939743, 20.496296, 15.457669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.216122, 20.781395, 15.409367>,  <20.381948, 20.952454, 15.380384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.216122, 20.781395, 15.409367>,  <19.939743, 20.496296, 15.457669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.216122, 20.781395, 15.409367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191603, 0.019489, -0.981279,
		-0.697050, 0.701150, 0.150031,
		0.690948, 0.712747, -0.120758,
		20.423407, 20.995218, 15.373139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.615488, 20.936871, 15.037108>,  <19.939743, 20.496296, 15.457669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.615488, 20.936871, 15.037108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.001068, 21.037453, 15.002312>,  <20.232416, 21.097801, 14.981434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.001068, 21.037453, 15.002312>,  <19.615488, 20.936871, 15.037108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.001068, 21.037453, 15.002312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082484, -0.028433, -0.996187,
		-0.252968, 0.967452, -0.006667,
		0.963952, 0.251453, -0.086991,
		20.290255, 21.112888, 14.976214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.632427, 21.600004, 14.636564>,  <19.615488, 20.936871, 15.037108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.632427, 21.600004, 14.636564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.995010, 21.431828, 14.620747>,  <20.212561, 21.330921, 14.611256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.995010, 21.431828, 14.620747>,  <19.632427, 21.600004, 14.636564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.995010, 21.431828, 14.620747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036667, 0.014927, -0.999216,
		0.420703, 0.907196, -0.001885,
		0.906457, -0.420442, -0.039544,
		20.266947, 21.305695, 14.608884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.990919, 22.015368, 14.198912>,  <19.632427, 21.600004, 14.636564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.990919, 22.015368, 14.198912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.203934, 21.676804, 14.199158>,  <20.331741, 21.473665, 14.199306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.203934, 21.676804, 14.199158>,  <19.990919, 22.015368, 14.198912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.203934, 21.676804, 14.199158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146559, 0.091495, -0.984962,
		0.833623, 0.524617, 0.172772,
		0.532535, -0.846408, 0.000615,
		20.363693, 21.422882, 14.199343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.643030, 22.163933, 13.816828>,  <19.990919, 22.015368, 14.198912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.643030, 22.163933, 13.816828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.527744, 21.781681, 13.792494>,  <20.458572, 21.552330, 13.777894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.527744, 21.781681, 13.792494>,  <20.643030, 22.163933, 13.816828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.527744, 21.781681, 13.792494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123356, 0.025947, -0.992023,
		0.949587, -0.293419, 0.110405,
		-0.288214, -0.955632, -0.060834,
		20.441280, 21.494991, 13.774243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.156187, 21.861351, 13.303988>,  <20.643030, 22.163933, 13.816828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.156187, 21.861351, 13.303988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.863148, 21.589558, 13.320004>,  <20.687325, 21.426481, 13.329614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.863148, 21.589558, 13.320004>,  <21.156187, 21.861351, 13.303988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.863148, 21.589558, 13.320004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048984, -0.006043, -0.998781,
		0.678896, -0.733667, -0.028857,
		-0.732599, -0.679482, 0.040041,
		20.643368, 21.385714, 13.332016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.261862, 21.436426, 12.714920>,  <21.156187, 21.861351, 13.303988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.261862, 21.436426, 12.714920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.888641, 21.324657, 12.805555>,  <20.664709, 21.257595, 12.859937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.888641, 21.324657, 12.805555>,  <21.261862, 21.436426, 12.714920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.888641, 21.324657, 12.805555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222140, -0.047929, -0.973836,
		0.282974, -0.958971, -0.017351,
		-0.933049, -0.279425, 0.226588,
		20.608727, 21.240829, 12.873531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.157681, 20.737764, 12.351164>,  <21.261862, 21.436426, 12.714920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.157681, 20.737764, 12.351164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.806385, 20.916092, 12.420379>,  <20.595608, 21.023088, 12.461907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.806385, 20.916092, 12.420379>,  <21.157681, 20.737764, 12.351164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.806385, 20.916092, 12.420379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262632, -0.147246, -0.953595,
		-0.399653, -0.882928, 0.246403,
		-0.878238, 0.445821, 0.173038,
		20.542913, 21.049839, 12.472290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.649330, 20.317549, 12.057516>,  <21.157681, 20.737764, 12.351164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.649330, 20.317549, 12.057516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.463615, 20.668854, 12.103284>,  <20.352186, 20.879637, 12.130744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.463615, 20.668854, 12.103284>,  <20.649330, 20.317549, 12.057516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.463615, 20.668854, 12.103284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423041, -0.106408, -0.899841,
		-0.778121, -0.466189, 0.420945,
		-0.464288, 0.878263, 0.114419,
		20.324329, 20.932333, 12.137609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.031227, 20.170712, 11.760717>,  <20.649330, 20.317549, 12.057516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.031227, 20.170712, 11.760717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.049469, 20.570210, 11.752451>,  <20.060413, 20.809908, 11.747491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.049469, 20.570210, 11.752451>,  <20.031227, 20.170712, 11.760717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.049469, 20.570210, 11.752451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533262, 0.006845, -0.845922,
		-0.844720, 0.049598, 0.532906,
		0.045604, 0.998746, -0.020667,
		20.063150, 20.869833, 11.746251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.397217, 20.444962, 11.675427>,  <20.031227, 20.170712, 11.760717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.397217, 20.444962, 11.675427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.630993, 20.733288, 11.526373>,  <19.771259, 20.906282, 11.436940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.630993, 20.733288, 11.526373>,  <19.397217, 20.444962, 11.675427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.630993, 20.733288, 11.526373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486465, -0.056306, -0.871884,
		-0.649448, 0.690838, 0.317744,
		0.584440, 0.720814, -0.372636,
		19.806324, 20.949532, 11.414582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.895096, 20.878515, 11.433836>,  <19.397217, 20.444962, 11.675427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.895096, 20.878515, 11.433836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.249161, 20.934669, 11.256398>,  <19.461599, 20.968363, 11.149936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.249161, 20.934669, 11.256398>,  <18.895096, 20.878515, 11.433836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.249161, 20.934669, 11.256398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455335, 0.065323, -0.887920,
		-0.095676, 0.987939, 0.121745,
		0.885164, 0.140387, -0.443594,
		19.514709, 20.976786, 11.123320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.336283, 21.129873, 11.067231>,  <18.895096, 20.878515, 11.433836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.336283, 21.129873, 11.067231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.980366, 20.952888, 11.111940>,  <17.766815, 20.846697, 11.138766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.980366, 20.952888, 11.111940>,  <18.336283, 21.129873, 11.067231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.980366, 20.952888, 11.111940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078290, 0.389288, 0.917783,
		-0.449597, 0.807887, -0.381027,
		-0.889794, -0.442463, 0.111774,
		17.713427, 20.820150, 11.145473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.965498, 21.694973, 11.425633>,  <18.336283, 21.129873, 11.067231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.965498, 21.694973, 11.425633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.788300, 21.347977, 11.516157>,  <17.681980, 21.139780, 11.570472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.788300, 21.347977, 11.516157>,  <17.965498, 21.694973, 11.425633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.788300, 21.347977, 11.516157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072738, 0.216821, 0.973498,
		-0.893567, 0.447718, -0.032951,
		-0.442997, -0.867489, 0.226310,
		17.655401, 21.087730, 11.584050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.418472, 21.851517, 11.898216>,  <17.965498, 21.694973, 11.425633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.418472, 21.851517, 11.898216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.481064, 21.458069, 11.934005>,  <17.518620, 21.222000, 11.955478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.481064, 21.458069, 11.934005>,  <17.418472, 21.851517, 11.898216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.481064, 21.458069, 11.934005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119199, 0.071118, 0.990320,
		-0.980462, -0.165629, -0.106118,
		0.156479, -0.983621, 0.089471,
		17.528008, 21.162983, 11.960846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.760532, 21.655064, 12.245643>,  <17.418472, 21.851517, 11.898216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.760532, 21.655064, 12.245643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.064919, 21.399933, 12.293156>,  <17.247551, 21.246855, 12.321664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.064919, 21.399933, 12.293156>,  <16.760532, 21.655064, 12.245643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.064919, 21.399933, 12.293156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058290, 0.115130, 0.991639,
		-0.646168, -0.761527, 0.050431,
		0.760965, -0.637826, 0.118783,
		17.293209, 21.208586, 12.328791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.580126, 21.284842, 12.765439>,  <16.760532, 21.655064, 12.245643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.580126, 21.284842, 12.765439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.977932, 21.246941, 12.747741>,  <17.216616, 21.224199, 12.737122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.977932, 21.246941, 12.747741>,  <16.580126, 21.284842, 12.765439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.977932, 21.246941, 12.747741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045612, 0.012307, 0.998883,
		-0.094106, -0.995424, 0.016562,
		0.994517, -0.094757, -0.044245,
		17.276287, 21.218515, 12.734468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.819887, 20.760822, 13.175380>,  <16.580126, 21.284842, 12.765439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.819887, 20.760822, 13.175380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.148682, 20.986649, 13.145447>,  <17.345959, 21.122145, 13.127487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.148682, 20.986649, 13.145447>,  <16.819887, 20.760822, 13.175380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.148682, 20.986649, 13.145447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024747, 0.095864, 0.995087,
		0.568968, -0.819801, 0.064828,
		0.821987, 0.564568, -0.074831,
		17.395279, 21.156019, 13.122997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.206240, 20.615164, 13.765083>,  <16.819887, 20.760822, 13.175380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.206240, 20.615164, 13.765083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.357693, 20.955345, 13.619007>,  <17.448565, 21.159454, 13.531362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.357693, 20.955345, 13.619007>,  <17.206240, 20.615164, 13.765083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.357693, 20.955345, 13.619007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083078, 0.424203, 0.901748,
		0.921811, -0.311091, 0.231271,
		0.378632, 0.850455, -0.365190,
		17.471283, 21.210482, 13.509450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.650820, 20.766109, 14.242852>,  <17.206240, 20.615164, 13.765083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.650820, 20.766109, 14.242852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.615284, 21.109310, 14.040489>,  <17.593964, 21.315229, 13.919071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.615284, 21.109310, 14.040489>,  <17.650820, 20.766109, 14.242852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.615284, 21.109310, 14.040489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017192, 0.509162, 0.860499,
		0.995898, 0.067747, -0.059983,
		-0.088838, 0.858000, -0.505909,
		17.588633, 21.366711, 13.888717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.121946, 21.045256, 14.468275>,  <17.650820, 20.766109, 14.242852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.121946, 21.045256, 14.468275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.870319, 21.326672, 14.336031>,  <17.719343, 21.495522, 14.256684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.870319, 21.326672, 14.336031>,  <18.121946, 21.045256, 14.468275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.870319, 21.326672, 14.336031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039626, 0.395727, 0.917513,
		0.776339, 0.590279, -0.221061,
		-0.629069, 0.703541, -0.330609,
		17.681599, 21.537733, 14.236848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.359861, 21.679674, 14.756799>,  <18.121946, 21.045256, 14.468275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.359861, 21.679674, 14.756799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.973068, 21.722507, 14.664297>,  <17.740993, 21.748207, 14.608796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.973068, 21.722507, 14.664297>,  <18.359861, 21.679674, 14.756799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.973068, 21.722507, 14.664297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164613, 0.430271, 0.887564,
		0.194547, 0.896326, -0.398437,
		-0.966982, 0.107085, -0.231254,
		17.682974, 21.754633, 14.594921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.277905, 22.289831, 14.955072>,  <18.359861, 21.679674, 14.756799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.277905, 22.289831, 14.955072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.918037, 22.115665, 14.942371>,  <17.702116, 22.011166, 14.934751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.918037, 22.115665, 14.942371>,  <18.277905, 22.289831, 14.955072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.918037, 22.115665, 14.942371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198621, 0.343457, 0.917926,
		-0.388773, 0.832136, -0.395480,
		-0.899670, -0.435415, -0.031753,
		17.648136, 21.985041, 14.932845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.800310, 22.736120, 15.479532>,  <18.277905, 22.289831, 14.955072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.800310, 22.736120, 15.479532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.569714, 22.417545, 15.406492>,  <17.431356, 22.226400, 15.362668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.569714, 22.417545, 15.406492>,  <17.800310, 22.736120, 15.479532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.569714, 22.417545, 15.406492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314166, 0.009754, 0.949318,
		-0.754292, 0.604641, -0.255837,
		-0.576492, -0.796438, -0.182601,
		17.396767, 22.178614, 15.351712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.111643, 22.931023, 15.778461>,  <17.800310, 22.736120, 15.479532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.111643, 22.931023, 15.778461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.140503, 22.532455, 15.760799>,  <17.157818, 22.293316, 15.750202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.140503, 22.532455, 15.760799>,  <17.111643, 22.931023, 15.778461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.140503, 22.532455, 15.760799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300450, -0.063927, 0.951653,
		-0.951065, -0.055394, -0.303986,
		0.072148, -0.996416, -0.044155,
		17.162148, 22.233530, 15.747553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.504612, 22.660212, 16.218426>,  <17.111643, 22.931023, 15.778461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.504612, 22.660212, 16.218426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.770222, 22.361633, 16.201014>,  <16.929586, 22.182487, 16.190565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.770222, 22.361633, 16.201014>,  <16.504612, 22.660212, 16.218426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.770222, 22.361633, 16.201014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167189, -0.204971, 0.964383,
		-0.728781, -0.633094, -0.260902,
		0.664022, -0.746444, -0.043532,
		16.969429, 22.137699, 16.187954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.162683, 22.122341, 16.621027>,  <16.504612, 22.660212, 16.218426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.162683, 22.122341, 16.621027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.554333, 22.046478, 16.591764>,  <16.789322, 22.000961, 16.574207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.554333, 22.046478, 16.591764>,  <16.162683, 22.122341, 16.621027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.554333, 22.046478, 16.591764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027249, -0.234187, 0.971810,
		-0.201442, -0.953513, -0.224129,
		0.979121, -0.189656, -0.073157,
		16.848068, 21.989582, 16.569817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.251375, 21.492785, 17.123398>,  <16.162683, 22.122341, 16.621027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.251375, 21.492785, 17.123398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.617683, 21.644112, 17.069382>,  <16.837469, 21.734907, 17.036972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.617683, 21.644112, 17.069382>,  <16.251375, 21.492785, 17.123398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.617683, 21.644112, 17.069382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298565, -0.416136, 0.858889,
		0.268738, -0.826865, -0.494038,
		0.915772, 0.378319, -0.135042,
		16.892416, 21.757607, 17.028870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.532007, 21.012932, 17.409367>,  <16.251375, 21.492785, 17.123398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.532007, 21.012932, 17.409367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.799240, 21.309776, 17.387678>,  <16.959579, 21.487883, 17.374664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.799240, 21.309776, 17.387678>,  <16.532007, 21.012932, 17.409367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.799240, 21.309776, 17.387678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443813, -0.338929, 0.829552,
		0.597242, -0.578273, -0.555790,
		0.668081, 0.742110, -0.054222,
		16.999664, 21.532410, 17.371412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.289976, 20.745289, 17.598940>,  <16.532007, 21.012932, 17.409367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.289976, 20.745289, 17.598940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.241863, 21.136280, 17.668301>,  <17.212996, 21.370874, 17.709917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.241863, 21.136280, 17.668301>,  <17.289976, 20.745289, 17.598940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.241863, 21.136280, 17.668301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277295, -0.134635, 0.951305,
		0.953226, 0.162509, -0.254856,
		-0.120283, 0.977479, 0.173400,
		17.205778, 21.429523, 17.720320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.918289, 20.891323, 18.092316>,  <17.289976, 20.745289, 17.598940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.918289, 20.891323, 18.092316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.675838, 21.208267, 18.119947>,  <17.530367, 21.398434, 18.136526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.675838, 21.208267, 18.119947>,  <17.918289, 20.891323, 18.092316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.675838, 21.208267, 18.119947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284338, 0.134754, 0.949207,
		0.742806, 0.594983, -0.306977,
		-0.606128, 0.792361, 0.069081,
		17.493999, 21.445976, 18.140671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.391476, 21.529177, 18.341778>,  <17.918289, 20.891323, 18.092316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.391476, 21.529177, 18.341778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.005318, 21.602802, 18.415674>,  <17.773623, 21.646978, 18.460012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.005318, 21.602802, 18.415674>,  <18.391476, 21.529177, 18.341778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.005318, 21.602802, 18.415674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206065, 0.104244, 0.972970,
		0.159830, 0.977371, -0.138566,
		-0.965397, 0.184063, 0.184741,
		17.715698, 21.658022, 18.471096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.165997, 22.216896, 18.554235>,  <18.391476, 21.529177, 18.341778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.165997, 22.216896, 18.554235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.896114, 21.957619, 18.695442>,  <17.734184, 21.802053, 18.780167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.896114, 21.957619, 18.695442>,  <18.165997, 22.216896, 18.554235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.896114, 21.957619, 18.695442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179409, 0.319913, 0.930305,
		-0.715950, 0.691017, -0.099556,
		-0.674706, -0.648191, 0.353017,
		17.693703, 21.763161, 18.801348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.773825, 22.503979, 19.153893>,  <18.165997, 22.216896, 18.554235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.773825, 22.503979, 19.153893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.744770, 22.109367, 19.212523>,  <17.727337, 21.872601, 19.247700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.744770, 22.109367, 19.212523>,  <17.773825, 22.503979, 19.153893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.744770, 22.109367, 19.212523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253098, 0.123918, 0.959472,
		-0.964710, 0.106789, 0.240688,
		-0.072636, -0.986529, 0.146573,
		17.722979, 21.813408, 19.256495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.237268, 22.361656, 19.638163>,  <17.773825, 22.503979, 19.153893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.237268, 22.361656, 19.638163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.476578, 22.042507, 19.667738>,  <17.620163, 21.851017, 19.685484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.476578, 22.042507, 19.667738>,  <17.237268, 22.361656, 19.638163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.476578, 22.042507, 19.667738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120914, 0.181112, 0.976001,
		-0.792117, -0.574974, 0.204829,
		0.598273, -0.797874, 0.073939,
		17.656059, 21.803144, 19.689920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.006828, 21.875179, 20.224722>,  <17.237268, 22.361656, 19.638163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.006828, 21.875179, 20.224722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.392204, 21.778507, 20.178459>,  <17.623430, 21.720505, 20.150702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.392204, 21.778507, 20.178459>,  <17.006828, 21.875179, 20.224722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.392204, 21.778507, 20.178459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109181, -0.040066, 0.993214,
		-0.244673, -0.969529, -0.012214,
		0.963439, -0.241679, -0.115657,
		17.681236, 21.706003, 20.143763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.057177, 21.362215, 20.773323>,  <17.006828, 21.875179, 20.224722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.057177, 21.362215, 20.773323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.434105, 21.452717, 20.674658>,  <17.660261, 21.507017, 20.615458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.434105, 21.452717, 20.674658>,  <17.057177, 21.362215, 20.773323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.434105, 21.452717, 20.674658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260615, -0.033528, 0.964860,
		0.210033, -0.973491, -0.090559,
		0.942319, 0.226253, -0.246665,
		17.716801, 21.520592, 20.600658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.596628, 20.923899, 21.164301>,  <17.057177, 21.362215, 20.773323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.596628, 20.923899, 21.164301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.809681, 21.225178, 21.009899>,  <17.937513, 21.405945, 20.917257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.809681, 21.225178, 21.009899>,  <17.596628, 20.923899, 21.164301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.809681, 21.225178, 21.009899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603877, -0.018659, 0.796859,
		0.592988, -0.657532, -0.464776,
		0.532632, 0.753195, -0.386004,
		17.969471, 21.451136, 20.894098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.277952, 20.697659, 21.213322>,  <17.596628, 20.923899, 21.164301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.277952, 20.697659, 21.213322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.296627, 21.096416, 21.187971>,  <18.307833, 21.335672, 21.172760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.296627, 21.096416, 21.187971>,  <18.277952, 20.697659, 21.213322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.296627, 21.096416, 21.187971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490820, 0.032365, 0.870659,
		0.870009, -0.071757, -0.487786,
		0.046689, 0.996897, -0.063378,
		18.310635, 21.395485, 21.168957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.004456, 20.960238, 21.191153>,  <18.277952, 20.697659, 21.213322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.004456, 20.960238, 21.191153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.785416, 21.257385, 21.345182>,  <18.653992, 21.435673, 21.437601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.785416, 21.257385, 21.345182>,  <19.004456, 20.960238, 21.191153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.785416, 21.257385, 21.345182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532925, -0.045152, 0.844957,
		0.645078, 0.667914, -0.371168,
		-0.547599, 0.742867, 0.385075,
		18.621136, 21.480246, 21.460705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.451933, 21.220364, 21.582829>,  <19.004456, 20.960238, 21.191153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.451933, 21.220364, 21.582829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.115799, 21.393982, 21.712715>,  <18.914118, 21.498154, 21.790648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.115799, 21.393982, 21.712715>,  <19.451933, 21.220364, 21.582829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.115799, 21.393982, 21.712715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362179, 0.003880, 0.932100,
		0.403316, 0.900881, -0.160464,
		-0.840335, 0.434048, 0.324716,
		18.863699, 21.524197, 21.810129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.683416, 21.674982, 22.064390>,  <19.451933, 21.220364, 21.582829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.683416, 21.674982, 22.064390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.294960, 21.620178, 22.142483>,  <19.061886, 21.587296, 22.189339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.294960, 21.620178, 22.142483>,  <19.683416, 21.674982, 22.064390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.294960, 21.620178, 22.142483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221833, -0.218187, 0.950360,
		-0.087610, 0.966242, 0.242283,
		-0.971141, -0.137008, 0.195229,
		19.003618, 21.579077, 22.201052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.644407, 22.096746, 22.691442>,  <19.683416, 21.674982, 22.064390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.644407, 22.096746, 22.691442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.334805, 21.845207, 22.661861>,  <19.149044, 21.694284, 22.644114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.334805, 21.845207, 22.661861>,  <19.644407, 22.096746, 22.691442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.334805, 21.845207, 22.661861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017701, -0.138237, 0.990241,
		-0.632932, 0.765143, 0.118127,
		-0.774005, -0.628846, -0.073951,
		19.102604, 21.656553, 22.639677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.092781, 22.319929, 23.180923>,  <19.644407, 22.096746, 22.691442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.092781, 22.319929, 23.180923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.064041, 21.927536, 23.108801>,  <19.046797, 21.692101, 23.065527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.064041, 21.927536, 23.108801>,  <19.092781, 22.319929, 23.180923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.064041, 21.927536, 23.108801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058215, -0.176341, 0.982606,
		-0.995715, 0.081098, -0.044437,
		-0.071851, -0.980983, -0.180307,
		19.042486, 21.633242, 23.054708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.558846, 22.085629, 23.740749>,  <19.092781, 22.319929, 23.180923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.558846, 22.085629, 23.740749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.709614, 21.741402, 23.603720>,  <18.800074, 21.534866, 23.521502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.709614, 21.741402, 23.603720>,  <18.558846, 22.085629, 23.740749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.709614, 21.741402, 23.603720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030982, -0.357930, 0.933234,
		-0.925728, -0.362368, -0.108248,
		0.376919, -0.860567, -0.342573,
		18.822689, 21.483231, 23.500948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.201485, 21.588188, 24.093798>,  <18.558846, 22.085629, 23.740749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.201485, 21.588188, 24.093798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.496174, 21.359360, 23.949589>,  <18.672987, 21.222063, 23.863064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.496174, 21.359360, 23.949589>,  <18.201485, 21.588188, 24.093798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.496174, 21.359360, 23.949589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023368, -0.511307, 0.859080,
		-0.675794, -0.641326, -0.363322,
		0.736720, -0.572071, -0.360524,
		18.717190, 21.187738, 23.841431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.018051, 20.953701, 24.333658>,  <18.201485, 21.588188, 24.093798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.018051, 20.953701, 24.333658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.410599, 20.991901, 24.266970>,  <18.646128, 21.014822, 24.226957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.410599, 20.991901, 24.266970>,  <18.018051, 20.953701, 24.333658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.410599, 20.991901, 24.266970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189720, -0.344522, 0.919408,
		0.030367, -0.933908, -0.356221,
		0.981368, 0.095502, -0.166719,
		18.705009, 21.020552, 24.216953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.285633, 20.278570, 24.585573>,  <18.018051, 20.953701, 24.333658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.285633, 20.278570, 24.585573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.573769, 20.555904, 24.593559>,  <18.746651, 20.722305, 24.598351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.573769, 20.555904, 24.593559>,  <18.285633, 20.278570, 24.585573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.573769, 20.555904, 24.593559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229730, -0.265640, 0.936301,
		0.654475, -0.669867, -0.350630,
		0.720338, 0.693336, 0.019966,
		18.789869, 20.763905, 24.599548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.978930, 19.922745, 24.938898>,  <18.285633, 20.278570, 24.585573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.978930, 19.922745, 24.938898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.964916, 20.322144, 24.955763>,  <18.956509, 20.561783, 24.965881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.964916, 20.322144, 24.955763>,  <18.978930, 19.922745, 24.938898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.964916, 20.322144, 24.955763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156021, -0.036206, 0.987090,
		0.987132, 0.041159, -0.154518,
		-0.035033, 0.998497, 0.042162,
		18.954407, 20.621693, 24.968412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.561756, 20.053213, 25.338598>,  <18.978930, 19.922745, 24.938898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.561756, 20.053213, 25.338598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.355919, 20.396183, 25.340195>,  <19.232416, 20.601965, 25.341152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.355919, 20.396183, 25.340195>,  <19.561756, 20.053213, 25.338598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.355919, 20.396183, 25.340195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076450, 0.041246, 0.996220,
		0.854020, 0.512952, -0.086775,
		-0.514593, 0.857425, 0.003990,
		19.201542, 20.653410, 25.341393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.507298, 19.346979, 24.876902>,  <19.561756, 20.053213, 25.338598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.507298, 19.346979, 24.876902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.284966, 19.016541, 24.914026>,  <19.151566, 18.818277, 24.936302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.284966, 19.016541, 24.914026>,  <19.507298, 19.346979, 24.876902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.284966, 19.016541, 24.914026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257318, 0.064810, -0.964151,
		0.790468, -0.559788, -0.248594,
		-0.555831, -0.826097, 0.092813,
		19.118216, 18.768711, 24.941870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.727930, 18.855339, 24.367056>,  <19.507298, 19.346979, 24.876902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.727930, 18.855339, 24.367056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.359474, 18.720112, 24.444220>,  <19.138401, 18.638975, 24.490519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.359474, 18.720112, 24.444220>,  <19.727930, 18.855339, 24.367056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.359474, 18.720112, 24.444220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261519, 0.170449, -0.950029,
		0.288296, -0.925557, -0.245419,
		-0.921137, -0.338071, 0.192910,
		19.083134, 18.618690, 24.502092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.589039, 18.214392, 23.965363>,  <19.727930, 18.855339, 24.367056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.589039, 18.214392, 23.965363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.219757, 18.341549, 24.051748>,  <18.998188, 18.417843, 24.103580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.219757, 18.341549, 24.051748>,  <19.589039, 18.214392, 23.965363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.219757, 18.341549, 24.051748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246120, -0.057453, -0.967535,
		-0.295164, -0.946385, 0.131280,
		-0.923203, 0.317892, 0.215966,
		18.942797, 18.436916, 24.116539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.126896, 17.826431, 23.375198>,  <19.589039, 18.214392, 23.965363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.126896, 17.826431, 23.375198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.902523, 18.108868, 23.548075>,  <18.767899, 18.278330, 23.651800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.902523, 18.108868, 23.548075>,  <19.126896, 17.826431, 23.375198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.902523, 18.108868, 23.548075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538030, 0.085842, -0.838543,
		-0.629189, -0.702898, 0.331747,
		-0.560933, 0.706092, 0.432191,
		18.734243, 18.320696, 23.677732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.416975, 17.589140, 23.225632>,  <19.126896, 17.826431, 23.375198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.416975, 17.589140, 23.225632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.365715, 17.974220, 23.320950>,  <18.334959, 18.205269, 23.378139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.365715, 17.974220, 23.320950>,  <18.416975, 17.589140, 23.225632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.365715, 17.974220, 23.320950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512763, 0.141353, -0.846813,
		-0.848912, -0.230708, 0.475523,
		-0.128149, 0.962701, 0.238295,
		18.327271, 18.263031, 23.392439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.666815, 17.752314, 23.208813>,  <18.416975, 17.589140, 23.225632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.666815, 17.752314, 23.208813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.839718, 18.109974, 23.162077>,  <17.943460, 18.324570, 23.134035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.839718, 18.109974, 23.162077>,  <17.666815, 17.752314, 23.208813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.839718, 18.109974, 23.162077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604285, 0.191051, -0.773524,
		-0.669323, 0.404966, 0.622904,
		0.432258, 0.894149, -0.116840,
		17.969395, 18.378218, 23.127026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.190762, 18.134949, 22.992590>,  <17.666815, 17.752314, 23.208813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.190762, 18.134949, 22.992590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.517014, 18.342865, 22.890949>,  <17.712765, 18.467615, 22.829966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.517014, 18.342865, 22.890949>,  <17.190762, 18.134949, 22.992590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.517014, 18.342865, 22.890949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303126, 0.009826, -0.952900,
		-0.492810, 0.854238, 0.165576,
		0.815630, 0.519789, -0.254100,
		17.761703, 18.498802, 22.814720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.984138, 18.747536, 22.678015>,  <17.190762, 18.134949, 22.992590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.984138, 18.747536, 22.678015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.355736, 18.679108, 22.546741>,  <17.578695, 18.638052, 22.467978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.355736, 18.679108, 22.546741>,  <16.984138, 18.747536, 22.678015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.355736, 18.679108, 22.546741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286005, 0.230936, -0.929983,
		0.234880, 0.957812, 0.165613,
		0.928995, -0.171068, -0.328182,
		17.634434, 18.627787, 22.448286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.151789, 19.339357, 22.163986>,  <16.984138, 18.747536, 22.678015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.151789, 19.339357, 22.163986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.408859, 19.040783, 22.094936>,  <17.563101, 18.861637, 22.053507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.408859, 19.040783, 22.094936>,  <17.151789, 19.339357, 22.163986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.408859, 19.040783, 22.094936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161908, 0.087901, -0.982883,
		0.748835, 0.659623, -0.064363,
		0.642675, -0.746438, -0.172622,
		17.601662, 18.816851, 22.043150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.565123, 19.574341, 21.613894>,  <17.151789, 19.339357, 22.163986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.565123, 19.574341, 21.613894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.623249, 19.179348, 21.638430>,  <17.658125, 18.942352, 21.653152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.623249, 19.179348, 21.638430>,  <17.565123, 19.574341, 21.613894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.623249, 19.179348, 21.638430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102628, -0.046621, -0.993627,
		0.984048, 0.150683, 0.094569,
		0.145314, -0.987482, 0.061341,
		17.666843, 18.883102, 21.656832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.244677, 19.499569, 21.365068>,  <17.565123, 19.574341, 21.613894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.244677, 19.499569, 21.365068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.018734, 19.172615, 21.319775>,  <17.883169, 18.976442, 21.292599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.018734, 19.172615, 21.319775>,  <18.244677, 19.499569, 21.365068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.018734, 19.172615, 21.319775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180119, 0.011784, -0.983574,
		0.805291, -0.575974, 0.140570,
		-0.564856, -0.817383, -0.113234,
		17.849277, 18.927401, 21.285805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.570215, 19.062408, 20.832336>,  <18.244677, 19.499569, 21.365068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.570215, 19.062408, 20.832336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.212170, 18.884079, 20.833548>,  <17.997341, 18.777081, 20.834274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.212170, 18.884079, 20.833548>,  <18.570215, 19.062408, 20.832336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.212170, 18.884079, 20.833548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056816, -0.120803, -0.991049,
		0.442199, -0.886932, 0.133463,
		-0.895116, -0.445824, 0.003027,
		17.943634, 18.750332, 20.834455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.665712, 18.351686, 20.602015>,  <18.570215, 19.062408, 20.832336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.665712, 18.351686, 20.602015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.305721, 18.510548, 20.530115>,  <18.089727, 18.605865, 20.486977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.305721, 18.510548, 20.530115>,  <18.665712, 18.351686, 20.602015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.305721, 18.510548, 20.530115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141939, -0.122894, -0.982217,
		-0.412182, -0.909486, 0.054230,
		-0.899977, 0.397155, -0.179746,
		18.035728, 18.629694, 20.476191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.346334, 17.872620, 20.035595>,  <18.665712, 18.351686, 20.602015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.346334, 17.872620, 20.035595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.147629, 18.219669, 20.044134>,  <18.028404, 18.427898, 20.049257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.147629, 18.219669, 20.044134>,  <18.346334, 17.872620, 20.035595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.147629, 18.219669, 20.044134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163294, -0.069280, -0.984142,
		-0.852384, -0.492374, 0.176094,
		-0.496765, 0.867622, 0.021348,
		17.998600, 18.479956, 20.050539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.007528, 17.882578, 19.427248>,  <18.346334, 17.872620, 20.035595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.007528, 17.882578, 19.427248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.927570, 18.255013, 19.549309>,  <17.879595, 18.478474, 19.622545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.927570, 18.255013, 19.549309>,  <18.007528, 17.882578, 19.427248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.927570, 18.255013, 19.549309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270742, 0.246824, -0.930471,
		-0.941669, -0.268613, 0.202746,
		-0.199894, 0.931088, 0.305152,
		17.867601, 18.534338, 19.640854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.375715, 18.090881, 19.107012>,  <18.007528, 17.882578, 19.427248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.375715, 18.090881, 19.107012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.552650, 18.434204, 19.211048>,  <17.658812, 18.640198, 19.273470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.552650, 18.434204, 19.211048>,  <17.375715, 18.090881, 19.107012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.552650, 18.434204, 19.211048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111601, 0.340430, -0.933623,
		-0.889877, 0.383953, 0.246373,
		0.442340, 0.858305, 0.260091,
		17.685352, 18.691696, 19.289076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.906513, 18.622522, 19.079496>,  <17.375715, 18.090881, 19.107012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.906513, 18.622522, 19.079496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.257828, 18.810577, 19.044659>,  <17.468616, 18.923410, 19.023756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.257828, 18.810577, 19.044659>,  <16.906513, 18.622522, 19.079496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.257828, 18.810577, 19.044659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314668, 0.431186, -0.845614,
		-0.360002, 0.770096, 0.526642,
		0.878284, 0.470140, -0.087096,
		17.521313, 18.951620, 19.018530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.749161, 19.145218, 18.646133>,  <16.906513, 18.622522, 19.079496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.749161, 19.145218, 18.646133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.146908, 19.121433, 18.611040>,  <17.385555, 19.107162, 18.589985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.146908, 19.121433, 18.611040>,  <16.749161, 19.145218, 18.646133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.146908, 19.121433, 18.611040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069837, 0.255054, -0.964401,
		0.079722, 0.965097, 0.249465,
		0.994368, -0.059462, -0.087733,
		17.445219, 19.103594, 18.584721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.936226, 19.754351, 18.397005>,  <16.749161, 19.145218, 18.646133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.936226, 19.754351, 18.397005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.207355, 19.477741, 18.297123>,  <17.370033, 19.311775, 18.237194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.207355, 19.477741, 18.297123>,  <16.936226, 19.754351, 18.397005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.207355, 19.477741, 18.297123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142944, 0.209198, -0.967369,
		0.721195, 0.691400, 0.042951,
		0.677824, -0.691522, -0.249704,
		17.410702, 19.270285, 18.222212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.210550, 20.008148, 17.824411>,  <16.936226, 19.754351, 18.397005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.210550, 20.008148, 17.824411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.349941, 19.633572, 17.808210>,  <17.433577, 19.408825, 17.798491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.349941, 19.633572, 17.808210>,  <17.210550, 20.008148, 17.824411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.349941, 19.633572, 17.808210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038952, 0.057642, -0.997577,
		0.936507, 0.346056, 0.056563,
		0.348478, -0.936441, -0.040502,
		17.454485, 19.352638, 17.796061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.719805, 20.080242, 17.309101>,  <17.210550, 20.008148, 17.824411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.719805, 20.080242, 17.309101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.640488, 19.688419, 17.322659>,  <17.592897, 19.453325, 17.330793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.640488, 19.688419, 17.322659>,  <17.719805, 20.080242, 17.309101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.640488, 19.688419, 17.322659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186941, 0.003852, -0.982364,
		0.962150, -0.201131, -0.183883,
		-0.198292, -0.979557, 0.033893,
		17.580999, 19.394552, 17.332827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.142464, 19.805750, 16.652000>,  <17.719805, 20.080242, 17.309101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.142464, 19.805750, 16.652000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.867767, 19.538330, 16.766142>,  <17.702950, 19.377878, 16.834627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.867767, 19.538330, 16.766142>,  <18.142464, 19.805750, 16.652000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.867767, 19.538330, 16.766142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133262, -0.270115, -0.953561,
		0.714582, -0.692877, 0.096406,
		-0.686741, -0.668551, 0.285353,
		17.661745, 19.337765, 16.851748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.204021, 19.313631, 16.189800>,  <18.142464, 19.805750, 16.652000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.204021, 19.313631, 16.189800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.832397, 19.280357, 16.333982>,  <17.609423, 19.260393, 16.420492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.832397, 19.280357, 16.333982>,  <18.204021, 19.313631, 16.189800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.832397, 19.280357, 16.333982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326784, -0.272128, -0.905074,
		0.173381, -0.958659, 0.225638,
		-0.929059, -0.083188, 0.360456,
		17.553680, 19.255402, 16.442120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.782152, 18.824894, 15.784796>,  <18.204021, 19.313631, 16.189800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.782152, 18.824894, 15.784796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.477451, 19.028751, 15.944796>,  <17.294632, 19.151066, 16.040796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.477451, 19.028751, 15.944796>,  <17.782152, 18.824894, 15.784796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.477451, 19.028751, 15.944796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528552, -0.131828, -0.838602,
		-0.374658, -0.850226, 0.369794,
		-0.761750, 0.509645, 0.399998,
		17.248926, 19.181644, 16.064795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.340385, 18.637186, 15.323874>,  <17.782152, 18.824894, 15.784796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.340385, 18.637186, 15.323874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.148502, 18.915554, 15.537630>,  <17.033373, 19.082575, 15.665883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.148502, 18.915554, 15.537630>,  <17.340385, 18.637186, 15.323874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.148502, 18.915554, 15.537630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661392, 0.113416, -0.741416,
		-0.576576, -0.709105, 0.405870,
		-0.479710, 0.695922, 0.534389,
		17.004589, 19.124331, 15.697947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.559799, 18.433628, 15.405128>,  <17.340385, 18.637186, 15.323874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.559799, 18.433628, 15.405128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.594730, 18.832012, 15.413483>,  <16.615688, 19.071043, 15.418496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.594730, 18.832012, 15.413483>,  <16.559799, 18.433628, 15.405128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.594730, 18.832012, 15.413483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727146, 0.078061, -0.682030,
		-0.680906, 0.044370, 0.731026,
		0.087326, 0.995961, 0.020889,
		16.620928, 19.130800, 15.419749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.955133, 18.746794, 15.468190>,  <16.559799, 18.433628, 15.405128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.955133, 18.746794, 15.468190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.171787, 19.049202, 15.321186>,  <16.301779, 19.230648, 15.232984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.171787, 19.049202, 15.321186>,  <15.955133, 18.746794, 15.468190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.171787, 19.049202, 15.321186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677391, 0.133657, -0.723379,
		-0.497770, 0.640755, 0.584516,
		0.541633, 0.756022, -0.367511,
		16.334278, 19.276009, 15.210933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.458742, 19.037550, 15.145878>,  <15.955133, 18.746794, 15.468190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.458742, 19.037550, 15.145878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.774976, 19.226425, 14.989922>,  <15.964716, 19.339750, 14.896348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.774976, 19.226425, 14.989922>,  <15.458742, 19.037550, 15.145878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.774976, 19.226425, 14.989922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496505, 0.121622, -0.859471,
		-0.358413, 0.873067, 0.330596,
		0.790584, 0.472188, -0.389891,
		16.012152, 19.368082, 14.872954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.260918, 19.578676, 14.754091>,  <15.458742, 19.037550, 15.145878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.260918, 19.578676, 14.754091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.627854, 19.510307, 14.610275>,  <15.848017, 19.469286, 14.523986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.627854, 19.510307, 14.610275>,  <15.260918, 19.578676, 14.754091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.627854, 19.510307, 14.610275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313926, 0.244812, -0.917343,
		0.244812, 0.954386, 0.170920,
		0.917343, -0.170920, -0.359539,
		15.903057, 19.459032, 14.502414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.341623, 20.045198, 14.194683>,  <15.260918, 19.578676, 14.754091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.341623, 20.045198, 14.194683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.640725, 19.787674, 14.129725>,  <15.820187, 19.633160, 14.090750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.640725, 19.787674, 14.129725>,  <15.341623, 20.045198, 14.194683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.640725, 19.787674, 14.129725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175953, 0.043701, -0.983428,
		0.640237, 0.763937, -0.080603,
		0.747754, -0.643810, -0.162396,
		15.865051, 19.594530, 14.081006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.808294, 20.410145, 13.654151>,  <15.341623, 20.045198, 14.194683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.808294, 20.410145, 13.654151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.838376, 20.011280, 13.655525>,  <15.856425, 19.771961, 13.656349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.838376, 20.011280, 13.655525>,  <15.808294, 20.410145, 13.654151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.838376, 20.011280, 13.655525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127871, -0.013060, -0.991705,
		0.988936, 0.074140, -0.128491,
		0.075204, -0.997162, 0.003435,
		15.860937, 19.712132, 13.656556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.285494, 20.272211, 13.146671>,  <15.808294, 20.410145, 13.654151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.285494, 20.272211, 13.146671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.066090, 19.942585, 13.203312>,  <15.934447, 19.744808, 13.237296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.066090, 19.942585, 13.203312>,  <16.285494, 20.272211, 13.146671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.066090, 19.942585, 13.203312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184327, -0.046012, -0.981787,
		0.815574, -0.564620, -0.126660,
		-0.548509, -0.824067, 0.141602,
		15.901537, 19.695364, 13.245792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.543726, 19.789860, 12.648978>,  <16.285494, 20.272211, 13.146671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.543726, 19.789860, 12.648978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.183105, 19.654827, 12.757236>,  <15.966734, 19.573807, 12.822189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.183105, 19.654827, 12.757236>,  <16.543726, 19.789860, 12.648978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.183105, 19.654827, 12.757236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208685, -0.208684, -0.955459,
		0.379025, -0.917872, 0.117690,
		-0.901549, -0.337583, 0.270643,
		15.912641, 19.553553, 12.838428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.442131, 19.335287, 12.174580>,  <16.543726, 19.789860, 12.648978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.442131, 19.335287, 12.174580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.071033, 19.330299, 12.323785>,  <15.848375, 19.327307, 12.413308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.071033, 19.330299, 12.323785>,  <16.442131, 19.335287, 12.174580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.071033, 19.330299, 12.323785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308876, -0.535359, -0.786121,
		0.209497, -0.844532, 0.492824,
		-0.927743, -0.012469, 0.373012,
		15.792710, 19.326559, 12.435688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.130316, 18.593164, 12.346227>,  <16.442131, 19.335287, 12.174580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.130316, 18.593164, 12.346227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.827151, 18.849159, 12.295650>,  <15.645253, 19.002756, 12.265305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.827151, 18.849159, 12.295650>,  <16.130316, 18.593164, 12.346227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.827151, 18.849159, 12.295650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218931, -0.432112, -0.874842,
		-0.614526, -0.635369, 0.467615,
		-0.757909, 0.639989, -0.126442,
		15.599778, 19.041155, 12.257718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.516061, 18.160610, 12.153616>,  <16.130316, 18.593164, 12.346227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.516061, 18.160610, 12.153616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.510242, 18.536858, 12.017954>,  <15.506750, 18.762606, 11.936557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.510242, 18.536858, 12.017954>,  <15.516061, 18.160610, 12.153616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.510242, 18.536858, 12.017954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262997, -0.330847, -0.906296,
		-0.964687, 0.076011, 0.252193,
		-0.014549, 0.940618, -0.339155,
		15.505877, 18.819042, 11.916207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.790977, 18.203316, 11.707059>,  <15.516061, 18.160610, 12.153616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.790977, 18.203316, 11.707059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.038880, 18.498829, 11.601151>,  <15.187622, 18.676136, 11.537607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.038880, 18.498829, 11.601151>,  <14.790977, 18.203316, 11.707059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.038880, 18.498829, 11.601151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289166, -0.098668, -0.952180,
		-0.729577, 0.666684, 0.152480,
		0.619758, 0.738781, -0.264768,
		15.224808, 18.720463, 11.521721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.405418, 18.745844, 11.387998>,  <14.790977, 18.203316, 11.707059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.405418, 18.745844, 11.387998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.773429, 18.803871, 11.242393>,  <14.994235, 18.838688, 11.155029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.773429, 18.803871, 11.242393>,  <14.405418, 18.745844, 11.387998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.773429, 18.803871, 11.242393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387594, 0.200274, -0.899812,
		-0.057632, 0.968940, 0.240485,
		0.920027, 0.145069, -0.364013,
		15.049437, 18.847391, 11.133188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.271417, 19.235575, 10.882907>,  <14.405418, 18.745844, 11.387998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.271417, 19.235575, 10.882907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.637618, 19.094379, 10.805701>,  <14.857339, 19.009663, 10.759378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.637618, 19.094379, 10.805701>,  <14.271417, 19.235575, 10.882907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.637618, 19.094379, 10.805701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207735, -0.003911, -0.978177,
		0.344528, 0.935620, -0.076908,
		0.915503, -0.352986, -0.193014,
		14.912270, 18.988483, 10.747797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.518197, 19.695005, 10.446325>,  <14.271417, 19.235575, 10.882907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.518197, 19.695005, 10.446325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.744674, 19.370216, 10.389575>,  <14.880560, 19.175343, 10.355525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.744674, 19.370216, 10.389575>,  <14.518197, 19.695005, 10.446325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.744674, 19.370216, 10.389575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252518, -0.007020, -0.967567,
		0.784641, 0.583654, -0.209013,
		0.566191, -0.811972, -0.141875,
		14.914531, 19.126625, 10.347013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.025076, 19.700611, 9.765407>,  <14.518197, 19.695005, 10.446325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.025076, 19.700611, 9.765407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.931539, 19.326645, 9.872175>,  <14.875417, 19.102264, 9.936236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.931539, 19.326645, 9.872175>,  <15.025076, 19.700611, 9.765407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.931539, 19.326645, 9.872175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207407, -0.220247, -0.953139,
		0.949895, -0.278246, -0.142406,
		-0.233843, -0.934918, 0.266921,
		14.861385, 19.046169, 9.952251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.343175, 19.288477, 9.343990>,  <15.025076, 19.700611, 9.765407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.343175, 19.288477, 9.343990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.030171, 19.078007, 9.477147>,  <14.842369, 18.951725, 9.557041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.030171, 19.078007, 9.477147>,  <15.343175, 19.288477, 9.343990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.030171, 19.078007, 9.477147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179698, -0.321048, -0.929858,
		0.596146, -0.787442, 0.156670,
		-0.782508, -0.526178, 0.332893,
		14.795419, 18.920153, 9.577015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.395360, 18.464447, 9.158219>,  <15.343175, 19.288477, 9.343990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.395360, 18.464447, 9.158219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.026837, 18.619556, 9.169714>,  <14.805723, 18.712622, 9.176611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.026837, 18.619556, 9.169714>,  <15.395360, 18.464447, 9.158219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.026837, 18.619556, 9.169714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193400, -0.392875, -0.899025,
		-0.337324, -0.833836, 0.436954,
		-0.921308, 0.387770, 0.028738,
		14.750445, 18.735888, 9.178335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.890408, 17.979160, 8.788526>,  <15.395360, 18.464447, 9.158219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.890408, 17.979160, 8.788526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.690034, 18.325287, 8.795405>,  <14.569810, 18.532963, 8.799533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.690034, 18.325287, 8.795405>,  <14.890408, 17.979160, 8.788526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.690034, 18.325287, 8.795405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293958, -0.151416, -0.943749,
		-0.814036, -0.477811, 0.330215,
		-0.500933, 0.865315, 0.017199,
		14.539754, 18.584881, 8.800565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.668735, 17.972197, 8.138252>,  <14.890408, 17.979160, 8.788526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.668735, 17.972197, 8.138252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.534650, 18.314156, 8.296635>,  <14.454199, 18.519331, 8.391664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.534650, 18.314156, 8.296635>,  <14.668735, 17.972197, 8.138252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.534650, 18.314156, 8.296635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452086, 0.222770, -0.863708,
		-0.826590, -0.468531, 0.311813,
		-0.335211, 0.854899, 0.395956,
		14.434087, 18.570625, 8.415421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.064730, 17.990351, 7.942512>,  <14.668735, 17.972197, 8.138252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.064730, 17.990351, 7.942512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.243123, 18.347073, 7.972932>,  <14.350159, 18.561106, 7.991184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.243123, 18.347073, 7.972932>,  <14.064730, 17.990351, 7.942512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.243123, 18.347073, 7.972932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354118, 0.253849, -0.900089,
		-0.822009, 0.374494, 0.429016,
		0.445984, 0.891804, 0.076051,
		14.376918, 18.614614, 7.995747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.612213, 18.717245, 7.900801>,  <14.064730, 17.990351, 7.942512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.612213, 18.717245, 7.900801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.977052, 18.685871, 7.739841>,  <14.195955, 18.667048, 7.643264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.977052, 18.685871, 7.739841>,  <13.612213, 18.717245, 7.900801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.977052, 18.685871, 7.739841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363536, 0.299016, -0.882287,
		0.189527, 0.951019, 0.244217,
		0.912097, -0.078436, -0.402401,
		14.250681, 18.662340, 7.619120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.183755, 18.626387, 7.186310>,  <13.612213, 18.717245, 7.900801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.183755, 18.626387, 7.186310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.465014, 18.763531, 6.937142>,  <13.633770, 18.845818, 6.787642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.465014, 18.763531, 6.937142>,  <13.183755, 18.626387, 7.186310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.465014, 18.763531, 6.937142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574647, -0.241934, -0.781824,
		-0.418763, 0.907697, 0.026909,
		0.703149, 0.342862, -0.622918,
		13.675960, 18.866390, 6.750267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.801717, 18.388891, 6.732177>,  <13.183755, 18.626387, 7.186310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.801717, 18.388891, 6.732177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.056674, 18.643799, 6.558918>,  <13.209648, 18.796743, 6.454962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.056674, 18.643799, 6.558918>,  <12.801717, 18.388891, 6.732177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.056674, 18.643799, 6.558918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576525, 0.021465, -0.816797,
		-0.511223, 0.770342, 0.381083,
		0.637393, 0.637269, -0.433148,
		13.247892, 18.834980, 6.428974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.456100, 18.970354, 6.719864>,  <12.801717, 18.388891, 6.732177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.456100, 18.970354, 6.719864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.714898, 18.952286, 6.415401>,  <12.870176, 18.941444, 6.232724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.714898, 18.952286, 6.415401>,  <12.456100, 18.970354, 6.719864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.714898, 18.952286, 6.415401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760521, 0.033562, -0.648446,
		0.054835, 0.998415, -0.012637,
		0.646994, -0.045169, -0.761156,
		12.908997, 18.938736, 6.187055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.518565, 19.566963, 6.209777>,  <12.456100, 18.970354, 6.719864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.518565, 19.566963, 6.209777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.578866, 19.194653, 6.076552>,  <12.615047, 18.971266, 5.996617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.578866, 19.194653, 6.076552>,  <12.518565, 19.566963, 6.209777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.578866, 19.194653, 6.076552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.906141, 0.004584, -0.422951,
		0.395199, 0.365563, -0.842723,
		0.150752, -0.930775, -0.333063,
		12.624091, 18.915421, 5.976634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.185445, 19.501917, 5.496192>,  <12.518565, 19.566963, 6.209777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.185445, 19.501917, 5.496192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.240495, 19.162880, 5.701187>,  <12.273524, 18.959457, 5.824184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.240495, 19.162880, 5.701187>,  <12.185445, 19.501917, 5.496192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.240495, 19.162880, 5.701187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.960055, -0.241418, -0.141461,
		0.243626, -0.472548, -0.846962,
		0.137625, -0.847594, 0.512488,
		12.281782, 18.908602, 5.854934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.872555, 18.929316, 5.276620>,  <12.185445, 19.501917, 5.496192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.872555, 18.929316, 5.276620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.838120, 18.863777, 5.669709>,  <11.817460, 18.824455, 5.905563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.838120, 18.863777, 5.669709>,  <11.872555, 18.929316, 5.276620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.838120, 18.863777, 5.669709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.982086, -0.152000, -0.111371,
		0.167621, -0.974706, -0.147825,
		-0.086085, -0.163845, 0.982723,
		11.812295, 18.814625, 5.964526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.521557, 18.377647, 5.311118>,  <11.872555, 18.929316, 5.276620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.521557, 18.377647, 5.311118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.452016, 18.578724, 5.649839>,  <11.410291, 18.699369, 5.853073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.452016, 18.578724, 5.649839>,  <11.521557, 18.377647, 5.311118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.452016, 18.578724, 5.649839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.984608, -0.104419, -0.140158,
		0.017967, -0.858137, 0.513106,
		-0.173853, 0.502690, 0.846804,
		11.399860, 18.729530, 5.903881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.067169, 17.917091, 5.833229>,  <11.521557, 18.377647, 5.311118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.067169, 17.917091, 5.833229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.011863, 18.309383, 5.888438>,  <10.978679, 18.544758, 5.921564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.011863, 18.309383, 5.888438>,  <11.067169, 17.917091, 5.833229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.011863, 18.309383, 5.888438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.990393, -0.136638, -0.021245,
		-0.001976, -0.139636, 0.990201,
		-0.138265, 0.980730, 0.138024,
		10.970383, 18.603603, 5.929845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.350796, 17.941437, 5.946366>,  <11.067169, 17.917091, 5.833229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.350796, 17.941437, 5.946366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.432996, 18.331802, 5.975651>,  <10.482316, 18.566021, 5.993222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.432996, 18.331802, 5.975651>,  <10.350796, 17.941437, 5.946366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.432996, 18.331802, 5.975651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.959257, 0.186039, 0.212642,
		0.193902, -0.113918, 0.974384,
		0.205497, 0.975916, 0.073203,
		10.494646, 18.624577, 5.997615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.176097, 18.267937, 6.593235>,  <10.350796, 17.941437, 5.946366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.176097, 18.267937, 6.593235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.136157, 18.509449, 6.276886>,  <10.112193, 18.654356, 6.087077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.136157, 18.509449, 6.276886>,  <10.176097, 18.267937, 6.593235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.136157, 18.509449, 6.276886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.911518, 0.263193, 0.316014,
		0.398955, 0.752447, 0.524078,
		-0.099851, 0.603782, -0.790871,
		10.106202, 18.690584, 6.039625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.522665, 18.567236, 6.669087>,  <10.176097, 18.267937, 6.593235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.522665, 18.567236, 6.669087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.624162, 18.750595, 6.328385>,  <9.685060, 18.860611, 6.123964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.624162, 18.750595, 6.328385>,  <9.522665, 18.567236, 6.669087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.624162, 18.750595, 6.328385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825383, 0.561746, 0.056435,
		0.504340, 0.688705, 0.520891,
		0.253741, 0.458397, -0.851756,
		9.700284, 18.888115, 6.072859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.442602, 19.351522, 6.618581>,  <9.522665, 18.567236, 6.669087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.442602, 19.351522, 6.618581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.369851, 19.147217, 6.282475>,  <9.326200, 19.024633, 6.080812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.369851, 19.147217, 6.282475>,  <9.442602, 19.351522, 6.618581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.369851, 19.147217, 6.282475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840494, 0.524278, -0.136760,
		0.510384, 0.681363, -0.524646,
		-0.181878, -0.510762, -0.840264,
		9.315288, 18.993988, 6.030396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.495842, 19.852613, 6.013239>,  <9.442602, 19.351522, 6.618581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.495842, 19.852613, 6.013239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.260917, 19.529171, 5.999275>,  <9.119962, 19.335106, 5.990897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.260917, 19.529171, 5.999275>,  <9.495842, 19.852613, 6.013239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.260917, 19.529171, 5.999275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807366, 0.588347, -0.044811,
		0.056774, 0.001867, -0.998385,
		-0.587313, -0.808607, -0.034910,
		9.084723, 19.286589, 5.988802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.096181, 19.934523, 5.344929>,  <9.495842, 19.852613, 6.013239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.096181, 19.934523, 5.344929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.969300, 19.721516, 5.658823>,  <8.893172, 19.593712, 5.847159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.969300, 19.721516, 5.658823>,  <9.096181, 19.934523, 5.344929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.969300, 19.721516, 5.658823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.947732, 0.208073, -0.241889,
		-0.034472, -0.820445, -0.570686,
		-0.317201, -0.532519, 0.784734,
		8.874140, 19.561760, 5.894243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.538127, 19.449436, 5.181099>,  <9.096181, 19.934523, 5.344929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.538127, 19.449436, 5.181099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.531602, 19.555264, 5.566791>,  <8.527687, 19.618759, 5.798205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.531602, 19.555264, 5.566791>,  <8.538127, 19.449436, 5.181099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.531602, 19.555264, 5.566791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.908770, 0.398247, -0.124647,
		-0.416979, -0.878296, 0.233934,
		-0.016314, 0.264568, 0.964229,
		8.526708, 19.634634, 5.856060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.483874, 20.210060, 5.051030>,  <8.538127, 19.449436, 5.181099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.483874, 20.210060, 5.051030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.575349, 20.550838, 5.239450>,  <8.630234, 20.755306, 5.352503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.575349, 20.550838, 5.239450>,  <8.483874, 20.210060, 5.051030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.575349, 20.550838, 5.239450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579261, 0.269808, -0.769195,
		-0.782406, 0.448767, -0.431797,
		0.228687, 0.851946, 0.471052,
		8.643955, 20.806423, 5.380766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.385532, 20.683346, 4.547004>,  <8.483874, 20.210060, 5.051030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.385532, 20.683346, 4.547004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.654309, 20.816628, 4.811569>,  <8.815576, 20.896597, 4.970309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.654309, 20.816628, 4.811569>,  <8.385532, 20.683346, 4.547004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.654309, 20.816628, 4.811569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588882, 0.301206, -0.749995,
		-0.449122, 0.893449, 0.006177,
		0.671943, 0.333202, 0.661414,
		8.855892, 20.916588, 5.009994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.944825, 20.787014, 4.060098>,  <8.385532, 20.683346, 4.547004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.944825, 20.787014, 4.060098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.808557, 21.001438, 3.751144>,  <7.726795, 21.130093, 3.565771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.808557, 21.001438, 3.751144>,  <7.944825, 20.787014, 4.060098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.808557, 21.001438, 3.751144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641372, -0.733196, -0.225977,
		-0.687448, 0.418402, 0.593596,
		-0.340673, 0.536063, -0.772385,
		7.706355, 21.162256, 3.519428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.202847, 20.777374, 4.204096>,  <7.944825, 20.787014, 4.060098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.202847, 20.777374, 4.204096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.306239, 20.826054, 3.820767>,  <7.368274, 20.855261, 3.590770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.306239, 20.826054, 3.820767>,  <7.202847, 20.777374, 4.204096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.306239, 20.826054, 3.820767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610361, -0.748355, -0.259661,
		-0.748764, 0.652038, -0.119154,
		0.258479, 0.121698, -0.958321,
		7.383783, 20.862562, 3.533271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.556602, 20.616299, 3.781434>,  <7.202847, 20.777374, 4.204096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.556602, 20.616299, 3.781434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.903766, 20.543190, 3.596683>,  <7.112063, 20.499325, 3.485832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.903766, 20.543190, 3.596683>,  <6.556602, 20.616299, 3.781434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.903766, 20.543190, 3.596683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291229, -0.940496, -0.175081,
		-0.402395, 0.286467, -0.869492,
		0.867908, -0.182770, -0.461878,
		7.164138, 20.488359, 3.458119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.676156, 21.315058, 4.156320>,  <6.556602, 20.616299, 3.781434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.676156, 21.315058, 4.156320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.819388, 21.357666, 4.527357>,  <6.905328, 21.383232, 4.749979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.819388, 21.357666, 4.527357>,  <6.676156, 21.315058, 4.156320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.819388, 21.357666, 4.527357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472463, 0.836220, -0.278415,
		-0.805330, 0.537949, 0.249107,
		0.358082, 0.106522, 0.927594,
		6.926813, 21.389622, 4.805635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.814380, 22.081974, 4.243001>,  <6.676156, 21.315058, 4.156320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.814380, 22.081974, 4.243001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.020000, 21.905060, 4.536977>,  <7.143371, 21.798910, 4.713362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.020000, 21.905060, 4.536977>,  <6.814380, 22.081974, 4.243001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.020000, 21.905060, 4.536977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484643, 0.856703, 0.176583,
		-0.707725, 0.265411, 0.654738,
		0.514049, -0.442287, 0.734940,
		7.174214, 21.772373, 4.757459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.145240, 22.575695, 4.469129>,  <6.814380, 22.081974, 4.243001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.145240, 22.575695, 4.469129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.293651, 22.303635, 4.722027>,  <7.382697, 22.140398, 4.873766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.293651, 22.303635, 4.722027>,  <7.145240, 22.575695, 4.469129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.293651, 22.303635, 4.722027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575888, 0.702636, 0.417919,
		-0.728486, 0.209043, 0.652387,
		0.371027, -0.680150, 0.632246,
		7.404959, 22.099590, 4.911701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.993997, 22.640808, 5.227849>,  <7.145240, 22.575695, 4.469129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.993997, 22.640808, 5.227849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.353930, 22.484894, 5.149501>,  <7.569891, 22.391346, 5.102492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.353930, 22.484894, 5.149501>,  <6.993997, 22.640808, 5.227849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.353930, 22.484894, 5.149501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434504, 0.840754, 0.323016,
		0.038773, -0.375768, 0.925902,
		0.899835, -0.389784, -0.195872,
		7.623881, 22.367958, 5.090739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.682609, 22.862709, 5.241658>,  <6.993997, 22.640808, 5.227849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.682609, 22.862709, 5.241658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.903346, 23.085854, 5.489613>,  <8.035789, 23.219740, 5.638385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.903346, 23.085854, 5.489613>,  <7.682609, 22.862709, 5.241658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.903346, 23.085854, 5.489613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171465, 0.651535, -0.738987,
		-0.816131, 0.514093, 0.263891,
		0.551842, 0.557862, 0.619887,
		8.068899, 23.253212, 5.675579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.375288, 23.604515, 5.382689>,  <7.682609, 22.862709, 5.241658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.375288, 23.604515, 5.382689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.773948, 23.572006, 5.386395>,  <8.013144, 23.552502, 5.388618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.773948, 23.572006, 5.386395>,  <7.375288, 23.604515, 5.382689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.773948, 23.572006, 5.386395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038914, 0.371468, -0.927630,
		0.071948, 0.924882, 0.373386,
		0.996649, -0.081271, 0.009264,
		8.072943, 23.547625, 5.389174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.358767, 23.550249, 4.487039>,  <7.375288, 23.604515, 5.382689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.358767, 23.550249, 4.487039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.256148, 23.841377, 4.741429>,  <7.194577, 24.016054, 4.894063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.256148, 23.841377, 4.741429>,  <7.358767, 23.550249, 4.487039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.256148, 23.841377, 4.741429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966171, 0.211100, 0.148157,
		-0.026423, 0.652469, -0.757355,
		-0.256545, 0.727820, 0.635974,
		7.179185, 24.059723, 4.932221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.884107, 23.970566, 4.382548>,  <7.358767, 23.550249, 4.487039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.884107, 23.970566, 4.382548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.749970, 24.077385, 4.743930>,  <7.669489, 24.141478, 4.960759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.749970, 24.077385, 4.743930>,  <7.884107, 23.970566, 4.382548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.749970, 24.077385, 4.743930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939315, 0.021136, 0.342403,
		0.072343, 0.963451, -0.257932,
		-0.335340, 0.267050, 0.903455,
		7.649368, 24.157499, 5.014966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<21.051092, 16.224119, 19.070612> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.423840, 16.321369, 18.962898>,  <21.647488, 16.379719, 18.898270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.423840, 16.321369, 18.962898>,  <21.051092, 16.224119, 19.070612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.423840, 16.321369, 18.962898> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345843, 0.371017, -0.861823,
		-0.109621, 0.896235, 0.429821,
		0.931867, 0.243124, -0.269285,
		21.703400, 16.394306, 18.882113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.002531, 16.844419, 18.639812>,  <21.051092, 16.224119, 19.070612>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.002531, 16.844419, 18.639812> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.347195, 16.654175, 18.568998>,  <21.553993, 16.540028, 18.526510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.347195, 16.654175, 18.568998>,  <21.002531, 16.844419, 18.639812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.347195, 16.654175, 18.568998> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063076, 0.446507, -0.892554,
		0.503555, 0.757909, 0.414736,
		0.861657, -0.475610, -0.177035,
		21.605692, 16.511492, 18.515888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.295113, 17.277716, 18.212282>,  <21.002531, 16.844419, 18.639812>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.295113, 17.277716, 18.212282> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.500111, 16.941422, 18.142408>,  <21.623110, 16.739645, 18.100485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.500111, 16.941422, 18.142408>,  <21.295113, 17.277716, 18.212282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.500111, 16.941422, 18.142408> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024810, 0.188848, -0.981693,
		0.858331, 0.507449, 0.075926,
		0.512497, -0.840733, -0.174684,
		21.653860, 16.689201, 18.090004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.789370, 17.565981, 17.722094>,  <21.295113, 17.277716, 18.212282>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.789370, 17.565981, 17.722094> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.792522, 17.166580, 17.700451>,  <21.794415, 16.926939, 17.687466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.792522, 17.166580, 17.700451>,  <21.789370, 17.565981, 17.722094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.792522, 17.166580, 17.700451> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057382, 0.054471, -0.996865,
		0.998321, 0.004752, 0.057725,
		0.007881, -0.998504, -0.054107,
		21.794888, 16.867029, 17.684219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.342207, 17.319069, 17.230251>,  <21.789370, 17.565981, 17.722094>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.342207, 17.319069, 17.230251> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.052647, 17.043533, 17.245569>,  <21.878910, 16.878212, 17.254761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.052647, 17.043533, 17.245569>,  <22.342207, 17.319069, 17.230251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.052647, 17.043533, 17.245569> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190908, 0.146667, -0.970589,
		0.662964, -0.709921, -0.237677,
		-0.723901, -0.688840, 0.038295,
		21.835476, 16.836882, 17.257057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.538673, 16.942640, 16.718857>,  <22.342207, 17.319069, 17.230251>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.538673, 16.942640, 16.718857> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.144836, 16.905319, 16.778019>,  <21.908535, 16.882927, 16.813517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.144836, 16.905319, 16.778019>,  <22.538673, 16.942640, 16.718857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.144836, 16.905319, 16.778019> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148985, 0.004681, -0.988828,
		0.091571, -0.995626, -0.018510,
		-0.984590, -0.093306, 0.147905,
		21.849459, 16.877329, 16.822390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.406670, 16.597797, 16.147406>,  <22.538673, 16.942640, 16.718857>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.406670, 16.597797, 16.147406> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.046185, 16.707340, 16.281757>,  <21.829893, 16.773066, 16.362368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.046185, 16.707340, 16.281757>,  <22.406670, 16.597797, 16.147406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.046185, 16.707340, 16.281757> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306284, 0.145820, -0.940705,
		-0.306599, -0.950651, -0.047536,
		-0.901214, 0.273860, 0.335877,
		21.775820, 16.789497, 16.382521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.820538, 16.032185, 15.801174>,  <22.406670, 16.597797, 16.147406>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.820538, 16.032185, 15.801174> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.602505, 16.343597, 15.925610>,  <21.471685, 16.530445, 16.000271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.602505, 16.343597, 15.925610>,  <21.820538, 16.032185, 15.801174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.602505, 16.343597, 15.925610> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503029, -0.006855, -0.864242,
		-0.670706, -0.627570, 0.395359,
		-0.545083, 0.778530, 0.311088,
		21.438980, 16.577156, 16.018936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.167799, 15.941515, 15.503639>,  <21.820538, 16.032185, 15.801174>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.167799, 15.941515, 15.503639> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.157681, 16.330734, 15.595324>,  <21.151609, 16.564266, 15.650334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.157681, 16.330734, 15.595324>,  <21.167799, 15.941515, 15.503639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.157681, 16.330734, 15.595324> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495385, 0.186953, -0.848317,
		-0.868305, -0.135006, 0.477305,
		-0.025294, 0.973048, 0.229212,
		21.150093, 16.622648, 15.664087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.482138, 16.110060, 15.327101>,  <21.167799, 15.941515, 15.503639>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.482138, 16.110060, 15.327101> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.701576, 16.444336, 15.337416>,  <20.833239, 16.644901, 15.343605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.701576, 16.444336, 15.337416>,  <20.482138, 16.110060, 15.327101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.701576, 16.444336, 15.337416> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504629, 0.355545, -0.786726,
		-0.666627, 0.418582, 0.616764,
		0.548596, 0.835690, 0.025787,
		20.866156, 16.695044, 15.345152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.956966, 16.639839, 15.341043>,  <20.482138, 16.110060, 15.327101>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.956966, 16.639839, 15.341043> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.285381, 16.810219, 15.189009>,  <20.482431, 16.912447, 15.097789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.285381, 16.810219, 15.189009>,  <19.956966, 16.639839, 15.341043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.285381, 16.810219, 15.189009> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519663, 0.282042, -0.806476,
		-0.236317, 0.859663, 0.452917,
		0.821039, 0.425948, -0.380084,
		20.531693, 16.938004, 15.074984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.766582, 17.316416, 15.032332>,  <19.956966, 16.639839, 15.341043>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.766582, 17.316416, 15.032332> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.107632, 17.218239, 14.847815>,  <20.312262, 17.159332, 14.737103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.107632, 17.218239, 14.847815>,  <19.766582, 17.316416, 15.032332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.107632, 17.218239, 14.847815> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428869, 0.175621, -0.886131,
		0.298509, 0.953370, 0.044475,
		0.852622, -0.245444, -0.461296,
		20.363419, 17.144606, 14.709426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.887987, 17.829632, 14.574410>,  <19.766582, 17.316416, 15.032332>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.887987, 17.829632, 14.574410> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.117416, 17.538063, 14.424911>,  <20.255074, 17.363121, 14.335212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.117416, 17.538063, 14.424911>,  <19.887987, 17.829632, 14.574410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.117416, 17.538063, 14.424911> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479868, 0.070785, -0.874481,
		0.663883, 0.680928, -0.309185,
		0.573573, -0.728921, -0.373748,
		20.289488, 17.319387, 14.312787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.218090, 18.080692, 13.926319>,  <19.887987, 17.829632, 14.574410>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.218090, 18.080692, 13.926319> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.239563, 17.681961, 13.902819>,  <20.252447, 17.442722, 13.888719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.239563, 17.681961, 13.902819>,  <20.218090, 18.080692, 13.926319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.239563, 17.681961, 13.902819> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282961, 0.041239, -0.958244,
		0.957628, 0.068063, -0.279849,
		0.053680, -0.996828, -0.058751,
		20.255667, 17.382912, 13.885193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.546581, 17.969456, 13.339255>,  <20.218090, 18.080692, 13.926319>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.546581, 17.969456, 13.339255> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.351002, 17.630924, 13.423788>,  <20.233654, 17.427805, 13.474508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.351002, 17.630924, 13.423788>,  <20.546581, 17.969456, 13.339255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.351002, 17.630924, 13.423788> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252070, -0.094851, -0.963049,
		0.835099, -0.524152, -0.166957,
		-0.488948, -0.846326, 0.211333,
		20.204317, 17.377026, 13.487188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.865355, 17.531048, 12.936015>,  <20.546581, 17.969456, 13.339255>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.865355, 17.531048, 12.936015> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.515060, 17.355610, 13.016737>,  <20.304884, 17.250347, 13.065170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.515060, 17.355610, 13.016737>,  <20.865355, 17.531048, 12.936015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.515060, 17.355610, 13.016737> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166622, -0.117747, -0.978965,
		0.453130, -0.890939, 0.030036,
		-0.875734, -0.438593, 0.201804,
		20.252340, 17.224031, 13.077278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.708206, 17.008821, 12.406019>,  <20.865355, 17.531048, 12.936015>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.708206, 17.008821, 12.406019> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.342106, 17.075691, 12.552647>,  <20.122446, 17.115812, 12.640623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.342106, 17.075691, 12.552647>,  <20.708206, 17.008821, 12.406019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.342106, 17.075691, 12.552647> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374154, -0.015233, -0.927241,
		-0.149430, -0.985809, 0.076492,
		-0.915248, 0.167177, 0.366568,
		20.067532, 17.125843, 12.662617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.203876, 16.516197, 11.966516>,  <20.708206, 17.008821, 12.406019>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.203876, 16.516197, 11.966516> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.989708, 16.801117, 12.148046>,  <19.861206, 16.972069, 12.256963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.989708, 16.801117, 12.148046>,  <20.203876, 16.516197, 11.966516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.989708, 16.801117, 12.148046> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646401, 0.000237, -0.762998,
		-0.543590, -0.701877, 0.460303,
		-0.535422, 0.712298, 0.453823,
		19.829081, 17.014807, 12.284192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.515041, 16.280478, 12.002165>,  <20.203876, 16.516197, 11.966516>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.515041, 16.280478, 12.002165> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.498306, 16.678913, 12.033301>,  <19.488266, 16.917974, 12.051983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.498306, 16.678913, 12.033301>,  <19.515041, 16.280478, 12.002165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.498306, 16.678913, 12.033301> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632414, 0.033914, -0.773888,
		-0.773500, -0.081604, 0.628521,
		-0.041837, 0.996088, 0.077840,
		19.485756, 16.977739, 12.056653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.738031, 16.501625, 11.973958>,  <19.515041, 16.280478, 12.002165>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.738031, 16.501625, 11.973958> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.953053, 16.824493, 11.876376>,  <19.082066, 17.018215, 11.817827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.953053, 16.824493, 11.876376>,  <18.738031, 16.501625, 11.973958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.953053, 16.824493, 11.876376> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628464, 0.190618, -0.754121,
		-0.562202, 0.558696, 0.609744,
		0.537552, 0.807170, -0.243955,
		19.114319, 17.066645, 11.803190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.273714, 16.928560, 11.705746>,  <18.738031, 16.501625, 11.973958>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.273714, 16.928560, 11.705746> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.592403, 17.123856, 11.563277>,  <18.783617, 17.241034, 11.477797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.592403, 17.123856, 11.563277>,  <18.273714, 16.928560, 11.705746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.592403, 17.123856, 11.563277> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553506, 0.352906, -0.754379,
		-0.242621, 0.798173, 0.551411,
		0.796722, 0.488238, -0.356171,
		18.831421, 17.270327, 11.456426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.085762, 17.593412, 11.609658>,  <18.273714, 16.928560, 11.705746>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.085762, 17.593412, 11.609658> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.377289, 17.500031, 11.352186>,  <18.552204, 17.444000, 11.197703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.377289, 17.500031, 11.352186>,  <18.085762, 17.593412, 11.609658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.377289, 17.500031, 11.352186> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602978, 0.226570, -0.764908,
		0.324411, 0.945602, 0.024359,
		0.728818, -0.233456, -0.643679,
		18.595934, 17.429993, 11.159082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.520380, 17.281736, 11.317503>,  <18.085762, 17.593412, 11.609658>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.520380, 17.281736, 11.317503> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.189129, 17.058399, 11.297659>,  <16.990379, 16.924397, 11.285752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.189129, 17.058399, 11.297659>,  <17.520380, 17.281736, 11.317503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.189129, 17.058399, 11.297659> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021038, -0.119401, 0.992623,
		-0.560147, 0.820974, 0.110625,
		-0.828126, -0.558342, -0.049611,
		16.940691, 16.890896, 11.282776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.919460, 17.655645, 11.591018>,  <17.520380, 17.281736, 11.317503>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.919460, 17.655645, 11.591018> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.851162, 17.261993, 11.610352>,  <16.810183, 17.025803, 11.621952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.851162, 17.261993, 11.610352>,  <16.919460, 17.655645, 11.591018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.851162, 17.261993, 11.610352> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086531, 0.063842, 0.994202,
		-0.981508, 0.165573, -0.096059,
		-0.170746, -0.984129, 0.048334,
		16.799938, 16.966755, 11.624852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.487844, 17.570116, 12.124323>,  <16.919460, 17.655645, 11.591018>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.487844, 17.570116, 12.124323> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.589611, 17.188076, 12.063586>,  <16.650671, 16.958853, 12.027144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.589611, 17.188076, 12.063586>,  <16.487844, 17.570116, 12.124323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.589611, 17.188076, 12.063586> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063733, -0.173225, 0.982818,
		-0.964992, -0.240369, -0.104943,
		0.254417, -0.955100, -0.151841,
		16.665936, 16.901546, 12.018034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.176027, 17.165932, 12.681428>,  <16.487844, 17.570116, 12.124323>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.176027, 17.165932, 12.681428> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.470615, 16.920532, 12.567427>,  <16.647369, 16.773293, 12.499025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.470615, 16.920532, 12.567427>,  <16.176027, 17.165932, 12.681428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.470615, 16.920532, 12.567427> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041455, -0.461450, 0.886197,
		-0.675198, -0.640844, -0.365277,
		0.736471, -0.613501, -0.285004,
		16.691557, 16.736483, 12.481926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.038126, 16.547592, 13.022138>,  <16.176027, 17.165932, 12.681428>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.038126, 16.547592, 13.022138> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.426414, 16.526375, 12.928425>,  <16.659388, 16.513643, 12.872197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.426414, 16.526375, 12.928425>,  <16.038126, 16.547592, 13.022138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.426414, 16.526375, 12.928425> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203771, -0.334608, 0.920062,
		-0.127196, -0.940863, -0.314002,
		0.970720, -0.053044, -0.234282,
		16.717630, 16.510462, 12.858140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.287497, 16.048555, 13.508833>,  <16.038126, 16.547592, 13.022138>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.287497, 16.048555, 13.508833> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.636070, 16.190063, 13.372921>,  <16.845215, 16.274969, 13.291373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.636070, 16.190063, 13.372921>,  <16.287497, 16.048555, 13.508833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.636070, 16.190063, 13.372921> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428558, -0.212125, 0.878260,
		0.238626, -0.910961, -0.336464,
		0.871433, 0.353770, -0.339781,
		16.897501, 16.296194, 13.270987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.688448, 15.528231, 13.575819>,  <16.287497, 16.048555, 13.508833>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.688448, 15.528231, 13.575819> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.936054, 15.841946, 13.559261>,  <17.084618, 16.030174, 13.549327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.936054, 15.841946, 13.559261>,  <16.688448, 15.528231, 13.575819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.936054, 15.841946, 13.559261> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361239, -0.237524, 0.901714,
		0.697372, -0.573127, -0.430346,
		0.619015, 0.784288, -0.041393,
		17.121759, 16.077232, 13.546844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.437218, 15.262252, 13.821839>,  <16.688448, 15.528231, 13.575819>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.437218, 15.262252, 13.821839> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.462570, 15.661163, 13.836891>,  <17.477781, 15.900511, 13.845922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.462570, 15.661163, 13.836891>,  <17.437218, 15.262252, 13.821839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.462570, 15.661163, 13.836891> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581924, -0.067564, 0.810432,
		0.810769, -0.029471, -0.584623,
		0.063383, 0.997280, 0.037629,
		17.481585, 15.960347, 13.848180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.176947, 15.440319, 14.034043>,  <17.437218, 15.262252, 13.821839>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.176947, 15.440319, 14.034043> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.965176, 15.764660, 14.133825>,  <17.838114, 15.959264, 14.193694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.965176, 15.764660, 14.133825>,  <18.176947, 15.440319, 14.034043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.965176, 15.764660, 14.133825> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530218, 0.086720, 0.843415,
		0.662251, 0.578792, -0.475840,
		-0.529427, 0.810851, 0.249455,
		17.806347, 16.007915, 14.208662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.672468, 15.931685, 14.360175>,  <18.176947, 15.440319, 14.034043>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.672468, 15.931685, 14.360175> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.307240, 16.033035, 14.487991>,  <18.088102, 16.093845, 14.564681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.307240, 16.033035, 14.487991>,  <18.672468, 15.931685, 14.360175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.307240, 16.033035, 14.487991> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378505, 0.234905, 0.895295,
		0.151783, 0.938414, -0.310388,
		-0.913069, 0.253375, 0.319540,
		18.033319, 16.109047, 14.583854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.810543, 16.364183, 14.862027>,  <18.672468, 15.931685, 14.360175>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.810543, 16.364183, 14.862027> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.422928, 16.320492, 14.950602>,  <18.190359, 16.294277, 15.003746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.422928, 16.320492, 14.950602>,  <18.810543, 16.364183, 14.862027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.422928, 16.320492, 14.950602> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205205, 0.142474, 0.968293,
		-0.137315, 0.983753, -0.115648,
		-0.969038, -0.109229, 0.221435,
		18.132215, 16.287724, 15.017032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.629036, 16.788795, 15.373246>,  <18.810543, 16.364183, 14.862027>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.629036, 16.788795, 15.373246> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.319927, 16.536213, 15.398829>,  <18.134462, 16.384665, 15.414178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.319927, 16.536213, 15.398829>,  <18.629036, 16.788795, 15.373246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.319927, 16.536213, 15.398829> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123982, -0.051362, 0.990954,
		-0.622459, 0.773709, 0.117980,
		-0.772770, -0.631455, 0.063956,
		18.088097, 16.346777, 15.418015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.138803, 16.951403, 15.893989>,  <18.629036, 16.788795, 15.373246>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.138803, 16.951403, 15.893989> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.063194, 16.560272, 15.857922>,  <18.017828, 16.325594, 15.836282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.063194, 16.560272, 15.857922>,  <18.138803, 16.951403, 15.893989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.063194, 16.560272, 15.857922> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208297, -0.129659, 0.969433,
		-0.959626, 0.164465, 0.228187,
		-0.189025, -0.977824, -0.090167,
		18.006487, 16.266926, 15.830872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.549313, 16.841005, 16.310335>,  <18.138803, 16.951403, 15.893989>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.549313, 16.841005, 16.310335> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.777241, 16.513889, 16.278025>,  <17.913998, 16.317619, 16.258638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.777241, 16.513889, 16.278025>,  <17.549313, 16.841005, 16.310335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.777241, 16.513889, 16.278025> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058002, -0.138073, 0.988722,
		-0.819720, -0.558709, -0.126111,
		0.569820, -0.817790, -0.080775,
		17.948187, 16.268553, 16.253792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.215626, 16.331421, 16.785301>,  <17.549313, 16.841005, 16.310335>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.215626, 16.331421, 16.785301> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.589973, 16.212063, 16.710350>,  <17.814583, 16.140448, 16.665380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.589973, 16.212063, 16.710350>,  <17.215626, 16.331421, 16.785301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.589973, 16.212063, 16.710350> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110262, -0.257063, 0.960084,
		-0.334656, -0.919172, -0.207675,
		0.935868, -0.298399, -0.187378,
		17.870733, 16.122543, 16.654137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.269594, 15.663381, 17.095530>,  <17.215626, 16.331421, 16.785301>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.269594, 15.663381, 17.095530> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.647366, 15.788391, 17.054773>,  <17.874029, 15.863398, 17.030319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.647366, 15.788391, 17.054773>,  <17.269594, 15.663381, 17.095530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.647366, 15.788391, 17.054773> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096303, 0.033304, 0.994795,
		0.314294, -0.949325, 0.001356,
		0.944428, 0.312528, -0.101890,
		17.930695, 15.882150, 17.024206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.701464, 15.241672, 17.559027>,  <17.269594, 15.663381, 17.095530>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.701464, 15.241672, 17.559027> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.946293, 15.547432, 17.477978>,  <18.093191, 15.730888, 17.429348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.946293, 15.547432, 17.477978>,  <17.701464, 15.241672, 17.559027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.946293, 15.547432, 17.477978> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319402, -0.004570, 0.947608,
		0.723427, -0.644724, -0.246948,
		0.612074, 0.764401, -0.202620,
		18.129915, 15.776752, 17.417192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.295660, 15.088906, 17.942327>,  <17.701464, 15.241672, 17.559027>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.295660, 15.088906, 17.942327> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.413055, 15.464066, 17.868341>,  <18.483494, 15.689161, 17.823950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.413055, 15.464066, 17.868341>,  <18.295660, 15.088906, 17.942327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.413055, 15.464066, 17.868341> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480701, 0.022455, 0.876597,
		0.826311, -0.346186, -0.444258,
		0.293489, 0.937897, -0.184967,
		18.501102, 15.745435, 17.812851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<19.297535, 15.214878, 17.924915> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.104130, 15.557278, 17.998108>,  <18.988087, 15.762717, 18.042025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.104130, 15.557278, 17.998108>,  <19.297535, 15.214878, 17.924915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.104130, 15.557278, 17.998108> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572760, 0.151307, 0.805638,
		0.661938, 0.494342, -0.563440,
		-0.483513, 0.855998, 0.182984,
		18.959076, 15.814077, 18.053003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.848824, 15.647154, 18.140793>,  <19.297535, 15.214878, 17.924915>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.848824, 15.647154, 18.140793> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.514874, 15.819935, 18.277262>,  <19.314503, 15.923604, 18.359144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.514874, 15.819935, 18.277262>,  <19.848824, 15.647154, 18.140793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.514874, 15.819935, 18.277262> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457913, 0.201083, 0.865957,
		0.305449, 0.879194, -0.365676,
		-0.834875, 0.431953, 0.341173,
		19.264410, 15.949521, 18.379614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.056139, 16.249172, 18.427057>,  <19.848824, 15.647154, 18.140793>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.056139, 16.249172, 18.427057> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.703030, 16.208912, 18.610615>,  <19.491163, 16.184755, 18.720749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.703030, 16.208912, 18.610615>,  <20.056139, 16.249172, 18.427057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.703030, 16.208912, 18.610615> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418226, 0.276586, 0.865209,
		-0.214009, 0.955703, -0.202067,
		-0.882773, -0.100653, 0.458892,
		19.438198, 16.178717, 18.748281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.923019, 16.917170, 18.765541>,  <20.056139, 16.249172, 18.427057>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.923019, 16.917170, 18.765541> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.716843, 16.626854, 18.947773>,  <19.593136, 16.452665, 19.057112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.716843, 16.626854, 18.947773>,  <19.923019, 16.917170, 18.765541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.716843, 16.626854, 18.947773> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422327, 0.247437, 0.872018,
		-0.745628, 0.641877, 0.178981,
		-0.515441, -0.725789, 0.455578,
		19.562210, 16.409117, 19.084446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.591413, 17.201319, 19.373608>,  <19.923019, 16.917170, 18.765541>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.591413, 17.201319, 19.373608> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.629601, 16.812244, 19.458244>,  <19.652512, 16.578800, 19.509026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.629601, 16.812244, 19.458244>,  <19.591413, 17.201319, 19.373608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.629601, 16.812244, 19.458244> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326472, 0.231398, 0.916445,
		-0.940373, -0.018411, 0.339645,
		0.095466, -0.972685, 0.211590,
		19.658239, 16.520439, 19.521721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.704880, 17.263935, 20.096592>,  <19.591413, 17.201319, 19.373608>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.704880, 17.263935, 20.096592> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.727150, 16.866955, 20.052883>,  <19.740513, 16.628767, 20.026659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.727150, 16.866955, 20.052883>,  <19.704880, 17.263935, 20.096592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.727150, 16.866955, 20.052883> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049742, -0.106547, 0.993063,
		-0.997209, -0.060726, 0.043434,
		0.055677, -0.992452, -0.109270,
		19.743853, 16.569220, 20.020102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.160238, 16.910486, 20.547472>,  <19.704880, 17.263935, 20.096592>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.160238, 16.910486, 20.547472> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.510204, 16.727940, 20.482660>,  <19.720184, 16.618412, 20.443773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.510204, 16.727940, 20.482660>,  <19.160238, 16.910486, 20.547472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.510204, 16.727940, 20.482660> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092683, -0.170604, 0.980971,
		-0.475328, -0.873282, -0.106966,
		0.874913, -0.456368, -0.162032,
		19.772678, 16.591030, 20.434052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.041700, 16.277172, 20.979683>,  <19.160238, 16.910486, 20.547472>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.041700, 16.277172, 20.979683> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.432785, 16.290012, 20.896692>,  <19.667437, 16.297716, 20.846899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.432785, 16.290012, 20.896692>,  <19.041700, 16.277172, 20.979683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.432785, 16.290012, 20.896692> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209117, -0.236536, 0.948852,
		-0.018618, -0.971092, -0.237976,
		0.977713, 0.032099, -0.207476,
		19.726099, 16.299643, 20.834450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.342304, 15.635077, 21.274487>,  <19.041700, 16.277172, 20.979683>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.342304, 15.635077, 21.274487> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.625687, 15.916458, 21.251713>,  <19.795717, 16.085287, 21.238049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.625687, 15.916458, 21.251713>,  <19.342304, 15.635077, 21.274487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.625687, 15.916458, 21.251713> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314274, -0.242218, 0.917912,
		0.631918, -0.668194, -0.392678,
		0.708457, 0.703454, -0.056934,
		19.838224, 16.127495, 21.234632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.917055, 15.367901, 21.702770>,  <19.342304, 15.635077, 21.274487>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.917055, 15.367901, 21.702770> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.999474, 15.754814, 21.643562>,  <20.048925, 15.986962, 21.608038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.999474, 15.754814, 21.643562>,  <19.917055, 15.367901, 21.702770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.999474, 15.754814, 21.643562> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439961, 0.043540, 0.896961,
		0.874059, -0.249939, -0.416595,
		0.206047, 0.967282, -0.148020,
		20.061287, 16.044998, 21.599155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.662928, 15.406095, 21.835180>,  <19.917055, 15.367901, 21.702770>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.662928, 15.406095, 21.835180> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.515293, 15.774506, 21.884949>,  <20.426712, 15.995552, 21.914810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.515293, 15.774506, 21.884949>,  <20.662928, 15.406095, 21.835180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.515293, 15.774506, 21.884949> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317105, -0.001042, 0.948390,
		0.873624, 0.389493, -0.291678,
		-0.369088, 0.921029, 0.124421,
		20.404568, 16.050814, 21.922276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.108389, 15.775991, 22.266636>,  <20.662928, 15.406095, 21.835180>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.108389, 15.775991, 22.266636> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.789555, 16.016800, 22.285500>,  <20.598253, 16.161285, 22.296818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.789555, 16.016800, 22.285500>,  <21.108389, 15.775991, 22.266636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.789555, 16.016800, 22.285500> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326483, 0.363937, 0.872329,
		0.507997, 0.710719, -0.486639,
		-0.797087, 0.602021, 0.047159,
		20.550428, 16.197407, 22.299646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.351364, 16.314442, 22.584188>,  <21.108389, 15.775991, 22.266636>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.351364, 16.314442, 22.584188> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.957153, 16.369621, 22.623590>,  <20.720627, 16.402729, 22.647232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.957153, 16.369621, 22.623590>,  <21.351364, 16.314442, 22.584188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.957153, 16.369621, 22.623590> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139018, 0.325258, 0.935351,
		0.096991, 0.935509, -0.339729,
		-0.985529, 0.137949, 0.098506,
		20.661495, 16.411005, 22.653143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.232666, 16.907862, 22.990736>,  <21.351364, 16.314442, 22.584188>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.232666, 16.907862, 22.990736> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.892807, 16.702400, 23.038498>,  <20.688892, 16.579123, 23.067156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.892807, 16.702400, 23.038498>,  <21.232666, 16.907862, 22.990736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.892807, 16.702400, 23.038498> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027540, 0.269337, 0.962652,
		-0.526631, 0.814627, -0.242988,
		-0.849648, -0.513654, 0.119407,
		20.637913, 16.548304, 23.074320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.712097, 17.443811, 23.268293>,  <21.232666, 16.907862, 22.990736>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.712097, 17.443811, 23.268293> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.641014, 17.064079, 23.371975>,  <20.598364, 16.836239, 23.434185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.641014, 17.064079, 23.371975>,  <20.712097, 17.443811, 23.268293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.641014, 17.064079, 23.371975> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012009, 0.265471, 0.964044,
		-0.984010, 0.168208, -0.058578,
		-0.177710, -0.949332, 0.259206,
		20.587702, 16.779280, 23.449738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.159304, 17.440031, 23.784159>,  <20.712097, 17.443811, 23.268293>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.159304, 17.440031, 23.784159> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.332607, 17.084469, 23.843668>,  <20.436588, 16.871132, 23.879374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.332607, 17.084469, 23.843668>,  <20.159304, 17.440031, 23.784159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.332607, 17.084469, 23.843668> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208440, 0.061768, 0.976083,
		-0.876836, -0.453905, -0.158523,
		0.433257, -0.888906, 0.148772,
		20.462585, 16.817797, 23.888300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.729643, 17.116371, 24.292280>,  <20.159304, 17.440031, 23.784159>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.729643, 17.116371, 24.292280> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.071674, 16.909176, 24.283091>,  <20.276894, 16.784859, 24.277576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.071674, 16.909176, 24.283091>,  <19.729643, 17.116371, 24.292280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.071674, 16.909176, 24.283091> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057168, -0.138225, 0.988750,
		-0.515337, -0.844145, -0.147806,
		0.855078, -0.517989, -0.022975,
		20.328197, 16.753778, 24.276197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.535002, 16.571598, 24.602375>,  <19.729643, 17.116371, 24.292280>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.535002, 16.571598, 24.602375> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.934727, 16.560894, 24.612658>,  <20.174561, 16.554472, 24.618826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.934727, 16.560894, 24.612658>,  <19.535002, 16.571598, 24.602375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.934727, 16.560894, 24.612658> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030845, -0.214035, 0.976339,
		-0.020626, -0.976459, -0.214713,
		0.999311, -0.026761, 0.025704,
		20.234520, 16.552866, 24.620369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.653877, 16.160507, 25.186764>,  <19.535002, 16.571598, 24.602375>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.653877, 16.160507, 25.186764> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.017368, 16.309643, 25.111713>,  <20.235464, 16.399124, 25.066683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.017368, 16.309643, 25.111713>,  <19.653877, 16.160507, 25.186764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.017368, 16.309643, 25.111713> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195336, 0.017362, 0.980583,
		0.368858, -0.927733, -0.057051,
		0.908729, 0.372840, -0.187624,
		20.289988, 16.421495, 25.055426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.178642, 15.682151, 25.490410>,  <19.653877, 16.160507, 25.186764>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.178642, 15.682151, 25.490410> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.311428, 16.057846, 25.455465>,  <20.391100, 16.283262, 25.434498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.311428, 16.057846, 25.455465>,  <20.178642, 15.682151, 25.490410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.311428, 16.057846, 25.455465> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174884, 0.029729, 0.984140,
		0.926939, -0.341977, -0.154389,
		0.331963, 0.939238, -0.087364,
		20.411016, 16.339617, 25.429256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.714619, 15.677189, 25.916380>,  <20.178642, 15.682151, 25.490410>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.714619, 15.677189, 25.916380> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.666100, 16.070896, 25.864990>,  <20.636988, 16.307119, 25.834156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.666100, 16.070896, 25.864990>,  <20.714619, 15.677189, 25.916380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.666100, 16.070896, 25.864990> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117755, 0.142784, 0.982724,
		0.985607, 0.104073, -0.133221,
		-0.121297, 0.984267, -0.128474,
		20.629711, 16.366177, 25.826448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.283436, 16.104721, 26.276524>,  <20.714619, 15.677189, 25.916380>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.283436, 16.104721, 26.276524> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.962746, 16.341957, 26.246914>,  <20.770332, 16.484299, 26.229149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.962746, 16.341957, 26.246914>,  <21.283436, 16.104721, 26.276524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.962746, 16.341957, 26.246914> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155784, 0.326925, 0.932122,
		0.577033, 0.735775, -0.354498,
		-0.801726, 0.593090, -0.074024,
		20.722227, 16.519884, 26.224707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.420538, 16.776842, 26.441095>,  <21.283436, 16.104721, 26.276524>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.420538, 16.776842, 26.441095> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.036873, 16.708862, 26.531536>,  <20.806673, 16.668076, 26.585800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.036873, 16.708862, 26.531536>,  <21.420538, 16.776842, 26.441095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.036873, 16.708862, 26.531536> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171112, 0.287868, 0.942259,
		-0.225223, 0.942470, -0.247033,
		-0.959164, -0.169948, 0.226102,
		20.749125, 16.657877, 26.599367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.145662, 17.440678, 26.594484>,  <21.420538, 16.776842, 26.441095>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.145662, 17.440678, 26.594484> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.982414, 17.132515, 26.790407>,  <20.884466, 16.947617, 26.907961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.982414, 17.132515, 26.790407>,  <21.145662, 17.440678, 26.594484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.982414, 17.132515, 26.790407> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260960, 0.415686, 0.871266,
		-0.874836, 0.483401, 0.031396,
		-0.408120, -0.770408, 0.489806,
		20.859978, 16.901392, 26.937349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.797005, 17.771992, 26.688868>,  <21.145662, 17.440678, 26.594484>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.797005, 17.771992, 26.688868> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.195343, 17.761547, 26.723759>,  <22.434345, 17.755281, 26.744694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.195343, 17.761547, 26.723759>,  <21.797005, 17.771992, 26.688868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.195343, 17.761547, 26.723759> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089983, 0.135709, -0.986654,
		0.013924, 0.990405, 0.137494,
		0.995846, -0.026111, 0.087230,
		22.494097, 17.753714, 26.749928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.015284, 18.288839, 26.271576>,  <21.797005, 17.771992, 26.688868>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.015284, 18.288839, 26.271576> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.324047, 18.037548, 26.310539>,  <22.509304, 17.886774, 26.333918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.324047, 18.037548, 26.310539>,  <22.015284, 18.288839, 26.271576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.324047, 18.037548, 26.310539> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233111, 0.137148, -0.962730,
		0.591455, 0.765845, 0.252313,
		0.771907, -0.628229, 0.097410,
		22.555618, 17.849079, 26.339762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.587311, 18.599007, 25.953220>,  <22.015284, 18.288839, 26.271576>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.587311, 18.599007, 25.953220> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.699612, 18.215130, 25.958405>,  <22.766993, 17.984804, 25.961515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.699612, 18.215130, 25.958405>,  <22.587311, 18.599007, 25.953220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.699612, 18.215130, 25.958405> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334775, 0.085263, -0.938433,
		0.899501, 0.267808, 0.345219,
		0.280754, -0.959692, 0.012961,
		22.783838, 17.927221, 25.962294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.191057, 18.542337, 25.460207>,  <22.587311, 18.599007, 25.953220>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.191057, 18.542337, 25.460207> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.099411, 18.155788, 25.506910>,  <23.044422, 17.923859, 25.534933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.099411, 18.155788, 25.506910>,  <23.191057, 18.542337, 25.460207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.099411, 18.155788, 25.506910> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000501, -0.120068, -0.992766,
		0.973399, -0.227401, 0.027994,
		-0.229117, -0.966371, 0.116760,
		23.030676, 17.865877, 25.541939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.716894, 18.309080, 25.013975>,  <23.191057, 18.542337, 25.460207>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.716894, 18.309080, 25.013975> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.404125, 18.061348, 25.042341>,  <23.216465, 17.912708, 25.059361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.404125, 18.061348, 25.042341>,  <23.716894, 18.309080, 25.013975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.404125, 18.061348, 25.042341> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088479, -0.222868, -0.970825,
		0.617067, -0.752834, 0.229063,
		-0.781921, -0.619331, 0.070915,
		23.169548, 17.875549, 25.063616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.962799, 17.706619, 24.736143>,  <23.716894, 18.309080, 25.013975>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.962799, 17.706619, 24.736143> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.565861, 17.680267, 24.694363>,  <23.327698, 17.664455, 24.669294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.565861, 17.680267, 24.694363>,  <23.962799, 17.706619, 24.736143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.565861, 17.680267, 24.694363> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121244, -0.359069, -0.925403,
		0.023460, -0.930983, 0.364308,
		-0.992345, -0.065880, -0.104452,
		23.268158, 17.660503, 24.663027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.832455, 17.103933, 24.335838>,  <23.962799, 17.706619, 24.736143>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.832455, 17.103933, 24.335838> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.471199, 17.272888, 24.305042>,  <23.254446, 17.374260, 24.286566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.471199, 17.272888, 24.305042>,  <23.832455, 17.103933, 24.335838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.471199, 17.272888, 24.305042> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045261, -0.084653, -0.995382,
		-0.426954, -0.902454, 0.057336,
		-0.903140, 0.422387, -0.076989,
		23.200256, 17.399605, 24.281946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.503933, 16.848446, 23.658939>,  <23.832455, 17.103933, 24.335838>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.503933, 16.848446, 23.658939> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.283108, 17.179832, 23.696609>,  <23.150614, 17.378664, 23.719212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.283108, 17.179832, 23.696609>,  <23.503933, 16.848446, 23.658939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.283108, 17.179832, 23.696609> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103574, 0.043933, -0.993651,
		-0.827346, -0.558310, 0.061554,
		-0.552061, 0.828468, 0.094174,
		23.117489, 17.428373, 23.724861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.971222, 16.778221, 23.200232>,  <23.503933, 16.848446, 23.658939>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.971222, 16.778221, 23.200232> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.983913, 17.174480, 23.253305>,  <22.991528, 17.412237, 23.285149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.983913, 17.174480, 23.253305>,  <22.971222, 16.778221, 23.200232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.983913, 17.174480, 23.253305> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177197, 0.136221, -0.974702,
		-0.983664, 0.007413, 0.179862,
		0.031727, 0.990651, 0.132683,
		22.993431, 17.471676, 23.293110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.342369, 17.002808, 22.877934>,  <22.971222, 16.778221, 23.200232>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.342369, 17.002808, 22.877934> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.589626, 17.315331, 22.912476>,  <22.737982, 17.502844, 22.933201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.589626, 17.315331, 22.912476>,  <22.342369, 17.002808, 22.877934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.589626, 17.315331, 22.912476> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317497, 0.348658, -0.881835,
		-0.719092, 0.517684, 0.463583,
		0.618144, 0.781307, 0.086354,
		22.775070, 17.549723, 22.938381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.015205, 17.498964, 22.642244>,  <22.342369, 17.002808, 22.877934>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.015205, 17.498964, 22.642244> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.376160, 17.665905, 22.599314>,  <22.592731, 17.766069, 22.573555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.376160, 17.665905, 22.599314>,  <22.015205, 17.498964, 22.642244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.376160, 17.665905, 22.599314> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191826, 0.166008, -0.967287,
		-0.385881, 0.893454, 0.229862,
		0.902385, 0.417351, -0.107329,
		22.646875, 17.791111, 22.567116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.962736, 18.059296, 22.198606>,  <22.015205, 17.498964, 22.642244>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.962736, 18.059296, 22.198606> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.340622, 17.930710, 22.172749>,  <22.567352, 17.853558, 22.157234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.340622, 17.930710, 22.172749>,  <21.962736, 18.059296, 22.198606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.340622, 17.930710, 22.172749> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025105, 0.125660, -0.991756,
		0.326937, 0.938547, 0.110642,
		0.944713, -0.321464, -0.064645,
		22.624035, 17.834270, 22.153355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.195864, 18.516199, 21.555027>,  <21.962736, 18.059296, 22.198606>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.195864, 18.516199, 21.555027> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.443874, 18.208324, 21.615885>,  <22.592682, 18.023600, 21.652399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.443874, 18.208324, 21.615885>,  <22.195864, 18.516199, 21.555027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.443874, 18.208324, 21.615885> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009230, -0.201060, -0.979536,
		0.784526, 0.605935, -0.131766,
		0.620027, -0.769687, 0.152144,
		22.629883, 17.977419, 21.661528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.596928, 18.373203, 20.896170>,  <22.195864, 18.516199, 21.555027>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.596928, 18.373203, 20.896170> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.694107, 18.041458, 21.097418>,  <22.752415, 17.842411, 21.218166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.694107, 18.041458, 21.097418>,  <22.596928, 18.373203, 20.896170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.694107, 18.041458, 21.097418> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099694, -0.494566, -0.863404,
		0.964902, 0.259922, -0.037472,
		0.242950, -0.829365, 0.503120,
		22.766993, 17.792648, 21.248354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.091663, 18.074083, 20.529772>,  <22.596928, 18.373203, 20.896170>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.091663, 18.074083, 20.529772> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.947037, 17.764175, 20.737234>,  <22.860262, 17.578232, 20.861712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.947037, 17.764175, 20.737234>,  <23.091663, 18.074083, 20.529772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.947037, 17.764175, 20.737234> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058478, -0.536350, -0.841967,
		0.930511, -0.334757, 0.148619,
		-0.361566, -0.774769, 0.518656,
		22.838568, 17.531744, 20.892830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.281353, 17.506441, 20.083082>,  <23.091663, 18.074083, 20.529772>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.281353, 17.506441, 20.083082> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.991093, 17.362114, 20.317429>,  <22.816936, 17.275518, 20.458036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.991093, 17.362114, 20.317429>,  <23.281353, 17.506441, 20.083082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.991093, 17.362114, 20.317429> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331242, -0.563119, -0.757084,
		0.603082, -0.743443, 0.289110,
		-0.725652, -0.360818, 0.585866,
		22.773397, 17.253868, 20.493189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.446571, 16.832792, 20.195372>,  <23.281353, 17.506441, 20.083082>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.446571, 16.832792, 20.195372> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.049206, 16.874462, 20.214445>,  <22.810785, 16.899464, 20.225889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.049206, 16.874462, 20.214445>,  <23.446571, 16.832792, 20.195372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.049206, 16.874462, 20.214445> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103311, -0.634581, -0.765920,
		-0.049530, -0.765803, 0.641165,
		-0.993415, 0.104175, 0.047686,
		22.751181, 16.905714, 20.228750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.115412, 16.113741, 20.230074>,  <23.446571, 16.832792, 20.195372>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.115412, 16.113741, 20.230074> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.819321, 16.353493, 20.108215>,  <22.641666, 16.497343, 20.035101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.819321, 16.353493, 20.108215>,  <23.115412, 16.113741, 20.230074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.819321, 16.353493, 20.108215> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341870, -0.725686, -0.597080,
		-0.578953, -0.337826, 0.742083,
		-0.740228, 0.599378, -0.304645,
		22.597252, 16.533306, 20.016821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.656336, 15.627742, 19.937534>,  <23.115412, 16.113741, 20.230074>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.656336, 15.627742, 19.937534> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.511890, 15.971390, 19.792479>,  <22.425222, 16.177578, 19.705444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.511890, 15.971390, 19.792479>,  <22.656336, 15.627742, 19.937534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.511890, 15.971390, 19.792479> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445221, -0.500537, -0.742456,
		-0.819375, -0.106656, 0.563249,
		-0.361114, 0.859120, -0.362642,
		22.403557, 16.229126, 19.683685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.924578, 15.529036, 19.707407>,  <22.656336, 15.627742, 19.937534>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.924578, 15.529036, 19.707407> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.047878, 15.864872, 19.528492>,  <22.121859, 16.066374, 19.421143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.047878, 15.864872, 19.528492>,  <21.924578, 15.529036, 19.707407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.047878, 15.864872, 19.528492> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326583, -0.348211, -0.878688,
		-0.893490, 0.416934, 0.166860,
		0.308253, 0.839592, -0.447287,
		22.140354, 16.116749, 19.394306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<17.241501, 15.379234, 15.475876> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.500954, 15.683197, 15.458805>,  <17.656626, 15.865575, 15.448563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.500954, 15.683197, 15.458805>,  <17.241501, 15.379234, 15.475876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.500954, 15.683197, 15.458805> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511458, 0.393665, -0.763832,
		-0.563640, 0.517272, 0.644003,
		0.648630, 0.759906, -0.042678,
		17.695543, 15.911169, 15.446002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.883303, 16.061924, 15.409922>,  <17.241501, 15.379234, 15.475876>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.883303, 16.061924, 15.409922> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.250595, 16.151390, 15.279182>,  <17.470970, 16.205069, 15.200739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.250595, 16.151390, 15.279182>,  <16.883303, 16.061924, 15.409922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.250595, 16.151390, 15.279182> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378301, 0.251034, -0.890994,
		-0.117233, 0.941784, 0.315119,
		0.918229, 0.223664, -0.326848,
		17.526064, 16.218489, 15.181128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.874239, 16.617342, 14.954944>,  <16.883303, 16.061924, 15.409922>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.874239, 16.617342, 14.954944> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.227310, 16.463745, 14.846548>,  <17.439152, 16.371588, 14.781510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.227310, 16.463745, 14.846548>,  <16.874239, 16.617342, 14.954944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.227310, 16.463745, 14.846548> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211819, 0.189683, -0.958725,
		0.419543, 0.903644, 0.086092,
		0.882676, -0.383990, -0.270989,
		17.492113, 16.348549, 14.765251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.130526, 17.084103, 14.545012>,  <16.874239, 16.617342, 14.954944>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.130526, 17.084103, 14.545012> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.321293, 16.751495, 14.431082>,  <17.435753, 16.551931, 14.362724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.321293, 16.751495, 14.431082>,  <17.130526, 17.084103, 14.545012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.321293, 16.751495, 14.431082> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214078, 0.204401, -0.955191,
		0.852479, 0.516521, -0.080527,
		0.476917, -0.831520, -0.284824,
		17.464369, 16.502039, 14.345634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.475544, 17.262390, 13.997843>,  <17.130526, 17.084103, 14.545012>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.475544, 17.262390, 13.997843> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.485161, 16.866417, 13.942055>,  <17.490931, 16.628832, 13.908582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.485161, 16.866417, 13.942055>,  <17.475544, 17.262390, 13.997843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.485161, 16.866417, 13.942055> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236587, 0.129914, -0.962886,
		0.971313, 0.056149, -0.231082,
		0.024044, -0.989934, -0.139471,
		17.492374, 16.569437, 13.900213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.813761, 17.147146, 13.395624>,  <17.475544, 17.262390, 13.997843>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.813761, 17.147146, 13.395624> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.587494, 16.821003, 13.444967>,  <17.451735, 16.625317, 13.474573>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.587494, 16.821003, 13.444967>,  <17.813761, 17.147146, 13.395624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.587494, 16.821003, 13.444967> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241801, 0.020984, -0.970099,
		0.788388, -0.578578, -0.209024,
		-0.565665, -0.815356, 0.123357,
		17.417795, 16.576397, 13.481975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.042418, 16.731888, 12.887509>,  <17.813761, 17.147146, 13.395624>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.042418, 16.731888, 12.887509> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.684650, 16.590477, 12.997076>,  <17.469990, 16.505630, 13.062816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.684650, 16.590477, 12.997076>,  <18.042418, 16.731888, 12.887509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.684650, 16.590477, 12.997076> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305990, 0.037064, -0.951313,
		0.326165, -0.934689, -0.141328,
		-0.894419, -0.353530, 0.273916,
		17.416325, 16.484419, 13.079251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.894733, 16.272923, 12.372023>,  <18.042418, 16.731888, 12.887509>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.894733, 16.272923, 12.372023> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.543488, 16.370510, 12.536653>,  <17.332741, 16.429062, 12.635430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.543488, 16.370510, 12.536653>,  <17.894733, 16.272923, 12.372023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.543488, 16.370510, 12.536653> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417549, 0.029222, -0.908184,
		-0.233595, -0.969343, 0.076208,
		-0.878115, 0.243968, 0.411574,
		17.280052, 16.443701, 12.660125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.579138, 15.939632, 11.985019>,  <17.894733, 16.272923, 12.372023>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.579138, 15.939632, 11.985019> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.293682, 16.172318, 12.141137>,  <17.122410, 16.311928, 12.234808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.293682, 16.172318, 12.141137>,  <17.579138, 15.939632, 11.985019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.293682, 16.172318, 12.141137> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422175, 0.087463, -0.902285,
		-0.559008, -0.808678, 0.183168,
		-0.713637, 0.581714, 0.390296,
		17.079590, 16.346832, 12.258225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.040117, 15.645751, 11.849996>,  <17.579138, 15.939632, 11.985019>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.040117, 15.645751, 11.849996> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.914200, 16.022366, 11.898019>,  <16.838650, 16.248335, 11.926833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.914200, 16.022366, 11.898019>,  <17.040117, 15.645751, 11.849996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.914200, 16.022366, 11.898019> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232583, 0.046115, -0.971483,
		-0.920223, -0.333741, 0.204469,
		-0.314794, 0.941536, 0.120059,
		16.819761, 16.304827, 11.934036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.462433, 15.766859, 11.498326>,  <17.040117, 15.645751, 11.849996>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.462433, 15.766859, 11.498326> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.556847, 16.151241, 11.556086>,  <16.613495, 16.381870, 11.590741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.556847, 16.151241, 11.556086>,  <16.462433, 15.766859, 11.498326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.556847, 16.151241, 11.556086> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221703, 0.197932, -0.954815,
		-0.946116, 0.193355, 0.259766,
		0.236034, 0.960956, 0.144399,
		16.627657, 16.439528, 11.599405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.868318, 16.150995, 11.238901>,  <16.462433, 15.766859, 11.498326>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.868318, 16.150995, 11.238901> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.209995, 16.358913, 11.244007>,  <16.415003, 16.483665, 11.247071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.209995, 16.358913, 11.244007>,  <15.868318, 16.150995, 11.238901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.209995, 16.358913, 11.244007> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147594, 0.265941, -0.952624,
		-0.498565, 0.811842, 0.303884,
		0.854195, 0.519797, 0.012766,
		16.466253, 16.514853, 11.247837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.639487, 16.792208, 10.937463>,  <15.868318, 16.150995, 11.238901>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.639487, 16.792208, 10.937463> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.036358, 16.742325, 10.939857>,  <16.274481, 16.712395, 10.941293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.036358, 16.742325, 10.939857>,  <15.639487, 16.792208, 10.937463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.036358, 16.742325, 10.939857> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050198, 0.354589, -0.933674,
		0.114312, 0.926669, 0.358074,
		0.992176, -0.124705, 0.005983,
		16.334011, 16.704914, 10.941651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.832399, 17.349245, 10.586295>,  <15.639487, 16.792208, 10.937463>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.832399, 17.349245, 10.586295> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.134903, 17.087799, 10.598029>,  <16.316404, 16.930931, 10.605069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.134903, 17.087799, 10.598029>,  <15.832399, 17.349245, 10.586295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.134903, 17.087799, 10.598029> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353645, 0.370637, -0.858815,
		0.550462, 0.659861, 0.511445,
		0.756258, -0.653615, 0.029335,
		16.361780, 16.891714, 10.606830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.773201, 18.007252, 10.256456>,  <15.832399, 17.349245, 10.586295>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.773201, 18.007252, 10.256456> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.529645, 18.324524, 10.260861>,  <15.383512, 18.514887, 10.263504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.529645, 18.324524, 10.260861>,  <15.773201, 18.007252, 10.256456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.529645, 18.324524, 10.260861> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520841, 0.389280, 0.759728,
		0.598313, 0.468325, -0.650148,
		-0.608889, 0.793179, 0.011012,
		15.346978, 18.562477, 10.264165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.098240, 18.566832, 10.442779>,  <15.773201, 18.007252, 10.256456>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.098240, 18.566832, 10.442779> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.730920, 18.679817, 10.553728>,  <15.510528, 18.747608, 10.620297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.730920, 18.679817, 10.553728>,  <16.098240, 18.566832, 10.442779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.730920, 18.679817, 10.553728> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369208, 0.358244, 0.857524,
		0.142851, 0.889875, -0.433263,
		-0.918302, 0.282463, 0.277373,
		15.455429, 18.764557, 10.636940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.188887, 19.234776, 10.714250>,  <16.098240, 18.566832, 10.442779>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.188887, 19.234776, 10.714250> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.834323, 19.105007, 10.846328>,  <15.621585, 19.027147, 10.925574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.834323, 19.105007, 10.846328>,  <16.188887, 19.234776, 10.714250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.834323, 19.105007, 10.846328> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276816, 0.200222, 0.939832,
		-0.371013, 0.924480, -0.087674,
		-0.886410, -0.324420, 0.330196,
		15.568400, 19.007681, 10.945387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.990333, 19.744171, 11.193555>,  <16.188887, 19.234776, 10.714250>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.990333, 19.744171, 11.193555> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.747148, 19.445736, 11.302173>,  <15.601236, 19.266676, 11.367343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.747148, 19.445736, 11.302173>,  <15.990333, 19.744171, 11.193555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.747148, 19.445736, 11.302173> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134987, 0.239900, 0.961367,
		-0.782406, 0.621131, -0.045139,
		-0.607964, -0.746086, 0.271544,
		15.564758, 19.221910, 11.383636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.322344, 20.035032, 11.551948>,  <15.990333, 19.744171, 11.193555>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.322344, 20.035032, 11.551948> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.382892, 19.656265, 11.665389>,  <15.419220, 19.429005, 11.733454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.382892, 19.656265, 11.665389>,  <15.322344, 20.035032, 11.551948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.382892, 19.656265, 11.665389> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309644, 0.227045, 0.923348,
		-0.938727, -0.227583, -0.258840,
		0.151370, -0.946920, 0.283603,
		15.428303, 19.372189, 11.750470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.712819, 19.902506, 11.939206>,  <15.322344, 20.035032, 11.551948>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.712819, 19.902506, 11.939206> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.001645, 19.644760, 12.039938>,  <15.174941, 19.490112, 12.100377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.001645, 19.644760, 12.039938>,  <14.712819, 19.902506, 11.939206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.001645, 19.644760, 12.039938> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114268, 0.247926, 0.962016,
		-0.682323, -0.723414, 0.105388,
		0.722065, -0.644363, 0.251829,
		15.218265, 19.451450, 12.115486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.568631, 19.580597, 12.665175>,  <14.712819, 19.902506, 11.939206>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.568631, 19.580597, 12.665175> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.956538, 19.503242, 12.605640>,  <15.189282, 19.456831, 12.569920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.956538, 19.503242, 12.605640>,  <14.568631, 19.580597, 12.665175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.956538, 19.503242, 12.605640> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173259, 0.116135, 0.978005,
		-0.171847, -0.974225, 0.146130,
		0.969768, -0.193385, -0.148836,
		15.247469, 19.445227, 12.560989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.698089, 19.096708, 13.125934>,  <14.568631, 19.580597, 12.665175>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.698089, 19.096708, 13.125934> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.070128, 19.223026, 13.050901>,  <15.293352, 19.298817, 13.005882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.070128, 19.223026, 13.050901>,  <14.698089, 19.096708, 13.125934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.070128, 19.223026, 13.050901> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209831, -0.037667, 0.977012,
		0.301473, -0.948079, -0.101299,
		0.930100, 0.315798, -0.187581,
		15.349158, 19.317766, 12.994627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.245776, 18.655699, 13.517864>,  <14.698089, 19.096708, 13.125934>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.245776, 18.655699, 13.517864> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.455598, 18.984509, 13.429213>,  <15.581491, 19.181795, 13.376021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.455598, 18.984509, 13.429213>,  <15.245776, 18.655699, 13.517864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.455598, 18.984509, 13.429213> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503123, -0.089297, 0.859589,
		0.686812, -0.562408, -0.460421,
		0.524554, 0.822024, -0.221630,
		15.612965, 19.231115, 13.362723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.914002, 18.401903, 13.571445>,  <15.245776, 18.655699, 13.517864>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.914002, 18.401903, 13.571445> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.910178, 18.800556, 13.604029>,  <15.907884, 19.039747, 13.623578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.910178, 18.800556, 13.604029>,  <15.914002, 18.401903, 13.571445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.910178, 18.800556, 13.604029> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411527, -0.070321, 0.908681,
		0.911348, 0.042208, -0.409468,
		-0.009560, 0.996631, 0.081457,
		15.907310, 19.099546, 13.628466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.595268, 18.542900, 13.862799>,  <15.914002, 18.401903, 13.571445>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.595268, 18.542900, 13.862799> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.352516, 18.853775, 13.929340>,  <16.206865, 19.040300, 13.969265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.352516, 18.853775, 13.929340>,  <16.595268, 18.542900, 13.862799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.352516, 18.853775, 13.929340> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477054, 0.188789, 0.858358,
		0.635700, 0.600282, -0.485333,
		-0.606882, 0.777188, 0.166354,
		16.170452, 19.086931, 13.979246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.034893, 19.239264, 13.884800>,  <16.595268, 18.542900, 13.862799>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.034893, 19.239264, 13.884800> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.692932, 19.263767, 14.090864>,  <16.487755, 19.278469, 14.214502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.692932, 19.263767, 14.090864>,  <17.034893, 19.239264, 13.884800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.692932, 19.263767, 14.090864> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511035, 0.270483, 0.815893,
		-0.089361, 0.960774, -0.262542,
		-0.854902, 0.061259, 0.515160,
		16.436462, 19.282145, 14.245412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.154835, 19.810236, 14.336325>,  <17.034893, 19.239264, 13.884800>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.154835, 19.810236, 14.336325> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.811592, 19.668819, 14.485271>,  <16.605646, 19.583969, 14.574639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.811592, 19.668819, 14.485271>,  <17.154835, 19.810236, 14.336325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.811592, 19.668819, 14.485271> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339562, 0.153254, 0.928014,
		-0.385159, 0.922779, -0.011459,
		-0.858108, -0.353542, 0.372368,
		16.554159, 19.562757, 14.596982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.908081, 20.362677, 14.861826>,  <17.154835, 19.810236, 14.336325>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.908081, 20.362677, 14.861826> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.732628, 20.017586, 14.962467>,  <16.627356, 19.810532, 15.022852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.732628, 20.017586, 14.962467>,  <16.908081, 20.362677, 14.861826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.732628, 20.017586, 14.962467> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343083, 0.098009, 0.934178,
		-0.830599, 0.496083, 0.252997,
		-0.438634, -0.862726, 0.251603,
		16.601038, 19.758768, 15.037949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.803780, 21.053455, 15.284989>,  <16.908081, 20.362677, 14.861826>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.803780, 21.053455, 15.284989> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.951248, 21.425262, 15.288456>,  <17.039728, 21.648348, 15.290536>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.951248, 21.425262, 15.288456>,  <16.803780, 21.053455, 15.284989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.951248, 21.425262, 15.288456> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018705, 0.001904, -0.999823,
		-0.929372, 0.368767, -0.016685,
		0.368670, 0.929520, 0.008667,
		17.061850, 21.704119, 15.291056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.410275, 21.509277, 14.771186>,  <16.803780, 21.053455, 15.284989>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.410275, 21.509277, 14.771186> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.771191, 21.676319, 14.814047>,  <16.987740, 21.776545, 14.839764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.771191, 21.676319, 14.814047>,  <16.410275, 21.509277, 14.771186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.771191, 21.676319, 14.814047> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109031, 0.019437, -0.993848,
		-0.417116, 0.908422, -0.027994,
		0.902290, 0.417602, 0.107154,
		17.041878, 21.801600, 14.846193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.416710, 22.087664, 14.329193>,  <16.410275, 21.509277, 14.771186>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.416710, 22.087664, 14.329193> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.798717, 21.989231, 14.395380>,  <17.027922, 21.930172, 14.435092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.798717, 21.989231, 14.395380>,  <16.416710, 22.087664, 14.329193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.798717, 21.989231, 14.395380> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161177, -0.037616, -0.986208,
		0.248910, 0.968519, 0.003738,
		0.955021, -0.246080, 0.165466,
		17.085224, 21.915407, 14.445020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.756695, 22.313847, 13.707365>,  <16.416710, 22.087664, 14.329193>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.756695, 22.313847, 13.707365> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.066456, 22.120388, 13.870527>,  <17.252312, 22.004313, 13.968425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.066456, 22.120388, 13.870527>,  <16.756695, 22.313847, 13.707365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.066456, 22.120388, 13.870527> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252510, -0.354884, -0.900164,
		0.580122, 0.800089, -0.152697,
		0.774401, -0.483647, 0.407906,
		17.298777, 21.975294, 13.992899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.214695, 22.437681, 13.215681>,  <16.756695, 22.313847, 13.707365>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.214695, 22.437681, 13.215681> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.319649, 22.112259, 13.423250>,  <17.382620, 21.917006, 13.547791>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.319649, 22.112259, 13.423250>,  <17.214695, 22.437681, 13.215681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.319649, 22.112259, 13.423250> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451760, -0.371626, -0.811053,
		0.852683, 0.447235, 0.270024,
		0.262383, -0.813557, 0.518922,
		17.398363, 21.868193, 13.578927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.946991, 22.334942, 13.013778>,  <17.214695, 22.437681, 13.215681>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.946991, 22.334942, 13.013778> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.825581, 21.992374, 13.180834>,  <17.752735, 21.786835, 13.281067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.825581, 21.992374, 13.180834>,  <17.946991, 22.334942, 13.013778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.825581, 21.992374, 13.180834> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321228, -0.504632, -0.801348,
		0.897043, -0.109072, 0.428273,
		-0.303525, -0.856417, 0.417639,
		17.734524, 21.735449, 13.306126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.479549, 21.757778, 12.931440>,  <17.946991, 22.334942, 13.013778>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.479549, 21.757778, 12.931440> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.119736, 21.590725, 12.982695>,  <17.903847, 21.490494, 13.013447>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.119736, 21.590725, 12.982695>,  <18.479549, 21.757778, 12.931440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.119736, 21.590725, 12.982695> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127881, -0.532214, -0.836896,
		0.417710, -0.736432, 0.532152,
		-0.899536, -0.417632, 0.128136,
		17.849874, 21.465435, 13.021135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.533222, 21.003666, 12.889549>,  <18.479549, 21.757778, 12.931440>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.533222, 21.003666, 12.889549> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.143425, 21.068058, 12.827008>,  <17.909546, 21.106693, 12.789484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.143425, 21.068058, 12.827008>,  <18.533222, 21.003666, 12.889549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.143425, 21.068058, 12.827008> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070679, -0.441100, -0.894670,
		-0.212990, -0.882902, 0.418472,
		-0.974495, 0.160978, -0.156352,
		17.851076, 21.116352, 12.780103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.400686, 20.393433, 12.495419>,  <18.533222, 21.003666, 12.889549>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.400686, 20.393433, 12.495419> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.069660, 20.612701, 12.447007>,  <17.871044, 20.744263, 12.417960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.069660, 20.612701, 12.447007>,  <18.400686, 20.393433, 12.495419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.069660, 20.612701, 12.447007> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126315, -0.391898, -0.911296,
		-0.546977, -0.738867, 0.393563,
		-0.827563, 0.548171, -0.121029,
		17.821390, 20.777153, 12.410699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.885410, 19.941721, 12.125046>,  <18.400686, 20.393433, 12.495419>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.885410, 19.941721, 12.125046> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.775600, 20.323822, 12.080992>,  <17.709715, 20.553082, 12.054560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.775600, 20.323822, 12.080992>,  <17.885410, 19.941721, 12.125046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.775600, 20.323822, 12.080992> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273698, -0.187423, -0.943378,
		-0.921805, -0.228839, 0.312903,
		-0.274526, 0.955251, -0.110135,
		17.693243, 20.610397, 12.047952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.116251, 19.924500, 11.811973>,  <17.885410, 19.941721, 12.125046>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.116251, 19.924500, 11.811973> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.297829, 20.272396, 11.734530>,  <17.406775, 20.481134, 11.688065>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.297829, 20.272396, 11.734530>,  <17.116251, 19.924500, 11.811973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.297829, 20.272396, 11.734530> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149178, -0.140032, -0.978844,
		-0.878453, 0.473223, 0.066179,
		0.453945, 0.869742, -0.193607,
		17.434011, 20.533319, 11.676449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.556183, 20.324312, 11.427517>,  <17.116251, 19.924500, 11.811973>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.556183, 20.324312, 11.427517> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.922077, 20.458298, 11.337134>,  <17.141615, 20.538689, 11.282905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.922077, 20.458298, 11.337134>,  <16.556183, 20.324312, 11.427517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.922077, 20.458298, 11.337134> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150657, -0.236146, -0.959967,
		-0.374912, 0.912160, -0.165547,
		0.914737, 0.334963, -0.225957,
		17.196499, 20.558786, 11.269347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<16.621483, 21.167252, 19.033558> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.950596, 21.389668, 18.986490>,  <17.148064, 21.523117, 18.958250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.950596, 21.389668, 18.986490>,  <16.621483, 21.167252, 19.033558>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.950596, 21.389668, 18.986490> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261384, 0.186353, -0.947075,
		-0.504684, 0.809995, 0.298668,
		0.822783, 0.556041, -0.117671,
		17.197432, 21.556480, 18.951189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.433008, 21.804615, 18.753834>,  <16.621483, 21.167252, 19.033558>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.433008, 21.804615, 18.753834> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.822758, 21.766346, 18.672405>,  <17.056608, 21.743385, 18.623549>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.822758, 21.766346, 18.672405>,  <16.433008, 21.804615, 18.753834>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.822758, 21.766346, 18.672405> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198265, 0.062137, -0.978177,
		0.106234, 0.993472, 0.041576,
		0.974374, -0.095672, -0.203572,
		17.115070, 21.737644, 18.611334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.647243, 22.394642, 18.299143>,  <16.433008, 21.804615, 18.753834>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.647243, 22.394642, 18.299143> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.923100, 22.114193, 18.226673>,  <17.088614, 21.945923, 18.183191>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.923100, 22.114193, 18.226673>,  <16.647243, 22.394642, 18.299143>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.923100, 22.114193, 18.226673> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035259, 0.217381, -0.975450,
		0.723293, 0.679098, 0.125195,
		0.689641, -0.701122, -0.181174,
		17.129992, 21.903856, 18.172321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.100174, 22.723270, 17.837807>,  <16.647243, 22.394642, 18.299143>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.100174, 22.723270, 17.837807> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.166553, 22.331791, 17.789459>,  <17.206381, 22.096903, 17.760450>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.166553, 22.331791, 17.789459>,  <17.100174, 22.723270, 17.837807>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.166553, 22.331791, 17.789459> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051804, 0.131049, -0.990022,
		0.984773, 0.158030, 0.072447,
		0.165947, -0.978700, -0.120867,
		17.216337, 22.038181, 17.753199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.702036, 22.666195, 17.470762>,  <17.100174, 22.723270, 17.837807>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.702036, 22.666195, 17.470762> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.509640, 22.319134, 17.420435>,  <17.394201, 22.110897, 17.390238>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.509640, 22.319134, 17.420435>,  <17.702036, 22.666195, 17.470762>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.509640, 22.319134, 17.420435> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001896, 0.144540, -0.989497,
		0.876724, -0.475700, -0.071167,
		-0.480990, -0.867651, -0.125820,
		17.365343, 22.058838, 17.382689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.995588, 22.351856, 16.812683>,  <17.702036, 22.666195, 17.470762>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.995588, 22.351856, 16.812683> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.660755, 22.147743, 16.891584>,  <17.459856, 22.025276, 16.938925>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.660755, 22.147743, 16.891584>,  <17.995588, 22.351856, 16.812683>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.660755, 22.147743, 16.891584> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207569, -0.037363, -0.977507,
		0.506173, -0.859196, -0.074643,
		-0.837081, -0.510281, 0.197255,
		17.409632, 21.994659, 16.950762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.132814, 21.749781, 16.440645>,  <17.995588, 22.351856, 16.812683>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.132814, 21.749781, 16.440645> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.741947, 21.819813, 16.488800>,  <17.507427, 21.861832, 16.517693>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.741947, 21.819813, 16.488800>,  <18.132814, 21.749781, 16.440645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.741947, 21.819813, 16.488800> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152442, -0.182995, -0.971223,
		-0.148015, -0.967398, 0.205506,
		-0.977166, 0.175083, 0.120386,
		17.448797, 21.872337, 16.524916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.805939, 21.095741, 16.187521>,  <18.132814, 21.749781, 16.440645>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.805939, 21.095741, 16.187521> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.597481, 21.436573, 16.168041>,  <17.472406, 21.641071, 16.156353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.597481, 21.436573, 16.168041>,  <17.805939, 21.095741, 16.187521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.597481, 21.436573, 16.168041> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087537, -0.003396, -0.996156,
		-0.848968, -0.523403, -0.072818,
		-0.521143, 0.852079, -0.048700,
		17.441137, 21.692196, 16.153431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.238461, 20.946577, 15.832622>,  <17.805939, 21.095741, 16.187521>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.238461, 20.946577, 15.832622> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.213284, 21.343906, 15.793959>,  <17.198177, 21.582304, 15.770761>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.213284, 21.343906, 15.793959>,  <17.238461, 20.946577, 15.832622>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.213284, 21.343906, 15.793959> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012287, -0.097613, -0.995148,
		-0.997941, -0.061451, 0.018349,
		-0.062944, 0.993326, -0.096657,
		17.194401, 21.641905, 15.764961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.888609, 20.392141, 15.612641>,  <17.238461, 20.946577, 15.832622>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.888609, 20.392141, 15.612641> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.784275, 20.009846, 15.558199>,  <16.721676, 19.780468, 15.525534>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.784275, 20.009846, 15.558199>,  <16.888609, 20.392141, 15.612641>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.784275, 20.009846, 15.558199> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404917, -0.236295, 0.883293,
		-0.876361, 0.175281, 0.448630,
		-0.260833, -0.955741, -0.136105,
		16.706026, 19.723124, 15.517367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.480242, 20.193304, 16.253258>,  <16.888609, 20.392141, 15.612641>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.480242, 20.193304, 16.253258> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.623459, 19.858906, 16.086927>,  <16.709389, 19.658266, 15.987129>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.623459, 19.858906, 16.086927>,  <16.480242, 20.193304, 16.253258>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.623459, 19.858906, 16.086927> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311099, -0.313092, 0.897324,
		-0.880353, -0.450646, 0.147978,
		0.358044, -0.835998, -0.415827,
		16.730873, 19.608107, 15.962179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.294743, 19.726927, 16.677519>,  <16.480242, 20.193304, 16.253258>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.294743, 19.726927, 16.677519> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.600075, 19.562927, 16.477827>,  <16.783274, 19.464527, 16.358013>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.600075, 19.562927, 16.477827>,  <16.294743, 19.726927, 16.677519>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.600075, 19.562927, 16.477827> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343432, -0.396989, 0.851148,
		-0.547161, -0.821157, -0.162225,
		0.763328, -0.410002, -0.499229,
		16.829073, 19.439926, 16.328058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.454660, 19.132782, 17.142622>,  <16.294743, 19.726927, 16.677519>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.454660, 19.132782, 17.142622> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.775475, 19.163986, 16.905758>,  <16.967964, 19.182709, 16.763639>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.775475, 19.163986, 16.905758>,  <16.454660, 19.132782, 17.142622>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.775475, 19.163986, 16.905758> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589174, -0.266077, 0.762940,
		-0.098040, -0.960790, -0.259367,
		0.802036, 0.078013, -0.592158,
		17.016085, 19.187389, 16.728109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.761868, 18.481678, 17.220425>,  <16.454660, 19.132782, 17.142622>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.761868, 18.481678, 17.220425> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.040913, 18.743134, 17.103060>,  <17.208340, 18.900007, 17.032640>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.040913, 18.743134, 17.103060>,  <16.761868, 18.481678, 17.220425>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.040913, 18.743134, 17.103060> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480722, -0.123358, 0.868153,
		0.531263, -0.746686, -0.400275,
		0.697615, 0.653638, -0.293413,
		17.250196, 18.939224, 17.015036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.419724, 18.138712, 17.442024>,  <16.761868, 18.481678, 17.220425>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.419724, 18.138712, 17.442024> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.465778, 18.534531, 17.407286>,  <17.493410, 18.772022, 17.386442>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.465778, 18.534531, 17.407286>,  <17.419724, 18.138712, 17.442024>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.465778, 18.534531, 17.407286> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351173, 0.041237, 0.935402,
		0.929205, -0.138197, -0.342754,
		0.115136, 0.989546, -0.086848,
		17.500319, 18.831394, 17.381231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.016054, 18.214287, 17.701656>,  <17.419724, 18.138712, 17.442024>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.016054, 18.214287, 17.701656> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.845680, 18.574768, 17.733690>,  <17.743456, 18.791058, 17.752911>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.845680, 18.574768, 17.733690>,  <18.016054, 18.214287, 17.701656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.845680, 18.574768, 17.733690> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429551, 0.123526, 0.894554,
		0.796283, 0.415420, -0.439727,
		-0.425933, 0.901203, 0.080083,
		17.717899, 18.845129, 17.757715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.531595, 18.721882, 17.954073>,  <18.016054, 18.214287, 17.701656>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.531595, 18.721882, 17.954073> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.171642, 18.864388, 18.054703>,  <17.955671, 18.949892, 18.115082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.171642, 18.864388, 18.054703>,  <18.531595, 18.721882, 17.954073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.171642, 18.864388, 18.054703> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316570, 0.136786, 0.938655,
		0.299998, 0.924319, -0.235873,
		-0.899880, 0.356265, 0.251576,
		17.901678, 18.971268, 18.130177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.750774, 19.109308, 18.482477>,  <18.531595, 18.721882, 17.954073>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.750774, 19.109308, 18.482477> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.352127, 19.106888, 18.515255>,  <18.112938, 19.105434, 18.534922>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.352127, 19.106888, 18.515255>,  <18.750774, 19.109308, 18.482477>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.352127, 19.106888, 18.515255> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078605, 0.220288, 0.972263,
		-0.023936, 0.975416, -0.219067,
		-0.996618, -0.006053, 0.081946,
		18.053141, 19.105072, 18.539839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.556496, 19.699497, 18.911415>,  <18.750774, 19.109308, 18.482477>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.556496, 19.699497, 18.911415> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.263096, 19.431358, 18.956331>,  <18.087055, 19.270475, 18.983280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.263096, 19.431358, 18.956331>,  <18.556496, 19.699497, 18.911415>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.263096, 19.431358, 18.956331> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086324, 0.071993, 0.993663,
		-0.674185, 0.738545, 0.005060,
		-0.733500, -0.670349, 0.112290,
		18.043045, 19.230253, 18.990019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.399509, 19.764238, 19.567297>,  <18.556496, 19.699497, 18.911415>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.399509, 19.764238, 19.567297> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.159950, 19.454151, 19.486938>,  <18.016214, 19.268099, 19.438723>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.159950, 19.454151, 19.486938>,  <18.399509, 19.764238, 19.567297>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.159950, 19.454151, 19.486938> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166929, -0.124508, 0.978076,
		-0.783235, 0.619302, -0.054839,
		-0.598897, -0.775218, -0.200898,
		17.980282, 19.221586, 19.426668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.735546, 19.760511, 19.972837>,  <18.399509, 19.764238, 19.567297>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.735546, 19.760511, 19.972837> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.787239, 19.372601, 19.890051>,  <17.818254, 19.139854, 19.840380>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.787239, 19.372601, 19.890051>,  <17.735546, 19.760511, 19.972837>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.787239, 19.372601, 19.890051> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307350, -0.237612, 0.921453,
		-0.942780, -0.055472, -0.328768,
		0.129234, -0.969775, -0.206966,
		17.826010, 19.081669, 19.827961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.093794, 19.418499, 20.128607>,  <17.735546, 19.760511, 19.972837>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.093794, 19.418499, 20.128607> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.380077, 19.140617, 20.099903>,  <17.551847, 18.973888, 20.082682>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.380077, 19.140617, 20.099903>,  <17.093794, 19.418499, 20.128607>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.380077, 19.140617, 20.099903> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293227, -0.392157, 0.871913,
		-0.633862, -0.602993, -0.484375,
		0.715708, -0.694703, -0.071759,
		17.594790, 18.932207, 20.078375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.809246, 18.751839, 20.240826>,  <17.093794, 19.418499, 20.128607>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.809246, 18.751839, 20.240826> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.202152, 18.727741, 20.311852>,  <17.437895, 18.713284, 20.354467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.202152, 18.727741, 20.311852>,  <16.809246, 18.751839, 20.240826>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.202152, 18.727741, 20.311852> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187269, -0.362596, 0.912937,
		0.009386, -0.929997, -0.367447,
		0.982264, -0.060243, 0.177563,
		17.496832, 18.709669, 20.365120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<24.772318, 19.234320, 19.960060> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<24.389866, 19.297718, 20.058605>,  <24.160395, 19.335756, 20.117733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<24.389866, 19.297718, 20.058605>,  <24.772318, 19.234320, 19.960060>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.389866, 19.297718, 20.058605> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291664, -0.436497, -0.851118,
		-0.027362, -0.885635, 0.463575,
		-0.956130, 0.158496, 0.246365,
		24.103027, 19.345266, 20.132515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.433893, 18.586035, 19.630531>,  <24.772318, 19.234320, 19.960060>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.433893, 18.586035, 19.630531> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<24.153111, 18.861996, 19.701290>,  <23.984640, 19.027573, 19.743746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<24.153111, 18.861996, 19.701290>,  <24.433893, 18.586035, 19.630531>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.153111, 18.861996, 19.701290> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510424, -0.314088, -0.800510,
		-0.496713, -0.652215, 0.572619,
		-0.701957, 0.689902, 0.176895,
		23.942524, 19.068966, 19.754358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.898548, 18.335686, 19.361179>,  <24.433893, 18.586035, 19.630531>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.898548, 18.335686, 19.361179> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.774040, 18.712849, 19.408569>,  <23.699335, 18.939146, 19.437004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.774040, 18.712849, 19.408569>,  <23.898548, 18.335686, 19.361179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.774040, 18.712849, 19.408569> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639870, -0.115776, -0.759712,
		-0.702621, -0.312285, 0.639376,
		-0.311271, 0.942907, 0.118475,
		23.680658, 18.995720, 19.444111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.163736, 18.328279, 19.245264>,  <23.898548, 18.335686, 19.361179>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.163736, 18.328279, 19.245264> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.289616, 18.700138, 19.168610>,  <23.365143, 18.923254, 19.122618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.289616, 18.700138, 19.168610>,  <23.163736, 18.328279, 19.245264>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.289616, 18.700138, 19.168610> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439272, -0.036333, -0.897619,
		-0.841431, 0.366658, 0.396934,
		0.314697, 0.929646, -0.191634,
		23.384026, 18.979033, 19.111120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.540649, 18.598318, 18.808641>,  <23.163736, 18.328279, 19.245264>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.540649, 18.598318, 18.808641> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.845963, 18.845818, 18.734289>,  <23.029150, 18.994318, 18.689678>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.845963, 18.845818, 18.734289>,  <22.540649, 18.598318, 18.808641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.845963, 18.845818, 18.734289> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333138, 0.130420, -0.933815,
		-0.553553, 0.774688, 0.305676,
		0.763281, 0.618748, -0.185883,
		23.074947, 19.031443, 18.678524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.213356, 19.066101, 18.432171>,  <22.540649, 18.598318, 18.808641>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.213356, 19.066101, 18.432171> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.606236, 19.113651, 18.373989>,  <22.841963, 19.142181, 18.339079>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.606236, 19.113651, 18.373989>,  <22.213356, 19.066101, 18.432171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.606236, 19.113651, 18.373989> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159987, 0.123537, -0.979358,
		-0.098454, 0.985194, 0.140356,
		0.982197, 0.118877, -0.145456,
		22.900894, 19.149315, 18.330353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.386684, 19.779795, 18.142239>,  <22.213356, 19.066101, 18.432171>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.386684, 19.779795, 18.142239> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.675098, 19.519520, 18.046984>,  <22.848146, 19.363354, 17.989830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.675098, 19.519520, 18.046984>,  <22.386684, 19.779795, 18.142239>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.675098, 19.519520, 18.046984> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149970, 0.188984, -0.970461,
		0.676473, 0.735451, 0.038681,
		0.721036, -0.650690, -0.238138,
		22.891409, 19.324312, 17.975542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.749756, 20.009609, 17.461807>,  <22.386684, 19.779795, 18.142239>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.749756, 20.009609, 17.461807> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.867538, 19.628132, 17.486349>,  <22.938208, 19.399246, 17.501074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.867538, 19.628132, 17.486349>,  <22.749756, 20.009609, 17.461807>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.867538, 19.628132, 17.486349> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076945, -0.040332, -0.996219,
		0.952562, 0.298065, 0.061506,
		0.294458, -0.953693, 0.061353,
		22.955875, 19.342024, 17.504755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.384695, 19.918911, 17.004267>,  <22.749756, 20.009609, 17.461807>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.384695, 19.918911, 17.004267> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.229115, 19.560364, 17.089348>,  <23.135765, 19.345236, 17.140396>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.229115, 19.560364, 17.089348>,  <23.384695, 19.918911, 17.004267>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.229115, 19.560364, 17.089348> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128482, -0.175847, -0.975997,
		0.912254, -0.406946, -0.046771,
		-0.388953, -0.896366, 0.212702,
		23.112429, 19.291454, 17.153158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.771591, 19.392927, 16.594797>,  <23.384695, 19.918911, 17.004267>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.771591, 19.392927, 16.594797> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.407383, 19.259438, 16.692434>,  <23.188858, 19.179344, 16.751017>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.407383, 19.259438, 16.692434>,  <23.771591, 19.392927, 16.594797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.407383, 19.259438, 16.692434> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146449, -0.291780, -0.945207,
		0.386659, -0.896378, 0.216799,
		-0.910521, -0.333723, 0.244093,
		23.134226, 19.159321, 16.765661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.668077, 18.864214, 16.127983>,  <23.771591, 19.392927, 16.594797>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.668077, 18.864214, 16.127983> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.301231, 18.917568, 16.278242>,  <23.081123, 18.949581, 16.368397>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.301231, 18.917568, 16.278242>,  <23.668077, 18.864214, 16.127983>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.301231, 18.917568, 16.278242> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398627, -0.307929, -0.863873,
		0.000445, -0.942013, 0.335577,
		-0.917113, 0.133386, 0.375648,
		23.026098, 18.957584, 16.390936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.357822, 18.322094, 15.835910>,  <23.668077, 18.864214, 16.127983>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.357822, 18.322094, 15.835910> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.084423, 18.594521, 15.940968>,  <22.920383, 18.757977, 16.004002>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.084423, 18.594521, 15.940968>,  <23.357822, 18.322094, 15.835910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.084423, 18.594521, 15.940968> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429514, -0.084314, -0.899115,
		-0.590210, -0.727353, 0.350156,
		-0.683498, 0.681064, 0.262645,
		22.879374, 18.798840, 16.019760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.741980, 18.017385, 15.737391>,  <23.357822, 18.322094, 15.835910>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.741980, 18.017385, 15.737391> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.674728, 18.409157, 15.692759>,  <22.634378, 18.644220, 15.665979>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.674728, 18.409157, 15.692759>,  <22.741980, 18.017385, 15.737391>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.674728, 18.409157, 15.692759> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286718, -0.156885, -0.945082,
		-0.943147, -0.126900, 0.307197,
		-0.168126, 0.979430, -0.111581,
		22.624290, 18.702986, 15.659285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.199049, 17.996284, 15.250318>,  <22.741980, 18.017385, 15.737391>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.199049, 17.996284, 15.250318> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.337364, 18.371605, 15.252253>,  <22.420353, 18.596798, 15.253413>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.337364, 18.371605, 15.252253>,  <22.199049, 17.996284, 15.250318>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.337364, 18.371605, 15.252253> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147092, 0.059296, -0.987344,
		-0.926713, 0.340698, 0.158520,
		0.345786, 0.938301, 0.004836,
		22.441099, 18.653095, 15.253703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.577215, 17.786793, 15.256127>,  <22.199049, 17.996284, 15.250318>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.577215, 17.786793, 15.256127> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.331306, 17.473316, 15.291649>,  <21.183762, 17.285231, 15.312962>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.331306, 17.473316, 15.291649>,  <21.577215, 17.786793, 15.256127>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.331306, 17.473316, 15.291649> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267113, -0.100941, 0.958364,
		-0.742096, 0.612896, 0.271389,
		-0.614772, -0.783690, 0.088804,
		21.146875, 17.238209, 15.318290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.207338, 17.890369, 15.884091>,  <21.577215, 17.786793, 15.256127>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.207338, 17.890369, 15.884091> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.201172, 17.494774, 15.825212>,  <21.197472, 17.257418, 15.789886>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.201172, 17.494774, 15.825212>,  <21.207338, 17.890369, 15.884091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.201172, 17.494774, 15.825212> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152130, -0.147820, 0.977244,
		-0.988240, -0.007326, 0.152733,
		-0.015417, -0.988987, -0.147196,
		21.196547, 17.198078, 15.781054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.935532, 17.664972, 16.457245>,  <21.207338, 17.890369, 15.884091>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.935532, 17.664972, 16.457245> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.061543, 17.314575, 16.311152>,  <21.137148, 17.104336, 16.223495>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.061543, 17.314575, 16.311152>,  <20.935532, 17.664972, 16.457245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.061543, 17.314575, 16.311152> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232277, -0.301961, 0.924590,
		-0.920221, -0.376104, 0.108348,
		0.315025, -0.875994, -0.365231,
		21.156050, 17.051777, 16.201582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.620995, 17.154175, 16.858358>,  <20.935532, 17.664972, 16.457245>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.620995, 17.154175, 16.858358> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.968124, 17.020256, 16.711500>,  <21.176401, 16.939905, 16.623384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.968124, 17.020256, 16.711500>,  <20.620995, 17.154175, 16.858358>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.968124, 17.020256, 16.711500> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290625, -0.257310, 0.921590,
		-0.403015, -0.906478, -0.125999,
		0.867823, -0.334796, -0.367145,
		21.228472, 16.919817, 16.601357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.675610, 16.446831, 16.972614>,  <20.620995, 17.154175, 16.858358>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.675610, 16.446831, 16.972614> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.044537, 16.599018, 16.945555>,  <21.265892, 16.690331, 16.929319>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.044537, 16.599018, 16.945555>,  <20.675610, 16.446831, 16.972614>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.044537, 16.599018, 16.945555> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220213, -0.373616, 0.901064,
		0.317553, -0.845963, -0.428376,
		0.922315, 0.380470, -0.067649,
		21.321232, 16.713160, 16.925261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.009329, 15.892174, 17.266201>,  <20.675610, 16.446831, 16.972614>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.009329, 15.892174, 17.266201> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.274231, 16.191822, 17.272308>,  <21.433172, 16.371611, 17.275972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.274231, 16.191822, 17.272308>,  <21.009329, 15.892174, 17.266201>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.274231, 16.191822, 17.272308> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309141, -0.291746, 0.905161,
		0.682530, -0.594729, -0.424795,
		0.662257, 0.749121, 0.015270,
		21.472908, 16.416559, 17.276890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.696613, 15.556301, 17.554600>,  <21.009329, 15.892174, 17.266201>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.696613, 15.556301, 17.554600> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.730328, 15.952477, 17.598286>,  <21.750557, 16.190182, 17.624496>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.730328, 15.952477, 17.598286>,  <21.696613, 15.556301, 17.554600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.730328, 15.952477, 17.598286> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184581, -0.123227, 0.975062,
		0.979196, -0.062026, -0.193202,
		0.084287, 0.990438, 0.109214,
		21.755613, 16.249607, 17.631050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.371696, 15.637460, 17.879534>,  <21.696613, 15.556301, 17.554600>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.371696, 15.637460, 17.879534> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.138641, 15.955391, 17.947393>,  <21.998808, 16.146151, 17.988110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.138641, 15.955391, 17.947393>,  <22.371696, 15.637460, 17.879534>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.138641, 15.955391, 17.947393> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115692, -0.125504, 0.985324,
		0.804455, 0.593715, -0.018832,
		-0.582638, 0.794828, 0.169650,
		21.963850, 16.193840, 17.998289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.798391, 15.982196, 18.303467>,  <22.371696, 15.637460, 17.879534>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.798391, 15.982196, 18.303467> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.453568, 16.180080, 18.347496>,  <22.246674, 16.298811, 18.373915>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.453568, 16.180080, 18.347496>,  <22.798391, 15.982196, 18.303467>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.453568, 16.180080, 18.347496> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205932, 0.143467, 0.967992,
		0.463085, 0.857134, -0.225554,
		-0.862058, 0.494711, 0.110074,
		22.194950, 16.328493, 18.380518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.961681, 16.587202, 18.590773>,  <22.798391, 15.982196, 18.303467>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.961681, 16.587202, 18.590773> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.575787, 16.539753, 18.684763>,  <22.344250, 16.511284, 18.741158>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.575787, 16.539753, 18.684763>,  <22.961681, 16.587202, 18.590773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.575787, 16.539753, 18.684763> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193377, 0.286217, 0.938448,
		-0.178576, 0.950793, -0.253185,
		-0.964736, -0.118624, 0.234973,
		22.286366, 16.504166, 18.755255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.596354, 17.196651, 18.866852>,  <22.961681, 16.587202, 18.590773>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.596354, 17.196651, 18.866852> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.430927, 16.869595, 19.027061>,  <22.331671, 16.673359, 19.123188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.430927, 16.869595, 19.027061>,  <22.596354, 17.196651, 18.866852>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.430927, 16.869595, 19.027061> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120822, 0.386733, 0.914243,
		-0.902422, 0.426491, -0.061150,
		-0.413565, -0.817645, 0.400526,
		22.306858, 16.624302, 19.147219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.070261, 17.419521, 19.290634>,  <22.596354, 17.196651, 18.866852>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.070261, 17.419521, 19.290634> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.153580, 17.048748, 19.415476>,  <22.203571, 16.826284, 19.490381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.153580, 17.048748, 19.415476>,  <22.070261, 17.419521, 19.290634>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.153580, 17.048748, 19.415476> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031666, 0.325327, 0.945071,
		-0.977553, -0.186971, 0.097117,
		0.208296, -0.926933, 0.312104,
		22.216068, 16.770668, 19.509108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.644680, 17.374474, 19.856220>,  <22.070261, 17.419521, 19.290634>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.644680, 17.374474, 19.856220> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.933403, 17.099384, 19.887280>,  <22.106638, 16.934332, 19.905914>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.933403, 17.099384, 19.887280>,  <21.644680, 17.374474, 19.856220>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.933403, 17.099384, 19.887280> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268323, 0.381496, 0.884570,
		-0.637960, -0.617656, 0.459899,
		0.721810, -0.687722, 0.077648,
		22.149946, 16.893068, 19.910574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.455099, 16.881002, 20.447538>,  <21.644680, 17.374474, 19.856220>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.455099, 16.881002, 20.447538> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.844715, 16.909458, 20.361576>,  <22.078485, 16.926533, 20.309998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.844715, 16.909458, 20.361576>,  <21.455099, 16.881002, 20.447538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.844715, 16.909458, 20.361576> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206087, 0.114164, 0.971851,
		0.093665, -0.990912, 0.096541,
		0.974040, 0.071133, -0.214907,
		22.136927, 16.930801, 20.297104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.996572, 16.262690, 20.520800>,  <21.455099, 16.881002, 20.447538>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.996572, 16.262690, 20.520800> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.606686, 16.256016, 20.609924>,  <20.372753, 16.252012, 20.663399>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.606686, 16.256016, 20.609924>,  <20.996572, 16.262690, 20.520800>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.606686, 16.256016, 20.609924> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212681, -0.236345, -0.948107,
		0.068479, -0.971526, 0.226822,
		-0.974719, -0.016685, 0.222810,
		20.314270, 16.251011, 20.676767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.659122, 15.666202, 20.215111>,  <20.996572, 16.262690, 20.520800>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.659122, 15.666202, 20.215111> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.380844, 15.949596, 20.262527>,  <20.213877, 16.119633, 20.290977>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.380844, 15.949596, 20.262527>,  <20.659122, 15.666202, 20.215111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.380844, 15.949596, 20.262527> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329403, -0.168001, -0.929123,
		-0.638356, -0.685436, 0.350255,
		-0.695697, 0.708487, 0.118540,
		20.172134, 16.162142, 20.298090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.149088, 15.330873, 19.875374>,  <20.659122, 15.666202, 20.215111>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.149088, 15.330873, 19.875374> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.011044, 15.704624, 19.910772>,  <19.928217, 15.928875, 19.932011>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.011044, 15.704624, 19.910772>,  <20.149088, 15.330873, 19.875374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.011044, 15.704624, 19.910772> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527469, -0.115097, -0.841742,
		-0.776321, -0.337174, 0.532578,
		-0.345112, 0.934380, 0.088497,
		19.907511, 15.984939, 19.937321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.484646, 15.282643, 19.766102>,  <20.149088, 15.330873, 19.875374>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.484646, 15.282643, 19.766102> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.541271, 15.674057, 19.706194>,  <19.575247, 15.908905, 19.670250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.541271, 15.674057, 19.706194>,  <19.484646, 15.282643, 19.766102>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.541271, 15.674057, 19.706194> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646614, -0.023154, -0.762466,
		-0.749567, 0.204779, 0.629456,
		0.141563, 0.978535, -0.149769,
		19.583740, 15.967617, 19.661263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.796370, 15.660501, 19.804640>,  <19.484646, 15.282643, 19.766102>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.796370, 15.660501, 19.804640> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.033875, 15.894447, 19.583597>,  <19.176378, 16.034815, 19.450972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.033875, 15.894447, 19.583597>,  <18.796370, 15.660501, 19.804640>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.033875, 15.894447, 19.583597> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663122, -0.033317, -0.747769,
		-0.455756, 0.810445, 0.368055,
		0.593764, 0.584866, -0.552609,
		19.212004, 16.069906, 19.417814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.390915, 15.962770, 19.380558>,  <18.796370, 15.660501, 19.804640>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.390915, 15.962770, 19.380558> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.723484, 16.047115, 19.174929>,  <18.923025, 16.097723, 19.051550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.723484, 16.047115, 19.174929>,  <18.390915, 15.962770, 19.380558>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.723484, 16.047115, 19.174929> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525428, -0.002561, -0.850835,
		-0.180727, 0.977512, 0.108665,
		0.831423, 0.210864, -0.514075,
		18.972910, 16.110374, 19.020706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.186495, 16.468018, 18.906288>,  <18.390915, 15.962770, 19.380558>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.186495, 16.468018, 18.906288> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.518139, 16.331905, 18.728846>,  <18.717125, 16.250238, 18.622381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.518139, 16.331905, 18.728846>,  <18.186495, 16.468018, 18.906288>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.518139, 16.331905, 18.728846> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522356, -0.188634, -0.831602,
		0.199297, 0.921210, -0.334145,
		0.829111, -0.340278, -0.443605,
		18.766872, 16.229822, 18.595764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.145189, 16.776852, 18.281385>,  <18.186495, 16.468018, 18.906288>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.145189, 16.776852, 18.281385> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.396614, 16.471771, 18.220463>,  <18.547470, 16.288723, 18.183910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.396614, 16.471771, 18.220463>,  <18.145189, 16.776852, 18.281385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.396614, 16.471771, 18.220463> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307031, -0.063409, -0.949585,
		0.714591, 0.643637, -0.274029,
		0.628563, -0.762700, -0.152305,
		18.585182, 16.242962, 18.174770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.470222, 17.048721, 17.736202>,  <18.145189, 16.776852, 18.281385>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.470222, 17.048721, 17.736202> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.493816, 16.649765, 17.752840>,  <18.507973, 16.410391, 17.762823>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.493816, 16.649765, 17.752840>,  <18.470222, 17.048721, 17.736202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.493816, 16.649765, 17.752840> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197558, -0.052508, -0.978884,
		0.978515, 0.049522, -0.200139,
		0.058985, -0.997392, 0.041596,
		18.511513, 16.350548, 17.765320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.955198, 16.878075, 17.223856>,  <18.470222, 17.048721, 17.736202>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.955198, 16.878075, 17.223856> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.707260, 16.570438, 17.286198>,  <18.558496, 16.385857, 17.323603>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.707260, 16.570438, 17.286198>,  <18.955198, 16.878075, 17.223856>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.707260, 16.570438, 17.286198> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125338, -0.099027, -0.987160,
		0.774650, -0.631420, -0.035015,
		-0.619845, -0.769092, 0.155852,
		18.521307, 16.339710, 17.332952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.150223, 16.246897, 16.898777>,  <18.955198, 16.878075, 17.223856>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.150223, 16.246897, 16.898777> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.758438, 16.170609, 16.924950>,  <18.523367, 16.124836, 16.940653>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.758438, 16.170609, 16.924950>,  <19.150223, 16.246897, 16.898777>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.758438, 16.170609, 16.924950> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029995, -0.183083, -0.982640,
		0.199390, -0.964420, 0.173602,
		-0.979461, -0.190721, 0.065433,
		18.464600, 16.113392, 16.944580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.085714, 15.598365, 16.523088>,  <19.150223, 16.246897, 16.898777>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.085714, 15.598365, 16.523088> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.730446, 15.779221, 16.555895>,  <18.517284, 15.887733, 16.575579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.730446, 15.779221, 16.555895>,  <19.085714, 15.598365, 16.523088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.730446, 15.779221, 16.555895> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122234, -0.060415, -0.990661,
		-0.442962, -0.889899, 0.108926,
		-0.888168, 0.452139, 0.082014,
		18.463995, 15.914863, 16.580500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.773603, 15.288273, 15.926299>,  <19.085714, 15.598365, 16.523088>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.773603, 15.288273, 15.926299> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.520107, 15.572487, 16.048620>,  <18.368010, 15.743015, 16.122013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.520107, 15.572487, 16.048620>,  <18.773603, 15.288273, 15.926299>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.520107, 15.572487, 16.048620> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525463, -0.105307, -0.844274,
		-0.567684, -0.695737, 0.440097,
		-0.633738, 0.710535, 0.305803,
		18.329987, 15.785647, 16.140362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.946075, 15.024035, 15.830899>,  <18.773603, 15.288273, 15.926299>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.946075, 15.024035, 15.830899> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.989624, 15.421631, 15.826399>,  <18.015753, 15.660189, 15.823698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.989624, 15.421631, 15.826399>,  <17.946075, 15.024035, 15.830899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.989624, 15.421631, 15.826399> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504608, 0.045511, -0.862148,
		-0.856456, 0.099543, 0.506531,
		0.108874, 0.993992, -0.011252,
		18.022285, 15.719829, 15.823024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<16.734463, 18.333551, 20.846296> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.120907, 18.436054, 20.833853>,  <17.352774, 18.497557, 20.826387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.120907, 18.436054, 20.833853>,  <16.734463, 18.333551, 20.846296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.120907, 18.436054, 20.833853> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102119, -0.268723, 0.957789,
		0.237081, -0.928504, -0.285785,
		0.966108, 0.256257, -0.031108,
		17.410740, 18.512932, 20.824520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.093380, 17.822506, 21.192675>,  <16.734463, 18.333551, 20.846296>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.093380, 17.822506, 21.192675> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.324406, 18.146637, 21.232248>,  <17.463022, 18.341116, 21.255993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.324406, 18.146637, 21.232248>,  <17.093380, 17.822506, 21.192675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.324406, 18.146637, 21.232248> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218579, -0.270274, 0.937643,
		0.786537, -0.519926, -0.333222,
		0.577566, 0.810326, 0.098936,
		17.497675, 18.389734, 21.261929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.811716, 17.612711, 21.609674>,  <17.093380, 17.822506, 21.192675>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.811716, 17.612711, 21.609674> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.786434, 18.011902, 21.606909>,  <17.771265, 18.251417, 21.605249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.786434, 18.011902, 21.606909>,  <17.811716, 17.612711, 21.609674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.786434, 18.011902, 21.606909> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275835, 0.024128, 0.960902,
		0.959125, 0.058827, -0.276802,
		-0.063206, 0.997977, -0.006916,
		17.767473, 18.311295, 21.604834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.540058, 17.916943, 21.766434>,  <17.811716, 17.612711, 21.609674>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.540058, 17.916943, 21.766434> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.268860, 18.200779, 21.843174>,  <18.106140, 18.371080, 21.889217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.268860, 18.200779, 21.843174>,  <18.540058, 17.916943, 21.766434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.268860, 18.200779, 21.843174> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423235, 0.163453, 0.891154,
		0.600994, 0.685396, -0.411143,
		-0.677996, 0.709588, 0.191849,
		18.065462, 18.413656, 21.900728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.889519, 18.506271, 22.049519>,  <18.540058, 17.916943, 21.766434>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.889519, 18.506271, 22.049519> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.511421, 18.553131, 22.171366>,  <18.284563, 18.581247, 22.244474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.511421, 18.553131, 22.171366>,  <18.889519, 18.506271, 22.049519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.511421, 18.553131, 22.171366> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323309, 0.208649, 0.923004,
		0.044570, 0.970949, -0.235099,
		-0.945243, 0.117148, 0.304617,
		18.227848, 18.588276, 22.262751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.856525, 19.108084, 22.465496>,  <18.889519, 18.506271, 22.049519>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.856525, 19.108084, 22.465496> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.517227, 18.926514, 22.574625>,  <18.313648, 18.817572, 22.640102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.517227, 18.926514, 22.574625>,  <18.856525, 19.108084, 22.465496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.517227, 18.926514, 22.574625> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360599, -0.117744, 0.925259,
		-0.387873, 0.883227, 0.263560,
		-0.848247, -0.453923, 0.272822,
		18.262753, 18.790337, 22.656471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.698679, 19.495995, 22.974878>,  <18.856525, 19.108084, 22.465496>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.698679, 19.495995, 22.974878> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.492630, 19.154831, 23.008812>,  <18.369001, 18.950132, 23.029173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.492630, 19.154831, 23.008812>,  <18.698679, 19.495995, 22.974878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.492630, 19.154831, 23.008812> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083819, 0.048377, 0.995306,
		-0.853009, 0.519815, 0.046570,
		-0.515122, -0.852908, 0.084836,
		18.338093, 18.898958, 23.034264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.406000, 19.551714, 23.605312>,  <18.698679, 19.495995, 22.974878>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.406000, 19.551714, 23.605312> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.405819, 19.158207, 23.533539>,  <18.405710, 18.922102, 23.490475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.405819, 19.158207, 23.533539>,  <18.406000, 19.551714, 23.605312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.405819, 19.158207, 23.533539> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294375, -0.171614, 0.940155,
		-0.955690, -0.052397, 0.289675,
		-0.000451, -0.983770, -0.179434,
		18.405684, 18.863075, 23.479708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.947817, 19.260538, 24.106745>,  <18.406000, 19.551714, 23.605312>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.947817, 19.260538, 24.106745> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.180141, 18.960381, 23.980528>,  <18.319536, 18.780287, 23.904797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.180141, 18.960381, 23.980528>,  <17.947817, 19.260538, 24.106745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.180141, 18.960381, 23.980528> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260537, -0.195879, 0.945385,
		-0.771217, -0.631303, 0.081736,
		0.580814, -0.750392, -0.315543,
		18.354385, 18.735264, 23.885864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.768343, 18.731932, 24.542280>,  <17.947817, 19.260538, 24.106745>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.768343, 18.731932, 24.542280> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.128853, 18.632206, 24.400553>,  <18.345160, 18.572371, 24.315516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.128853, 18.632206, 24.400553>,  <17.768343, 18.731932, 24.542280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.128853, 18.632206, 24.400553> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271036, -0.313563, 0.910065,
		-0.337996, -0.916253, -0.215033,
		0.901276, -0.249317, -0.354321,
		18.399237, 18.557411, 24.294256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.884085, 18.107258, 24.788002>,  <17.768343, 18.731932, 24.542280>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.884085, 18.107258, 24.788002> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.243084, 18.267338, 24.713884>,  <18.458483, 18.363386, 24.669413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.243084, 18.267338, 24.713884>,  <17.884085, 18.107258, 24.788002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.243084, 18.267338, 24.713884> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235207, -0.078947, 0.968734,
		0.373061, -0.913020, -0.164985,
		0.897498, 0.400202, -0.185296,
		18.512333, 18.387398, 24.658295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.387154, 17.687284, 25.136524>,  <17.884085, 18.107258, 24.788002>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.387154, 17.687284, 25.136524> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.609840, 18.016537, 25.091768>,  <18.743454, 18.214088, 25.064915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.609840, 18.016537, 25.091768>,  <18.387154, 17.687284, 25.136524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.609840, 18.016537, 25.091768> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277137, -0.057061, 0.959135,
		0.783109, -0.564978, -0.259887,
		0.556719, 0.823130, -0.111891,
		18.776855, 18.263475, 25.058201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.980999, 17.577488, 25.608231>,  <18.387154, 17.687284, 25.136524>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.980999, 17.577488, 25.608231> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.910973, 17.965694, 25.541954>,  <18.868956, 18.198618, 25.502188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.910973, 17.965694, 25.541954>,  <18.980999, 17.577488, 25.608231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.910973, 17.965694, 25.541954> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162205, 0.194421, 0.967414,
		0.971103, 0.142487, -0.191459,
		-0.175068, 0.970514, -0.165691,
		18.858452, 18.256849, 25.492247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.452732, 18.022102, 26.017513>,  <18.980999, 17.577488, 25.608231>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.452732, 18.022102, 26.017513> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.135330, 18.250038, 25.932068>,  <18.944889, 18.386799, 25.880800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.135330, 18.250038, 25.932068>,  <19.452732, 18.022102, 26.017513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.135330, 18.250038, 25.932068> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013900, 0.367893, 0.929764,
		0.608403, 0.734804, -0.299846,
		-0.793506, 0.569839, -0.213614,
		18.897278, 18.420990, 25.867983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.731606, 17.386286, 26.062149>,  <19.452732, 18.022102, 26.017513>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.731606, 17.386286, 26.062149> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.028290, 17.122795, 26.112659>,  <20.206301, 16.964701, 26.142965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.028290, 17.122795, 26.112659>,  <19.731606, 17.386286, 26.062149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.028290, 17.122795, 26.112659> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063888, -0.118026, -0.990953,
		0.667673, 0.743066, -0.045456,
		0.741708, -0.658728, 0.126275,
		20.250803, 16.925177, 26.150541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.181601, 17.685038, 25.664494>,  <19.731606, 17.386286, 26.062149>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.181601, 17.685038, 25.664494> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.316181, 17.312683, 25.721416>,  <20.396931, 17.089270, 25.755569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.316181, 17.312683, 25.721416>,  <20.181601, 17.685038, 25.664494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.316181, 17.312683, 25.721416> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233800, -0.063811, -0.970189,
		0.912215, 0.359695, 0.196171,
		0.336454, -0.930885, 0.142306,
		20.417118, 17.033417, 25.764109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.762318, 17.566042, 25.246016>,  <20.181601, 17.685038, 25.664494>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.762318, 17.566042, 25.246016> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.653111, 17.185383, 25.302340>,  <20.587587, 16.956987, 25.336134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.653111, 17.185383, 25.302340>,  <20.762318, 17.566042, 25.246016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.653111, 17.185383, 25.302340> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052277, -0.160828, -0.985597,
		0.960588, -0.261723, 0.093658,
		-0.273016, -0.951649, 0.140808,
		20.571205, 16.899889, 25.344582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.321234, 17.236076, 24.910717>,  <20.762318, 17.566042, 25.246016>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.321234, 17.236076, 24.910717> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.009224, 16.991505, 24.963955>,  <20.822018, 16.844761, 24.995897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.009224, 16.991505, 24.963955>,  <21.321234, 17.236076, 24.910717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.009224, 16.991505, 24.963955> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055802, -0.279816, -0.958430,
		0.623254, -0.740174, 0.252383,
		-0.780026, -0.611429, 0.133094,
		20.775215, 16.808077, 25.003883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.500057, 16.522621, 24.880318>,  <21.321234, 17.236076, 24.910717>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.500057, 16.522621, 24.880318> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.110989, 16.539330, 24.788961>,  <20.877546, 16.549355, 24.734148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.110989, 16.539330, 24.788961>,  <21.500057, 16.522621, 24.880318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.110989, 16.539330, 24.788961> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207426, -0.285642, -0.935619,
		-0.104318, -0.957426, 0.269172,
		-0.972673, 0.041768, -0.228393,
		20.819187, 16.551861, 24.720444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.398094, 16.000374, 24.329548>,  <21.500057, 16.522621, 24.880318>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.398094, 16.000374, 24.329548> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.068272, 16.224819, 24.300550>,  <20.870378, 16.359486, 24.283152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.068272, 16.224819, 24.300550>,  <21.398094, 16.000374, 24.329548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.068272, 16.224819, 24.300550> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101600, -0.272901, -0.956662,
		-0.556580, -0.781457, 0.282032,
		-0.824558, 0.561114, -0.072495,
		20.820904, 16.393154, 24.278803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.992270, 15.611041, 24.020744>,  <21.398094, 16.000374, 24.329548>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.992270, 15.611041, 24.020744> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.849892, 15.981537, 23.971128>,  <20.764465, 16.203835, 23.941359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.849892, 15.981537, 23.971128>,  <20.992270, 15.611041, 24.020744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.849892, 15.981537, 23.971128> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268975, -0.228659, -0.935611,
		-0.894962, -0.299661, 0.330525,
		-0.355944, 0.926239, -0.124039,
		20.743109, 16.259409, 23.933916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.228403, 15.564631, 23.769960>,  <20.992270, 15.611041, 24.020744>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.228403, 15.564631, 23.769960> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.344292, 15.936684, 23.679699>,  <20.413824, 16.159916, 23.625542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.344292, 15.936684, 23.679699>,  <20.228403, 15.564631, 23.769960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.344292, 15.936684, 23.679699> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458551, -0.072052, -0.885742,
		-0.840115, 0.360089, 0.405638,
		0.289719, 0.930131, -0.225652,
		20.431208, 16.215723, 23.612003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.574137, 15.890861, 23.314852>,  <20.228403, 15.564631, 23.769960>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.574137, 15.890861, 23.314852> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.902096, 16.110962, 23.251619>,  <20.098871, 16.243023, 23.213680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.902096, 16.110962, 23.251619>,  <19.574137, 15.890861, 23.314852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.902096, 16.110962, 23.251619> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239729, 0.079226, -0.967602,
		-0.519902, 0.831231, 0.196868,
		0.819898, 0.550253, -0.158080,
		20.148066, 16.276037, 23.204195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.390062, 16.441410, 22.916096>,  <19.574137, 15.890861, 23.314852>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.390062, 16.441410, 22.916096> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.781540, 16.468422, 22.838537>,  <20.016426, 16.484629, 22.792002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.781540, 16.468422, 22.838537>,  <19.390062, 16.441410, 22.916096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.781540, 16.468422, 22.838537> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198289, 0.065908, -0.977925,
		-0.053261, 0.995538, 0.077895,
		0.978695, 0.067531, -0.193894,
		20.075148, 16.488682, 22.780369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.418072, 16.880487, 22.346949>,  <19.390062, 16.441410, 22.916096>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.418072, 16.880487, 22.346949> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.781673, 16.714119, 22.357693>,  <19.999834, 16.614298, 22.364140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.781673, 16.714119, 22.357693>,  <19.418072, 16.880487, 22.346949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.781673, 16.714119, 22.357693> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035701, 0.013492, -0.999272,
		0.415256, 0.909301, 0.027113,
		0.909004, -0.415921, 0.026860,
		20.054375, 16.589342, 22.365751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.838350, 17.245371, 21.930103>,  <19.418072, 16.880487, 22.346949>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.838350, 17.245371, 21.930103> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.010811, 16.884991, 21.949688>,  <20.114288, 16.668762, 21.961439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.010811, 16.884991, 21.949688>,  <19.838350, 17.245371, 21.930103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.010811, 16.884991, 21.949688> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140140, 0.013261, -0.990043,
		0.891329, 0.433721, 0.131977,
		0.431152, -0.900950, 0.048962,
		20.140156, 16.614706, 21.964376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.407133, 17.308840, 21.451323>,  <19.838350, 17.245371, 21.930103>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.407133, 17.308840, 21.451323> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.308071, 16.923328, 21.490921>,  <20.248634, 16.692022, 21.514681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.308071, 16.923328, 21.490921>,  <20.407133, 17.308840, 21.451323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.308071, 16.923328, 21.490921> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000657, -0.102014, -0.994783,
		0.968848, -0.246428, 0.024631,
		-0.247655, -0.963777, 0.098998,
		20.233774, 16.634195, 21.520620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.902876, 16.905825, 21.042906>,  <20.407133, 17.308840, 21.451323>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.902876, 16.905825, 21.042906> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.588699, 16.663639, 21.094271>,  <20.400192, 16.518328, 21.125090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.588699, 16.663639, 21.094271>,  <20.902876, 16.905825, 21.042906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.588699, 16.663639, 21.094271> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068791, -0.291583, -0.954069,
		0.615098, -0.740534, 0.270673,
		-0.785444, -0.605466, 0.128410,
		20.353065, 16.481998, 21.132793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.716410, 16.870100, 21.118469>,  <20.902876, 16.905825, 21.042906>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.716410, 16.870100, 21.118469> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.056244, 16.974728, 20.935261>,  <22.260145, 17.037504, 20.825335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.056244, 16.974728, 20.935261>,  <21.716410, 16.870100, 21.118469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.056244, 16.974728, 20.935261> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364823, 0.335730, 0.868441,
		0.380933, -0.904911, 0.189803,
		0.849585, 0.261574, -0.458023,
		22.311119, 17.053198, 20.797853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.201391, 16.656084, 21.502949>,  <21.716410, 16.870100, 21.118469>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.201391, 16.656084, 21.502949> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.430096, 16.910603, 21.295790>,  <22.567318, 17.063314, 21.171495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.430096, 16.910603, 21.295790>,  <22.201391, 16.656084, 21.502949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.430096, 16.910603, 21.295790> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405410, 0.329674, 0.852618,
		0.713257, -0.697452, -0.069468,
		0.571759, 0.636298, -0.517896,
		22.601624, 17.101492, 21.140421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.886791, 16.665556, 21.904007>,  <22.201391, 16.656084, 21.502949>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.886791, 16.665556, 21.904007> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.906311, 16.999619, 21.684870>,  <22.918022, 17.200056, 21.553387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.906311, 16.999619, 21.684870>,  <22.886791, 16.665556, 21.904007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.906311, 16.999619, 21.684870> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305372, 0.509760, 0.804296,
		0.950982, -0.206544, -0.230158,
		0.048797, 0.835155, -0.547845,
		22.920950, 17.250166, 21.520515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.533392, 17.011126, 21.912144>,  <22.886791, 16.665556, 21.904007>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.533392, 17.011126, 21.912144> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.275242, 17.306137, 21.832602>,  <23.120352, 17.483145, 21.784876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.275242, 17.306137, 21.832602>,  <23.533392, 17.011126, 21.912144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.275242, 17.306137, 21.832602> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029172, 0.283932, 0.958400,
		0.763309, 0.612726, -0.204758,
		-0.645375, 0.737529, -0.198854,
		23.081629, 17.527395, 21.772945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.852486, 17.645275, 21.990215>,  <23.533392, 17.011126, 21.912144>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.852486, 17.645275, 21.990215> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.460854, 17.685944, 22.060717>,  <23.225874, 17.710344, 22.103018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.460854, 17.685944, 22.060717>,  <23.852486, 17.645275, 21.990215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.460854, 17.685944, 22.060717> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201047, 0.349978, 0.914929,
		0.031336, 0.931224, -0.363097,
		-0.979080, 0.101670, 0.176253,
		23.167130, 17.716444, 22.113592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.827955, 18.242279, 22.371008>,  <23.852486, 17.645275, 21.990215>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.827955, 18.242279, 22.371008> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.473042, 18.072487, 22.443163>,  <23.260094, 17.970612, 22.486456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.473042, 18.072487, 22.443163>,  <23.827955, 18.242279, 22.371008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.473042, 18.072487, 22.443163> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143703, 0.117208, 0.982655,
		-0.438262, 0.897818, -0.042998,
		-0.887286, -0.424482, 0.180387,
		23.206856, 17.945143, 22.497278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.587658, 18.616449, 22.908670>,  <23.827955, 18.242279, 22.371008>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.587658, 18.616449, 22.908670> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.373055, 18.279476, 22.928545>,  <23.244293, 18.077293, 22.940470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.373055, 18.279476, 22.928545>,  <23.587658, 18.616449, 22.908670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.373055, 18.279476, 22.928545> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039134, 0.083648, 0.995727,
		-0.842987, 0.532272, -0.077845,
		-0.536509, -0.842431, 0.049684,
		23.212101, 18.026747, 22.943451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.191925, 19.269302, 23.090906>,  <23.587658, 18.616449, 22.908670>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.191925, 19.269302, 23.090906> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.419216, 19.582211, 22.988791>,  <23.555590, 19.769955, 22.927521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.419216, 19.582211, 22.988791>,  <23.191925, 19.269302, 23.090906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.419216, 19.582211, 22.988791> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238191, -0.453326, -0.858930,
		-0.787645, 0.427259, -0.443921,
		0.568226, 0.782270, -0.255290,
		23.589684, 19.816891, 22.912203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.942163, 19.435696, 22.415510>,  <23.191925, 19.269302, 23.090906>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.942163, 19.435696, 22.415510> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.298450, 19.616440, 22.435299>,  <23.512222, 19.724886, 22.447172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.298450, 19.616440, 22.435299>,  <22.942163, 19.435696, 22.415510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.298450, 19.616440, 22.435299> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091898, -0.072421, -0.993131,
		-0.445172, 0.889145, -0.106032,
		0.890717, 0.451858, 0.049471,
		23.565666, 19.751997, 22.450140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.947693, 19.802601, 21.802748>,  <22.942163, 19.435696, 22.415510>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.947693, 19.802601, 21.802748> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.317589, 19.781536, 21.953522>,  <23.539526, 19.768898, 22.043985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.317589, 19.781536, 21.953522>,  <22.947693, 19.802601, 21.802748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.317589, 19.781536, 21.953522> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370211, -0.105317, -0.922958,
		0.088303, 0.993043, -0.077895,
		0.924741, -0.052662, 0.376936,
		23.595011, 19.765738, 22.066603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.281923, 20.275301, 21.379822>,  <22.947693, 19.802601, 21.802748>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.281923, 20.275301, 21.379822> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.569180, 20.038452, 21.526062>,  <23.741533, 19.896343, 21.613806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.569180, 20.038452, 21.526062>,  <23.281923, 20.275301, 21.379822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.569180, 20.038452, 21.526062> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205335, -0.321677, -0.924317,
		0.664913, 0.738861, -0.109426,
		0.718142, -0.592121, 0.365602,
		23.784622, 19.860815, 21.635742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.939102, 20.490065, 21.156942>,  <23.281923, 20.275301, 21.379822>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.939102, 20.490065, 21.156942> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<24.008953, 20.110134, 21.260735>,  <24.050863, 19.882175, 21.323009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<24.008953, 20.110134, 21.260735>,  <23.939102, 20.490065, 21.156942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.008953, 20.110134, 21.260735> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237659, -0.215080, -0.947237,
		0.955522, 0.227084, 0.188176,
		0.174630, -0.949828, 0.259482,
		24.061342, 19.825186, 21.338579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.560118, 20.346222, 20.807701>,  <23.939102, 20.490065, 21.156942>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.560118, 20.346222, 20.807701> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<24.343044, 20.022137, 20.896290>,  <24.212801, 19.827686, 20.949444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<24.343044, 20.022137, 20.896290>,  <24.560118, 20.346222, 20.807701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.343044, 20.022137, 20.896290> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073479, -0.216873, -0.973431,
		0.836718, -0.544538, 0.058159,
		-0.542683, -0.810213, 0.221473,
		24.180239, 19.779074, 20.962732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.845942, 19.882059, 20.416477>,  <24.560118, 20.346222, 20.807701>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.845942, 19.882059, 20.416477> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<24.479969, 19.742836, 20.498211>,  <24.260386, 19.659302, 20.547251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<24.479969, 19.742836, 20.498211>,  <24.845942, 19.882059, 20.416477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.479969, 19.742836, 20.498211> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091904, -0.313309, -0.945194,
		0.393003, -0.883568, 0.254668,
		-0.914933, -0.348060, 0.204335,
		24.205488, 19.638418, 20.559511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<18.603060, 21.791216, 25.343094> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.806046, 21.446552, 25.341234>,  <18.927837, 21.239754, 25.340118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.806046, 21.446552, 25.341234>,  <18.603060, 21.791216, 25.343094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.806046, 21.446552, 25.341234> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028504, -0.011392, -0.999529,
		0.861201, 0.507358, -0.030342,
		0.507465, -0.861660, -0.004651,
		18.958284, 21.188055, 25.339838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.079021, 21.938217, 24.846628>,  <18.603060, 21.791216, 25.343094>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.079021, 21.938217, 24.846628> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.066784, 21.541199, 24.893818>,  <19.059441, 21.302988, 24.922132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.066784, 21.541199, 24.893818>,  <19.079021, 21.938217, 24.846628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.066784, 21.541199, 24.893818> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141307, -0.121139, -0.982526,
		0.989493, -0.013391, 0.143960,
		-0.030596, -0.992545, 0.117974,
		19.057606, 21.243435, 24.929211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.776302, 21.638380, 24.573231>,  <19.079021, 21.938217, 24.846628>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.776302, 21.638380, 24.573231> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.467228, 21.384499, 24.577414>,  <19.281784, 21.232170, 24.579924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.467228, 21.384499, 24.577414>,  <19.776302, 21.638380, 24.573231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.467228, 21.384499, 24.577414> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171142, -0.224154, -0.959409,
		0.611283, -0.739532, 0.281825,
		-0.772686, -0.634703, 0.010456,
		19.235422, 21.194088, 24.580551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.989754, 21.133337, 24.087854>,  <19.776302, 21.638380, 24.573231>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.989754, 21.133337, 24.087854> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.597359, 21.057659, 24.105127>,  <19.361921, 21.012253, 24.115490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.597359, 21.057659, 24.105127>,  <19.989754, 21.133337, 24.087854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.597359, 21.057659, 24.105127> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043512, -0.002403, -0.999050,
		0.189120, -0.981936, -0.005875,
		-0.980990, -0.189196, 0.043181,
		19.303062, 21.000900, 24.118082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.837332, 20.631332, 23.645260>,  <19.989754, 21.133337, 24.087854>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.837332, 20.631332, 23.645260> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.481373, 20.808235, 23.689970>,  <19.267797, 20.914377, 23.716797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.481373, 20.808235, 23.689970>,  <19.837332, 20.631332, 23.645260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.481373, 20.808235, 23.689970> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196946, -0.151474, -0.968642,
		-0.411457, -0.884005, 0.221897,
		-0.889896, 0.442256, 0.111776,
		19.214403, 20.940912, 23.723503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.315565, 20.389553, 23.137423>,  <19.837332, 20.631332, 23.645260>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.315565, 20.389553, 23.137423> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.148811, 20.738422, 23.239809>,  <19.048759, 20.947744, 23.301241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.148811, 20.738422, 23.239809>,  <19.315565, 20.389553, 23.137423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.148811, 20.738422, 23.239809> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309432, 0.128610, -0.942184,
		-0.854670, -0.471984, 0.216264,
		-0.416883, 0.872176, 0.255966,
		19.023746, 21.000074, 23.316599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.563440, 20.476557, 22.814636>,  <19.315565, 20.389553, 23.137423>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.563440, 20.476557, 22.814636> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.705807, 20.842190, 22.892378>,  <18.791227, 21.061569, 22.939022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.705807, 20.842190, 22.892378>,  <18.563440, 20.476557, 22.814636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.705807, 20.842190, 22.892378> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305487, 0.310350, -0.900200,
		-0.883176, 0.261024, 0.389700,
		0.355918, 0.914084, 0.194355,
		18.812582, 21.116415, 22.950684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.036676, 20.897017, 22.673779>,  <18.563440, 20.476557, 22.814636>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.036676, 20.897017, 22.673779> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.361851, 21.129925, 22.669821>,  <18.556955, 21.269670, 22.667446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.361851, 21.129925, 22.669821>,  <18.036676, 20.897017, 22.673779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.361851, 21.129925, 22.669821> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247803, 0.330494, -0.910696,
		-0.527001, 0.742789, 0.412958,
		0.812935, 0.582270, -0.009895,
		18.605732, 21.304605, 22.666853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.773956, 21.567610, 22.530382>,  <18.036676, 20.897017, 22.673779>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.773956, 21.567610, 22.530382> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.158981, 21.571251, 22.422022>,  <18.389997, 21.573435, 22.357006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.158981, 21.571251, 22.422022>,  <17.773956, 21.567610, 22.530382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.158981, 21.571251, 22.422022> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259820, 0.315711, -0.912590,
		0.077221, 0.948812, 0.306257,
		0.962564, 0.009101, -0.270900,
		18.447750, 21.573980, 22.340752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.022564, 22.273705, 22.383257>,  <17.773956, 21.567610, 22.530382>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.022564, 22.273705, 22.383257> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.269650, 22.032040, 22.181894>,  <18.417900, 21.887041, 22.061077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.269650, 22.032040, 22.181894>,  <18.022564, 22.273705, 22.383257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.269650, 22.032040, 22.181894> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285866, 0.423838, -0.859443,
		0.732605, 0.674797, 0.089101,
		0.617714, -0.604161, -0.503407,
		18.454964, 21.850792, 22.030872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.868874, 22.592663, 21.692326>,  <18.022564, 22.273705, 22.383257>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.868874, 22.592663, 21.692326> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.098347, 22.268230, 21.646658>,  <18.236031, 22.073570, 21.619257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.098347, 22.268230, 21.646658>,  <17.868874, 22.592663, 21.692326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.098347, 22.268230, 21.646658> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080254, 0.083056, -0.993308,
		0.815135, 0.579008, -0.017444,
		0.573685, -0.811080, -0.114170,
		18.270452, 22.024906, 21.612408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.352324, 22.710844, 21.165913>,  <17.868874, 22.592663, 21.692326>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.352324, 22.710844, 21.165913> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.316643, 22.312737, 21.181313>,  <18.295235, 22.073872, 21.190552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.316643, 22.312737, 21.181313>,  <18.352324, 22.710844, 21.165913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.316643, 22.312737, 21.181313> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165085, -0.023345, -0.986003,
		0.982237, -0.094309, -0.162222,
		-0.089202, -0.995269, 0.038499,
		18.289883, 22.014156, 21.192862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.081495, 22.767357, 21.096645>,  <18.352324, 22.710844, 21.165913>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.081495, 22.767357, 21.096645> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.389629, 22.973160, 20.945984>,  <19.574509, 23.096642, 20.855587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.389629, 22.973160, 20.945984>,  <19.081495, 22.767357, 21.096645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.389629, 22.973160, 20.945984> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451233, -0.022500, 0.892123,
		0.450528, -0.857191, -0.249495,
		0.770333, 0.514507, -0.376656,
		19.620729, 23.127512, 20.832987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.734915, 22.400637, 21.201979>,  <19.081495, 22.767357, 21.096645>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.734915, 22.400637, 21.201979> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.857185, 22.777721, 21.148527>,  <19.930548, 23.003973, 21.116457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.857185, 22.777721, 21.148527>,  <19.734915, 22.400637, 21.201979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.857185, 22.777721, 21.148527> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534452, -0.053733, 0.843489,
		0.787988, -0.329250, -0.520259,
		0.305674, 0.942713, -0.133628,
		19.948887, 23.060535, 21.108438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.455938, 22.361862, 21.559719>,  <19.734915, 22.400637, 21.201979>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.455938, 22.361862, 21.559719> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.388229, 22.754448, 21.523785>,  <20.347605, 22.990000, 21.502224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.388229, 22.754448, 21.523785>,  <20.455938, 22.361862, 21.559719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.388229, 22.754448, 21.523785> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609068, 0.175833, 0.773381,
		0.774844, 0.076197, -0.627544,
		-0.169272, 0.981467, -0.089834,
		20.337448, 23.048887, 21.496834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.071924, 22.717632, 21.601486>,  <20.455938, 22.361862, 21.559719>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.071924, 22.717632, 21.601486> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.764309, 22.948456, 21.711458>,  <20.579741, 23.086950, 21.777441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.764309, 22.948456, 21.711458>,  <21.071924, 22.717632, 21.601486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.764309, 22.948456, 21.711458> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509736, 0.294128, 0.808491,
		0.385682, 0.761901, -0.520343,
		-0.769038, 0.577058, 0.274929,
		20.533598, 23.121572, 21.793938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.318054, 23.339891, 21.808296>,  <21.071924, 22.717632, 21.601486>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.318054, 23.339891, 21.808296> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.963612, 23.348740, 21.993477>,  <20.750946, 23.354048, 22.104586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.963612, 23.348740, 21.993477>,  <21.318054, 23.339891, 21.808296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.963612, 23.348740, 21.993477> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460542, 0.154351, 0.874115,
		-0.052123, 0.987768, -0.146958,
		-0.886106, 0.022119, 0.462954,
		20.697781, 23.355375, 22.132362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.360804, 23.844833, 22.314846>,  <21.318054, 23.339891, 21.808296>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.360804, 23.844833, 22.314846> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.018135, 23.675022, 22.432072>,  <20.812534, 23.573135, 22.502407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.018135, 23.675022, 22.432072>,  <21.360804, 23.844833, 22.314846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.018135, 23.675022, 22.432072> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247606, 0.160000, 0.955558,
		-0.452553, 0.891165, -0.031951,
		-0.856672, -0.424530, 0.293066,
		20.761133, 23.547663, 22.519991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.141020, 24.259657, 22.859262>,  <21.360804, 23.844833, 22.314846>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.141020, 24.259657, 22.859262> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.941833, 23.916969, 22.913021>,  <20.822321, 23.711357, 22.945276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.941833, 23.916969, 22.913021>,  <21.141020, 24.259657, 22.859262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.941833, 23.916969, 22.913021> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154200, 0.065030, 0.985897,
		-0.853376, 0.511669, 0.099723,
		-0.497968, -0.856718, 0.134395,
		20.792442, 23.659954, 22.953339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.498888, 24.295828, 23.227608>,  <21.141020, 24.259657, 22.859262>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.498888, 24.295828, 23.227608> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.635658, 23.925098, 23.289680>,  <20.717720, 23.702660, 23.326923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.635658, 23.925098, 23.289680>,  <20.498888, 24.295828, 23.227608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.635658, 23.925098, 23.289680> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008767, 0.161982, 0.986755,
		-0.939686, -0.338758, 0.047261,
		0.341926, -0.926826, 0.155182,
		20.738235, 23.647051, 23.336235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.268763, 24.295811, 23.868692>,  <20.498888, 24.295828, 23.227608>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.268763, 24.295811, 23.868692> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.527203, 23.991806, 23.840582>,  <20.682266, 23.809404, 23.823715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.527203, 23.991806, 23.840582>,  <20.268763, 24.295811, 23.868692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.527203, 23.991806, 23.840582> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078669, -0.025276, 0.996580,
		-0.759187, -0.649419, 0.043458,
		0.646100, -0.760010, -0.070278,
		20.721033, 23.763803, 23.819498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.087547, 23.842098, 24.442335>,  <20.268763, 24.295811, 23.868692>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.087547, 23.842098, 24.442335> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.456818, 23.732731, 24.334267>,  <20.678379, 23.667110, 24.269426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.456818, 23.732731, 24.334267>,  <20.087547, 23.842098, 24.442335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.456818, 23.732731, 24.334267> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207240, -0.237914, 0.948919,
		-0.323732, -0.932007, -0.162972,
		0.923173, -0.273421, -0.270170,
		20.733770, 23.650705, 24.253216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.277338, 23.183676, 24.751116>,  <20.087547, 23.842098, 24.442335>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.277338, 23.183676, 24.751116> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.635426, 23.345833, 24.677099>,  <20.850279, 23.443127, 24.632689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.635426, 23.345833, 24.677099>,  <20.277338, 23.183676, 24.751116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.635426, 23.345833, 24.677099> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339914, -0.352682, 0.871822,
		0.288168, -0.843370, -0.453526,
		0.895219, 0.405391, -0.185042,
		20.903992, 23.467449, 24.621586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.669098, 22.612234, 25.030615>,  <20.277338, 23.183676, 24.751116>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.669098, 22.612234, 25.030615> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.891094, 22.942249, 24.988104>,  <21.024292, 23.140259, 24.962597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.891094, 22.942249, 24.988104>,  <20.669098, 22.612234, 25.030615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.891094, 22.942249, 24.988104> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538703, -0.259112, 0.801661,
		0.633865, -0.502165, -0.588256,
		0.554991, 0.825040, -0.106276,
		21.057592, 23.189762, 24.956221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.336842, 22.430418, 25.084057>,  <20.669098, 22.612234, 25.030615>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.336842, 22.430418, 25.084057> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.387085, 22.823750, 25.136646>,  <21.417231, 23.059750, 25.168200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.387085, 22.823750, 25.136646>,  <21.336842, 22.430418, 25.084057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.387085, 22.823750, 25.136646> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778293, -0.179852, 0.601592,
		0.615209, 0.026759, -0.787910,
		0.125610, 0.983330, 0.131473,
		21.424768, 23.118748, 25.176088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.050289, 22.652716, 25.128441>,  <21.336842, 22.430418, 25.084057>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.050289, 22.652716, 25.128441> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.885189, 22.962509, 25.320196>,  <21.786129, 23.148386, 25.435249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.885189, 22.962509, 25.320196>,  <22.050289, 22.652716, 25.128441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.885189, 22.962509, 25.320196> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599172, -0.165538, 0.783320,
		0.686027, 0.610549, -0.395724,
		-0.412748, 0.774485, 0.479387,
		21.761364, 23.194855, 25.464012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.966240, 22.149471, 24.553946>,  <22.050289, 22.652716, 25.128441>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.966240, 22.149471, 24.553946> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.194984, 21.919525, 24.788040>,  <22.332232, 21.781557, 24.928497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.194984, 21.919525, 24.788040>,  <21.966240, 22.149471, 24.553946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.194984, 21.919525, 24.788040> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433294, -0.394107, -0.810516,
		0.696584, 0.717083, 0.023711,
		0.571862, -0.574866, 0.585237,
		22.366543, 21.747065, 24.963612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.765280, 22.187908, 24.287821>,  <21.966240, 22.149471, 24.553946>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.765280, 22.187908, 24.287821> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.761944, 21.840420, 24.485912>,  <22.759943, 21.631926, 24.604767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.761944, 21.840420, 24.485912>,  <22.765280, 22.187908, 24.287821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.761944, 21.840420, 24.485912> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485846, -0.436381, -0.757314,
		0.874005, 0.234290, 0.425704,
		-0.008338, -0.868723, 0.495228,
		22.759443, 21.579803, 24.634481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.448986, 21.964296, 24.299713>,  <22.765280, 22.187908, 24.287821>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.448986, 21.964296, 24.299713> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.215981, 21.648388, 24.376593>,  <23.076178, 21.458843, 24.422720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.215981, 21.648388, 24.376593>,  <23.448986, 21.964296, 24.299713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.215981, 21.648388, 24.376593> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530650, -0.548624, -0.646082,
		0.615701, -0.274361, 0.738673,
		-0.582514, -0.789770, 0.192199,
		23.041225, 21.411457, 24.434252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.921665, 21.341299, 24.291523>,  <23.448986, 21.964296, 24.299713>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.921665, 21.341299, 24.291523> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.561890, 21.189426, 24.204941>,  <23.346025, 21.098303, 24.152992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.561890, 21.189426, 24.204941>,  <23.921665, 21.341299, 24.291523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.561890, 21.189426, 24.204941> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406337, -0.544092, -0.734066,
		0.160940, -0.748201, 0.643656,
		-0.899438, -0.379682, -0.216455,
		23.292059, 21.075521, 24.140003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.005770, 20.603359, 24.299389>,  <23.921665, 21.341299, 24.291523>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.005770, 20.603359, 24.299389> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.670242, 20.653889, 24.087568>,  <23.468925, 20.684206, 23.960476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.670242, 20.653889, 24.087568>,  <24.005770, 20.603359, 24.299389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.670242, 20.653889, 24.087568> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410211, -0.492854, -0.767347,
		-0.357926, -0.860893, 0.361596,
		-0.838818, 0.126323, -0.529553,
		23.418596, 20.691786, 23.928701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.661400, 19.925182, 24.207890>,  <24.005770, 20.603359, 24.299389>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.661400, 19.925182, 24.207890> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.571800, 20.169331, 23.903976>,  <23.518040, 20.315819, 23.721628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.571800, 20.169331, 23.903976>,  <23.661400, 19.925182, 24.207890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.571800, 20.169331, 23.903976> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457387, -0.622569, -0.634984,
		-0.860594, -0.489751, -0.139721,
		-0.223999, 0.610370, -0.759785,
		23.504601, 20.352442, 23.676041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.697180, 19.375904, 23.662535>,  <23.661400, 19.925182, 24.207890>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.697180, 19.375904, 23.662535> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.651718, 19.716057, 23.457037>,  <23.624441, 19.920149, 23.333738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.651718, 19.716057, 23.457037>,  <23.697180, 19.375904, 23.662535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.651718, 19.716057, 23.457037> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347321, -0.450462, -0.822467,
		-0.930834, -0.271910, -0.244160,
		-0.113652, 0.850382, -0.513745,
		23.617622, 19.971170, 23.302914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.126459, 18.754580, 23.581192>,  <23.697180, 19.375904, 23.662535>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.126459, 18.754580, 23.581192> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.076641, 18.368057, 23.491089>,  <23.046751, 18.136145, 23.437027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.076641, 18.368057, 23.491089>,  <23.126459, 18.754580, 23.581192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.076641, 18.368057, 23.491089> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149559, -0.206150, 0.967023,
		-0.980878, 0.154126, -0.118845,
		-0.124544, -0.966306, -0.225259,
		23.039278, 18.078165, 23.423512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.486126, 18.534113, 23.891741>,  <23.126459, 18.754580, 23.581192>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.486126, 18.534113, 23.891741> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.704105, 18.205341, 23.825453>,  <22.834894, 18.008078, 23.785679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.704105, 18.205341, 23.825453>,  <22.486126, 18.534113, 23.891741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.704105, 18.205341, 23.825453> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127988, -0.276874, 0.952344,
		-0.828643, -0.497769, -0.256079,
		0.544950, -0.821929, -0.165721,
		22.867590, 17.958763, 23.775736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.103611, 18.067034, 24.097744>,  <22.486126, 18.534113, 23.891741>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.103611, 18.067034, 24.097744> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.447067, 17.870087, 24.154755>,  <22.653141, 17.751919, 24.188961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.447067, 17.870087, 24.154755>,  <22.103611, 18.067034, 24.097744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.447067, 17.870087, 24.154755> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260978, -0.180609, 0.948299,
		-0.441169, -0.851443, -0.283575,
		0.858639, -0.492366, 0.142528,
		22.704659, 17.722376, 24.197514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.005728, 17.546555, 24.619211>,  <22.103611, 18.067034, 24.097744>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.005728, 17.546555, 24.619211> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.405579, 17.545097, 24.630035>,  <22.645489, 17.544222, 24.636530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.405579, 17.545097, 24.630035>,  <22.005728, 17.546555, 24.619211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.405579, 17.545097, 24.630035> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027289, -0.100586, 0.994554,
		-0.000900, -0.994922, -0.100648,
		0.999627, -0.003642, 0.027060,
		22.705467, 17.544004, 24.638153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.022572, 17.059185, 25.152744>,  <22.005728, 17.546555, 24.619211>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.022572, 17.059185, 25.152744> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.365753, 17.263531, 25.131096>,  <22.571663, 17.386139, 25.118107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.365753, 17.263531, 25.131096>,  <22.022572, 17.059185, 25.152744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.365753, 17.263531, 25.131096> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156483, -0.159538, 0.974711,
		0.489310, -0.844728, -0.216818,
		0.857956, 0.510864, -0.054122,
		22.623140, 17.416790, 25.114859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.592737, 16.676895, 25.436308>,  <22.022572, 17.059185, 25.152744>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.592737, 16.676895, 25.436308> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.700653, 17.060497, 25.470987>,  <22.765404, 17.290659, 25.491795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.700653, 17.060497, 25.470987>,  <22.592737, 16.676895, 25.436308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.700653, 17.060497, 25.470987> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042061, -0.101687, 0.993927,
		0.962000, -0.264507, -0.067771,
		0.269792, 0.959008, 0.086698,
		22.781591, 17.348200, 25.496996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.147583, 16.691978, 25.905582>,  <22.592737, 16.676895, 25.436308>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.147583, 16.691978, 25.905582> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.036209, 17.075726, 25.923834>,  <22.969383, 17.305975, 25.934786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.036209, 17.075726, 25.923834>,  <23.147583, 16.691978, 25.905582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.036209, 17.075726, 25.923834> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006379, -0.049356, 0.998761,
		0.960433, 0.277801, 0.019862,
		-0.278437, 0.959370, 0.045631,
		22.952679, 17.363537, 25.937523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.602188, 17.018435, 26.354877>,  <23.147583, 16.691978, 25.905582>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.602188, 17.018435, 26.354877> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.274250, 17.247463, 26.353186>,  <23.077488, 17.384880, 26.352171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.274250, 17.247463, 26.353186>,  <23.602188, 17.018435, 26.354877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.274250, 17.247463, 26.353186> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015362, 0.029383, 0.999450,
		0.572380, 0.819329, -0.032885,
		-0.819845, 0.572570, -0.004232,
		23.028297, 17.419235, 26.351915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.754353, 17.454578, 26.897804>,  <23.602188, 17.018435, 26.354877>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.754353, 17.454578, 26.897804> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.365864, 17.538086, 26.851940>,  <23.132771, 17.588190, 26.824423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.365864, 17.538086, 26.851940>,  <23.754353, 17.454578, 26.897804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.365864, 17.538086, 26.851940> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082799, 0.155438, 0.984370,
		0.223326, 0.965534, -0.133679,
		-0.971221, 0.208767, -0.114659,
		23.074497, 17.600716, 26.817543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<19.642658, 17.458965, 10.399220> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.341282, 17.515079, 10.656170>,  <19.160456, 17.548748, 10.810340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.341282, 17.515079, 10.656170>,  <19.642658, 17.458965, 10.399220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.341282, 17.515079, 10.656170> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572564, -0.340332, 0.745885,
		0.323258, 0.929782, 0.176098,
		-0.753442, 0.140286, 0.642374,
		19.115250, 17.557165, 10.848883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.928360, 17.830095, 10.981351>,  <19.642658, 17.458965, 10.399220>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.928360, 17.830095, 10.981351> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.602016, 17.634800, 11.105285>,  <19.406210, 17.517622, 11.179645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.602016, 17.634800, 11.105285>,  <19.928360, 17.830095, 10.981351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.602016, 17.634800, 11.105285> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434355, -0.163734, 0.885735,
		-0.381719, 0.857213, 0.345652,
		-0.815859, -0.488238, 0.309835,
		19.357258, 17.488329, 11.198236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.633114, 18.209673, 11.494813>,  <19.928360, 17.830095, 10.981351>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.633114, 18.209673, 11.494813> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.487110, 17.852829, 11.601330>,  <19.399508, 17.638723, 11.665240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.487110, 17.852829, 11.601330>,  <19.633114, 18.209673, 11.494813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.487110, 17.852829, 11.601330> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498220, 0.054454, 0.865339,
		-0.786476, 0.448529, 0.424590,
		-0.365009, -0.892108, 0.266293,
		19.377607, 17.585197, 11.681218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.558136, 18.288279, 12.227145>,  <19.633114, 18.209673, 11.494813>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.558136, 18.288279, 12.227145> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.525127, 17.894020, 12.168230>,  <19.505322, 17.657465, 12.132881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.525127, 17.894020, 12.168230>,  <19.558136, 18.288279, 12.227145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.525127, 17.894020, 12.168230> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372840, -0.167592, 0.912635,
		-0.924219, 0.020398, 0.381318,
		-0.082521, -0.985645, -0.147287,
		19.500372, 17.598326, 12.124044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.183887, 18.087730, 12.782497>,  <19.558136, 18.288279, 12.227145>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.183887, 18.087730, 12.782497> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.347900, 17.751305, 12.641371>,  <19.446308, 17.549448, 12.556695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.347900, 17.751305, 12.641371>,  <19.183887, 18.087730, 12.782497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.347900, 17.751305, 12.641371> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235832, -0.275907, 0.931804,
		-0.881053, -0.465277, 0.085220,
		0.410034, -0.841067, -0.352816,
		19.470911, 17.498985, 12.535526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.926390, 17.381359, 13.172294>,  <19.183887, 18.087730, 12.782497>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.926390, 17.381359, 13.172294> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.285885, 17.311340, 13.011482>,  <19.501583, 17.269329, 12.914995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.285885, 17.311340, 13.011482>,  <18.926390, 17.381359, 13.172294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.285885, 17.311340, 13.011482> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334826, -0.318039, 0.886985,
		-0.283120, -0.931779, -0.227226,
		0.898741, -0.175042, -0.402027,
		19.555508, 17.258827, 12.890874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.107805, 16.637037, 13.399387>,  <18.926390, 17.381359, 13.172294>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.107805, 16.637037, 13.399387> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.437885, 16.837597, 13.295351>,  <19.635933, 16.957932, 13.232929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.437885, 16.837597, 13.295351>,  <19.107805, 16.637037, 13.399387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.437885, 16.837597, 13.295351> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401525, -0.196852, 0.894442,
		0.397271, -0.842526, -0.363766,
		0.825199, 0.501398, -0.260092,
		19.685446, 16.988016, 13.217323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.628571, 16.241409, 13.709929>,  <19.107805, 16.637037, 13.399387>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.628571, 16.241409, 13.709929> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.785980, 16.600235, 13.629517>,  <19.880426, 16.815531, 13.581269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.785980, 16.600235, 13.629517>,  <19.628571, 16.241409, 13.709929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.785980, 16.600235, 13.629517> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664830, -0.126673, 0.736176,
		0.634933, -0.423354, -0.646244,
		0.393525, 0.897065, -0.201029,
		19.904037, 16.869354, 13.569208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.342688, 16.143019, 13.752404>,  <19.628571, 16.241409, 13.709929>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.342688, 16.143019, 13.752404> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.275600, 16.534538, 13.799429>,  <20.235348, 16.769451, 13.827643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.275600, 16.534538, 13.799429>,  <20.342688, 16.143019, 13.752404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.275600, 16.534538, 13.799429> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729950, 0.043148, 0.682137,
		0.662603, 0.200222, -0.721712,
		-0.167720, 0.978800, 0.117562,
		20.225285, 16.828178, 13.834698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.992491, 16.317940, 13.816825>,  <20.342688, 16.143019, 13.752404>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.992491, 16.317940, 13.816825> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.784695, 16.622540, 13.971870>,  <20.660017, 16.805300, 14.064898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.784695, 16.622540, 13.971870>,  <20.992491, 16.317940, 13.816825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.784695, 16.622540, 13.971870> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565975, -0.033198, 0.823754,
		0.640157, 0.647313, -0.413745,
		-0.519491, 0.761501, 0.387615,
		20.628847, 16.850990, 14.088155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.452211, 16.935745, 14.048310>,  <20.992491, 16.317940, 13.816825>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.452211, 16.935745, 14.048310> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.119026, 16.991493, 14.262506>,  <20.919115, 17.024942, 14.391025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.119026, 16.991493, 14.262506>,  <21.452211, 16.935745, 14.048310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.119026, 16.991493, 14.262506> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546308, 0.053441, 0.835878,
		0.087878, 0.988797, -0.120652,
		-0.832962, 0.139369, 0.535491,
		20.869137, 17.033304, 14.423154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.629915, 17.461348, 14.531696>,  <21.452211, 16.935745, 14.048310>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.629915, 17.461348, 14.531696> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.302223, 17.308247, 14.702513>,  <21.105608, 17.216387, 14.805003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.302223, 17.308247, 14.702513>,  <21.629915, 17.461348, 14.531696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.302223, 17.308247, 14.702513> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466124, -0.010652, 0.884655,
		-0.334055, 0.923790, 0.187136,
		-0.819229, -0.382752, 0.427042,
		21.056454, 17.193420, 14.830626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.752748, 18.258240, 14.738083>,  <21.629915, 17.461348, 14.531696>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.752748, 18.258240, 14.738083> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.015316, 18.558708, 14.765951>,  <22.172857, 18.738989, 14.782672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.015316, 18.558708, 14.765951>,  <21.752748, 18.258240, 14.738083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.015316, 18.558708, 14.765951> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012031, 0.102766, -0.994633,
		-0.754299, 0.652059, 0.076495,
		0.656421, 0.751171, 0.069671,
		22.212242, 18.784060, 14.786853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.411087, 18.832998, 14.404387>,  <21.752748, 18.258240, 14.738083>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.411087, 18.832998, 14.404387> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.804031, 18.907711, 14.400837>,  <22.039799, 18.952538, 14.398706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.804031, 18.907711, 14.400837>,  <21.411087, 18.832998, 14.404387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.804031, 18.907711, 14.400837> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074718, 0.348576, -0.934298,
		-0.171414, 0.918481, 0.356384,
		0.982362, 0.186780, -0.008876,
		22.098740, 18.963745, 14.398174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.483828, 19.471062, 14.008822>,  <21.411087, 18.832998, 14.404387>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.483828, 19.471062, 14.008822> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.847607, 19.304810, 14.013769>,  <22.065874, 19.205059, 14.016737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.847607, 19.304810, 14.013769>,  <21.483828, 19.471062, 14.008822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.847607, 19.304810, 14.013769> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137857, 0.273325, -0.951992,
		0.392297, 0.867493, 0.305873,
		0.909450, -0.415630, 0.012366,
		22.120441, 19.180120, 14.017479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.870247, 20.002989, 13.747603>,  <21.483828, 19.471062, 14.008822>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.870247, 20.002989, 13.747603> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.060905, 19.657909, 13.680008>,  <22.175301, 19.450861, 13.639451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.060905, 19.657909, 13.680008>,  <21.870247, 20.002989, 13.747603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.060905, 19.657909, 13.680008> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211491, 0.299116, -0.930484,
		0.853276, 0.407771, 0.325026,
		0.476645, -0.862700, -0.168989,
		22.203899, 19.399099, 13.629312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.976095, 20.112957, 13.021101>,  <21.870247, 20.002989, 13.747603>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.976095, 20.112957, 13.021101> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.141312, 19.750568, 13.058228>,  <22.240440, 19.533134, 13.080503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.141312, 19.750568, 13.058228>,  <21.976095, 20.112957, 13.021101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.141312, 19.750568, 13.058228> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177249, -0.019997, -0.983963,
		0.893298, 0.422867, 0.152323,
		0.413039, -0.905971, 0.092816,
		22.265223, 19.478777, 13.086073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.697491, 20.029251, 12.682257>,  <21.976095, 20.112957, 13.021101>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.697491, 20.029251, 12.682257> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.496361, 19.684303, 12.705877>,  <22.375683, 19.477335, 12.720050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.496361, 19.684303, 12.705877>,  <22.697491, 20.029251, 12.682257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.496361, 19.684303, 12.705877> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112284, -0.132901, -0.984748,
		0.857064, -0.488526, 0.163656,
		-0.502825, -0.862369, 0.059051,
		22.345512, 19.425592, 12.723593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.169731, 19.541559, 12.344695>,  <22.697491, 20.029251, 12.682257>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.169731, 19.541559, 12.344695> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.815800, 19.355625, 12.331985>,  <22.603441, 19.244064, 12.324360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.815800, 19.355625, 12.331985>,  <23.169731, 19.541559, 12.344695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.815800, 19.355625, 12.331985> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077845, -0.080252, -0.993730,
		0.459369, -0.881753, 0.107194,
		-0.884827, -0.464834, -0.031775,
		22.550352, 19.216175, 12.322453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.228432, 19.016552, 11.810600>,  <23.169731, 19.541559, 12.344695>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.228432, 19.016552, 11.810600> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.833946, 19.055195, 11.864341>,  <22.597256, 19.078381, 11.896585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.833946, 19.055195, 11.864341>,  <23.228432, 19.016552, 11.810600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.833946, 19.055195, 11.864341> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120948, 0.133282, -0.983670,
		-0.112935, -0.986358, -0.119760,
		-0.986214, 0.096606, 0.134351,
		22.538082, 19.084177, 11.904646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.956301, 18.633760, 11.329581>,  <23.228432, 19.016552, 11.810600>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.956301, 18.633760, 11.329581> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.670593, 18.892891, 11.435521>,  <22.499168, 19.048368, 11.499085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.670593, 18.892891, 11.435521>,  <22.956301, 18.633760, 11.329581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.670593, 18.892891, 11.435521> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172414, 0.203888, -0.963692,
		-0.678303, -0.733998, -0.033937,
		-0.714268, 0.647825, 0.264850,
		22.456312, 19.087238, 11.514976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.334358, 18.471865, 10.880955>,  <22.956301, 18.633760, 11.329581>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.334358, 18.471865, 10.880955> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.266518, 18.843121, 11.013492>,  <22.225813, 19.065874, 11.093014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.266518, 18.843121, 11.013492>,  <22.334358, 18.471865, 10.880955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.266518, 18.843121, 11.013492> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352059, 0.256966, -0.900013,
		-0.920483, -0.269296, 0.283179,
		-0.169603, 0.928142, 0.331341,
		22.215637, 19.121563, 11.112894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.585770, 18.565313, 10.800195>,  <22.334358, 18.471865, 10.880955>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.585770, 18.565313, 10.800195> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.772148, 18.919140, 10.808527>,  <21.883974, 19.131435, 10.813526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.772148, 18.919140, 10.808527>,  <21.585770, 18.565313, 10.800195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.772148, 18.919140, 10.808527> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389260, 0.226069, -0.892956,
		-0.794589, 0.407960, 0.449662,
		0.465945, 0.884569, 0.020829,
		21.911932, 19.184511, 10.814775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.116961, 19.162750, 10.633806>,  <21.585770, 18.565313, 10.800195>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.116961, 19.162750, 10.633806> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.476200, 19.312721, 10.541851>,  <21.691744, 19.402704, 10.486678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.476200, 19.312721, 10.541851>,  <21.116961, 19.162750, 10.633806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.476200, 19.312721, 10.541851> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378103, 0.391261, -0.839019,
		-0.224625, 0.840443, 0.493151,
		0.898099, 0.374926, -0.229887,
		21.745630, 19.425200, 10.472885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.906387, 19.807913, 10.390494>,  <21.116961, 19.162750, 10.633806>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.906387, 19.807913, 10.390494> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.272610, 19.726990, 10.251453>,  <21.492344, 19.678436, 10.168029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.272610, 19.726990, 10.251453>,  <20.906387, 19.807913, 10.390494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.272610, 19.726990, 10.251453> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294025, 0.253016, -0.921700,
		0.274418, 0.946073, 0.172166,
		0.915556, -0.202310, -0.347602,
		21.547277, 19.666296, 10.147173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.174801, 20.304977, 9.793796>,  <20.906387, 19.807913, 10.390494>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.174801, 20.304977, 9.793796> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.352489, 19.948334, 9.758701>,  <21.459103, 19.734346, 9.737645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.352489, 19.948334, 9.758701>,  <21.174801, 20.304977, 9.793796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.352489, 19.948334, 9.758701> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080875, 0.057621, -0.995057,
		0.892259, 0.449122, -0.046513,
		0.444222, -0.891611, -0.087736,
		21.485756, 19.680851, 9.732381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.022902, 20.992777, 10.072222>,  <21.174801, 20.304977, 9.793796>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.022902, 20.992777, 10.072222> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.387848, 21.043465, 10.227930>,  <21.606815, 21.073877, 10.321355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.387848, 21.043465, 10.227930>,  <21.022902, 20.992777, 10.072222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.387848, 21.043465, 10.227930> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398842, -0.489479, -0.775458,
		0.092274, 0.862758, -0.497125,
		0.912365, 0.126720, 0.389270,
		21.661558, 21.081480, 10.344711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.590302, 20.773663, 10.739002>,  <21.022902, 20.992777, 10.072222>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.590302, 20.773663, 10.739002> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.248127, 20.929298, 10.602274>,  <20.042822, 21.022680, 10.520237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.248127, 20.929298, 10.602274>,  <20.590302, 20.773663, 10.739002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.248127, 20.929298, 10.602274> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245893, 0.275744, 0.929248,
		0.455817, 0.878962, -0.140206,
		-0.855434, 0.389091, -0.341820,
		19.991497, 21.046026, 10.499728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.584888, 21.604794, 10.680978>,  <20.590302, 20.773663, 10.739002>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.584888, 21.604794, 10.680978> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.261127, 21.379547, 10.747632>,  <20.066870, 21.244400, 10.787624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.261127, 21.379547, 10.747632>,  <20.584888, 21.604794, 10.680978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.261127, 21.379547, 10.747632> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005754, 0.291347, 0.956600,
		-0.587225, 0.773317, -0.239057,
		-0.809403, -0.563115, 0.166637,
		20.018307, 21.210613, 10.797623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.294252, 22.079573, 11.133082>,  <20.584888, 21.604794, 10.680978>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.294252, 22.079573, 11.133082> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.136040, 21.722942, 11.221305>,  <20.041111, 21.508965, 11.274239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.136040, 21.722942, 11.221305>,  <20.294252, 22.079573, 11.133082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.136040, 21.722942, 11.221305> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069348, 0.210463, 0.975139,
		-0.915830, 0.400995, -0.021416,
		-0.395533, -0.891576, 0.220557,
		20.017380, 21.455469, 11.287472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.941477, 22.220371, 11.690162>,  <20.294252, 22.079573, 11.133082>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.941477, 22.220371, 11.690162> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.983406, 21.823132, 11.711202>,  <20.008564, 21.584787, 11.723825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.983406, 21.823132, 11.711202>,  <19.941477, 22.220371, 11.690162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.983406, 21.823132, 11.711202> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110466, 0.064191, 0.991805,
		-0.988337, -0.098154, 0.116432,
		0.104823, -0.993099, 0.052600,
		20.014853, 21.525202, 11.726981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.627846, 22.061516, 12.208862>,  <19.941477, 22.220371, 11.690162>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.627846, 22.061516, 12.208862> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.854118, 21.733810, 12.171313>,  <19.989882, 21.537188, 12.148784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.854118, 21.733810, 12.171313>,  <19.627846, 22.061516, 12.208862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.854118, 21.733810, 12.171313> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107126, -0.039862, 0.993446,
		-0.817635, -0.572031, 0.065214,
		0.565682, -0.819263, -0.093872,
		20.023823, 21.488031, 12.143151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.351288, 21.581369, 12.668609>,  <19.627846, 22.061516, 12.208862>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.351288, 21.581369, 12.668609> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.717937, 21.430607, 12.615331>,  <19.937927, 21.340149, 12.583364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.717937, 21.430607, 12.615331>,  <19.351288, 21.581369, 12.668609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.717937, 21.430607, 12.615331> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160127, 0.040891, 0.986249,
		-0.366279, -0.925348, 0.097835,
		0.916624, -0.376908, -0.133196,
		19.992924, 21.317535, 12.575372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.409311, 20.935740, 13.177665>,  <19.351288, 21.581369, 12.668609>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.409311, 20.935740, 13.177665> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.775593, 21.062546, 13.078882>,  <19.995361, 21.138630, 13.019612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.775593, 21.062546, 13.078882>,  <19.409311, 20.935740, 13.177665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.775593, 21.062546, 13.078882> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282068, -0.069336, 0.956886,
		0.286227, -0.945882, -0.152912,
		0.915703, 0.317018, -0.246957,
		20.050304, 21.157652, 13.004795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.757368, 20.421291, 13.507144>,  <19.409311, 20.935740, 13.177665>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.757368, 20.421291, 13.507144> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.014061, 20.719662, 13.435841>,  <20.168077, 20.898684, 13.393059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.014061, 20.719662, 13.435841>,  <19.757368, 20.421291, 13.507144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.014061, 20.719662, 13.435841> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501894, -0.232715, 0.833034,
		0.579897, -0.624052, -0.523716,
		0.641733, 0.745924, -0.178257,
		20.206581, 20.943439, 13.382363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.463615, 20.181822, 13.608788>,  <19.757368, 20.421291, 13.507144>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.463615, 20.181822, 13.608788> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.447796, 20.578209, 13.660040>,  <20.438303, 20.816042, 13.690790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.447796, 20.578209, 13.660040>,  <20.463615, 20.181822, 13.608788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.447796, 20.578209, 13.660040> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177219, -0.119239, 0.976922,
		0.983376, 0.061345, -0.170903,
		-0.039551, 0.990969, 0.128128,
		20.435930, 20.875500, 13.698479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.910494, 20.291309, 14.117384>,  <20.463615, 20.181822, 13.608788>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.910494, 20.291309, 14.117384> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.763798, 20.662582, 14.142605>,  <20.675779, 20.885347, 14.157738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.763798, 20.662582, 14.142605>,  <20.910494, 20.291309, 14.117384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.763798, 20.662582, 14.142605> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417459, 0.103619, 0.902769,
		0.831402, 0.357403, -0.425480,
		-0.366740, 0.928184, 0.063052,
		20.653776, 20.941038, 14.161521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.382900, 20.719627, 14.446208>,  <20.910494, 20.291309, 14.117384>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.382900, 20.719627, 14.446208> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.039951, 20.921181, 14.488188>,  <20.834183, 21.042112, 14.513376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.039951, 20.921181, 14.488188>,  <21.382900, 20.719627, 14.446208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.039951, 20.921181, 14.488188> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167558, 0.080449, 0.982574,
		0.486662, 0.860016, -0.153405,
		-0.857371, 0.503886, 0.104951,
		20.782740, 21.072346, 14.519673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.571444, 21.318535, 14.821180>,  <21.382900, 20.719627, 14.446208>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.571444, 21.318535, 14.821180> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.177189, 21.278172, 14.875351>,  <20.940636, 21.253954, 14.907853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.177189, 21.278172, 14.875351>,  <21.571444, 21.318535, 14.821180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.177189, 21.278172, 14.875351> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131504, 0.044596, 0.990312,
		-0.105970, 0.993896, -0.030686,
		-0.985635, -0.100908, 0.135427,
		20.881498, 21.247900, 14.915979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.407259, 21.810701, 15.289657>,  <21.571444, 21.318535, 14.821180>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.407259, 21.810701, 15.289657> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.088177, 21.569553, 15.295530>,  <20.896729, 21.424864, 15.299054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.088177, 21.569553, 15.295530>,  <21.407259, 21.810701, 15.289657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.088177, 21.569553, 15.295530> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033389, 0.068464, 0.997095,
		-0.602124, 0.794896, -0.074743,
		-0.797704, -0.602871, 0.014684,
		20.848866, 21.388693, 15.299935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.891665, 22.202446, 15.646056>,  <21.407259, 21.810701, 15.289657>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.891665, 22.202446, 15.646056> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.804241, 21.816021, 15.701122>,  <20.751787, 21.584166, 15.734162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.804241, 21.816021, 15.701122>,  <20.891665, 22.202446, 15.646056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.804241, 21.816021, 15.701122> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054136, 0.152863, 0.986764,
		-0.974321, 0.208211, -0.085708,
		-0.218556, -0.966065, 0.137666,
		20.738674, 21.526201, 15.742422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.243452, 22.096039, 15.934142>,  <20.891665, 22.202446, 15.646056>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.243452, 22.096039, 15.934142> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.439331, 21.760056, 16.027664>,  <20.556858, 21.558466, 16.083776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.439331, 21.760056, 16.027664>,  <20.243452, 22.096039, 15.934142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.439331, 21.760056, 16.027664> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134901, 0.191937, 0.972092,
		-0.861393, -0.507571, -0.019321,
		0.489697, -0.839960, 0.233805,
		20.586241, 21.508068, 16.097805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.760157, 21.895452, 16.398413>,  <20.243452, 22.096039, 15.934142>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.760157, 21.895452, 16.398413> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.098026, 21.687050, 16.447527>,  <20.300749, 21.562008, 16.476995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.098026, 21.687050, 16.447527>,  <19.760157, 21.895452, 16.398413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.098026, 21.687050, 16.447527> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072349, 0.116158, 0.990592,
		-0.530367, -0.845612, 0.060421,
		0.844676, -0.521006, 0.122786,
		20.351429, 21.530748, 16.484362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.613598, 21.334545, 16.893373>,  <19.760157, 21.895452, 16.398413>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.613598, 21.334545, 16.893373> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.005814, 21.411667, 16.908157>,  <20.241144, 21.457941, 16.917028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.005814, 21.411667, 16.908157>,  <19.613598, 21.334545, 16.893373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.005814, 21.411667, 16.908157> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025157, -0.063315, 0.997676,
		0.194699, -0.979192, -0.057233,
		0.980541, 0.192807, 0.036961,
		20.299976, 21.469509, 16.919245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.867170, 20.914530, 17.577971>,  <19.613598, 21.334545, 16.893373>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.867170, 20.914530, 17.577971> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.156116, 21.178829, 17.496386>,  <20.329483, 21.337408, 17.447435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.156116, 21.178829, 17.496386>,  <19.867170, 20.914530, 17.577971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.156116, 21.178829, 17.496386> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047953, 0.246376, 0.967987,
		0.689848, -0.709020, 0.146289,
		0.722364, 0.660749, -0.203962,
		20.372826, 21.377054, 17.435198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.277323, 20.829704, 18.139654>,  <19.867170, 20.914530, 17.577971>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.277323, 20.829704, 18.139654> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.390331, 21.182793, 17.989462>,  <20.458136, 21.394646, 17.899347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.390331, 21.182793, 17.989462>,  <20.277323, 20.829704, 18.139654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.390331, 21.182793, 17.989462> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013157, 0.394955, 0.918606,
		0.959171, -0.254585, 0.123197,
		0.282521, 0.882721, -0.375480,
		20.475088, 21.447609, 17.876818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.857267, 21.156818, 18.469753>,  <20.277323, 20.829704, 18.139654>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.857267, 21.156818, 18.469753> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.671658, 21.474159, 18.312134>,  <20.560291, 21.664564, 18.217562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.671658, 21.474159, 18.312134>,  <20.857267, 21.156818, 18.469753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.671658, 21.474159, 18.312134> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028273, 0.431346, 0.901744,
		0.885372, 0.429571, -0.177724,
		-0.464023, 0.793353, -0.394046,
		20.532450, 21.712166, 18.193920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.070574, 21.707102, 18.911762>,  <20.857267, 21.156818, 18.469753>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.070574, 21.707102, 18.911762> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.771183, 21.845097, 18.685217>,  <20.591549, 21.927893, 18.549290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.771183, 21.845097, 18.685217>,  <21.070574, 21.707102, 18.911762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.771183, 21.845097, 18.685217> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318674, 0.561864, 0.763384,
		0.581578, 0.751860, -0.310603,
		-0.748475, 0.344986, -0.566365,
		20.546640, 21.948593, 18.515306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.211275, 22.404692, 18.851891>,  <21.070574, 21.707102, 18.911762>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.211275, 22.404692, 18.851891> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.822132, 22.340485, 18.785217>,  <20.588646, 22.301960, 18.745214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.822132, 22.340485, 18.785217>,  <21.211275, 22.404692, 18.851891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.822132, 22.340485, 18.785217> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222867, 0.456070, 0.861586,
		-0.062280, 0.875348, -0.479465,
		-0.972857, -0.160517, -0.166682,
		20.530275, 22.292330, 18.735212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.891411, 23.028975, 18.917761>,  <21.211275, 22.404692, 18.851891>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.891411, 23.028975, 18.917761> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.571850, 22.794903, 18.973360>,  <20.380114, 22.654459, 19.006720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.571850, 22.794903, 18.973360>,  <20.891411, 23.028975, 18.917761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.571850, 22.794903, 18.973360> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327804, 0.617385, 0.715109,
		-0.504281, 0.525739, -0.685054,
		-0.798903, -0.585179, 0.138996,
		20.332178, 22.619349, 19.015059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.233345, 23.451550, 18.854898>,  <20.891411, 23.028975, 18.917761>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.233345, 23.451550, 18.854898> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.126720, 23.127834, 19.064278>,  <20.062746, 22.933605, 19.189905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.126720, 23.127834, 19.064278>,  <20.233345, 23.451550, 18.854898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.126720, 23.127834, 19.064278> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362519, 0.587405, 0.723557,
		-0.893043, 0.003112, -0.449961,
		-0.266561, -0.809287, 0.523450,
		20.046753, 22.885048, 19.221313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.667973, 23.744215, 19.200243>,  <20.233345, 23.451550, 18.854898>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.667973, 23.744215, 19.200243> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.730236, 23.403702, 19.400679>,  <19.767593, 23.199394, 19.520941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.730236, 23.403702, 19.400679>,  <19.667973, 23.744215, 19.200243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.730236, 23.403702, 19.400679> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103620, 0.490403, 0.865314,
		-0.982361, -0.186615, -0.011876,
		0.155656, -0.851281, 0.501090,
		19.776934, 23.148317, 19.551006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.075583, 23.646854, 19.685059>,  <19.667973, 23.744215, 19.200243>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.075583, 23.646854, 19.685059> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.382874, 23.433342, 19.826427>,  <19.567247, 23.305235, 19.911249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.382874, 23.433342, 19.826427>,  <19.075583, 23.646854, 19.685059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.382874, 23.433342, 19.826427> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184904, 0.343529, 0.920760,
		-0.612894, -0.772701, 0.165210,
		0.768226, -0.533780, 0.353422,
		19.613342, 23.273209, 19.932455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.808243, 23.173750, 20.305117>,  <19.075583, 23.646854, 19.685059>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.808243, 23.173750, 20.305117> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.204315, 23.224445, 20.328707>,  <19.441959, 23.254862, 20.342861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.204315, 23.224445, 20.328707>,  <18.808243, 23.173750, 20.305117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.204315, 23.224445, 20.328707> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075292, 0.128087, 0.988901,
		0.117754, -0.983634, 0.136370,
		0.990184, 0.126715, 0.058977,
		19.501369, 23.262466, 20.346399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.602062, 22.495346, 20.536631>,  <18.808243, 23.173750, 20.305117>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.602062, 22.495346, 20.536631> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.387722, 22.187424, 20.675344>,  <18.259117, 22.002670, 20.758574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.387722, 22.187424, 20.675344>,  <18.602062, 22.495346, 20.536631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.387722, 22.187424, 20.675344> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377382, -0.149045, -0.913985,
		0.755279, -0.620631, -0.210645,
		-0.535852, -0.769807, 0.346785,
		18.226967, 21.956482, 20.779381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.937477, 21.960730, 20.257536>,  <18.602062, 22.495346, 20.536631>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.937477, 21.960730, 20.257536> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.588665, 21.806374, 20.377968>,  <18.379377, 21.713760, 20.450228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.588665, 21.806374, 20.377968>,  <18.937477, 21.960730, 20.257536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.588665, 21.806374, 20.377968> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050299, -0.541228, -0.839370,
		0.486858, -0.747101, 0.452558,
		-0.872032, -0.385891, 0.301080,
		18.327055, 21.690607, 20.468292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.893736, 21.327139, 19.976700>,  <18.937477, 21.960730, 20.257536>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.893736, 21.327139, 19.976700> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.511585, 21.434914, 20.025126>,  <18.282295, 21.499578, 20.054180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.511585, 21.434914, 20.025126>,  <18.893736, 21.327139, 19.976700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.511585, 21.434914, 20.025126> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183082, -0.218507, -0.958507,
		-0.231823, -0.937896, 0.258088,
		-0.955374, 0.269455, 0.121057,
		18.224972, 21.515745, 20.061443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.577570, 20.892784, 19.610563>,  <18.893736, 21.327139, 19.976700>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.577570, 20.892784, 19.610563> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.290741, 21.170139, 19.638910>,  <18.118645, 21.336552, 19.655918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.290741, 21.170139, 19.638910>,  <18.577570, 20.892784, 19.610563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.290741, 21.170139, 19.638910> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266098, -0.178369, -0.947300,
		-0.644206, -0.698138, 0.312412,
		-0.717071, 0.693389, 0.070867,
		18.075619, 21.378155, 19.660170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.909977, 20.577007, 19.445599>,  <18.577570, 20.892784, 19.610563>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.909977, 20.577007, 19.445599> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.863319, 20.966396, 19.366867>,  <17.835325, 21.200029, 19.319628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.863319, 20.966396, 19.366867>,  <17.909977, 20.577007, 19.445599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.863319, 20.966396, 19.366867> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425526, -0.228055, -0.875739,
		-0.897397, -0.018394, 0.440840,
		-0.116644, 0.973475, -0.196829,
		17.828327, 21.258438, 19.307819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <37.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <37.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 37.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 37.000000>,  <37.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 0.000000>,  <0.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 0.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 0.000000, 37.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 37.000000, 0.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
