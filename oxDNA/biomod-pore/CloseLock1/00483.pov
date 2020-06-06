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
	<24.320795, 35.215897, 35.162853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.228426, 34.917538, 34.912956>,  <24.173004, 34.738522, 34.763016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.228426, 34.917538, 34.912956>,  <24.320795, 35.215897, 35.162853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.228426, 34.917538, 34.912956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485895, 0.467893, -0.738229,
		0.842960, -0.474035, 0.254382,
		-0.230922, -0.745900, -0.624747,
		24.159149, 34.693768, 34.725533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.011103, 34.898254, 34.792759>,  <24.320795, 35.215897, 35.162853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.011103, 34.898254, 34.792759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.681976, 34.886509, 34.565739>,  <24.484501, 34.879459, 34.429527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.681976, 34.886509, 34.565739>,  <25.011103, 34.898254, 34.792759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.681976, 34.886509, 34.565739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516039, 0.379754, -0.767783,
		0.238075, -0.924622, -0.297314,
		-0.822815, -0.029364, -0.567551,
		24.435133, 34.877701, 34.395473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.212729, 34.842960, 34.069279>,  <25.011103, 34.898254, 34.792759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.212729, 34.842960, 34.069279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.850887, 35.009956, 34.034882>,  <24.633783, 35.110153, 34.014244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.850887, 35.009956, 34.034882>,  <25.212729, 34.842960, 34.069279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.850887, 35.009956, 34.034882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340620, 0.586722, -0.734667,
		-0.256268, -0.693871, -0.672957,
		-0.904602, 0.417494, -0.085988,
		24.579506, 35.135204, 34.009087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.071362, 34.879780, 33.335960>,  <25.212729, 34.842960, 34.069279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.071362, 34.879780, 33.335960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.832193, 35.152546, 33.504475>,  <24.688692, 35.316204, 33.605583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.832193, 35.152546, 33.504475>,  <25.071362, 34.879780, 33.335960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.832193, 35.152546, 33.504475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357217, 0.697202, -0.621535,
		-0.717556, -0.221138, -0.660463,
		-0.597921, 0.681915, 0.421287,
		24.652817, 35.357121, 33.630859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.792515, 35.271812, 32.867687>,  <25.071362, 34.879780, 33.335960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.792515, 35.271812, 32.867687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.818090, 35.508251, 33.189312>,  <24.833437, 35.650112, 33.382286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.818090, 35.508251, 33.189312>,  <24.792515, 35.271812, 32.867687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.818090, 35.508251, 33.189312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437899, 0.707384, -0.554845,
		-0.896748, 0.387576, -0.213609,
		0.063941, 0.591095, 0.804064,
		24.837273, 35.685581, 33.430531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.364801, 35.901867, 32.772865>,  <24.792515, 35.271812, 32.867687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.364801, 35.901867, 32.772865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.694731, 35.939091, 32.995937>,  <24.892689, 35.961426, 33.129780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.694731, 35.939091, 32.995937>,  <24.364801, 35.901867, 32.772865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.694731, 35.939091, 32.995937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287647, 0.780098, -0.555613,
		-0.486749, 0.618697, 0.616675,
		0.824824, 0.093059, 0.557679,
		24.942179, 35.967007, 33.163242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.419966, 36.626923, 32.926205>,  <24.364801, 35.901867, 32.772865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.419966, 36.626923, 32.926205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.777479, 36.447792, 32.936005>,  <24.991987, 36.340313, 32.941887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.777479, 36.447792, 32.936005>,  <24.419966, 36.626923, 32.926205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.777479, 36.447792, 32.936005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395691, 0.761655, -0.513138,
		0.211134, 0.468330, 0.857956,
		0.893785, -0.447827, 0.024503,
		25.045614, 36.313442, 32.943356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.828453, 37.168026, 33.077881>,  <24.419966, 36.626923, 32.926205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.828453, 37.168026, 33.077881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.098574, 36.900902, 32.952667>,  <25.260647, 36.740627, 32.877537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.098574, 36.900902, 32.952667>,  <24.828453, 37.168026, 33.077881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.098574, 36.900902, 32.952667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437747, 0.704505, -0.558615,
		0.593587, 0.240202, 0.768087,
		0.675301, -0.667814, -0.313038,
		25.301165, 36.700558, 32.858757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.582899, 37.484436, 33.132271>,  <24.828453, 37.168026, 33.077881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.582899, 37.484436, 33.132271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.627007, 37.182762, 32.873337>,  <25.653471, 37.001759, 32.717976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.627007, 37.182762, 32.873337>,  <25.582899, 37.484436, 33.132271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.627007, 37.182762, 32.873337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456322, 0.617021, -0.641137,
		0.882956, -0.224696, 0.412190,
		0.110269, -0.754186, -0.647336,
		25.660088, 36.956505, 32.679134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.340876, 37.371918, 32.946964>,  <25.582899, 37.484436, 33.132271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.340876, 37.371918, 32.946964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.102694, 37.224346, 32.661495>,  <25.959784, 37.135803, 32.490215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.102694, 37.224346, 32.661495>,  <26.340876, 37.371918, 32.946964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.102694, 37.224346, 32.661495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431836, 0.602106, -0.671555,
		0.677459, -0.708071, -0.199212,
		-0.595455, -0.368924, -0.713673,
		25.924057, 37.113670, 32.447395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.699785, 37.316582, 32.363560>,  <26.340876, 37.371918, 32.946964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.699785, 37.316582, 32.363560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.331984, 37.310364, 32.206448>,  <26.111303, 37.306633, 32.112183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.331984, 37.310364, 32.206448>,  <26.699785, 37.316582, 32.363560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.331984, 37.310364, 32.206448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319625, 0.552083, -0.770094,
		0.228814, -0.833645, -0.502674,
		-0.919502, -0.015541, -0.392777,
		26.056133, 37.305702, 32.088615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.895800, 37.406170, 31.736908>,  <26.699785, 37.316582, 32.363560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.895800, 37.406170, 31.736908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.500254, 37.465530, 31.741339>,  <26.262926, 37.501148, 31.743998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.500254, 37.465530, 31.741339>,  <26.895800, 37.406170, 31.736908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.500254, 37.465530, 31.741339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086150, 0.631570, -0.770518,
		-0.121340, -0.760984, -0.637323,
		-0.988865, 0.148400, 0.011076,
		26.203594, 37.510052, 31.744661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.668760, 37.295914, 31.050680>,  <26.895800, 37.406170, 31.736908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.668760, 37.295914, 31.050680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.445719, 37.555260, 31.258024>,  <26.311893, 37.710869, 31.382431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.445719, 37.555260, 31.258024>,  <26.668760, 37.295914, 31.050680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.445719, 37.555260, 31.258024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005504, 0.627325, -0.778738,
		-0.830088, -0.431376, -0.353368,
		-0.557605, 0.648366, 0.518360,
		26.278437, 37.749771, 31.413532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.064682, 37.493832, 30.626450>,  <26.668760, 37.295914, 31.050680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.064682, 37.493832, 30.626450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.097078, 37.792259, 30.890820>,  <26.116516, 37.971317, 31.049442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.097078, 37.792259, 30.890820>,  <26.064682, 37.493832, 30.626450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.097078, 37.792259, 30.890820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098777, 0.653831, -0.750166,
		-0.991808, 0.126040, -0.020740,
		0.080990, 0.746070, 0.660924,
		26.121376, 38.016079, 31.089096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.731434, 38.015301, 30.348116>,  <26.064682, 37.493832, 30.626450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.731434, 38.015301, 30.348116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.924217, 38.231030, 30.624334>,  <26.039888, 38.360466, 30.790066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.924217, 38.231030, 30.624334>,  <25.731434, 38.015301, 30.348116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.924217, 38.231030, 30.624334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016802, 0.793662, -0.608126,
		-0.876032, 0.281490, 0.391575,
		0.481960, 0.539318, 0.690544,
		26.068806, 38.392826, 30.831497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.224323, 38.630829, 30.528690>,  <25.731434, 38.015301, 30.348116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.224323, 38.630829, 30.528690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.618433, 38.671761, 30.583487>,  <25.854898, 38.696320, 30.616364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.618433, 38.671761, 30.583487>,  <25.224323, 38.630829, 30.528690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.618433, 38.671761, 30.583487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015683, 0.743711, -0.668317,
		-0.170266, 0.660623, 0.731154,
		0.985273, 0.102325, 0.136989,
		25.914015, 38.702457, 30.624582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.388613, 39.362190, 30.428946>,  <25.224323, 38.630829, 30.528690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.388613, 39.362190, 30.428946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.772274, 39.252117, 30.455179>,  <26.002470, 39.186073, 30.470921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.772274, 39.252117, 30.455179>,  <25.388613, 39.362190, 30.428946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.772274, 39.252117, 30.455179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252786, 0.729651, -0.635381,
		0.126993, 0.626006, 0.769409,
		0.959152, -0.275185, 0.065585,
		26.060020, 39.169563, 30.474855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.802311, 40.022575, 30.445944>,  <25.388613, 39.362190, 30.428946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.802311, 40.022575, 30.445944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.047455, 39.729931, 30.326513>,  <26.194540, 39.554344, 30.254854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.047455, 39.729931, 30.326513>,  <25.802311, 40.022575, 30.445944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.047455, 39.729931, 30.326513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360115, 0.594926, -0.718596,
		0.703364, 0.332876, 0.628070,
		0.612859, -0.731612, -0.298576,
		26.231312, 39.510448, 30.236940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.545523, 40.332443, 30.429905>,  <25.802311, 40.022575, 30.445944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.545523, 40.332443, 30.429905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.501144, 40.009659, 30.197868>,  <26.474518, 39.815987, 30.058647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.501144, 40.009659, 30.197868>,  <26.545523, 40.332443, 30.429905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.501144, 40.009659, 30.197868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354521, 0.513158, -0.781654,
		0.928443, -0.292376, 0.229152,
		-0.110946, -0.806960, -0.580091,
		26.467861, 39.767570, 30.023842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.062521, 40.340412, 30.017712>,  <26.545523, 40.332443, 30.429905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.062521, 40.340412, 30.017712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.803015, 40.132072, 29.795786>,  <26.647310, 40.007069, 29.662630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.803015, 40.132072, 29.795786>,  <27.062521, 40.340412, 30.017712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.803015, 40.132072, 29.795786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088836, 0.672250, -0.734975,
		0.755784, -0.526115, -0.389864,
		-0.648768, -0.520848, -0.554814,
		26.608385, 39.975819, 29.629341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.438995, 40.401134, 29.206408>,  <27.062521, 40.340412, 30.017712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.438995, 40.401134, 29.206408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.074579, 40.245628, 29.151464>,  <26.855930, 40.152325, 29.118498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.074579, 40.245628, 29.151464>,  <27.438995, 40.401134, 29.206408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.074579, 40.245628, 29.151464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091473, 0.515398, -0.852055,
		0.402046, -0.763691, -0.505109,
		-0.911039, -0.388769, -0.137357,
		26.801268, 40.128998, 29.110258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.477421, 40.015961, 28.530180>,  <27.438995, 40.401134, 29.206408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.477421, 40.015961, 28.530180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.084267, 40.067322, 28.583014>,  <26.848373, 40.098141, 28.614714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.084267, 40.067322, 28.583014>,  <27.477421, 40.015961, 28.530180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.084267, 40.067322, 28.583014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096531, 0.251665, -0.962988,
		-0.156895, -0.959258, -0.234963,
		-0.982887, 0.128407, 0.132083,
		26.789400, 40.105843, 28.622639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.187874, 39.653957, 27.969650>,  <27.477421, 40.015961, 28.530180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.187874, 39.653957, 27.969650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.890617, 39.882030, 28.109730>,  <26.712263, 40.018875, 28.193777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.890617, 39.882030, 28.109730>,  <27.187874, 39.653957, 27.969650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.890617, 39.882030, 28.109730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358745, 0.102289, -0.927814,
		-0.564842, -0.815128, 0.128533,
		-0.743139, 0.570178, 0.350200,
		26.667675, 40.053085, 28.214790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.536572, 39.405041, 27.895844>,  <27.187874, 39.653957, 27.969650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.536572, 39.405041, 27.895844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.509138, 39.804070, 27.900814>,  <26.492678, 40.043488, 27.903795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.509138, 39.804070, 27.900814>,  <26.536572, 39.405041, 27.895844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.509138, 39.804070, 27.900814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424395, -0.017902, -0.905300,
		-0.902876, -0.067361, 0.424590,
		-0.068583, 0.997568, 0.012425,
		26.488564, 40.103340, 27.904541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.757565, 39.636673, 27.861443>,  <26.536572, 39.405041, 27.895844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.757565, 39.636673, 27.861443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.036539, 39.878407, 27.707375>,  <26.203924, 40.023449, 27.614933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.036539, 39.878407, 27.707375>,  <25.757565, 39.636673, 27.861443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.036539, 39.878407, 27.707375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460600, -0.033749, -0.886966,
		-0.549027, 0.796013, 0.254820,
		0.697436, 0.604338, -0.385172,
		26.245770, 40.059708, 27.591824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.463718, 40.301342, 27.624079>,  <25.757565, 39.636673, 27.861443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.463718, 40.301342, 27.624079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.768631, 40.184959, 27.392815>,  <25.951578, 40.115131, 27.254055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.768631, 40.184959, 27.392815>,  <25.463718, 40.301342, 27.624079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.768631, 40.184959, 27.392815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601949, 0.009602, -0.798477,
		0.237874, 0.956688, -0.167822,
		0.762281, -0.290957, -0.578162,
		25.997314, 40.097672, 27.219366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.463840, 40.270145, 26.961702>,  <25.463718, 40.301342, 27.624079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.463840, 40.270145, 26.961702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.290779, 40.616611, 26.861645>,  <25.186941, 40.824490, 26.801611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.290779, 40.616611, 26.861645>,  <25.463840, 40.270145, 26.961702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.290779, 40.616611, 26.861645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613594, 0.079618, -0.785598,
		-0.660539, -0.493380, -0.565919,
		-0.432656, 0.866162, -0.250144,
		25.160982, 40.876461, 26.786602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.292536, 40.276489, 26.266981>,  <25.463840, 40.270145, 26.961702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.292536, 40.276489, 26.266981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.378231, 40.650913, 26.378618>,  <25.429647, 40.875568, 26.445601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.378231, 40.650913, 26.378618>,  <25.292536, 40.276489, 26.266981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.378231, 40.650913, 26.378618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722030, 0.040674, -0.690665,
		-0.657857, 0.349478, -0.667150,
		0.214237, 0.936061, 0.279091,
		25.442503, 40.931732, 26.462345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.267296, 40.779800, 25.745750>,  <25.292536, 40.276489, 26.266981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.267296, 40.779800, 25.745750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.524323, 40.920395, 26.018091>,  <25.678539, 41.004753, 26.181496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.524323, 40.920395, 26.018091>,  <25.267296, 40.779800, 25.745750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.524323, 40.920395, 26.018091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738156, -0.045646, -0.673084,
		-0.205503, 0.935079, -0.288784,
		0.642569, 0.351488, 0.680853,
		25.717093, 41.025841, 26.222347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.829123, 40.417892, 25.584492>,  <25.267296, 40.779800, 25.745750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.829123, 40.417892, 25.584492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.536018, 40.342312, 25.323000>,  <25.360157, 40.296963, 25.166105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.536018, 40.342312, 25.323000>,  <25.829123, 40.417892, 25.584492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.536018, 40.342312, 25.323000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096901, 0.921913, -0.375083,
		0.673554, -0.338192, -0.657229,
		-0.732758, -0.188953, -0.653729,
		25.316191, 40.285625, 25.126881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.309412, 39.993679, 25.215668>,  <25.829123, 40.417892, 25.584492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.309412, 39.993679, 25.215668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.079306, 39.831081, 24.931746>,  <25.941242, 39.733521, 24.761391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.079306, 39.831081, 24.931746>,  <26.309412, 39.993679, 25.215668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.079306, 39.831081, 24.931746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440662, -0.885095, 0.149746,
		-0.689119, -0.226641, 0.688295,
		-0.575267, -0.406498, -0.709808,
		25.906725, 39.709133, 24.718803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.060492, 39.388695, 25.450207>,  <26.309412, 39.993679, 25.215668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.060492, 39.388695, 25.450207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.089508, 39.345947, 25.053556>,  <26.106918, 39.320301, 24.815567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.089508, 39.345947, 25.053556>,  <26.060492, 39.388695, 25.450207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.089508, 39.345947, 25.053556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612513, -0.779887, 0.128856,
		-0.787125, -0.616730, 0.008881,
		0.072543, -0.106866, -0.991624,
		26.111271, 39.313889, 24.756069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.847168, 38.719048, 25.183969>,  <26.060492, 39.388695, 25.450207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.847168, 38.719048, 25.183969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.100760, 38.879921, 24.919752>,  <26.252914, 38.976444, 24.761221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.100760, 38.879921, 24.919752>,  <25.847168, 38.719048, 25.183969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.100760, 38.879921, 24.919752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590716, -0.803102, 0.077982,
		-0.499122, -0.439633, -0.746726,
		0.633981, 0.402180, -0.660544,
		26.290955, 39.000576, 24.721588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.973108, 38.278637, 24.527521>,  <25.847168, 38.719048, 25.183969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.973108, 38.278637, 24.527521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.259081, 38.513313, 24.679665>,  <26.430664, 38.654118, 24.770950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.259081, 38.513313, 24.679665>,  <25.973108, 38.278637, 24.527521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.259081, 38.513313, 24.679665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566675, -0.804855, 0.176318,
		0.409577, 0.089484, -0.907876,
		0.714931, 0.586686, 0.380359,
		26.473560, 38.689320, 24.793772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.775854, 38.004604, 24.321457>,  <25.973108, 38.278637, 24.527521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.775854, 38.004604, 24.321457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.774748, 38.237225, 24.646860>,  <26.774084, 38.376797, 24.842102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.774748, 38.237225, 24.646860>,  <26.775854, 38.004604, 24.321457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.774748, 38.237225, 24.646860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476869, -0.714286, 0.512241,
		0.878970, 0.389353, -0.275348,
		-0.002766, 0.581549, 0.813507,
		26.773918, 38.411690, 24.890913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.359930, 37.863945, 24.520666>,  <26.775854, 38.004604, 24.321457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.359930, 37.863945, 24.520666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.156487, 38.033146, 24.820635>,  <27.034420, 38.134666, 25.000616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.156487, 38.033146, 24.820635>,  <27.359930, 37.863945, 24.520666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.156487, 38.033146, 24.820635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350940, -0.693506, 0.629198,
		0.786230, 0.583193, 0.204274,
		-0.508609, 0.423007, 0.749921,
		27.003904, 38.160049, 25.045610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.818707, 37.872944, 25.017178>,  <27.359930, 37.863945, 24.520666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.818707, 37.872944, 25.017178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.480001, 37.931702, 25.221693>,  <27.276779, 37.966957, 25.344402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.480001, 37.931702, 25.221693>,  <27.818707, 37.872944, 25.017178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.480001, 37.931702, 25.221693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345455, -0.579058, 0.738480,
		0.404541, 0.801945, 0.439580,
		-0.846763, 0.146890, 0.511289,
		27.225973, 37.975769, 25.375080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.984459, 37.866756, 25.813757>,  <27.818707, 37.872944, 25.017178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.984459, 37.866756, 25.813757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.595984, 37.772110, 25.802395>,  <27.362898, 37.715324, 25.795578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.595984, 37.772110, 25.802395>,  <27.984459, 37.866756, 25.813757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.595984, 37.772110, 25.802395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133357, -0.638378, 0.758082,
		-0.197506, 0.732453, 0.651540,
		-0.971188, -0.236613, -0.028405,
		27.304626, 37.701126, 25.793873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.901691, 37.652699, 26.464842>,  <27.984459, 37.866756, 25.813757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.901691, 37.652699, 26.464842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.554659, 37.520950, 26.315807>,  <27.346439, 37.441902, 26.226387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.554659, 37.520950, 26.315807>,  <27.901691, 37.652699, 26.464842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.554659, 37.520950, 26.315807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162905, -0.519650, 0.838705,
		-0.469857, 0.788340, 0.397182,
		-0.867580, -0.329369, -0.372586,
		27.294384, 37.422138, 26.204031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.524343, 37.645863, 27.043629>,  <27.901691, 37.652699, 26.464842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.524343, 37.645863, 27.043629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.322416, 37.414940, 26.786917>,  <27.201260, 37.276386, 26.632891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.322416, 37.414940, 26.786917>,  <27.524343, 37.645863, 27.043629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.322416, 37.414940, 26.786917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172836, -0.660813, 0.730379,
		-0.845746, 0.479631, 0.233812,
		-0.504818, -0.577304, -0.641778,
		27.170971, 37.241749, 26.594383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.968084, 37.511799, 27.405548>,  <27.524343, 37.645863, 27.043629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.968084, 37.511799, 27.405548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.017410, 37.225075, 27.131035>,  <27.047007, 37.053040, 26.966328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.017410, 37.225075, 27.131035>,  <26.968084, 37.511799, 27.405548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.017410, 37.225075, 27.131035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091614, -0.696830, 0.711361,
		-0.988130, -0.024848, -0.151599,
		0.123314, -0.716806, -0.686282,
		27.054405, 37.010033, 26.925150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.502232, 36.980751, 27.583710>,  <26.968084, 37.511799, 27.405548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.502232, 36.980751, 27.583710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.730070, 36.754612, 27.345064>,  <26.866774, 36.618931, 27.201878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.730070, 36.754612, 27.345064>,  <26.502232, 36.980751, 27.583710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.730070, 36.754612, 27.345064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020601, -0.715824, 0.697976,
		-0.821666, -0.409856, -0.396085,
		0.569597, -0.565344, -0.596612,
		26.900949, 36.585011, 27.166080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.320862, 36.338768, 27.601122>,  <26.502232, 36.980751, 27.583710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.320862, 36.338768, 27.601122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.696648, 36.275017, 27.479794>,  <26.922119, 36.236767, 27.406996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.696648, 36.275017, 27.479794>,  <26.320862, 36.338768, 27.601122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.696648, 36.275017, 27.479794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100604, -0.717918, 0.688820,
		-0.327544, -0.677638, -0.658424,
		0.939465, -0.159379, -0.303323,
		26.978487, 36.227203, 27.388796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.342838, 35.665630, 27.587536>,  <26.320862, 36.338768, 27.601122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.342838, 35.665630, 27.587536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.735722, 35.740738, 27.588530>,  <26.971453, 35.785801, 27.589127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.735722, 35.740738, 27.588530>,  <26.342838, 35.665630, 27.587536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.735722, 35.740738, 27.588530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141565, -0.749092, 0.647163,
		0.123378, -0.635299, -0.762347,
		0.982211, 0.187767, 0.002485,
		27.030384, 35.797070, 27.589275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.666195, 35.027092, 27.532228>,  <26.342838, 35.665630, 27.587536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.666195, 35.027092, 27.532228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.940350, 35.273376, 27.687740>,  <27.104841, 35.421146, 27.781048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.940350, 35.273376, 27.687740>,  <26.666195, 35.027092, 27.532228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.940350, 35.273376, 27.687740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185279, -0.663789, 0.724607,
		0.704215, -0.424602, -0.569029,
		0.685385, 0.615708, 0.388781,
		27.145966, 35.458088, 27.804375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.159470, 34.601685, 27.854675>,  <26.666195, 35.027092, 27.532228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.159470, 34.601685, 27.854675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.233730, 34.948647, 28.039345>,  <27.278288, 35.156822, 28.150146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.233730, 34.948647, 28.039345>,  <27.159470, 34.601685, 27.854675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.233730, 34.948647, 28.039345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195964, -0.493090, 0.847620,
		0.962876, -0.066892, -0.261524,
		0.185654, 0.867403, 0.461676,
		27.289427, 35.208866, 28.177847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.716709, 34.437794, 28.261333>,  <27.159470, 34.601685, 27.854675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.716709, 34.437794, 28.261333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.551697, 34.755093, 28.440477>,  <27.452690, 34.945473, 28.547964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.551697, 34.755093, 28.440477>,  <27.716709, 34.437794, 28.261333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.551697, 34.755093, 28.440477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273853, -0.360908, 0.891488,
		0.868806, 0.490414, -0.068347,
		-0.412531, 0.793247, 0.447860,
		27.427937, 34.993065, 28.574835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.243397, 34.730324, 28.791677>,  <27.716709, 34.437794, 28.261333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.243397, 34.730324, 28.791677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.887657, 34.870979, 28.908577>,  <27.674213, 34.955372, 28.978716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.887657, 34.870979, 28.908577>,  <28.243397, 34.730324, 28.791677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.887657, 34.870979, 28.908577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260658, -0.135219, 0.955915,
		0.375652, 0.926320, 0.028601,
		-0.889350, 0.351636, 0.292248,
		27.620852, 34.976471, 28.996252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.414604, 35.130939, 29.467659>,  <28.243397, 34.730324, 28.791677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.414604, 35.130939, 29.467659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.020185, 35.065056, 29.458021>,  <27.783533, 35.025528, 29.452238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.020185, 35.065056, 29.458021>,  <28.414604, 35.130939, 29.467659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.020185, 35.065056, 29.458021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002649, -0.160244, 0.987074,
		-0.166439, 0.973239, 0.158445,
		-0.986048, -0.164707, -0.024093,
		27.724371, 35.015644, 29.450794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.141033, 35.511837, 30.068596>,  <28.414604, 35.130939, 29.467659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.141033, 35.511837, 30.068596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.866547, 35.234554, 29.980444>,  <27.701855, 35.068184, 29.927553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.866547, 35.234554, 29.980444>,  <28.141033, 35.511837, 30.068596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.866547, 35.234554, 29.980444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198057, -0.113463, 0.973601,
		-0.699912, 0.711751, -0.059434,
		-0.686219, -0.693207, -0.220382,
		27.660681, 35.026592, 29.914330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.560217, 35.694786, 30.516287>,  <28.141033, 35.511837, 30.068596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.560217, 35.694786, 30.516287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.475477, 35.316605, 30.417305>,  <27.424633, 35.089695, 30.357916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.475477, 35.316605, 30.417305>,  <27.560217, 35.694786, 30.516287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.475477, 35.316605, 30.417305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294976, -0.179533, 0.938487,
		-0.931724, 0.271811, -0.240852,
		-0.211850, -0.945456, -0.247453,
		27.411922, 35.032967, 30.343069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.860884, 35.558056, 30.773033>,  <27.560217, 35.694786, 30.516287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.860884, 35.558056, 30.773033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.055565, 35.209549, 30.747679>,  <27.172375, 35.000446, 30.732466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.055565, 35.209549, 30.747679>,  <26.860884, 35.558056, 30.773033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.055565, 35.209549, 30.747679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098198, -0.126667, 0.987073,
		-0.868030, -0.474188, -0.147206,
		0.486704, -0.871264, -0.063386,
		27.201576, 34.948170, 30.728662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.421885, 35.099499, 31.130028>,  <26.860884, 35.558056, 30.773033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.421885, 35.099499, 31.130028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.758757, 34.884312, 31.115477>,  <26.960880, 34.755199, 31.106745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.758757, 34.884312, 31.115477>,  <26.421885, 35.099499, 31.130028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.758757, 34.884312, 31.115477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103544, -0.227575, 0.968240,
		-0.529158, -0.811668, -0.247363,
		0.842182, -0.537965, -0.036380,
		27.011412, 34.722923, 31.104563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.295938, 34.549187, 31.439671>,  <26.421885, 35.099499, 31.130028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.295938, 34.549187, 31.439671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.694315, 34.545506, 31.475485>,  <26.933340, 34.543297, 31.496973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.694315, 34.545506, 31.475485>,  <26.295938, 34.549187, 31.439671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.694315, 34.545506, 31.475485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089483, -0.208670, 0.973884,
		0.009723, -0.977943, -0.208647,
		0.995940, -0.009201, 0.089538,
		26.993097, 34.542744, 31.502346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.422634, 34.119743, 32.082146>,  <26.295938, 34.549187, 31.439671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.422634, 34.119743, 32.082146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.792677, 34.262524, 32.030365>,  <27.014704, 34.348190, 31.999296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.792677, 34.262524, 32.030365>,  <26.422634, 34.119743, 32.082146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.792677, 34.262524, 32.030365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171164, -0.087705, 0.981331,
		0.338934, -0.929996, -0.142234,
		0.925109, 0.356952, -0.129456,
		27.070210, 34.369610, 31.991528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.922480, 33.684124, 32.427216>,  <26.422634, 34.119743, 32.082146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.922480, 33.684124, 32.427216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.108524, 34.037487, 32.404362>,  <27.220152, 34.249504, 32.390648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.108524, 34.037487, 32.404362>,  <26.922480, 33.684124, 32.427216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.108524, 34.037487, 32.404362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217391, -0.051412, 0.974730,
		0.858144, -0.465780, -0.215956,
		0.465112, 0.883406, -0.057138,
		27.248058, 34.302509, 32.387222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.617062, 33.557213, 32.839382>,  <26.922480, 33.684124, 32.427216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.617062, 33.557213, 32.839382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.539095, 33.948460, 32.810303>,  <27.492315, 34.183208, 32.792854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.539095, 33.948460, 32.810303>,  <27.617062, 33.557213, 32.839382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.539095, 33.948460, 32.810303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227656, 0.117212, 0.966661,
		0.954033, 0.171871, -0.245522,
		-0.194919, 0.978122, -0.072696,
		27.480619, 34.241898, 32.788494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.282661, 33.875843, 33.187080>,  <27.617062, 33.557213, 32.839382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.282661, 33.875843, 33.187080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.966499, 34.120758, 33.194729>,  <27.776802, 34.267708, 33.199318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.966499, 34.120758, 33.194729>,  <28.282661, 33.875843, 33.187080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.966499, 34.120758, 33.194729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130982, 0.138431, 0.981672,
		0.598414, 0.778426, -0.189615,
		-0.790407, 0.612283, 0.019121,
		27.729378, 34.304443, 33.200466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.772310, 34.301628, 33.495171>,  <28.282661, 33.875843, 33.187080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.772310, 34.301628, 33.495171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.949341, 34.376141, 33.144302>,  <29.055559, 34.420849, 32.933781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.949341, 34.376141, 33.144302>,  <28.772310, 34.301628, 33.495171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.949341, 34.376141, 33.144302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782287, 0.397964, 0.479220,
		0.438354, -0.898288, 0.030399,
		0.442576, 0.186287, -0.877168,
		29.082113, 34.432026, 32.881153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.122448, 33.764446, 33.251423>,  <28.772310, 34.301628, 33.495171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.122448, 33.764446, 33.251423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.194361, 34.157745, 33.239475>,  <29.237509, 34.393726, 33.232307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.194361, 34.157745, 33.239475>,  <29.122448, 33.764446, 33.251423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.194361, 34.157745, 33.239475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594375, -0.084381, 0.799749,
		0.783835, -0.161538, -0.599591,
		0.179784, 0.983253, -0.029873,
		29.248297, 34.452721, 33.230515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.891150, 33.945778, 33.220581>,  <29.122448, 33.764446, 33.251423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.891150, 33.945778, 33.220581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.694574, 34.246716, 33.396061>,  <29.576630, 34.427280, 33.501350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.694574, 34.246716, 33.396061>,  <29.891150, 33.945778, 33.220581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.694574, 34.246716, 33.396061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666342, 0.000463, 0.745646,
		0.560782, 0.658767, -0.501548,
		-0.491439, 0.752347, 0.438704,
		29.547142, 34.472420, 33.527672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.437384, 34.505058, 33.209114>,  <29.891150, 33.945778, 33.220581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.437384, 34.505058, 33.209114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.152542, 34.506615, 33.489941>,  <29.981638, 34.507549, 33.658436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.152542, 34.506615, 33.489941>,  <30.437384, 34.505058, 33.209114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.152542, 34.506615, 33.489941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701364, 0.048906, 0.711124,
		-0.031571, 0.998796, -0.037553,
		-0.712104, 0.003888, 0.702063,
		29.938911, 34.507782, 33.700562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.553677, 35.078468, 33.682671>,  <30.437384, 34.505058, 33.209114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.553677, 35.078468, 33.682671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.398235, 34.757816, 33.864384>,  <30.304970, 34.565426, 33.973412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.398235, 34.757816, 33.864384>,  <30.553677, 35.078468, 33.682671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.398235, 34.757816, 33.864384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692379, 0.071247, 0.718007,
		-0.607945, 0.593555, 0.527348,
		-0.388605, -0.801633, 0.454279,
		30.281654, 34.517326, 34.000668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.412916, 35.218304, 34.429413>,  <30.553677, 35.078468, 33.682671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.412916, 35.218304, 34.429413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.555824, 34.852345, 34.354240>,  <30.641569, 34.632771, 34.309139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.555824, 34.852345, 34.354240>,  <30.412916, 35.218304, 34.429413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.555824, 34.852345, 34.354240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673737, 0.113093, 0.730266,
		-0.646867, -0.387517, 0.656806,
		0.357271, -0.914899, -0.187929,
		30.663006, 34.577873, 34.297863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.349821, 34.886562, 35.027012>,  <30.412916, 35.218304, 34.429413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.349821, 34.886562, 35.027012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.619686, 34.655746, 34.842899>,  <30.781605, 34.517258, 34.732433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.619686, 34.655746, 34.842899>,  <30.349821, 34.886562, 35.027012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.619686, 34.655746, 34.842899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597414, 0.060651, 0.799636,
		-0.433504, -0.814462, 0.385651,
		0.674663, -0.577039, -0.460279,
		30.822084, 34.482635, 34.704815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.459570, 34.258503, 35.495979>,  <30.349821, 34.886562, 35.027012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.459570, 34.258503, 35.495979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.782598, 34.352119, 35.279442>,  <30.976416, 34.408291, 35.149521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.782598, 34.352119, 35.279442>,  <30.459570, 34.258503, 35.495979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.782598, 34.352119, 35.279442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556655, 0.000750, 0.830744,
		0.194838, -0.972225, -0.129678,
		0.807573, 0.234047, -0.541340,
		31.024870, 34.422333, 35.117039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.893080, 33.953339, 35.840645>,  <30.459570, 34.258503, 35.495979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.893080, 33.953339, 35.840645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.111820, 34.204109, 35.618687>,  <31.243065, 34.354572, 35.485512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.111820, 34.204109, 35.618687>,  <30.893080, 33.953339, 35.840645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.111820, 34.204109, 35.618687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586114, 0.186606, 0.788447,
		0.597849, -0.756397, -0.265407,
		0.546852, 0.626931, -0.554897,
		31.275877, 34.392189, 35.452217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.581621, 33.867867, 36.008644>,  <30.893080, 33.953339, 35.840645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.581621, 33.867867, 36.008644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.556292, 34.231613, 35.844189>,  <31.541094, 34.449863, 35.745514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.556292, 34.231613, 35.844189>,  <31.581621, 33.867867, 36.008644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.556292, 34.231613, 35.844189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419905, 0.398004, 0.815643,
		0.905356, -0.120988, -0.407053,
		-0.063326, 0.909370, -0.411139,
		31.537294, 34.504425, 35.720848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.236313, 34.112923, 36.153595>,  <31.581621, 33.867867, 36.008644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.236313, 34.112923, 36.153595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.050858, 34.440990, 36.019516>,  <31.939583, 34.637833, 35.939068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.050858, 34.440990, 36.019516>,  <32.236313, 34.112923, 36.153595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.050858, 34.440990, 36.019516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648578, 0.571909, 0.502261,
		0.603641, 0.015470, -0.797106,
		-0.463642, 0.820171, -0.335194,
		31.911764, 34.687042, 35.918957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.741451, 34.544823, 35.728935>,  <32.236313, 34.112923, 36.153595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.741451, 34.544823, 35.728935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.456081, 34.750179, 35.919704>,  <32.284859, 34.873394, 36.034164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.456081, 34.750179, 35.919704>,  <32.741451, 34.544823, 35.728935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.456081, 34.750179, 35.919704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663744, 0.276895, 0.694819,
		0.224660, 0.812253, -0.538306,
		-0.713423, 0.513395, 0.476921,
		32.242054, 34.904198, 36.062782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.110970, 35.057575, 36.081089>,  <32.741451, 34.544823, 35.728935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.110970, 35.057575, 36.081089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.755898, 35.085712, 36.263111>,  <32.542854, 35.102592, 36.372326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.755898, 35.085712, 36.263111>,  <33.110970, 35.057575, 36.081089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.755898, 35.085712, 36.263111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460001, 0.091237, 0.883218,
		0.020606, 0.993342, -0.113345,
		-0.887679, 0.070338, 0.455058,
		32.489594, 35.106815, 36.399628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.213596, 35.577511, 36.621323>,  <33.110970, 35.057575, 36.081089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.213596, 35.577511, 36.621323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.878395, 35.400372, 36.748848>,  <32.677277, 35.294086, 36.825363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.878395, 35.400372, 36.748848>,  <33.213596, 35.577511, 36.621323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.878395, 35.400372, 36.748848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373794, -0.040219, 0.926639,
		-0.397537, 0.895695, 0.199237,
		-0.837999, -0.442847, 0.318817,
		32.626995, 35.267517, 36.844494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.925564, 35.948765, 37.165630>,  <33.213596, 35.577511, 36.621323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.925564, 35.948765, 37.165630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.753624, 35.593155, 37.228699>,  <32.650459, 35.379787, 37.266541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.753624, 35.593155, 37.228699>,  <32.925564, 35.948765, 37.165630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.753624, 35.593155, 37.228699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307680, 0.019950, 0.951281,
		-0.848861, 0.457417, 0.264961,
		-0.429846, -0.889029, 0.157673,
		32.624672, 35.326447, 37.276001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.563148, 35.949593, 37.799999>,  <32.925564, 35.948765, 37.165630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.563148, 35.949593, 37.799999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.568027, 35.554806, 37.735821>,  <32.570957, 35.317932, 37.697311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.568027, 35.554806, 37.735821>,  <32.563148, 35.949593, 37.799999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.568027, 35.554806, 37.735821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027643, -0.160068, 0.986719,
		-0.999543, -0.016474, 0.025330,
		0.012201, -0.986969, -0.160450,
		32.571690, 35.258717, 37.687687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.002731, 35.617668, 38.169758>,  <32.563148, 35.949593, 37.799999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.002731, 35.617668, 38.169758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.276466, 35.332573, 38.108189>,  <32.440708, 35.161518, 38.071247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.276466, 35.332573, 38.108189>,  <32.002731, 35.617668, 38.169758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.276466, 35.332573, 38.108189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094522, -0.122606, 0.987944,
		-0.723015, -0.690635, -0.016535,
		0.684336, -0.712735, -0.153926,
		32.481766, 35.118752, 38.062012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.889717, 35.096230, 38.609695>,  <32.002731, 35.617668, 38.169758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.889717, 35.096230, 38.609695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.257473, 34.992149, 38.491699>,  <32.478127, 34.929703, 38.420902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.257473, 34.992149, 38.491699>,  <31.889717, 35.096230, 38.609695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.257473, 34.992149, 38.491699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189258, -0.364826, 0.911638,
		-0.344821, -0.893981, -0.286175,
		0.919391, -0.260190, -0.294993,
		32.533291, 34.914089, 38.403202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.956423, 34.349903, 38.657581>,  <31.889717, 35.096230, 38.609695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.956423, 34.349903, 38.657581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.311634, 34.527393, 38.705772>,  <32.524761, 34.633888, 38.734688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.311634, 34.527393, 38.705772>,  <31.956423, 34.349903, 38.657581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.311634, 34.527393, 38.705772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012626, -0.238404, 0.971084,
		0.459615, -0.863871, -0.206107,
		0.888028, 0.443723, 0.120481,
		32.578041, 34.660511, 38.741917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.362892, 33.811844, 38.949574>,  <31.956423, 34.349903, 38.657581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.362892, 33.811844, 38.949574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.569801, 34.141392, 39.042244>,  <32.693947, 34.339119, 39.097847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.569801, 34.141392, 39.042244>,  <32.362892, 33.811844, 38.949574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.569801, 34.141392, 39.042244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243459, -0.401178, 0.883054,
		0.820463, -0.400374, -0.408095,
		0.517270, 0.823868, 0.231676,
		32.724983, 34.388554, 39.111748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.767735, 33.548412, 39.364063>,  <32.362892, 33.811844, 38.949574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.767735, 33.548412, 39.364063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.810768, 33.941822, 39.422184>,  <32.836586, 34.177868, 39.457054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.810768, 33.941822, 39.422184>,  <32.767735, 33.548412, 39.364063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.810768, 33.941822, 39.422184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148260, -0.160382, 0.975857,
		0.983080, -0.083442, -0.163071,
		0.107581, 0.983522, 0.145298,
		32.843044, 34.236877, 39.465775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.294006, 33.647251, 39.794491>,  <32.767735, 33.548412, 39.364063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.294006, 33.647251, 39.794491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.108990, 33.997749, 39.848534>,  <32.997982, 34.208050, 39.880959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.108990, 33.997749, 39.848534>,  <33.294006, 33.647251, 39.794491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.108990, 33.997749, 39.848534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005206, -0.149696, 0.988718,
		0.886585, 0.458022, 0.064678,
		-0.462537, 0.876246, 0.135102,
		32.970230, 34.260624, 39.889065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.682011, 34.070244, 40.354790>,  <33.294006, 33.647251, 39.794491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.682011, 34.070244, 40.354790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.301273, 34.188427, 40.322033>,  <33.072830, 34.259335, 40.302380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.301273, 34.188427, 40.322033>,  <33.682011, 34.070244, 40.354790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.301273, 34.188427, 40.322033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117186, -0.103781, 0.987672,
		0.283314, 0.949703, 0.133406,
		-0.951841, 0.295455, -0.081889,
		33.015720, 34.277065, 40.297466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.610485, 34.386818, 40.945869>,  <33.682011, 34.070244, 40.354790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.610485, 34.386818, 40.945869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.225163, 34.352734, 40.844063>,  <32.993969, 34.332283, 40.782978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.225163, 34.352734, 40.844063>,  <33.610485, 34.386818, 40.945869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.225163, 34.352734, 40.844063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251347, -0.046266, 0.966791,
		-0.094155, 0.995288, 0.023151,
		-0.963306, -0.085209, -0.254519,
		32.936172, 34.327171, 40.767708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.157745, 34.901421, 41.326847>,  <33.610485, 34.386818, 40.945869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.157745, 34.901421, 41.326847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.929058, 34.596821, 41.204689>,  <32.791847, 34.414062, 41.131393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.929058, 34.596821, 41.204689>,  <33.157745, 34.901421, 41.326847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.929058, 34.596821, 41.204689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323949, -0.132471, 0.936754,
		-0.753791, 0.634489, -0.170950,
		-0.571714, -0.761496, -0.305398,
		32.757545, 34.368374, 41.113071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.538475, 34.986614, 41.742172>,  <33.157745, 34.901421, 41.326847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.538475, 34.986614, 41.742172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.513901, 34.622292, 41.578873>,  <32.499157, 34.403698, 41.480892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.513901, 34.622292, 41.578873>,  <32.538475, 34.986614, 41.742172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.513901, 34.622292, 41.578873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547296, -0.311309, 0.776887,
		-0.834681, 0.271157, -0.479355,
		-0.061431, -0.910802, -0.408247,
		32.495472, 34.349052, 41.456398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.852322, 34.790657, 41.802357>,  <32.538475, 34.986614, 41.742172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.852322, 34.790657, 41.802357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.061577, 34.450584, 41.778645>,  <32.187130, 34.246540, 41.764420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.061577, 34.450584, 41.778645>,  <31.852322, 34.790657, 41.802357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.061577, 34.450584, 41.778645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382667, -0.296475, 0.875025,
		-0.761505, -0.435077, -0.480435,
		0.523140, -0.850183, -0.059278,
		32.218517, 34.195530, 41.760860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.396896, 34.174263, 42.009365>,  <31.852322, 34.790657, 41.802357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.396896, 34.174263, 42.009365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.776957, 34.064251, 42.068119>,  <32.004993, 33.998241, 42.103371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.776957, 34.064251, 42.068119>,  <31.396896, 34.174263, 42.009365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.776957, 34.064251, 42.068119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185868, -0.121377, 0.975049,
		-0.250344, -0.953742, -0.166446,
		0.950148, -0.275035, 0.146885,
		32.062000, 33.981743, 42.112183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.297976, 33.724293, 42.607132>,  <31.396896, 34.174263, 42.009365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.297976, 33.724293, 42.607132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.694120, 33.761269, 42.565876>,  <31.931807, 33.783455, 42.541122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.694120, 33.761269, 42.565876>,  <31.297976, 33.724293, 42.607132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.694120, 33.761269, 42.565876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124688, -0.270795, 0.954528,
		0.060307, -0.958188, -0.279712,
		0.990362, 0.092441, -0.103144,
		31.991228, 33.789001, 42.534931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.530432, 33.111397, 42.695770>,  <31.297976, 33.724293, 42.607132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.530432, 33.111397, 42.695770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.850021, 33.330112, 42.795895>,  <32.041775, 33.461342, 42.855968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.850021, 33.330112, 42.795895>,  <31.530432, 33.111397, 42.695770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.850021, 33.330112, 42.795895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049686, -0.354796, 0.933623,
		0.599309, -0.758378, -0.256305,
		0.798975, 0.546793, 0.250313,
		32.089714, 33.494152, 42.870987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.054676, 32.786907, 43.168221>,  <31.530432, 33.111397, 42.695770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.054676, 32.786907, 43.168221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.132061, 33.169189, 43.256943>,  <32.178490, 33.398560, 43.310177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.132061, 33.169189, 43.256943>,  <32.054676, 32.786907, 43.168221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.132061, 33.169189, 43.256943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090490, -0.242494, 0.965924,
		0.976926, -0.166796, -0.133394,
		0.193459, 0.955707, 0.221806,
		32.190098, 33.455902, 43.323486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.688229, 32.695198, 43.493164>,  <32.054676, 32.786907, 43.168221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.688229, 32.695198, 43.493164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.528664, 33.043335, 43.608662>,  <32.432926, 33.252216, 43.677959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.528664, 33.043335, 43.608662>,  <32.688229, 32.695198, 43.493164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.528664, 33.043335, 43.608662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262118, -0.193516, 0.945434,
		0.878730, 0.452826, -0.150938,
		-0.398909, 0.870345, 0.288742,
		32.408993, 33.304440, 43.695286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.206150, 33.048897, 43.915329>,  <32.688229, 32.695198, 43.493164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.206150, 33.048897, 43.915329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.848389, 33.194782, 44.018883>,  <32.633732, 33.282314, 44.081013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.848389, 33.194782, 44.018883>,  <33.206150, 33.048897, 43.915329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.848389, 33.194782, 44.018883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200338, -0.190817, 0.960965,
		0.399878, 0.911357, 0.097602,
		-0.894406, 0.364715, 0.258883,
		32.580067, 33.304195, 44.096546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.254810, 33.668858, 44.273109>,  <33.206150, 33.048897, 43.915329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.254810, 33.668858, 44.273109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.909283, 33.504463, 44.389668>,  <32.701965, 33.405827, 44.459602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.909283, 33.504463, 44.389668>,  <33.254810, 33.668858, 44.273109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.909283, 33.504463, 44.389668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296515, 0.052868, 0.953564,
		-0.407308, 0.910107, 0.076196,
		-0.863816, -0.410987, 0.291394,
		32.650139, 33.381168, 44.477085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.281437, 33.833416, 44.855198>,  <33.254810, 33.668858, 44.273109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.281437, 33.833416, 44.855198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.978848, 33.573780, 44.887283>,  <32.797295, 33.417999, 44.906536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.978848, 33.573780, 44.887283>,  <33.281437, 33.833416, 44.855198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.978848, 33.573780, 44.887283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099741, 0.006724, 0.994991,
		-0.646379, 0.760681, 0.059655,
		-0.756469, -0.649091, 0.080217,
		32.751907, 33.379051, 44.911350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.842941, 34.071415, 45.312046>,  <33.281437, 33.833416, 44.855198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.842941, 34.071415, 45.312046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.742931, 33.684200, 45.319950>,  <32.682926, 33.451870, 45.324692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.742931, 33.684200, 45.319950>,  <32.842941, 34.071415, 45.312046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.742931, 33.684200, 45.319950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012811, 0.023719, 0.999636,
		-0.968155, 0.249678, -0.018332,
		-0.250022, -0.968038, 0.019765,
		32.667923, 33.393787, 45.325878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.312710, 33.953011, 45.842514>,  <32.842941, 34.071415, 45.312046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.312710, 33.953011, 45.842514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.471798, 33.592476, 45.773922>,  <32.567253, 33.376156, 45.732765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.471798, 33.592476, 45.773922>,  <32.312710, 33.953011, 45.842514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.471798, 33.592476, 45.773922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126395, -0.131292, 0.983253,
		-0.908758, -0.412736, 0.061707,
		0.397723, -0.901339, -0.171480,
		32.591114, 33.322075, 45.722477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.009628, 33.594597, 46.331360>,  <32.312710, 33.953011, 45.842514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.009628, 33.594597, 46.331360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.324947, 33.365891, 46.240433>,  <32.514137, 33.228664, 46.185875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.324947, 33.365891, 46.240433>,  <32.009628, 33.594597, 46.331360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.324947, 33.365891, 46.240433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158254, -0.168608, 0.972896,
		-0.594600, -0.802902, -0.042428,
		0.788294, -0.571769, -0.227317,
		32.561436, 33.194359, 46.172237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.019867, 33.114719, 46.723629>,  <32.009628, 33.594597, 46.331360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.019867, 33.114719, 46.723629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.403229, 33.092987, 46.611553>,  <32.633247, 33.079948, 46.544308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.403229, 33.092987, 46.611553>,  <32.019867, 33.114719, 46.723629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.403229, 33.092987, 46.611553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266801, -0.178140, 0.947145,
		-0.101374, -0.982504, -0.156234,
		0.958405, -0.054332, -0.280192,
		32.690750, 33.076687, 46.527496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.256947, 32.409588, 46.947945>,  <32.019867, 33.114719, 46.723629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.256947, 32.409588, 46.947945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.563313, 32.663231, 46.905468>,  <32.747131, 32.815418, 46.879982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.563313, 32.663231, 46.905468>,  <32.256947, 32.409588, 46.947945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.563313, 32.663231, 46.905468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306330, -0.214694, 0.927399,
		0.565273, -0.742841, -0.358685,
		0.765917, 0.634109, -0.106194,
		32.793087, 32.853462, 46.873611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.746372, 32.022572, 47.226860>,  <32.256947, 32.409588, 46.947945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.746372, 32.022572, 47.226860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.898895, 32.392204, 47.216431>,  <32.990410, 32.613983, 47.210175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.898895, 32.392204, 47.216431>,  <32.746372, 32.022572, 47.226860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.898895, 32.392204, 47.216431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527400, -0.194288, 0.827104,
		0.759243, -0.329136, -0.561444,
		0.381311, 0.924079, -0.026074,
		33.013290, 32.669430, 47.208607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.560772, 31.964712, 47.323822>,  <32.746372, 32.022572, 47.226860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.560772, 31.964712, 47.323822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.482944, 32.343746, 47.425190>,  <33.436249, 32.571167, 47.486012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.482944, 32.343746, 47.425190>,  <33.560772, 31.964712, 47.323822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.482944, 32.343746, 47.425190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318187, -0.183416, 0.930116,
		0.927846, 0.261610, -0.265822,
		-0.194572, 0.947586, 0.253422,
		33.424572, 32.628021, 47.501217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.170834, 32.210361, 47.612457>,  <33.560772, 31.964712, 47.323822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.170834, 32.210361, 47.612457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.891689, 32.468781, 47.736145>,  <33.724201, 32.623833, 47.810356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.891689, 32.468781, 47.736145>,  <34.170834, 32.210361, 47.612457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.891689, 32.468781, 47.736145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245972, -0.189292, 0.950614,
		0.672674, 0.739453, -0.026811,
		-0.697859, 0.646048, 0.309217,
		33.682331, 32.662594, 47.828911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.543655, 32.698994, 47.950638>,  <34.170834, 32.210361, 47.612457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.543655, 32.698994, 47.950638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.161888, 32.669128, 48.066235>,  <33.932827, 32.651211, 48.135593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.161888, 32.669128, 48.066235>,  <34.543655, 32.698994, 47.950638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.161888, 32.669128, 48.066235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298075, -0.288859, 0.909787,
		0.015553, 0.954456, 0.297946,
		-0.954416, -0.074660, 0.288993,
		33.875565, 32.646729, 48.152931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.631504, 32.594971, 48.612778>,  <34.543655, 32.698994, 47.950638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.631504, 32.594971, 48.612778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.235603, 32.539486, 48.599228>,  <33.998062, 32.506195, 48.591099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.235603, 32.539486, 48.599228>,  <34.631504, 32.594971, 48.612778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.235603, 32.539486, 48.599228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028278, -0.422956, 0.905709,
		-0.139965, 0.895470, 0.422545,
		-0.989753, -0.138716, -0.033877,
		33.938679, 32.497871, 48.589066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.362156, 32.891655, 49.191189>,  <34.631504, 32.594971, 48.612778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.362156, 32.891655, 49.191189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.086609, 32.623314, 49.081345>,  <33.921280, 32.462307, 49.015438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.086609, 32.623314, 49.081345>,  <34.362156, 32.891655, 49.191189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.086609, 32.623314, 49.081345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024351, -0.357203, 0.933709,
		-0.724475, 0.649892, 0.229731,
		-0.688871, -0.670855, -0.274611,
		33.879948, 32.422058, 48.998962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.921074, 32.873055, 49.694904>,  <34.362156, 32.891655, 49.191189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.921074, 32.873055, 49.694904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.887501, 32.520187, 49.509548>,  <33.867355, 32.308468, 49.398335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.887501, 32.520187, 49.509548>,  <33.921074, 32.873055, 49.694904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.887501, 32.520187, 49.509548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048698, -0.460844, 0.886144,
		-0.995280, 0.096947, -0.004277,
		-0.083937, -0.882170, -0.463390,
		33.862320, 32.255535, 49.370533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.335129, 32.524681, 50.069153>,  <33.921074, 32.873055, 49.694904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.335129, 32.524681, 50.069153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.579418, 32.267128, 49.884789>,  <33.725990, 32.112595, 49.774170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.579418, 32.267128, 49.884789>,  <33.335129, 32.524681, 50.069153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.579418, 32.267128, 49.884789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152510, -0.666815, 0.729451,
		-0.777020, -0.375198, -0.505437,
		0.610721, -0.643883, -0.460907,
		33.762634, 32.073963, 49.746517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.978630, 31.912746, 49.828342>,  <33.335129, 32.524681, 50.069153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.978630, 31.912746, 49.828342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.354160, 31.803375, 49.912090>,  <33.579479, 31.737753, 49.962337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.354160, 31.803375, 49.912090>,  <32.978630, 31.912746, 49.828342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.354160, 31.803375, 49.912090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341163, -0.655499, 0.673743,
		-0.046978, -0.703959, -0.708685,
		0.938830, -0.273428, 0.209370,
		33.635811, 31.721348, 49.974903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.956478, 31.174881, 49.904598>,  <32.978630, 31.912746, 49.828342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.956478, 31.174881, 49.904598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.282719, 31.290796, 50.104923>,  <33.478462, 31.360346, 50.225117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.282719, 31.290796, 50.104923>,  <32.956478, 31.174881, 49.904598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.282719, 31.290796, 50.104923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166687, -0.711172, 0.682971,
		0.554080, -0.640513, -0.531731,
		0.815605, 0.289788, 0.500811,
		33.527401, 31.377733, 50.255165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.014759, 30.683094, 50.347782>,  <32.956478, 31.174881, 49.904598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.014759, 30.683094, 50.347782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.408264, 30.746754, 50.314583>,  <33.644367, 30.784950, 50.294662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.408264, 30.746754, 50.314583>,  <33.014759, 30.683094, 50.347782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.408264, 30.746754, 50.314583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108124, -0.894537, -0.433719,
		-0.143271, 0.417701, -0.897217,
		0.983759, 0.159150, -0.082998,
		33.703392, 30.794498, 50.289684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.339954, 30.607576, 49.648262>,  <33.014759, 30.683094, 50.347782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.339954, 30.607576, 49.648262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.578739, 30.500301, 49.950710>,  <33.722008, 30.435936, 50.132179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.578739, 30.500301, 49.950710>,  <33.339954, 30.607576, 49.648262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.578739, 30.500301, 49.950710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054840, -0.926628, -0.371960,
		0.800396, 0.263510, -0.538450,
		0.596958, -0.268186, 0.756120,
		33.757828, 30.419846, 50.177547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.021648, 30.356533, 49.428654>,  <33.339954, 30.607576, 49.648262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.021648, 30.356533, 49.428654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.911186, 30.156412, 49.756905>,  <33.844910, 30.036339, 49.953857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.911186, 30.156412, 49.756905>,  <34.021648, 30.356533, 49.428654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.911186, 30.156412, 49.756905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073371, -0.862316, -0.501026,
		0.958309, -0.078150, 0.274841,
		-0.276155, -0.500303, 0.820631,
		33.828339, 30.006321, 50.003094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.504349, 29.798018, 49.925827>,  <34.021648, 30.356533, 49.428654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.504349, 29.798018, 49.925827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.118389, 29.699862, 49.888393>,  <33.886814, 29.640968, 49.865932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.118389, 29.699862, 49.888393>,  <34.504349, 29.798018, 49.925827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.118389, 29.699862, 49.888393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254587, -0.786456, -0.562737,
		0.064489, -0.566808, 0.821322,
		-0.964897, -0.245389, -0.093584,
		33.828918, 29.626245, 49.860317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.357582, 29.095835, 49.892559>,  <34.504349, 29.798018, 49.925827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.357582, 29.095835, 49.892559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.999535, 29.205566, 49.751984>,  <33.784706, 29.271406, 49.667641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.999535, 29.205566, 49.751984>,  <34.357582, 29.095835, 49.892559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.999535, 29.205566, 49.751984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026592, -0.754018, -0.656316,
		-0.445035, -0.596825, 0.667640,
		-0.895118, 0.274329, -0.351436,
		33.730999, 29.287865, 49.646553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.815231, 28.625935, 49.934856>,  <34.357582, 29.095835, 49.892559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.815231, 28.625935, 49.934856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.703327, 28.834593, 49.612461>,  <33.636185, 28.959787, 49.419022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.703327, 28.834593, 49.612461>,  <33.815231, 28.625935, 49.934856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.703327, 28.834593, 49.612461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111787, -0.851501, -0.512298,
		-0.953539, -0.053222, 0.296531,
		-0.279763, 0.521645, -0.805990,
		33.619400, 28.991087, 49.370663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.296333, 28.292624, 49.489826>,  <33.815231, 28.625935, 49.934856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.296333, 28.292624, 49.489826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.665356, 28.203133, 49.364079>,  <34.886768, 28.149437, 49.288631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.665356, 28.203133, 49.364079>,  <34.296333, 28.292624, 49.489826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.665356, 28.203133, 49.364079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241364, 0.301042, -0.922560,
		0.301042, 0.926994, 0.223729,
		0.922560, -0.223729, -0.314369,
		34.942123, 28.136013, 49.269768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.518810, 28.867838, 49.049709>,  <34.296333, 28.292624, 49.489826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.518810, 28.867838, 49.049709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.659416, 28.498951, 48.985271>,  <34.743778, 28.277618, 48.946609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.659416, 28.498951, 48.985271>,  <34.518810, 28.867838, 49.049709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.659416, 28.498951, 48.985271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535193, -0.056768, -0.842820,
		0.768119, 0.382479, -0.513520,
		0.351513, -0.922218, -0.161095,
		34.764870, 28.222286, 48.936943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.911831, 28.927853, 48.435596>,  <34.518810, 28.867838, 49.049709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.911831, 28.927853, 48.435596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.876492, 29.315018, 48.529694>,  <34.855286, 29.547318, 48.586151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.876492, 29.315018, 48.529694>,  <34.911831, 28.927853, 48.435596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.876492, 29.315018, 48.529694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638026, 0.126371, -0.759574,
		-0.764929, -0.217200, 0.606389,
		-0.088350, 0.967913, 0.235244,
		34.849987, 29.605391, 48.600266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.199348, 29.155355, 48.412922>,  <34.911831, 28.927853, 48.435596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.199348, 29.155355, 48.412922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.393478, 29.501871, 48.365585>,  <34.509956, 29.709780, 48.337185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.393478, 29.501871, 48.365585>,  <34.199348, 29.155355, 48.412922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.393478, 29.501871, 48.365585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435052, 0.121859, -0.892121,
		-0.758414, 0.484451, 0.436022,
		0.485322, 0.866290, -0.118342,
		34.539074, 29.761759, 48.330082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.838158, 29.396507, 47.958752>,  <34.199348, 29.155355, 48.412922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.838158, 29.396507, 47.958752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.130424, 29.669554, 47.953617>,  <34.305782, 29.833382, 47.950535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.130424, 29.669554, 47.953617>,  <33.838158, 29.396507, 47.958752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.130424, 29.669554, 47.953617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266990, 0.268376, -0.925576,
		-0.628367, 0.679714, 0.378344,
		0.730665, 0.682615, -0.012838,
		34.349625, 29.874338, 47.949764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.529900, 30.103025, 47.701859>,  <33.838158, 29.396507, 47.958752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.529900, 30.103025, 47.701859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.918034, 30.049416, 47.621372>,  <34.150913, 30.017250, 47.573082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.918034, 30.049416, 47.621372>,  <33.529900, 30.103025, 47.701859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.918034, 30.049416, 47.621372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152366, 0.307182, -0.939374,
		0.187709, 0.942166, 0.277648,
		0.970335, -0.134025, -0.201215,
		34.209133, 30.009209, 47.561008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.721138, 30.645813, 47.220352>,  <33.529900, 30.103025, 47.701859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.721138, 30.645813, 47.220352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.959038, 30.329088, 47.164768>,  <34.101776, 30.139053, 47.131420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.959038, 30.329088, 47.164768>,  <33.721138, 30.645813, 47.220352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.959038, 30.329088, 47.164768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030697, 0.195091, -0.980305,
		0.803327, 0.578767, 0.140336,
		0.594746, -0.791813, -0.138956,
		34.137463, 30.091545, 47.123081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.338776, 30.960808, 46.769970>,  <33.721138, 30.645813, 47.220352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.338776, 30.960808, 46.769970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.395370, 30.565321, 46.750298>,  <34.429325, 30.328028, 46.738495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.395370, 30.565321, 46.750298>,  <34.338776, 30.960808, 46.769970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.395370, 30.565321, 46.750298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358835, 0.097525, -0.928293,
		0.922616, 0.113691, 0.368584,
		0.141485, -0.988718, -0.049182,
		34.437817, 30.268705, 46.735542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.006535, 30.812529, 46.562809>,  <34.338776, 30.960808, 46.769970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.006535, 30.812529, 46.562809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.805431, 30.480890, 46.464962>,  <34.684769, 30.281908, 46.406254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.805431, 30.480890, 46.464962>,  <35.006535, 30.812529, 46.562809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.805431, 30.480890, 46.464962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240501, 0.137650, -0.960839,
		0.830298, -0.541900, 0.130194,
		-0.502757, -0.829094, -0.244618,
		34.654606, 30.232162, 46.391575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.385246, 30.453138, 46.123882>,  <35.006535, 30.812529, 46.562809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.385246, 30.453138, 46.123882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.038853, 30.281271, 46.021542>,  <34.831017, 30.178150, 45.960136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.038853, 30.281271, 46.021542>,  <35.385246, 30.453138, 46.123882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.038853, 30.281271, 46.021542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293300, -0.022022, -0.955767,
		0.405029, -0.902718, 0.145093,
		-0.865983, -0.429669, -0.255847,
		34.779057, 30.152370, 45.944786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.542324, 29.955566, 45.511326>,  <35.385246, 30.453138, 46.123882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.542324, 29.955566, 45.511326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.145107, 30.002651, 45.509907>,  <34.906776, 30.030901, 45.509056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.145107, 30.002651, 45.509907>,  <35.542324, 29.955566, 45.511326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.145107, 30.002651, 45.509907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023076, -0.224070, -0.974300,
		-0.115478, -0.967439, 0.225227,
		-0.993042, 0.117708, -0.003551,
		34.847195, 30.037964, 45.508842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.344738, 29.375818, 45.264366>,  <35.542324, 29.955566, 45.511326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.344738, 29.375818, 45.264366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.046371, 29.635012, 45.202747>,  <34.867352, 29.790527, 45.165775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.046371, 29.635012, 45.202747>,  <35.344738, 29.375818, 45.264366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.046371, 29.635012, 45.202747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049404, -0.176821, -0.983002,
		-0.664208, -0.740845, 0.099880,
		-0.745914, 0.647984, -0.154046,
		34.822598, 29.829407, 45.156532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.834221, 29.040815, 44.755791>,  <35.344738, 29.375818, 45.264366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.834221, 29.040815, 44.755791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.784573, 29.436491, 44.724560>,  <34.754784, 29.673897, 44.705822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.784573, 29.436491, 44.724560>,  <34.834221, 29.040815, 44.755791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.784573, 29.436491, 44.724560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045133, -0.072975, -0.996312,
		-0.991240, -0.127186, -0.035587,
		-0.124120, 0.989191, -0.078076,
		34.747337, 29.733248, 44.701138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.220459, 29.154278, 44.431805>,  <34.834221, 29.040815, 44.755791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.220459, 29.154278, 44.431805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.406788, 29.502636, 44.369129>,  <34.518585, 29.711651, 44.331524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.406788, 29.502636, 44.369129>,  <34.220459, 29.154278, 44.431805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.406788, 29.502636, 44.369129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132738, -0.106298, -0.985435,
		-0.874868, 0.479832, 0.066085,
		0.465818, 0.870897, -0.156689,
		34.546532, 29.763905, 44.322121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.785496, 29.567780, 44.006641>,  <34.220459, 29.154278, 44.431805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.785496, 29.567780, 44.006641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.136486, 29.753565, 43.958782>,  <34.347080, 29.865036, 43.930065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.136486, 29.753565, 43.958782>,  <33.785496, 29.567780, 44.006641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.136486, 29.753565, 43.958782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196287, 0.120132, -0.973160,
		-0.437624, 0.877406, 0.196581,
		0.877472, 0.464464, -0.119651,
		34.399727, 29.892904, 43.922886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.637856, 30.049128, 43.550053>,  <33.785496, 29.567780, 44.006641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.637856, 30.049128, 43.550053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.036900, 30.058277, 43.523987>,  <34.276325, 30.063766, 43.508347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.036900, 30.058277, 43.523987>,  <33.637856, 30.049128, 43.550053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.036900, 30.058277, 43.523987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068794, 0.245642, -0.966916,
		-0.006112, 0.969091, 0.246630,
		0.997612, 0.022876, -0.065167,
		34.336182, 30.065140, 43.504436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.850838, 30.698576, 43.392506>,  <33.637856, 30.049128, 43.550053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.850838, 30.698576, 43.392506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.150944, 30.467098, 43.264622>,  <34.331009, 30.328211, 43.187893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.150944, 30.467098, 43.264622>,  <33.850838, 30.698576, 43.392506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.150944, 30.467098, 43.264622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152134, 0.319479, -0.935301,
		0.643395, 0.750363, 0.151655,
		0.750266, -0.578696, -0.319706,
		34.376022, 30.293489, 43.168709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.331280, 31.210205, 43.135784>,  <33.850838, 30.698576, 43.392506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.331280, 31.210205, 43.135784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.339252, 30.838963, 42.987072>,  <34.344036, 30.616217, 42.897842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.339252, 30.838963, 42.987072>,  <34.331280, 31.210205, 43.135784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.339252, 30.838963, 42.987072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199827, 0.360658, -0.911041,
		0.979629, 0.092450, -0.178272,
		0.019931, -0.928105, -0.371785,
		34.345230, 30.560532, 42.875538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.671486, 31.428715, 42.558201>,  <34.331280, 31.210205, 43.135784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.671486, 31.428715, 42.558201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.565258, 31.047289, 42.501369>,  <34.501522, 30.818434, 42.467270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.565258, 31.047289, 42.501369>,  <34.671486, 31.428715, 42.558201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.565258, 31.047289, 42.501369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159425, 0.101906, -0.981936,
		0.950819, -0.283424, 0.124959,
		-0.265570, -0.953565, -0.142079,
		34.485588, 30.761219, 42.458744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.092049, 31.272274, 41.967758>,  <34.671486, 31.428715, 42.558201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.092049, 31.272274, 41.967758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.802147, 30.998196, 41.996716>,  <34.628204, 30.833748, 42.014088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.802147, 30.998196, 41.996716>,  <35.092049, 31.272274, 41.967758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.802147, 30.998196, 41.996716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087274, -0.012924, -0.996100,
		0.683459, -0.728244, -0.050433,
		-0.724753, -0.685195, 0.072390,
		34.584721, 30.792637, 42.018433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.148556, 30.780937, 41.423729>,  <35.092049, 31.272274, 41.967758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.148556, 30.780937, 41.423729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.760979, 30.715334, 41.497753>,  <34.528431, 30.675972, 41.542168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.760979, 30.715334, 41.497753>,  <35.148556, 30.780937, 41.423729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.760979, 30.715334, 41.497753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180214, -0.044081, -0.982639,
		0.169320, -0.985473, 0.013155,
		-0.968945, -0.164010, 0.185060,
		34.470295, 30.666132, 41.553272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.985661, 30.239424, 41.044472>,  <35.148556, 30.780937, 41.423729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.985661, 30.239424, 41.044472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.635601, 30.414717, 41.126514>,  <34.425564, 30.519892, 41.175739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.635601, 30.414717, 41.126514>,  <34.985661, 30.239424, 41.044472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.635601, 30.414717, 41.126514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332625, -0.237049, -0.912781,
		-0.351388, -0.867042, 0.353220,
		-0.875150, 0.438230, 0.205104,
		34.373055, 30.546186, 41.188046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.587261, 29.929182, 40.690434>,  <34.985661, 30.239424, 41.044472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.587261, 29.929182, 40.690434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.339348, 30.233765, 40.766380>,  <34.190598, 30.416513, 40.811947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.339348, 30.233765, 40.766380>,  <34.587261, 29.929182, 40.690434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.339348, 30.233765, 40.766380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402773, -0.101005, -0.909710,
		-0.673527, -0.640299, 0.369295,
		-0.619787, 0.761456, 0.189866,
		34.153412, 30.462202, 40.823341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.869858, 29.683081, 40.450771>,  <34.587261, 29.929182, 40.690434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.869858, 29.683081, 40.450771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.901436, 30.081709, 40.440868>,  <33.920383, 30.320887, 40.434925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.901436, 30.081709, 40.440868>,  <33.869858, 29.683081, 40.450771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.901436, 30.081709, 40.440868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568633, 0.024618, -0.822223,
		-0.818794, 0.078985, 0.568627,
		0.078942, 0.996572, -0.024756,
		33.925117, 30.380680, 40.433441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.214725, 29.885422, 40.413643>,  <33.869858, 29.683081, 40.450771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.214725, 29.885422, 40.413643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.420712, 30.189903, 40.255966>,  <33.544304, 30.372591, 40.161362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.420712, 30.189903, 40.255966>,  <33.214725, 29.885422, 40.413643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.420712, 30.189903, 40.255966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643058, 0.038966, -0.764825,
		-0.566826, 0.647344, 0.509563,
		0.514961, 0.761202, -0.394193,
		33.575199, 30.418264, 40.137707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.665264, 30.149729, 40.016537>,  <33.214725, 29.885422, 40.413643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.665264, 30.149729, 40.016537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.979153, 30.357716, 39.881569>,  <33.167484, 30.482508, 39.800591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.979153, 30.357716, 39.881569>,  <32.665264, 30.149729, 40.016537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.979153, 30.357716, 39.881569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532723, 0.287448, -0.795977,
		-0.316891, 0.804369, 0.502564,
		0.784720, 0.519966, -0.337416,
		33.214569, 30.513706, 39.780346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.408092, 30.794855, 39.784821>,  <32.665264, 30.149729, 40.016537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.408092, 30.794855, 39.784821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.752449, 30.723276, 39.594311>,  <32.959064, 30.680328, 39.480003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.752449, 30.723276, 39.594311>,  <32.408092, 30.794855, 39.784821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.752449, 30.723276, 39.594311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326088, 0.524497, -0.786491,
		0.390545, 0.832394, 0.393185,
		0.860895, -0.178947, -0.476274,
		33.010719, 30.669592, 39.451427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.475460, 31.399065, 39.459774>,  <32.408092, 30.794855, 39.784821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.475460, 31.399065, 39.459774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.722618, 31.142490, 39.277889>,  <32.870914, 30.988546, 39.168758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.722618, 31.142490, 39.277889>,  <32.475460, 31.399065, 39.459774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.722618, 31.142490, 39.277889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288680, 0.352857, -0.890032,
		0.731347, 0.681214, 0.032859,
		0.617896, -0.641436, -0.454713,
		32.907986, 30.950060, 39.141476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.782059, 31.826366, 38.823048>,  <32.475460, 31.399065, 39.459774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.782059, 31.826366, 38.823048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.867561, 31.440914, 38.758892>,  <32.918861, 31.209642, 38.720398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.867561, 31.440914, 38.758892>,  <32.782059, 31.826366, 38.823048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.867561, 31.440914, 38.758892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257338, 0.102844, -0.960833,
		0.942384, 0.246655, -0.225995,
		0.213752, -0.963631, -0.160392,
		32.931686, 31.151825, 38.710773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.105465, 31.881313, 38.202023>,  <32.782059, 31.826366, 38.823048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.105465, 31.881313, 38.202023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.018703, 31.492952, 38.242615>,  <32.966644, 31.259935, 38.266968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.018703, 31.492952, 38.242615>,  <33.105465, 31.881313, 38.202023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.018703, 31.492952, 38.242615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135636, -0.072969, -0.988068,
		0.966724, -0.228082, -0.115862,
		-0.216906, -0.970904, 0.101477,
		32.953632, 31.201681, 38.273056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.487507, 31.505508, 37.749527>,  <33.105465, 31.881313, 38.202023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.487507, 31.505508, 37.749527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.183681, 31.254604, 37.818352>,  <33.001385, 31.104061, 37.859646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.183681, 31.254604, 37.818352>,  <33.487507, 31.505508, 37.749527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.183681, 31.254604, 37.818352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202458, -0.023395, -0.979011,
		0.618121, -0.778458, -0.109224,
		-0.759564, -0.627260, 0.172066,
		32.955811, 31.066427, 37.869972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.367496, 30.980726, 37.232151>,  <33.487507, 31.505508, 37.749527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.367496, 30.980726, 37.232151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.995121, 31.005928, 37.376034>,  <32.771698, 31.021049, 37.462364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.995121, 31.005928, 37.376034>,  <33.367496, 30.980726, 37.232151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.995121, 31.005928, 37.376034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358956, 0.023297, -0.933064,
		-0.067170, -0.997741, 0.000929,
		-0.930934, 0.063007, 0.359710,
		32.715839, 31.024830, 37.483948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.942585, 30.527264, 36.747307>,  <33.367496, 30.980726, 37.232151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.942585, 30.527264, 36.747307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.708794, 30.791512, 36.935757>,  <32.568520, 30.950060, 37.048828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.708794, 30.791512, 36.935757>,  <32.942585, 30.527264, 36.747307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.708794, 30.791512, 36.935757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588908, 0.054050, -0.806390,
		-0.558182, -0.748772, 0.357453,
		-0.584482, 0.660620, 0.471128,
		32.533447, 30.989698, 37.077095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.223125, 30.353683, 36.583145>,  <32.942585, 30.527264, 36.747307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.223125, 30.353683, 36.583145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.264999, 30.730732, 36.709957>,  <32.290123, 30.956961, 36.786045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.264999, 30.730732, 36.709957>,  <32.223125, 30.353683, 36.583145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.264999, 30.730732, 36.709957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448110, 0.329296, -0.831120,
		-0.887828, -0.055061, 0.456870,
		0.104683, 0.942620, 0.317032,
		32.296406, 31.013517, 36.805065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.544516, 30.707750, 36.424137>,  <32.223125, 30.353683, 36.583145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.544516, 30.707750, 36.424137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.778116, 31.024267, 36.496578>,  <31.918276, 31.214178, 36.540043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.778116, 31.024267, 36.496578>,  <31.544516, 30.707750, 36.424137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.778116, 31.024267, 36.496578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265721, 0.397158, -0.878441,
		-0.767031, 0.464887, 0.442204,
		0.584000, 0.791294, 0.181102,
		31.953316, 31.261656, 36.550907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.071901, 31.203775, 36.307716>,  <31.544516, 30.707750, 36.424137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.071901, 31.203775, 36.307716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.443953, 31.347383, 36.276821>,  <31.667183, 31.433548, 36.258282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.443953, 31.347383, 36.276821>,  <31.071901, 31.203775, 36.307716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.443953, 31.347383, 36.276821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237296, 0.427050, -0.872536,
		-0.280274, 0.829899, 0.482405,
		0.930128, 0.359022, -0.077241,
		31.722990, 31.455090, 36.253651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.006575, 31.867987, 36.205235>,  <31.071901, 31.203775, 36.307716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.006575, 31.867987, 36.205235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.376089, 31.803394, 36.066357>,  <31.597797, 31.764639, 35.983028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.376089, 31.803394, 36.066357>,  <31.006575, 31.867987, 36.205235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.376089, 31.803394, 36.066357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203424, 0.561222, -0.802277,
		0.324407, 0.811760, 0.485599,
		0.923785, -0.161482, -0.347196,
		31.653225, 31.754950, 35.962196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.133390, 32.492111, 36.018795>,  <31.006575, 31.867987, 36.205235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.133390, 32.492111, 36.018795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.437277, 32.287312, 35.858452>,  <31.619608, 32.164433, 35.762245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.437277, 32.287312, 35.858452>,  <31.133390, 32.492111, 36.018795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.437277, 32.287312, 35.858452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031044, 0.587204, -0.808843,
		0.649513, 0.626936, 0.430214,
		0.759717, -0.511999, -0.400859,
		31.665192, 32.133713, 35.738194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.605684, 32.936630, 35.854912>,  <31.133390, 32.492111, 36.018795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.605684, 32.936630, 35.854912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.652802, 32.621658, 35.612892>,  <31.681072, 32.432674, 35.467682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.652802, 32.621658, 35.612892>,  <31.605684, 32.936630, 35.854912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.652802, 32.621658, 35.612892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073611, 0.614539, -0.785444,
		0.990306, 0.047982, 0.130352,
		0.117793, -0.787426, -0.605049,
		31.688139, 32.385429, 35.431377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.226181, 33.113049, 35.341030>,  <31.605684, 32.936630, 35.854912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.226181, 33.113049, 35.341030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.998987, 32.818893, 35.193192>,  <31.862671, 32.642403, 35.104488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.998987, 32.818893, 35.193192>,  <32.226181, 33.113049, 35.341030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.998987, 32.818893, 35.193192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050427, 0.417127, -0.907448,
		0.821494, -0.534053, -0.199838,
		-0.567984, -0.735386, -0.369598,
		31.828592, 32.598278, 35.082314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.594051, 32.916962, 34.733784>,  <32.226181, 33.113049, 35.341030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.594051, 32.916962, 34.733784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.214611, 32.796764, 34.694042>,  <31.986948, 32.724648, 34.670197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.214611, 32.796764, 34.694042>,  <32.594051, 32.916962, 34.733784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.214611, 32.796764, 34.694042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023430, 0.246376, -0.968891,
		0.315622, -0.921414, -0.226671,
		-0.948596, -0.300493, -0.099350,
		31.930033, 32.706615, 34.664238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.283623, 32.481052, 34.717957>,  <32.594051, 32.916962, 34.733784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.283623, 32.481052, 34.717957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.539757, 32.767338, 34.606438>,  <33.693436, 32.939110, 34.539528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.539757, 32.767338, 34.606438>,  <33.283623, 32.481052, 34.717957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.539757, 32.767338, 34.606438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721252, -0.435455, 0.538679,
		0.264139, -0.546014, -0.795047,
		0.640333, 0.715715, -0.278793,
		33.731857, 32.982052, 34.522800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.927391, 32.183342, 34.372890>,  <33.283623, 32.481052, 34.717957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.927391, 32.183342, 34.372890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.010517, 32.546249, 34.519138>,  <34.060390, 32.763992, 34.606888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.010517, 32.546249, 34.519138>,  <33.927391, 32.183342, 34.372890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.010517, 32.546249, 34.519138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671316, -0.404142, 0.621292,
		0.711441, 0.116335, -0.693050,
		0.207813, 0.907268, 0.365621,
		34.072861, 32.818428, 34.628826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.681835, 32.269669, 34.449425>,  <33.927391, 32.183342, 34.372890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.681835, 32.269669, 34.449425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.527695, 32.547550, 34.692371>,  <34.435211, 32.714279, 34.838139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.527695, 32.547550, 34.692371>,  <34.681835, 32.269669, 34.449425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.527695, 32.547550, 34.692371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624850, -0.287891, 0.725728,
		0.679019, 0.659175, -0.323144,
		-0.385351, 0.694700, 0.607369,
		34.412090, 32.755959, 34.874580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.190872, 32.524796, 34.807755>,  <34.681835, 32.269669, 34.449425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.190872, 32.524796, 34.807755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.902538, 32.640163, 35.059853>,  <34.729538, 32.709385, 35.211113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.902538, 32.640163, 35.059853>,  <35.190872, 32.524796, 34.807755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.902538, 32.640163, 35.059853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599032, -0.198161, 0.775817,
		0.348653, 0.936774, -0.029933,
		-0.720834, 0.288422, 0.630247,
		34.686287, 32.726688, 35.248928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.517910, 32.800797, 35.306362>,  <35.190872, 32.524796, 34.807755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.517910, 32.800797, 35.306362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.161835, 32.794464, 35.488491>,  <34.948189, 32.790665, 35.597767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.161835, 32.794464, 35.488491>,  <35.517910, 32.800797, 35.306362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.161835, 32.794464, 35.488491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449307, -0.196011, 0.871609,
		0.075449, 0.980474, 0.181599,
		-0.890186, -0.015831, 0.455323,
		34.894779, 32.789715, 35.625088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.637299, 33.147141, 35.950089>,  <35.517910, 32.800797, 35.306362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.637299, 33.147141, 35.950089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.308914, 32.921001, 35.982105>,  <35.111885, 32.785316, 36.001316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.308914, 32.921001, 35.982105>,  <35.637299, 33.147141, 35.950089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.308914, 32.921001, 35.982105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328537, -0.353050, 0.876025,
		-0.467004, 0.745475, 0.475578,
		-0.820957, -0.565352, 0.080040,
		35.062626, 32.751396, 36.006119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.429379, 33.177898, 36.580902>,  <35.637299, 33.147141, 35.950089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.429379, 33.177898, 36.580902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.227543, 32.839691, 36.511066>,  <35.106441, 32.636765, 36.469166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.227543, 32.839691, 36.511066>,  <35.429379, 33.177898, 36.580902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.227543, 32.839691, 36.511066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284809, -0.353920, 0.890856,
		-0.815028, 0.399795, 0.419397,
		-0.504593, -0.845520, -0.174590,
		35.076164, 32.586037, 36.458691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.938850, 33.020496, 37.184631>,  <35.429379, 33.177898, 36.580902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.938850, 33.020496, 37.184631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.029598, 32.674786, 37.005047>,  <35.084049, 32.467361, 36.897297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.029598, 32.674786, 37.005047>,  <34.938850, 33.020496, 37.184631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.029598, 32.674786, 37.005047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432725, -0.323525, 0.841476,
		-0.872513, -0.385181, 0.300594,
		0.226871, -0.864273, -0.448957,
		35.097660, 32.415504, 36.870361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.809544, 32.543381, 37.651695>,  <34.938850, 33.020496, 37.184631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.809544, 32.543381, 37.651695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.066002, 32.345592, 37.416943>,  <35.219875, 32.226917, 37.276089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.066002, 32.345592, 37.416943>,  <34.809544, 32.543381, 37.651695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.066002, 32.345592, 37.416943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536253, -0.258390, 0.803534,
		-0.548971, -0.829898, 0.099498,
		0.641142, -0.494474, -0.586884,
		35.258343, 32.197250, 37.240879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.721962, 31.873674, 37.863216>,  <34.809544, 32.543381, 37.651695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.721962, 31.873674, 37.863216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.089211, 31.888409, 37.705383>,  <35.309559, 31.897249, 37.610683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.089211, 31.888409, 37.705383>,  <34.721962, 31.873674, 37.863216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.089211, 31.888409, 37.705383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346506, -0.557779, 0.754199,
		-0.192307, -0.829172, -0.524873,
		0.918124, 0.036834, -0.394578,
		35.364647, 31.899458, 37.587009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.123032, 31.175512, 37.991730>,  <34.721962, 31.873674, 37.863216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.123032, 31.175512, 37.991730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.417263, 31.426500, 37.889591>,  <35.593803, 31.577093, 37.828308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.417263, 31.426500, 37.889591>,  <35.123032, 31.175512, 37.991730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.417263, 31.426500, 37.889591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626123, -0.485800, 0.609892,
		0.258641, -0.608504, -0.750219,
		0.735578, 0.627472, -0.255350,
		35.637936, 31.614742, 37.812984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.634850, 30.756887, 37.907722>,  <35.123032, 31.175512, 37.991730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.634850, 30.756887, 37.907722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.804905, 31.115879, 37.954697>,  <35.906937, 31.331274, 37.982880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.804905, 31.115879, 37.954697>,  <35.634850, 30.756887, 37.907722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.804905, 31.115879, 37.954697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590761, -0.373428, 0.715230,
		0.685757, -0.234694, -0.688953,
		0.425134, 0.897480, 0.117433,
		35.932446, 31.385122, 37.989925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.346279, 30.608526, 37.874088>,  <35.634850, 30.756887, 37.907722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.346279, 30.608526, 37.874088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.341770, 30.965418, 38.054665>,  <36.339066, 31.179552, 38.163010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.341770, 30.965418, 38.054665>,  <36.346279, 30.608526, 37.874088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.341770, 30.965418, 38.054665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661035, -0.332097, 0.672862,
		0.750270, 0.306006, -0.586051,
		-0.011274, 0.892229, 0.451443,
		36.338387, 31.233086, 38.190098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.058861, 30.811964, 38.008900>,  <36.346279, 30.608526, 37.874088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.058861, 30.811964, 38.008900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.814331, 31.004526, 38.260147>,  <36.667614, 31.120064, 38.410896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.814331, 31.004526, 38.260147>,  <37.058861, 30.811964, 38.008900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.814331, 31.004526, 38.260147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476714, -0.409519, 0.777842,
		0.631683, 0.774946, 0.020856,
		-0.611327, 0.481407, 0.628114,
		36.630932, 31.148949, 38.448582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.522850, 30.917896, 38.472431>,  <37.058861, 30.811964, 38.008900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.522850, 30.917896, 38.472431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.204834, 31.027056, 38.689114>,  <37.014027, 31.092552, 38.819122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.204834, 31.027056, 38.689114>,  <37.522850, 30.917896, 38.472431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.204834, 31.027056, 38.689114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474745, -0.275904, 0.835760,
		0.377535, 0.921631, 0.089797,
		-0.795037, 0.272898, 0.541703,
		36.966324, 31.108925, 38.851624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.803246, 31.198605, 39.090549>,  <37.522850, 30.917896, 38.472431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.803246, 31.198605, 39.090549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.417580, 31.142113, 39.180378>,  <37.186180, 31.108217, 39.234276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.417580, 31.142113, 39.180378>,  <37.803246, 31.198605, 39.090549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.417580, 31.142113, 39.180378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237413, -0.081627, 0.967973,
		-0.118375, 0.986606, 0.112232,
		-0.964169, -0.141229, 0.224571,
		37.128330, 31.099745, 39.247749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.618671, 31.716019, 39.618427>,  <37.803246, 31.198605, 39.090549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.618671, 31.716019, 39.618427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.362980, 31.410196, 39.651493>,  <37.209564, 31.226702, 39.671333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.362980, 31.410196, 39.651493>,  <37.618671, 31.716019, 39.618427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.362980, 31.410196, 39.651493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063945, 0.054278, 0.996476,
		-0.766350, 0.642267, 0.014193,
		-0.639233, -0.764557, 0.082666,
		37.171211, 31.180830, 39.676292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.014839, 31.842236, 40.192482>,  <37.618671, 31.716019, 39.618427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.014839, 31.842236, 40.192482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.054104, 31.447369, 40.142094>,  <37.077663, 31.210449, 40.111862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.054104, 31.447369, 40.142094>,  <37.014839, 31.842236, 40.192482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.054104, 31.447369, 40.142094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136797, -0.138762, 0.980832,
		-0.985723, -0.079052, -0.148663,
		0.098165, -0.987166, -0.125966,
		37.083553, 31.151218, 40.104305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.549778, 31.618879, 40.585560>,  <37.014839, 31.842236, 40.192482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.549778, 31.618879, 40.585560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.775799, 31.292921, 40.533936>,  <36.911411, 31.097345, 40.502960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.775799, 31.292921, 40.533936>,  <36.549778, 31.618879, 40.585560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.775799, 31.292921, 40.533936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051719, -0.191106, 0.980206,
		-0.823431, -0.547195, -0.150131,
		0.565054, -0.814897, -0.129062,
		36.945316, 31.048452, 40.495216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.199242, 31.212112, 40.974312>,  <36.549778, 31.618879, 40.585560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.199242, 31.212112, 40.974312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.551739, 31.030720, 40.920986>,  <36.763237, 30.921885, 40.888992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.551739, 31.030720, 40.920986>,  <36.199242, 31.212112, 40.974312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.551739, 31.030720, 40.920986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018332, -0.314623, 0.949040,
		-0.472316, -0.833886, -0.285571,
		0.881239, -0.453482, -0.133315,
		36.816109, 30.894676, 40.880993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.117142, 30.509418, 41.103424>,  <36.199242, 31.212112, 40.974312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.117142, 30.509418, 41.103424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.507626, 30.587440, 41.141312>,  <36.741917, 30.634253, 41.164043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.507626, 30.587440, 41.141312>,  <36.117142, 30.509418, 41.103424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.507626, 30.587440, 41.141312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007648, -0.405572, 0.914031,
		0.216699, -0.893009, -0.394431,
		0.976208, 0.195053, 0.094717,
		36.800488, 30.645956, 41.169727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.414803, 29.984320, 41.520252>,  <36.117142, 30.509418, 41.103424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.414803, 29.984320, 41.520252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.693562, 30.269367, 41.552536>,  <36.860817, 30.440395, 41.571907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.693562, 30.269367, 41.552536>,  <36.414803, 29.984320, 41.520252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.693562, 30.269367, 41.552536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041876, -0.152778, 0.987373,
		0.715950, -0.684715, -0.136312,
		0.696895, 0.712618, 0.080709,
		36.902630, 30.483152, 41.576748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.890682, 29.767597, 41.980068>,  <36.414803, 29.984320, 41.520252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.890682, 29.767597, 41.980068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.966095, 30.160267, 41.991173>,  <37.011341, 30.395868, 41.997837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.966095, 30.160267, 41.991173>,  <36.890682, 29.767597, 41.980068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.966095, 30.160267, 41.991173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034959, -0.034957, 0.998777,
		0.981445, -0.187326, -0.040909,
		0.188527, 0.981675, 0.027760,
		37.022652, 30.454769, 41.999500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.513142, 29.826447, 42.485229>,  <36.890682, 29.767597, 41.980068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.513142, 29.826447, 42.485229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.350388, 30.190458, 42.453503>,  <37.252735, 30.408865, 42.434467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.350388, 30.190458, 42.453503>,  <37.513142, 29.826447, 42.485229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.350388, 30.190458, 42.453503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092771, 0.045212, 0.994660,
		0.908755, 0.412075, 0.066028,
		-0.406889, 0.910028, -0.079316,
		37.228321, 30.463467, 42.429707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.880058, 30.218212, 42.893608>,  <37.513142, 29.826447, 42.485229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.880058, 30.218212, 42.893608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.529091, 30.402151, 42.838928>,  <37.318512, 30.512514, 42.806122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.529091, 30.402151, 42.838928>,  <37.880058, 30.218212, 42.893608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.529091, 30.402151, 42.838928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053489, 0.189392, 0.980444,
		0.476742, 0.867567, -0.141578,
		-0.877414, 0.459846, -0.136696,
		37.265865, 30.540106, 42.797920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.046368, 30.829456, 43.245049>,  <37.880058, 30.218212, 42.893608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.046368, 30.829456, 43.245049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.648251, 30.806120, 43.214088>,  <37.409382, 30.792118, 43.195515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.648251, 30.806120, 43.214088>,  <38.046368, 30.829456, 43.245049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.648251, 30.806120, 43.214088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090680, 0.278522, 0.956139,
		-0.034226, 0.958656, -0.282501,
		-0.995292, -0.058342, -0.077399,
		37.349663, 30.788618, 43.190868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.836067, 31.367453, 43.672802>,  <38.046368, 30.829456, 43.245049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.836067, 31.367453, 43.672802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.512180, 31.135538, 43.636559>,  <37.317848, 30.996389, 43.614811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.512180, 31.135538, 43.636559>,  <37.836067, 31.367453, 43.672802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.512180, 31.135538, 43.636559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270832, 0.232240, 0.934192,
		-0.520587, 0.780970, -0.345073,
		-0.809715, -0.579785, -0.090610,
		37.269264, 30.961603, 43.609375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.184006, 31.772150, 43.854767>,  <37.836067, 31.367453, 43.672802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.184006, 31.772150, 43.854767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.090454, 31.385801, 43.899296>,  <37.034321, 31.153992, 43.926014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.090454, 31.385801, 43.899296>,  <37.184006, 31.772150, 43.854767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.090454, 31.385801, 43.899296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350701, 0.190596, 0.916887,
		-0.906812, 0.175405, -0.383309,
		-0.233883, -0.965871, 0.111320,
		37.020290, 31.096041, 43.932693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.469307, 31.777754, 44.081623>,  <37.184006, 31.772150, 43.854767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.469307, 31.777754, 44.081623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.643341, 31.437456, 44.199562>,  <36.747761, 31.233276, 44.270325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.643341, 31.437456, 44.199562>,  <36.469307, 31.777754, 44.081623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.643341, 31.437456, 44.199562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448838, 0.078953, 0.890118,
		-0.780544, -0.519613, -0.347496,
		0.435081, -0.850746, 0.294849,
		36.773865, 31.182232, 44.288017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.993355, 31.439713, 44.587208>,  <36.469307, 31.777754, 44.081623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.993355, 31.439713, 44.587208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.340904, 31.250074, 44.644188>,  <36.549435, 31.136292, 44.678375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.340904, 31.250074, 44.644188>,  <35.993355, 31.439713, 44.587208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.340904, 31.250074, 44.644188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113219, 0.089824, 0.989501,
		-0.481915, -0.875879, 0.024369,
		0.868872, -0.474097, 0.142454,
		36.601566, 31.107845, 44.686924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.913654, 31.168161, 45.208958>,  <35.993355, 31.439713, 44.587208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.913654, 31.168161, 45.208958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.310192, 31.181843, 45.158264>,  <36.548115, 31.190052, 45.127850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.310192, 31.181843, 45.158264>,  <35.913654, 31.168161, 45.208958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.310192, 31.181843, 45.158264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112843, 0.271167, 0.955895,
		0.067058, -0.961924, 0.264961,
		0.991347, 0.034202, -0.126730,
		36.607597, 31.192104, 45.120247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.193264, 30.715656, 45.759907>,  <35.913654, 31.168161, 45.208958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.193264, 30.715656, 45.759907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.500282, 30.944128, 45.643547>,  <36.684494, 31.081211, 45.573730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.500282, 30.944128, 45.643547>,  <36.193264, 30.715656, 45.759907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.500282, 30.944128, 45.643547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184532, 0.237710, 0.953647,
		0.613854, -0.785650, 0.077053,
		0.767549, 0.571181, -0.290896,
		36.730549, 31.115482, 45.556278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.599052, 30.561245, 46.274632>,  <36.193264, 30.715656, 45.759907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.599052, 30.561245, 46.274632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.759148, 30.904324, 46.145527>,  <36.855206, 31.110170, 46.068066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.759148, 30.904324, 46.145527>,  <36.599052, 30.561245, 46.274632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.759148, 30.904324, 46.145527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068913, 0.379369, 0.922676,
		0.913818, -0.347044, 0.210942,
		0.400234, 0.857695, -0.322758,
		36.879219, 31.161633, 46.048698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.257099, 30.744181, 46.699638>,  <36.599052, 30.561245, 46.274632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.257099, 30.744181, 46.699638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.103985, 31.071831, 46.528755>,  <37.012115, 31.268421, 46.426224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.103985, 31.071831, 46.528755>,  <37.257099, 30.744181, 46.699638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.103985, 31.071831, 46.528755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166437, 0.516011, 0.840256,
		0.908719, 0.250537, -0.333856,
		-0.382789, 0.819124, -0.427211,
		36.989147, 31.317568, 46.400593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.767475, 31.167496, 46.845387>,  <37.257099, 30.744181, 46.699638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.767475, 31.167496, 46.845387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.441174, 31.369791, 46.733116>,  <37.245392, 31.491167, 46.665752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.441174, 31.369791, 46.733116>,  <37.767475, 31.167496, 46.845387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.441174, 31.369791, 46.733116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149336, 0.652966, 0.742518,
		0.558792, 0.563796, -0.608183,
		-0.815752, 0.505737, -0.280677,
		37.196449, 31.521511, 46.648914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.894344, 31.885860, 46.823689>,  <37.767475, 31.167496, 46.845387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.894344, 31.885860, 46.823689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.495605, 31.881248, 46.855068>,  <37.256363, 31.878481, 46.873898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.495605, 31.881248, 46.855068>,  <37.894344, 31.885860, 46.823689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.495605, 31.881248, 46.855068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064901, 0.449796, 0.890770,
		-0.045557, 0.893057, -0.447632,
		-0.996851, -0.011529, 0.078452,
		37.196548, 31.877790, 46.878605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695293, 32.515919, 46.866554>,  <37.894344, 31.885860, 46.823689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.695293, 32.515919, 46.866554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.422806, 32.299072, 47.063347>,  <37.259312, 32.168964, 47.181423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.422806, 32.299072, 47.063347>,  <37.695293, 32.515919, 46.866554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.422806, 32.299072, 47.063347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194330, 0.514015, 0.835479,
		-0.705814, 0.664752, -0.244808,
		-0.681221, -0.542119, 0.491980,
		37.218441, 32.136436, 47.210941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.596397, 32.900688, 47.492123>,  <37.695293, 32.515919, 46.866554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.596397, 32.900688, 47.492123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.385193, 32.568844, 47.564728>,  <37.258469, 32.369736, 47.608292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.385193, 32.568844, 47.564728>,  <37.596397, 32.900688, 47.492123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.385193, 32.568844, 47.564728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229045, 0.066695, 0.971128,
		-0.817766, 0.554342, 0.154803,
		-0.528012, -0.829613, 0.181510,
		37.226788, 32.319962, 47.619183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.787861, 33.256924, 48.211510>,  <37.596397, 32.900688, 47.492123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.787861, 33.256924, 48.211510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.909397, 33.586720, 48.402466>,  <37.982319, 33.784595, 48.517040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.909397, 33.586720, 48.402466>,  <37.787861, 33.256924, 48.211510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.909397, 33.586720, 48.402466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177293, 0.443399, -0.878615,
		-0.936081, 0.351597, -0.011453,
		0.303840, 0.824486, 0.477394,
		38.000549, 33.834064, 48.545685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.385120, 33.910225, 47.910908>,  <37.787861, 33.256924, 48.211510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.385120, 33.910225, 47.910908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.718849, 34.039001, 48.089909>,  <37.919086, 34.116268, 48.197308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.718849, 34.039001, 48.089909>,  <37.385120, 33.910225, 47.910908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.718849, 34.039001, 48.089909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169075, 0.623202, -0.763566,
		-0.524708, 0.712723, 0.465520,
		0.834324, 0.321941, 0.447502,
		37.969147, 34.135582, 48.224159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.329880, 34.637634, 47.868118>,  <37.385120, 33.910225, 47.910908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.329880, 34.637634, 47.868118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.706177, 34.504532, 47.894253>,  <37.931957, 34.424671, 47.909935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.706177, 34.504532, 47.894253>,  <37.329880, 34.637634, 47.868118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.706177, 34.504532, 47.894253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165974, 0.283782, -0.944415,
		0.295718, 0.899300, 0.322196,
		0.940746, -0.332756, 0.065341,
		37.988400, 34.404705, 47.913857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.712914, 35.195278, 47.555702>,  <37.329880, 34.637634, 47.868118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.712914, 35.195278, 47.555702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.977356, 34.895210, 47.550167>,  <38.136021, 34.715168, 47.546844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.977356, 34.895210, 47.550167>,  <37.712914, 35.195278, 47.555702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.977356, 34.895210, 47.550167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228710, 0.219058, -0.948528,
		0.714588, 0.623907, 0.316391,
		0.661102, -0.750169, -0.013842,
		38.175686, 34.670158, 47.546013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.401508, 35.487873, 47.192253>,  <37.712914, 35.195278, 47.555702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.401508, 35.487873, 47.192253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.418293, 35.088341, 47.201828>,  <38.428364, 34.848621, 47.207573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.418293, 35.088341, 47.201828>,  <38.401508, 35.487873, 47.192253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.418293, 35.088341, 47.201828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350218, -0.007732, -0.936636,
		0.935728, 0.047683, 0.349485,
		0.041960, -0.998833, 0.023935,
		38.430882, 34.788692, 47.209007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.002357, 35.318920, 46.862019>,  <38.401508, 35.487873, 47.192253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.002357, 35.318920, 46.862019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.789940, 34.980663, 46.840534>,  <38.662491, 34.777710, 46.827644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.789940, 34.980663, 46.840534>,  <39.002357, 35.318920, 46.862019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.789940, 34.980663, 46.840534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157406, -0.036161, -0.986872,
		0.832597, -0.532525, 0.152312,
		-0.531042, -0.845641, -0.053715,
		38.630627, 34.726971, 46.824421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.280857, 34.927277, 46.314056>,  <39.002357, 35.318920, 46.862019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.280857, 34.927277, 46.314056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.929928, 34.739773, 46.355167>,  <38.719368, 34.627270, 46.379833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.929928, 34.739773, 46.355167>,  <39.280857, 34.927277, 46.314056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.929928, 34.739773, 46.355167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087423, -0.054472, -0.994681,
		0.471867, -0.881643, 0.006809,
		-0.877325, -0.468762, 0.102780,
		38.666729, 34.599144, 46.386002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.383480, 34.346027, 45.941189>,  <39.280857, 34.927277, 46.314056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.383480, 34.346027, 45.941189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.985386, 34.361252, 45.977116>,  <38.746529, 34.370388, 45.998672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.985386, 34.361252, 45.977116>,  <39.383480, 34.346027, 45.941189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.985386, 34.361252, 45.977116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097207, -0.310032, -0.945744,
		-0.008149, -0.949964, 0.312253,
		-0.995231, 0.038060, 0.089816,
		38.686817, 34.372669, 46.004059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.146713, 33.770153, 45.619793>,  <39.383480, 34.346027, 45.941189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.146713, 33.770153, 45.619793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.826458, 34.009708, 45.612736>,  <38.634304, 34.153442, 45.608501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.826458, 34.009708, 45.612736>,  <39.146713, 33.770153, 45.619793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.826458, 34.009708, 45.612736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208270, -0.305807, -0.929035,
		-0.561783, -0.740147, 0.369571,
		-0.800640, 0.598886, -0.017647,
		38.586266, 34.189373, 45.607441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.650475, 33.405922, 45.183281>,  <39.146713, 33.770153, 45.619793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.650475, 33.405922, 45.183281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.508148, 33.779469, 45.197693>,  <38.422752, 34.003597, 45.206341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.508148, 33.779469, 45.197693>,  <38.650475, 33.405922, 45.183281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.508148, 33.779469, 45.197693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371369, -0.105912, -0.922425,
		-0.857603, -0.341588, 0.384493,
		-0.355812, 0.933863, 0.036025,
		38.401405, 34.059628, 45.208500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.011051, 33.365002, 45.037331>,  <38.650475, 33.405922, 45.183281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.011051, 33.365002, 45.037331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.092983, 33.745365, 44.944534>,  <38.142143, 33.973583, 44.888855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.092983, 33.745365, 44.944534>,  <38.011051, 33.365002, 45.037331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.092983, 33.745365, 44.944534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527178, -0.092526, -0.844702,
		-0.824697, 0.295327, 0.482344,
		0.204834, 0.950905, -0.231996,
		38.154434, 34.030636, 44.874935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.368725, 33.712086, 44.967106>,  <38.011051, 33.365002, 45.037331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.368725, 33.712086, 44.967106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.663342, 33.896870, 44.769478>,  <37.840111, 34.007740, 44.650902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.663342, 33.896870, 44.769478>,  <37.368725, 33.712086, 44.967106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.663342, 33.896870, 44.769478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492103, -0.135160, -0.859980,
		-0.464052, 0.876543, 0.127780,
		0.736539, 0.461957, -0.494071,
		37.884304, 34.035458, 44.621258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.081581, 34.314804, 44.547386>,  <37.368725, 33.712086, 44.967106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.081581, 34.314804, 44.547386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.433727, 34.186695, 44.407459>,  <37.645016, 34.109829, 44.323502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.433727, 34.186695, 44.407459>,  <37.081581, 34.314804, 44.547386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.433727, 34.186695, 44.407459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378665, -0.030501, -0.925031,
		0.285596, 0.946833, -0.148130,
		0.880368, -0.320276, -0.349822,
		37.697838, 34.090611, 44.302513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.310661, 34.725159, 43.988697>,  <37.081581, 34.314804, 44.547386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.310661, 34.725159, 43.988697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.491142, 34.373119, 43.929588>,  <37.599430, 34.161896, 43.894123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.491142, 34.373119, 43.929588>,  <37.310661, 34.725159, 43.988697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.491142, 34.373119, 43.929588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207270, 0.057714, -0.976580,
		0.868019, 0.471264, -0.156378,
		0.451202, -0.880102, -0.147776,
		37.626503, 34.109089, 43.885254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.451027, 34.759312, 43.379444>,  <37.310661, 34.725159, 43.988697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.451027, 34.759312, 43.379444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.499950, 34.362965, 43.402130>,  <37.529305, 34.125156, 43.415741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.499950, 34.362965, 43.402130>,  <37.451027, 34.759312, 43.379444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.499950, 34.362965, 43.402130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090946, -0.068092, -0.993525,
		0.988316, 0.116361, -0.098445,
		0.122311, -0.990870, 0.056714,
		37.536644, 34.065704, 43.419144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.861835, 34.598583, 42.811943>,  <37.451027, 34.759312, 43.379444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.861835, 34.598583, 42.811943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.735218, 34.230858, 42.905460>,  <37.659248, 34.010223, 42.961571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.735218, 34.230858, 42.905460>,  <37.861835, 34.598583, 42.811943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.735218, 34.230858, 42.905460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059449, -0.226761, -0.972134,
		0.946712, -0.321626, 0.017129,
		-0.316548, -0.919313, 0.233797,
		37.640255, 33.955063, 42.975601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.239983, 34.185055, 42.406322>,  <37.861835, 34.598583, 42.811943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.239983, 34.185055, 42.406322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.928059, 33.965698, 42.527100>,  <37.740906, 33.834084, 42.599564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.928059, 33.965698, 42.527100>,  <38.239983, 34.185055, 42.406322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.928059, 33.965698, 42.527100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094637, -0.373507, -0.922787,
		0.618823, -0.748172, 0.239366,
		-0.779809, -0.548389, 0.301940,
		37.694115, 33.801182, 42.617683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.320900, 33.527252, 42.093254>,  <38.239983, 34.185055, 42.406322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.320900, 33.527252, 42.093254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.933098, 33.539093, 42.190559>,  <37.700417, 33.546200, 42.248943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.933098, 33.539093, 42.190559>,  <38.320900, 33.527252, 42.093254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.933098, 33.539093, 42.190559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242480, -0.259577, -0.934785,
		0.035472, -0.965269, 0.258840,
		-0.969508, 0.029605, 0.243266,
		37.642246, 33.547974, 42.263538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.989536, 32.861626, 41.846008>,  <38.320900, 33.527252, 42.093254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.989536, 32.861626, 41.846008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.685223, 33.118149, 41.885891>,  <37.502636, 33.272060, 41.909821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.685223, 33.118149, 41.885891>,  <37.989536, 32.861626, 41.846008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.685223, 33.118149, 41.885891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394165, -0.334515, -0.855999,
		-0.515604, -0.690527, 0.507272,
		-0.760780, 0.641305, 0.099704,
		37.456989, 33.310539, 41.915802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.372284, 32.459770, 41.649387>,  <37.989536, 32.861626, 41.846008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.372284, 32.459770, 41.649387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.267563, 32.843880, 41.610756>,  <37.204731, 33.074345, 41.587578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.267563, 32.843880, 41.610756>,  <37.372284, 32.459770, 41.649387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.267563, 32.843880, 41.610756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464359, -0.213058, -0.859638,
		-0.846068, -0.180207, 0.501693,
		-0.261802, 0.960277, -0.096581,
		37.189022, 33.131962, 41.581783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.820896, 32.460598, 41.203133>,  <37.372284, 32.459770, 41.649387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.820896, 32.460598, 41.203133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.880520, 32.855766, 41.186188>,  <36.916294, 33.092869, 41.176022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.880520, 32.855766, 41.186188>,  <36.820896, 32.460598, 41.203133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.880520, 32.855766, 41.186188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396024, 0.020383, -0.918013,
		-0.906061, 0.153612, 0.394279,
		0.149055, 0.987921, -0.042366,
		36.925236, 33.152142, 41.173477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.407974, 32.659344, 40.719704>,  <36.820896, 32.460598, 41.203133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.407974, 32.659344, 40.719704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.664188, 32.966194, 40.733761>,  <36.817917, 33.150303, 40.742195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.664188, 32.966194, 40.733761>,  <36.407974, 32.659344, 40.719704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.664188, 32.966194, 40.733761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240471, 0.243835, -0.939531,
		-0.729306, 0.593351, 0.340656,
		0.640536, 0.767123, 0.035147,
		36.856350, 33.196331, 40.744305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.189796, 33.224709, 40.177761>,  <36.407974, 32.659344, 40.719704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.189796, 33.224709, 40.177761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.582603, 33.255863, 40.246559>,  <36.818287, 33.274555, 40.287838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.582603, 33.255863, 40.246559>,  <36.189796, 33.224709, 40.177761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.582603, 33.255863, 40.246559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146425, 0.260919, -0.954192,
		-0.119195, 0.962214, 0.244821,
		0.982014, 0.077887, 0.171992,
		36.877209, 33.279228, 40.298157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.305470, 33.877399, 39.919788>,  <36.189796, 33.224709, 40.177761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.305470, 33.877399, 39.919788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.662075, 33.696301, 39.925774>,  <36.876038, 33.587643, 39.929363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.662075, 33.696301, 39.925774>,  <36.305470, 33.877399, 39.919788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.662075, 33.696301, 39.925774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201206, 0.366173, -0.908534,
		0.405858, 0.812980, 0.417544,
		0.891513, -0.452747, 0.014962,
		36.929527, 33.560474, 39.930264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.719032, 34.381714, 39.587112>,  <36.305470, 33.877399, 39.919788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.719032, 34.381714, 39.587112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.936611, 34.047375, 39.557526>,  <37.067158, 33.846771, 39.539776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.936611, 34.047375, 39.557526>,  <36.719032, 34.381714, 39.587112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.936611, 34.047375, 39.557526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360399, 0.312319, -0.878959,
		0.757779, 0.451455, 0.471126,
		0.543952, -0.835850, -0.073964,
		37.099796, 33.796619, 39.535336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.432384, 34.579479, 39.421944>,  <36.719032, 34.381714, 39.587112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.432384, 34.579479, 39.421944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.415550, 34.195564, 39.310917>,  <37.405449, 33.965218, 39.244301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.415550, 34.195564, 39.310917>,  <37.432384, 34.579479, 39.421944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.415550, 34.195564, 39.310917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406219, 0.237375, -0.882406,
		0.912806, -0.149893, 0.379891,
		-0.042090, -0.959784, -0.277567,
		37.402924, 33.907631, 39.227646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.075840, 34.427670, 39.220238>,  <37.432384, 34.579479, 39.421944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.075840, 34.427670, 39.220238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.835800, 34.157612, 39.048630>,  <37.691776, 33.995579, 38.945663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.835800, 34.157612, 39.048630>,  <38.075840, 34.427670, 39.220238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.835800, 34.157612, 39.048630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393254, 0.218043, -0.893202,
		0.696583, -0.704727, 0.134654,
		-0.600103, -0.675142, -0.429021,
		37.655769, 33.955070, 38.919922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.531719, 33.987942, 38.938286>,  <38.075840, 34.427670, 39.220238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.531719, 33.987942, 38.938286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.183289, 33.927853, 38.751244>,  <37.974228, 33.891800, 38.639019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.183289, 33.927853, 38.751244>,  <38.531719, 33.987942, 38.938286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.183289, 33.927853, 38.751244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446351, 0.155099, -0.881315,
		0.204923, -0.976410, -0.068049,
		-0.871078, -0.150228, -0.467605,
		37.921967, 33.882786, 38.610962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.631519, 33.405209, 38.459686>,  <38.531719, 33.987942, 38.938286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.631519, 33.405209, 38.459686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.314175, 33.617977, 38.341270>,  <38.123768, 33.745640, 38.270222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.314175, 33.617977, 38.341270>,  <38.631519, 33.405209, 38.459686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.314175, 33.617977, 38.341270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434933, 0.155034, -0.887016,
		-0.425928, -0.832480, -0.354348,
		-0.793359, 0.531923, -0.296039,
		38.076168, 33.777554, 38.252460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.563362, 33.205441, 37.765293>,  <38.631519, 33.405209, 38.459686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.563362, 33.205441, 37.765293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.369259, 33.553692, 37.797615>,  <38.252796, 33.762642, 37.817009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.369259, 33.553692, 37.797615>,  <38.563362, 33.205441, 37.765293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.369259, 33.553692, 37.797615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462319, 0.333918, -0.821438,
		-0.742152, -0.361247, -0.564544,
		-0.485254, 0.870631, 0.080806,
		38.223682, 33.814880, 37.821857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.323669, 33.440586, 37.041920>,  <38.563362, 33.205441, 37.765293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.323669, 33.440586, 37.041920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.307392, 33.780079, 37.252819>,  <38.297626, 33.983776, 37.379360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.307392, 33.780079, 37.252819>,  <38.323669, 33.440586, 37.041920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.307392, 33.780079, 37.252819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581035, 0.449393, -0.678561,
		-0.812861, 0.278734, -0.511434,
		-0.040697, 0.848736, 0.527248,
		38.295181, 34.034698, 37.410992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.937840, 33.878056, 36.616524>,  <38.323669, 33.440586, 37.041920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.937840, 33.878056, 36.616524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.179283, 34.088951, 36.855751>,  <38.324150, 34.215488, 36.999287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.179283, 34.088951, 36.855751>,  <37.937840, 33.878056, 36.616524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.179283, 34.088951, 36.855751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420013, 0.427322, -0.800615,
		-0.677680, 0.734451, 0.036489,
		0.603605, 0.527235, 0.598066,
		38.360363, 34.247120, 37.035172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.159878, 34.491444, 36.213009>,  <37.937840, 33.878056, 36.616524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.159878, 34.491444, 36.213009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.407894, 34.512280, 36.526146>,  <38.556702, 34.524780, 36.714027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.407894, 34.512280, 36.526146>,  <38.159878, 34.491444, 36.213009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.407894, 34.512280, 36.526146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701638, 0.409678, -0.582983,
		-0.351082, 0.910742, 0.217464,
		0.620037, 0.052094, 0.782841,
		38.593906, 34.527908, 36.760998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.410507, 35.179935, 36.138802>,  <38.159878, 34.491444, 36.213009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.410507, 35.179935, 36.138802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.669884, 34.984402, 36.372234>,  <38.825508, 34.867081, 36.512295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.669884, 34.984402, 36.372234>,  <38.410507, 35.179935, 36.138802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.669884, 34.984402, 36.372234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748281, 0.550270, -0.370510,
		-0.140008, 0.676935, 0.722604,
		0.648439, -0.488837, 0.583580,
		38.864414, 34.837749, 36.547310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.844662, 35.655243, 36.281952>,  <38.410507, 35.179935, 36.138802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.844662, 35.655243, 36.281952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.036110, 35.313198, 36.361652>,  <39.150978, 35.107971, 36.409473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.036110, 35.313198, 36.361652>,  <38.844662, 35.655243, 36.281952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.036110, 35.313198, 36.361652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805485, 0.337299, -0.487260,
		0.349455, 0.393708, 0.850220,
		0.478617, -0.855116, 0.199256,
		39.179695, 35.056664, 36.421429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.448505, 35.858685, 36.378273>,  <38.844662, 35.655243, 36.281952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.448505, 35.858685, 36.378273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.542545, 35.473457, 36.325783>,  <39.598969, 35.242321, 36.294289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.542545, 35.473457, 36.325783>,  <39.448505, 35.858685, 36.378273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.542545, 35.473457, 36.325783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907876, 0.265800, -0.324211,
		0.347120, -0.042918, 0.936838,
		0.235097, -0.963072, -0.131229,
		39.613075, 35.184536, 36.286415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.020638, 35.783772, 36.741390>,  <39.448505, 35.858685, 36.378273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.020638, 35.783772, 36.741390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.007687, 35.502499, 36.457279>,  <39.999916, 35.333736, 36.286812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.007687, 35.502499, 36.457279>,  <40.020638, 35.783772, 36.741390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.007687, 35.502499, 36.457279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694955, 0.494904, -0.521639,
		0.718323, -0.510501, 0.472653,
		-0.032380, -0.703178, -0.710276,
		39.997974, 35.291546, 36.244198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.756096, 35.597191, 36.481045>,  <40.020638, 35.783772, 36.741390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.756096, 35.597191, 36.481045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.503162, 35.496399, 36.188015>,  <40.351402, 35.435925, 36.012199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.503162, 35.496399, 36.188015>,  <40.756096, 35.597191, 36.481045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.503162, 35.496399, 36.188015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513535, 0.571666, -0.639906,
		0.580037, -0.780832, -0.232074,
		-0.632328, -0.251991, -0.732572,
		40.313461, 35.420803, 35.968243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.250206, 35.353043, 35.962021>,  <40.756096, 35.597191, 36.481045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.250206, 35.353043, 35.962021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.905739, 35.450336, 35.783478>,  <40.699059, 35.508713, 35.676353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.905739, 35.450336, 35.783478>,  <41.250206, 35.353043, 35.962021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.905739, 35.450336, 35.783478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507040, 0.473442, -0.720252,
		0.036133, -0.846575, -0.531041,
		-0.861165, 0.243235, -0.446355,
		40.647388, 35.523308, 35.649570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.142532, 34.948826, 35.274277>,  <41.250206, 35.353043, 35.962021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.142532, 34.948826, 35.274277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.959202, 35.303696, 35.295700>,  <40.849205, 35.516617, 35.308556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.959202, 35.303696, 35.295700>,  <41.142532, 34.948826, 35.274277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.959202, 35.303696, 35.295700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414594, 0.266709, -0.870045,
		-0.786164, -0.376555, -0.490054,
		-0.458322, 0.887171, 0.053560,
		40.821705, 35.569847, 35.311768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.844418, 35.155064, 34.658642>,  <41.142532, 34.948826, 35.274277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.844418, 35.155064, 34.658642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.892998, 35.502048, 34.851624>,  <40.922146, 35.710239, 34.967415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.892998, 35.502048, 34.851624>,  <40.844418, 35.155064, 34.658642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.892998, 35.502048, 34.851624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233619, 0.447422, -0.863270,
		-0.964714, 0.217554, -0.148316,
		0.121448, 0.867458, 0.482459,
		40.929432, 35.762287, 34.996361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.155312, 34.472649, 34.657421>,  <40.844418, 35.155064, 34.658642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.155312, 34.472649, 34.657421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.517654, 34.511478, 34.492500>,  <41.735062, 34.534775, 34.393547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.517654, 34.511478, 34.492500>,  <41.155312, 34.472649, 34.657421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.517654, 34.511478, 34.492500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401895, -0.504395, 0.764242,
		-0.133773, -0.857999, -0.495925,
		0.905861, 0.097075, -0.412300,
		41.789413, 34.540600, 34.368809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.519012, 33.798122, 34.425579>,  <41.155312, 34.472649, 34.657421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.519012, 33.798122, 34.425579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.782742, 34.076927, 34.538334>,  <41.940979, 34.244209, 34.605988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.782742, 34.076927, 34.538334>,  <41.519012, 33.798122, 34.425579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.782742, 34.076927, 34.538334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441348, -0.662328, 0.605419,
		0.608688, -0.274757, -0.744316,
		0.659325, 0.697014, 0.281888,
		41.980537, 34.286030, 34.622902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.165833, 33.521473, 34.535004>,  <41.519012, 33.798122, 34.425579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.165833, 33.521473, 34.535004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.176994, 33.845959, 34.768639>,  <42.183693, 34.040649, 34.908821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.176994, 33.845959, 34.768639>,  <42.165833, 33.521473, 34.535004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.176994, 33.845959, 34.768639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544877, -0.502221, 0.671478,
		0.838052, 0.299517, -0.456025,
		0.027906, 0.811211, 0.584087,
		42.185368, 34.089321, 34.943863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.642109, 33.252663, 34.953110>,  <42.165833, 33.521473, 34.535004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.642109, 33.252663, 34.953110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.540501, 33.611801, 35.096970>,  <42.479534, 33.827286, 35.183285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.540501, 33.611801, 35.096970>,  <42.642109, 33.252663, 34.953110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.540501, 33.611801, 35.096970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384979, -0.247258, 0.889188,
		0.887279, 0.364330, -0.282842,
		-0.254023, 0.897846, 0.359646,
		42.464294, 33.881153, 35.204865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.242462, 33.541332, 35.290813>,  <42.642109, 33.252663, 34.953110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.242462, 33.541332, 35.290813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.901203, 33.667004, 35.457397>,  <42.696449, 33.742405, 35.557346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.901203, 33.667004, 35.457397>,  <43.242462, 33.541332, 35.290813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.901203, 33.667004, 35.457397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310481, -0.335738, 0.889315,
		0.419223, 0.888017, 0.188887,
		-0.853144, 0.314175, 0.416461,
		42.645260, 33.761257, 35.582336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.899239, 33.688217, 35.488255>,  <43.242462, 33.541332, 35.290813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.899239, 33.688217, 35.488255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.229996, 33.812798, 35.300957>,  <44.428448, 33.887547, 35.188580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.229996, 33.812798, 35.300957>,  <43.899239, 33.688217, 35.488255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.229996, 33.812798, 35.300957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006711, 0.827109, 0.562001,
		0.562322, -0.467856, 0.681839,
		0.826892, 0.311450, -0.468241,
		44.478062, 33.906231, 35.160484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.288502, 33.894794, 36.014542>,  <43.899239, 33.688217, 35.488255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.288502, 33.894794, 36.014542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.391975, 34.090309, 35.681274>,  <44.454060, 34.207619, 35.481312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.391975, 34.090309, 35.681274>,  <44.288502, 33.894794, 36.014542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.391975, 34.090309, 35.681274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055494, 0.868624, 0.492354,
		0.964367, -0.081127, 0.251821,
		0.258681, 0.488785, -0.833171,
		44.469582, 34.236946, 35.431324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.628792, 34.450794, 36.349045>,  <44.288502, 33.894794, 36.014542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.628792, 34.450794, 36.349045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.569538, 34.568352, 35.971329>,  <44.533985, 34.638885, 35.744701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.569538, 34.568352, 35.971329>,  <44.628792, 34.450794, 36.349045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.569538, 34.568352, 35.971329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015960, 0.953988, 0.299421,
		0.988838, 0.059426, -0.136629,
		-0.148136, 0.293898, -0.944288,
		44.525097, 34.656521, 35.688042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.081104, 35.058758, 36.245262>,  <44.628792, 34.450794, 36.349045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.081104, 35.058758, 36.245262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.772633, 35.055874, 35.990631>,  <44.587551, 35.054142, 35.837852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.772633, 35.055874, 35.990631>,  <45.081104, 35.058758, 36.245262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.772633, 35.055874, 35.990631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136831, 0.978443, 0.154679,
		0.621739, 0.206389, -0.755542,
		-0.771179, -0.007212, -0.636577,
		44.541279, 35.053711, 35.799660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.222160, 35.567444, 35.975750>,  <45.081104, 35.058758, 36.245262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.222160, 35.567444, 35.975750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.830090, 35.527447, 35.907333>,  <44.594849, 35.503448, 35.866283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.830090, 35.527447, 35.907333>,  <45.222160, 35.567444, 35.975750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.830090, 35.527447, 35.907333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160610, 0.906516, 0.390426,
		0.116011, 0.410157, -0.904606,
		-0.980176, -0.099995, -0.171041,
		44.536037, 35.497448, 35.856022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.009003, 36.220394, 35.630821>,  <45.222160, 35.567444, 35.975750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.009003, 36.220394, 35.630821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.683338, 36.048687, 35.787220>,  <44.487942, 35.945663, 35.881062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.683338, 36.048687, 35.787220>,  <45.009003, 36.220394, 35.630821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.683338, 36.048687, 35.787220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366641, 0.902224, 0.227082,
		-0.450247, 0.041524, -0.891938,
		-0.814158, -0.429263, 0.390999,
		44.439091, 35.919907, 35.904518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.545845, 36.545197, 35.319664>,  <45.009003, 36.220394, 35.630821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.545845, 36.545197, 35.319664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.365498, 36.409348, 35.649845>,  <44.257290, 36.327839, 35.847954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.365498, 36.409348, 35.649845>,  <44.545845, 36.545197, 35.319664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.365498, 36.409348, 35.649845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509946, 0.857012, 0.074072,
		-0.732581, -0.387540, -0.559588,
		-0.450867, -0.339623, 0.825454,
		44.230236, 36.307461, 35.897480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.935329, 36.745037, 35.219025>,  <44.545845, 36.545197, 35.319664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.935329, 36.745037, 35.219025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.932350, 36.665455, 35.611015>,  <43.930565, 36.617706, 35.846210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.932350, 36.665455, 35.611015>,  <43.935329, 36.745037, 35.219025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.932350, 36.665455, 35.611015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545638, 0.822065, 0.162753,
		-0.837988, -0.533502, -0.114678,
		-0.007444, -0.198958, 0.979980,
		43.930119, 36.605766, 35.905010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.273582, 36.813927, 35.440727>,  <43.935329, 36.745037, 35.219025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.273582, 36.813927, 35.440727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.468159, 36.828674, 35.789902>,  <43.584908, 36.837524, 35.999405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.468159, 36.828674, 35.789902>,  <43.273582, 36.813927, 35.440727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.468159, 36.828674, 35.789902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582885, 0.757967, 0.292798,
		-0.650858, -0.651249, 0.390202,
		0.486445, 0.036873, 0.872932,
		43.614094, 36.839737, 36.051781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.705921, 36.974594, 36.017982>,  <43.273582, 36.813927, 35.440727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.705921, 36.974594, 36.017982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.065594, 37.058163, 36.171780>,  <43.281395, 37.108303, 36.264057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.065594, 37.058163, 36.171780>,  <42.705921, 36.974594, 36.017982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.065594, 37.058163, 36.171780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339651, 0.887215, 0.312229,
		-0.275894, -0.411342, 0.868723,
		0.899177, 0.208920, 0.384490,
		43.335346, 37.120838, 36.287125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.513500, 37.307327, 36.693481>,  <42.705921, 36.974594, 36.017982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.513500, 37.307327, 36.693481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.887882, 37.413612, 36.601055>,  <43.112511, 37.477383, 36.545597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.887882, 37.413612, 36.601055>,  <42.513500, 37.307327, 36.693481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.887882, 37.413612, 36.601055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169621, 0.915254, 0.365431,
		0.308586, -0.302831, 0.901703,
		0.935950, 0.265714, -0.231068,
		43.168667, 37.493328, 36.531734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.769016, 37.602646, 37.261745>,  <42.513500, 37.307327, 36.693481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.769016, 37.602646, 37.261745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.038307, 37.728313, 36.993996>,  <43.199883, 37.803715, 36.833347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.038307, 37.728313, 36.993996>,  <42.769016, 37.602646, 37.261745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.038307, 37.728313, 36.993996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144157, 0.943647, 0.297909,
		0.725245, -0.104066, 0.680580,
		0.673230, 0.314168, -0.669374,
		43.240276, 37.822563, 36.793182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.295113, 38.048862, 37.525787>,  <42.769016, 37.602646, 37.261745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.295113, 38.048862, 37.525787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.331371, 38.158447, 37.142803>,  <43.353127, 38.224197, 36.913013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.331371, 38.158447, 37.142803>,  <43.295113, 38.048862, 37.525787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.331371, 38.158447, 37.142803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139097, 0.955475, 0.260229,
		0.986121, 0.109590, 0.124722,
		0.090651, 0.273966, -0.957457,
		43.358566, 38.240639, 36.855564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.641228, 38.607780, 37.475986>,  <43.295113, 38.048862, 37.525787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.641228, 38.607780, 37.475986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.472424, 38.613914, 37.113403>,  <43.371140, 38.617596, 36.895851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.472424, 38.613914, 37.113403>,  <43.641228, 38.607780, 37.475986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.472424, 38.613914, 37.113403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157298, 0.985931, -0.056547,
		0.892841, -0.166448, -0.418485,
		-0.422010, 0.015340, -0.906461,
		43.345821, 38.618515, 36.841465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.170166, 38.991676, 37.146893>,  <43.641228, 38.607780, 37.475986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.170166, 38.991676, 37.146893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.818722, 39.025299, 36.958858>,  <43.607857, 39.045475, 36.846039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.818722, 39.025299, 36.958858>,  <44.170166, 38.991676, 37.146893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.818722, 39.025299, 36.958858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111111, 0.993354, -0.030038,
		0.464440, -0.078624, -0.882107,
		-0.878607, 0.084061, -0.470089,
		43.555141, 39.050518, 36.817833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.262444, 39.520790, 36.719791>,  <44.170166, 38.991676, 37.146893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.262444, 39.520790, 36.719791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.863514, 39.492245, 36.713509>,  <43.624157, 39.475117, 36.709740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.863514, 39.492245, 36.713509>,  <44.262444, 39.520790, 36.719791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.863514, 39.492245, 36.713509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072402, 0.994098, 0.080793,
		0.009851, 0.081714, -0.996607,
		-0.997327, -0.071360, -0.015709,
		43.564316, 39.470837, 36.708797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.890205, 39.931606, 36.213062>,  <44.262444, 39.520790, 36.719791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.890205, 39.931606, 36.213062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.631741, 39.879677, 36.513893>,  <43.476662, 39.848518, 36.694393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.631741, 39.879677, 36.513893>,  <43.890205, 39.931606, 36.213062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.631741, 39.879677, 36.513893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086539, 0.991534, 0.096805,
		-0.758281, -0.002533, -0.651924,
		-0.646159, -0.129822, 0.752080,
		43.437893, 39.840729, 36.739517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.352898, 40.524837, 36.069782>,  <43.890205, 39.931606, 36.213062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.352898, 40.524837, 36.069782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.338989, 40.400799, 36.449810>,  <43.330647, 40.326374, 36.677826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.338989, 40.400799, 36.449810>,  <43.352898, 40.524837, 36.069782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.338989, 40.400799, 36.449810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116816, 0.942866, 0.312022,
		-0.992545, 0.121832, 0.003442,
		-0.034769, -0.310098, 0.950069,
		43.328560, 40.307770, 36.734829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.802464, 40.840916, 36.319431>,  <43.352898, 40.524837, 36.069782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.802464, 40.840916, 36.319431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.999855, 40.759758, 36.657734>,  <43.118290, 40.711063, 36.860718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.999855, 40.759758, 36.657734>,  <42.802464, 40.840916, 36.319431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.999855, 40.759758, 36.657734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059106, 0.962339, 0.265350,
		-0.867747, -0.180934, 0.462901,
		0.493479, -0.202896, 0.845761,
		43.147900, 40.698891, 36.911461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.503292, 41.054794, 36.890388>,  <42.802464, 40.840916, 36.319431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.503292, 41.054794, 36.890388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.865707, 41.025002, 37.057026>,  <43.083157, 41.007126, 37.157009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.865707, 41.025002, 37.057026>,  <42.503292, 41.054794, 36.890388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.865707, 41.025002, 37.057026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024750, 0.973381, 0.227854,
		-0.422477, -0.216755, 0.880074,
		0.906036, -0.074481, 0.416596,
		43.137520, 41.002659, 37.182003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.373920, 41.379780, 37.477268>,  <42.503292, 41.054794, 36.890388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.373920, 41.379780, 37.477268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.765377, 41.371883, 37.395428>,  <43.000252, 41.367146, 37.346321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.765377, 41.371883, 37.395428>,  <42.373920, 41.379780, 37.477268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.765377, 41.371883, 37.395428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045781, 0.991309, 0.123333,
		0.200391, -0.130066, 0.971044,
		0.978646, -0.019740, -0.204604,
		43.058971, 41.365963, 37.334045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.760914, 41.780296, 38.011272>,  <42.373920, 41.379780, 37.477268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.760914, 41.780296, 38.011272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.980560, 41.765053, 37.677322>,  <43.112350, 41.755905, 37.476952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.980560, 41.765053, 37.677322>,  <42.760914, 41.780296, 38.011272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.980560, 41.765053, 37.677322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039288, 0.999032, -0.019763,
		0.834820, -0.021948, 0.550086,
		0.549120, -0.038110, -0.834874,
		43.145298, 41.753620, 37.426861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.373482, 42.184101, 38.139942>,  <42.760914, 41.780296, 38.011272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.373482, 42.184101, 38.139942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.273720, 42.181007, 37.752594>,  <43.213863, 42.179153, 37.520184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.273720, 42.181007, 37.752594>,  <43.373482, 42.184101, 38.139942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.273720, 42.181007, 37.752594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139777, 0.989210, -0.043896,
		0.958259, -0.146304, -0.245630,
		-0.249402, -0.007730, -0.968369,
		43.198898, 42.178688, 37.462082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.868679, 42.523193, 37.843765>,  <43.373482, 42.184101, 38.139942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.868679, 42.523193, 37.843765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.560230, 42.563660, 37.592323>,  <43.375160, 42.587940, 37.441460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.560230, 42.563660, 37.592323>,  <43.868679, 42.523193, 37.843765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.560230, 42.563660, 37.592323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235039, 0.962791, -0.133377,
		0.591720, -0.250595, -0.766204,
		-0.771119, 0.101166, -0.628603,
		43.328896, 42.594009, 37.403744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.016708, 42.838333, 37.164249>,  <43.868679, 42.523193, 37.843765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.016708, 42.838333, 37.164249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.636765, 42.912785, 37.264748>,  <43.408798, 42.957455, 37.325047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.636765, 42.912785, 37.264748>,  <44.016708, 42.838333, 37.164249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.636765, 42.912785, 37.264748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182803, 0.982464, -0.036721,
		-0.253670, 0.011048, -0.967228,
		-0.949860, 0.186127, 0.251241,
		43.351807, 42.968624, 37.340118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.065128, 43.613167, 37.048466>,  <44.016708, 42.838333, 37.164249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.065128, 43.613167, 37.048466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.370007, 43.507465, 36.812080>,  <44.552933, 43.444046, 36.670250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.370007, 43.507465, 36.812080>,  <44.065128, 43.613167, 37.048466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.370007, 43.507465, 36.812080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610542, -0.596877, -0.520554,
		-0.215175, 0.757569, -0.616270,
		0.762193, -0.264249, -0.590961,
		44.598663, 43.428192, 36.634792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.918995, 43.701092, 36.360310>,  <44.065128, 43.613167, 37.048466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.918995, 43.701092, 36.360310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.165310, 43.388512, 36.400600>,  <44.313099, 43.200962, 36.424774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.165310, 43.388512, 36.400600>,  <43.918995, 43.701092, 36.360310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.165310, 43.388512, 36.400600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537168, -0.509894, -0.671907,
		0.576421, 0.359643, -0.733755,
		0.615784, -0.781450, 0.100725,
		44.350044, 43.154076, 36.430817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.211956, 43.618015, 35.685108>,  <43.918995, 43.701092, 36.360310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.211956, 43.618015, 35.685108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.167267, 43.280693, 35.895386>,  <44.140453, 43.078300, 36.021553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.167267, 43.280693, 35.895386>,  <44.211956, 43.618015, 35.685108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.167267, 43.280693, 35.895386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472591, -0.420263, -0.774621,
		0.874171, -0.334983, -0.351584,
		-0.111727, -0.843306, 0.525692,
		44.133747, 43.027702, 36.053093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.551510, 44.313530, 35.729282>,  <44.211956, 43.618015, 35.685108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.551510, 44.313530, 35.729282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.689877, 44.141312, 35.395824>,  <44.772896, 44.037979, 35.195747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.689877, 44.141312, 35.395824>,  <44.551510, 44.313530, 35.729282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.689877, 44.141312, 35.395824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640406, 0.541011, -0.545149,
		0.685726, 0.722450, -0.088581,
		0.345919, -0.430550, -0.833646,
		44.793652, 44.012146, 35.145729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.979740, 44.781742, 35.312584>,  <44.551510, 44.313530, 35.729282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.979740, 44.781742, 35.312584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.755924, 44.511276, 35.120869>,  <44.621635, 44.348995, 35.005840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.755924, 44.511276, 35.120869>,  <44.979740, 44.781742, 35.312584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.755924, 44.511276, 35.120869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459686, 0.734372, -0.499386,
		0.689640, -0.059108, -0.721736,
		-0.559541, -0.676168, -0.479281,
		44.588062, 44.308426, 34.977085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.299026, 44.085827, 35.311161>,  <44.979740, 44.781742, 35.312584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.299026, 44.085827, 35.311161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.619755, 44.155426, 35.539829>,  <45.812191, 44.197186, 35.677029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.619755, 44.155426, 35.539829>,  <45.299026, 44.085827, 35.311161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.619755, 44.155426, 35.539829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138489, -0.984732, 0.105468,
		0.581293, -0.005397, -0.813676,
		0.801822, 0.173993, 0.571671,
		45.860302, 44.207623, 35.711330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.062656, 43.938633, 35.200455>,  <45.299026, 44.085827, 35.311161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.062656, 43.938633, 35.200455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.984180, 43.926414, 35.592491>,  <45.937096, 43.919083, 35.827713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.984180, 43.926414, 35.592491>,  <46.062656, 43.938633, 35.200455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.984180, 43.926414, 35.592491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319337, -0.947016, 0.034410,
		0.927109, 0.319730, 0.195553,
		-0.196194, -0.030545, 0.980089,
		45.925323, 43.917252, 35.886517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.717739, 43.679089, 35.431648>,  <46.062656, 43.938633, 35.200455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.717739, 43.679089, 35.431648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.401550, 43.599689, 35.663425>,  <46.211838, 43.552052, 35.802494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.401550, 43.599689, 35.663425>,  <46.717739, 43.679089, 35.431648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.401550, 43.599689, 35.663425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304873, -0.948022, 0.091143,
		0.531237, 0.248703, 0.809897,
		-0.790468, -0.198498, 0.579448,
		46.164410, 43.540142, 35.837261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.995571, 43.296803, 35.978630>,  <46.717739, 43.679089, 35.431648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.995571, 43.296803, 35.978630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.605309, 43.209087, 35.979843>,  <46.371151, 43.156460, 35.980572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.605309, 43.209087, 35.979843>,  <46.995571, 43.296803, 35.978630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.605309, 43.209087, 35.979843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219307, -0.975587, 0.011593,
		0.000420, 0.011976, 0.999928,
		-0.975656, -0.219286, 0.003036,
		46.312611, 43.143303, 35.980755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.859016, 42.800987, 36.632755>,  <46.995571, 43.296803, 35.978630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.859016, 42.800987, 36.632755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.580032, 42.716610, 36.358803>,  <46.412643, 42.665985, 36.194431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.580032, 42.716610, 36.358803>,  <46.859016, 42.800987, 36.632755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.580032, 42.716610, 36.358803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227856, -0.971377, 0.067140,
		-0.679438, -0.109226, 0.725557,
		-0.697456, -0.210939, -0.684879,
		46.370796, 42.653328, 36.153339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.486591, 42.232624, 36.835625>,  <46.859016, 42.800987, 36.632755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.486591, 42.232624, 36.835625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.334671, 42.227318, 36.465637>,  <46.243519, 42.224133, 36.243645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.334671, 42.227318, 36.465637>,  <46.486591, 42.232624, 36.835625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.334671, 42.227318, 36.465637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055153, -0.998443, -0.008326,
		-0.923421, -0.054177, 0.379946,
		-0.379805, -0.013267, -0.924971,
		46.220730, 42.223339, 36.188145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.946594, 41.774887, 36.809566>,  <46.486591, 42.232624, 36.835625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.946594, 41.774887, 36.809566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.062092, 41.807281, 36.427975>,  <46.131390, 41.826717, 36.199020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.062092, 41.807281, 36.427975>,  <45.946594, 41.774887, 36.809566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.062092, 41.807281, 36.427975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064395, -0.992517, -0.103751,
		-0.955238, 0.091388, -0.281368,
		0.288744, 0.080988, -0.953975,
		46.148716, 41.831577, 36.141781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.551655, 41.303112, 36.464657>,  <45.946594, 41.774887, 36.809566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.551655, 41.303112, 36.464657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.850544, 41.361607, 36.205345>,  <46.029877, 41.396702, 36.049759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.850544, 41.361607, 36.205345>,  <45.551655, 41.303112, 36.464657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.850544, 41.361607, 36.205345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055973, -0.985872, -0.157872,
		-0.662209, 0.081680, -0.744854,
		0.747226, 0.146236, -0.648281,
		46.074711, 41.405476, 36.010860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.362286, 40.930317, 35.839649>,  <45.551655, 41.303112, 36.464657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.362286, 40.930317, 35.839649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.756260, 40.994263, 35.813286>,  <45.992645, 41.032631, 35.797466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.756260, 40.994263, 35.813286>,  <45.362286, 40.930317, 35.839649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.756260, 40.994263, 35.813286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095952, -0.822366, -0.560809,
		-0.143855, 0.546037, -0.825318,
		0.984936, 0.159866, -0.065908,
		46.051743, 41.042221, 35.793514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.529766, 40.763046, 35.112164>,  <45.362286, 40.930317, 35.839649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.529766, 40.763046, 35.112164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.886421, 40.744469, 35.292309>,  <46.100414, 40.733322, 35.400398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.886421, 40.744469, 35.292309>,  <45.529766, 40.763046, 35.112164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.886421, 40.744469, 35.292309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221567, -0.822714, -0.523498,
		0.394836, 0.566556, -0.723270,
		0.891635, -0.046443, 0.450367,
		46.153912, 40.730537, 35.427418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.958572, 40.522282, 34.595406>,  <45.529766, 40.763046, 35.112164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.958572, 40.522282, 34.595406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.154808, 40.466263, 34.939430>,  <46.272549, 40.432652, 35.145847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.154808, 40.466263, 34.939430>,  <45.958572, 40.522282, 34.595406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.154808, 40.466263, 34.939430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250884, -0.922506, -0.293324,
		0.834494, 0.359678, -0.417435,
		0.490589, -0.140049, 0.860063,
		46.301983, 40.424248, 35.197449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.748322, 40.321957, 34.433662>,  <45.958572, 40.522282, 34.595406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.748322, 40.321957, 34.433662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.642128, 40.162273, 34.784698>,  <46.578411, 40.066463, 34.995319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.642128, 40.162273, 34.784698>,  <46.748322, 40.321957, 34.433662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.642128, 40.162273, 34.784698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259080, -0.906307, -0.333895,
		0.928654, 0.138722, 0.344032,
		-0.265480, -0.399204, 0.877585,
		46.562485, 40.042511, 35.047974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.152206, 39.797714, 34.387703>,  <46.748322, 40.321957, 34.433662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.152206, 39.797714, 34.387703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.873436, 39.696697, 34.656185>,  <46.706173, 39.636089, 34.817272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.873436, 39.696697, 34.656185>,  <47.152206, 39.797714, 34.387703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.873436, 39.696697, 34.656185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181528, -0.967586, -0.175569,
		0.693784, -0.000517, 0.720183,
		-0.696930, -0.252541, 0.671202,
		46.664356, 39.620934, 34.857544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.452076, 39.260376, 34.790558>,  <47.152206, 39.797714, 34.387703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.452076, 39.260376, 34.790558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.058125, 39.222565, 34.848625>,  <46.821754, 39.199879, 34.883465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.058125, 39.222565, 34.848625>,  <47.452076, 39.260376, 34.790558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.058125, 39.222565, 34.848625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076552, -0.989226, -0.124789,
		0.155403, -0.111789, 0.981506,
		-0.984881, -0.094528, 0.145171,
		46.762661, 39.194206, 34.892178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.366035, 38.678223, 35.104813>,  <47.452076, 39.260376, 34.790558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.366035, 38.678223, 35.104813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.996330, 38.737110, 34.963921>,  <46.774506, 38.772442, 34.879387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.996330, 38.737110, 34.963921>,  <47.366035, 38.678223, 35.104813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.996330, 38.737110, 34.963921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130443, -0.988907, -0.071049,
		-0.358780, -0.019722, 0.933214,
		-0.924263, 0.147222, -0.352228,
		46.719051, 38.781277, 34.858253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.069374, 38.008247, 35.267715>,  <47.366035, 38.678223, 35.104813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.069374, 38.008247, 35.267715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.808113, 38.170963, 35.012245>,  <46.651356, 38.268593, 34.858963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.808113, 38.170963, 35.012245>,  <47.069374, 38.008247, 35.267715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.808113, 38.170963, 35.012245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228022, -0.909957, -0.346388,
		-0.722079, -0.080611, 0.687099,
		-0.653153, 0.406793, -0.638679,
		46.612167, 38.292999, 34.820641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.466640, 37.611855, 35.251308>,  <47.069374, 38.008247, 35.267715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.466640, 37.611855, 35.251308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.432472, 37.792503, 34.896065>,  <46.411972, 37.900894, 34.682919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.432472, 37.792503, 34.896065>,  <46.466640, 37.611855, 35.251308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.432472, 37.792503, 34.896065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368839, -0.842374, -0.392891,
		-0.925560, 0.294010, 0.238530,
		-0.085417, 0.451624, -0.888110,
		46.406849, 37.927990, 34.629631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.741123, 37.478424, 35.131371>,  <46.466640, 37.611855, 35.251308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.741123, 37.478424, 35.131371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.921028, 37.528473, 34.777634>,  <46.028973, 37.558502, 34.565392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.921028, 37.528473, 34.777634>,  <45.741123, 37.478424, 35.131371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.921028, 37.528473, 34.777634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304884, -0.909155, -0.283695,
		-0.839498, 0.397217, -0.370758,
		0.449765, 0.125124, -0.884339,
		46.055958, 37.566010, 34.512333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.199593, 37.351917, 34.603317>,  <45.741123, 37.478424, 35.131371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.199593, 37.351917, 34.603317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.554733, 37.302544, 34.426014>,  <45.767818, 37.272919, 34.319633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.554733, 37.302544, 34.426014>,  <45.199593, 37.351917, 34.603317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.554733, 37.302544, 34.426014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333758, -0.835893, -0.435762,
		-0.316729, 0.534834, -0.783349,
		0.887856, -0.123431, -0.443257,
		45.821091, 37.265514, 34.293037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.008923, 37.092106, 33.924927>,  <45.199593, 37.351917, 34.603317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.008923, 37.092106, 33.924927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.395332, 37.000702, 33.973213>,  <45.627178, 36.945858, 34.002186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.395332, 37.000702, 33.973213>,  <45.008923, 37.092106, 33.924927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.395332, 37.000702, 33.973213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155112, -0.886276, -0.436412,
		0.206712, 0.402862, -0.891612,
		0.966028, -0.228512, 0.120715,
		45.685143, 36.932148, 34.009426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.274708, 36.907726, 33.255272>,  <45.008923, 37.092106, 33.924927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.274708, 36.907726, 33.255272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.526207, 36.716537, 33.500622>,  <45.677105, 36.601826, 33.647831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.526207, 36.716537, 33.500622>,  <45.274708, 36.907726, 33.255272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.526207, 36.716537, 33.500622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160405, -0.851546, -0.499139,
		0.760888, 0.215443, -0.612073,
		0.628745, -0.477968, 0.613373,
		45.714828, 36.573147, 33.684635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.758213, 36.610401, 32.826488>,  <45.274708, 36.907726, 33.255272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.758213, 36.610401, 32.826488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.783775, 36.405190, 33.168884>,  <45.799110, 36.282063, 33.374321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.783775, 36.405190, 33.168884>,  <45.758213, 36.610401, 32.826488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.783775, 36.405190, 33.168884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029373, -0.858338, -0.512243,
		0.997524, 0.007590, -0.069919,
		0.063903, -0.513028, 0.855990,
		45.802948, 36.251282, 33.425682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.350498, 36.211048, 32.910908>,  <45.758213, 36.610401, 32.826488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.350498, 36.211048, 32.910908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.117477, 35.986889, 33.146393>,  <45.977665, 35.852394, 33.287682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.117477, 35.986889, 33.146393>,  <46.350498, 36.211048, 32.910908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.117477, 35.986889, 33.146393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270900, -0.816763, -0.509422,
		0.766317, -0.137286, 0.627623,
		-0.582556, -0.560402, 0.588709,
		45.942711, 35.818768, 33.323006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.719681, 35.727627, 33.397251>,  <46.350498, 36.211048, 32.910908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.719681, 35.727627, 33.397251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.363075, 35.569382, 33.308983>,  <46.149113, 35.474434, 33.256020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.363075, 35.569382, 33.308983>,  <46.719681, 35.727627, 33.397251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.363075, 35.569382, 33.308983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451965, -0.809717, -0.374281,
		-0.030613, -0.433413, 0.900676,
		-0.891510, -0.395616, -0.220675,
		46.095623, 35.450695, 33.242779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.373676, 35.503838, 33.740166>,  <46.719681, 35.727627, 33.397251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.373676, 35.503838, 33.740166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.127060, 35.338924, 34.008461>,  <46.979092, 35.239975, 34.169437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.127060, 35.338924, 34.008461>,  <47.373676, 35.503838, 33.740166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.127060, 35.338924, 34.008461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733806, -0.609640, 0.299780,
		0.285317, 0.677022, 0.678407,
		-0.616542, -0.412287, 0.670743,
		46.942097, 35.215237, 34.209682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.456604, 35.624210, 34.442051>,  <47.373676, 35.503838, 33.740166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.456604, 35.624210, 34.442051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.301476, 35.255672, 34.431377>,  <47.208397, 35.034550, 34.424973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.301476, 35.255672, 34.431377>,  <47.456604, 35.624210, 34.442051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.301476, 35.255672, 34.431377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801349, -0.351333, 0.484153,
		-0.455448, 0.166383, 0.874576,
		-0.387823, -0.921348, -0.026683,
		47.185127, 34.979267, 34.423374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.670399, 35.360813, 35.104412>,  <47.456604, 35.624210, 34.442051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.670399, 35.360813, 35.104412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.628174, 35.072113, 34.830788>,  <47.602840, 34.898891, 34.666615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.628174, 35.072113, 34.830788>,  <47.670399, 35.360813, 35.104412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.628174, 35.072113, 34.830788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826175, -0.446501, 0.343616,
		-0.553437, -0.528879, 0.643425,
		-0.105558, -0.721751, -0.684056,
		47.596508, 34.855587, 34.625572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.354847, 37.384666, 42.737164> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.044754, 37.132259, 42.725700>,  <33.858696, 36.980816, 42.718822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.044754, 37.132259, 42.725700>,  <34.354847, 37.384666, 42.737164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.044754, 37.132259, 42.725700> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083439, 0.147269, -0.985571,
		0.626137, -0.761658, -0.166820,
		-0.775235, -0.631022, -0.028658,
		33.812183, 36.942951, 42.717102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.384068, 36.936203, 42.132381>,  <34.354847, 37.384666, 42.737164>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.384068, 36.936203, 42.132381> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.992893, 36.877026, 42.191387>,  <33.758190, 36.841518, 42.226791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.992893, 36.877026, 42.191387>,  <34.384068, 36.936203, 42.132381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.992893, 36.877026, 42.191387> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149140, -0.000078, -0.988816,
		0.146303, -0.988995, -0.021989,
		-0.977933, -0.147946, 0.147510,
		33.699512, 36.832642, 42.235641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.161884, 36.278751, 41.824776>,  <34.384068, 36.936203, 42.132381>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.161884, 36.278751, 41.824776> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.820103, 36.486450, 41.817894>,  <33.615032, 36.611069, 41.813763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.820103, 36.486450, 41.817894>,  <34.161884, 36.278751, 41.824776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.820103, 36.486450, 41.817894> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094221, -0.187447, -0.977745,
		-0.510914, -0.833816, 0.209089,
		-0.854453, 0.519244, -0.017206,
		33.563766, 36.642223, 41.812733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.799789, 35.926662, 41.461010>,  <34.161884, 36.278751, 41.824776>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.799789, 35.926662, 41.461010> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.596428, 36.270870, 41.448124>,  <33.474411, 36.477394, 41.440392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.596428, 36.270870, 41.448124>,  <33.799789, 35.926662, 41.461010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.596428, 36.270870, 41.448124> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131274, -0.114421, -0.984721,
		-0.851053, -0.496409, 0.171135,
		-0.508406, 0.860515, -0.032213,
		33.443905, 36.529026, 41.438461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.191158, 35.770836, 41.038040>,  <33.799789, 35.926662, 41.461010>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.191158, 35.770836, 41.038040> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.240379, 36.167431, 41.021038>,  <33.269913, 36.405388, 41.010838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.240379, 36.167431, 41.021038>,  <33.191158, 35.770836, 41.038040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.240379, 36.167431, 41.021038> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057851, -0.049924, -0.997076,
		-0.990712, 0.120238, -0.063502,
		0.123056, 0.991489, -0.042504,
		33.277298, 36.464878, 41.008286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.767281, 36.006908, 40.513157>,  <33.191158, 35.770836, 41.038040>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.767281, 36.006908, 40.513157> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.044724, 36.292305, 40.552856>,  <33.211189, 36.463543, 40.576675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.044724, 36.292305, 40.552856>,  <32.767281, 36.006908, 40.513157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.044724, 36.292305, 40.552856> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042741, 0.096778, -0.994388,
		-0.719088, 0.693953, 0.036631,
		0.693603, 0.713487, 0.099252,
		33.252804, 36.506351, 40.582634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.674282, 36.414375, 39.844841>,  <32.767281, 36.006908, 40.513157>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.674282, 36.414375, 39.844841> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.024990, 36.511906, 40.010647>,  <33.235413, 36.570423, 40.110130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.024990, 36.511906, 40.010647>,  <32.674282, 36.414375, 39.844841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.024990, 36.511906, 40.010647> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404359, 0.092818, -0.909878,
		-0.260330, 0.965366, -0.017215,
		0.876768, 0.243830, 0.414518,
		33.288021, 36.585056, 40.135002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.856052, 36.928787, 39.486332>,  <32.674282, 36.414375, 39.844841>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.856052, 36.928787, 39.486332> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.199013, 36.802277, 39.648727>,  <33.404789, 36.726372, 39.746166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.199013, 36.802277, 39.648727>,  <32.856052, 36.928787, 39.486332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.199013, 36.802277, 39.648727> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428928, 0.003215, -0.903333,
		0.284398, 0.948661, 0.138417,
		0.857402, -0.316277, 0.405993,
		33.456234, 36.707394, 39.770527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.348618, 37.377556, 39.260460>,  <32.856052, 36.928787, 39.486332>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.348618, 37.377556, 39.260460> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.543308, 37.047806, 39.376045>,  <33.660122, 36.849957, 39.445396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.543308, 37.047806, 39.376045>,  <33.348618, 37.377556, 39.260460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.543308, 37.047806, 39.376045> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540431, 0.024276, -0.841038,
		0.686315, 0.565525, 0.457333,
		0.486730, -0.824374, 0.288967,
		33.689327, 36.800495, 39.462734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.021065, 37.545578, 39.435997>,  <33.348618, 37.377556, 39.260460>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.021065, 37.545578, 39.435997> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.008583, 37.165184, 39.312935>,  <34.001095, 36.936947, 39.239098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.008583, 37.165184, 39.312935>,  <34.021065, 37.545578, 39.435997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.008583, 37.165184, 39.312935> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624423, 0.221801, -0.748933,
		0.780463, -0.215472, 0.586898,
		-0.031200, -0.950987, -0.307653,
		33.999222, 36.879887, 39.220638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.617466, 37.409294, 39.107216>,  <34.021065, 37.545578, 39.435997>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.617466, 37.409294, 39.107216> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.420601, 37.094925, 38.957493>,  <34.302483, 36.906303, 38.867661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.420601, 37.094925, 38.957493>,  <34.617466, 37.409294, 39.107216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.420601, 37.094925, 38.957493> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588415, 0.016526, -0.808390,
		0.641518, -0.618104, 0.454315,
		-0.492161, -0.785922, -0.374304,
		34.272953, 36.859150, 38.845203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.187271, 37.046082, 38.800362>,  <34.617466, 37.409294, 39.107216>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.187271, 37.046082, 38.800362> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.843349, 36.903553, 38.654060>,  <34.636997, 36.818035, 38.566280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.843349, 36.903553, 38.654060>,  <35.187271, 37.046082, 38.800362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.843349, 36.903553, 38.654060> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462180, -0.238509, -0.854110,
		0.217106, -0.903407, 0.369757,
		-0.859799, -0.356327, -0.365755,
		34.585411, 36.796654, 38.544334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.327332, 36.329983, 38.457703>,  <35.187271, 37.046082, 38.800362>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.327332, 36.329983, 38.457703> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.986851, 36.468559, 38.299999>,  <34.782562, 36.551704, 38.205379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.986851, 36.468559, 38.299999>,  <35.327332, 36.329983, 38.457703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.986851, 36.468559, 38.299999> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334269, -0.221282, -0.916132,
		-0.404630, -0.911598, 0.072550,
		-0.851199, 0.346443, -0.394256,
		34.731491, 36.572491, 38.181721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.203049, 35.887497, 38.001698>,  <35.327332, 36.329983, 38.457703>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.203049, 35.887497, 38.001698> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.990997, 36.200066, 37.870033>,  <34.863766, 36.387608, 37.791035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.990997, 36.200066, 37.870033>,  <35.203049, 35.887497, 38.001698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.990997, 36.200066, 37.870033> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422433, -0.093191, -0.901591,
		-0.735195, -0.617008, -0.280693,
		-0.530131, 0.781419, -0.329158,
		34.831959, 36.434490, 37.771286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.185028, 35.665405, 37.408302>,  <35.203049, 35.887497, 38.001698>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.185028, 35.665405, 37.408302> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.064674, 36.044983, 37.370403>,  <34.992462, 36.272728, 37.347664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.064674, 36.044983, 37.370403>,  <35.185028, 35.665405, 37.408302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.064674, 36.044983, 37.370403> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395741, 0.033845, -0.917738,
		-0.867675, -0.313625, -0.385720,
		-0.300880, 0.948944, -0.094748,
		34.974411, 36.329666, 37.341980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.685467, 35.731792, 36.834824>,  <35.185028, 35.665405, 37.408302>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.685467, 35.731792, 36.834824> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.854404, 36.090008, 36.890865>,  <34.955769, 36.304939, 36.924492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.854404, 36.090008, 36.890865>,  <34.685467, 35.731792, 36.834824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.854404, 36.090008, 36.890865> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401957, -0.046497, -0.914477,
		-0.812438, 0.442542, -0.379607,
		0.422345, 0.895541, 0.140107,
		34.981110, 36.358669, 36.932896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.563961, 36.027714, 36.260460>,  <34.685467, 35.731792, 36.834824>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.563961, 36.027714, 36.260460> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.859142, 36.269218, 36.381054>,  <35.036251, 36.414120, 36.453411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.859142, 36.269218, 36.381054>,  <34.563961, 36.027714, 36.260460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.859142, 36.269218, 36.381054> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364230, 0.019761, -0.931099,
		-0.568118, 0.796921, -0.205325,
		0.737955, 0.603760, 0.301489,
		35.080528, 36.450348, 36.471500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.579861, 36.507923, 35.780514>,  <34.563961, 36.027714, 36.260460>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.579861, 36.507923, 35.780514> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.939194, 36.516792, 35.956013>,  <35.154793, 36.522114, 36.061314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.939194, 36.516792, 35.956013>,  <34.579861, 36.507923, 35.780514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.939194, 36.516792, 35.956013> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439062, -0.078733, -0.895000,
		0.014703, 0.996649, -0.080463,
		0.898336, 0.022169, 0.438748,
		35.208694, 36.523441, 36.087639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.000561, 37.023151, 35.431599>,  <34.579861, 36.507923, 35.780514>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.000561, 37.023151, 35.431599> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.264660, 36.775787, 35.602081>,  <35.423119, 36.627369, 35.704372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.264660, 36.775787, 35.602081>,  <35.000561, 37.023151, 35.431599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.264660, 36.775787, 35.602081> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570546, 0.043937, -0.820090,
		0.488422, 0.784630, 0.381838,
		0.660244, -0.618406, 0.426207,
		35.462734, 36.590267, 35.729942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.644547, 37.347023, 35.389015>,  <35.000561, 37.023151, 35.431599>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.644547, 37.347023, 35.389015> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.714890, 36.953972, 35.412746>,  <35.757095, 36.718140, 35.426987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.714890, 36.953972, 35.412746>,  <35.644547, 37.347023, 35.389015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.714890, 36.953972, 35.412746> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578954, 0.054492, -0.813537,
		0.796170, 0.177416, 0.578478,
		0.175856, -0.982626, 0.059331,
		35.767647, 36.659184, 35.430546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.383785, 37.298889, 35.247787>,  <35.644547, 37.347023, 35.389015>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.383785, 37.298889, 35.247787> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.247326, 36.931747, 35.166626>,  <36.165451, 36.711464, 35.117931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.247326, 36.931747, 35.166626>,  <36.383785, 37.298889, 35.247787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.247326, 36.931747, 35.166626> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558115, -0.024091, -0.829414,
		0.756389, -0.396197, 0.520484,
		-0.341150, -0.917850, -0.202901,
		36.144981, 36.656391, 35.105755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.945423, 37.022442, 34.941696>,  <36.383785, 37.298889, 35.247787>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.945423, 37.022442, 34.941696> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.630512, 36.790878, 34.856789>,  <36.441566, 36.651939, 34.805843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.630512, 36.790878, 34.856789>,  <36.945423, 37.022442, 34.941696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.630512, 36.790878, 34.856789> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300668, -0.059865, -0.951848,
		0.538328, -0.813190, 0.221190,
		-0.787275, -0.578912, -0.212274,
		36.394329, 36.617207, 34.793106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.454563, 36.737694, 35.326977>,  <36.945423, 37.022442, 34.941696>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.454563, 36.737694, 35.326977> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.808105, 36.845612, 35.479820>,  <38.020233, 36.910362, 35.571526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.808105, 36.845612, 35.479820>,  <37.454563, 36.737694, 35.326977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.808105, 36.845612, 35.479820> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367442, -0.105025, 0.924097,
		0.289448, -0.957173, 0.006308,
		0.883858, 0.269796, 0.382105,
		38.073265, 36.926552, 35.594452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.777454, 36.195198, 35.889416>,  <37.454563, 36.737694, 35.326977>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.777454, 36.195198, 35.889416> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.959068, 36.544174, 35.961739>,  <38.068039, 36.753559, 36.005131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.959068, 36.544174, 35.961739>,  <37.777454, 36.195198, 35.889416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.959068, 36.544174, 35.961739> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144569, -0.128103, 0.981167,
		0.879175, -0.471627, 0.067964,
		0.454039, 0.872444, 0.180808,
		38.095280, 36.805908, 36.015980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.216270, 36.122414, 36.543941>,  <37.777454, 36.195198, 35.889416>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.216270, 36.122414, 36.543941> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.214825, 36.521107, 36.511646>,  <38.213955, 36.760323, 36.492271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.214825, 36.521107, 36.511646>,  <38.216270, 36.122414, 36.543941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.214825, 36.521107, 36.511646> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043696, 0.080815, 0.995771,
		0.999038, 0.000076, -0.043845,
		-0.003619, 0.996729, -0.080734,
		38.213737, 36.820126, 36.487427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.756157, 36.288048, 36.990292>,  <38.216270, 36.122414, 36.543941>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.756157, 36.288048, 36.990292> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.543240, 36.621101, 36.929119>,  <38.415489, 36.820934, 36.892418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.543240, 36.621101, 36.929119>,  <38.756157, 36.288048, 36.990292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.543240, 36.621101, 36.929119> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081620, 0.230283, 0.969695,
		0.842614, 0.503683, -0.190538,
		-0.532296, 0.832630, -0.152929,
		38.383553, 36.870892, 36.883240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.101620, 36.946098, 37.271347>,  <38.756157, 36.288048, 36.990292>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.101620, 36.946098, 37.271347> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.711281, 37.032639, 37.259239>,  <38.477077, 37.084560, 37.251976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.711281, 37.032639, 37.259239>,  <39.101620, 36.946098, 37.271347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.711281, 37.032639, 37.259239> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024365, 0.245494, 0.969092,
		0.217091, 0.944948, -0.244836,
		-0.975847, 0.216346, -0.030271,
		38.418526, 37.097542, 37.250156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.000816, 37.597107, 37.610378>,  <39.101620, 36.946098, 37.271347>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.000816, 37.597107, 37.610378> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.618557, 37.479401, 37.615265>,  <38.389202, 37.408775, 37.618195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.618557, 37.479401, 37.615265>,  <39.000816, 37.597107, 37.610378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.618557, 37.479401, 37.615265> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085898, 0.318148, 0.944142,
		-0.281717, 0.901215, -0.329314,
		-0.955645, -0.294269, 0.012215,
		38.331863, 37.391121, 37.618931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.557240, 38.220711, 37.842285>,  <39.000816, 37.597107, 37.610378>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.557240, 38.220711, 37.842285> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.329464, 37.901329, 37.920475>,  <38.192799, 37.709702, 37.967388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.329464, 37.901329, 37.920475>,  <38.557240, 38.220711, 37.842285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.329464, 37.901329, 37.920475> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300215, 0.423371, 0.854768,
		-0.765252, 0.428052, -0.480791,
		-0.569438, -0.798454, 0.195478,
		38.158634, 37.661793, 37.979118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.881557, 38.490845, 37.983124>,  <38.557240, 38.220711, 37.842285>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.881557, 38.490845, 37.983124> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.904003, 38.136162, 38.166687>,  <37.917473, 37.923351, 38.276825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.904003, 38.136162, 38.166687>,  <37.881557, 38.490845, 37.983124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.904003, 38.136162, 38.166687> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322281, 0.418940, 0.848896,
		-0.944979, -0.195534, -0.262260,
		0.056117, -0.886710, 0.458906,
		37.920837, 37.870148, 38.304359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.230347, 38.399609, 38.466415>,  <37.881557, 38.490845, 37.983124>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.230347, 38.399609, 38.466415> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.476788, 38.121044, 38.613617>,  <37.624653, 37.953907, 38.701939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.476788, 38.121044, 38.613617>,  <37.230347, 38.399609, 38.466415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.476788, 38.121044, 38.613617> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325374, 0.200470, 0.924091,
		-0.717323, -0.689073, -0.103085,
		0.616101, -0.696412, 0.368009,
		37.661617, 37.912121, 38.724018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.850960, 38.031448, 38.814960>,  <37.230347, 38.399609, 38.466415>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.850960, 38.031448, 38.814960> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.210850, 37.943836, 38.965969>,  <37.426785, 37.891270, 39.056572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.210850, 37.943836, 38.965969>,  <36.850960, 38.031448, 38.814960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.210850, 37.943836, 38.965969> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373153, 0.062623, 0.925654,
		-0.226387, -0.973707, -0.025388,
		0.899725, -0.219030, 0.377519,
		37.480766, 37.878128, 39.079224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.723972, 37.447460, 39.300308>,  <36.850960, 38.031448, 38.814960>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.723972, 37.447460, 39.300308> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.066799, 37.618183, 39.415737>,  <37.272495, 37.720619, 39.484993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.066799, 37.618183, 39.415737>,  <36.723972, 37.447460, 39.300308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.066799, 37.618183, 39.415737> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285517, -0.072757, 0.955608,
		0.428859, -0.901410, 0.059504,
		0.857065, 0.426811, 0.288570,
		37.323917, 37.746227, 39.502308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.898842, 37.145271, 39.985523>,  <36.723972, 37.447460, 39.300308>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.898842, 37.145271, 39.985523> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.132950, 37.467976, 39.953011>,  <37.273415, 37.661598, 39.933502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.132950, 37.467976, 39.953011>,  <36.898842, 37.145271, 39.985523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.132950, 37.467976, 39.953011> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136498, 0.196843, 0.970887,
		0.799270, -0.557132, 0.225326,
		0.585265, 0.806757, -0.081283,
		37.308529, 37.710003, 39.928627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.387875, 37.186676, 40.601006>,  <36.898842, 37.145271, 39.985523>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.387875, 37.186676, 40.601006> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.361057, 37.559765, 40.459282>,  <37.344967, 37.783619, 40.374249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.361057, 37.559765, 40.459282>,  <37.387875, 37.186676, 40.601006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.361057, 37.559765, 40.459282> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292821, 0.321082, 0.900645,
		0.953814, 0.164131, 0.251595,
		-0.067041, 0.932720, -0.354314,
		37.340946, 37.839581, 40.352989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.864540, 37.624062, 40.932945>,  <37.387875, 37.186676, 40.601006>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.864540, 37.624062, 40.932945> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.579483, 37.867229, 40.792908>,  <37.408447, 38.013130, 40.708885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.579483, 37.867229, 40.792908>,  <37.864540, 37.624062, 40.932945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.579483, 37.867229, 40.792908> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206540, 0.295115, 0.932871,
		0.670430, 0.737116, -0.084753,
		-0.712646, 0.607920, -0.350098,
		37.365688, 38.049606, 40.687878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.942177, 38.290409, 41.280685>,  <37.864540, 37.624062, 40.932945>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.942177, 38.290409, 41.280685> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.572487, 38.239708, 41.136608>,  <37.350674, 38.209286, 41.050163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.572487, 38.239708, 41.136608>,  <37.942177, 38.290409, 41.280685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.572487, 38.239708, 41.136608> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380189, 0.393145, 0.837193,
		0.035487, 0.910697, -0.411547,
		-0.924228, -0.126756, -0.360189,
		37.295219, 38.201679, 41.028553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.597527, 38.942097, 41.456539>,  <37.942177, 38.290409, 41.280685>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.597527, 38.942097, 41.456539> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.314304, 38.669037, 41.384254>,  <37.144371, 38.505203, 41.340885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.314304, 38.669037, 41.384254>,  <37.597527, 38.942097, 41.456539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.314304, 38.669037, 41.384254> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538262, 0.356086, 0.763857,
		-0.457096, 0.638119, -0.619570,
		-0.708051, -0.682647, -0.180710,
		37.101891, 38.464241, 41.330040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.961308, 39.272278, 41.789906>,  <37.597527, 38.942097, 41.456539>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.961308, 39.272278, 41.789906> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.829750, 38.901840, 41.715958>,  <36.750816, 38.679577, 41.671589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.829750, 38.901840, 41.715958>,  <36.961308, 39.272278, 41.789906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.829750, 38.901840, 41.715958> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576389, 0.041788, 0.816106,
		-0.748068, 0.374964, -0.547536,
		-0.328891, -0.926097, -0.184865,
		36.731083, 38.624012, 41.660500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.348278, 39.439568, 41.864014>,  <36.961308, 39.272278, 41.789906>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.348278, 39.439568, 41.864014> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.363182, 39.040260, 41.882187>,  <36.372124, 38.800674, 41.893089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.363182, 39.040260, 41.882187>,  <36.348278, 39.439568, 41.864014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.363182, 39.040260, 41.882187> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705665, 0.005909, 0.708521,
		-0.707565, -0.058456, -0.704226,
		0.037256, -0.998272, 0.045431,
		36.374359, 38.740780, 41.895817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.680748, 39.111320, 41.880543> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.923016, 38.831821, 42.032814>,  <36.068375, 38.664124, 42.124176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.923016, 38.831821, 42.032814>,  <35.680748, 39.111320, 41.880543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.923016, 38.831821, 42.032814> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523435, 0.010467, 0.852001,
		-0.599317, -0.715293, -0.359409,
		0.605668, -0.698746, 0.380682,
		36.104717, 38.622196, 42.147018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.221329, 38.709805, 42.252125>,  <35.680748, 39.111320, 41.880543>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.221329, 38.709805, 42.252125> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.582569, 38.617367, 42.396908>,  <35.799313, 38.561905, 42.483776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.582569, 38.617367, 42.396908>,  <35.221329, 38.709805, 42.252125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.582569, 38.617367, 42.396908> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416318, -0.264390, 0.869929,
		-0.105332, -0.936321, -0.334976,
		0.903097, -0.231088, 0.361959,
		35.853497, 38.548038, 42.505497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.077087, 38.133183, 42.436638>,  <35.221329, 38.709805, 42.252125>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.077087, 38.133183, 42.436638> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.396446, 38.242325, 42.651340>,  <35.588062, 38.307808, 42.780163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.396446, 38.242325, 42.651340>,  <35.077087, 38.133183, 42.436638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.396446, 38.242325, 42.651340> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409554, -0.407382, 0.816275,
		0.441389, -0.871545, -0.213506,
		0.798399, 0.272853, 0.536758,
		35.635967, 38.324181, 42.812366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.328156, 37.566959, 42.889755>,  <35.077087, 38.133183, 42.436638>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.328156, 37.566959, 42.889755> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.501591, 37.888710, 43.052223>,  <35.605652, 38.081760, 43.149704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.501591, 37.888710, 43.052223>,  <35.328156, 37.566959, 42.889755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.501591, 37.888710, 43.052223> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287324, -0.303807, 0.908376,
		0.854074, -0.510567, 0.099389,
		0.433592, 0.804377, 0.406172,
		35.631668, 38.130024, 43.174076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.763542, 37.336021, 43.429085>,  <35.328156, 37.566959, 42.889755>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.763542, 37.336021, 43.429085> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.695770, 37.717369, 43.528996>,  <35.655106, 37.946178, 43.588943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.695770, 37.717369, 43.528996>,  <35.763542, 37.336021, 43.429085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.695770, 37.717369, 43.528996> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357675, -0.295643, 0.885813,
		0.918348, 0.060744, 0.391085,
		-0.169429, 0.953366, 0.249776,
		35.644943, 38.003380, 43.603928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.996307, 37.302765, 43.998955>,  <35.763542, 37.336021, 43.429085>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.996307, 37.302765, 43.998955> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.802425, 37.652420, 44.011257>,  <35.686096, 37.862213, 44.018639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.802425, 37.652420, 44.011257>,  <35.996307, 37.302765, 43.998955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.802425, 37.652420, 44.011257> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249918, -0.172099, 0.952850,
		0.838214, 0.454164, 0.301880,
		-0.484704, 0.874137, 0.030752,
		35.657013, 37.914661, 44.020481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.356682, 37.863274, 44.526756>,  <35.996307, 37.302765, 43.998955>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.356682, 37.863274, 44.526756> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.977795, 37.979897, 44.473438>,  <35.750462, 38.049870, 44.441448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.977795, 37.979897, 44.473438>,  <36.356682, 37.863274, 44.526756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.977795, 37.979897, 44.473438> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172107, -0.111681, 0.978727,
		0.270470, 0.950011, 0.155965,
		-0.947220, 0.291559, -0.133297,
		35.693630, 38.067364, 44.433449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.279202, 38.343254, 45.039879>,  <36.356682, 37.863274, 44.526756>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.279202, 38.343254, 45.039879> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.926083, 38.190586, 44.930332>,  <35.714211, 38.098988, 44.864605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.926083, 38.190586, 44.930332>,  <36.279202, 38.343254, 45.039879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.926083, 38.190586, 44.930332> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223307, -0.171961, 0.959460,
		-0.413290, 0.908163, 0.066577,
		-0.882794, -0.381668, -0.273869,
		35.661243, 38.076084, 44.848171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.034847, 38.451744, 45.616379>,  <36.279202, 38.343254, 45.039879>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.034847, 38.451744, 45.616379> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.775745, 38.208786, 45.432426>,  <35.620285, 38.063011, 45.322056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.775745, 38.208786, 45.432426>,  <36.034847, 38.451744, 45.616379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.775745, 38.208786, 45.432426> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200760, -0.446214, 0.872118,
		-0.734924, 0.657241, 0.167095,
		-0.647751, -0.607394, -0.459881,
		35.581421, 38.026569, 45.294464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.344078, 38.469254, 45.932568>,  <36.034847, 38.451744, 45.616379>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.344078, 38.469254, 45.932568> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.379288, 38.118389, 45.743744>,  <35.400414, 37.907871, 45.630451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.379288, 38.118389, 45.743744>,  <35.344078, 38.469254, 45.932568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.379288, 38.118389, 45.743744> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086194, -0.478825, 0.873669,
		-0.992382, -0.036219, -0.117756,
		0.088028, -0.877163, -0.472055,
		35.405697, 37.855240, 45.602127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.163139, 38.026222, 46.449394>,  <35.344078, 38.469254, 45.932568>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.163139, 38.026222, 46.449394> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.344002, 37.780479, 46.190742>,  <35.452518, 37.633034, 46.035553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.344002, 37.780479, 46.190742>,  <35.163139, 38.026222, 46.449394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.344002, 37.780479, 46.190742> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113856, -0.679282, 0.724991,
		-0.884644, -0.401430, -0.237192,
		0.452154, -0.614354, -0.646628,
		35.479649, 37.596172, 45.996754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.877003, 37.353256, 46.598019>,  <35.163139, 38.026222, 46.449394>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.877003, 37.353256, 46.598019> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.228909, 37.299332, 46.415661>,  <35.440052, 37.266975, 46.306248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.228909, 37.299332, 46.415661>,  <34.877003, 37.353256, 46.598019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.228909, 37.299332, 46.415661> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268539, -0.650392, 0.710547,
		-0.392302, -0.747539, -0.535989,
		0.879764, -0.134815, -0.455894,
		35.492836, 37.258888, 46.278893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.987785, 36.607315, 46.587837>,  <34.877003, 37.353256, 46.598019>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.987785, 36.607315, 46.587837> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.351528, 36.770393, 46.554710>,  <35.569775, 36.868240, 46.534836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.351528, 36.770393, 46.554710>,  <34.987785, 36.607315, 46.587837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.351528, 36.770393, 46.554710> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352617, -0.649710, 0.673452,
		0.220758, -0.641608, -0.734578,
		0.909355, 0.407695, -0.082813,
		35.624336, 36.892700, 46.529865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.320068, 36.053822, 46.639416>,  <34.987785, 36.607315, 46.587837>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.320068, 36.053822, 46.639416> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.589516, 36.340557, 46.711395>,  <35.751183, 36.512600, 46.754585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.589516, 36.340557, 46.711395>,  <35.320068, 36.053822, 46.639416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.589516, 36.340557, 46.711395> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302228, -0.489359, 0.818038,
		0.674464, -0.496656, -0.546289,
		0.673615, 0.716841, 0.179951,
		35.791599, 36.555611, 46.765381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.842316, 35.699413, 46.938251>,  <35.320068, 36.053822, 46.639416>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.842316, 35.699413, 46.938251> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.944382, 36.072277, 47.040989>,  <36.005623, 36.295994, 47.102631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.944382, 36.072277, 47.040989>,  <35.842316, 35.699413, 46.938251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.944382, 36.072277, 47.040989> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354065, -0.337268, 0.872289,
		0.899737, -0.131641, -0.416105,
		0.255168, 0.932159, 0.256843,
		36.020931, 36.351925, 47.118042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.498516, 35.661777, 47.144939>,  <35.842316, 35.699413, 46.938251>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.498516, 35.661777, 47.144939> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.337494, 35.983288, 47.320164>,  <36.240879, 36.176193, 47.425301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.337494, 35.983288, 47.320164>,  <36.498516, 35.661777, 47.144939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.337494, 35.983288, 47.320164> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311259, -0.329849, 0.891245,
		0.860853, 0.495126, -0.117399,
		-0.402554, 0.803772, 0.438064,
		36.216728, 36.224419, 47.451584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.854446, 35.775181, 47.780552>,  <36.498516, 35.661777, 47.144939>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.854446, 35.775181, 47.780552> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.562798, 36.027008, 47.887905>,  <36.387810, 36.178104, 47.952316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.562798, 36.027008, 47.887905>,  <36.854446, 35.775181, 47.780552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.562798, 36.027008, 47.887905> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081241, -0.309756, 0.947339,
		0.679547, 0.712526, 0.174703,
		-0.729119, 0.629569, 0.268380,
		36.344063, 36.215878, 47.968418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.053558, 36.094830, 48.460655>,  <36.854446, 35.775181, 47.780552>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.053558, 36.094830, 48.460655> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.660393, 36.162067, 48.430676>,  <36.424492, 36.202412, 48.412685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.660393, 36.162067, 48.430676>,  <37.053558, 36.094830, 48.460655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.660393, 36.162067, 48.430676> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118200, -0.264381, 0.957148,
		0.141078, 0.949656, 0.279733,
		-0.982917, 0.168097, -0.074951,
		36.365517, 36.212498, 48.408192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.875191, 36.531105, 48.977070>,  <37.053558, 36.094830, 48.460655>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.875191, 36.531105, 48.977070> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.537312, 36.338959, 48.882641>,  <36.334583, 36.223671, 48.825985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.537312, 36.338959, 48.882641>,  <36.875191, 36.531105, 48.977070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.537312, 36.338959, 48.882641> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075243, -0.330107, 0.940940,
		-0.529921, 0.812577, 0.242698,
		-0.844702, -0.480363, -0.236071,
		36.283901, 36.194851, 48.811821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.391586, 36.628471, 49.521152>,  <36.875191, 36.531105, 48.977070>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.391586, 36.628471, 49.521152> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.209167, 36.318668, 49.345810>,  <36.099716, 36.132786, 49.240604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.209167, 36.318668, 49.345810>,  <36.391586, 36.628471, 49.521152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.209167, 36.318668, 49.345810> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312172, -0.322048, 0.893775,
		-0.833407, 0.544450, -0.094909,
		-0.456050, -0.774506, -0.438359,
		36.072353, 36.086315, 49.214302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.735229, 36.531296, 49.853249>,  <36.391586, 36.628471, 49.521152>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.735229, 36.531296, 49.853249> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.815559, 36.177208, 49.685413>,  <35.863758, 35.964756, 49.584713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.815559, 36.177208, 49.685413>,  <35.735229, 36.531296, 49.853249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.815559, 36.177208, 49.685413> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154258, -0.451546, 0.878812,
		-0.967405, -0.111767, -0.227236,
		0.200829, -0.885220, -0.419587,
		35.875809, 35.911640, 49.559536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.235229, 36.237568, 50.147778>,  <35.735229, 36.531296, 49.853249>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.235229, 36.237568, 50.147778> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.511490, 35.977932, 50.020233>,  <35.677246, 35.822151, 49.943707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.511490, 35.977932, 50.020233>,  <35.235229, 36.237568, 50.147778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.511490, 35.977932, 50.020233> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141853, -0.553945, 0.820380,
		-0.709137, -0.521367, -0.474660,
		0.690654, -0.649093, -0.318865,
		35.718685, 35.783203, 49.924572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.803211, 35.957588, 50.645809>,  <35.235229, 36.237568, 50.147778>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.803211, 35.957588, 50.645809> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.188454, 36.043304, 50.710922>,  <35.419601, 36.094734, 50.749992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.188454, 36.043304, 50.710922>,  <34.803211, 35.957588, 50.645809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.188454, 36.043304, 50.710922> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266141, -0.848086, -0.458170,
		0.039874, 0.484592, -0.873831,
		0.963109, 0.214293, 0.162786,
		35.477386, 36.107594, 50.759758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.424290, 35.292530, 50.907204>,  <34.803211, 35.957588, 50.645809>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.424290, 35.292530, 50.907204> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.291607, 34.934708, 50.787380>,  <34.211998, 34.720013, 50.715485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.291607, 34.934708, 50.787380>,  <34.424290, 35.292530, 50.907204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.291607, 34.934708, 50.787380> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063053, 0.337851, -0.939085,
		0.941273, -0.292614, -0.168472,
		-0.331708, -0.894558, -0.299560,
		34.192093, 34.666340, 50.697514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.706501, 35.231373, 50.219463>,  <34.424290, 35.292530, 50.907204>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.706501, 35.231373, 50.219463> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.405197, 34.968407, 50.211452>,  <34.224415, 34.810627, 50.206646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.405197, 34.968407, 50.211452>,  <34.706501, 35.231373, 50.219463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.405197, 34.968407, 50.211452> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142083, 0.192384, -0.970979,
		0.642189, -0.728557, -0.238324,
		-0.753264, -0.657414, -0.020031,
		34.179218, 34.771183, 50.205444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.743912, 34.763668, 49.641872>,  <34.706501, 35.231373, 50.219463>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.743912, 34.763668, 49.641872> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.356186, 34.771011, 49.739922>,  <34.123550, 34.775417, 49.798752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.356186, 34.771011, 49.739922>,  <34.743912, 34.763668, 49.641872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.356186, 34.771011, 49.739922> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243694, 0.058775, -0.968070,
		-0.032185, -0.998102, -0.052496,
		-0.969318, 0.018364, 0.245123,
		34.065392, 34.776520, 49.813457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.466789, 34.307663, 49.136333>,  <34.743912, 34.763668, 49.641872>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.466789, 34.307663, 49.136333> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.164165, 34.514069, 49.297001>,  <33.982590, 34.637913, 49.393402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.164165, 34.514069, 49.297001>,  <34.466789, 34.307663, 49.136333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.164165, 34.514069, 49.297001> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346227, 0.204989, -0.915482,
		-0.554744, -0.831688, 0.023573,
		-0.756563, 0.516019, 0.401669,
		33.937195, 34.668873, 49.417503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.900173, 34.040394, 48.788177>,  <34.466789, 34.307663, 49.136333>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.900173, 34.040394, 48.788177> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.756180, 34.382046, 48.938305>,  <33.669785, 34.587036, 49.028381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.756180, 34.382046, 48.938305>,  <33.900173, 34.040394, 48.788177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.756180, 34.382046, 48.938305> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338997, 0.255044, -0.905557,
		-0.869191, -0.453219, 0.197737,
		-0.359984, 0.854134, 0.375322,
		33.648186, 34.638287, 49.050900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.183865, 34.085091, 48.613613>,  <33.900173, 34.040394, 48.788177>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.183865, 34.085091, 48.613613> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.258335, 34.473213, 48.675385>,  <33.303017, 34.706085, 48.712448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.258335, 34.473213, 48.675385>,  <33.183865, 34.085091, 48.613613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.258335, 34.473213, 48.675385> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364795, 0.214208, -0.906112,
		-0.912284, 0.112362, 0.393843,
		0.186177, 0.970304, 0.154429,
		33.314190, 34.764305, 48.721714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.723946, 34.433887, 48.263073>,  <33.183865, 34.085091, 48.613613>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.723946, 34.433887, 48.263073> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.015141, 34.705349, 48.301994>,  <33.189857, 34.868225, 48.325348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.015141, 34.705349, 48.301994>,  <32.723946, 34.433887, 48.263073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.015141, 34.705349, 48.301994> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048654, 0.192704, -0.980050,
		-0.683866, 0.708727, 0.173305,
		0.727984, 0.678654, 0.097302,
		33.233536, 34.908947, 48.331184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.476292, 34.953720, 47.940235>,  <32.723946, 34.433887, 48.263073>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.476292, 34.953720, 47.940235> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.867188, 35.034615, 47.965832>,  <33.101727, 35.083153, 47.981190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.867188, 35.034615, 47.965832>,  <32.476292, 34.953720, 47.940235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.867188, 35.034615, 47.965832> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037324, 0.133006, -0.990412,
		-0.208807, 0.970263, 0.122431,
		0.977244, 0.202236, 0.063987,
		33.160362, 35.095284, 47.985027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.498138, 35.470119, 47.507679>,  <32.476292, 34.953720, 47.940235>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.498138, 35.470119, 47.507679> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.883949, 35.374451, 47.552368>,  <33.115437, 35.317051, 47.579182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.883949, 35.374451, 47.552368>,  <32.498138, 35.470119, 47.507679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.883949, 35.374451, 47.552368> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160006, 0.193086, -0.968048,
		0.209957, 0.951586, 0.224505,
		0.964529, -0.239170, 0.111720,
		33.173309, 35.302700, 47.585884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.960941, 36.065765, 47.398987>,  <32.498138, 35.470119, 47.507679>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.960941, 36.065765, 47.398987> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.170692, 35.734829, 47.318447>,  <33.296543, 35.536266, 47.270123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.170692, 35.734829, 47.318447>,  <32.960941, 36.065765, 47.398987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.170692, 35.734829, 47.318447> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090197, 0.289106, -0.953038,
		0.846695, 0.481591, 0.226224,
		0.524378, -0.827337, -0.201346,
		33.328007, 35.486629, 47.258041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.734615, 36.195450, 47.176586>,  <32.960941, 36.065765, 47.398987>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.734615, 36.195450, 47.176586> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.595741, 35.852386, 47.024857>,  <33.512417, 35.646549, 46.933819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.595741, 35.852386, 47.024857>,  <33.734615, 36.195450, 47.176586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.595741, 35.852386, 47.024857> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250201, 0.305113, -0.918861,
		0.903803, -0.413925, 0.108655,
		-0.347187, -0.857655, -0.379327,
		33.491585, 35.595089, 46.911060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.096786, 36.115376, 46.639862>,  <33.734615, 36.195450, 47.176586>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.096786, 36.115376, 46.639862> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.839706, 35.817940, 46.566101>,  <33.685459, 35.639477, 46.521847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.839706, 35.817940, 46.566101>,  <34.096786, 36.115376, 46.639862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.839706, 35.817940, 46.566101> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283936, -0.007641, -0.958813,
		0.711557, -0.668589, 0.216043,
		-0.642703, -0.743593, -0.184399,
		33.646896, 35.594860, 46.510780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.470371, 35.623081, 46.179337>,  <34.096786, 36.115376, 46.639862>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.470371, 35.623081, 46.179337> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.073875, 35.582733, 46.145214>,  <33.835979, 35.558525, 46.124741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.073875, 35.582733, 46.145214>,  <34.470371, 35.623081, 46.179337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.073875, 35.582733, 46.145214> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072496, 0.124479, -0.989570,
		0.110422, -0.987083, -0.116077,
		-0.991237, -0.100855, -0.085305,
		33.776505, 35.552471, 46.119621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.443676, 35.267464, 45.551079>,  <34.470371, 35.623081, 46.179337>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.443676, 35.267464, 45.551079> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.079456, 35.416512, 45.622688>,  <33.860924, 35.505939, 45.665653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.079456, 35.416512, 45.622688>,  <34.443676, 35.267464, 45.551079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.079456, 35.416512, 45.622688> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096002, 0.230620, -0.968297,
		-0.402093, -0.898871, -0.174219,
		-0.910552, 0.372621, 0.179024,
		33.806290, 35.528297, 45.676395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.986755, 34.999229, 45.003273>,  <34.443676, 35.267464, 45.551079>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.986755, 34.999229, 45.003273> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.795467, 35.317310, 45.152378>,  <33.680695, 35.508160, 45.241840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.795467, 35.317310, 45.152378>,  <33.986755, 34.999229, 45.003273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.795467, 35.317310, 45.152378> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147804, 0.345514, -0.926700,
		-0.865713, -0.498263, -0.047698,
		-0.478221, 0.795206, 0.372761,
		33.652000, 35.555874, 45.264206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.522785, 35.141922, 44.570095>,  <33.986755, 34.999229, 45.003273>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.522785, 35.141922, 44.570095> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.474922, 35.494534, 44.752781>,  <33.446205, 35.706100, 44.862392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.474922, 35.494534, 44.752781>,  <33.522785, 35.141922, 44.570095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.474922, 35.494534, 44.752781> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077509, 0.450318, -0.889498,
		-0.989785, -0.141833, 0.014443,
		-0.119656, 0.881531, 0.456711,
		33.439026, 35.758991, 44.889793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.888741, 35.520508, 44.375645>,  <33.522785, 35.141922, 44.570095>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.888741, 35.520508, 44.375645> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.157608, 35.793613, 44.490204>,  <33.318928, 35.957478, 44.558941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.157608, 35.793613, 44.490204>,  <32.888741, 35.520508, 44.375645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.157608, 35.793613, 44.490204> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167772, 0.517212, -0.839252,
		-0.721135, 0.516073, 0.462204,
		0.672172, 0.682759, 0.286398,
		33.359261, 35.998440, 44.576122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.539394, 36.070881, 44.128044>,  <32.888741, 35.520508, 44.375645>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.539394, 36.070881, 44.128044> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.882477, 36.269859, 44.180023>,  <33.088326, 36.389248, 44.211212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.882477, 36.269859, 44.180023>,  <32.539394, 36.070881, 44.128044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.882477, 36.269859, 44.180023> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000776, 0.251500, -0.967857,
		-0.514141, 0.830237, 0.215327,
		0.857706, 0.497447, 0.129951,
		33.139790, 36.419094, 44.219009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.440170, 36.866905, 44.076946>,  <32.539394, 36.070881, 44.128044>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.440170, 36.866905, 44.076946> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.813129, 36.760540, 43.979034>,  <33.036907, 36.696720, 43.920288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.813129, 36.760540, 43.979034>,  <32.440170, 36.866905, 44.076946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.813129, 36.760540, 43.979034> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158563, 0.307652, -0.938194,
		0.324786, 0.913586, 0.244692,
		0.932401, -0.265913, -0.244782,
		33.092850, 36.680767, 43.905602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.783119, 37.475864, 43.747852>,  <32.440170, 36.866905, 44.076946>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.783119, 37.475864, 43.747852> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.026371, 37.171383, 43.657745>,  <33.172321, 36.988693, 43.603683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.026371, 37.171383, 43.657745>,  <32.783119, 37.475864, 43.747852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.026371, 37.171383, 43.657745> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024071, 0.301318, -0.953220,
		0.793471, 0.574261, 0.201564,
		0.608132, -0.761204, -0.225264,
		33.208809, 36.943024, 43.590168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.258648, 37.707031, 43.403690>,  <32.783119, 37.475864, 43.747852>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.258648, 37.707031, 43.403690> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.279514, 37.322479, 43.295601>,  <33.292034, 37.091747, 43.230747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.279514, 37.322479, 43.295601>,  <33.258648, 37.707031, 43.403690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.279514, 37.322479, 43.295601> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064698, 0.266765, -0.961588,
		0.996540, 0.067647, -0.048282,
		0.052169, -0.961385, -0.270219,
		33.295166, 37.034065, 43.214535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.054310, 41.813793, 36.721592> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.793339, 41.754417, 37.018860>,  <43.636757, 41.718792, 37.197220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.793339, 41.754417, 37.018860>,  <44.054310, 41.813793, 36.721592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.793339, 41.754417, 37.018860> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089444, -0.988859, -0.118984,
		0.752553, -0.011157, 0.658437,
		-0.652429, -0.148435, 0.743172,
		43.597610, 41.709888, 37.241810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.391376, 41.206451, 37.120407>,  <44.054310, 41.813793, 36.721592>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.391376, 41.206451, 37.120407> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.009167, 41.272968, 37.217823>,  <43.779839, 41.312878, 37.276272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.009167, 41.272968, 37.217823>,  <44.391376, 41.206451, 37.120407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.009167, 41.272968, 37.217823> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119340, -0.973248, 0.196334,
		0.269672, 0.158539, 0.949812,
		-0.955529, 0.166296, 0.243538,
		43.722507, 41.322857, 37.290886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.316391, 40.844028, 37.681950>,  <44.391376, 41.206451, 37.120407>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.316391, 40.844028, 37.681950> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.960533, 40.904797, 37.509693>,  <43.747017, 40.941257, 37.406342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.960533, 40.904797, 37.509693>,  <44.316391, 40.844028, 37.681950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.960533, 40.904797, 37.509693> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236559, -0.959961, 0.150051,
		-0.390599, 0.235363, 0.889965,
		-0.889648, 0.151919, -0.430637,
		43.693638, 40.950371, 37.380501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.833603, 40.456161, 37.997959>,  <44.316391, 40.844028, 37.681950>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.833603, 40.456161, 37.997959> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.648232, 40.516766, 37.648724>,  <43.537010, 40.553127, 37.439182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.648232, 40.516766, 37.648724>,  <43.833603, 40.456161, 37.997959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.648232, 40.516766, 37.648724> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281755, -0.959337, -0.016920,
		-0.840148, 0.238155, 0.487272,
		-0.463428, 0.151507, -0.873086,
		43.509205, 40.562218, 37.386799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.211182, 39.964573, 37.947155>,  <43.833603, 40.456161, 37.997959>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.211182, 39.964573, 37.947155> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.297329, 40.069519, 37.570904>,  <43.349018, 40.132488, 37.345154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.297329, 40.069519, 37.570904>,  <43.211182, 39.964573, 37.947155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.297329, 40.069519, 37.570904> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174123, -0.937478, -0.301357,
		-0.960885, 0.228686, -0.156215,
		0.215364, 0.262369, -0.940628,
		43.361938, 40.148232, 37.288715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.539360, 39.780918, 37.584881>,  <43.211182, 39.964573, 37.947155>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.539360, 39.780918, 37.584881> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.838451, 39.772202, 37.319424>,  <43.017906, 39.766972, 37.160149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.838451, 39.772202, 37.319424>,  <42.539360, 39.780918, 37.584881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.838451, 39.772202, 37.319424> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290127, -0.909732, -0.297008,
		-0.597268, 0.414623, -0.686556,
		0.747728, -0.021795, -0.663647,
		43.062771, 39.765663, 37.120331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.375973, 39.206440, 37.120384>,  <42.539360, 39.780918, 37.584881>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.375973, 39.206440, 37.120384> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.726379, 39.314072, 36.960293>,  <42.936623, 39.378651, 36.864239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.726379, 39.314072, 36.960293>,  <42.375973, 39.206440, 37.120384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.726379, 39.314072, 36.960293> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034261, -0.862503, -0.504890,
		-0.481057, 0.428581, -0.764789,
		0.876019, 0.269083, -0.400230,
		42.989185, 39.394798, 36.840225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.409466, 39.271393, 36.308769>,  <42.375973, 39.206440, 37.120384>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.409466, 39.271393, 36.308769> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.773319, 39.190880, 36.454121>,  <42.991631, 39.142570, 36.541332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.773319, 39.190880, 36.454121>,  <42.409466, 39.271393, 36.308769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.773319, 39.190880, 36.454121> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054341, -0.809589, -0.584476,
		0.411835, 0.551408, -0.725494,
		0.909637, -0.201283, 0.363381,
		43.046211, 39.130493, 36.563133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.820652, 38.948387, 35.731270>,  <42.409466, 39.271393, 36.308769>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.820652, 38.948387, 35.731270> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.010036, 38.839279, 36.066277>,  <43.123669, 38.773815, 36.267281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.010036, 38.839279, 36.066277>,  <42.820652, 38.948387, 35.731270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.010036, 38.839279, 36.066277> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120395, -0.921876, -0.368306,
		0.872548, 0.275211, -0.403633,
		0.473461, -0.272770, 0.837515,
		43.152077, 38.757450, 36.317532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.329285, 38.495693, 35.569366>,  <42.820652, 38.948387, 35.731270>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.329285, 38.495693, 35.569366> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.308361, 38.422413, 35.962040>,  <43.295807, 38.378445, 36.197643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.308361, 38.422413, 35.962040>,  <43.329285, 38.495693, 35.569366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.308361, 38.422413, 35.962040> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264944, -0.950346, -0.163239,
		0.962844, 0.251552, 0.098249,
		-0.052307, -0.183204, 0.981682,
		43.292667, 38.367451, 36.256546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.876740, 38.130749, 35.676128>,  <43.329285, 38.495693, 35.569366>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.876740, 38.130749, 35.676128> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.703472, 38.066967, 36.030968>,  <43.599510, 38.028698, 36.243870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.703472, 38.066967, 36.030968>,  <43.876740, 38.130749, 35.676128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.703472, 38.066967, 36.030968> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212264, -0.974591, -0.071534,
		0.875960, 0.157311, 0.456012,
		-0.433172, -0.159456, 0.887094,
		43.573521, 38.019131, 36.297096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.383808, 37.908840, 36.087223>,  <43.876740, 38.130749, 35.676128>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.383808, 37.908840, 36.087223> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.031937, 37.786842, 36.233173>,  <43.820812, 37.713642, 36.320744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.031937, 37.786842, 36.233173>,  <44.383808, 37.908840, 36.087223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.031937, 37.786842, 36.233173> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356295, -0.930865, 0.080896,
		0.314981, 0.201167, 0.927534,
		-0.879682, -0.304995, 0.364879,
		43.768032, 37.695343, 36.342636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.508770, 37.567585, 36.655724>,  <44.383808, 37.908840, 36.087223>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.508770, 37.567585, 36.655724> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.148769, 37.410374, 36.580338>,  <43.932770, 37.316048, 36.535107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.148769, 37.410374, 36.580338>,  <44.508770, 37.567585, 36.655724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.148769, 37.410374, 36.580338> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390911, -0.919075, 0.049900,
		-0.192823, -0.028762, 0.980812,
		-0.900004, -0.393032, -0.188462,
		43.878769, 37.292465, 36.523800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.397751, 36.954891, 37.115391>,  <44.508770, 37.567585, 36.655724>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.397751, 36.954891, 37.115391> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.148029, 36.918938, 36.804993>,  <43.998196, 36.897366, 36.618755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.148029, 36.918938, 36.804993>,  <44.397751, 36.954891, 37.115391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.148029, 36.918938, 36.804993> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257486, -0.961523, -0.095783,
		-0.737528, -0.259605, 0.623424,
		-0.624302, -0.089881, -0.775995,
		43.960739, 36.891975, 36.572193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.984310, 36.299492, 37.128593>,  <44.397751, 36.954891, 37.115391>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.984310, 36.299492, 37.128593> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.946526, 36.417667, 36.748322>,  <43.923855, 36.488575, 36.520157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.946526, 36.417667, 36.748322>,  <43.984310, 36.299492, 37.128593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.946526, 36.417667, 36.748322> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304852, -0.900489, -0.310137,
		-0.947704, -0.319112, -0.005004,
		-0.094463, 0.295444, -0.950679,
		43.918186, 36.506302, 36.463120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.515194, 35.755444, 36.826645>,  <43.984310, 36.299492, 37.128593>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.515194, 35.755444, 36.826645> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.759766, 35.922699, 36.557926>,  <43.906509, 36.023052, 36.396694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.759766, 35.922699, 36.557926>,  <43.515194, 35.755444, 36.826645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.759766, 35.922699, 36.557926> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093546, -0.881224, -0.463350,
		-0.785752, 0.220460, -0.577919,
		0.611426, 0.418141, -0.671801,
		43.943195, 36.048141, 36.356384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.326721, 35.464500, 36.220150>,  <43.515194, 35.755444, 36.826645>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.326721, 35.464500, 36.220150> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.697407, 35.594761, 36.145161>,  <43.919819, 35.672916, 36.100166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.697407, 35.594761, 36.145161>,  <43.326721, 35.464500, 36.220150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.697407, 35.594761, 36.145161> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179181, -0.821526, -0.541284,
		-0.330284, 0.468026, -0.819673,
		0.926718, 0.325648, -0.187476,
		43.975422, 35.692455, 36.088917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.312706, 35.396622, 35.449505>,  <43.326721, 35.464500, 36.220150>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.312706, 35.396622, 35.449505> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.683636, 35.385929, 35.598824>,  <43.906193, 35.379513, 35.688416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.683636, 35.385929, 35.598824>,  <43.312706, 35.396622, 35.449505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.683636, 35.385929, 35.598824> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182947, -0.837771, -0.514461,
		0.326487, 0.545367, -0.771998,
		0.927328, -0.026730, 0.373294,
		43.961834, 35.377911, 35.710812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.736877, 35.262150, 34.835121>,  <43.312706, 35.396622, 35.449505>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.736877, 35.262150, 34.835121> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.956993, 35.184906, 35.160057>,  <44.089062, 35.138561, 35.355019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.956993, 35.184906, 35.160057>,  <43.736877, 35.262150, 34.835121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.956993, 35.184906, 35.160057> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405276, -0.788830, -0.462059,
		0.730021, 0.583488, -0.355825,
		0.550291, -0.193106, 0.812336,
		44.122082, 35.126976, 35.403759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.377415, 35.208916, 34.501472>,  <43.736877, 35.262150, 34.835121>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.377415, 35.208916, 34.501472> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.414677, 35.027870, 34.856201>,  <44.437035, 34.919243, 35.069038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.414677, 35.027870, 34.856201>,  <44.377415, 35.208916, 34.501472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.414677, 35.027870, 34.856201> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247616, -0.852182, -0.460947,
		0.964369, 0.262533, 0.032689,
		0.093157, -0.452617, 0.886825,
		44.442623, 34.892086, 35.122250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.852753, 34.845448, 34.354786>,  <44.377415, 35.208916, 34.501472>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.852753, 34.845448, 34.354786> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.751278, 34.669395, 34.699326>,  <44.690395, 34.563763, 34.906052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.751278, 34.669395, 34.699326>,  <44.852753, 34.845448, 34.354786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.751278, 34.669395, 34.699326> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106497, -0.897778, -0.427378,
		0.961406, -0.016688, 0.274626,
		-0.253685, -0.440131, 0.861353,
		44.675171, 34.537357, 34.957733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.223236, 35.525036, 34.327389>,  <44.852753, 34.845448, 34.354786>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.223236, 35.525036, 34.327389> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.483444, 35.569199, 34.026817>,  <45.639568, 35.595695, 33.846474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.483444, 35.569199, 34.026817>,  <45.223236, 35.525036, 34.327389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.483444, 35.569199, 34.026817> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306169, 0.867302, 0.392488,
		0.695045, -0.485383, 0.530392,
		0.650517, 0.110408, -0.751424,
		45.678600, 35.602322, 33.801392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.965546, 35.634506, 34.550781>,  <45.223236, 35.525036, 34.327389>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.965546, 35.634506, 34.550781> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.911900, 35.821529, 34.201290>,  <45.879711, 35.933743, 33.991596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.911900, 35.821529, 34.201290>,  <45.965546, 35.634506, 34.550781>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.911900, 35.821529, 34.201290> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230277, 0.872261, 0.431431,
		0.963839, -0.143338, -0.224652,
		-0.134114, 0.467562, -0.873727,
		45.871666, 35.961800, 33.939171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.536339, 36.038250, 34.556576>,  <45.965546, 35.634506, 34.550781>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.536339, 36.038250, 34.556576> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.301636, 36.193447, 34.272270>,  <46.160816, 36.286568, 34.101688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.301636, 36.193447, 34.272270>,  <46.536339, 36.038250, 34.556576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.301636, 36.193447, 34.272270> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348545, 0.913277, 0.210812,
		0.730914, -0.124037, -0.671103,
		-0.586755, 0.387995, -0.710759,
		46.125610, 36.309845, 34.059044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.936859, 36.523651, 34.147606>,  <46.536339, 36.038250, 34.556576>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.936859, 36.523651, 34.147606> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.557598, 36.644806, 34.109093>,  <46.330044, 36.717499, 34.085983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.557598, 36.644806, 34.109093>,  <46.936859, 36.523651, 34.147606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.557598, 36.644806, 34.109093> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285565, 0.944863, 0.160270,
		0.139522, 0.124464, -0.982366,
		-0.948149, 0.302891, -0.096286,
		46.273155, 36.735672, 34.080208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.028904, 37.045883, 33.701080>,  <46.936859, 36.523651, 34.147606>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.028904, 37.045883, 33.701080> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.681248, 37.121952, 33.883698>,  <46.472652, 37.167591, 33.993267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.681248, 37.121952, 33.883698>,  <47.028904, 37.045883, 33.701080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.681248, 37.121952, 33.883698> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267939, 0.956966, 0.111468,
		-0.415699, 0.219207, -0.882690,
		-0.869139, 0.190170, 0.456544,
		46.420506, 37.179005, 34.020660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.691402, 37.738899, 33.397686>,  <47.028904, 37.045883, 33.701080>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.691402, 37.738899, 33.397686> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.501545, 37.662151, 33.741291>,  <46.387630, 37.616104, 33.947453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.501545, 37.662151, 33.741291>,  <46.691402, 37.738899, 33.397686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.501545, 37.662151, 33.741291> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099185, 0.958075, 0.268801,
		-0.874571, 0.212786, -0.435716,
		-0.474646, -0.191869, 0.859010,
		46.359150, 37.604591, 33.998993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.242149, 38.321003, 33.449955>,  <46.691402, 37.738899, 33.397686>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.242149, 38.321003, 33.449955> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.297489, 38.184425, 33.821819>,  <46.330692, 38.102478, 34.044937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.297489, 38.184425, 33.821819>,  <46.242149, 38.321003, 33.449955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.297489, 38.184425, 33.821819> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023797, 0.937275, 0.347778,
		-0.990097, -0.070239, 0.121550,
		0.138353, -0.341441, 0.929664,
		46.338997, 38.081993, 34.100719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.856709, 38.818550, 33.862286>,  <46.242149, 38.321003, 33.449955>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.856709, 38.818550, 33.862286> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.091969, 38.655396, 34.141632>,  <46.233124, 38.557503, 34.309238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.091969, 38.655396, 34.141632>,  <45.856709, 38.818550, 33.862286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.091969, 38.655396, 34.141632> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109525, 0.815382, 0.568468,
		-0.801300, -0.410833, 0.434895,
		0.588152, -0.407882, 0.698362,
		46.268414, 38.533031, 34.351139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.498333, 38.756893, 34.499256>,  <45.856709, 38.818550, 33.862286>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.498333, 38.756893, 34.499256> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.887993, 38.796844, 34.580299>,  <46.121788, 38.820816, 34.628925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.887993, 38.796844, 34.580299>,  <45.498333, 38.756893, 34.499256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.887993, 38.796844, 34.580299> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199063, 0.803526, 0.560999,
		-0.106770, -0.586831, 0.802639,
		0.974153, 0.099878, 0.202609,
		46.180241, 38.826809, 34.641083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.475422, 39.101524, 35.119831>,  <45.498333, 38.756893, 34.499256>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.475422, 39.101524, 35.119831> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.865089, 39.123119, 35.032120>,  <46.098888, 39.136078, 34.979492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.865089, 39.123119, 35.032120>,  <45.475422, 39.101524, 35.119831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.865089, 39.123119, 35.032120> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102803, 0.758542, 0.643464,
		0.201073, -0.649384, 0.733396,
		0.974167, 0.053988, -0.219281,
		46.157341, 39.139317, 34.966335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.762375, 39.228287, 35.741985>,  <45.475422, 39.101524, 35.119831>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.762375, 39.228287, 35.741985> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.033432, 39.337589, 35.468891>,  <46.196068, 39.403172, 35.305035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.033432, 39.337589, 35.468891>,  <45.762375, 39.228287, 35.741985>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.033432, 39.337589, 35.468891> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185737, 0.834701, 0.518435,
		0.711549, -0.478124, 0.514875,
		0.677643, 0.273260, -0.682736,
		46.236725, 39.419567, 35.264069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.339966, 39.501591, 36.165722>,  <45.762375, 39.228287, 35.741985>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.339966, 39.501591, 36.165722> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.400375, 39.674755, 35.810246>,  <46.436623, 39.778656, 35.596958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.400375, 39.674755, 35.810246>,  <46.339966, 39.501591, 36.165722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.400375, 39.674755, 35.810246> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098013, 0.888018, 0.449241,
		0.983659, -0.154950, 0.091681,
		0.151024, 0.432914, -0.888694,
		46.445683, 39.804630, 35.543636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.852943, 40.029510, 36.284050>,  <46.339966, 39.501591, 36.165722>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.852943, 40.029510, 36.284050> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.688473, 40.157387, 35.942585>,  <46.589790, 40.234112, 35.737705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.688473, 40.157387, 35.942585>,  <46.852943, 40.029510, 36.284050>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.688473, 40.157387, 35.942585> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195265, 0.945637, 0.260082,
		0.890398, -0.059751, -0.451244,
		-0.411173, 0.319689, -0.853660,
		46.565121, 40.253292, 35.686485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.273281, 40.578400, 36.022015>,  <46.852943, 40.029510, 36.284050>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.273281, 40.578400, 36.022015> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.915447, 40.628063, 35.850296>,  <46.700745, 40.657864, 35.747265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.915447, 40.628063, 35.850296>,  <47.273281, 40.578400, 36.022015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.915447, 40.628063, 35.850296> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023898, 0.945963, 0.323394,
		0.446255, 0.299564, -0.843278,
		-0.894587, 0.124163, -0.429299,
		46.647072, 40.665314, 35.721508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.296932, 41.198910, 35.612328>,  <47.273281, 40.578400, 36.022015>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.296932, 41.198910, 35.612328> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.900730, 41.149509, 35.636478>,  <46.663010, 41.119869, 35.650970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.900730, 41.149509, 35.636478>,  <47.296932, 41.198910, 35.612328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.900730, 41.149509, 35.636478> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105260, 0.963872, 0.244685,
		-0.088416, 0.236006, -0.967721,
		-0.990507, -0.123497, 0.060380,
		46.603577, 41.112461, 35.654591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.091965, 41.712318, 35.290688>,  <47.296932, 41.198910, 35.612328>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.091965, 41.712318, 35.290688> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.748970, 41.603050, 35.465088>,  <46.543175, 41.537487, 35.569729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.748970, 41.603050, 35.465088>,  <47.091965, 41.712318, 35.290688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.748970, 41.603050, 35.465088> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245143, 0.961959, 0.120581,
		-0.452359, -0.003488, -0.891829,
		-0.857482, -0.273172, 0.436005,
		46.491726, 41.521099, 35.595890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.646538, 42.078262, 34.899796>,  <47.091965, 41.712318, 35.290688>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.646538, 42.078262, 34.899796> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.499855, 41.989487, 35.261185>,  <46.411846, 41.936222, 35.478020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.499855, 41.989487, 35.261185>,  <46.646538, 42.078262, 34.899796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.499855, 41.989487, 35.261185> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274668, 0.953668, 0.122783,
		-0.888865, -0.203130, -0.410679,
		-0.366710, -0.221938, 0.903475,
		46.389843, 41.922905, 35.532227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.891983, 42.288666, 34.929916>,  <46.646538, 42.078262, 34.899796>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.891983, 42.288666, 34.929916> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.006584, 42.270653, 35.312725>,  <46.075344, 42.259846, 35.542412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.006584, 42.270653, 35.312725>,  <45.891983, 42.288666, 34.929916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.006584, 42.270653, 35.312725> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376108, 0.913421, 0.155576,
		-0.881170, -0.404516, 0.244758,
		0.286500, -0.045033, 0.957021,
		46.092533, 42.257141, 35.599831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.315170, 42.395885, 35.391239>,  <45.891983, 42.288666, 34.929916>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.315170, 42.395885, 35.391239> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.639999, 42.477184, 35.610046>,  <45.834896, 42.525963, 35.741329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.639999, 42.477184, 35.610046>,  <45.315170, 42.395885, 35.391239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.639999, 42.477184, 35.610046> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291912, 0.953160, 0.079205,
		-0.505297, -0.224001, 0.833366,
		0.812073, 0.203248, 0.547017,
		45.883621, 42.538158, 35.774151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.054203, 42.840958, 35.827633>,  <45.315170, 42.395885, 35.391239>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.054203, 42.840958, 35.827633> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.438320, 42.929520, 35.895542>,  <45.668789, 42.982658, 35.936287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.438320, 42.929520, 35.895542>,  <45.054203, 42.840958, 35.827633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.438320, 42.929520, 35.895542> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251335, 0.950666, 0.181836,
		-0.121138, -0.217285, 0.968562,
		0.960290, 0.221406, 0.169773,
		45.726406, 42.995941, 35.946472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.210747, 43.088661, 36.599133>,  <45.054203, 42.840958, 35.827633>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.210747, 43.088661, 36.599133> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.477215, 43.233231, 36.338184>,  <45.637096, 43.319973, 36.181614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.477215, 43.233231, 36.338184>,  <45.210747, 43.088661, 36.599133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.477215, 43.233231, 36.338184> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302870, 0.930456, 0.206206,
		0.681533, 0.060216, 0.729305,
		0.666170, 0.361421, -0.652375,
		45.677067, 43.341656, 36.142471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.947491, 38.897888, 39.670345> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.780064, 38.548084, 39.768356>,  <37.679607, 38.338203, 39.827164>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.780064, 38.548084, 39.768356>,  <37.947491, 38.897888, 39.670345>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.780064, 38.548084, 39.768356> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424229, -0.426828, -0.798653,
		0.803014, -0.230340, 0.549647,
		-0.418567, -0.874506, 0.245032,
		37.654495, 38.285732, 39.841866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.476768, 38.264957, 39.734810>,  <37.947491, 38.897888, 39.670345>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.476768, 38.264957, 39.734810> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.111717, 38.111038, 39.679619>,  <37.892685, 38.018688, 39.646503>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.111717, 38.111038, 39.679619>,  <38.476768, 38.264957, 39.734810>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.111717, 38.111038, 39.679619> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320615, -0.464382, -0.825563,
		0.253601, -0.797671, 0.547181,
		-0.912629, -0.384798, -0.137977,
		37.837929, 37.995598, 39.638226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.663235, 37.685646, 39.526241>,  <38.476768, 38.264957, 39.734810>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.663235, 37.685646, 39.526241> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.281792, 37.687405, 39.405834>,  <38.052925, 37.688461, 39.333588>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.281792, 37.687405, 39.405834>,  <38.663235, 37.685646, 39.526241>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.281792, 37.687405, 39.405834> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275588, -0.389713, -0.878735,
		-0.121177, -0.920926, 0.370421,
		-0.953607, 0.004398, -0.301021,
		37.995708, 37.688725, 39.315529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.523708, 37.026779, 39.181347>,  <38.663235, 37.685646, 39.526241>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.523708, 37.026779, 39.181347> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.241348, 37.274258, 39.043411>,  <38.071930, 37.422745, 38.960648>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.241348, 37.274258, 39.043411>,  <38.523708, 37.026779, 39.181347>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.241348, 37.274258, 39.043411> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082578, -0.411649, -0.907593,
		-0.703477, -0.669151, 0.239495,
		-0.705905, 0.618694, -0.344843,
		38.029575, 37.459866, 38.939957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.987343, 36.682323, 38.788486>,  <38.523708, 37.026779, 39.181347>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.987343, 36.682323, 38.788486> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.988121, 37.057446, 38.649624>,  <37.988586, 37.282520, 38.566307>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.988121, 37.057446, 38.649624>,  <37.987343, 36.682323, 38.788486>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.988121, 37.057446, 38.649624> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124744, -0.344672, -0.930398,
		-0.992187, -0.041497, -0.117655,
		0.001943, 0.937805, -0.347156,
		37.988705, 37.338787, 38.545479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.581936, 36.585087, 38.217033>,  <37.987343, 36.682323, 38.788486>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.581936, 36.585087, 38.217033> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.778965, 36.928219, 38.158371>,  <37.897182, 37.134098, 38.123173>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.778965, 36.928219, 38.158371>,  <37.581936, 36.585087, 38.217033>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.778965, 36.928219, 38.158371> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065563, -0.204615, -0.976644,
		-0.867800, 0.471450, -0.157029,
		0.492570, 0.857827, -0.146655,
		37.926735, 37.185566, 38.114376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.132725, 36.981052, 37.712391>,  <37.581936, 36.585087, 38.217033>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.132725, 36.981052, 37.712391> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.513000, 37.102562, 37.687363>,  <37.741165, 37.175468, 37.672348>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.513000, 37.102562, 37.687363>,  <37.132725, 36.981052, 37.712391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.513000, 37.102562, 37.687363> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038651, -0.084119, -0.995706,
		-0.307734, 0.949023, -0.068230,
		0.950687, 0.303775, -0.062567,
		37.798206, 37.193695, 37.668594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.198875, 37.403072, 37.160572>,  <37.132725, 36.981052, 37.712391>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.198875, 37.403072, 37.160572> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.588760, 37.315571, 37.178822>,  <37.822693, 37.263069, 37.189770>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.588760, 37.315571, 37.178822>,  <37.198875, 37.403072, 37.160572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.588760, 37.315571, 37.178822> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072715, 0.117438, -0.990415,
		0.211297, 0.968688, 0.130375,
		0.974713, -0.218752, 0.045624,
		37.881176, 37.249947, 37.192509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.560387, 37.860279, 36.804901>,  <37.198875, 37.403072, 37.160572>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.560387, 37.860279, 36.804901> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.819908, 37.555992, 36.812481>,  <37.975620, 37.373421, 36.817028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.819908, 37.555992, 36.812481>,  <37.560387, 37.860279, 36.804901>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.819908, 37.555992, 36.812481> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150602, 0.103961, -0.983113,
		0.745904, 0.640701, 0.182016,
		0.648804, -0.760720, 0.018946,
		38.014549, 37.327778, 36.818165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.169094, 38.091331, 36.504692>,  <37.560387, 37.860279, 36.804901>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.169094, 38.091331, 36.504692> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.196205, 37.693279, 36.476074>,  <38.212471, 37.454449, 36.458904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.196205, 37.693279, 36.476074>,  <38.169094, 38.091331, 36.504692>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.196205, 37.693279, 36.476074> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182741, 0.082876, -0.979661,
		0.980822, 0.053325, 0.187469,
		0.067777, -0.995132, -0.071542,
		38.216537, 37.394741, 36.454613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.857586, 37.928265, 36.207355>,  <38.169094, 38.091331, 36.504692>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.857586, 37.928265, 36.207355> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.634228, 37.600735, 36.154106>,  <38.500214, 37.404217, 36.122158>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.634228, 37.600735, 36.154106>,  <38.857586, 37.928265, 36.207355>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.634228, 37.600735, 36.154106> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282071, -0.036492, -0.958699,
		0.780149, -0.572883, 0.251344,
		-0.558394, -0.818825, -0.133124,
		38.466709, 37.355087, 36.114170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.247028, 37.318180, 36.040035>,  <38.857586, 37.928265, 36.207355>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.247028, 37.318180, 36.040035> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.878956, 37.269928, 35.891060>,  <38.658112, 37.240978, 35.801674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.878956, 37.269928, 35.891060>,  <39.247028, 37.318180, 36.040035>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.878956, 37.269928, 35.891060> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386946, -0.135731, -0.912058,
		0.059470, -0.983375, 0.171574,
		-0.920183, -0.120630, -0.372441,
		38.602901, 37.233738, 35.779327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.373600, 36.910110, 35.484287>,  <39.247028, 37.318180, 36.040035>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.373600, 36.910110, 35.484287> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.025982, 37.088875, 35.399395>,  <38.817413, 37.196133, 35.348461>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.025982, 37.088875, 35.399395>,  <39.373600, 36.910110, 35.484287>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.025982, 37.088875, 35.399395> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219610, -0.035927, -0.974926,
		-0.443326, -0.893859, -0.066924,
		-0.869042, 0.446907, -0.212228,
		38.765270, 37.222946, 35.335728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.347977, 36.797924, 34.829460>,  <39.373600, 36.910110, 35.484287>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.347977, 36.797924, 34.829460> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.085663, 37.099216, 34.849789>,  <38.928276, 37.279991, 34.861984>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.085663, 37.099216, 34.849789>,  <39.347977, 36.797924, 34.829460>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.085663, 37.099216, 34.849789> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173294, 0.215708, -0.960958,
		-0.734789, -0.621375, -0.271989,
		-0.655785, 0.753235, 0.050820,
		38.888927, 37.325188, 34.865036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.793159, 36.234295, 34.800694>,  <39.347977, 36.797924, 34.829460>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.793159, 36.234295, 34.800694> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.088642, 36.000969, 34.935787>,  <40.265930, 35.860973, 35.016842>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.088642, 36.000969, 34.935787>,  <39.793159, 36.234295, 34.800694>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.088642, 36.000969, 34.935787> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635029, -0.434324, 0.638828,
		-0.225951, -0.686374, -0.691257,
		0.738704, -0.583312, 0.337731,
		40.310253, 35.825974, 35.037106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.512703, 35.656818, 34.981533>,  <39.793159, 36.234295, 34.800694>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.512703, 35.656818, 34.981533> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.860554, 35.616547, 35.174870>,  <40.069263, 35.592384, 35.290871>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.860554, 35.616547, 35.174870>,  <39.512703, 35.656818, 34.981533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.860554, 35.616547, 35.174870> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477204, -0.422463, 0.770585,
		0.126614, -0.900772, -0.415426,
		0.869624, -0.100676, 0.483342,
		40.121441, 35.586342, 35.319874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.604134, 34.945271, 35.041569>,  <39.512703, 35.656818, 34.981533>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.604134, 34.945271, 35.041569> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.837521, 35.097672, 35.328457>,  <39.977554, 35.189110, 35.500587>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.837521, 35.097672, 35.328457>,  <39.604134, 34.945271, 35.041569>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.837521, 35.097672, 35.328457> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574048, -0.431221, 0.696072,
		0.574483, -0.817856, -0.032893,
		0.583471, 0.381000, 0.717218,
		40.012562, 35.211971, 35.543621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.762775, 34.365902, 35.306515>,  <39.604134, 34.945271, 35.041569>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.762775, 34.365902, 35.306515> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.825138, 34.666988, 35.562363>,  <39.862556, 34.847641, 35.715870>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.825138, 34.666988, 35.562363>,  <39.762775, 34.365902, 35.306515>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.825138, 34.666988, 35.562363> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461077, -0.517204, 0.721046,
		0.873557, -0.407327, 0.266427,
		0.155904, 0.752718, 0.639617,
		39.871910, 34.892803, 35.754246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.885849, 34.013180, 35.889484>,  <39.762775, 34.365902, 35.306515>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.885849, 34.013180, 35.889484> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.794464, 34.361286, 36.064045>,  <39.739635, 34.570148, 36.168781>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.794464, 34.361286, 36.064045>,  <39.885849, 34.013180, 35.889484>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.794464, 34.361286, 36.064045> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609996, -0.477317, 0.632514,
		0.758756, -0.121700, 0.639905,
		-0.228460, 0.870263, 0.436403,
		39.725925, 34.622364, 36.194965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.763809, 33.892818, 36.625511>,  <39.885849, 34.013180, 35.889484>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.763809, 33.892818, 36.625511> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.593739, 34.251530, 36.576508>,  <39.491695, 34.466759, 36.547104>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.593739, 34.251530, 36.576508>,  <39.763809, 33.892818, 36.625511>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.593739, 34.251530, 36.576508> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760340, -0.280451, 0.585858,
		0.491029, 0.342242, 0.801100,
		-0.425175, 0.896782, -0.122511,
		39.466187, 34.520565, 36.539753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.753933, 34.258965, 37.300690>,  <39.763809, 33.892818, 36.625511>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.753933, 34.258965, 37.300690> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.477833, 34.418125, 37.058956>,  <39.312172, 34.513622, 36.913918>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.477833, 34.418125, 37.058956>,  <39.753933, 34.258965, 37.300690>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.477833, 34.418125, 37.058956> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705739, -0.185973, 0.683627,
		0.159629, 0.898379, 0.409186,
		-0.690254, 0.397906, -0.604335,
		39.270756, 34.537498, 36.877655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.353817, 34.557449, 37.780727>,  <39.753933, 34.258965, 37.300690>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.353817, 34.557449, 37.780727> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.127262, 34.565060, 37.451160>,  <38.991329, 34.569626, 37.253422>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.127262, 34.565060, 37.451160>,  <39.353817, 34.557449, 37.780727>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.127262, 34.565060, 37.451160> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812417, -0.180895, 0.554306,
		-0.138498, 0.983318, 0.117911,
		-0.566389, 0.019023, -0.823919,
		38.957344, 34.570766, 37.203983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.880676, 35.065617, 38.015793>,  <39.353817, 34.557449, 37.780727>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.880676, 35.065617, 38.015793> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.753487, 34.821873, 37.725254>,  <38.677174, 34.675625, 37.550930>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.753487, 34.821873, 37.725254>,  <38.880676, 35.065617, 38.015793>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.753487, 34.821873, 37.725254> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773662, -0.276070, 0.570291,
		-0.548034, 0.743281, -0.383656,
		-0.317971, -0.609359, -0.726344,
		38.658096, 34.639065, 37.507351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.222618, 35.127686, 38.117458>,  <38.880676, 35.065617, 38.015793>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.222618, 35.127686, 38.117458> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.238571, 34.799984, 37.888641>,  <38.248142, 34.603363, 37.751350>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.238571, 34.799984, 37.888641>,  <38.222618, 35.127686, 38.117458>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.238571, 34.799984, 37.888641> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748900, -0.403507, 0.525673,
		-0.661482, 0.407433, -0.629635,
		0.039885, -0.819257, -0.572039,
		38.250538, 34.554207, 37.717030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.488663, 34.900715, 37.864517>,  <38.222618, 35.127686, 38.117458>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.488663, 34.900715, 37.864517> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.730148, 34.582249, 37.880753>,  <37.875038, 34.391167, 37.890495>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.730148, 34.582249, 37.880753>,  <37.488663, 34.900715, 37.864517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.730148, 34.582249, 37.880753> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660576, -0.471094, 0.584560,
		-0.446287, -0.379718, -0.810335,
		0.603712, -0.796169, 0.040590,
		37.911263, 34.343399, 37.892929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.094242, 34.320641, 37.590931>,  <37.488663, 34.900715, 37.864517>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.094242, 34.320641, 37.590931> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.387169, 34.170006, 37.817875>,  <37.562923, 34.079624, 37.954041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.387169, 34.170006, 37.817875>,  <37.094242, 34.320641, 37.590931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.387169, 34.170006, 37.817875> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680240, -0.443048, 0.583936,
		0.031467, -0.813567, -0.580619,
		0.732313, -0.376585, 0.567363,
		37.606861, 34.057030, 37.988083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.814785, 33.699535, 37.965199>,  <37.094242, 34.320641, 37.590931>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.814785, 33.699535, 37.965199> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.155891, 33.784435, 38.156086>,  <37.360558, 33.835373, 38.270618>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.155891, 33.784435, 38.156086>,  <36.814785, 33.699535, 37.965199>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.155891, 33.784435, 38.156086> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392124, -0.343364, 0.853428,
		0.344996, -0.914906, -0.209583,
		0.852770, 0.212247, 0.477215,
		37.411724, 33.848110, 38.299252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.897255, 33.126579, 38.308331>,  <36.814785, 33.699535, 37.965199>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.897255, 33.126579, 38.308331> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.131435, 33.386517, 38.502216>,  <37.271942, 33.542480, 38.618549>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.131435, 33.386517, 38.502216>,  <36.897255, 33.126579, 38.308331>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.131435, 33.386517, 38.502216> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287142, -0.392916, 0.873594,
		0.758155, -0.650627, -0.043435,
		0.585450, 0.649848, 0.484713,
		37.307072, 33.581470, 38.647629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.388142, 32.614017, 37.961159>,  <36.897255, 33.126579, 38.308331>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.388142, 32.614017, 37.961159> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.270905, 32.233585, 38.000248>,  <36.200562, 32.005325, 38.023701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.270905, 32.233585, 38.000248>,  <36.388142, 32.614017, 37.961159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.270905, 32.233585, 38.000248> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325942, 0.003310, -0.945384,
		0.898810, -0.308935, -0.310966,
		-0.293092, -0.951077, 0.097720,
		36.182976, 31.948261, 38.029564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.616699, 32.305481, 37.329056>,  <36.388142, 32.614017, 37.961159>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.616699, 32.305481, 37.329056> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.313271, 32.102272, 37.492268>,  <36.131214, 31.980347, 37.590195>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.313271, 32.102272, 37.492268>,  <36.616699, 32.305481, 37.329056>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.313271, 32.102272, 37.492268> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542071, 0.144532, -0.827810,
		0.361569, -0.849134, -0.385019,
		-0.758569, -0.508018, 0.408033,
		36.085701, 31.949867, 37.614677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.507465, 31.765549, 36.931496>,  <36.616699, 32.305481, 37.329056>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.507465, 31.765549, 36.931496> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.163956, 31.825397, 37.127502>,  <35.957848, 31.861307, 37.245106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.163956, 31.825397, 37.127502>,  <36.507465, 31.765549, 36.931496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.163956, 31.825397, 37.127502> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413943, 0.360972, -0.835674,
		-0.301916, -0.920496, -0.248060,
		-0.858777, 0.149621, 0.490016,
		35.906322, 31.870283, 37.274506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.991814, 31.584885, 36.393227>,  <36.507465, 31.765549, 36.931496>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.991814, 31.584885, 36.393227> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.761307, 31.751947, 36.674221>,  <35.623005, 31.852184, 36.842815>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.761307, 31.751947, 36.674221>,  <35.991814, 31.584885, 36.393227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.761307, 31.751947, 36.674221> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647480, 0.291179, -0.704262,
		-0.498689, -0.860684, 0.102629,
		-0.576263, 0.417658, 0.702483,
		35.588428, 31.877245, 36.884968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.368423, 31.407671, 36.132126>,  <35.991814, 31.584885, 36.393227>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.368423, 31.407671, 36.132126> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.265381, 31.704605, 36.379536>,  <35.203556, 31.882765, 36.527981>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.265381, 31.704605, 36.379536>,  <35.368423, 31.407671, 36.132126>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.265381, 31.704605, 36.379536> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699788, 0.298074, -0.649191,
		-0.666285, -0.600074, 0.442692,
		-0.257608, 0.742336, 0.618527,
		35.188099, 31.927305, 36.565094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.698685, 31.402807, 36.088264>,  <35.368423, 31.407671, 36.132126>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.698685, 31.402807, 36.088264> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.813461, 31.771000, 36.194378>,  <34.882328, 31.991917, 36.258045>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.813461, 31.771000, 36.194378>,  <34.698685, 31.402807, 36.088264>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.813461, 31.771000, 36.194378> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649776, 0.390503, -0.652149,
		-0.703887, 0.014749, 0.710158,
		0.286937, 0.920484, 0.265286,
		34.899544, 32.047146, 36.273964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.149635, 31.862110, 36.215900>,  <34.698685, 31.402807, 36.088264>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.149635, 31.862110, 36.215900> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.434402, 32.121319, 36.107639>,  <34.605263, 32.276844, 36.042683>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.434402, 32.121319, 36.107639>,  <34.149635, 31.862110, 36.215900>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.434402, 32.121319, 36.107639> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640744, 0.441622, -0.628027,
		-0.287449, 0.620517, 0.729611,
		0.711913, 0.648019, -0.270649,
		34.647976, 32.315723, 36.026443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.844601, 32.533558, 36.246994>,  <34.149635, 31.862110, 36.215900>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.844601, 32.533558, 36.246994> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.155258, 32.576797, 35.998756>,  <34.341652, 32.602741, 35.849812>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.155258, 32.576797, 35.998756>,  <33.844601, 32.533558, 36.246994>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.155258, 32.576797, 35.998756> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569394, 0.541887, -0.618182,
		0.269471, 0.833471, 0.482401,
		0.776644, 0.108095, -0.620596,
		34.388252, 32.609226, 35.812576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.729610, 33.147995, 36.023376>,  <33.844601, 32.533558, 36.246994>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.729610, 33.147995, 36.023376> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.004696, 32.996468, 35.775654>,  <34.169746, 32.905552, 35.627018>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.004696, 32.996468, 35.775654>,  <33.729610, 33.147995, 36.023376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.004696, 32.996468, 35.775654> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324472, 0.602736, -0.728991,
		0.649438, 0.702285, 0.291592,
		0.687713, -0.378821, -0.619311,
		34.211010, 32.882820, 35.589859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.016354, 33.721581, 35.625084>,  <33.729610, 33.147995, 36.023376>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.016354, 33.721581, 35.625084> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.142227, 33.415760, 35.400074>,  <34.217751, 33.232265, 35.265068>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.142227, 33.415760, 35.400074>,  <34.016354, 33.721581, 35.625084>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.142227, 33.415760, 35.400074> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233539, 0.512047, -0.826600,
		0.920017, 0.391491, -0.017418,
		0.314688, -0.764553, -0.562520,
		34.236633, 33.186394, 35.231319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.474411, 33.989784, 35.000149>,  <34.016354, 33.721581, 35.625084>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.474411, 33.989784, 35.000149> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.334534, 33.627758, 34.903343>,  <34.250607, 33.410542, 34.845261>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.334534, 33.627758, 34.903343>,  <34.474411, 33.989784, 35.000149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.334534, 33.627758, 34.903343> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281587, 0.347914, -0.894240,
		0.893545, -0.244564, -0.376518,
		-0.349695, -0.905066, -0.242011,
		34.229626, 33.356239, 34.830738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.647778, 33.902790, 34.318989>,  <34.474411, 33.989784, 35.000149>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.647778, 33.902790, 34.318989> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.341347, 33.651760, 34.374535>,  <34.157490, 33.501144, 34.407860>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.341347, 33.651760, 34.374535>,  <34.647778, 33.902790, 34.318989>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.341347, 33.651760, 34.374535> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394565, 0.288616, -0.872364,
		0.507395, -0.723085, -0.468720,
		-0.766074, -0.627574, 0.138862,
		34.111523, 33.463490, 34.416195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.129204, 30.915596, 41.217831> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.738453, 30.830278, 41.211948>,  <37.504002, 30.779087, 41.208420>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.738453, 30.830278, 41.211948>,  <38.129204, 30.915596, 41.217831>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.738453, 30.830278, 41.211948> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027616, -0.057681, -0.997953,
		0.212011, -0.975284, 0.062238,
		-0.976877, -0.213295, -0.014705,
		37.445389, 30.766291, 41.207539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.979523, 30.347782, 40.817341>,  <38.129204, 30.915596, 41.217831>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.979523, 30.347782, 40.817341> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.628849, 30.540207, 40.818405>,  <37.418446, 30.655663, 40.819046>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.628849, 30.540207, 40.818405>,  <37.979523, 30.347782, 40.817341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.628849, 30.540207, 40.818405> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114362, -0.203023, -0.972473,
		-0.467281, -0.852853, 0.233002,
		-0.876681, 0.481065, 0.002665,
		37.365845, 30.684526, 40.819206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.580532, 29.968998, 40.294025>,  <37.979523, 30.347782, 40.817341>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.580532, 29.968998, 40.294025> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.404118, 30.323345, 40.351608>,  <37.298267, 30.535954, 40.386158>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.404118, 30.323345, 40.351608>,  <37.580532, 29.968998, 40.294025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.404118, 30.323345, 40.351608> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096523, 0.112650, -0.988936,
		-0.892283, -0.450053, 0.035824,
		-0.441038, 0.885868, 0.143956,
		37.271805, 30.589106, 40.394794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.914001, 29.918291, 39.849728>,  <37.580532, 29.968998, 40.294025>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.914001, 29.918291, 39.849728> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.960114, 30.307013, 39.932003>,  <36.987782, 30.540245, 39.981369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.960114, 30.307013, 39.932003>,  <36.914001, 29.918291, 39.849728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.960114, 30.307013, 39.932003> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370439, 0.234188, -0.898849,
		-0.921675, 0.027427, 0.386992,
		0.115282, 0.971804, 0.205686,
		36.994698, 30.598555, 39.993710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.283600, 30.196064, 39.687126>,  <36.914001, 29.918291, 39.849728>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.283600, 30.196064, 39.687126> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.539089, 30.503328, 39.704803>,  <36.692383, 30.687687, 39.715408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.539089, 30.503328, 39.704803>,  <36.283600, 30.196064, 39.687126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.539089, 30.503328, 39.704803> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297551, 0.299564, -0.906491,
		-0.709571, 0.565851, 0.419907,
		0.638728, 0.768163, 0.044192,
		36.730709, 30.733778, 39.718060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.920906, 30.711740, 39.554142>,  <36.283600, 30.196064, 39.687126>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.920906, 30.711740, 39.554142> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.288071, 30.843056, 39.465004>,  <36.508369, 30.921844, 39.411522>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.288071, 30.843056, 39.465004>,  <35.920906, 30.711740, 39.554142>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.288071, 30.843056, 39.465004> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323768, 0.295071, -0.898948,
		-0.229358, 0.897308, 0.377138,
		0.917916, 0.328286, -0.222843,
		36.563446, 30.941542, 39.398151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.793560, 31.344339, 39.250904>,  <35.920906, 30.711740, 39.554142>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.793560, 31.344339, 39.250904> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.170593, 31.270664, 39.139465>,  <36.396812, 31.226460, 39.072601>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.170593, 31.270664, 39.139465>,  <35.793560, 31.344339, 39.250904>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.170593, 31.270664, 39.139465> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165238, 0.467740, -0.868283,
		0.290239, 0.864462, 0.410448,
		0.942580, -0.184189, -0.278598,
		36.453369, 31.215408, 39.055885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.094070, 32.100574, 39.195610>,  <35.793560, 31.344339, 39.250904>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.094070, 32.100574, 39.195610> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.264267, 31.809797, 38.980015>,  <36.366386, 31.635330, 38.850658>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.264267, 31.809797, 38.980015>,  <36.094070, 32.100574, 39.195610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.264267, 31.809797, 38.980015> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190141, 0.510482, -0.838603,
		0.884761, 0.459303, 0.078984,
		0.425492, -0.726945, -0.538987,
		36.391914, 31.591713, 38.818317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.616783, 32.394211, 38.730785>,  <36.094070, 32.100574, 39.195610>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.616783, 32.394211, 38.730785> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.503414, 32.046436, 38.568920>,  <36.435390, 31.837772, 38.471802>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.503414, 32.046436, 38.568920>,  <36.616783, 32.394211, 38.730785>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.503414, 32.046436, 38.568920> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158121, 0.458557, -0.874485,
		0.945869, -0.183866, -0.267442,
		-0.283426, -0.869436, -0.404662,
		36.418385, 31.785606, 38.447521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.275764, 32.661041, 38.828274>,  <36.616783, 32.394211, 38.730785>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.275764, 32.661041, 38.828274> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.296730, 33.038788, 38.958145>,  <37.309307, 33.265438, 39.036068>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.296730, 33.038788, 38.958145>,  <37.275764, 32.661041, 38.828274>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.296730, 33.038788, 38.958145> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101022, -0.318444, 0.942544,
		0.993503, -0.082200, 0.078712,
		0.052411, 0.944371, 0.324678,
		37.312454, 33.322098, 39.055550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.841034, 32.675621, 39.363422>,  <37.275764, 32.661041, 38.828274>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.841034, 32.675621, 39.363422> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.621113, 33.003605, 39.427158>,  <37.489162, 33.200394, 39.465401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.621113, 33.003605, 39.427158>,  <37.841034, 32.675621, 39.363422>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.621113, 33.003605, 39.427158> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145146, -0.281637, 0.948480,
		0.822589, 0.498347, 0.273857,
		-0.549800, 0.819958, 0.159338,
		37.456173, 33.249592, 39.474960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.067410, 32.850895, 39.947163>,  <37.841034, 32.675621, 39.363422>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.067410, 32.850895, 39.947163> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.737354, 33.076065, 39.928131>,  <37.539322, 33.211166, 39.916714>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.737354, 33.076065, 39.928131>,  <38.067410, 32.850895, 39.947163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.737354, 33.076065, 39.928131> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149564, -0.136462, 0.979290,
		0.544776, 0.815164, 0.196793,
		-0.825136, 0.562926, -0.047578,
		37.489815, 33.244942, 39.913857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.205750, 33.330082, 40.363026>,  <38.067410, 32.850895, 39.947163>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.205750, 33.330082, 40.363026> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.806530, 33.306576, 40.354568>,  <37.566998, 33.292473, 40.349495>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.806530, 33.306576, 40.354568>,  <38.205750, 33.330082, 40.363026>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.806530, 33.306576, 40.354568> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024166, 0.051239, 0.998394,
		-0.057591, 0.996956, -0.052559,
		-0.998048, -0.058769, -0.021141,
		37.507114, 33.288944, 40.348225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.981228, 33.801044, 40.814423>,  <38.205750, 33.330082, 40.363026>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.981228, 33.801044, 40.814423> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.634697, 33.604984, 40.775986>,  <37.426781, 33.487347, 40.752922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.634697, 33.604984, 40.775986>,  <37.981228, 33.801044, 40.814423>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.634697, 33.604984, 40.775986> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259299, 0.276904, 0.925250,
		-0.426903, 0.826484, -0.366985,
		-0.866324, -0.490151, -0.096096,
		37.374798, 33.457939, 40.747158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.463085, 34.322544, 41.049057>,  <37.981228, 33.801044, 40.814423>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.463085, 34.322544, 41.049057> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.299892, 33.960434, 41.096424>,  <37.201977, 33.743168, 41.124844>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.299892, 33.960434, 41.096424>,  <37.463085, 34.322544, 41.049057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.299892, 33.960434, 41.096424> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043356, 0.148769, 0.987921,
		-0.911960, 0.397920, -0.099944,
		-0.407982, -0.905277, 0.118419,
		37.177498, 33.688850, 41.131950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.850197, 34.432842, 41.470100>,  <37.463085, 34.322544, 41.049057>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.850197, 34.432842, 41.470100> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.992393, 34.060436, 41.503170>,  <37.077709, 33.836990, 41.523010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.992393, 34.060436, 41.503170>,  <36.850197, 34.432842, 41.470100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.992393, 34.060436, 41.503170> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099697, 0.050173, 0.993752,
		-0.929348, -0.361510, -0.074984,
		0.355489, -0.931017, 0.082670,
		37.099041, 33.781132, 41.527969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.511211, 34.201653, 42.046680>,  <36.850197, 34.432842, 41.470100>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.511211, 34.201653, 42.046680> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.771061, 33.899712, 42.010490>,  <36.926971, 33.718548, 41.988777>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.771061, 33.899712, 42.010490>,  <36.511211, 34.201653, 42.046680>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.771061, 33.899712, 42.010490> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130542, -0.006488, 0.991422,
		-0.748964, -0.655863, 0.094326,
		0.649625, -0.754852, -0.090477,
		36.965950, 33.673256, 41.983349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.374786, 33.524776, 42.472187>,  <36.511211, 34.201653, 42.046680>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.374786, 33.524776, 42.472187> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.772369, 33.537663, 42.430199>,  <37.010918, 33.545395, 42.405006>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.772369, 33.537663, 42.430199>,  <36.374786, 33.524776, 42.472187>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.772369, 33.537663, 42.430199> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105214, -0.005865, 0.994432,
		0.031426, -0.999463, -0.009220,
		0.993953, 0.032221, -0.104974,
		37.070557, 33.547329, 42.398708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.621532, 33.067646, 42.961559>,  <36.374786, 33.524776, 42.472187>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.621532, 33.067646, 42.961559> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.949940, 33.277905, 42.872459>,  <37.146984, 33.404060, 42.819000>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.949940, 33.277905, 42.872459>,  <36.621532, 33.067646, 42.961559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.949940, 33.277905, 42.872459> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239849, 0.036480, 0.970125,
		0.518073, -0.849918, -0.096126,
		0.821020, 0.525651, -0.222751,
		37.196247, 33.435600, 42.805634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.119549, 32.806065, 43.407772>,  <36.621532, 33.067646, 42.961559>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.119549, 32.806065, 43.407772> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.278034, 33.149811, 43.278461>,  <37.373127, 33.356056, 43.200874>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.278034, 33.149811, 43.278461>,  <37.119549, 32.806065, 43.407772>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.278034, 33.149811, 43.278461> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312813, 0.204681, 0.927498,
		0.863227, -0.468614, -0.187722,
		0.396216, 0.859364, -0.323275,
		37.396900, 33.407619, 43.181480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.768520, 32.837364, 43.583652>,  <37.119549, 32.806065, 43.407772>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.768520, 32.837364, 43.583652> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.681099, 33.224808, 43.536285>,  <37.628647, 33.457275, 43.507866>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.681099, 33.224808, 43.536285>,  <37.768520, 32.837364, 43.583652>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.681099, 33.224808, 43.536285> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361316, 0.193053, 0.912240,
		0.906469, 0.156583, -0.392168,
		-0.218550, 0.968614, -0.118421,
		37.615536, 33.515392, 43.500759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.397652, 33.096684, 43.881817>,  <37.768520, 32.837364, 43.583652>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.397652, 33.096684, 43.881817> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.169880, 33.423893, 43.849350>,  <38.033215, 33.620216, 43.829868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.169880, 33.423893, 43.849350>,  <38.397652, 33.096684, 43.881817>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.169880, 33.423893, 43.849350> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400035, 0.362015, 0.841972,
		0.718135, 0.446976, -0.533380,
		-0.569433, 0.818021, -0.081170,
		37.999050, 33.669300, 43.825001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.861706, 33.679920, 43.946198>,  <38.397652, 33.096684, 43.881817>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.861706, 33.679920, 43.946198> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.496464, 33.792641, 44.064064>,  <38.277317, 33.860271, 44.134785>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.496464, 33.792641, 44.064064>,  <38.861706, 33.679920, 43.946198>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.496464, 33.792641, 44.064064> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385629, 0.362191, 0.848592,
		0.132404, 0.888486, -0.439387,
		-0.913104, 0.281798, 0.294670,
		38.222534, 33.877178, 44.152466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.404270, 33.865875, 44.282036> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.766634, 33.701324, 44.241848>,  <31.984053, 33.602596, 44.217735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.766634, 33.701324, 44.241848>,  <31.404270, 33.865875, 44.282036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.766634, 33.701324, 44.241848> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071698, 0.382839, -0.921028,
		0.417353, 0.827167, 0.376313,
		0.905912, -0.411375, -0.100472,
		32.038406, 33.577911, 44.211708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.864460, 34.442371, 44.112198>,  <31.404270, 33.865875, 44.282036>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.864460, 34.442371, 44.112198> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.018372, 34.099911, 43.974247>,  <32.110718, 33.894432, 43.891476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.018372, 34.099911, 43.974247>,  <31.864460, 34.442371, 44.112198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.018372, 34.099911, 43.974247> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096636, 0.408963, -0.907420,
		0.917935, 0.315830, 0.240096,
		0.384781, -0.856154, -0.344882,
		32.133804, 33.843063, 43.870781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.403942, 34.639721, 43.661381>,  <31.864460, 34.442371, 44.112198>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.403942, 34.639721, 43.661381> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.313793, 34.268490, 43.542805>,  <32.259705, 34.045750, 43.471661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.313793, 34.268490, 43.542805>,  <32.403942, 34.639721, 43.661381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.313793, 34.268490, 43.542805> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307847, 0.220841, -0.925451,
		0.924359, -0.299824, 0.235936,
		-0.225368, -0.928081, -0.296437,
		32.246181, 33.990067, 43.453873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.961971, 34.493641, 43.160030>,  <32.403942, 34.639721, 43.661381>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.961971, 34.493641, 43.160030> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.666859, 34.234810, 43.083118>,  <32.489792, 34.079510, 43.036972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.666859, 34.234810, 43.083118>,  <32.961971, 34.493641, 43.160030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.666859, 34.234810, 43.083118> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144941, 0.126350, -0.981340,
		0.659300, -0.751879, 0.000570,
		-0.737777, -0.647080, -0.192280,
		32.445526, 34.040688, 43.025433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.236759, 34.057076, 42.616501>,  <32.961971, 34.493641, 43.160030>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.236759, 34.057076, 42.616501> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.845070, 33.978691, 42.595646>,  <32.610058, 33.931660, 42.583134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.845070, 33.978691, 42.595646>,  <33.236759, 34.057076, 42.616501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.845070, 33.978691, 42.595646> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045167, 0.039876, -0.998183,
		0.197688, -0.979800, -0.030196,
		-0.979224, -0.195965, -0.052138,
		32.551304, 33.919903, 42.580006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.268616, 33.591076, 42.122822>,  <33.236759, 34.057076, 42.616501>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.268616, 33.591076, 42.122822> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.882675, 33.695618, 42.133862>,  <32.651112, 33.758343, 42.140484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.882675, 33.695618, 42.133862>,  <33.268616, 33.591076, 42.122822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.882675, 33.695618, 42.133862> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033669, -0.018781, -0.999257,
		-0.260642, -0.965060, 0.026920,
		-0.964849, 0.261354, 0.027598,
		32.593220, 33.774025, 42.142139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.999023, 33.198029, 41.530807>,  <33.268616, 33.591076, 42.122822>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.999023, 33.198029, 41.530807> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.776154, 33.515945, 41.627026>,  <32.642433, 33.706696, 41.684757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.776154, 33.515945, 41.627026>,  <32.999023, 33.198029, 41.530807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.776154, 33.515945, 41.627026> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076786, 0.337746, -0.938100,
		-0.826837, -0.504216, -0.249213,
		-0.557176, 0.794791, 0.240544,
		32.609001, 33.754383, 41.699188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.450405, 33.145878, 41.114803>,  <32.999023, 33.198029, 41.530807>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.450405, 33.145878, 41.114803> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.456135, 33.532669, 41.216583>,  <32.459572, 33.764744, 41.277653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.456135, 33.532669, 41.216583>,  <32.450405, 33.145878, 41.114803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.456135, 33.532669, 41.216583> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008662, 0.254346, -0.967075,
		-0.999860, 0.016053, -0.004733,
		0.014321, 0.966980, 0.254449,
		32.460430, 33.822762, 41.292919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.896439, 33.529476, 40.743576>,  <32.450405, 33.145878, 41.114803>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.896439, 33.529476, 40.743576> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.167976, 33.798367, 40.861748>,  <32.330898, 33.959702, 40.932652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.167976, 33.798367, 40.861748>,  <31.896439, 33.529476, 40.743576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.167976, 33.798367, 40.861748> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059596, 0.350570, -0.934638,
		-0.731859, 0.652081, 0.197921,
		0.678845, 0.672229, 0.295429,
		32.371632, 34.000034, 40.950378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.641670, 34.118828, 40.523453>,  <31.896439, 33.529476, 40.743576>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.641670, 34.118828, 40.523453> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.025520, 34.210728, 40.588364>,  <32.255829, 34.265869, 40.627312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.025520, 34.210728, 40.588364>,  <31.641670, 34.118828, 40.523453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.025520, 34.210728, 40.588364> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079748, 0.331019, -0.940248,
		-0.269740, 0.915227, 0.299332,
		0.959625, 0.229752, 0.162276,
		32.313408, 34.279652, 40.637047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.838125, 34.761513, 40.352989>,  <31.641670, 34.118828, 40.523453>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.838125, 34.761513, 40.352989> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.201279, 34.593887, 40.348331>,  <32.419170, 34.493313, 40.345535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.201279, 34.593887, 40.348331>,  <31.838125, 34.761513, 40.352989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.201279, 34.593887, 40.348331> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119899, 0.286172, -0.950647,
		0.401709, 0.861682, 0.310056,
		0.907884, -0.419059, -0.011643,
		32.473644, 34.468170, 40.344837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.262180, 35.369877, 40.037910>,  <31.838125, 34.761513, 40.352989>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.262180, 35.369877, 40.037910> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.470093, 35.029297, 40.010029>,  <32.594841, 34.824947, 39.993301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.470093, 35.029297, 40.010029>,  <32.262180, 35.369877, 40.037910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.470093, 35.029297, 40.010029> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254164, 0.232020, -0.938918,
		0.815616, 0.470316, 0.337008,
		0.519781, -0.851451, -0.069702,
		32.626026, 34.773861, 39.989117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.926979, 35.554420, 39.736256>,  <32.262180, 35.369877, 40.037910>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.926979, 35.554420, 39.736256> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.903793, 35.162170, 39.661415>,  <32.889881, 34.926819, 39.616512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.903793, 35.162170, 39.661415>,  <32.926979, 35.554420, 39.736256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.903793, 35.162170, 39.661415> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325688, 0.158584, -0.932083,
		0.943698, -0.114968, 0.310187,
		-0.057969, -0.980629, -0.187099,
		32.886402, 34.867981, 39.605286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.558445, 35.355671, 39.355766>,  <32.926979, 35.554420, 39.736256>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.558445, 35.355671, 39.355766> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.291748, 35.075027, 39.255207>,  <33.131729, 34.906639, 39.194870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.291748, 35.075027, 39.255207>,  <33.558445, 35.355671, 39.355766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.291748, 35.075027, 39.255207> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273449, 0.083501, -0.958255,
		0.693315, -0.707650, 0.136182,
		-0.666738, -0.701611, -0.251399,
		33.091728, 34.864544, 39.179787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.133430, 35.632431, 39.107922>,  <33.558445, 35.355671, 39.355766>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.133430, 35.632431, 39.107922> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.043892, 36.022221, 39.114853>,  <33.990170, 36.256092, 39.119011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.043892, 36.022221, 39.114853>,  <34.133430, 35.632431, 39.107922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.043892, 36.022221, 39.114853> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365570, -0.100432, 0.925350,
		0.903466, 0.200802, 0.378718,
		-0.223848, 0.974470, 0.017330,
		33.976738, 36.314560, 39.120052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.448227, 35.779228, 39.775433>,  <34.133430, 35.632431, 39.107922>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.448227, 35.779228, 39.775433> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.207096, 36.088463, 39.696491>,  <34.062420, 36.274002, 39.649128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.207096, 36.088463, 39.696491>,  <34.448227, 35.779228, 39.775433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.207096, 36.088463, 39.696491> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234840, 0.064472, 0.969894,
		0.762531, 0.631021, 0.142685,
		-0.602824, 0.773082, -0.197351,
		34.026249, 36.320389, 39.637287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.648911, 36.325848, 40.211651>,  <34.448227, 35.779228, 39.775433>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.648911, 36.325848, 40.211651> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.288834, 36.443729, 40.083397>,  <34.072788, 36.514458, 40.006447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.288834, 36.443729, 40.083397>,  <34.648911, 36.325848, 40.211651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.288834, 36.443729, 40.083397> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223302, 0.319735, 0.920818,
		0.373886, 0.900510, -0.222015,
		-0.900192, 0.294705, -0.320630,
		34.018776, 36.532143, 39.987209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.465607, 36.849613, 40.589676>,  <34.648911, 36.325848, 40.211651>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.465607, 36.849613, 40.589676> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.104713, 36.782066, 40.430950>,  <33.888176, 36.741539, 40.335716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.104713, 36.782066, 40.430950>,  <34.465607, 36.849613, 40.589676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.104713, 36.782066, 40.430950> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428148, 0.460869, 0.777360,
		0.051607, 0.871255, -0.488111,
		-0.902234, -0.168867, -0.396810,
		33.834042, 36.731407, 40.311909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.088524, 37.513241, 40.691010>,  <34.465607, 36.849613, 40.589676>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.088524, 37.513241, 40.691010> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.824394, 37.215984, 40.647717>,  <33.665916, 37.037632, 40.621742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.824394, 37.215984, 40.647717>,  <34.088524, 37.513241, 40.691010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.824394, 37.215984, 40.647717> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481384, 0.308237, 0.820524,
		-0.576406, 0.593910, -0.561272,
		-0.660323, -0.743142, -0.108229,
		33.626297, 36.993042, 40.615250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.425488, 37.745739, 40.926613>,  <34.088524, 37.513241, 40.691010>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.425488, 37.745739, 40.926613> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.401073, 37.347336, 40.952660>,  <33.386425, 37.108295, 40.968288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.401073, 37.347336, 40.952660>,  <33.425488, 37.745739, 40.926613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.401073, 37.347336, 40.952660> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317527, 0.081222, 0.944764,
		-0.946283, 0.036993, -0.321218,
		-0.061039, -0.996009, 0.065113,
		33.382763, 37.048534, 40.972195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.879520, 37.665703, 41.507141>,  <33.425488, 37.745739, 40.926613>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.879520, 37.665703, 41.507141> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.047729, 37.304134, 41.475945>,  <33.148655, 37.087193, 41.457226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.047729, 37.304134, 41.475945>,  <32.879520, 37.665703, 41.507141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.047729, 37.304134, 41.475945> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411572, -0.266671, 0.871490,
		-0.808558, -0.334383, -0.484171,
		0.420526, -0.903921, -0.077996,
		33.173889, 37.032959, 41.452545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.410469, 37.172825, 41.782749>,  <32.879520, 37.665703, 41.507141>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.410469, 37.172825, 41.782749> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.770767, 36.999626, 41.796497>,  <32.986946, 36.895706, 41.804745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.770767, 36.999626, 41.796497>,  <32.410469, 37.172825, 41.782749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.770767, 36.999626, 41.796497> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107100, -0.144717, 0.983660,
		-0.420944, -0.889704, -0.176727,
		0.900742, -0.432994, 0.034370,
		33.040989, 36.869728, 41.806808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.412640, 36.628719, 42.389008>,  <32.410469, 37.172825, 41.782749>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.412640, 36.628719, 42.389008> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.804775, 36.688541, 42.337521>,  <33.040058, 36.724434, 42.306629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.804775, 36.688541, 42.337521>,  <32.412640, 36.628719, 42.389008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.804775, 36.688541, 42.337521> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169749, -0.306644, 0.936565,
		0.100603, -0.940001, -0.326003,
		0.980339, 0.149559, -0.128715,
		33.098877, 36.733410, 42.298904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.775352, 36.131790, 42.827499>,  <32.412640, 36.628719, 42.389008>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.775352, 36.131790, 42.827499> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.066853, 36.402771, 42.787537>,  <33.241753, 36.565361, 42.763561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.066853, 36.402771, 42.787537>,  <32.775352, 36.131790, 42.827499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.066853, 36.402771, 42.787537> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335431, -0.225959, 0.914565,
		0.596998, -0.700002, -0.391907,
		0.728752, 0.677451, -0.099905,
		33.285477, 36.606007, 42.757565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.306042, 35.685436, 43.029282>,  <32.775352, 36.131790, 42.827499>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.306042, 35.685436, 43.029282> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.352169, 36.081444, 43.061687>,  <33.379845, 36.319050, 43.081131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.352169, 36.081444, 43.061687>,  <33.306042, 35.685436, 43.029282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.352169, 36.081444, 43.061687> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238588, -0.106777, 0.965233,
		0.964249, -0.091983, -0.248520,
		0.115322, 0.990019, 0.081013,
		33.386765, 36.378448, 43.085991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.961102, 35.883293, 43.355927>,  <33.306042, 35.685436, 43.029282>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.961102, 35.883293, 43.355927> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.742115, 36.211681, 43.420773>,  <33.610722, 36.408714, 43.459679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.742115, 36.211681, 43.420773>,  <33.961102, 35.883293, 43.355927>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.742115, 36.211681, 43.420773> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323218, 0.028762, 0.945887,
		0.771887, 0.570240, -0.281100,
		-0.547468, 0.820975, 0.162111,
		33.577873, 36.457973, 43.469406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.365822, 36.380554, 43.681545>,  <33.961102, 35.883293, 43.355927>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.365822, 36.380554, 43.681545> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.981510, 36.469521, 43.747807>,  <33.750923, 36.522900, 43.787563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.981510, 36.469521, 43.747807>,  <34.365822, 36.380554, 43.681545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.981510, 36.469521, 43.747807> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160745, -0.040126, 0.986180,
		0.225992, 0.974125, 0.002799,
		-0.960775, 0.222418, 0.165653,
		33.693279, 36.536247, 43.797504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.261948, 36.940273, 44.155186>,  <34.365822, 36.380554, 43.681545>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.261948, 36.940273, 44.155186> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.912224, 36.756535, 44.217899>,  <33.702389, 36.646294, 44.255527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.912224, 36.756535, 44.217899>,  <34.261948, 36.940273, 44.155186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.912224, 36.756535, 44.217899> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220608, -0.088372, 0.971351,
		-0.432327, 0.883852, 0.178599,
		-0.874314, -0.459342, 0.156779,
		33.649929, 36.618732, 44.264935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.579731, 37.679825, 44.305740>,  <34.261948, 36.940273, 44.155186>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.579731, 37.679825, 44.305740> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.910789, 37.792675, 44.499813>,  <35.109425, 37.860386, 44.616257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.910789, 37.792675, 44.499813>,  <34.579731, 37.679825, 44.305740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.910789, 37.792675, 44.499813> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129089, 0.745606, -0.653764,
		-0.546203, 0.603717, 0.580678,
		0.827646, 0.282129, 0.485186,
		35.159084, 37.877316, 44.645370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.421993, 38.410854, 44.290966>,  <34.579731, 37.679825, 44.305740>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.421993, 38.410854, 44.290966> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.801479, 38.294941, 44.341496>,  <35.029171, 38.225391, 44.371815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.801479, 38.294941, 44.341496>,  <34.421993, 38.410854, 44.290966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.801479, 38.294941, 44.341496> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246966, 0.429979, -0.868404,
		0.197332, 0.855069, 0.479496,
		0.948719, -0.289783, 0.126325,
		35.086094, 38.208008, 44.379395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.794601, 38.948917, 43.974537>,  <34.421993, 38.410854, 44.290966>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.794601, 38.948917, 43.974537> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.068157, 38.659676, 44.013332>,  <35.232292, 38.486130, 44.036610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.068157, 38.659676, 44.013332>,  <34.794601, 38.948917, 43.974537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.068157, 38.659676, 44.013332> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537519, 0.409497, -0.737147,
		0.493321, 0.556261, 0.668736,
		0.683892, -0.723108, 0.096988,
		35.273323, 38.442741, 44.042427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.383541, 39.264610, 43.860600>,  <34.794601, 38.948917, 43.974537>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.383541, 39.264610, 43.860600> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.490025, 38.880959, 43.822205>,  <35.553913, 38.650768, 43.799168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.490025, 38.880959, 43.822205>,  <35.383541, 39.264610, 43.860600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.490025, 38.880959, 43.822205> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602098, 0.243218, -0.760476,
		0.752735, 0.144654, 0.642234,
		0.266209, -0.959125, -0.095983,
		35.569889, 38.593220, 43.793411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.051689, 39.235920, 43.757179>,  <35.383541, 39.264610, 43.860600>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.051689, 39.235920, 43.757179> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.913494, 38.911625, 43.568142>,  <35.830578, 38.717049, 43.454720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.913494, 38.911625, 43.568142>,  <36.051689, 39.235920, 43.757179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.913494, 38.911625, 43.568142> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711971, 0.101623, -0.694816,
		0.611339, -0.576525, 0.542110,
		-0.345488, -0.810735, -0.472595,
		35.809849, 38.668404, 43.426365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.636791, 38.783245, 43.487598>,  <36.051689, 39.235920, 43.757179>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.636791, 38.783245, 43.487598> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.331203, 38.639496, 43.273235>,  <36.147850, 38.553246, 43.144619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.331203, 38.639496, 43.273235>,  <36.636791, 38.783245, 43.487598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.331203, 38.639496, 43.273235> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604065, -0.106375, -0.789804,
		0.226830, -0.927110, 0.298354,
		-0.763973, -0.359376, -0.535905,
		36.102013, 38.531681, 43.112465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.896580, 38.246841, 43.220539>,  <36.636791, 38.783245, 43.487598>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.896580, 38.246841, 43.220539> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.584194, 38.299145, 42.976246>,  <36.396763, 38.330528, 42.829670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.584194, 38.299145, 42.976246>,  <36.896580, 38.246841, 43.220539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.584194, 38.299145, 42.976246> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556372, -0.298665, -0.775403,
		-0.283785, -0.945359, 0.160505,
		-0.780971, 0.130747, -0.610728,
		36.349903, 38.338375, 42.793026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.791431, 37.641968, 42.725464>,  <36.896580, 38.246841, 43.220539>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.791431, 37.641968, 42.725464> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.590496, 37.933464, 42.539310>,  <36.469933, 38.108364, 42.427620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.590496, 37.933464, 42.539310>,  <36.791431, 37.641968, 42.725464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.590496, 37.933464, 42.539310> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335407, -0.331851, -0.881690,
		-0.796966, -0.599003, -0.077724,
		-0.502342, 0.728746, -0.465384,
		36.439793, 38.152088, 42.399696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.410709, 37.321976, 42.114922>,  <36.791431, 37.641968, 42.725464>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.410709, 37.321976, 42.114922> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.451878, 37.712475, 42.038658>,  <36.476578, 37.946774, 41.992901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.451878, 37.712475, 42.038658>,  <36.410709, 37.321976, 42.114922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.451878, 37.712475, 42.038658> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174468, -0.206420, -0.962783,
		-0.979270, 0.065823, -0.191568,
		0.102916, 0.976247, -0.190657,
		36.482754, 38.005348, 41.981461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.228161, 37.385845, 41.490555>,  <36.410709, 37.321976, 42.114922>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.228161, 37.385845, 41.490555> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.392437, 37.748070, 41.533058>,  <36.491001, 37.965405, 41.558559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.392437, 37.748070, 41.533058>,  <36.228161, 37.385845, 41.490555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.392437, 37.748070, 41.533058> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341735, -0.044835, -0.938726,
		-0.845312, 0.421834, -0.327876,
		0.410687, 0.905564, 0.106256,
		36.515644, 38.019737, 41.564934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.122353, 37.731365, 40.932320>,  <36.228161, 37.385845, 41.490555>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.122353, 37.731365, 40.932320> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.423706, 37.961346, 41.059975>,  <36.604519, 38.099335, 41.136566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.423706, 37.961346, 41.059975>,  <36.122353, 37.731365, 40.932320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.423706, 37.961346, 41.059975> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430514, -0.064402, -0.900283,
		-0.497064, 0.815650, -0.296044,
		0.753382, 0.574950, 0.319137,
		36.649719, 38.133831, 41.155716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.136795, 38.315533, 40.481911>,  <36.122353, 37.731365, 40.932320>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.136795, 38.315533, 40.481911> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.494583, 38.276714, 40.656494>,  <36.709255, 38.253422, 40.761246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.494583, 38.276714, 40.656494>,  <36.136795, 38.315533, 40.481911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.494583, 38.276714, 40.656494> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437339, -0.013193, -0.899200,
		0.093024, 0.995192, 0.030642,
		0.894473, -0.097049, 0.436463,
		36.762924, 38.247601, 40.787434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.514164, 38.689232, 39.994774>,  <36.136795, 38.315533, 40.481911>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.514164, 38.689232, 39.994774> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.758171, 38.476688, 40.229904>,  <36.904575, 38.349163, 40.370983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.758171, 38.476688, 40.229904>,  <36.514164, 38.689232, 39.994774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.758171, 38.476688, 40.229904> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613793, -0.152295, -0.774638,
		0.501132, 0.833346, 0.233241,
		0.610020, -0.531357, 0.587822,
		36.941177, 38.317280, 40.406250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.145924, 38.984329, 39.792290>,  <36.514164, 38.689232, 39.994774>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.145924, 38.984329, 39.792290> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.207600, 38.630554, 39.968472>,  <37.244606, 38.418289, 40.074181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.207600, 38.630554, 39.968472>,  <37.145924, 38.984329, 39.792290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.207600, 38.630554, 39.968472> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750465, -0.185133, -0.634452,
		0.642674, 0.428372, 0.635191,
		0.154186, -0.884434, 0.440458,
		37.253857, 38.365223, 40.100609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<26.732338, 41.309105, 27.638142> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.491219, 40.991901, 27.602867>,  <26.346546, 40.801579, 27.581703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.491219, 40.991901, 27.602867>,  <26.732338, 41.309105, 27.638142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.491219, 40.991901, 27.602867> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289003, -0.320019, 0.902256,
		-0.743714, 0.518393, 0.422088,
		-0.602799, -0.793005, -0.088185,
		26.310379, 40.754002, 27.576412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.247263, 41.350567, 28.149193>,  <26.732338, 41.309105, 27.638142>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.247263, 41.350567, 28.149193> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.306660, 40.963226, 28.068951>,  <26.342297, 40.730820, 28.020805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.306660, 40.963226, 28.068951>,  <26.247263, 41.350567, 28.149193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.306660, 40.963226, 28.068951> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118024, -0.184052, 0.975805,
		-0.981846, -0.168574, 0.086959,
		0.148491, -0.968353, -0.200607,
		26.351208, 40.672722, 28.008768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.899887, 41.009129, 28.664658>,  <26.247263, 41.350567, 28.149193>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.899887, 41.009129, 28.664658> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.141392, 40.731174, 28.508394>,  <26.286295, 40.564404, 28.414637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.141392, 40.731174, 28.508394>,  <25.899887, 41.009129, 28.664658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.141392, 40.731174, 28.508394> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030598, -0.469495, 0.882405,
		-0.796578, -0.544715, -0.262200,
		0.603760, -0.694882, -0.390657,
		26.322519, 40.522709, 28.391197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.509239, 40.477943, 28.697029>,  <25.899887, 41.009129, 28.664658>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.509239, 40.477943, 28.697029> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.892967, 40.365749, 28.684177>,  <26.123203, 40.298431, 28.676466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.892967, 40.365749, 28.684177>,  <25.509239, 40.477943, 28.697029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.892967, 40.365749, 28.684177> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145161, -0.587649, 0.795988,
		-0.242145, -0.758943, -0.604460,
		0.959319, -0.280488, -0.032127,
		26.180763, 40.281601, 28.674540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.610209, 39.684811, 28.862480>,  <25.509239, 40.477943, 28.697029>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.610209, 39.684811, 28.862480> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.979801, 39.806831, 28.954739>,  <26.201557, 39.880043, 29.010094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.979801, 39.806831, 28.954739>,  <25.610209, 39.684811, 28.862480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.979801, 39.806831, 28.954739> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047152, -0.689370, 0.722873,
		0.379515, -0.657047, -0.651350,
		0.923983, 0.305054, 0.230645,
		26.256996, 39.898346, 29.023932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.883314, 39.039986, 29.048143>,  <25.610209, 39.684811, 28.862480>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.883314, 39.039986, 29.048143> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.139427, 39.299232, 29.213058>,  <26.293095, 39.454781, 29.312008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.139427, 39.299232, 29.213058>,  <25.883314, 39.039986, 29.048143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.139427, 39.299232, 29.213058> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052266, -0.572251, 0.818411,
		0.766358, -0.502467, -0.400278,
		0.640284, 0.648117, 0.412287,
		26.331512, 39.493668, 29.336744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.531755, 38.760162, 29.208509>,  <25.883314, 39.039986, 29.048143>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.531755, 38.760162, 29.208509> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.499073, 39.067734, 29.462149>,  <26.479464, 39.252277, 29.614332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.499073, 39.067734, 29.462149>,  <26.531755, 38.760162, 29.208509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.499073, 39.067734, 29.462149> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042662, -0.632942, 0.773023,
		0.995743, 0.090213, 0.018912,
		-0.081707, 0.768925, 0.634096,
		26.474562, 39.298412, 29.652378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.970167, 38.589264, 29.686380>,  <26.531755, 38.760162, 29.208509>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.970167, 38.589264, 29.686380> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.749798, 38.871559, 29.864555>,  <26.617577, 39.040936, 29.971460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.749798, 38.871559, 29.864555>,  <26.970167, 38.589264, 29.686380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.749798, 38.871559, 29.864555> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048300, -0.505886, 0.861247,
		0.833158, 0.495995, 0.244616,
		-0.550922, 0.705740, 0.445439,
		26.584520, 39.083282, 29.998188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.308798, 38.763393, 30.371059>,  <26.970167, 38.589264, 29.686380>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.308798, 38.763393, 30.371059> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.923801, 38.866894, 30.403704>,  <26.692804, 38.928993, 30.423290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.923801, 38.866894, 30.403704>,  <27.308798, 38.763393, 30.371059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.923801, 38.866894, 30.403704> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009697, -0.333405, 0.942734,
		0.271142, 0.906581, 0.323409,
		-0.962491, 0.258751, 0.081609,
		26.635054, 38.944519, 30.428186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.194149, 39.046970, 31.019535>,  <27.308798, 38.763393, 30.371059>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.194149, 39.046970, 31.019535> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.831085, 38.918709, 30.911209>,  <26.613247, 38.841751, 30.846212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.831085, 38.918709, 30.911209>,  <27.194149, 39.046970, 31.019535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.831085, 38.918709, 30.911209> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067954, -0.524458, 0.848720,
		-0.414174, 0.788751, 0.454238,
		-0.907658, -0.320650, -0.270816,
		26.558788, 38.822514, 30.829964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.713598, 39.042206, 31.685324>,  <27.194149, 39.046970, 31.019535>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.713598, 39.042206, 31.685324> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.487759, 38.835758, 31.427689>,  <26.352255, 38.711891, 31.273108>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.487759, 38.835758, 31.427689>,  <26.713598, 39.042206, 31.685324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.487759, 38.835758, 31.427689> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235206, -0.647398, 0.724950,
		-0.791143, 0.560799, 0.244126,
		-0.564598, -0.516119, -0.644088,
		26.318378, 38.680923, 31.234463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.023609, 39.004616, 31.977404>,  <26.713598, 39.042206, 31.685324>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.023609, 39.004616, 31.977404> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.086418, 38.707397, 31.717178>,  <26.124104, 38.529068, 31.561043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.086418, 38.707397, 31.717178>,  <26.023609, 39.004616, 31.977404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.086418, 38.707397, 31.717178> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415336, -0.647334, 0.639105,
		-0.896013, 0.169848, -0.410259,
		0.157024, -0.743042, -0.650563,
		26.133526, 38.484486, 31.522009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.416962, 38.495476, 32.016270>,  <26.023609, 39.004616, 31.977404>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.416962, 38.495476, 32.016270> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.681236, 38.260925, 31.828800>,  <25.839802, 38.120193, 31.716318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.681236, 38.260925, 31.828800>,  <25.416962, 38.495476, 32.016270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.681236, 38.260925, 31.828800> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404503, -0.804050, 0.435753,
		-0.632351, -0.098318, -0.768418,
		0.660689, -0.586376, -0.468672,
		25.879442, 38.085014, 31.688198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.952913, 37.831547, 31.780212>,  <25.416962, 38.495476, 32.016270>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.952913, 37.831547, 31.780212> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.339352, 37.728882, 31.769001>,  <25.571215, 37.667282, 31.762274>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.339352, 37.728882, 31.769001>,  <24.952913, 37.831547, 31.780212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.339352, 37.728882, 31.769001> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218547, -0.870744, 0.440502,
		-0.137463, -0.419442, -0.897314,
		0.966096, -0.256658, -0.028027,
		25.629181, 37.651886, 31.760593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.908348, 37.192360, 31.504349>,  <24.952913, 37.831547, 31.780212>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.908348, 37.192360, 31.504349> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.263374, 37.229645, 31.684811>,  <25.476389, 37.252014, 31.793087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.263374, 37.229645, 31.684811>,  <24.908348, 37.192360, 31.504349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.263374, 37.229645, 31.684811> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131354, -0.887459, 0.441773,
		0.441560, -0.451363, -0.775433,
		0.887565, 0.093213, 0.451155,
		25.529644, 37.257610, 31.820158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.182106, 36.531937, 31.455372>,  <24.908348, 37.192360, 31.504349>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.182106, 36.531937, 31.455372> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.416451, 36.709850, 31.726351>,  <25.557056, 36.816601, 31.888939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.416451, 36.709850, 31.726351>,  <25.182106, 36.531937, 31.455372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.416451, 36.709850, 31.726351> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020246, -0.843700, 0.536433,
		0.810160, -0.300559, -0.503294,
		0.585859, 0.444787, 0.677447,
		25.592209, 36.843285, 31.929585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.670786, 36.034336, 31.759672>,  <25.182106, 36.531937, 31.455372>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.670786, 36.034336, 31.759672> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.642845, 36.319656, 32.038620>,  <25.626081, 36.490849, 32.205990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.642845, 36.319656, 32.038620>,  <25.670786, 36.034336, 31.759672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.642845, 36.319656, 32.038620> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143799, -0.698976, 0.700538,
		0.987139, -0.051348, 0.151395,
		-0.069850, 0.713299, 0.697371,
		25.621891, 36.533646, 32.247829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.065435, 35.774174, 32.421921>,  <25.670786, 36.034336, 31.759672>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.065435, 35.774174, 32.421921> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.818668, 36.059929, 32.554020>,  <25.670609, 36.231380, 32.633278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.818668, 36.059929, 32.554020>,  <26.065435, 35.774174, 32.421921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.818668, 36.059929, 32.554020> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318144, -0.610166, 0.725591,
		0.719858, 0.342565, 0.603701,
		-0.616919, 0.714386, 0.330248,
		25.633593, 36.274246, 32.653095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.230602, 35.753845, 33.114548>,  <26.065435, 35.774174, 32.421921>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.230602, 35.753845, 33.114548> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.875736, 35.927956, 33.053261>,  <25.662817, 36.032421, 33.016491>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.875736, 35.927956, 33.053261>,  <26.230602, 35.753845, 33.114548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.875736, 35.927956, 33.053261> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409782, -0.590459, 0.695296,
		0.212180, 0.679626, 0.702202,
		-0.887163, 0.435278, -0.153215,
		25.609587, 36.058540, 33.007298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.799021, 35.223408, 32.972988>,  <26.230602, 35.753845, 33.114548>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.799021, 35.223408, 32.972988> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.068052, 34.936722, 33.046703>,  <27.229471, 34.764709, 33.090931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.068052, 34.936722, 33.046703>,  <26.799021, 35.223408, 32.972988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.068052, 34.936722, 33.046703> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076862, -0.180026, -0.980654,
		0.736024, 0.673731, -0.065994,
		0.672578, -0.716713, 0.184287,
		27.269825, 34.721706, 33.101990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.359894, 35.501118, 32.639729>,  <26.799021, 35.223408, 32.972988>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.359894, 35.501118, 32.639729> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.383902, 35.108013, 32.709671>,  <27.398306, 34.872150, 32.751637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.383902, 35.108013, 32.709671>,  <27.359894, 35.501118, 32.639729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.383902, 35.108013, 32.709671> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112132, -0.167429, -0.979487,
		0.991879, 0.078396, 0.100150,
		0.060020, -0.982762, 0.174860,
		27.401907, 34.813183, 32.762131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.937866, 35.366024, 32.302204>,  <27.359894, 35.501118, 32.639729>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.937866, 35.366024, 32.302204> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.727102, 35.027512, 32.333652>,  <27.600645, 34.824406, 32.352520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.727102, 35.027512, 32.333652>,  <27.937866, 35.366024, 32.302204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.727102, 35.027512, 32.333652> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080236, -0.141616, -0.986665,
		0.846126, -0.513574, 0.142521,
		-0.526908, -0.846278, 0.078618,
		27.569029, 34.773628, 32.357239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.287165, 34.904846, 32.056561>,  <27.937866, 35.366024, 32.302204>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.287165, 34.904846, 32.056561> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.924978, 34.744595, 32.000519>,  <27.707666, 34.648445, 31.966894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.924978, 34.744595, 32.000519>,  <28.287165, 34.904846, 32.056561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.924978, 34.744595, 32.000519> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257700, -0.256669, -0.931511,
		0.337231, -0.879555, 0.335646,
		-0.905465, -0.400630, -0.140104,
		27.653339, 34.624405, 31.958487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.326128, 34.342060, 31.532316>,  <28.287165, 34.904846, 32.056561>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.326128, 34.342060, 31.532316> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.929279, 34.391167, 31.522331>,  <27.691170, 34.420631, 31.516340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.929279, 34.391167, 31.522331>,  <28.326128, 34.342060, 31.532316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.929279, 34.391167, 31.522331> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006864, -0.252229, -0.967643,
		-0.125087, -0.959849, 0.251084,
		-0.992122, 0.122763, -0.024962,
		27.631643, 34.427998, 31.514843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.919111, 33.836330, 31.114088>,  <28.326128, 34.342060, 31.532316>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.919111, 33.836330, 31.114088> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.680841, 34.157497, 31.122976>,  <27.537880, 34.350197, 31.128309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.680841, 34.157497, 31.122976>,  <27.919111, 33.836330, 31.114088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.680841, 34.157497, 31.122976> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019424, 0.013257, -0.999723,
		-0.802993, -0.595939, 0.007699,
		-0.595672, 0.802920, 0.022221,
		27.502140, 34.398373, 31.129642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.628241, 33.745544, 30.503933>,  <27.919111, 33.836330, 31.114088>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.628241, 33.745544, 30.503933> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.479284, 34.107979, 30.584257>,  <27.389910, 34.325439, 30.632452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.479284, 34.107979, 30.584257>,  <27.628241, 33.745544, 30.503933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.479284, 34.107979, 30.584257> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062646, 0.240421, -0.968645,
		-0.925959, -0.348135, -0.146294,
		-0.372391, 0.906091, 0.200810,
		27.367567, 34.379807, 30.644501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.179319, 33.811634, 29.967871>,  <27.628241, 33.745544, 30.503933>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.179319, 33.811634, 29.967871> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.235315, 34.181835, 30.108635>,  <27.268913, 34.403957, 30.193094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.235315, 34.181835, 30.108635>,  <27.179319, 33.811634, 29.967871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.235315, 34.181835, 30.108635> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014148, 0.357244, -0.933904,
		-0.990052, 0.125756, 0.063104,
		0.139988, 0.925506, 0.351911,
		27.277311, 34.459488, 30.214209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.672884, 34.205437, 29.723547>,  <27.179319, 33.811634, 29.967871>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.672884, 34.205437, 29.723547> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.996519, 34.431660, 29.787453>,  <27.190701, 34.567394, 29.825796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.996519, 34.431660, 29.787453>,  <26.672884, 34.205437, 29.723547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.996519, 34.431660, 29.787453> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086200, 0.383118, -0.919669,
		-0.581332, 0.730321, 0.358727,
		0.809088, 0.565555, 0.159765,
		27.239244, 34.601326, 29.835382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.438723, 34.916271, 29.615604>,  <26.672884, 34.205437, 29.723547>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.438723, 34.916271, 29.615604> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.833008, 34.951824, 29.558378>,  <27.069580, 34.973156, 29.524042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.833008, 34.951824, 29.558378>,  <26.438723, 34.916271, 29.615604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.833008, 34.951824, 29.558378> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167290, 0.418167, -0.892833,
		-0.019527, 0.904012, 0.427061,
		0.985714, 0.088878, -0.143067,
		27.128721, 34.978489, 29.515459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.558750, 35.563000, 29.386072>,  <26.438723, 34.916271, 29.615604>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.558750, 35.563000, 29.386072> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.875780, 35.357685, 29.254396>,  <27.065998, 35.234497, 29.175390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.875780, 35.357685, 29.254396>,  <26.558750, 35.563000, 29.386072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.875780, 35.357685, 29.254396> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124476, 0.392298, -0.911377,
		0.596937, 0.763309, 0.247033,
		0.792573, -0.513285, -0.329191,
		27.113552, 35.203701, 29.155640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.930271, 36.057339, 29.117577>,  <26.558750, 35.563000, 29.386072>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.930271, 36.057339, 29.117577> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.078466, 35.727158, 28.947227>,  <27.167383, 35.529049, 28.845018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.078466, 35.727158, 28.947227>,  <26.930271, 36.057339, 29.117577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.078466, 35.727158, 28.947227> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006897, 0.456041, -0.889932,
		0.928812, 0.332645, 0.163264,
		0.370486, -0.825454, -0.425871,
		27.189611, 35.479523, 28.819466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.423944, 36.331467, 28.721350>,  <26.930271, 36.057339, 29.117577>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.423944, 36.331467, 28.721350> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.402603, 35.977337, 28.536589>,  <27.389799, 35.764858, 28.425732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.402603, 35.977337, 28.536589>,  <27.423944, 36.331467, 28.721350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.402603, 35.977337, 28.536589> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044752, 0.459975, -0.886804,
		0.997573, -0.067983, 0.015080,
		-0.053351, -0.885326, -0.461900,
		27.386599, 35.711739, 28.398018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.957369, 36.336823, 28.309532>,  <27.423944, 36.331467, 28.721350>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.957369, 36.336823, 28.309532> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.720377, 36.055428, 28.152525>,  <27.578182, 35.886589, 28.058321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.720377, 36.055428, 28.152525>,  <27.957369, 36.336823, 28.309532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.720377, 36.055428, 28.152525> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023048, 0.501848, -0.864649,
		0.805256, -0.503240, -0.313548,
		-0.592479, -0.703491, -0.392517,
		27.542633, 35.844379, 28.034769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.311983, 36.048332, 27.663424>,  <27.957369, 36.336823, 28.309532>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.311983, 36.048332, 27.663424> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.921701, 35.971832, 27.620665>,  <27.687532, 35.925930, 27.595009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.921701, 35.971832, 27.620665>,  <28.311983, 36.048332, 27.663424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.921701, 35.971832, 27.620665> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002190, 0.496386, -0.868099,
		0.219087, -0.846772, -0.484744,
		-0.975703, -0.191251, -0.106897,
		27.628990, 35.914455, 27.588594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.147860, 35.948055, 26.952137>,  <28.311983, 36.048332, 27.663424>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.147860, 35.948055, 26.952137> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.781015, 36.036457, 27.084843>,  <27.560909, 36.089497, 27.164467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.781015, 36.036457, 27.084843>,  <28.147860, 35.948055, 26.952137>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.781015, 36.036457, 27.084843> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133285, 0.614356, -0.777690,
		-0.375695, -0.757446, -0.533975,
		-0.917109, 0.221003, 0.331766,
		27.505882, 36.102757, 27.184372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.702641, 35.902603, 26.377729>,  <28.147860, 35.948055, 26.952137>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.702641, 35.902603, 26.377729> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.465170, 36.122341, 26.612938>,  <27.322687, 36.254185, 26.754063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.465170, 36.122341, 26.612938>,  <27.702641, 35.902603, 26.377729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.465170, 36.122341, 26.612938> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169014, 0.629310, -0.758554,
		-0.786754, -0.549719, -0.280760,
		-0.593677, 0.549343, 0.588022,
		27.287067, 36.287144, 26.789345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.321047, 36.144642, 25.912830>,  <27.702641, 35.902603, 26.377729>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.321047, 36.144642, 25.912830> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.215183, 36.382626, 26.216404>,  <27.151665, 36.525414, 26.398548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.215183, 36.382626, 26.216404>,  <27.321047, 36.144642, 25.912830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.215183, 36.382626, 26.216404> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257536, 0.714809, -0.650172,
		-0.929317, -0.367528, -0.035960,
		-0.264661, 0.594955, 0.758936,
		27.135784, 36.561111, 26.444084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.611782, 36.272224, 25.866226>,  <27.321047, 36.144642, 25.912830>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.611782, 36.272224, 25.866226> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.797483, 36.573742, 26.052242>,  <26.908905, 36.754654, 26.163853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.797483, 36.573742, 26.052242>,  <26.611782, 36.272224, 25.866226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.797483, 36.573742, 26.052242> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267439, 0.619851, -0.737741,
		-0.844361, 0.218129, 0.489362,
		0.464254, 0.753794, 0.465041,
		26.936760, 36.799881, 26.191755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.209881, 36.881580, 25.762354>,  <26.611782, 36.272224, 25.866226>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.209881, 36.881580, 25.762354> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.551250, 37.049381, 25.886086>,  <26.756073, 37.150063, 25.960323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.551250, 37.049381, 25.886086>,  <26.209881, 36.881580, 25.762354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.551250, 37.049381, 25.886086> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170019, 0.785065, -0.595622,
		-0.492709, 0.455726, 0.741317,
		0.853423, 0.419507, 0.309327,
		26.807278, 37.175232, 25.978884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.037115, 37.622147, 25.629543>,  <26.209881, 36.881580, 25.762354>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.037115, 37.622147, 25.629543> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.429436, 37.654083, 25.700710>,  <26.664827, 37.673244, 25.743410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.429436, 37.654083, 25.700710>,  <26.037115, 37.622147, 25.629543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.429436, 37.654083, 25.700710> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031205, 0.836322, -0.547350,
		-0.192499, 0.542393, 0.817774,
		0.980801, 0.079845, 0.177916,
		26.723677, 37.678036, 25.754086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.148104, 38.221264, 26.013384>,  <26.037115, 37.622147, 25.629543>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.148104, 38.221264, 26.013384> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.471926, 38.112713, 25.805162>,  <26.666218, 38.047581, 25.680229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.471926, 38.112713, 25.805162>,  <26.148104, 38.221264, 26.013384>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.471926, 38.112713, 25.805162> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021987, 0.872096, -0.488840,
		0.586634, 0.407188, 0.700042,
		0.809553, -0.271379, -0.520554,
		26.714792, 38.031300, 25.648996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.499704, 38.794262, 26.038830>,  <26.148104, 38.221264, 26.013384>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.499704, 38.794262, 26.038830> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.627188, 38.588066, 25.720661>,  <26.703678, 38.464348, 25.529760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.627188, 38.588066, 25.720661>,  <26.499704, 38.794262, 26.038830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.627188, 38.588066, 25.720661> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016507, 0.836037, -0.548424,
		0.947709, 0.187917, 0.257942,
		0.318708, -0.515489, -0.795422,
		26.722799, 38.433418, 25.482035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.772095, 34.850319, 44.024734> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.497200, 34.616268, 44.196938>,  <38.332264, 34.475838, 44.300259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.497200, 34.616268, 44.196938>,  <38.772095, 34.850319, 44.024734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.497200, 34.616268, 44.196938> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211008, 0.406291, 0.889046,
		-0.695117, 0.701822, -0.155749,
		-0.687232, -0.585127, 0.430510,
		38.291031, 34.440731, 44.326092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.475197, 35.239361, 44.593155>,  <38.772095, 34.850319, 44.024734>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.475197, 35.239361, 44.593155> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.363678, 34.863251, 44.671284>,  <38.296768, 34.637585, 44.718163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.363678, 34.863251, 44.671284>,  <38.475197, 35.239361, 44.593155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.363678, 34.863251, 44.671284> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105000, 0.172321, 0.979429,
		-0.954593, 0.293569, 0.050687,
		-0.278795, -0.940278, 0.195321,
		38.280041, 34.581169, 44.729881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.034073, 35.231342, 45.105206>,  <38.475197, 35.239361, 44.593155>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.034073, 35.231342, 45.105206> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.109661, 34.842365, 45.159813>,  <38.155014, 34.608978, 45.192577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.109661, 34.842365, 45.159813>,  <38.034073, 35.231342, 45.105206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.109661, 34.842365, 45.159813> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058572, 0.149938, 0.986959,
		-0.980234, -0.178510, 0.085292,
		0.188971, -0.972447, 0.136519,
		38.166351, 34.550632, 45.200768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.525928, 34.979641, 45.602577>,  <38.034073, 35.231342, 45.105206>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.525928, 34.979641, 45.602577> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.843513, 34.736523, 45.608444>,  <38.034065, 34.590652, 45.611965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.843513, 34.736523, 45.608444>,  <37.525928, 34.979641, 45.602577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.843513, 34.736523, 45.608444> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056681, -0.049979, 0.997141,
		-0.605322, -0.792521, -0.074132,
		0.793960, -0.607793, 0.014667,
		38.081703, 34.554184, 45.612843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.390572, 34.627403, 46.114765>,  <37.525928, 34.979641, 45.602577>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.390572, 34.627403, 46.114765> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.773838, 34.520397, 46.074051>,  <38.003796, 34.456196, 46.049622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.773838, 34.520397, 46.074051>,  <37.390572, 34.627403, 46.114765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.773838, 34.520397, 46.074051> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068804, -0.129914, 0.989135,
		-0.277831, -0.954755, -0.106073,
		0.958163, -0.267515, -0.101786,
		38.061287, 34.440144, 46.043514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.513447, 34.041622, 46.483391>,  <37.390572, 34.627403, 46.114765>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.513447, 34.041622, 46.483391> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.875568, 34.207436, 46.446308>,  <38.092842, 34.306923, 46.424057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.875568, 34.207436, 46.446308>,  <37.513447, 34.041622, 46.483391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.875568, 34.207436, 46.446308> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134099, -0.071812, 0.988363,
		0.403049, -0.907197, -0.120600,
		0.905300, 0.414531, -0.092710,
		38.147160, 34.331795, 46.418495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.903488, 33.600666, 46.818165>,  <37.513447, 34.041622, 46.483391>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.903488, 33.600666, 46.818165> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.102924, 33.947243, 46.807697>,  <38.222584, 34.155190, 46.801414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.102924, 33.947243, 46.807697>,  <37.903488, 33.600666, 46.818165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.102924, 33.947243, 46.807697> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225052, -0.100230, 0.969178,
		0.837116, -0.489109, -0.244968,
		0.498587, 0.866445, -0.026171,
		38.252499, 34.207176, 46.799847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.464386, 33.447365, 47.269558>,  <37.903488, 33.600666, 46.818165>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.464386, 33.447365, 47.269558> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.476021, 33.845707, 47.235111>,  <38.483002, 34.084713, 47.214443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.476021, 33.845707, 47.235111>,  <38.464386, 33.447365, 47.269558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.476021, 33.845707, 47.235111> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042704, 0.087314, 0.995265,
		0.998664, -0.025276, 0.045067,
		0.029091, 0.995860, -0.086118,
		38.484749, 34.144466, 47.209274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.011089, 33.701618, 47.729359>,  <38.464386, 33.447365, 47.269558>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.011089, 33.701618, 47.729359> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.760303, 34.007343, 47.669041>,  <38.609833, 34.190777, 47.632851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.760303, 34.007343, 47.669041>,  <39.011089, 33.701618, 47.729359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.760303, 34.007343, 47.669041> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203911, 0.025818, 0.978649,
		0.751888, 0.644328, 0.139665,
		-0.626965, 0.764314, -0.150797,
		38.572212, 34.236637, 47.623802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.259773, 34.219952, 48.104309>,  <39.011089, 33.701618, 47.729359>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.259773, 34.219952, 48.104309> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.866856, 34.252800, 48.036957>,  <38.631104, 34.272507, 47.996548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.866856, 34.252800, 48.036957>,  <39.259773, 34.219952, 48.104309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.866856, 34.252800, 48.036957> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169021, -0.000905, 0.985612,
		0.080783, 0.996622, 0.014768,
		-0.982296, 0.082117, -0.168377,
		38.572166, 34.277435, 47.986443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.081345, 34.507717, 48.719624>,  <39.259773, 34.219952, 48.104309>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.081345, 34.507717, 48.719624> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.725376, 34.398937, 48.573151>,  <38.511795, 34.333672, 48.485268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.725376, 34.398937, 48.573151>,  <39.081345, 34.507717, 48.719624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.725376, 34.398937, 48.573151> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294550, -0.270328, 0.916604,
		-0.348255, 0.923563, 0.160469,
		-0.889921, -0.271946, -0.366179,
		38.458401, 34.317352, 48.463299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.494534, 34.918839, 49.052563>,  <39.081345, 34.507717, 48.719624>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.494534, 34.918839, 49.052563> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.355042, 34.565834, 48.926353>,  <38.271347, 34.354031, 48.850628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.355042, 34.565834, 48.926353>,  <38.494534, 34.918839, 49.052563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.355042, 34.565834, 48.926353> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442564, -0.141693, 0.885472,
		-0.826149, 0.448430, -0.341157,
		-0.348732, -0.882516, -0.315518,
		38.250423, 34.301079, 48.831699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.875999, 34.859074, 49.191090>,  <38.494534, 34.918839, 49.052563>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.875999, 34.859074, 49.191090> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.942230, 34.466053, 49.157196>,  <37.981968, 34.230240, 49.136860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.942230, 34.466053, 49.157196>,  <37.875999, 34.859074, 49.191090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.942230, 34.466053, 49.157196> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697679, -0.177429, 0.694091,
		-0.697014, -0.055807, -0.714882,
		0.165576, -0.982550, -0.084735,
		37.991901, 34.171288, 49.131775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.281654, 34.551899, 49.343666>,  <37.875999, 34.859074, 49.191090>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.281654, 34.551899, 49.343666> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.519203, 34.230530, 49.360771>,  <37.661732, 34.037708, 49.371033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.519203, 34.230530, 49.360771>,  <37.281654, 34.551899, 49.343666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.519203, 34.230530, 49.360771> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588915, -0.397876, 0.703473,
		-0.548170, -0.442959, -0.709434,
		0.593876, -0.803420, 0.042761,
		37.697365, 33.989506, 49.373600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.679474, 34.893833, 49.471191>,  <37.281654, 34.551899, 49.343666>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.679474, 34.893833, 49.471191> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.371838, 35.103596, 49.617336>,  <36.187256, 35.229454, 49.705025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.371838, 35.103596, 49.617336>,  <36.679474, 34.893833, 49.471191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.371838, 35.103596, 49.617336> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283525, 0.232395, -0.930380,
		-0.572807, -0.819139, -0.030051,
		-0.769094, 0.524408, 0.365363,
		36.141109, 35.260918, 49.726944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.048458, 34.726444, 49.060486>,  <36.679474, 34.893833, 49.471191>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.048458, 34.726444, 49.060486> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.002048, 35.096409, 49.205307>,  <35.974201, 35.318386, 49.292198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.002048, 35.096409, 49.205307>,  <36.048458, 34.726444, 49.060486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.002048, 35.096409, 49.205307> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100125, 0.351767, -0.930717,
		-0.988186, -0.144240, 0.051791,
		-0.116028, 0.924908, 0.362053,
		35.967239, 35.373882, 49.313923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.471127, 35.023018, 48.711887>,  <36.048458, 34.726444, 49.060486>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.471127, 35.023018, 48.711887> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.664352, 35.341629, 48.857319>,  <35.780289, 35.532795, 48.944576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.664352, 35.341629, 48.857319>,  <35.471127, 35.023018, 48.711887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.664352, 35.341629, 48.857319> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036411, 0.433157, -0.900583,
		-0.874828, 0.421801, 0.238245,
		0.483064, 0.796529, 0.363580,
		35.809273, 35.580589, 48.966393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.184391, 35.622356, 48.360794>,  <35.471127, 35.023018, 48.711887>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.184391, 35.622356, 48.360794> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.526318, 35.770729, 48.505955>,  <35.731472, 35.859753, 48.593052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.526318, 35.770729, 48.505955>,  <35.184391, 35.622356, 48.360794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.526318, 35.770729, 48.505955> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069645, 0.610988, -0.788570,
		-0.514234, 0.699358, 0.496449,
		0.854817, 0.370934, 0.362898,
		35.782764, 35.882008, 48.614822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.093552, 36.246323, 48.353062>,  <35.184391, 35.622356, 48.360794>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.093552, 36.246323, 48.353062> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.493225, 36.231544, 48.359631>,  <35.733028, 36.222679, 48.363571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.493225, 36.231544, 48.359631>,  <35.093552, 36.246323, 48.353062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.493225, 36.231544, 48.359631> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037683, 0.704077, -0.709123,
		0.014636, 0.709162, 0.704893,
		0.999183, -0.036941, 0.016419,
		35.792980, 36.220463, 48.364555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.297466, 36.902920, 48.407055>,  <35.093552, 36.246323, 48.353062>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.297466, 36.902920, 48.407055> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.608025, 36.709084, 48.245869>,  <35.794361, 36.592781, 48.149155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.608025, 36.709084, 48.245869>,  <35.297466, 36.902920, 48.407055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.608025, 36.709084, 48.245869> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003103, 0.642316, -0.766434,
		0.630237, 0.593806, 0.500196,
		0.776397, -0.484587, -0.402968,
		35.840942, 36.563709, 48.124977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.645287, 37.324696, 47.909458>,  <35.297466, 36.902920, 48.407055>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.645287, 37.324696, 47.909458> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.790405, 36.974888, 47.780712>,  <35.877476, 36.765003, 47.703465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.790405, 36.974888, 47.780712>,  <35.645287, 37.324696, 47.909458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.790405, 36.974888, 47.780712> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013621, 0.340384, -0.940188,
		0.931767, 0.345486, 0.111580,
		0.362802, -0.874516, -0.321865,
		35.899246, 36.712532, 47.684155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.258438, 37.522633, 47.523102>,  <35.645287, 37.324696, 47.909458>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.258438, 37.522633, 47.523102> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.179184, 37.150887, 47.398506>,  <36.131634, 36.927837, 47.323750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.179184, 37.150887, 47.398506>,  <36.258438, 37.522633, 47.523102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.179184, 37.150887, 47.398506> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007694, 0.319250, -0.947639,
		0.980145, -0.185360, -0.070404,
		-0.198131, -0.929366, -0.311485,
		36.119743, 36.872078, 47.305061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.769962, 37.336170, 46.971111>,  <36.258438, 37.522633, 47.523102>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.769962, 37.336170, 46.971111> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.426712, 37.137508, 46.919041>,  <36.220760, 37.018311, 46.887798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.426712, 37.137508, 46.919041>,  <36.769962, 37.336170, 46.971111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.426712, 37.137508, 46.919041> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032304, 0.305260, -0.951721,
		0.512417, -0.812494, -0.277996,
		-0.858129, -0.496658, -0.130174,
		36.169273, 36.988510, 46.879990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.887131, 37.163483, 46.342232>,  <36.769962, 37.336170, 46.971111>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.887131, 37.163483, 46.342232> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.498844, 37.074692, 46.378971>,  <36.265873, 37.021420, 46.401016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.498844, 37.074692, 46.378971>,  <36.887131, 37.163483, 46.342232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.498844, 37.074692, 46.378971> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203136, 0.554385, -0.807089,
		0.128233, -0.802113, -0.583242,
		-0.970718, -0.221973, 0.091847,
		36.207630, 37.008099, 46.406525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.557468, 37.004189, 45.594944>,  <36.887131, 37.163483, 46.342232>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.557468, 37.004189, 45.594944> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.232346, 37.088024, 45.812355>,  <36.037273, 37.138325, 45.942802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.232346, 37.088024, 45.812355>,  <36.557468, 37.004189, 45.594944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.232346, 37.088024, 45.812355> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379465, 0.517429, -0.766990,
		-0.441985, -0.829663, -0.341040,
		-0.812807, 0.209586, 0.543524,
		35.988503, 37.150898, 45.975410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.934757, 36.750843, 45.162052>,  <36.557468, 37.004189, 45.594944>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.934757, 36.750843, 45.162052> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.784279, 37.002968, 45.433693>,  <35.693993, 37.154243, 45.596676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.784279, 37.002968, 45.433693>,  <35.934757, 36.750843, 45.162052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.784279, 37.002968, 45.433693> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546639, 0.440803, -0.711954,
		-0.748105, -0.639058, 0.178726,
		-0.376197, 0.630315, 0.679102,
		35.671421, 37.192062, 45.637424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.226505, 36.711349, 45.010109>,  <35.934757, 36.750843, 45.162052>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.226505, 36.711349, 45.010109> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.288189, 37.059834, 45.196537>,  <35.325199, 37.268925, 45.308392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.288189, 37.059834, 45.196537>,  <35.226505, 36.711349, 45.010109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.288189, 37.059834, 45.196537> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269280, 0.490912, -0.828549,
		-0.950636, 0.002265, 0.310300,
		0.154207, 0.871206, 0.466068,
		35.334450, 37.321194, 45.336357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.874500, 37.062054, 44.639954>,  <35.226505, 36.711349, 45.010109>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.874500, 37.062054, 44.639954> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.078754, 37.353512, 44.822525>,  <35.201305, 37.528385, 44.932068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.078754, 37.353512, 44.822525>,  <34.874500, 37.062054, 44.639954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.078754, 37.353512, 44.822525> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158771, 0.601641, -0.782828,
		-0.845012, 0.327270, 0.422906,
		0.510633, 0.728644, 0.456433,
		35.231945, 37.572105, 44.959454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.192760, 36.850807, 44.923847>,  <34.874500, 37.062054, 44.639954>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.192760, 36.850807, 44.923847> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.898293, 36.596195, 44.831860>,  <33.721611, 36.443428, 44.776669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.898293, 36.596195, 44.831860>,  <34.192760, 36.850807, 44.923847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.898293, 36.596195, 44.831860> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081654, -0.253774, 0.963811,
		-0.671856, 0.728303, 0.134845,
		-0.736167, -0.636532, -0.229969,
		33.677441, 36.405235, 44.762871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.662556, 36.885887, 45.485783>,  <34.192760, 36.850807, 44.923847>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.662556, 36.885887, 45.485783> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.570736, 36.540131, 45.306835>,  <33.515644, 36.332676, 45.199467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.570736, 36.540131, 45.306835>,  <33.662556, 36.885887, 45.485783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.570736, 36.540131, 45.306835> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071648, -0.443386, 0.893462,
		-0.970656, 0.237147, 0.039847,
		-0.229549, -0.864390, -0.447367,
		33.501873, 36.280815, 45.172626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.004562, 36.619038, 45.651005>,  <33.662556, 36.885887, 45.485783>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.004562, 36.619038, 45.651005> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.192772, 36.293865, 45.513748>,  <33.305698, 36.098763, 45.431396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.192772, 36.293865, 45.513748>,  <33.004562, 36.619038, 45.651005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.192772, 36.293865, 45.513748> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121953, -0.445054, 0.887161,
		-0.873918, -0.375585, -0.308549,
		0.470525, -0.812935, -0.343137,
		33.333931, 36.049984, 45.410809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.608490, 35.926647, 45.843010>,  <33.004562, 36.619038, 45.651005>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.608490, 35.926647, 45.843010> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.985401, 35.814144, 45.770340>,  <33.211548, 35.746643, 45.726738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.985401, 35.814144, 45.770340>,  <32.608490, 35.926647, 45.843010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.985401, 35.814144, 45.770340> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013987, -0.575174, 0.817911,
		-0.334535, -0.768160, -0.545909,
		0.942280, -0.281255, -0.181672,
		33.268085, 35.729767, 45.715839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.544350, 35.204960, 45.929443>,  <32.608490, 35.926647, 45.843010>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.544350, 35.204960, 45.929443> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.909412, 35.354492, 45.995548>,  <33.128448, 35.444210, 46.035213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.909412, 35.354492, 45.995548>,  <32.544350, 35.204960, 45.929443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.909412, 35.354492, 45.995548> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000750, -0.402807, 0.915284,
		0.408729, -0.835463, -0.367344,
		0.912656, 0.373828, 0.165266,
		33.183208, 35.466640, 46.045128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.884197, 34.664543, 46.172352>,  <32.544350, 35.204960, 45.929443>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.884197, 34.664543, 46.172352> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.086945, 34.987686, 46.292645>,  <33.208595, 35.181572, 46.364822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.086945, 34.987686, 46.292645>,  <32.884197, 34.664543, 46.172352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.086945, 34.987686, 46.292645> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045808, -0.373622, 0.926449,
		0.860803, -0.455815, -0.226385,
		0.506872, 0.807861, 0.300735,
		33.239006, 35.230045, 46.382866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.270691, 34.353390, 46.612030>,  <32.884197, 34.664543, 46.172352>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.270691, 34.353390, 46.612030> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.350704, 34.735863, 46.697544>,  <33.398712, 34.965347, 46.748852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.350704, 34.735863, 46.697544>,  <33.270691, 34.353390, 46.612030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.350704, 34.735863, 46.697544> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160049, -0.247152, 0.955668,
		0.966629, -0.156948, -0.202474,
		0.200032, 0.956182, 0.213785,
		33.410713, 35.022717, 46.761681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.735374, 33.594101, 46.526615>,  <33.270691, 34.353390, 46.612030>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.735374, 33.594101, 46.526615> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.465546, 33.330967, 46.660599>,  <33.303646, 33.173084, 46.740990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.465546, 33.330967, 46.660599>,  <33.735374, 33.594101, 46.526615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.465546, 33.330967, 46.660599> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209710, -0.264283, -0.941369,
		0.707793, -0.705268, 0.040323,
		-0.674574, -0.657838, 0.334960,
		33.263172, 33.133617, 46.761086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.917023, 32.915150, 46.199326>,  <33.735374, 33.594101, 46.526615>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.917023, 32.915150, 46.199326> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.536819, 32.966843, 46.312344>,  <33.308697, 32.997860, 46.380154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.536819, 32.966843, 46.312344>,  <33.917023, 32.915150, 46.199326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.536819, 32.966843, 46.312344> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303625, -0.193477, -0.932941,
		-0.065901, -0.972556, 0.223140,
		-0.950510, 0.129232, 0.282543,
		33.251667, 33.005611, 46.397106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.610020, 32.467873, 45.757359>,  <33.917023, 32.915150, 46.199326>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.610020, 32.467873, 45.757359> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.292301, 32.671261, 45.890354>,  <33.101669, 32.793293, 45.970154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.292301, 32.671261, 45.890354>,  <33.610020, 32.467873, 45.757359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.292301, 32.671261, 45.890354> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434157, -0.092237, -0.896103,
		-0.424976, -0.856123, 0.294021,
		-0.794294, 0.508473, 0.332493,
		33.054012, 32.823803, 45.990101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.032700, 32.158604, 45.412292>,  <33.610020, 32.467873, 45.757359>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.032700, 32.158604, 45.412292> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.891571, 32.513618, 45.530815>,  <32.806892, 32.726627, 45.601929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.891571, 32.513618, 45.530815>,  <33.032700, 32.158604, 45.412292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.891571, 32.513618, 45.530815> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504417, 0.086304, -0.859136,
		-0.788086, -0.452585, 0.417238,
		-0.352823, 0.887535, 0.296307,
		32.785725, 32.779881, 45.619709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.315807, 32.184994, 45.264462>,  <33.032700, 32.158604, 45.412292>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.315807, 32.184994, 45.264462> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.425652, 32.569393, 45.277592>,  <32.491558, 32.800034, 45.285469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.425652, 32.569393, 45.277592>,  <32.315807, 32.184994, 45.264462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.425652, 32.569393, 45.277592> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374512, 0.138338, -0.916844,
		-0.885624, 0.239479, 0.397893,
		0.274609, 0.960996, 0.032828,
		32.508034, 32.857693, 45.287441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.716549, 32.633446, 45.070541>,  <32.315807, 32.184994, 45.264462>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.716549, 32.633446, 45.070541> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.040295, 32.864742, 45.029438>,  <32.234543, 33.003521, 45.004776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.040295, 32.864742, 45.029438>,  <31.716549, 32.633446, 45.070541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.040295, 32.864742, 45.029438> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298602, 0.254484, -0.919823,
		-0.505732, 0.775158, 0.378635,
		0.809365, 0.578246, -0.102763,
		32.283104, 33.038216, 44.998608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.417316, 33.239841, 44.731941>,  <31.716549, 32.633446, 45.070541>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.417316, 33.239841, 44.731941> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.808949, 33.280037, 44.661175>,  <32.043930, 33.304153, 44.618713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.808949, 33.280037, 44.661175>,  <31.417316, 33.239841, 44.731941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.808949, 33.280037, 44.661175> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197826, 0.266855, -0.943214,
		-0.047567, 0.958484, 0.281151,
		0.979082, 0.100485, -0.176920,
		32.102673, 33.310181, 44.608097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<36.683395, 31.185360, 47.872864> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.814850, 31.554943, 47.794582>,  <36.893723, 31.776693, 47.747616>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.814850, 31.554943, 47.794582>,  <36.683395, 31.185360, 47.872864>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.814850, 31.554943, 47.794582> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413471, -0.045547, -0.909378,
		-0.849140, 0.379773, 0.367061,
		0.328638, 0.923958, -0.195701,
		36.913441, 31.832130, 47.735870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.133427, 31.502281, 47.520306>,  <36.683395, 31.185360, 47.872864>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.133427, 31.502281, 47.520306> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.466473, 31.704586, 47.430004>,  <36.666298, 31.825970, 47.375824>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.466473, 31.704586, 47.430004>,  <36.133427, 31.502281, 47.520306>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.466473, 31.704586, 47.430004> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243875, -0.031182, -0.969305,
		-0.497277, 0.862109, 0.097381,
		0.832610, 0.505762, -0.225753,
		36.716255, 31.856316, 47.362278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.957840, 31.998194, 47.043369>,  <36.133427, 31.502281, 47.520306>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.957840, 31.998194, 47.043369> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.343868, 31.905581, 46.994339>,  <36.575485, 31.850012, 46.964920>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.343868, 31.905581, 46.994339>,  <35.957840, 31.998194, 47.043369>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.343868, 31.905581, 46.994339> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149438, -0.102203, -0.983475,
		0.215179, 0.967443, -0.133233,
		0.965073, -0.231534, -0.122580,
		36.633389, 31.836121, 46.957565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.200123, 32.212833, 46.320564>,  <35.957840, 31.998194, 47.043369>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.200123, 32.212833, 46.320564> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.514000, 31.997944, 46.444275>,  <36.702324, 31.869009, 46.518501>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.514000, 31.997944, 46.444275>,  <36.200123, 32.212833, 46.320564>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.514000, 31.997944, 46.444275> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221956, -0.222338, -0.949369,
		0.578789, 0.813606, -0.055226,
		0.784690, -0.537226, 0.309272,
		36.749409, 31.836777, 46.537056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.622807, 32.450848, 45.914402>,  <36.200123, 32.212833, 46.320564>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.622807, 32.450848, 45.914402> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.762459, 32.101902, 46.051277>,  <36.846249, 31.892534, 46.133404>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.762459, 32.101902, 46.051277>,  <36.622807, 32.450848, 45.914402>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.762459, 32.101902, 46.051277> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152934, -0.307224, -0.939268,
		0.924510, 0.380260, 0.026152,
		0.349132, -0.872362, 0.342186,
		36.867199, 31.840193, 46.153934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.954174, 32.240482, 45.340607>,  <36.622807, 32.450848, 45.914402>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.954174, 32.240482, 45.340607> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.989773, 31.913170, 45.567760>,  <37.011131, 31.716784, 45.704052>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.989773, 31.913170, 45.567760>,  <36.954174, 32.240482, 45.340607>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.989773, 31.913170, 45.567760> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187694, -0.546157, -0.816384,
		0.978187, 0.179248, 0.104978,
		0.089001, -0.818280, 0.567887,
		37.016472, 31.667686, 45.738125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.658318, 31.948645, 45.173740>,  <36.954174, 32.240482, 45.340607>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.658318, 31.948645, 45.173740> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.383392, 31.692633, 45.311123>,  <37.218437, 31.539026, 45.393555>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.383392, 31.692633, 45.311123>,  <37.658318, 31.948645, 45.173740>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.383392, 31.692633, 45.311123> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221603, -0.635072, -0.739983,
		0.691734, -0.432486, 0.578324,
		-0.687310, -0.640030, 0.343461,
		37.177200, 31.500624, 45.414162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.917297, 31.195135, 45.060753>,  <37.658318, 31.948645, 45.173740>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.917297, 31.195135, 45.060753> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.517605, 31.200510, 45.075500>,  <37.277790, 31.203735, 45.084351>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.517605, 31.200510, 45.075500>,  <37.917297, 31.195135, 45.060753>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.517605, 31.200510, 45.075500> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037102, -0.629658, -0.775986,
		0.012789, -0.776756, 0.629671,
		-0.999230, 0.013438, 0.036872,
		37.217834, 31.204542, 45.086563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.723827, 30.483664, 44.813950>,  <37.917297, 31.195135, 45.060753>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.723827, 30.483664, 44.813950> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.396660, 30.710417, 44.774658>,  <37.200359, 30.846468, 44.751083>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.396660, 30.710417, 44.774658>,  <37.723827, 30.483664, 44.813950>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.396660, 30.710417, 44.774658> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263851, -0.521326, -0.811543,
		-0.511249, -0.637867, 0.575977,
		-0.817929, 0.566873, -0.098225,
		37.151283, 30.880482, 44.745190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.174335, 30.015841, 44.594463>,  <37.723827, 30.483664, 44.813950>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.174335, 30.015841, 44.594463> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.103535, 30.395435, 44.490082>,  <37.061054, 30.623192, 44.427452>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.103535, 30.395435, 44.490082>,  <37.174335, 30.015841, 44.594463>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.103535, 30.395435, 44.490082> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095383, -0.280432, -0.955123,
		-0.979577, -0.144172, 0.140156,
		-0.177006, 0.948985, -0.260953,
		37.050434, 30.680130, 44.411797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.805538, 29.833082, 44.037323>,  <37.174335, 30.015841, 44.594463>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.805538, 29.833082, 44.037323> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.841667, 30.231226, 44.024067>,  <36.863342, 30.470112, 44.016113>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.841667, 30.231226, 44.024067>,  <36.805538, 29.833082, 44.037323>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.841667, 30.231226, 44.024067> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120413, -0.022121, -0.992477,
		-0.988607, 0.093630, 0.117857,
		0.090318, 0.995361, -0.033143,
		36.868763, 30.529835, 44.014126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.233295, 30.185814, 43.647842>,  <36.805538, 29.833082, 44.037323>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.233295, 30.185814, 43.647842> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.537834, 30.441765, 43.606056>,  <36.720558, 30.595335, 43.580982>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.537834, 30.441765, 43.606056>,  <36.233295, 30.185814, 43.647842>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.537834, 30.441765, 43.606056> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112531, -0.028270, -0.993246,
		-0.638508, 0.767958, 0.050482,
		0.761344, 0.639877, -0.104470,
		36.766235, 30.633728, 43.574715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.524578, 30.583988, 43.758072>,  <36.233295, 30.185814, 43.647842>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.524578, 30.583988, 43.758072> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.197800, 30.355536, 43.790092>,  <35.001732, 30.218464, 43.809307>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.197800, 30.355536, 43.790092>,  <35.524578, 30.583988, 43.758072>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.197800, 30.355536, 43.790092> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090812, 0.264473, 0.960108,
		-0.569521, 0.777085, -0.267925,
		-0.816945, -0.571133, 0.080054,
		34.952717, 30.184196, 43.814110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.233368, 30.796806, 44.339401>,  <35.524578, 30.583988, 43.758072>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.233368, 30.796806, 44.339401> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.014999, 30.466557, 44.282398>,  <34.883976, 30.268406, 44.248196>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.014999, 30.466557, 44.282398>,  <35.233368, 30.796806, 44.339401>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.014999, 30.466557, 44.282398> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289712, 0.026422, 0.956749,
		-0.786150, 0.563601, -0.253617,
		-0.545926, -0.825624, -0.142510,
		34.851223, 30.218868, 44.239647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.601059, 30.997458, 44.683929>,  <35.233368, 30.796806, 44.339401>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.601059, 30.997458, 44.683929> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.623024, 30.598158, 44.675179>,  <34.636204, 30.358578, 44.669930>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.623024, 30.598158, 44.675179>,  <34.601059, 30.997458, 44.683929>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.623024, 30.598158, 44.675179> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291147, -0.036967, 0.955964,
		-0.955101, -0.046127, -0.292668,
		0.054915, -0.998251, -0.021878,
		34.639500, 30.298683, 44.668613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.923309, 30.715672, 44.914547>,  <34.601059, 30.997458, 44.683929>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.923309, 30.715672, 44.914547> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.216240, 30.451639, 44.981468>,  <34.391998, 30.293219, 45.021622>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.216240, 30.451639, 44.981468>,  <33.923309, 30.715672, 44.914547>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.216240, 30.451639, 44.981468> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231616, -0.010418, 0.972751,
		-0.640354, -0.751121, -0.160515,
		0.732326, -0.660083, 0.167300,
		34.435936, 30.253614, 45.031658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.607025, 30.297546, 45.490883>,  <33.923309, 30.715672, 44.914547>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.607025, 30.297546, 45.490883> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.997761, 30.211964, 45.489590>,  <34.232201, 30.160614, 45.488811>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.997761, 30.211964, 45.489590>,  <33.607025, 30.297546, 45.490883>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.997761, 30.211964, 45.489590> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056430, -0.272164, 0.960595,
		-0.206406, -0.938163, -0.277934,
		0.976838, -0.213956, -0.003235,
		34.290813, 30.147776, 45.488621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.645283, 29.596891, 45.788425>,  <33.607025, 30.297546, 45.490883>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.645283, 29.596891, 45.788425> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.003571, 29.770473, 45.827141>,  <34.218544, 29.874622, 45.850372>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.003571, 29.770473, 45.827141>,  <33.645283, 29.596891, 45.788425>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.003571, 29.770473, 45.827141> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058214, -0.330288, 0.942083,
		0.440789, -0.838209, -0.321108,
		0.895721, 0.433953, 0.096792,
		34.272285, 29.900660, 45.856178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.084656, 29.064184, 46.140511>,  <33.645283, 29.596891, 45.788425>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.084656, 29.064184, 46.140511> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.231346, 29.431713, 46.198864>,  <34.319359, 29.652229, 46.233875>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.231346, 29.431713, 46.198864>,  <34.084656, 29.064184, 46.140511>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.231346, 29.431713, 46.198864> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099390, -0.194607, 0.975833,
		0.925006, -0.343361, -0.162688,
		0.366723, 0.918821, 0.145886,
		34.341362, 29.707359, 46.242630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.671413, 29.012867, 46.605034>,  <34.084656, 29.064184, 46.140511>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.671413, 29.012867, 46.605034> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.576370, 29.399223, 46.646202>,  <34.519344, 29.631037, 46.670902>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.576370, 29.399223, 46.646202>,  <34.671413, 29.012867, 46.605034>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.576370, 29.399223, 46.646202> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147418, -0.068865, 0.986674,
		0.960109, 0.249617, -0.126027,
		-0.237612, 0.965893, 0.102916,
		34.505085, 29.688992, 46.677078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.134861, 29.293388, 47.072380>,  <34.671413, 29.012867, 46.605034>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.134861, 29.293388, 47.072380> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.837234, 29.560629, 47.071152>,  <34.658661, 29.720974, 47.070415>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.837234, 29.560629, 47.071152>,  <35.134861, 29.293388, 47.072380>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.837234, 29.560629, 47.071152> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106726, 0.123389, 0.986603,
		0.659530, 0.733768, -0.163113,
		-0.744063, 0.668102, -0.003067,
		34.614014, 29.761059, 47.070232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.485813, 29.845005, 47.367962>,  <35.134861, 29.293388, 47.072380>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.485813, 29.845005, 47.367962> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.091850, 29.871613, 47.431870>,  <34.855473, 29.887577, 47.470215>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.091850, 29.871613, 47.431870>,  <35.485813, 29.845005, 47.367962>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.091850, 29.871613, 47.431870> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170496, 0.214400, 0.961751,
		0.029720, 0.974478, -0.222506,
		-0.984910, 0.066519, 0.159773,
		34.796379, 29.891569, 47.479801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.415657, 30.490528, 47.685249>,  <35.485813, 29.845005, 47.367962>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.415657, 30.490528, 47.685249> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.079231, 30.296581, 47.781174>,  <34.877377, 30.180212, 47.838726>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.079231, 30.296581, 47.781174>,  <35.415657, 30.490528, 47.685249>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.079231, 30.296581, 47.781174> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123630, 0.259284, 0.957856,
		-0.526612, 0.835269, -0.158131,
		-0.841068, -0.484869, 0.239807,
		34.826912, 30.151121, 47.853115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.192860, 30.893654, 48.206638>,  <35.415657, 30.490528, 47.685249>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.192860, 30.893654, 48.206638> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.002872, 30.542929, 48.236591>,  <34.888882, 30.332493, 48.254562>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.002872, 30.542929, 48.236591>,  <35.192860, 30.893654, 48.206638>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.002872, 30.542929, 48.236591> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287209, -0.074018, 0.955004,
		-0.831817, 0.475101, 0.286984,
		-0.474965, -0.876813, 0.074884,
		34.860382, 30.279884, 48.259056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.864906, 30.888268, 48.777096>,  <35.192860, 30.893654, 48.206638>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.864906, 30.888268, 48.777096> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.879276, 30.492849, 48.718464>,  <34.887897, 30.255598, 48.683285>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.879276, 30.492849, 48.718464>,  <34.864906, 30.888268, 48.777096>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.879276, 30.492849, 48.718464> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215077, -0.135592, 0.967138,
		-0.975936, -0.066272, 0.207742,
		0.035926, -0.988546, -0.146583,
		34.890053, 30.196285, 48.674488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.351986, 31.057903, 49.229771>,  <34.864906, 30.888268, 48.777096>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.351986, 31.057903, 49.229771> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.102734, 31.327826, 49.387936>,  <33.953182, 31.489780, 49.482834>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.102734, 31.327826, 49.387936>,  <34.351986, 31.057903, 49.229771>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.102734, 31.327826, 49.387936> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124006, 0.413923, -0.901826,
		-0.772228, -0.610984, -0.174246,
		-0.623126, 0.674808, 0.395409,
		33.915794, 31.530268, 49.506557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.762836, 31.188192, 48.753208>,  <34.351986, 31.057903, 49.229771>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.762836, 31.188192, 48.753208> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.736080, 31.526396, 48.965111>,  <33.720024, 31.729319, 49.092251>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.736080, 31.526396, 48.965111>,  <33.762836, 31.188192, 48.753208>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.736080, 31.526396, 48.965111> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164856, 0.514278, -0.841629,
		-0.984047, -0.143634, 0.104985,
		-0.066895, 0.845510, 0.529753,
		33.716011, 31.780048, 49.124035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.125519, 31.478645, 48.601685>,  <33.762836, 31.188192, 48.753208>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.125519, 31.478645, 48.601685> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.336941, 31.793087, 48.729855>,  <33.463795, 31.981752, 48.806755>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.336941, 31.793087, 48.729855>,  <33.125519, 31.478645, 48.601685>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.336941, 31.793087, 48.729855> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254008, 0.506620, -0.823903,
		-0.810005, 0.354090, 0.467453,
		0.528557, 0.786102, 0.320423,
		33.495506, 32.028919, 48.825981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.739285, 32.103603, 48.498394>,  <33.125519, 31.478645, 48.601685>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.739285, 32.103603, 48.498394> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.122768, 32.215469, 48.519051>,  <33.352859, 32.282589, 48.531445>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.122768, 32.215469, 48.519051>,  <32.739285, 32.103603, 48.498394>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.122768, 32.215469, 48.519051> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159095, 0.677924, -0.717710,
		-0.235729, 0.679858, 0.694424,
		0.958708, 0.279664, 0.051644,
		33.410381, 32.299370, 48.534542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.639919, 32.760239, 48.607750>,  <32.739285, 32.103603, 48.498394>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.639919, 32.760239, 48.607750> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.007778, 32.706104, 48.460270>,  <33.228493, 32.673622, 48.371784>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.007778, 32.706104, 48.460270>,  <32.639919, 32.760239, 48.607750>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.007778, 32.706104, 48.460270> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205029, 0.635256, -0.744589,
		0.334985, 0.760351, 0.556463,
		0.919646, -0.135335, -0.368696,
		33.283672, 32.665504, 48.349663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.819199, 33.422146, 48.373238>,  <32.639919, 32.760239, 48.607750>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.819199, 33.422146, 48.373238> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.063297, 33.166286, 48.186283>,  <33.209759, 33.012772, 48.074112>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.063297, 33.166286, 48.186283>,  <32.819199, 33.422146, 48.373238>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.063297, 33.166286, 48.186283> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124335, 0.505329, -0.853922,
		0.782392, 0.579217, 0.228845,
		0.610248, -0.639648, -0.467383,
		33.246372, 32.974392, 48.046070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.957207, 33.783443, 47.864799>,  <32.819199, 33.422146, 48.373238>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.957207, 33.783443, 47.864799> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.116341, 33.438866, 47.738533>,  <33.211819, 33.232121, 47.662773>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.116341, 33.438866, 47.738533>,  <32.957207, 33.783443, 47.864799>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.116341, 33.438866, 47.738533> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082617, 0.309029, -0.947457,
		0.913731, 0.403008, 0.051771,
		0.397831, -0.861444, -0.315665,
		33.235691, 33.180431, 47.643833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.594082, 33.889027, 47.311695>,  <32.957207, 33.783443, 47.864799>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.594082, 33.889027, 47.311695> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.407837, 33.538227, 47.264225>,  <33.296089, 33.327747, 47.235744>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.407837, 33.538227, 47.264225>,  <33.594082, 33.889027, 47.311695>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.407837, 33.538227, 47.264225> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315517, 0.289788, -0.903588,
		0.826834, -0.383277, -0.411636,
		-0.465611, -0.876996, -0.118676,
		33.268154, 33.275127, 47.228622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.959217, 34.410858, 46.926891>,  <33.594082, 33.889027, 47.311695>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.959217, 34.410858, 46.926891> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.748428, 34.733593, 47.033718>,  <33.621956, 34.927235, 47.097813>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.748428, 34.733593, 47.033718>,  <33.959217, 34.410858, 46.926891>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.748428, 34.733593, 47.033718> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090692, -0.259058, 0.961594,
		0.845031, 0.530952, 0.063343,
		-0.526970, 0.806832, 0.267065,
		33.590336, 34.975643, 47.113838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.391594, 34.744534, 47.445316>,  <33.959217, 34.410858, 46.926891>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.391594, 34.744534, 47.445316> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.028023, 34.900623, 47.504059>,  <33.809879, 34.994278, 47.539307>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.028023, 34.900623, 47.504059>,  <34.391594, 34.744534, 47.445316>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.028023, 34.900623, 47.504059> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082325, -0.177326, 0.980703,
		0.408738, 0.903481, 0.129052,
		-0.908931, 0.390227, 0.146859,
		33.755344, 35.017693, 47.548115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.431793, 35.198273, 47.961712>,  <34.391594, 34.744534, 47.445316>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.431793, 35.198273, 47.961712> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.032703, 35.179802, 47.981339>,  <33.793247, 35.168720, 47.993114>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.032703, 35.179802, 47.981339>,  <34.431793, 35.198273, 47.961712>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.032703, 35.179802, 47.981339> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047907, 0.025916, 0.998516,
		-0.047383, 0.998597, -0.023645,
		-0.997727, -0.046180, 0.049068,
		33.733387, 35.165947, 47.996059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.276466, 35.699757, 48.477058>,  <34.431793, 35.198273, 47.961712>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.276466, 35.699757, 48.477058> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.952976, 35.467072, 48.442242>,  <33.758884, 35.327461, 48.421352>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.952976, 35.467072, 48.442242>,  <34.276466, 35.699757, 48.477058>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.952976, 35.467072, 48.442242> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056451, -0.070534, 0.995911,
		-0.585474, 0.810330, 0.024204,
		-0.808724, -0.581713, -0.087040,
		33.710358, 35.292557, 48.416130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.789005, 35.912861, 48.981052>,  <34.276466, 35.699757, 48.477058>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.789005, 35.912861, 48.981052> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.623608, 35.557926, 48.899406>,  <33.524368, 35.344967, 48.850418>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.623608, 35.557926, 48.899406>,  <33.789005, 35.912861, 48.981052>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.623608, 35.557926, 48.899406> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068558, -0.253884, 0.964802,
		-0.907922, 0.384947, 0.165813,
		-0.413495, -0.887332, -0.204115,
		33.499557, 35.291725, 48.838173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.257084, 35.803974, 49.493771>,  <33.789005, 35.912861, 48.981052>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.257084, 35.803974, 49.493771> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.368500, 35.443588, 49.360699>,  <33.435349, 35.227356, 49.280857>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.368500, 35.443588, 49.360699>,  <33.257084, 35.803974, 49.493771>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.368500, 35.443588, 49.360699> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122646, -0.310182, 0.942733,
		-0.952562, -0.303388, 0.024102,
		0.278538, -0.900968, -0.332677,
		33.452061, 35.173298, 49.260895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.009747, 35.453289, 49.929497>,  <33.257084, 35.803974, 49.493771>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.009747, 35.453289, 49.929497> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.276115, 35.200951, 49.770206>,  <33.435936, 35.049549, 49.674633>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.276115, 35.200951, 49.770206>,  <33.009747, 35.453289, 49.929497>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.276115, 35.200951, 49.770206> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210720, -0.353006, 0.911583,
		-0.715645, -0.690956, -0.102142,
		0.665920, -0.630847, -0.398225,
		33.475891, 35.011696, 49.650738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.844265, 34.813156, 50.236774>,  <33.009747, 35.453289, 49.929497>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.844265, 34.813156, 50.236774> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.218876, 34.803669, 50.096863>,  <33.443642, 34.797977, 50.012917>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.218876, 34.803669, 50.096863>,  <32.844265, 34.813156, 50.236774>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.218876, 34.803669, 50.096863> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334961, -0.234010, 0.912710,
		-0.103500, -0.971945, -0.211213,
		0.936530, -0.023717, -0.349783,
		33.499836, 34.796555, 49.991928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.068413, 34.163418, 50.354679>,  <32.844265, 34.813156, 50.236774>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.068413, 34.163418, 50.354679> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.392773, 34.395767, 50.326324>,  <33.587391, 34.535175, 50.309311>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.392773, 34.395767, 50.326324>,  <33.068413, 34.163418, 50.354679>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.392773, 34.395767, 50.326324> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273800, -0.269558, 0.923240,
		0.517178, -0.768066, -0.377628,
		0.810901, 0.580874, -0.070887,
		33.636044, 34.570030, 50.305058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.515320, 36.018021, 34.431904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.879913, 36.114487, 34.565189>,  <36.098671, 36.172367, 34.645161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.879913, 36.114487, 34.565189>,  <35.515320, 36.018021, 34.431904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.879913, 36.114487, 34.565189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344841, 0.006440, 0.938639,
		0.224224, -0.970462, 0.089034,
		0.911487, 0.241168, 0.333212,
		36.153358, 36.186836, 34.665154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.788536, 35.460930, 34.914257>,  <35.515320, 36.018021, 34.431904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.788536, 35.460930, 34.914257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.907154, 35.837166, 34.980408>,  <35.978325, 36.062908, 35.020096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.907154, 35.837166, 34.980408>,  <35.788536, 35.460930, 34.914257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.907154, 35.837166, 34.980408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495190, 0.003373, 0.868778,
		0.816607, -0.339523, 0.466772,
		0.296545, 0.940592, 0.165374,
		35.996117, 36.119343, 35.030022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.024765, 35.430264, 35.690891>,  <35.788536, 35.460930, 34.914257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.024765, 35.430264, 35.690891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.981041, 35.821865, 35.622063>,  <35.954807, 36.056824, 35.580765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.981041, 35.821865, 35.622063>,  <36.024765, 35.430264, 35.690891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.981041, 35.821865, 35.622063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195163, 0.148597, 0.969449,
		0.974660, 0.139555, 0.174821,
		-0.109314, 0.979001, -0.172068,
		35.948246, 36.115566, 35.570442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.326214, 35.814056, 36.229198>,  <36.024765, 35.430264, 35.690891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.326214, 35.814056, 36.229198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.060547, 36.076515, 36.085892>,  <35.901146, 36.233990, 35.999908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.060547, 36.076515, 36.085892>,  <36.326214, 35.814056, 36.229198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.060547, 36.076515, 36.085892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298240, 0.206898, 0.931797,
		0.685522, 0.725716, 0.058275,
		-0.664163, 0.656148, -0.358271,
		35.861298, 36.273361, 35.978409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.407928, 36.533287, 36.574280>,  <36.326214, 35.814056, 36.229198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.407928, 36.533287, 36.574280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.031857, 36.506638, 36.440639>,  <35.806213, 36.490650, 36.360455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.031857, 36.506638, 36.440639>,  <36.407928, 36.533287, 36.574280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.031857, 36.506638, 36.440639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332664, 0.391021, 0.858159,
		0.073470, 0.917968, -0.389792,
		-0.940179, -0.066621, -0.334103,
		35.749802, 36.486652, 36.340408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.043224, 37.196289, 36.936646>,  <36.407928, 36.533287, 36.574280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.043224, 37.196289, 36.936646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.743431, 36.974934, 36.791298>,  <35.563557, 36.842121, 36.704090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.743431, 36.974934, 36.791298>,  <36.043224, 37.196289, 36.936646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.743431, 36.974934, 36.791298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524856, 0.162169, 0.835600,
		-0.403488, 0.816981, -0.411993,
		-0.749482, -0.553392, -0.363364,
		35.518585, 36.808914, 36.682289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.541786, 37.550838, 37.101997>,  <36.043224, 37.196289, 36.936646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.541786, 37.550838, 37.101997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.353840, 37.201584, 37.050060>,  <35.241074, 36.992031, 37.018898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.353840, 37.201584, 37.050060>,  <35.541786, 37.550838, 37.101997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.353840, 37.201584, 37.050060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540824, 0.168483, 0.824089,
		-0.697665, 0.457435, -0.551377,
		-0.469865, -0.873136, -0.129847,
		35.212879, 36.939644, 37.011105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.779789, 37.583950, 37.207466>,  <35.541786, 37.550838, 37.101997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.779789, 37.583950, 37.207466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.787575, 37.185638, 37.243340>,  <34.792248, 36.946651, 37.264862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.787575, 37.185638, 37.243340>,  <34.779789, 37.583950, 37.207466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.787575, 37.185638, 37.243340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556171, 0.063757, 0.828619,
		-0.830840, -0.066008, -0.552583,
		0.019464, -0.995780, 0.089683,
		34.793415, 36.886906, 37.270245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.123734, 37.442318, 37.310551>,  <34.779789, 37.583950, 37.207466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.123734, 37.442318, 37.310551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.318771, 37.120628, 37.446472>,  <34.435795, 36.927616, 37.528027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.318771, 37.120628, 37.446472>,  <34.123734, 37.442318, 37.310551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.318771, 37.120628, 37.446472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633560, -0.058142, 0.771506,
		-0.600707, -0.591474, -0.537875,
		0.487599, -0.804225, 0.339808,
		34.465050, 36.879360, 37.548416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.615429, 36.957047, 37.651272>,  <34.123734, 37.442318, 37.310551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.615429, 36.957047, 37.651272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.957058, 36.813469, 37.801849>,  <34.162037, 36.727322, 37.892197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.957058, 36.813469, 37.801849>,  <33.615429, 36.957047, 37.651272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.957058, 36.813469, 37.801849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412177, -0.025582, 0.910745,
		-0.317274, -0.933009, -0.169797,
		0.854077, -0.358942, 0.376448,
		34.213280, 36.705788, 37.914783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.470833, 36.386028, 38.054741>,  <33.615429, 36.957047, 37.651272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.470833, 36.386028, 38.054741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.821667, 36.507107, 38.203926>,  <34.032166, 36.579754, 38.293438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.821667, 36.507107, 38.203926>,  <33.470833, 36.386028, 38.054741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.821667, 36.507107, 38.203926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337650, -0.163730, 0.926922,
		0.341640, -0.938919, -0.041400,
		0.877083, 0.302695, 0.372963,
		34.084793, 36.597916, 38.315815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.686836, 35.795799, 38.477135>,  <33.470833, 36.386028, 38.054741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.686836, 35.795799, 38.477135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.854134, 36.140450, 38.592144>,  <33.954514, 36.347240, 38.661152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.854134, 36.140450, 38.592144>,  <33.686836, 35.795799, 38.477135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.854134, 36.140450, 38.592144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262066, -0.188619, 0.946437,
		0.869709, -0.471192, 0.146915,
		0.418243, 0.861627, 0.287527,
		33.979607, 36.398937, 38.678402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.800610, 35.080894, 38.696983>,  <33.686836, 35.795799, 38.477135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.800610, 35.080894, 38.696983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.426056, 34.942886, 38.722744>,  <33.201324, 34.860081, 38.738201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.426056, 34.942886, 38.722744>,  <33.800610, 35.080894, 38.696983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.426056, 34.942886, 38.722744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014460, -0.145405, -0.989267,
		0.350677, -0.927265, 0.131166,
		-0.936385, -0.345017, 0.064398,
		33.145142, 34.839382, 38.742062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.722569, 34.556419, 38.291882>,  <33.800610, 35.080894, 38.696983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.722569, 34.556419, 38.291882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.347122, 34.691418, 38.320431>,  <33.121853, 34.772415, 38.337559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.347122, 34.691418, 38.320431>,  <33.722569, 34.556419, 38.291882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.347122, 34.691418, 38.320431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097536, -0.061191, -0.993349,
		-0.330884, -0.939336, 0.090353,
		-0.938618, 0.337496, 0.071373,
		33.065536, 34.792667, 38.341843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.336422, 34.180641, 37.858799>,  <33.722569, 34.556419, 38.291882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.336422, 34.180641, 37.858799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.077278, 34.480911, 37.910595>,  <32.921791, 34.661072, 37.941673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.077278, 34.480911, 37.910595>,  <33.336422, 34.180641, 37.858799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.077278, 34.480911, 37.910595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238656, -0.038581, -0.970338,
		-0.723413, -0.659543, 0.204148,
		-0.647856, 0.750676, 0.129494,
		32.882923, 34.706116, 37.949444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.686829, 33.996193, 37.648209>,  <33.336422, 34.180641, 37.858799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.686829, 33.996193, 37.648209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.681519, 34.395813, 37.631599>,  <32.678333, 34.635586, 37.621635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.681519, 34.395813, 37.631599>,  <32.686829, 33.996193, 37.648209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.681519, 34.395813, 37.631599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308124, -0.043592, -0.950347,
		-0.951253, 0.000174, 0.308410,
		-0.013279, 0.999049, -0.041521,
		32.677536, 34.695526, 37.619144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.975163, 34.157276, 37.461777>,  <32.686829, 33.996193, 37.648209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.975163, 34.157276, 37.461777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.168472, 34.501907, 37.399651>,  <32.284458, 34.708687, 37.362373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.168472, 34.501907, 37.399651>,  <31.975163, 34.157276, 37.461777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.168472, 34.501907, 37.399651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568046, 0.173600, -0.804479,
		-0.666161, 0.477012, 0.573314,
		0.483273, 0.861582, -0.155319,
		32.313454, 34.760384, 37.353054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.506039, 34.628601, 37.211113>,  <31.975163, 34.157276, 37.461777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.506039, 34.628601, 37.211113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.836197, 34.820259, 37.091682>,  <32.034290, 34.935253, 37.020023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.836197, 34.820259, 37.091682>,  <31.506039, 34.628601, 37.211113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.836197, 34.820259, 37.091682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392995, 0.107937, -0.913184,
		-0.405316, 0.871076, 0.277391,
		0.825393, 0.479141, -0.298580,
		32.083817, 34.964001, 37.002110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.285608, 35.260166, 36.943417>,  <31.506039, 34.628601, 37.211113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.285608, 35.260166, 36.943417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.648264, 35.214924, 36.780830>,  <31.865858, 35.187778, 36.683281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.648264, 35.214924, 36.780830>,  <31.285608, 35.260166, 36.943417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.648264, 35.214924, 36.780830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401537, 0.064409, -0.913575,
		0.129511, 0.991493, 0.012979,
		0.906640, -0.113106, -0.406462,
		31.920256, 35.180992, 36.658894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.434206, 35.797848, 36.506760>,  <31.285608, 35.260166, 36.943417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.434206, 35.797848, 36.506760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.667933, 35.495720, 36.388062>,  <31.808168, 35.314442, 36.316841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.667933, 35.495720, 36.388062>,  <31.434206, 35.797848, 36.506760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.667933, 35.495720, 36.388062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419325, 0.032055, -0.907270,
		0.694794, 0.654569, -0.297995,
		0.584318, -0.755323, -0.296748,
		31.843227, 35.269123, 36.299038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.279194, 35.775654, 35.690674>,  <31.434206, 35.797848, 36.506760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.279194, 35.775654, 35.690674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.489132, 35.442230, 35.759628>,  <31.615095, 35.242176, 35.800999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.489132, 35.442230, 35.759628>,  <31.279194, 35.775654, 35.690674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.489132, 35.442230, 35.759628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256346, -0.347902, -0.901804,
		0.811681, 0.429116, -0.396274,
		0.524843, -0.833561, 0.172383,
		31.646585, 35.192162, 35.811344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.591261, 35.618797, 35.066948>,  <31.279194, 35.775654, 35.690674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.591261, 35.618797, 35.066948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.595545, 35.275791, 35.272686>,  <31.598114, 35.069988, 35.396130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.595545, 35.275791, 35.272686>,  <31.591261, 35.618797, 35.066948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.595545, 35.275791, 35.272686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019502, -0.514457, -0.857294,
		0.999752, -0.000851, -0.022232,
		0.010708, -0.857516, 0.514347,
		31.598757, 35.018536, 35.426991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.077332, 35.121567, 34.690517>,  <31.591261, 35.618797, 35.066948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.077332, 35.121567, 34.690517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.827948, 34.909969, 34.920811>,  <31.678318, 34.783009, 35.058987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.827948, 34.909969, 34.920811>,  <32.077332, 35.121567, 34.690517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.827948, 34.909969, 34.920811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388877, -0.429015, -0.815304,
		0.678290, -0.732195, 0.061757,
		-0.623456, -0.528997, 0.575730,
		31.640911, 34.751270, 35.093529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.981998, 34.532284, 34.318726>,  <32.077332, 35.121567, 34.690517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.981998, 34.532284, 34.318726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.666454, 34.482742, 34.559513>,  <31.477129, 34.453018, 34.703983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.666454, 34.482742, 34.559513>,  <31.981998, 34.532284, 34.318726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.666454, 34.482742, 34.559513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504184, -0.429670, -0.749121,
		0.351427, -0.894452, 0.276504,
		-0.788858, -0.123852, 0.601966,
		31.429796, 34.445587, 34.740105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.695225, 33.857052, 34.037518>,  <31.981998, 34.532284, 34.318726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.695225, 33.857052, 34.037518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.420774, 34.040821, 34.263142>,  <31.256104, 34.151081, 34.398514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.420774, 34.040821, 34.263142>,  <31.695225, 33.857052, 34.037518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.420774, 34.040821, 34.263142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716077, -0.289754, -0.635041,
		-0.128314, -0.839627, 0.527790,
		-0.686127, 0.459423, 0.564058,
		31.214937, 34.178646, 34.432358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.211203, 33.399662, 34.088528>,  <31.695225, 33.857052, 34.037518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.211203, 33.399662, 34.088528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.050018, 33.763157, 34.132015>,  <30.953308, 33.981255, 34.158108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.050018, 33.763157, 34.132015>,  <31.211203, 33.399662, 34.088528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.050018, 33.763157, 34.132015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733417, -0.249568, -0.632310,
		-0.547471, -0.334532, 0.767049,
		-0.402958, 0.908738, 0.108721,
		30.929131, 34.035778, 34.164631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.531404, 33.277588, 34.065487>,  <31.211203, 33.399662, 34.088528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.531404, 33.277588, 34.065487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.585419, 33.665520, 33.984295>,  <30.617826, 33.898277, 33.935577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.585419, 33.665520, 33.984295>,  <30.531404, 33.277588, 34.065487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.585419, 33.665520, 33.984295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650071, -0.067892, -0.756834,
		-0.747779, 0.234152, 0.621288,
		0.135034, 0.969826, -0.202984,
		30.625929, 33.956467, 33.923401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.800318, 32.956169, 34.750168>,  <30.531404, 33.277588, 34.065487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.800318, 32.956169, 34.750168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.157715, 32.918617, 34.574509>,  <31.372154, 32.896084, 34.469112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.157715, 32.918617, 34.574509>,  <30.800318, 32.956169, 34.750168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.157715, 32.918617, 34.574509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098088, -0.913490, 0.394860,
		-0.438231, -0.395881, -0.806990,
		0.893494, -0.093884, -0.439151,
		31.425764, 32.890453, 34.442764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.779068, 32.231899, 34.412498>,  <30.800318, 32.956169, 34.750168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.779068, 32.231899, 34.412498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.141083, 32.378693, 34.498505>,  <31.358292, 32.466770, 34.550110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.141083, 32.378693, 34.498505>,  <30.779068, 32.231899, 34.412498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.141083, 32.378693, 34.498505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146704, -0.743836, 0.652063,
		0.399237, -0.558595, -0.727036,
		0.905035, 0.366987, 0.215019,
		31.412594, 32.488789, 34.563011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.166470, 31.607180, 34.551422>,  <30.779068, 32.231899, 34.412498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.166470, 31.607180, 34.551422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.383148, 31.911076, 34.695290>,  <31.513155, 32.093414, 34.781609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.383148, 31.911076, 34.695290>,  <31.166470, 31.607180, 34.551422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.383148, 31.911076, 34.695290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374093, -0.601068, 0.706238,
		0.752741, -0.248019, -0.609810,
		0.541697, 0.759740, 0.359666,
		31.545658, 32.138996, 34.803188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.867374, 31.306585, 34.773285>,  <31.166470, 31.607180, 34.551422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.867374, 31.306585, 34.773285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.802916, 31.646620, 34.973839>,  <31.764240, 31.850641, 35.094170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.802916, 31.646620, 34.973839>,  <31.867374, 31.306585, 34.773285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.802916, 31.646620, 34.973839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410391, -0.404299, 0.817387,
		0.897558, 0.337483, -0.283715,
		-0.161149, 0.850087, 0.501382,
		31.754570, 31.901646, 35.124252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.481430, 31.344147, 35.133636>,  <31.867374, 31.306585, 34.773285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.481430, 31.344147, 35.133636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.238663, 31.609570, 35.308605>,  <32.093002, 31.768824, 35.413586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.238663, 31.609570, 35.308605>,  <32.481430, 31.344147, 35.133636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.238663, 31.609570, 35.308605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333249, -0.287187, 0.898036,
		0.721519, 0.690809, -0.046829,
		-0.606923, 0.663556, 0.437422,
		32.056587, 31.808636, 35.439831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.895836, 31.726139, 35.590405>,  <32.481430, 31.344147, 35.133636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.895836, 31.726139, 35.590405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.512478, 31.713240, 35.703850>,  <32.282463, 31.705500, 35.771919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.512478, 31.713240, 35.703850>,  <32.895836, 31.726139, 35.590405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.512478, 31.713240, 35.703850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285320, -0.137513, 0.948516,
		0.008415, 0.989975, 0.140992,
		-0.958396, -0.032246, 0.283617,
		32.224960, 31.703566, 35.788937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.969479, 31.828247, 36.276917>,  <32.895836, 31.726139, 35.590405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.969479, 31.828247, 36.276917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.582378, 31.728563, 36.262238>,  <32.350117, 31.668753, 36.253429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.582378, 31.728563, 36.262238>,  <32.969479, 31.828247, 36.276917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.582378, 31.728563, 36.262238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022100, -0.229124, 0.973146,
		-0.250927, 0.940955, 0.227243,
		-0.967754, -0.249211, -0.036699,
		32.292053, 31.653801, 36.251228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.754959, 32.292358, 36.738140>,  <32.969479, 31.828247, 36.276917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.754959, 32.292358, 36.738140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.519199, 31.974566, 36.679611>,  <32.377743, 31.783890, 36.644493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.519199, 31.974566, 36.679611>,  <32.754959, 32.292358, 36.738140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.519199, 31.974566, 36.679611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024609, -0.198705, 0.979750,
		-0.807469, 0.573861, 0.136667,
		-0.589397, -0.794481, -0.146326,
		32.342381, 31.736221, 36.635712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.261028, 32.252071, 37.282200>,  <32.754959, 32.292358, 36.738140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.261028, 32.252071, 37.282200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.272404, 31.878361, 37.140034>,  <32.279228, 31.654135, 37.054733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.272404, 31.878361, 37.140034>,  <32.261028, 32.252071, 37.282200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.272404, 31.878361, 37.140034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200109, -0.343035, 0.917760,
		-0.979361, -0.097225, 0.177201,
		0.028443, -0.934277, -0.355411,
		32.280937, 31.598078, 37.033409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.827089, 31.883472, 37.710297>,  <32.261028, 32.252071, 37.282200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.827089, 31.883472, 37.710297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.049625, 31.613522, 37.516376>,  <32.183147, 31.451551, 37.400024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.049625, 31.613522, 37.516376>,  <31.827089, 31.883472, 37.710297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.049625, 31.613522, 37.516376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341011, -0.346600, 0.873831,
		-0.757757, -0.651470, 0.037312,
		0.556342, -0.674875, -0.484796,
		32.216530, 31.411058, 37.370937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.569479, 31.219799, 37.984272>,  <31.827089, 31.883472, 37.710297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.569479, 31.219799, 37.984272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.942406, 31.199272, 37.841080>,  <32.166161, 31.186956, 37.755165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.942406, 31.199272, 37.841080>,  <31.569479, 31.219799, 37.984272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.942406, 31.199272, 37.841080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319969, -0.344259, 0.882669,
		-0.168533, -0.937471, -0.304540,
		0.932318, -0.051315, -0.357981,
		32.222099, 31.183878, 37.733685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.873255, 30.449938, 38.177090>,  <31.569479, 31.219799, 37.984272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.873255, 30.449938, 38.177090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.206589, 30.640900, 38.065636>,  <32.406590, 30.755476, 37.998764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.206589, 30.640900, 38.065636>,  <31.873255, 30.449938, 38.177090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.206589, 30.640900, 38.065636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442680, -0.274507, 0.853628,
		0.331038, -0.834705, -0.440093,
		0.833336, 0.477404, -0.278635,
		32.456589, 30.784121, 37.982044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.426159, 29.955620, 38.338799>,  <31.873255, 30.449938, 38.177090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.426159, 29.955620, 38.338799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.597054, 30.317205, 38.331696>,  <32.699593, 30.534157, 38.327435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.597054, 30.317205, 38.331696>,  <32.426159, 29.955620, 38.338799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.597054, 30.317205, 38.331696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541458, -0.240085, 0.805719,
		0.724078, -0.353849, -0.592032,
		0.427240, 0.903964, -0.017754,
		32.725227, 30.588394, 38.326370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.134499, 29.857237, 38.497047>,  <32.426159, 29.955620, 38.338799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.134499, 29.857237, 38.497047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.067596, 30.247141, 38.556198>,  <33.027454, 30.481083, 38.591690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.067596, 30.247141, 38.556198>,  <33.134499, 29.857237, 38.497047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.067596, 30.247141, 38.556198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660274, -0.000640, 0.751024,
		0.732163, 0.223255, -0.643502,
		-0.167258, 0.974760, 0.147878,
		33.017418, 30.539568, 38.600563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.801796, 30.106524, 38.495331>,  <33.134499, 29.857237, 38.497047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.801796, 30.106524, 38.495331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.556274, 30.344614, 38.702774>,  <33.408962, 30.487469, 38.827240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.556274, 30.344614, 38.702774>,  <33.801796, 30.106524, 38.495331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.556274, 30.344614, 38.702774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619508, -0.044027, 0.783755,
		0.489345, 0.802351, -0.341724,
		-0.613801, 0.595227, 0.518607,
		33.372135, 30.523182, 38.858356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.206764, 30.559546, 38.873734>,  <33.801796, 30.106524, 38.495331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.206764, 30.559546, 38.873734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.851398, 30.592447, 39.054382>,  <33.638180, 30.612188, 39.162769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.851398, 30.592447, 39.054382>,  <34.206764, 30.559546, 38.873734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.851398, 30.592447, 39.054382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438063, -0.142140, 0.887636,
		0.137207, 0.986423, 0.090246,
		-0.888412, 0.082257, 0.451618,
		33.584873, 30.617125, 39.189869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.185081, 31.194260, 39.226715>,  <34.206764, 30.559546, 38.873734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.185081, 31.194260, 39.226715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.907055, 30.969467, 39.406075>,  <33.740238, 30.834593, 39.513691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.907055, 30.969467, 39.406075>,  <34.185081, 31.194260, 39.226715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.907055, 30.969467, 39.406075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469739, 0.117165, 0.874996,
		-0.544266, 0.818811, 0.182546,
		-0.695068, -0.561980, 0.448397,
		33.698536, 30.800873, 39.540592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.116745, 31.514221, 39.862911>,  <34.185081, 31.194260, 39.226715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.116745, 31.514221, 39.862911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.912045, 31.182163, 39.951427>,  <33.789223, 30.982929, 40.004539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.912045, 31.182163, 39.951427>,  <34.116745, 31.514221, 39.862911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.912045, 31.182163, 39.951427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429686, -0.024260, 0.902653,
		-0.743964, 0.557020, 0.369116,
		-0.511750, -0.830145, 0.221295,
		33.758518, 30.933119, 40.017815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.891251, 31.669159, 40.418415>,  <34.116745, 31.514221, 39.862911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.891251, 31.669159, 40.418415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.892784, 31.269226, 40.425621>,  <33.893703, 31.029266, 40.429947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.892784, 31.269226, 40.425621>,  <33.891251, 31.669159, 40.418415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.892784, 31.269226, 40.425621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296608, 0.018345, 0.954823,
		-0.954992, 0.001680, 0.296628,
		0.003837, -0.999830, 0.018018,
		33.893936, 30.969276, 40.431026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.391068, 31.517666, 40.943913>,  <33.891251, 31.669159, 40.418415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.391068, 31.517666, 40.943913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.628250, 31.197742, 40.906582>,  <33.770561, 31.005789, 40.884182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.628250, 31.197742, 40.906582>,  <33.391068, 31.517666, 40.943913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.628250, 31.197742, 40.906582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094341, -0.046101, 0.994472,
		-0.799690, -0.598482, 0.048118,
		0.592955, -0.799809, -0.093328,
		33.806137, 30.957800, 40.878582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.127483, 30.943518, 41.380898>,  <33.391068, 31.517666, 40.943913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.127483, 30.943518, 41.380898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.509441, 30.833811, 41.335381>,  <33.738617, 30.767986, 41.308071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.509441, 30.833811, 41.335381>,  <33.127483, 30.943518, 41.380898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.509441, 30.833811, 41.335381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072763, -0.155395, 0.985169,
		-0.287884, -0.949014, -0.128430,
		0.954897, -0.274270, -0.113789,
		33.795910, 30.751530, 41.301243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.232964, 30.632269, 41.915722>,  <33.127483, 30.943518, 41.380898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.232964, 30.632269, 41.915722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.618439, 30.633764, 41.808922>,  <33.849724, 30.634661, 41.744843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.618439, 30.633764, 41.808922>,  <33.232964, 30.632269, 41.915722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.618439, 30.633764, 41.808922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266947, -0.037398, 0.962985,
		-0.006378, -0.999294, -0.037039,
		0.963690, 0.003745, -0.266997,
		33.907547, 30.634886, 41.728821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.464760, 30.063198, 42.054436>,  <33.232964, 30.632269, 41.915722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.464760, 30.063198, 42.054436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.809292, 30.265274, 42.032928>,  <34.016010, 30.386520, 42.020023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.809292, 30.265274, 42.032928>,  <33.464760, 30.063198, 42.054436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.809292, 30.265274, 42.032928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286939, -0.396401, 0.872085,
		0.419255, -0.766583, -0.486391,
		0.861331, 0.505191, -0.053770,
		34.067692, 30.416832, 42.016796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.994465, 29.553503, 42.330009>,  <33.464760, 30.063198, 42.054436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.994465, 29.553503, 42.330009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.166164, 29.914511, 42.343906>,  <34.269184, 30.131115, 42.352245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.166164, 29.914511, 42.343906>,  <33.994465, 29.553503, 42.330009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.166164, 29.914511, 42.343906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566291, -0.298905, 0.768095,
		0.703606, -0.310026, -0.639392,
		0.429247, 0.902519, 0.034746,
		34.294937, 30.185266, 42.354332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.703907, 29.365107, 42.460289>,  <33.994465, 29.553503, 42.330009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.703907, 29.365107, 42.460289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.613480, 29.739277, 42.569008>,  <34.559223, 29.963779, 42.634239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.613480, 29.739277, 42.569008>,  <34.703907, 29.365107, 42.460289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.613480, 29.739277, 42.569008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257754, -0.211632, 0.942748,
		0.939392, 0.283179, -0.193267,
		-0.226065, 0.935426, 0.271796,
		34.545662, 30.019905, 42.650547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.259335, 29.480570, 42.797855>,  <34.703907, 29.365107, 42.460289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.259335, 29.480570, 42.797855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.986057, 29.749895, 42.910919>,  <34.822090, 29.911489, 42.978756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.986057, 29.749895, 42.910919>,  <35.259335, 29.480570, 42.797855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.986057, 29.749895, 42.910919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362102, -0.023764, 0.931835,
		0.634132, 0.738977, -0.227572,
		-0.683197, 0.673311, 0.282655,
		34.781097, 29.951889, 42.995716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.596336, 30.025280, 43.199364>,  <35.259335, 29.480570, 42.797855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.596336, 30.025280, 43.199364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.210510, 30.036892, 43.304268>,  <34.979015, 30.043859, 43.367210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.210510, 30.036892, 43.304268>,  <35.596336, 30.025280, 43.199364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.210510, 30.036892, 43.304268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262226, -0.004971, 0.964994,
		0.029317, 0.999566, -0.002817,
		-0.964561, 0.029029, 0.262258,
		34.921143, 30.045601, 43.382946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.070507, 30.621113, 43.087822>,  <35.596336, 30.025280, 43.199364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.070507, 30.621113, 43.087822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.464737, 30.670820, 43.133774>,  <36.701275, 30.700644, 43.161346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.464737, 30.670820, 43.133774>,  <36.070507, 30.621113, 43.087822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.464737, 30.670820, 43.133774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079229, 0.261017, -0.962077,
		-0.149539, 0.957302, 0.247407,
		0.985576, 0.124266, 0.114879,
		36.760410, 30.708099, 43.168236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.179417, 31.264824, 42.692673>,  <36.070507, 30.621113, 43.087822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.179417, 31.264824, 42.692673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.519554, 31.055685, 42.716515>,  <36.723637, 30.930202, 42.730820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.519554, 31.055685, 42.716515>,  <36.179417, 31.264824, 42.692673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.519554, 31.055685, 42.716515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157047, 0.144026, -0.977033,
		0.502254, 0.840171, 0.204582,
		0.850340, -0.522847, 0.059609,
		36.774654, 30.898830, 42.734398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.684734, 31.776937, 42.425041>,  <36.179417, 31.264824, 42.692673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.684734, 31.776937, 42.425041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.827778, 31.403522, 42.415070>,  <36.913605, 31.179474, 42.409088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.827778, 31.403522, 42.415070>,  <36.684734, 31.776937, 42.425041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.827778, 31.403522, 42.415070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189563, 0.098697, -0.976896,
		0.914430, 0.344621, 0.212259,
		0.357608, -0.933539, -0.024924,
		36.935059, 31.123461, 42.407593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.236336, 31.717445, 41.831142>,  <36.684734, 31.776937, 42.425041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.236336, 31.717445, 41.831142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.174534, 31.329020, 41.903980>,  <37.137451, 31.095964, 41.947681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.174534, 31.329020, 41.903980>,  <37.236336, 31.717445, 41.831142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.174534, 31.329020, 41.903980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168104, -0.207459, -0.963692,
		0.973586, -0.118286, 0.195294,
		-0.154507, -0.971066, 0.182094,
		37.128181, 31.037701, 41.958607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.839600, 31.377302, 41.732197>,  <37.236336, 31.717445, 41.831142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.839600, 31.377302, 41.732197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.538380, 31.120625, 41.674042>,  <37.357647, 30.966618, 41.639149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.538380, 31.120625, 41.674042>,  <37.839600, 31.377302, 41.732197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.538380, 31.120625, 41.674042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279307, -0.111699, -0.953683,
		0.595735, -0.758781, 0.263345,
		-0.753052, -0.641696, -0.145390,
		37.312466, 30.928116, 41.630424>
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
