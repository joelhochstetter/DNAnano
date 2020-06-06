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
	<24.353655, 35.529213, 35.207150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.512613, 35.220493, 35.008595>,  <24.607988, 35.035263, 34.889462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.512613, 35.220493, 35.008595>,  <24.353655, 35.529213, 35.207150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.512613, 35.220493, 35.008595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758493, 0.580730, -0.295705,
		0.516492, -0.258994, 0.816185,
		0.397398, -0.771800, -0.496387,
		24.631832, 34.988953, 34.859680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.541220, 36.171200, 34.793133>,  <24.353655, 35.529213, 35.207150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.541220, 36.171200, 34.793133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.924116, 36.159019, 34.678059>,  <25.153854, 36.151711, 34.609013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.924116, 36.159019, 34.678059>,  <24.541220, 36.171200, 34.793133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.924116, 36.159019, 34.678059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269538, 0.455088, 0.848672,
		0.105080, -0.889926, 0.443836,
		0.957240, -0.030453, -0.287689,
		25.211288, 36.149883, 34.591751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.964130, 35.940315, 35.304268>,  <24.541220, 36.171200, 34.793133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.964130, 35.940315, 35.304268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.170485, 36.187595, 35.067055>,  <25.294296, 36.335964, 34.924725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.170485, 36.187595, 35.067055>,  <24.964130, 35.940315, 35.304268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.170485, 36.187595, 35.067055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312552, 0.508718, 0.802195,
		0.797606, -0.599194, 0.069219,
		0.515883, 0.618201, -0.593036,
		25.325249, 36.373055, 34.889145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.555510, 36.048923, 35.587383>,  <24.964130, 35.940315, 35.304268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.555510, 36.048923, 35.587383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.569601, 36.353020, 35.327908>,  <25.578056, 36.535477, 35.172222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.569601, 36.353020, 35.327908>,  <25.555510, 36.048923, 35.587383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.569601, 36.353020, 35.327908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509972, 0.544544, 0.665883,
		0.859469, -0.354269, -0.368518,
		0.035227, 0.760240, -0.648687,
		25.580170, 36.581093, 35.133301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.200602, 36.152332, 35.430309>,  <25.555510, 36.048923, 35.587383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.200602, 36.152332, 35.430309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.022163, 36.506306, 35.376808>,  <25.915100, 36.718689, 35.344707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.022163, 36.506306, 35.376808>,  <26.200602, 36.152332, 35.430309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.022163, 36.506306, 35.376808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661283, 0.426610, 0.617015,
		0.603080, 0.186797, -0.775501,
		-0.446093, 0.884935, -0.133754,
		25.888336, 36.771786, 35.336681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.736626, 36.739956, 35.256359>,  <26.200602, 36.152332, 35.430309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.736626, 36.739956, 35.256359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.408941, 36.846706, 35.459404>,  <26.212330, 36.910759, 35.581230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.408941, 36.846706, 35.459404>,  <26.736626, 36.739956, 35.256359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.408941, 36.846706, 35.459404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560819, 0.557860, 0.611780,
		-0.119904, 0.785854, -0.606676,
		-0.819210, 0.266881, 0.507611,
		26.163177, 36.926769, 35.611687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.465454, 37.485229, 35.219231>,  <26.736626, 36.739956, 35.256359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.465454, 37.485229, 35.219231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.419443, 37.299072, 35.570271>,  <26.391836, 37.187378, 35.780895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.419443, 37.299072, 35.570271>,  <26.465454, 37.485229, 35.219231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.419443, 37.299072, 35.570271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554660, 0.702824, 0.445411,
		-0.824088, 0.538001, 0.177293,
		-0.115026, -0.465395, 0.877597,
		26.384935, 37.159454, 35.833549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.247303, 37.959560, 35.794319>,  <26.465454, 37.485229, 35.219231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.247303, 37.959560, 35.794319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.417452, 37.637573, 35.959766>,  <26.519541, 37.444382, 36.059036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.417452, 37.637573, 35.959766>,  <26.247303, 37.959560, 35.794319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.417452, 37.637573, 35.959766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601969, 0.592927, 0.534856,
		-0.675790, 0.021476, 0.736781,
		0.425371, -0.804970, 0.413622,
		26.545063, 37.396084, 36.083855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.281162, 38.187428, 36.464245>,  <26.247303, 37.959560, 35.794319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.281162, 38.187428, 36.464245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.543034, 37.887260, 36.427856>,  <26.700155, 37.707161, 36.406025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.543034, 37.887260, 36.427856>,  <26.281162, 38.187428, 36.464245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.543034, 37.887260, 36.427856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487132, 0.326804, 0.809877,
		-0.578015, -0.574522, 0.579502,
		0.654676, -0.750416, -0.090970,
		26.739437, 37.662136, 36.400566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.253775, 37.866360, 37.131191>,  <26.281162, 38.187428, 36.464245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.253775, 37.866360, 37.131191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.590738, 37.712875, 36.979870>,  <26.792917, 37.620785, 36.889076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.590738, 37.712875, 36.979870>,  <26.253775, 37.866360, 37.131191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.590738, 37.712875, 36.979870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496735, 0.280958, 0.821168,
		-0.208805, -0.879675, 0.427284,
		0.842410, -0.383712, -0.378300,
		26.843462, 37.597763, 36.866379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.685961, 37.562229, 37.707878>,  <26.253775, 37.866360, 37.131191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.685961, 37.562229, 37.707878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.942621, 37.645103, 37.412483>,  <27.096617, 37.694828, 37.235249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.942621, 37.645103, 37.412483>,  <26.685961, 37.562229, 37.707878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.942621, 37.645103, 37.412483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643807, 0.377837, 0.665395,
		0.416889, -0.902392, 0.109050,
		0.641651, 0.207189, -0.738483,
		27.135117, 37.707260, 37.190937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.268578, 37.446316, 38.080173>,  <26.685961, 37.562229, 37.707878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.268578, 37.446316, 38.080173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.387661, 37.658028, 37.762375>,  <27.459110, 37.785053, 37.571693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.387661, 37.658028, 37.762375>,  <27.268578, 37.446316, 38.080173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.387661, 37.658028, 37.762375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747220, 0.388783, 0.538991,
		0.594166, -0.754129, -0.279746,
		0.297708, 0.529281, -0.794501,
		27.476973, 37.816811, 37.524025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.974281, 37.452412, 37.993595>,  <27.268578, 37.446316, 38.080173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.974281, 37.452412, 37.993595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.853628, 37.792175, 37.820377>,  <27.781237, 37.996033, 37.716446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.853628, 37.792175, 37.820377>,  <27.974281, 37.452412, 37.993595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.853628, 37.792175, 37.820377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812713, 0.466549, 0.349041,
		0.498513, -0.246656, -0.831051,
		-0.301633, 0.849407, -0.433041,
		27.763138, 38.046997, 37.690464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.388548, 37.678471, 37.390114>,  <27.974281, 37.452412, 37.993595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.388548, 37.678471, 37.390114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.240133, 37.994888, 37.584671>,  <28.151085, 38.184738, 37.701405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.240133, 37.994888, 37.584671>,  <28.388548, 37.678471, 37.390114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.240133, 37.994888, 37.584671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895484, 0.166118, 0.412933,
		0.245849, 0.588773, -0.770003,
		-0.371035, 0.791044, 0.486397,
		28.128822, 38.232201, 37.730591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.612869, 38.316250, 37.048584>,  <28.388548, 37.678471, 37.390114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.612869, 38.316250, 37.048584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.967791, 38.179653, 36.924603>,  <29.180744, 38.097694, 36.850212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.967791, 38.179653, 36.924603>,  <28.612869, 38.316250, 37.048584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.967791, 38.179653, 36.924603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082413, -0.543859, 0.835120,
		-0.453757, -0.766551, -0.454427,
		0.887307, -0.341491, -0.309954,
		29.233982, 38.077206, 36.831615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.933977, 38.537708, 36.700809>,  <28.612869, 38.316250, 37.048584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.933977, 38.537708, 36.700809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.827930, 38.223133, 36.923962>,  <27.764301, 38.034389, 37.057854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.827930, 38.223133, 36.923962>,  <27.933977, 38.537708, 36.700809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.827930, 38.223133, 36.923962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527650, -0.365934, -0.766601,
		0.807030, -0.497606, -0.317948,
		-0.265118, -0.786436, 0.557881,
		27.748396, 37.987202, 37.091328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.009792, 37.979946, 36.279461>,  <27.933977, 38.537708, 36.700809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.009792, 37.979946, 36.279461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.742247, 37.881157, 36.559925>,  <27.581718, 37.821884, 36.728203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.742247, 37.881157, 36.559925>,  <28.009792, 37.979946, 36.279461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.742247, 37.881157, 36.559925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457864, -0.606197, -0.650296,
		0.585645, -0.755996, 0.292386,
		-0.668865, -0.246970, 0.701160,
		27.541588, 37.807064, 36.770271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.932598, 37.321228, 36.107475>,  <28.009792, 37.979946, 36.279461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.932598, 37.321228, 36.107475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.624004, 37.404720, 36.347889>,  <27.438848, 37.454815, 36.492138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.624004, 37.404720, 36.347889>,  <27.932598, 37.321228, 36.107475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.624004, 37.404720, 36.347889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579530, -0.620416, -0.528421,
		0.262592, -0.755986, 0.599609,
		-0.771486, 0.208732, 0.601032,
		27.392559, 37.467339, 36.528198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.629580, 36.746487, 36.269764>,  <27.932598, 37.321228, 36.107475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.629580, 36.746487, 36.269764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.346510, 37.023125, 36.327583>,  <27.176668, 37.189106, 36.362274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.346510, 37.023125, 36.327583>,  <27.629580, 36.746487, 36.269764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.346510, 37.023125, 36.327583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700981, -0.661652, -0.266164,
		-0.088436, -0.289685, 0.953028,
		-0.707676, 0.691592, 0.144550,
		27.134207, 37.230602, 36.370949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.110214, 36.373234, 36.613529>,  <27.629580, 36.746487, 36.269764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.110214, 36.373234, 36.613529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.933386, 36.698387, 36.461845>,  <26.827290, 36.893478, 36.370834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.933386, 36.698387, 36.461845>,  <27.110214, 36.373234, 36.613529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.933386, 36.698387, 36.461845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705485, -0.576179, -0.412685,
		-0.553953, 0.085086, 0.828189,
		-0.442071, 0.812882, -0.379203,
		26.800764, 36.942253, 36.348083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.401485, 36.437386, 36.793324>,  <27.110214, 36.373234, 36.613529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.401485, 36.437386, 36.793324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.459181, 36.574478, 36.422005>,  <26.493797, 36.656734, 36.199215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.459181, 36.574478, 36.422005>,  <26.401485, 36.437386, 36.793324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.459181, 36.574478, 36.422005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898942, -0.346756, -0.267701,
		-0.413641, 0.873096, 0.258080,
		0.144238, 0.342731, -0.928295,
		26.502453, 36.677296, 36.143517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.836468, 36.930080, 36.568233>,  <26.401485, 36.437386, 36.793324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.836468, 36.930080, 36.568233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.983465, 36.720676, 36.260757>,  <26.071663, 36.595036, 36.076271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.983465, 36.720676, 36.260757>,  <25.836468, 36.930080, 36.568233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.983465, 36.720676, 36.260757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.929908, -0.193607, -0.312711,
		0.014882, 0.829734, -0.557961,
		0.367492, -0.523506, -0.768695,
		26.093714, 36.563625, 36.030148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.417017, 37.189457, 36.123276>,  <25.836468, 36.930080, 36.568233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.417017, 37.189457, 36.123276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.569048, 36.831673, 36.029064>,  <25.660267, 36.617001, 35.972538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.569048, 36.831673, 36.029064>,  <25.417017, 37.189457, 36.123276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.569048, 36.831673, 36.029064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.924952, -0.368162, -0.094446,
		-0.002235, 0.253751, -0.967267,
		0.380077, -0.894464, -0.235531,
		25.683071, 36.563332, 35.958405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.057074, 37.522373, 35.542133>,  <25.417017, 37.189457, 36.123276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.057074, 37.522373, 35.542133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.454153, 37.484653, 35.512043>,  <25.692400, 37.462021, 35.493988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.454153, 37.484653, 35.512043>,  <25.057074, 37.522373, 35.542133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.454153, 37.484653, 35.512043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117975, -0.628747, -0.768609,
		0.025179, 0.771871, -0.635280,
		0.992697, -0.094300, -0.075231,
		25.751963, 37.456364, 35.489475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.267414, 37.779472, 34.918053>,  <25.057074, 37.522373, 35.542133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.267414, 37.779472, 34.918053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.518009, 37.487617, 35.027706>,  <25.668365, 37.312504, 35.093498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.518009, 37.487617, 35.027706>,  <25.267414, 37.779472, 34.918053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.518009, 37.487617, 35.027706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071912, -0.404318, -0.911787,
		0.776107, 0.551510, -0.305770,
		0.626487, -0.729633, 0.274134,
		25.705956, 37.268726, 35.109947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.543049, 37.594902, 34.304424>,  <25.267414, 37.779472, 34.918053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.543049, 37.594902, 34.304424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.579130, 37.278473, 34.546436>,  <25.600779, 37.088615, 34.691643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.579130, 37.278473, 34.546436>,  <25.543049, 37.594902, 34.304424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.579130, 37.278473, 34.546436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410070, -0.583123, -0.701292,
		0.907582, -0.184846, -0.376997,
		0.090205, -0.791075, 0.605032,
		25.606192, 37.041149, 34.727947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.964790, 37.125935, 34.003830>,  <25.543049, 37.594902, 34.304424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.964790, 37.125935, 34.003830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.750715, 36.919403, 34.271255>,  <25.622271, 36.795483, 34.431709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.750715, 36.919403, 34.271255>,  <25.964790, 37.125935, 34.003830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.750715, 36.919403, 34.271255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299981, -0.623692, -0.721817,
		0.789674, -0.586864, 0.178902,
		-0.535188, -0.516333, 0.668561,
		25.590158, 36.764503, 34.471825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.113873, 36.526859, 33.890278>,  <25.964790, 37.125935, 34.003830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.113873, 36.526859, 33.890278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.761641, 36.500366, 34.077976>,  <25.550303, 36.484470, 34.190598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.761641, 36.500366, 34.077976>,  <26.113873, 36.526859, 33.890278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.761641, 36.500366, 34.077976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301788, -0.685078, -0.663017,
		0.365386, -0.725452, 0.583277,
		-0.880578, -0.066232, 0.469251,
		25.497467, 36.480495, 34.218750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.757963, 36.701427, 34.289890>,  <26.113873, 36.526859, 33.890278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.757963, 36.701427, 34.289890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.134701, 36.653770, 34.415581>,  <27.360743, 36.625175, 34.490993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.134701, 36.653770, 34.415581>,  <26.757963, 36.701427, 34.289890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.134701, 36.653770, 34.415581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324174, 0.568549, -0.756085,
		-0.088567, 0.813976, 0.574107,
		0.941843, -0.119146, 0.314224,
		27.417253, 36.618027, 34.509850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.106804, 37.427425, 34.169624>,  <26.757963, 36.701427, 34.289890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.106804, 37.427425, 34.169624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.407576, 37.173977, 34.242424>,  <27.588039, 37.021908, 34.286102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.407576, 37.173977, 34.242424>,  <27.106804, 37.427425, 34.169624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.407576, 37.173977, 34.242424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637182, 0.627707, -0.447194,
		0.169112, 0.452223, 0.875726,
		0.751931, -0.633623, 0.181996,
		27.633154, 36.983891, 34.297024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.804346, 37.810852, 34.301521>,  <27.106804, 37.427425, 34.169624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.804346, 37.810852, 34.301521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.951067, 37.445442, 34.231174>,  <28.039099, 37.226196, 34.188965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.951067, 37.445442, 34.231174>,  <27.804346, 37.810852, 34.301521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.951067, 37.445442, 34.231174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761957, 0.403468, -0.506592,
		0.533741, 0.051816, 0.844059,
		0.366801, -0.913525, -0.175866,
		28.061108, 37.171383, 34.178413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.481567, 37.886429, 34.519604>,  <27.804346, 37.810852, 34.301521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.481567, 37.886429, 34.519604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.429525, 37.600052, 34.245232>,  <28.398300, 37.428226, 34.080608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.429525, 37.600052, 34.245232>,  <28.481567, 37.886429, 34.519604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.429525, 37.600052, 34.245232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766237, 0.366448, -0.527822,
		0.629248, -0.594254, 0.500908,
		-0.130103, -0.715945, -0.685927,
		28.390495, 37.385269, 34.039455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.130701, 37.346416, 34.606335>,  <28.481567, 37.886429, 34.519604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.130701, 37.346416, 34.606335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.976860, 37.292027, 34.241131>,  <28.884556, 37.259392, 34.022007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.976860, 37.292027, 34.241131>,  <29.130701, 37.346416, 34.606335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.976860, 37.292027, 34.241131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883894, 0.230888, -0.406721,
		0.266108, -0.963432, 0.031389,
		-0.384601, -0.135976, -0.913013,
		28.861479, 37.251236, 33.967228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.607779, 36.922585, 34.284931>,  <29.130701, 37.346416, 34.606335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.607779, 36.922585, 34.284931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.401896, 37.081909, 33.981243>,  <29.278366, 37.177505, 33.799030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.401896, 37.081909, 33.981243>,  <29.607779, 36.922585, 34.284931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.401896, 37.081909, 33.981243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850743, 0.347138, -0.394630,
		0.106368, -0.849023, -0.517538,
		-0.514707, 0.398316, -0.759225,
		29.247484, 37.201405, 33.753475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.947111, 36.692680, 33.583202>,  <29.607779, 36.922585, 34.284931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.947111, 36.692680, 33.583202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.739151, 37.030613, 33.532654>,  <29.614376, 37.233372, 33.502323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.739151, 37.030613, 33.532654>,  <29.947111, 36.692680, 33.583202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.739151, 37.030613, 33.532654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741401, 0.372785, -0.557993,
		-0.424300, -0.383791, -0.820167,
		-0.519899, 0.844829, -0.126370,
		29.583181, 37.284061, 33.494743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.066965, 36.765678, 32.861328>,  <29.947111, 36.692680, 33.583202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.066965, 36.765678, 32.861328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.773888, 37.035732, 32.895641>,  <29.598042, 37.197765, 32.916229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.773888, 37.035732, 32.895641>,  <30.066965, 36.765678, 32.861328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.773888, 37.035732, 32.895641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571174, 0.678557, -0.461867,
		-0.370031, -0.289408, -0.882791,
		-0.732692, 0.675132, 0.085785,
		29.554079, 37.238274, 32.921375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.033827, 37.114182, 32.295601>,  <30.066965, 36.765678, 32.861328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.033827, 37.114182, 32.295601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.866480, 37.374264, 32.549278>,  <29.766071, 37.530315, 32.701485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.866480, 37.374264, 32.549278>,  <30.033827, 37.114182, 32.295601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.866480, 37.374264, 32.549278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611830, 0.717796, -0.332313,
		-0.671293, 0.248988, -0.698119,
		-0.418365, 0.650210, 0.634190,
		29.740971, 37.569328, 32.739536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.876326, 37.791782, 31.954041>,  <30.033827, 37.114182, 32.295601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.876326, 37.791782, 31.954041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.928284, 37.892235, 32.337719>,  <29.959457, 37.952507, 32.567928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.928284, 37.892235, 32.337719>,  <29.876326, 37.791782, 31.954041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.928284, 37.892235, 32.337719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537898, 0.794821, -0.280937,
		-0.832943, 0.552442, -0.031842,
		0.129893, 0.251132, 0.959198,
		29.967251, 37.967575, 32.625477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.498802, 37.394562, 31.837500>,  <29.876326, 37.791782, 31.954041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.498802, 37.394562, 31.837500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.855383, 37.388943, 32.018658>,  <31.069332, 37.385571, 32.127354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.855383, 37.388943, 32.018658>,  <30.498802, 37.394562, 31.837500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.855383, 37.388943, 32.018658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053940, 0.989123, 0.136842,
		-0.449893, -0.146418, 0.880998,
		0.891452, -0.014043, 0.452897,
		31.122818, 37.384731, 32.154526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.502352, 37.829491, 32.626896>,  <30.498802, 37.394562, 31.837500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.502352, 37.829491, 32.626896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.844576, 37.819580, 32.420052>,  <31.049910, 37.813633, 32.295944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.844576, 37.819580, 32.420052>,  <30.502352, 37.829491, 32.626896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.844576, 37.819580, 32.420052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098817, 0.988304, 0.116144,
		0.508187, -0.150468, 0.848001,
		0.855559, -0.024774, -0.517112,
		31.101244, 37.812149, 32.264919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.970039, 38.228313, 32.970539>,  <30.502352, 37.829491, 32.626896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.970039, 38.228313, 32.970539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.101505, 38.214874, 32.592999>,  <31.180384, 38.206810, 32.366474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.101505, 38.214874, 32.592999>,  <30.970039, 38.228313, 32.970539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.101505, 38.214874, 32.592999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130914, 0.991340, 0.010302,
		0.935330, -0.126950, 0.330215,
		0.328663, -0.033594, -0.943850,
		31.200104, 38.204796, 32.309845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.891556, 38.934952, 33.217117>,  <30.970039, 38.228313, 32.970539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.891556, 38.934952, 33.217117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.505386, 38.956364, 33.115063>,  <30.273685, 38.969212, 33.053829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.505386, 38.956364, 33.115063>,  <30.891556, 38.934952, 33.217117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.505386, 38.956364, 33.115063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252686, 0.048474, 0.966333,
		0.064098, 0.997389, -0.033271,
		-0.965423, 0.053533, -0.255134,
		30.215759, 38.972424, 33.038521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.767601, 38.405258, 33.630981>,  <30.891556, 38.934952, 33.217117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.767601, 38.405258, 33.630981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.518000, 38.383568, 33.319168>,  <30.368238, 38.370552, 33.132080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.518000, 38.383568, 33.319168>,  <30.767601, 38.405258, 33.630981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.518000, 38.383568, 33.319168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457118, -0.783758, 0.420436,
		-0.633768, 0.618694, 0.464280,
		-0.624004, -0.054228, -0.779537,
		30.330799, 38.367298, 33.085308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.130260, 38.128330, 33.891830>,  <30.767601, 38.405258, 33.630981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.130260, 38.128330, 33.891830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.086273, 38.094879, 33.495667>,  <30.059881, 38.074806, 33.257969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.086273, 38.094879, 33.495667>,  <30.130260, 38.128330, 33.891830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.086273, 38.094879, 33.495667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608947, -0.781873, 0.133635,
		-0.785551, 0.617804, 0.035057,
		-0.109970, -0.083629, -0.990410,
		30.053282, 38.069790, 33.198544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.334249, 38.325241, 33.681927>,  <30.130260, 38.128330, 33.891830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.334249, 38.325241, 33.681927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.495567, 38.084518, 33.406193>,  <29.592358, 37.940083, 33.240753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.495567, 38.084518, 33.406193>,  <29.334249, 38.325241, 33.681927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.495567, 38.084518, 33.406193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740184, -0.657467, 0.140942,
		-0.538033, 0.453391, -0.710603,
		0.403296, -0.601809, -0.689332,
		29.616556, 37.903976, 33.199394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.956032, 38.283390, 33.145966>,  <29.334249, 38.325241, 33.681927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.956032, 38.283390, 33.145966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.144367, 37.931347, 33.170380>,  <29.257368, 37.720123, 33.185028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.144367, 37.931347, 33.170380>,  <28.956032, 38.283390, 33.145966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.144367, 37.931347, 33.170380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872656, -0.454460, 0.178710,
		-0.129548, -0.137403, -0.982007,
		0.470839, -0.880106, 0.061031,
		29.285618, 37.667316, 33.188690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.632452, 37.782127, 32.785370>,  <28.956032, 38.283390, 33.145966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.632452, 37.782127, 32.785370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.820999, 37.593189, 33.083282>,  <28.934128, 37.479828, 33.262032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.820999, 37.593189, 33.083282>,  <28.632452, 37.782127, 32.785370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.820999, 37.593189, 33.083282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875858, -0.349689, 0.332551,
		0.103366, -0.809081, -0.578536,
		0.471369, -0.472341, 0.744786,
		28.962410, 37.451488, 33.306717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.309719, 37.129410, 32.836361>,  <28.632452, 37.782127, 32.785370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.309719, 37.129410, 32.836361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.483631, 37.191078, 33.191257>,  <28.587978, 37.228077, 33.404194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.483631, 37.191078, 33.191257>,  <28.309719, 37.129410, 32.836361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.483631, 37.191078, 33.191257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726227, -0.522564, 0.446678,
		0.532503, -0.838546, -0.115241,
		0.434781, 0.154166, 0.887242,
		28.614065, 37.237328, 33.457432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.253565, 36.414471, 33.164742>,  <28.309719, 37.129410, 32.836361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.253565, 36.414471, 33.164742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.302574, 36.691608, 33.448982>,  <28.331980, 36.857891, 33.619526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.302574, 36.691608, 33.448982>,  <28.253565, 36.414471, 33.164742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.302574, 36.691608, 33.448982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536921, -0.555900, 0.634579,
		0.834688, -0.459290, 0.303890,
		0.122524, 0.692841, 0.710605,
		28.339331, 36.899460, 33.662163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.537161, 36.100899, 33.704964>,  <28.253565, 36.414471, 33.164742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.537161, 36.100899, 33.704964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.368877, 36.432720, 33.851852>,  <28.267908, 36.631813, 33.939987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.368877, 36.432720, 33.851852>,  <28.537161, 36.100899, 33.704964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.368877, 36.432720, 33.851852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391729, -0.531220, 0.751234,
		0.818262, 0.172198, 0.548447,
		-0.420708, 0.829549, 0.367223,
		28.242664, 36.681583, 33.962021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.616070, 36.099281, 34.382133>,  <28.537161, 36.100899, 33.704964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.616070, 36.099281, 34.382133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.319437, 36.365147, 34.345734>,  <28.141457, 36.524666, 34.323895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.319437, 36.365147, 34.345734>,  <28.616070, 36.099281, 34.382133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.319437, 36.365147, 34.345734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397986, -0.326673, 0.857258,
		0.540058, 0.671946, 0.506781,
		-0.741582, 0.664661, -0.091003,
		28.096962, 36.564545, 34.318432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.554569, 35.383675, 34.637753>,  <28.616070, 36.099281, 34.382133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.554569, 35.383675, 34.637753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.564859, 35.444820, 34.242588>,  <28.571033, 35.481506, 34.005489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.564859, 35.444820, 34.242588>,  <28.554569, 35.383675, 34.637753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.564859, 35.444820, 34.242588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992129, -0.125049, 0.006487,
		-0.122546, -0.980303, -0.154879,
		0.025727, 0.152865, -0.987912,
		28.572577, 35.490681, 33.946213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.749275, 34.731800, 34.170341>,  <28.554569, 35.383675, 34.637753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.749275, 34.731800, 34.170341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.844942, 35.092384, 34.026024>,  <28.902342, 35.308735, 33.939434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.844942, 35.092384, 34.026024>,  <28.749275, 34.731800, 34.170341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.844942, 35.092384, 34.026024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965250, -0.180428, 0.189043,
		0.105317, -0.393468, -0.913286,
		0.239165, 0.901459, -0.360793,
		28.916691, 35.362823, 33.917786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.255281, 34.626072, 33.670414>,  <28.749275, 34.731800, 34.170341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.255281, 34.626072, 33.670414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.291811, 35.002647, 33.800251>,  <29.313728, 35.228592, 33.878151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.291811, 35.002647, 33.800251>,  <29.255281, 34.626072, 33.670414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.291811, 35.002647, 33.800251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984030, -0.135324, 0.115637,
		0.152789, 0.308847, -0.938759,
		0.091323, 0.941436, 0.324591,
		29.319208, 35.285080, 33.897629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.614340, 33.981121, 33.652950>,  <29.255281, 34.626072, 33.670414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.614340, 33.981121, 33.652950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.741117, 33.707760, 33.389893>,  <29.817184, 33.543743, 33.232056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.741117, 33.707760, 33.389893>,  <29.614340, 33.981121, 33.652950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.741117, 33.707760, 33.389893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847354, 0.515531, -0.127350,
		0.426070, -0.516898, 0.742482,
		0.316946, -0.683406, -0.657649,
		29.836201, 33.502739, 33.192596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.485044, 33.175102, 33.673187>,  <29.614340, 33.981121, 33.652950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.485044, 33.175102, 33.673187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.827839, 32.968967, 33.672718>,  <30.033516, 32.845287, 33.672436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.827839, 32.968967, 33.672718>,  <29.485044, 33.175102, 33.673187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.827839, 32.968967, 33.672718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391624, 0.649776, 0.651477,
		-0.334969, -0.558767, 0.758667,
		0.856987, -0.515337, -0.001172,
		30.084934, 32.814365, 33.672367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.650982, 32.892666, 34.345886>,  <29.485044, 33.175102, 33.673187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.650982, 32.892666, 34.345886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.998442, 32.963371, 34.160759>,  <30.206919, 33.005795, 34.049683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.998442, 32.963371, 34.160759>,  <29.650982, 32.892666, 34.345886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.998442, 32.963371, 34.160759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288757, 0.578463, 0.762889,
		0.402572, -0.796327, 0.451441,
		0.868651, 0.176761, -0.462818,
		30.259037, 33.016399, 34.021912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.315971, 32.792347, 34.678345>,  <29.650982, 32.892666, 34.345886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.315971, 32.792347, 34.678345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.409315, 33.080856, 34.417480>,  <30.465321, 33.253963, 34.260963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.409315, 33.080856, 34.417480>,  <30.315971, 32.792347, 34.678345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.409315, 33.080856, 34.417480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182909, 0.626143, 0.757951,
		0.955033, -0.296159, 0.014188,
		0.233358, 0.721273, -0.652158,
		30.479322, 33.297237, 34.221832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.760811, 33.314884, 35.046238>,  <30.315971, 32.792347, 34.678345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.760811, 33.314884, 35.046238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.585829, 33.472218, 34.722778>,  <30.480839, 33.566616, 34.528702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.585829, 33.472218, 34.722778>,  <30.760811, 33.314884, 35.046238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.585829, 33.472218, 34.722778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131016, 0.861789, 0.490056,
		0.889644, 0.320325, -0.325462,
		-0.437457, 0.393334, -0.808653,
		30.454592, 33.590218, 34.480183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.944185, 33.945683, 34.933353>,  <30.760811, 33.314884, 35.046238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.944185, 33.945683, 34.933353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.586834, 33.983829, 34.757725>,  <30.372423, 34.006718, 34.652348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.586834, 33.983829, 34.757725>,  <30.944185, 33.945683, 34.933353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.586834, 33.983829, 34.757725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113655, 0.897469, 0.426183,
		0.434696, 0.430645, -0.790939,
		-0.893377, 0.095366, -0.439071,
		30.318821, 34.012440, 34.626003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.217192, 33.580666, 35.683796>,  <30.944185, 33.945683, 34.933353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.217192, 33.580666, 35.683796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.563189, 33.475067, 35.513107>,  <31.770786, 33.411709, 35.410694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.563189, 33.475067, 35.513107>,  <31.217192, 33.580666, 35.683796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.563189, 33.475067, 35.513107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084040, -0.762176, 0.641892,
		-0.494695, -0.591094, -0.637091,
		0.864994, -0.263999, -0.426720,
		31.822687, 33.395866, 35.385090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.081175, 34.176254, 36.131855>,  <31.217192, 33.580666, 35.683796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.081175, 34.176254, 36.131855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.331461, 33.871666, 36.199562>,  <31.481632, 33.688915, 36.240185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.331461, 33.871666, 36.199562>,  <31.081175, 34.176254, 36.131855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.331461, 33.871666, 36.199562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767367, 0.561898, -0.308899,
		0.140107, 0.323170, 0.935912,
		0.625714, -0.761467, 0.169264,
		31.519175, 33.643227, 36.250340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.717178, 34.381577, 36.520893>,  <31.081175, 34.176254, 36.131855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.717178, 34.381577, 36.520893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.800726, 34.062309, 36.294865>,  <31.850855, 33.870750, 36.159248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.800726, 34.062309, 36.294865>,  <31.717178, 34.381577, 36.520893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.800726, 34.062309, 36.294865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781978, 0.483295, -0.393620,
		0.587269, -0.359655, 0.725095,
		0.208868, -0.798169, -0.565067,
		31.863386, 33.822857, 36.125343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.245354, 34.709946, 36.046658>,  <31.717178, 34.381577, 36.520893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.245354, 34.709946, 36.046658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.199577, 34.338520, 35.905418>,  <32.172112, 34.115665, 35.820675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.199577, 34.338520, 35.905418>,  <32.245354, 34.709946, 36.046658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.199577, 34.338520, 35.905418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719486, 0.167612, -0.673978,
		0.685013, -0.331178, 0.648905,
		-0.114443, -0.928562, -0.353095,
		32.165245, 34.059952, 35.799492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.898399, 34.485531, 35.907452>,  <32.245354, 34.709946, 36.046658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.898399, 34.485531, 35.907452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.657856, 34.262016, 35.679020>,  <32.513531, 34.127907, 35.541962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.657856, 34.262016, 35.679020>,  <32.898399, 34.485531, 35.907452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.657856, 34.262016, 35.679020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682277, 0.012812, -0.730982,
		0.415779, -0.829213, 0.373542,
		-0.601354, -0.558786, -0.571079,
		32.477451, 34.094379, 35.507694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.367336, 33.949284, 35.846493>,  <32.898399, 34.485531, 35.907452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.367336, 33.949284, 35.846493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.089966, 34.041847, 35.573551>,  <32.923546, 34.097385, 35.409786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.089966, 34.041847, 35.573551>,  <33.367336, 33.949284, 35.846493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.089966, 34.041847, 35.573551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720498, 0.231688, -0.653607,
		0.006842, -0.944865, -0.327390,
		-0.693423, 0.231412, -0.682359,
		32.881939, 34.111271, 35.368843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.612350, 33.689030, 35.221291>,  <33.367336, 33.949284, 35.846493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.612350, 33.689030, 35.221291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.387051, 34.016537, 35.176815>,  <33.251869, 34.213039, 35.150127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.387051, 34.016537, 35.176815>,  <33.612350, 33.689030, 35.221291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.387051, 34.016537, 35.176815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567901, 0.285851, -0.771866,
		-0.600195, -0.497903, -0.625986,
		-0.563253, 0.818769, -0.111193,
		33.218075, 34.262169, 35.143456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.242359, 33.854103, 34.593792>,  <33.612350, 33.689030, 35.221291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.242359, 33.854103, 34.593792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.357899, 34.221577, 34.701561>,  <33.427223, 34.442062, 34.766224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.357899, 34.221577, 34.701561>,  <33.242359, 33.854103, 34.593792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.357899, 34.221577, 34.701561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533537, 0.079202, -0.842060,
		-0.794925, 0.386975, -0.467274,
		0.288847, 0.918682, 0.269425,
		33.444553, 34.497181, 34.782387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.975735, 34.352562, 34.079540>,  <33.242359, 33.854103, 34.593792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.975735, 34.352562, 34.079540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.309486, 34.479698, 34.259666>,  <33.509739, 34.555981, 34.367744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.309486, 34.479698, 34.259666>,  <32.975735, 34.352562, 34.079540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.309486, 34.479698, 34.259666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505891, -0.117252, -0.854591,
		-0.218825, 0.940866, -0.258627,
		0.834380, 0.317843, 0.450318,
		33.559799, 34.575050, 34.394760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.243141, 34.846062, 33.672955>,  <32.975735, 34.352562, 34.079540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.243141, 34.846062, 33.672955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.560474, 34.747604, 33.895676>,  <33.750874, 34.688530, 34.029308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.560474, 34.747604, 33.895676>,  <33.243141, 34.846062, 33.672955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.560474, 34.747604, 33.895676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572895, -0.007549, -0.819594,
		0.205940, 0.969205, 0.135024,
		0.793335, -0.246142, 0.556807,
		33.798473, 34.673763, 34.062717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.797134, 35.306881, 33.475140>,  <33.243141, 34.846062, 33.672955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.797134, 35.306881, 33.475140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.956821, 34.967407, 33.613914>,  <34.052635, 34.763725, 33.697178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.956821, 34.967407, 33.613914>,  <33.797134, 35.306881, 33.475140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.956821, 34.967407, 33.613914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142619, -0.316311, -0.937874,
		0.905695, 0.423898, -0.005240,
		0.399221, -0.848680, 0.346937,
		34.076588, 34.712803, 33.717995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.396145, 35.501305, 33.257397>,  <33.797134, 35.306881, 33.475140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.396145, 35.501305, 33.257397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.388870, 35.104748, 33.309258>,  <34.384506, 34.866814, 33.340374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.388870, 35.104748, 33.309258>,  <34.396145, 35.501305, 33.257397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.388870, 35.104748, 33.309258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735576, -0.101101, -0.669856,
		0.677198, 0.083185, 0.731083,
		-0.018191, -0.991392, 0.129655,
		34.383411, 34.807331, 33.348152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.108189, 35.331211, 33.274597>,  <34.396145, 35.501305, 33.257397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.108189, 35.331211, 33.274597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.954666, 34.971031, 33.192730>,  <34.862553, 34.754925, 33.143608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.954666, 34.971031, 33.192730>,  <35.108189, 35.331211, 33.274597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.954666, 34.971031, 33.192730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724988, -0.156566, -0.670730,
		0.571912, -0.405814, 0.712904,
		-0.383808, -0.900445, -0.204669,
		34.839523, 34.700897, 33.131329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.587959, 34.973846, 33.058399>,  <35.108189, 35.331211, 33.274597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.587959, 34.973846, 33.058399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.302822, 34.720924, 32.937038>,  <35.131741, 34.569172, 32.864223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.302822, 34.720924, 32.937038>,  <35.587959, 34.973846, 33.058399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.302822, 34.720924, 32.937038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550289, -0.236084, -0.800904,
		0.434786, -0.737874, 0.516240,
		-0.712842, -0.632303, -0.303398,
		35.088970, 34.531235, 32.846020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.037571, 34.517551, 32.820839>,  <35.587959, 34.973846, 33.058399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.037571, 34.517551, 32.820839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.683609, 34.423870, 32.659794>,  <35.471233, 34.367661, 32.563168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.683609, 34.423870, 32.659794>,  <36.037571, 34.517551, 32.820839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.683609, 34.423870, 32.659794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465013, -0.394829, -0.792384,
		0.026617, -0.888403, 0.458293,
		-0.884904, -0.234203, -0.402610,
		35.418137, 34.353611, 32.539009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.006775, 33.764725, 32.660610>,  <36.037571, 34.517551, 32.820839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.006775, 33.764725, 32.660610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.750782, 33.948814, 32.414482>,  <35.597187, 34.059269, 32.266804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.750782, 33.948814, 32.414482>,  <36.006775, 33.764725, 32.660610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.750782, 33.948814, 32.414482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462758, -0.408441, -0.786785,
		-0.613419, -0.788272, 0.048423,
		-0.639979, 0.460221, -0.615324,
		35.558788, 34.086880, 32.229885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.010685, 33.288925, 32.118233>,  <36.006775, 33.764725, 32.660610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.010685, 33.288925, 32.118233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.868217, 33.641216, 31.993351>,  <35.782738, 33.852589, 31.918423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.868217, 33.641216, 31.993351>,  <36.010685, 33.288925, 32.118233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.868217, 33.641216, 31.993351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511852, -0.095637, -0.853733,
		-0.781761, -0.463875, -0.416737,
		-0.356170, 0.880723, -0.312201,
		35.761368, 33.905434, 31.899691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.847748, 33.099464, 31.443623>,  <36.010685, 33.288925, 32.118233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.847748, 33.099464, 31.443623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.844173, 33.499447, 31.442818>,  <35.842030, 33.739437, 31.442335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.844173, 33.499447, 31.442818>,  <35.847748, 33.099464, 31.443623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.844173, 33.499447, 31.442818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531576, 0.003045, -0.847005,
		-0.846963, -0.008635, -0.531581,
		-0.008932, 0.999958, -0.002011,
		35.841496, 33.799435, 31.442215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.676651, 33.374786, 30.788095>,  <35.847748, 33.099464, 31.443623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.676651, 33.374786, 30.788095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.839073, 33.699112, 30.956709>,  <35.936527, 33.893707, 31.057877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.839073, 33.699112, 30.956709>,  <35.676651, 33.374786, 30.788095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.839073, 33.699112, 30.956709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469930, 0.210346, -0.857275,
		-0.783762, 0.546196, -0.295615,
		0.406058, 0.810817, 0.421535,
		35.960892, 33.942356, 31.083170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.682392, 33.847080, 30.264420>,  <35.676651, 33.374786, 30.788095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.682392, 33.847080, 30.264420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.945347, 33.975208, 30.537254>,  <36.103119, 34.052086, 30.700956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.945347, 33.975208, 30.537254>,  <35.682392, 33.847080, 30.264420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.945347, 33.975208, 30.537254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553185, 0.409508, -0.725458,
		-0.511698, 0.854225, 0.092008,
		0.657383, 0.320318, 0.682088,
		36.142563, 34.071304, 30.741880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.697304, 34.496220, 30.180723>,  <35.682392, 33.847080, 30.264420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.697304, 34.496220, 30.180723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.035606, 34.411793, 30.376740>,  <36.238590, 34.361137, 30.494349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.035606, 34.411793, 30.376740>,  <35.697304, 34.496220, 30.180723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.035606, 34.411793, 30.376740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528030, 0.463022, -0.711896,
		-0.076638, 0.860848, 0.503058,
		0.845761, -0.211071, 0.490039,
		36.289333, 34.348473, 30.523750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.054680, 35.106735, 30.386560>,  <35.697304, 34.496220, 30.180723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.054680, 35.106735, 30.386560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.334949, 34.822433, 30.361649>,  <36.503113, 34.651852, 30.346701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.334949, 34.822433, 30.361649>,  <36.054680, 35.106735, 30.386560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.334949, 34.822433, 30.361649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540391, 0.585666, -0.604131,
		0.465865, 0.389644, 0.794448,
		0.700677, -0.710755, -0.062281,
		36.545151, 34.609207, 30.342964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.680294, 35.467274, 30.538002>,  <36.054680, 35.106735, 30.386560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.680294, 35.467274, 30.538002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.790340, 35.128529, 30.355953>,  <36.856369, 34.925282, 30.246723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.790340, 35.128529, 30.355953>,  <36.680294, 35.467274, 30.538002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.790340, 35.128529, 30.355953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433842, 0.531806, -0.727298,
		0.857958, 0.002642, 0.513713,
		0.275118, -0.846862, -0.455121,
		36.872875, 34.874470, 30.219418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.447384, 35.534641, 30.411072>,  <36.680294, 35.467274, 30.538002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.447384, 35.534641, 30.411072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.257725, 35.291451, 30.156342>,  <37.143929, 35.145538, 30.003504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.257725, 35.291451, 30.156342>,  <37.447384, 35.534641, 30.411072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.257725, 35.291451, 30.156342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485063, 0.423249, -0.765228,
		0.734775, -0.671736, 0.094221,
		-0.474152, -0.607973, -0.636827,
		37.115479, 35.109058, 29.965294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.874554, 35.510105, 29.853268>,  <37.447384, 35.534641, 30.411072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.874554, 35.510105, 29.853268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.553837, 35.341652, 29.683666>,  <37.361408, 35.240582, 29.581905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.553837, 35.341652, 29.683666>,  <37.874554, 35.510105, 29.853268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.553837, 35.341652, 29.683666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272367, 0.374011, -0.886528,
		0.531929, -0.826294, -0.185175,
		-0.801790, -0.421135, -0.424003,
		37.313301, 35.215313, 29.556465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.111744, 35.095798, 29.194786>,  <37.874554, 35.510105, 29.853268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.111744, 35.095798, 29.194786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.719318, 35.150608, 29.140038>,  <37.483864, 35.183495, 29.107189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.719318, 35.150608, 29.140038>,  <38.111744, 35.095798, 29.194786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.719318, 35.150608, 29.140038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173912, 0.312319, -0.933923,
		-0.085220, -0.940044, -0.330235,
		-0.981067, 0.137021, -0.136869,
		37.424999, 35.191715, 29.098976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.967850, 34.848431, 28.500381>,  <38.111744, 35.095798, 29.194786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.967850, 34.848431, 28.500381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.658203, 35.089188, 28.578838>,  <37.472416, 35.233643, 28.625912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.658203, 35.089188, 28.578838>,  <37.967850, 34.848431, 28.500381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.658203, 35.089188, 28.578838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075496, 0.395401, -0.915401,
		-0.628527, -0.693818, -0.351526,
		-0.774115, 0.601893, 0.196140,
		37.425968, 35.269756, 28.637680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.405510, 34.621159, 28.059797>,  <37.967850, 34.848431, 28.500381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.405510, 34.621159, 28.059797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.366703, 35.005630, 28.163116>,  <37.343418, 35.236313, 28.225107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.366703, 35.005630, 28.163116>,  <37.405510, 34.621159, 28.059797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.366703, 35.005630, 28.163116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100283, 0.267642, -0.958286,
		-0.990217, -0.067071, -0.122357,
		-0.097021, 0.961181, 0.258297,
		37.337597, 35.293983, 28.240606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.930515, 34.820129, 27.536823>,  <37.405510, 34.621159, 28.059797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.930515, 34.820129, 27.536823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.090443, 35.147438, 27.702028>,  <37.186401, 35.343822, 27.801151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.090443, 35.147438, 27.702028>,  <36.930515, 34.820129, 27.536823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.090443, 35.147438, 27.702028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331408, 0.291058, -0.897471,
		-0.854583, 0.495703, -0.154810,
		0.399820, 0.818269, 0.413013,
		37.210388, 35.392918, 27.825932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.456890, 35.269787, 27.286507>,  <36.930515, 34.820129, 27.536823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.456890, 35.269787, 27.286507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.791718, 35.459633, 27.395361>,  <36.992615, 35.573540, 27.460672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.791718, 35.459633, 27.395361>,  <36.456890, 35.269787, 27.286507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.791718, 35.459633, 27.395361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248032, 0.114143, -0.962004,
		-0.487646, 0.872760, -0.022175,
		0.837067, 0.474617, 0.272134,
		37.042839, 35.602016, 27.477001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.439217, 35.936699, 26.869120>,  <36.456890, 35.269787, 27.286507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.439217, 35.936699, 26.869120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.807804, 35.858265, 27.003252>,  <37.028957, 35.811203, 27.083733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.807804, 35.858265, 27.003252>,  <36.439217, 35.936699, 26.869120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.807804, 35.858265, 27.003252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387232, 0.395198, -0.832988,
		0.030816, 0.897423, 0.440094,
		0.921467, -0.196088, 0.335332,
		37.084244, 35.799438, 27.103851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.836227, 36.533688, 26.895021>,  <36.439217, 35.936699, 26.869120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.836227, 36.533688, 26.895021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.071106, 36.219414, 26.817158>,  <37.212032, 36.030849, 26.770439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.071106, 36.219414, 26.817158>,  <36.836227, 36.533688, 26.895021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.071106, 36.219414, 26.817158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330740, 0.452382, -0.828228,
		0.738788, 0.421954, 0.525497,
		0.587200, -0.785687, -0.194657,
		37.247265, 35.983707, 26.758760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.080376, 36.734921, 26.305605>,  <36.836227, 36.533688, 26.895021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.080376, 36.734921, 26.305605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.274288, 36.385185, 26.314684>,  <37.390636, 36.175343, 26.320131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.274288, 36.385185, 26.314684>,  <37.080376, 36.734921, 26.305605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.274288, 36.385185, 26.314684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363807, 0.177980, -0.914313,
		0.795382, 0.451498, 0.404373,
		0.484781, -0.874341, 0.022696,
		37.419724, 36.122883, 26.321493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.814568, 36.856064, 26.094522>,  <37.080376, 36.734921, 26.305605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.814568, 36.856064, 26.094522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.749760, 36.466381, 26.031687>,  <37.710876, 36.232571, 25.993986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.749760, 36.466381, 26.031687>,  <37.814568, 36.856064, 26.094522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.749760, 36.466381, 26.031687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408865, 0.078608, -0.909203,
		0.898098, -0.211536, 0.385581,
		-0.162019, -0.974204, -0.157087,
		37.701153, 36.174118, 25.984560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.525398, 36.448338, 25.996658>,  <37.814568, 36.856064, 26.094522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.525398, 36.448338, 25.996658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.210705, 36.253952, 25.844402>,  <38.021889, 36.137321, 25.753048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.210705, 36.253952, 25.844402>,  <38.525398, 36.448338, 25.996658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.210705, 36.253952, 25.844402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446207, -0.021604, -0.894669,
		0.426557, -0.873710, 0.233838,
		-0.786733, -0.485968, -0.380640,
		37.974686, 36.108162, 25.730211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.841988, 35.874111, 25.535318>,  <38.525398, 36.448338, 25.996658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.841988, 35.874111, 25.535318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.465374, 35.921883, 25.409300>,  <38.239407, 35.950546, 25.333689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.465374, 35.921883, 25.409300>,  <38.841988, 35.874111, 25.535318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.465374, 35.921883, 25.409300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301783, -0.116835, -0.946190,
		-0.149812, -0.985944, 0.073962,
		-0.941533, 0.119430, -0.315045,
		38.182915, 35.957710, 25.314787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.838192, 35.445427, 25.013397>,  <38.841988, 35.874111, 25.535318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.838192, 35.445427, 25.013397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.505177, 35.658203, 24.951532>,  <38.305367, 35.785870, 24.914413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.505177, 35.658203, 24.951532>,  <38.838192, 35.445427, 25.013397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.505177, 35.658203, 24.951532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125453, -0.090895, -0.987927,
		-0.539580, -0.841887, 0.008939,
		-0.832535, 0.531944, -0.154663,
		38.255417, 35.817787, 24.905134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.296921, 35.102058, 24.478674>,  <38.838192, 35.445427, 25.013397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.296921, 35.102058, 24.478674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.230522, 35.495556, 24.506060>,  <38.190685, 35.731655, 24.522491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.230522, 35.495556, 24.506060>,  <38.296921, 35.102058, 24.478674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.230522, 35.495556, 24.506060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124027, 0.048049, -0.991115,
		-0.978296, -0.173009, 0.114035,
		-0.165993, 0.983748, 0.068464,
		38.180725, 35.790680, 24.526598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.752758, 35.271034, 24.015799>,  <38.296921, 35.102058, 24.478674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.752758, 35.271034, 24.015799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.952335, 35.613384, 24.070263>,  <38.072083, 35.818794, 24.102942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.952335, 35.613384, 24.070263>,  <37.752758, 35.271034, 24.015799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.952335, 35.613384, 24.070263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005355, 0.160157, -0.987077,
		-0.866617, 0.491768, 0.084493,
		0.498945, 0.855870, 0.136161,
		38.102020, 35.870144, 24.111111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.651295, 35.597546, 23.440775>,  <37.752758, 35.271034, 24.015799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.651295, 35.597546, 23.440775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.926685, 35.844143, 23.593586>,  <38.091919, 35.992100, 23.685272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.926685, 35.844143, 23.593586>,  <37.651295, 35.597546, 23.440775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.926685, 35.844143, 23.593586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267305, 0.273974, -0.923844,
		-0.674206, 0.738159, 0.023833,
		0.688473, 0.616490, 0.382028,
		38.133228, 36.029091, 23.708195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.485275, 36.313206, 23.229576>,  <37.651295, 35.597546, 23.440775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.485275, 36.313206, 23.229576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.879326, 36.328358, 23.296614>,  <38.115757, 36.337448, 23.336836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.879326, 36.328358, 23.296614>,  <37.485275, 36.313206, 23.229576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.879326, 36.328358, 23.296614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133434, 0.445844, -0.885109,
		-0.108246, 0.894309, 0.434160,
		0.985129, 0.037878, 0.167592,
		38.174866, 36.339722, 23.346891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.662048, 36.998165, 23.174383>,  <37.485275, 36.313206, 23.229576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.662048, 36.998165, 23.174383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.985668, 36.772831, 23.107340>,  <38.179840, 36.637630, 23.067114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.985668, 36.772831, 23.107340>,  <37.662048, 36.998165, 23.174383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.985668, 36.772831, 23.107340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071974, 0.377988, -0.923009,
		0.583317, 0.734696, 0.346356,
		0.809049, -0.563336, -0.167608,
		38.228382, 36.603828, 23.057058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.139557, 37.400581, 22.869713>,  <37.662048, 36.998165, 23.174383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.139557, 37.400581, 22.869713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.297173, 37.045174, 22.775677>,  <38.391743, 36.831928, 22.719255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.297173, 37.045174, 22.775677>,  <38.139557, 37.400581, 22.869713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.297173, 37.045174, 22.775677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181818, 0.326085, -0.927691,
		0.900932, 0.322800, 0.290038,
		0.394036, -0.888520, -0.235089,
		38.415382, 36.778618, 22.705151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.811024, 37.459576, 22.719416>,  <38.139557, 37.400581, 22.869713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.811024, 37.459576, 22.719416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.723606, 37.128677, 22.512377>,  <38.671154, 36.930138, 22.388153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.723606, 37.128677, 22.512377>,  <38.811024, 37.459576, 22.719416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.723606, 37.128677, 22.512377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192731, 0.483380, -0.853931,
		0.956604, -0.286382, 0.053794,
		-0.218548, -0.827242, -0.517598,
		38.658043, 36.880505, 22.357098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.295444, 37.520107, 22.160927>,  <38.811024, 37.459576, 22.719416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.295444, 37.520107, 22.160927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.036243, 37.235264, 22.052858>,  <38.880722, 37.064358, 21.988018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.036243, 37.235264, 22.052858>,  <39.295444, 37.520107, 22.160927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.036243, 37.235264, 22.052858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098115, 0.273718, -0.956793,
		0.755289, -0.646515, -0.107503,
		-0.648006, -0.712107, -0.270169,
		38.841843, 37.021633, 21.971807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.598595, 37.222786, 21.611704>,  <39.295444, 37.520107, 22.160927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.598595, 37.222786, 21.611704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.207684, 37.143265, 21.582283>,  <38.973137, 37.095554, 21.564631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.207684, 37.143265, 21.582283>,  <39.598595, 37.222786, 21.611704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.207684, 37.143265, 21.582283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003388, 0.332305, -0.943166,
		0.211943, -0.921983, -0.324080,
		-0.977276, -0.198799, -0.073553,
		38.914501, 37.083626, 21.560217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.551353, 36.852127, 20.985357>,  <39.598595, 37.222786, 21.611704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.551353, 36.852127, 20.985357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.177776, 36.976997, 21.054993>,  <38.953632, 37.051918, 21.096773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.177776, 36.976997, 21.054993>,  <39.551353, 36.852127, 20.985357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.177776, 36.976997, 21.054993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014217, 0.454222, -0.890775,
		-0.357150, -0.834405, -0.419777,
		-0.933939, 0.312172, 0.174088,
		38.897594, 37.070648, 21.107220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.230083, 36.776134, 20.398457>,  <39.551353, 36.852127, 20.985357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.230083, 36.776134, 20.398457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.978767, 37.045834, 20.553709>,  <38.827976, 37.207653, 20.646860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.978767, 37.045834, 20.553709>,  <39.230083, 36.776134, 20.398457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.978767, 37.045834, 20.553709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084997, 0.436417, -0.895721,
		-0.773323, -0.595761, -0.216888,
		-0.628289, 0.674247, 0.388129,
		38.790279, 37.248108, 20.670147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.865925, 36.997509, 19.828114>,  <39.230083, 36.776134, 20.398457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.865925, 36.997509, 19.828114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.803223, 37.272533, 20.111717>,  <38.765602, 37.437546, 20.281879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.803223, 37.272533, 20.111717>,  <38.865925, 36.997509, 19.828114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.803223, 37.272533, 20.111717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014448, 0.716211, -0.697735,
		-0.987532, -0.119617, -0.102337,
		-0.156756, 0.687557, 0.709009,
		38.756195, 37.478802, 20.324419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.295143, 37.440460, 19.549540>,  <38.865925, 36.997509, 19.828114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.295143, 37.440460, 19.549540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.540195, 37.634945, 19.798790>,  <38.687225, 37.751637, 19.948339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.540195, 37.634945, 19.798790>,  <38.295143, 37.440460, 19.549540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.540195, 37.634945, 19.798790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114583, 0.725428, -0.678694,
		-0.782023, 0.487185, 0.388704,
		0.612627, 0.486215, 0.623124,
		38.723984, 37.780811, 19.985727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.027050, 38.047550, 19.643963>,  <38.295143, 37.440460, 19.549540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.027050, 38.047550, 19.643963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.416191, 38.115715, 19.706594>,  <38.649677, 38.156612, 19.744173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.416191, 38.115715, 19.706594>,  <38.027050, 38.047550, 19.643963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.416191, 38.115715, 19.706594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041215, 0.793362, -0.607353,
		-0.227723, 0.584412, 0.778848,
		0.972853, 0.170408, 0.156580,
		38.708046, 38.166836, 19.753569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.265392, 38.844521, 19.677208>,  <38.027050, 38.047550, 19.643963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.265392, 38.844521, 19.677208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.357395, 39.221855, 19.772890>,  <38.412598, 39.448254, 19.830299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.357395, 39.221855, 19.772890>,  <38.265392, 38.844521, 19.677208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.357395, 39.221855, 19.772890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268246, 0.174820, -0.947356,
		-0.935491, 0.282060, -0.212837,
		0.230003, 0.943335, 0.239204,
		38.426395, 39.504856, 19.844650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.085960, 39.244995, 19.028229>,  <38.265392, 38.844521, 19.677208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.085960, 39.244995, 19.028229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.337688, 39.479092, 19.232759>,  <38.488724, 39.619549, 19.355478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.337688, 39.479092, 19.232759>,  <38.085960, 39.244995, 19.028229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.337688, 39.479092, 19.232759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384335, 0.337493, -0.859293,
		-0.675460, 0.737290, -0.012537,
		0.629318, 0.585237, 0.511329,
		38.526485, 39.654663, 19.386158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.467102, 39.630627, 18.561117>,  <38.085960, 39.244995, 19.028229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.467102, 39.630627, 18.561117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.703098, 39.665298, 18.882215>,  <38.844696, 39.686100, 19.074875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.703098, 39.665298, 18.882215>,  <38.467102, 39.630627, 18.561117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.703098, 39.665298, 18.882215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765684, 0.255423, -0.590328,
		-0.256208, 0.962936, 0.084330,
		0.589988, 0.086676, 0.802746,
		38.880096, 39.691303, 19.123039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.848736, 40.273033, 18.468973>,  <38.467102, 39.630627, 18.561117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.848736, 40.273033, 18.468973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.036133, 40.004257, 18.698412>,  <39.148571, 39.842991, 18.836075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.036133, 40.004257, 18.698412>,  <38.848736, 40.273033, 18.468973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.036133, 40.004257, 18.698412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869199, 0.234350, -0.435400,
		0.158138, 0.702553, 0.693838,
		0.468493, -0.671937, 0.573598,
		39.176682, 39.802677, 18.870491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.430637, 40.641052, 18.914001>,  <38.848736, 40.273033, 18.468973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.430637, 40.641052, 18.914001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.472397, 40.273235, 18.762455>,  <39.497452, 40.052544, 18.671528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.472397, 40.273235, 18.762455>,  <39.430637, 40.641052, 18.914001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.472397, 40.273235, 18.762455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823598, 0.293476, -0.485343,
		0.557482, -0.261363, 0.787974,
		0.104401, -0.919544, -0.378865,
		39.503716, 39.997372, 18.648796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.985355, 40.500237, 19.324848>,  <39.430637, 40.641052, 18.914001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.985355, 40.500237, 19.324848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.016087, 40.531860, 19.722410>,  <40.034523, 40.550835, 19.960947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.016087, 40.531860, 19.722410>,  <39.985355, 40.500237, 19.324848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.016087, 40.531860, 19.722410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891273, 0.441380, -0.104001,
		-0.446913, 0.893831, -0.036554,
		0.076825, 0.079059, 0.993905,
		40.039135, 40.555576, 20.020582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.681969, 39.937870, 19.508293>,  <39.985355, 40.500237, 19.324848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.681969, 39.937870, 19.508293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.323067, 40.063316, 19.383984>,  <39.107727, 40.138584, 19.309399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.323067, 40.063316, 19.383984>,  <39.681969, 39.937870, 19.508293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.323067, 40.063316, 19.383984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417450, -0.373397, 0.828439,
		0.143770, 0.873052, 0.465951,
		-0.897255, 0.313616, -0.310772,
		39.053890, 40.157402, 19.290752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.341419, 40.437309, 20.024639>,  <39.681969, 39.937870, 19.508293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.341419, 40.437309, 20.024639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.064728, 40.231194, 19.822254>,  <38.898712, 40.107525, 19.700823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.064728, 40.231194, 19.822254>,  <39.341419, 40.437309, 20.024639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.064728, 40.231194, 19.822254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499474, -0.164654, 0.850538,
		-0.521578, 0.841054, -0.143477,
		-0.691724, -0.515285, -0.505964,
		38.857212, 40.076607, 19.670465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.677872, 40.701519, 20.210264>,  <39.341419, 40.437309, 20.024639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.677872, 40.701519, 20.210264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.620358, 40.325027, 20.088013>,  <38.585850, 40.099133, 20.014662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.620358, 40.325027, 20.088013>,  <38.677872, 40.701519, 20.210264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.620358, 40.325027, 20.088013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307443, -0.251072, 0.917846,
		-0.940641, 0.225935, -0.253275,
		-0.143783, -0.941231, -0.305630,
		38.577221, 40.042660, 19.996325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.954697, 40.502670, 20.314100>,  <38.677872, 40.701519, 20.210264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.954697, 40.502670, 20.314100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.211018, 40.195862, 20.327028>,  <38.364811, 40.011776, 20.334785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.211018, 40.195862, 20.327028>,  <37.954697, 40.502670, 20.314100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.211018, 40.195862, 20.327028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271695, -0.187207, 0.944000,
		-0.718022, -0.613698, -0.328359,
		0.640802, -0.767026, 0.032320,
		38.403259, 39.965755, 20.336725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.596134, 39.897152, 20.633188>,  <37.954697, 40.502670, 20.314100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.596134, 39.897152, 20.633188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.987171, 39.819386, 20.665482>,  <38.221794, 39.772724, 20.684858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.987171, 39.819386, 20.665482>,  <37.596134, 39.897152, 20.633188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.987171, 39.819386, 20.665482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165353, -0.471798, 0.866063,
		-0.130287, -0.860005, -0.493372,
		0.977591, -0.194417, 0.080736,
		38.280449, 39.761059, 20.689703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.610435, 39.265133, 20.890501>,  <37.596134, 39.897152, 20.633188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.610435, 39.265133, 20.890501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.983570, 39.362087, 20.997141>,  <38.207451, 39.420258, 21.061125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.983570, 39.362087, 20.997141>,  <37.610435, 39.265133, 20.890501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.983570, 39.362087, 20.997141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206511, -0.246663, 0.946843,
		0.295259, -0.938300, -0.180040,
		0.932832, 0.242384, 0.266599,
		38.263420, 39.434803, 21.077120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.849911, 38.699844, 21.305006>,  <37.610435, 39.265133, 20.890501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.849911, 38.699844, 21.305006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.087975, 39.004402, 21.407812>,  <38.230812, 39.187138, 21.469496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.087975, 39.004402, 21.407812>,  <37.849911, 38.699844, 21.305006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.087975, 39.004402, 21.407812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096889, -0.249506, 0.963514,
		0.797743, -0.598349, -0.074726,
		0.595162, 0.761397, 0.257015,
		38.266525, 39.232822, 21.484917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.259048, 38.398415, 21.832193>,  <37.849911, 38.699844, 21.305006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.259048, 38.398415, 21.832193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.318935, 38.789837, 21.888788>,  <38.354866, 39.024689, 21.922745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.318935, 38.789837, 21.888788>,  <38.259048, 38.398415, 21.832193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.318935, 38.789837, 21.888788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132745, -0.121909, 0.983624,
		0.979777, -0.166046, 0.111646,
		0.149716, 0.978554, 0.141486,
		38.363850, 39.083405, 21.931234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.706257, 38.483833, 22.394161>,  <38.259048, 38.398415, 21.832193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.706257, 38.483833, 22.394161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.563713, 38.856998, 22.373438>,  <38.478188, 39.080898, 22.361004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.563713, 38.856998, 22.373438>,  <38.706257, 38.483833, 22.394161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.563713, 38.856998, 22.373438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062632, 0.079176, 0.994891,
		0.932246, 0.351296, -0.086645,
		-0.356362, 0.932911, -0.051809,
		38.456806, 39.136871, 22.357895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.086021, 38.866482, 22.793268>,  <38.706257, 38.483833, 22.394161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.086021, 38.866482, 22.793268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.763641, 39.103264, 22.790907>,  <38.570213, 39.245335, 22.789490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.763641, 39.103264, 22.790907>,  <39.086021, 38.866482, 22.793268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.763641, 39.103264, 22.790907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109959, 0.159496, 0.981055,
		0.581684, 0.790031, -0.193636,
		-0.805948, 0.591956, -0.005905,
		38.521858, 39.280849, 22.789135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.186855, 39.556911, 23.103487>,  <39.086021, 38.866482, 22.793268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.186855, 39.556911, 23.103487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.789185, 39.522594, 23.129566>,  <38.550583, 39.502007, 23.145214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.789185, 39.522594, 23.129566>,  <39.186855, 39.556911, 23.103487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.789185, 39.522594, 23.129566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040410, 0.264055, 0.963661,
		-0.099886, 0.960685, -0.259051,
		-0.994178, -0.085788, 0.065197,
		38.490932, 39.496857, 23.149126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.059429, 40.078770, 23.530617>,  <39.186855, 39.556911, 23.103487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.059429, 40.078770, 23.530617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.746090, 39.830166, 23.534426>,  <38.558086, 39.681004, 23.536711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.746090, 39.830166, 23.534426>,  <39.059429, 40.078770, 23.530617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.746090, 39.830166, 23.534426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150057, 0.203953, 0.967412,
		-0.603195, 0.756394, -0.253028,
		-0.783351, -0.621507, 0.009521,
		38.511086, 39.643715, 23.537283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.524803, 40.421944, 23.861706>,  <39.059429, 40.078770, 23.530617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.524803, 40.421944, 23.861706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.453613, 40.029812, 23.895819>,  <38.410900, 39.794533, 23.916286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.453613, 40.029812, 23.895819>,  <38.524803, 40.421944, 23.861706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.453613, 40.029812, 23.895819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173046, 0.116498, 0.978000,
		-0.968700, 0.159304, -0.190376,
		-0.177977, -0.980332, 0.085285,
		38.400219, 39.735714, 23.921404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.946041, 40.380997, 24.207129>,  <38.524803, 40.421944, 23.861706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.946041, 40.380997, 24.207129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.089199, 40.013702, 24.274956>,  <38.175095, 39.793327, 24.315653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.089199, 40.013702, 24.274956>,  <37.946041, 40.380997, 24.207129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.089199, 40.013702, 24.274956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337262, 0.042221, 0.940464,
		-0.870726, -0.393779, -0.294575,
		0.357898, -0.918235, 0.169570,
		38.196568, 39.738232, 24.325827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.435368, 40.002430, 24.501694>,  <37.946041, 40.380997, 24.207129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.435368, 40.002430, 24.501694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.741146, 39.764805, 24.601860>,  <37.924614, 39.622231, 24.661961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.741146, 39.764805, 24.601860>,  <37.435368, 40.002430, 24.501694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.741146, 39.764805, 24.601860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371778, -0.088891, 0.924056,
		-0.526688, -0.799492, -0.288812,
		0.764448, -0.594063, 0.250416,
		37.970482, 39.586586, 24.676985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.161205, 39.498390, 24.872065>,  <37.435368, 40.002430, 24.501694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.161205, 39.498390, 24.872065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.541435, 39.491634, 24.996075>,  <37.769573, 39.487579, 25.070480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.541435, 39.491634, 24.996075>,  <37.161205, 39.498390, 24.872065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.541435, 39.491634, 24.996075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308694, -0.158563, 0.937852,
		0.033321, -0.987204, -0.155940,
		0.950578, -0.016888, 0.310027,
		37.826607, 39.486568, 25.089083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.205257, 38.933884, 25.272129>,  <37.161205, 39.498390, 24.872065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.205257, 38.933884, 25.272129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.540497, 39.126759, 25.374182>,  <37.741638, 39.242485, 25.435413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.540497, 39.126759, 25.374182>,  <37.205257, 38.933884, 25.272129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.540497, 39.126759, 25.374182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201357, -0.161225, 0.966158,
		0.507005, -0.861104, -0.038029,
		0.838094, 0.482189, 0.255131,
		37.791924, 39.271416, 25.450722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.588924, 38.573898, 25.698452>,  <37.205257, 38.933884, 25.272129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.588924, 38.573898, 25.698452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.669220, 38.962112, 25.751755>,  <37.717396, 39.195042, 25.783737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.669220, 38.962112, 25.751755>,  <37.588924, 38.573898, 25.698452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.669220, 38.962112, 25.751755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232699, -0.084893, 0.968837,
		0.951606, -0.225492, 0.208802,
		0.200739, 0.970539, 0.133257,
		37.729443, 39.253273, 25.791731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.963909, 38.629398, 26.200155>,  <37.588924, 38.573898, 25.698452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.963909, 38.629398, 26.200155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.807945, 38.997665, 26.207436>,  <37.714367, 39.218628, 26.211803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.807945, 38.997665, 26.207436>,  <37.963909, 38.629398, 26.200155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.807945, 38.997665, 26.207436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384171, -0.180601, 0.905426,
		0.836887, 0.346045, 0.424114,
		-0.389914, 0.920672, 0.018202,
		37.690971, 39.273869, 26.212896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.016823, 38.843266, 26.849241>,  <37.963909, 38.629398, 26.200155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.016823, 38.843266, 26.849241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.751667, 39.105476, 26.704538>,  <37.592575, 39.262802, 26.617718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.751667, 39.105476, 26.704538>,  <38.016823, 38.843266, 26.849241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.751667, 39.105476, 26.704538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536096, -0.078268, 0.840521,
		0.522670, 0.751105, 0.403308,
		-0.662886, 0.655527, -0.361756,
		37.552803, 39.302135, 26.596012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.979908, 39.284325, 27.394205>,  <38.016823, 38.843266, 26.849241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.979908, 39.284325, 27.394205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.639690, 39.306965, 27.185066>,  <37.435558, 39.320549, 27.059584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.639690, 39.306965, 27.185066>,  <37.979908, 39.284325, 27.394205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.639690, 39.306965, 27.185066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525495, -0.052418, 0.849180,
		0.020660, 0.997020, 0.074328,
		-0.850546, 0.056603, -0.522846,
		37.384525, 39.323944, 27.028212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.571941, 39.552570, 27.798355>,  <37.979908, 39.284325, 27.394205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.571941, 39.552570, 27.798355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.288151, 39.443466, 27.538435>,  <37.117878, 39.378002, 27.382483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.288151, 39.443466, 27.538435>,  <37.571941, 39.552570, 27.798355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.288151, 39.443466, 27.538435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592061, -0.269416, 0.759525,
		-0.382236, 0.923589, 0.029653,
		-0.709478, -0.272762, -0.649801,
		37.075306, 39.361637, 27.343494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.874607, 39.879650, 28.007818>,  <37.571941, 39.552570, 27.798355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.874607, 39.879650, 28.007818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.787502, 39.548901, 27.800409>,  <36.735237, 39.350452, 27.675964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.787502, 39.548901, 27.800409>,  <36.874607, 39.879650, 28.007818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.787502, 39.548901, 27.800409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644999, -0.276803, 0.712290,
		-0.732499, 0.489558, -0.473052,
		-0.217765, -0.826869, -0.518523,
		36.722172, 39.300838, 27.644852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.149796, 39.803459, 28.042721>,  <36.874607, 39.879650, 28.007818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.149796, 39.803459, 28.042721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.272881, 39.431519, 27.962030>,  <36.346733, 39.208355, 27.913616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.272881, 39.431519, 27.962030>,  <36.149796, 39.803459, 28.042721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.272881, 39.431519, 27.962030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674032, -0.362669, 0.643546,
		-0.671561, -0.062057, -0.738346,
		0.307712, -0.929850, -0.201726,
		36.365192, 39.152565, 27.901512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.610611, 39.473999, 28.166090>,  <36.149796, 39.803459, 28.042721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.610611, 39.473999, 28.166090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.861137, 39.162964, 28.188305>,  <36.011456, 38.976341, 28.201633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.861137, 39.162964, 28.188305>,  <35.610611, 39.473999, 28.166090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.861137, 39.162964, 28.188305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622283, -0.455773, 0.636424,
		-0.469565, -0.433161, -0.769338,
		0.626317, -0.777588, 0.055533,
		36.049034, 38.929688, 28.204966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.167595, 38.952309, 28.121162>,  <35.610611, 39.473999, 28.166090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.167595, 38.952309, 28.121162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.508186, 38.807266, 28.272684>,  <35.712543, 38.720242, 28.363598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.508186, 38.807266, 28.272684>,  <35.167595, 38.952309, 28.121162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.508186, 38.807266, 28.272684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522929, -0.533364, 0.664883,
		-0.039051, -0.764224, -0.643768,
		0.851482, -0.362608, 0.378806,
		35.763630, 38.698483, 28.386326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.144989, 38.174610, 28.142330>,  <35.167595, 38.952309, 28.121162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.144989, 38.174610, 28.142330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.437923, 38.270733, 28.397184>,  <35.613682, 38.328407, 28.550097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.437923, 38.270733, 28.397184>,  <35.144989, 38.174610, 28.142330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.437923, 38.270733, 28.397184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453085, -0.526519, 0.719369,
		0.508333, -0.815494, -0.276708,
		0.732333, 0.240307, 0.637135,
		35.657623, 38.342827, 28.588326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.405712, 37.479782, 28.504616>,  <35.144989, 38.174610, 28.142330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.405712, 37.479782, 28.504616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.467842, 37.794327, 28.743784>,  <35.505119, 37.983055, 28.887285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.467842, 37.794327, 28.743784>,  <35.405712, 37.479782, 28.504616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.467842, 37.794327, 28.743784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420662, -0.494996, 0.760278,
		0.893822, -0.369614, 0.253906,
		0.155327, 0.786362, 0.597921,
		35.514439, 38.030235, 28.923161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.227272, 37.190559, 29.079573>,  <35.405712, 37.479782, 28.504616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.227272, 37.190559, 29.079573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.312473, 37.553673, 29.224102>,  <35.363594, 37.771542, 29.310820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.312473, 37.553673, 29.224102>,  <35.227272, 37.190559, 29.079573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.312473, 37.553673, 29.224102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423820, -0.247362, 0.871314,
		0.880344, -0.338729, 0.332049,
		0.213003, 0.907786, 0.361324,
		35.376373, 37.826008, 29.332499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.574692, 37.076492, 29.745913>,  <35.227272, 37.190559, 29.079573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.574692, 37.076492, 29.745913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.426983, 37.447941, 29.760382>,  <35.338356, 37.670811, 29.769062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.426983, 37.447941, 29.760382>,  <35.574692, 37.076492, 29.745913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.426983, 37.447941, 29.760382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431222, -0.205698, 0.878485,
		0.823216, 0.308804, 0.476399,
		-0.369274, 0.928617, 0.036171,
		35.316200, 37.726524, 29.771233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.690258, 37.247555, 30.438801>,  <35.574692, 37.076492, 29.745913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.690258, 37.247555, 30.438801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.400375, 37.485638, 30.299929>,  <35.226448, 37.628487, 30.216604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.400375, 37.485638, 30.299929>,  <35.690258, 37.247555, 30.438801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.400375, 37.485638, 30.299929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339387, 0.130171, 0.931596,
		0.599683, 0.792961, 0.107669,
		-0.724704, 0.595204, -0.347183,
		35.182964, 37.664200, 30.195774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.655613, 37.757420, 30.916229>,  <35.690258, 37.247555, 30.438801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.655613, 37.757420, 30.916229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.301037, 37.764687, 30.731234>,  <35.088291, 37.769047, 30.620235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.301037, 37.764687, 30.731234>,  <35.655613, 37.757420, 30.916229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.301037, 37.764687, 30.731234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455938, 0.137728, 0.879290,
		0.079669, 0.990304, -0.113806,
		-0.886439, 0.018163, -0.462490,
		35.035107, 37.770134, 30.592487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.325771, 38.277222, 31.186415>,  <35.655613, 37.757420, 30.916229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.325771, 38.277222, 31.186415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.039413, 38.034016, 31.049118>,  <34.867599, 37.888092, 30.966740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.039413, 38.034016, 31.049118>,  <35.325771, 38.277222, 31.186415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.039413, 38.034016, 31.049118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426864, -0.007889, 0.904281,
		-0.552528, 0.793883, -0.253894,
		-0.715891, -0.608019, -0.343239,
		34.824646, 37.851608, 30.946146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.754246, 38.468300, 31.538481>,  <35.325771, 38.277222, 31.186415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.754246, 38.468300, 31.538481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.638279, 38.117355, 31.385544>,  <34.568699, 37.906788, 31.293781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.638279, 38.117355, 31.385544>,  <34.754246, 38.468300, 31.538481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.638279, 38.117355, 31.385544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477695, -0.213518, 0.852184,
		-0.829311, 0.429704, -0.357209,
		-0.289916, -0.877363, -0.382340,
		34.551304, 37.854145, 31.270842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.014019, 38.360703, 31.698256>,  <34.754246, 38.468300, 31.538481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.014019, 38.360703, 31.698256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.226196, 38.024014, 31.657991>,  <34.353500, 37.821999, 31.633833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.226196, 38.024014, 31.657991>,  <34.014019, 38.360703, 31.698256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.226196, 38.024014, 31.657991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311557, -0.304002, 0.900286,
		-0.788394, -0.446186, -0.423500,
		0.530440, -0.841725, -0.100661,
		34.385326, 37.771496, 31.627792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.557632, 37.853058, 31.953886>,  <34.014019, 38.360703, 31.698256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.557632, 37.853058, 31.953886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.910496, 37.664787, 31.960413>,  <34.122211, 37.551823, 31.964329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.910496, 37.664787, 31.960413>,  <33.557632, 37.853058, 31.953886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.910496, 37.664787, 31.960413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215711, -0.373001, 0.902407,
		-0.418663, -0.799579, -0.430575,
		0.882151, -0.470685, 0.016316,
		34.175140, 37.523582, 31.965309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.420574, 37.197300, 32.171169>,  <33.557632, 37.853058, 31.953886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.420574, 37.197300, 32.171169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.816051, 37.232342, 32.219841>,  <34.053337, 37.253365, 32.249046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.816051, 37.232342, 32.219841>,  <33.420574, 37.197300, 32.171169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.816051, 37.232342, 32.219841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063491, -0.490600, 0.869069,
		0.135829, -0.866970, -0.479492,
		0.988696, 0.087601, 0.121683,
		34.112659, 37.258621, 32.256348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.581669, 36.591511, 32.615040>,  <33.420574, 37.197300, 32.171169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.581669, 36.591511, 32.615040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.896236, 36.833714, 32.663891>,  <34.084976, 36.979034, 32.693203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.896236, 36.833714, 32.663891>,  <33.581669, 36.591511, 32.615040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.896236, 36.833714, 32.663891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103020, -0.323521, 0.940596,
		0.609047, -0.727117, -0.316801,
		0.786416, 0.605504, 0.122132,
		34.132160, 37.015366, 32.700531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.243546, 36.233902, 32.736748>,  <33.581669, 36.591511, 32.615040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.243546, 36.233902, 32.736748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.274887, 36.596413, 32.902897>,  <34.293690, 36.813919, 33.002586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.274887, 36.596413, 32.902897>,  <34.243546, 36.233902, 32.736748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.274887, 36.596413, 32.902897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162602, -0.422688, 0.891569,
		0.983576, -0.002315, -0.180479,
		0.078350, 0.906272, 0.415370,
		34.298393, 36.868294, 33.027508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.861889, 36.133171, 33.080185>,  <34.243546, 36.233902, 32.736748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.861889, 36.133171, 33.080185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.667290, 36.455208, 33.215916>,  <34.550529, 36.648430, 33.297356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.667290, 36.455208, 33.215916>,  <34.861889, 36.133171, 33.080185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.667290, 36.455208, 33.215916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315788, -0.200094, 0.927491,
		0.814617, 0.558376, -0.156895,
		-0.486495, 0.805096, 0.339328,
		34.521339, 36.696735, 33.317715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.329273, 36.461990, 33.598526>,  <34.861889, 36.133171, 33.080185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.329273, 36.461990, 33.598526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.965065, 36.614727, 33.661968>,  <34.746540, 36.706367, 33.700035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.965065, 36.614727, 33.661968>,  <35.329273, 36.461990, 33.598526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.965065, 36.614727, 33.661968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159649, -0.029171, 0.986743,
		0.381403, 0.923769, -0.034399,
		-0.910518, 0.381839, 0.158605,
		34.691910, 36.729279, 33.709549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.336609, 37.146076, 34.082500>,  <35.329273, 36.461990, 33.598526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.336609, 37.146076, 34.082500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.971329, 36.983070, 34.081924>,  <34.752163, 36.885265, 34.081577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.971329, 36.983070, 34.081924>,  <35.336609, 37.146076, 34.082500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.971329, 36.983070, 34.081924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012302, 0.024034, 0.999635,
		-0.407330, 0.912883, -0.026961,
		-0.913198, -0.407514, -0.001441,
		34.697369, 36.860817, 34.081493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.969193, 37.508949, 33.952187>,  <35.336609, 37.146076, 34.082500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.969193, 37.508949, 33.952187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.276112, 37.424992, 34.194572>,  <36.460262, 37.374619, 34.340004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.276112, 37.424992, 34.194572>,  <35.969193, 37.508949, 33.952187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.276112, 37.424992, 34.194572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620712, 0.480519, -0.619530,
		-0.161144, 0.851497, 0.498985,
		0.767300, -0.209892, 0.605967,
		36.506302, 37.362022, 34.376362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.413754, 38.110706, 34.056778>,  <35.969193, 37.508949, 33.952187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.413754, 38.110706, 34.056778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.647388, 37.789719, 34.105591>,  <36.787571, 37.597126, 34.134880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.647388, 37.789719, 34.105591>,  <36.413754, 38.110706, 34.056778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.647388, 37.789719, 34.105591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685086, 0.406749, -0.604328,
		0.435315, 0.436584, 0.787334,
		0.584088, -0.802464, 0.122034,
		36.822617, 37.548981, 34.142200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.984879, 38.302570, 33.930103>,  <36.413754, 38.110706, 34.056778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.984879, 38.302570, 33.930103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.082405, 37.914871, 33.916756>,  <37.140919, 37.682251, 33.908745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.082405, 37.914871, 33.916756>,  <36.984879, 38.302570, 33.930103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.082405, 37.914871, 33.916756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678708, 0.195107, -0.708017,
		0.692755, 0.149974, 0.705406,
		0.243814, -0.969248, -0.033372,
		37.155548, 37.624096, 33.906742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.661816, 38.270813, 34.181076>,  <36.984879, 38.302570, 33.930103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.661816, 38.270813, 34.181076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.559326, 37.982662, 33.923267>,  <37.497833, 37.809772, 33.768581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.559326, 37.982662, 33.923267>,  <37.661816, 38.270813, 34.181076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.559326, 37.982662, 33.923267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708418, 0.313700, -0.632246,
		0.657643, -0.618582, 0.429956,
		-0.256219, -0.720381, -0.644517,
		37.482460, 37.766548, 33.729912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.316120, 38.053188, 33.949158>,  <37.661816, 38.270813, 34.181076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.316120, 38.053188, 33.949158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.074913, 37.884342, 33.678398>,  <37.930191, 37.783035, 33.515942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.074913, 37.884342, 33.678398>,  <38.316120, 38.053188, 33.949158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.074913, 37.884342, 33.678398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613226, 0.297436, -0.731769,
		0.510224, -0.856360, 0.079492,
		-0.603014, -0.422113, -0.676901,
		37.894009, 37.757710, 33.475327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.738762, 37.675621, 33.559212>,  <38.316120, 38.053188, 33.949158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.738762, 37.675621, 33.559212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.402725, 37.743870, 33.353249>,  <38.201103, 37.784821, 33.229671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.402725, 37.743870, 33.353249>,  <38.738762, 37.675621, 33.559212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.402725, 37.743870, 33.353249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542345, 0.282505, -0.791235,
		0.010461, -0.943969, -0.329868,
		-0.840091, 0.170625, -0.514912,
		38.150700, 37.795059, 33.198776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.030869, 37.482616, 32.907654>,  <38.738762, 37.675621, 33.559212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.030869, 37.482616, 32.907654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.696030, 37.698330, 32.870903>,  <38.495125, 37.827759, 32.848854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.696030, 37.698330, 32.870903>,  <39.030869, 37.482616, 32.907654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.696030, 37.698330, 32.870903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347099, 0.393776, -0.851154,
		-0.422834, -0.744389, -0.516813,
		-0.837099, 0.539282, -0.091875,
		38.444901, 37.860115, 32.843342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.925812, 37.433571, 32.210609>,  <39.030869, 37.482616, 32.907654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.925812, 37.433571, 32.210609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.675400, 37.730450, 32.306305>,  <38.525154, 37.908577, 32.363720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.675400, 37.730450, 32.306305>,  <38.925812, 37.433571, 32.210609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.675400, 37.730450, 32.306305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136624, 0.406438, -0.903406,
		-0.767739, -0.532871, -0.355844,
		-0.626027, 0.742197, 0.239235,
		38.487591, 37.953110, 32.378075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.539845, 37.511700, 31.639343>,  <38.925812, 37.433571, 32.210609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.539845, 37.511700, 31.639343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.525620, 37.853737, 31.846247>,  <38.517086, 38.058960, 31.970388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.525620, 37.853737, 31.846247>,  <38.539845, 37.511700, 31.639343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.525620, 37.853737, 31.846247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218148, 0.511746, -0.830980,
		-0.975268, 0.083288, -0.204734,
		-0.035562, 0.855090, 0.517258,
		38.514950, 38.110264, 32.001423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.195057, 37.971004, 31.125305>,  <38.539845, 37.511700, 31.639343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.195057, 37.971004, 31.125305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.354877, 38.207985, 31.405121>,  <38.450771, 38.350174, 31.573009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.354877, 38.207985, 31.405121>,  <38.195057, 37.971004, 31.125305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.354877, 38.207985, 31.405121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241025, 0.668356, -0.703710,
		-0.884457, 0.449777, 0.124248,
		0.399554, 0.592454, 0.699539,
		38.474743, 38.385719, 31.614983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.882900, 38.563904, 31.098370>,  <38.195057, 37.971004, 31.125305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.882900, 38.563904, 31.098370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.251225, 38.624054, 31.242311>,  <38.472218, 38.660145, 31.328678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.251225, 38.624054, 31.242311>,  <37.882900, 38.563904, 31.098370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.251225, 38.624054, 31.242311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229101, 0.538160, -0.811108,
		-0.315629, 0.829320, 0.461093,
		0.920810, 0.150372, 0.359857,
		38.527466, 38.669167, 31.350269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.970020, 39.146370, 30.843897>,  <37.882900, 38.563904, 31.098370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.970020, 39.146370, 30.843897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.344761, 39.069538, 30.960794>,  <38.569607, 39.023438, 31.030933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.344761, 39.069538, 30.960794>,  <37.970020, 39.146370, 30.843897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.344761, 39.069538, 30.960794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344579, 0.649719, -0.677592,
		-0.059727, 0.735508, 0.674879,
		0.936856, -0.192078, 0.292246,
		38.625816, 39.011913, 31.048468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.256485, 39.753616, 30.789318>,  <37.970020, 39.146370, 30.843897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.256485, 39.753616, 30.789318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.583279, 39.523121, 30.780455>,  <38.779354, 39.384823, 30.775137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.583279, 39.523121, 30.780455>,  <38.256485, 39.753616, 30.789318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.583279, 39.523121, 30.780455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404980, 0.600677, -0.689332,
		0.410529, 0.554198, 0.724107,
		0.816981, -0.576239, -0.022156,
		38.828373, 39.350250, 30.773808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.871902, 40.133659, 30.856722>,  <38.256485, 39.753616, 30.789318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.871902, 40.133659, 30.856722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.994270, 39.799366, 30.674314>,  <39.067692, 39.598789, 30.564869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.994270, 39.799366, 30.674314>,  <38.871902, 40.133659, 30.856722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.994270, 39.799366, 30.674314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405420, 0.547741, -0.731857,
		0.861422, 0.039011, 0.506390,
		0.305921, -0.835738, -0.456021,
		39.086048, 39.548645, 30.537508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.449123, 40.314045, 30.516346>,  <38.871902, 40.133659, 30.856722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.449123, 40.314045, 30.516346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.342194, 39.985241, 30.315216>,  <39.278034, 39.787956, 30.194538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.342194, 39.985241, 30.315216>,  <39.449123, 40.314045, 30.516346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.342194, 39.985241, 30.315216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383754, 0.387831, -0.838045,
		0.883895, -0.416991, 0.211774,
		-0.267325, -0.822013, -0.502824,
		39.261997, 39.738636, 30.164370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.996296, 40.147923, 30.095093>,  <39.449123, 40.314045, 30.516346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.996296, 40.147923, 30.095093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.710838, 39.928528, 29.920797>,  <39.539562, 39.796890, 29.816219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.710838, 39.928528, 29.920797>,  <39.996296, 40.147923, 30.095093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.710838, 39.928528, 29.920797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348595, 0.261481, -0.900061,
		0.607609, -0.794223, 0.004595,
		-0.713646, -0.548487, -0.435740,
		39.496742, 39.763981, 29.790075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.356438, 39.612446, 29.650389>,  <39.996296, 40.147923, 30.095093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.356438, 39.612446, 29.650389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.984970, 39.664314, 29.511383>,  <39.762089, 39.695435, 29.427979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.984970, 39.664314, 29.511383>,  <40.356438, 39.612446, 29.650389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.984970, 39.664314, 29.511383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368036, 0.205511, -0.906816,
		-0.046174, -0.970026, -0.238576,
		-0.928664, 0.129676, -0.347515,
		39.706371, 39.703217, 29.407129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.381641, 39.213764, 28.954363>,  <40.356438, 39.612446, 29.650389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.381641, 39.213764, 28.954363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.062519, 39.453629, 28.929356>,  <39.871044, 39.597549, 28.914351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.062519, 39.453629, 28.929356>,  <40.381641, 39.213764, 28.954363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.062519, 39.453629, 28.929356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220117, 0.193164, -0.956157,
		-0.561296, -0.776590, -0.286104,
		-0.797807, 0.599663, -0.062518,
		39.823177, 39.633526, 28.910601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.108665, 39.026230, 28.260315>,  <40.381641, 39.213764, 28.954363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.108665, 39.026230, 28.260315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.950741, 39.381035, 28.356087>,  <39.855984, 39.593918, 28.413549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.950741, 39.381035, 28.356087>,  <40.108665, 39.026230, 28.260315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.950741, 39.381035, 28.356087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277202, 0.363461, -0.889413,
		-0.875946, -0.284782, -0.389381,
		-0.394813, 0.887015, 0.239430,
		39.832298, 39.647141, 28.427916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.742344, 39.156380, 27.675747>,  <40.108665, 39.026230, 28.260315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.742344, 39.156380, 27.675747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.755402, 39.501335, 27.877825>,  <39.763237, 39.708309, 27.999071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.755402, 39.501335, 27.877825>,  <39.742344, 39.156380, 27.675747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.755402, 39.501335, 27.877825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013735, 0.505803, -0.862539,
		-0.999373, 0.021216, 0.028356,
		0.032642, 0.862388, 0.505195,
		39.765194, 39.760052, 28.029383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.255272, 39.569588, 27.348425>,  <39.742344, 39.156380, 27.675747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.255272, 39.569588, 27.348425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.542343, 39.787754, 27.521612>,  <39.714584, 39.918652, 27.625525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.542343, 39.787754, 27.521612>,  <39.255272, 39.569588, 27.348425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.542343, 39.787754, 27.521612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178646, 0.456741, -0.871478,
		-0.673070, 0.702788, 0.230357,
		0.717678, 0.545414, 0.432969,
		39.757645, 39.951378, 27.651503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.046822, 40.163971, 27.124687>,  <39.255272, 39.569588, 27.348425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.046822, 40.163971, 27.124687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.428738, 40.226433, 27.225878>,  <39.657887, 40.263908, 27.286592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.428738, 40.226433, 27.225878>,  <39.046822, 40.163971, 27.124687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.428738, 40.226433, 27.225878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151041, 0.478140, -0.865199,
		-0.256059, 0.864291, 0.432937,
		0.954788, 0.156151, 0.252976,
		39.715176, 40.273277, 27.301771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.171280, 40.817509, 26.777845>,  <39.046822, 40.163971, 27.124687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.171280, 40.817509, 26.777845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.531559, 40.672226, 26.873205>,  <39.747726, 40.585056, 26.930420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.531559, 40.672226, 26.873205>,  <39.171280, 40.817509, 26.777845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.531559, 40.672226, 26.873205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327229, 0.206187, -0.922176,
		0.285783, 0.908609, 0.304562,
		0.900694, -0.363204, 0.238398,
		39.801765, 40.563263, 26.944725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.704906, 41.323235, 26.502869>,  <39.171280, 40.817509, 26.777845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.704906, 41.323235, 26.502869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.862934, 40.961826, 26.569279>,  <39.957752, 40.744980, 26.609125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.862934, 40.961826, 26.569279>,  <39.704906, 41.323235, 26.502869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.862934, 40.961826, 26.569279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536865, 0.080428, -0.839826,
		0.745450, 0.420923, 0.516845,
		0.395070, -0.903524, 0.166024,
		39.981457, 40.690769, 26.619085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.467762, 41.443150, 26.300695>,  <39.704906, 41.323235, 26.502869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.467762, 41.443150, 26.300695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.367626, 41.056240, 26.284134>,  <40.307545, 40.824093, 26.274197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.367626, 41.056240, 26.284134>,  <40.467762, 41.443150, 26.300695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.367626, 41.056240, 26.284134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440926, -0.075836, -0.894334,
		0.861925, -0.242141, 0.445481,
		-0.250339, -0.967273, -0.041401,
		40.292526, 40.766060, 26.271713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.097721, 41.121716, 25.930227>,  <40.467762, 41.443150, 26.300695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.097721, 41.121716, 25.930227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.793079, 40.862823, 25.917198>,  <40.610294, 40.707489, 25.909382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.793079, 40.862823, 25.917198>,  <41.097721, 41.121716, 25.930227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.793079, 40.862823, 25.917198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262964, -0.262716, -0.928348,
		0.592295, -0.715596, 0.370282,
		-0.761601, -0.647227, -0.032571,
		40.564598, 40.668655, 25.907427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.327881, 40.476833, 25.705973>,  <41.097721, 41.121716, 25.930227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.327881, 40.476833, 25.705973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.931263, 40.469757, 25.654551>,  <40.693291, 40.465511, 25.623697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.931263, 40.469757, 25.654551>,  <41.327881, 40.476833, 25.705973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.931263, 40.469757, 25.654551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122685, -0.450522, -0.884295,
		-0.042274, -0.892590, 0.448883,
		-0.991545, -0.017688, -0.128553,
		40.633801, 40.464451, 25.615984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.210014, 39.746574, 25.667629>,  <41.327881, 40.476833, 25.705973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.210014, 39.746574, 25.667629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.896332, 39.901844, 25.473995>,  <40.708122, 39.995007, 25.357815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.896332, 39.901844, 25.473995>,  <41.210014, 39.746574, 25.667629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.896332, 39.901844, 25.473995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220758, -0.554571, -0.802320,
		-0.579905, -0.736049, 0.349203,
		-0.784204, 0.388180, -0.484087,
		40.661072, 40.018299, 25.328770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.903522, 39.212574, 25.192486>,  <41.210014, 39.746574, 25.667629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.903522, 39.212574, 25.192486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.753704, 39.550362, 25.039333>,  <40.663815, 39.753033, 24.947441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.753704, 39.550362, 25.039333>,  <40.903522, 39.212574, 25.192486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.753704, 39.550362, 25.039333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093744, -0.376334, -0.921729,
		-0.922459, -0.381120, 0.061790,
		-0.374543, 0.844465, -0.382881,
		40.641342, 39.803699, 24.924469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.359547, 39.041924, 24.806681>,  <40.903522, 39.212574, 25.192486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.359547, 39.041924, 24.806681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.503193, 39.387665, 24.665865>,  <40.589378, 39.595108, 24.581375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.503193, 39.387665, 24.665865>,  <40.359547, 39.041924, 24.806681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.503193, 39.387665, 24.665865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002273, -0.378011, -0.925799,
		-0.933292, 0.331665, -0.137713,
		0.359112, 0.864353, -0.352040,
		40.610928, 39.646969, 24.560253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.913567, 39.244442, 24.327570>,  <40.359547, 39.041924, 24.806681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.913567, 39.244442, 24.327570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.256542, 39.430302, 24.239111>,  <40.462326, 39.541817, 24.186035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.256542, 39.430302, 24.239111>,  <39.913567, 39.244442, 24.327570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.256542, 39.430302, 24.239111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040340, -0.367740, -0.929053,
		-0.513007, 0.805525, -0.296570,
		0.857436, 0.464648, -0.221148,
		40.513771, 39.569695, 24.172766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.776150, 39.399052, 23.632755>,  <39.913567, 39.244442, 24.327570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.776150, 39.399052, 23.632755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.161610, 39.498905, 23.670835>,  <40.392887, 39.558815, 23.693684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.161610, 39.498905, 23.670835>,  <39.776150, 39.399052, 23.632755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.161610, 39.498905, 23.670835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176270, -0.326295, -0.928688,
		-0.200765, 0.911711, -0.358437,
		0.963651, 0.249629, 0.095199,
		40.450706, 39.573795, 23.699394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.007824, 39.738106, 22.942234>,  <39.776150, 39.399052, 23.632755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.007824, 39.738106, 22.942234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.319065, 39.585819, 23.142080>,  <40.505810, 39.494446, 23.261988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.319065, 39.585819, 23.142080>,  <40.007824, 39.738106, 22.942234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.319065, 39.585819, 23.142080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335349, -0.420776, -0.842905,
		0.531135, 0.823409, -0.199732,
		0.778098, -0.380716, 0.499618,
		40.552494, 39.471603, 23.291965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.565647, 39.943691, 22.571072>,  <40.007824, 39.738106, 22.942234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.565647, 39.943691, 22.571072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.671722, 39.612366, 22.768482>,  <40.735367, 39.413570, 22.886929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.671722, 39.612366, 22.768482>,  <40.565647, 39.943691, 22.571072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.671722, 39.612366, 22.768482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569126, -0.278704, -0.773576,
		0.778314, 0.486018, 0.397510,
		0.265184, -0.828318, 0.493525,
		40.751278, 39.363869, 22.916540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.301121, 39.909492, 22.492109>,  <40.565647, 39.943691, 22.571072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.301121, 39.909492, 22.492109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.181358, 39.531166, 22.542379>,  <41.109501, 39.304173, 22.572542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.181358, 39.531166, 22.542379>,  <41.301121, 39.909492, 22.492109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.181358, 39.531166, 22.542379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678429, -0.303655, -0.668975,
		0.670886, -0.115034, 0.732583,
		-0.299407, -0.945812, 0.125675,
		41.091537, 39.247421, 22.580082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.881542, 39.484287, 22.481474>,  <41.301121, 39.909492, 22.492109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.881542, 39.484287, 22.481474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.591206, 39.220074, 22.404701>,  <41.417004, 39.061546, 22.358637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.591206, 39.220074, 22.404701>,  <41.881542, 39.484287, 22.481474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.591206, 39.220074, 22.404701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571599, -0.423987, -0.702502,
		0.382652, -0.619616, 0.685313,
		-0.725845, -0.660538, -0.191933,
		41.373451, 39.021912, 22.347122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.232475, 38.860249, 22.315117>,  <41.881542, 39.484287, 22.481474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.232475, 38.860249, 22.315117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.862778, 38.781456, 22.184298>,  <41.640957, 38.734180, 22.105806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.862778, 38.781456, 22.184298>,  <42.232475, 38.860249, 22.315117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.862778, 38.781456, 22.184298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377954, -0.593228, -0.710797,
		-0.053999, -0.780563, 0.622741,
		-0.924248, -0.196985, -0.327050,
		41.585503, 38.722359, 22.086182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.248367, 38.168705, 22.065002>,  <42.232475, 38.860249, 22.315117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.248367, 38.168705, 22.065002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.913929, 38.306820, 21.894489>,  <41.713264, 38.389690, 21.792181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.913929, 38.306820, 21.894489>,  <42.248367, 38.168705, 22.065002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.913929, 38.306820, 21.894489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224241, -0.494064, -0.840010,
		-0.500637, -0.797928, 0.335668,
		-0.836109, 0.345270, -0.426275,
		41.663097, 38.410404, 21.766605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.129242, 37.954784, 21.347179>,  <42.248367, 38.168705, 22.065002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.129242, 37.954784, 21.347179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.468910, 37.744297, 21.365089>,  <42.672710, 37.618004, 21.375835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.468910, 37.744297, 21.365089>,  <42.129242, 37.954784, 21.347179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.468910, 37.744297, 21.365089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180363, -0.209280, 0.961078,
		-0.496370, -0.824192, -0.272624,
		0.849168, -0.526221, 0.044774,
		42.723660, 37.586430, 21.378521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.000496, 37.388966, 21.702190>,  <42.129242, 37.954784, 21.347179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.000496, 37.388966, 21.702190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.395866, 37.413719, 21.757589>,  <42.633087, 37.428570, 21.790829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.395866, 37.413719, 21.757589>,  <42.000496, 37.388966, 21.702190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.395866, 37.413719, 21.757589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122933, -0.208142, 0.970342,
		0.088877, -0.976139, -0.198126,
		0.988427, 0.061885, 0.138499,
		42.692394, 37.432285, 21.799139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.187447, 36.789017, 21.981319>,  <42.000496, 37.388966, 21.702190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.187447, 36.789017, 21.981319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.487843, 37.040436, 22.062258>,  <42.668079, 37.191288, 22.110821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.487843, 37.040436, 22.062258>,  <42.187447, 36.789017, 21.981319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.487843, 37.040436, 22.062258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140217, -0.147649, 0.979050,
		0.645253, -0.763630, -0.022750,
		0.750991, 0.628545, 0.202345,
		42.713139, 37.229000, 22.122961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.562725, 36.511765, 22.487926>,  <42.187447, 36.789017, 21.981319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.562725, 36.511765, 22.487926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.684891, 36.891205, 22.521095>,  <42.758190, 37.118870, 22.540997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.684891, 36.891205, 22.521095>,  <42.562725, 36.511765, 22.487926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.684891, 36.891205, 22.521095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086679, -0.059028, 0.994486,
		0.948267, -0.310916, 0.064196,
		0.305412, 0.948602, 0.082924,
		42.776516, 37.175785, 22.545973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.095470, 36.487774, 23.011814>,  <42.562725, 36.511765, 22.487926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.095470, 36.487774, 23.011814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.956276, 36.860859, 22.973984>,  <42.872757, 37.084709, 22.951286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.956276, 36.860859, 22.973984>,  <43.095470, 36.487774, 23.011814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.956276, 36.860859, 22.973984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232382, 0.011913, 0.972552,
		0.908241, 0.360415, 0.212601,
		-0.347989, 0.932716, -0.094574,
		42.851879, 37.140675, 22.945612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.394176, 36.791950, 23.593870>,  <43.095470, 36.487774, 23.011814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.394176, 36.791950, 23.593870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.094917, 37.038624, 23.495914>,  <42.915363, 37.186630, 23.437141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.094917, 37.038624, 23.495914>,  <43.394176, 36.791950, 23.593870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.094917, 37.038624, 23.495914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102130, 0.257648, 0.960826,
		0.655626, 0.743850, -0.129777,
		-0.748147, 0.616688, -0.244890,
		42.870472, 37.223629, 23.422447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.465546, 37.405357, 24.083031>,  <43.394176, 36.791950, 23.593870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.465546, 37.405357, 24.083031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.088169, 37.445526, 23.956644>,  <42.861744, 37.469627, 23.880812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.088169, 37.445526, 23.956644>,  <43.465546, 37.405357, 24.083031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.088169, 37.445526, 23.956644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281705, 0.259706, 0.923686,
		0.174816, 0.960452, -0.216728,
		-0.943442, 0.100422, -0.315964,
		42.805138, 37.475651, 23.861855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.205719, 38.043926, 24.348305>,  <43.465546, 37.405357, 24.083031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.205719, 38.043926, 24.348305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.874100, 37.836369, 24.264944>,  <42.675129, 37.711834, 24.214928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.874100, 37.836369, 24.264944>,  <43.205719, 38.043926, 24.348305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.874100, 37.836369, 24.264944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286937, 0.074888, 0.955018,
		-0.479945, 0.851553, -0.210976,
		-0.829047, -0.518893, -0.208400,
		42.625385, 37.680702, 24.202425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.689503, 38.533031, 24.413469>,  <43.205719, 38.043926, 24.348305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.689503, 38.533031, 24.413469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.551792, 38.163437, 24.480072>,  <42.469166, 37.941681, 24.520033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.551792, 38.163437, 24.480072>,  <42.689503, 38.533031, 24.413469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.551792, 38.163437, 24.480072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256252, 0.263089, 0.930118,
		-0.903221, 0.277551, -0.327348,
		-0.344277, -0.923986, 0.166505,
		42.448509, 37.886242, 24.530024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.056011, 38.557705, 24.755489>,  <42.689503, 38.533031, 24.413469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.056011, 38.557705, 24.755489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.120533, 38.171368, 24.836601>,  <42.159248, 37.939564, 24.885267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.120533, 38.171368, 24.836601>,  <42.056011, 38.557705, 24.755489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.120533, 38.171368, 24.836601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168329, 0.175533, 0.969976,
		-0.972443, -0.190598, -0.134265,
		0.161308, -0.965847, 0.202779,
		42.168926, 37.881615, 24.897434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.458107, 38.357708, 25.166124>,  <42.056011, 38.557705, 24.755489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.458107, 38.357708, 25.166124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.738632, 38.078636, 25.224646>,  <41.906948, 37.911194, 25.259758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.738632, 38.078636, 25.224646>,  <41.458107, 38.357708, 25.166124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.738632, 38.078636, 25.224646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199233, 0.005224, 0.979938,
		-0.684447, -0.716391, -0.135338,
		0.701312, -0.697679, 0.146304,
		41.949024, 37.869331, 25.268538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.110420, 37.864212, 25.506487>,  <41.458107, 38.357708, 25.166124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.110420, 37.864212, 25.506487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.500580, 37.808094, 25.574503>,  <41.734676, 37.774422, 25.615313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.500580, 37.808094, 25.574503>,  <41.110420, 37.864212, 25.506487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.500580, 37.808094, 25.574503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189915, -0.143140, 0.971310,
		-0.111922, -0.979710, -0.166262,
		0.975400, -0.140287, 0.170041,
		41.793201, 37.766006, 25.625515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.145744, 37.194458, 25.847694>,  <41.110420, 37.864212, 25.506487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.145744, 37.194458, 25.847694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.468956, 37.411720, 25.938972>,  <41.662884, 37.542076, 25.993740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.468956, 37.411720, 25.938972>,  <41.145744, 37.194458, 25.847694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.468956, 37.411720, 25.938972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224800, -0.073775, 0.971608,
		0.544569, -0.836385, 0.062489,
		0.808028, 0.543155, 0.228195,
		41.711365, 37.574665, 26.007431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.387001, 36.964821, 26.417522>,  <41.145744, 37.194458, 25.847694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.387001, 36.964821, 26.417522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.593159, 37.307480, 26.426754>,  <41.716854, 37.513073, 26.432293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.593159, 37.307480, 26.426754>,  <41.387001, 36.964821, 26.417522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.593159, 37.307480, 26.426754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031585, -0.007926, 0.999470,
		0.856372, -0.515849, 0.022972,
		0.515393, 0.856643, 0.023081,
		41.747776, 37.564472, 26.433678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.979797, 36.898922, 26.962452>,  <41.387001, 36.964821, 26.417522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.979797, 36.898922, 26.962452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.935875, 37.293736, 26.915611>,  <41.909523, 37.530624, 26.887506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.935875, 37.293736, 26.915611>,  <41.979797, 36.898922, 26.962452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.935875, 37.293736, 26.915611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077110, 0.125916, 0.989039,
		0.990958, 0.099570, -0.089936,
		-0.109803, 0.987031, -0.117100,
		41.902935, 37.589844, 26.880482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.590611, 37.260941, 27.310677>,  <41.979797, 36.898922, 26.962452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.590611, 37.260941, 27.310677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.288685, 37.520054, 27.269423>,  <42.107529, 37.675522, 27.244671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.288685, 37.520054, 27.269423>,  <42.590611, 37.260941, 27.310677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.288685, 37.520054, 27.269423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081771, 0.248928, 0.965064,
		0.650827, 0.720006, -0.240863,
		-0.754810, 0.647785, -0.103133,
		42.062241, 37.714390, 27.238483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.706009, 37.664227, 27.819124>,  <42.590611, 37.260941, 27.310677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.706009, 37.664227, 27.819124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.328541, 37.761101, 27.728947>,  <42.102058, 37.819225, 27.674839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.328541, 37.761101, 27.728947>,  <42.706009, 37.664227, 27.819124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.328541, 37.761101, 27.728947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180361, 0.194719, 0.964134,
		0.277400, 0.950489, -0.140070,
		-0.943673, 0.242188, -0.225446,
		42.045441, 37.833755, 27.661312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.516468, 38.289867, 28.149067>,  <42.706009, 37.664227, 27.819124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.516468, 38.289867, 28.149067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.163002, 38.131931, 28.048477>,  <41.950924, 38.037170, 27.988123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.163002, 38.131931, 28.048477>,  <42.516468, 38.289867, 28.149067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.163002, 38.131931, 28.048477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314559, 0.102984, 0.943635,
		-0.346687, 0.912960, -0.215204,
		-0.883663, -0.394840, -0.251476,
		41.897903, 38.013481, 27.973034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.067062, 38.611340, 28.537546>,  <42.516468, 38.289867, 28.149067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.067062, 38.611340, 28.537546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.875000, 38.278877, 28.425385>,  <41.759762, 38.079399, 28.358088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.875000, 38.278877, 28.425385>,  <42.067062, 38.611340, 28.537546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.875000, 38.278877, 28.425385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480744, -0.018037, 0.876676,
		-0.733714, 0.555743, -0.390913,
		-0.480155, -0.831159, -0.280404,
		41.730953, 38.029530, 28.341263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.413746, 38.733852, 28.658073>,  <42.067062, 38.611340, 28.537546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.413746, 38.733852, 28.658073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.431076, 38.334248, 28.654100>,  <41.441475, 38.094486, 28.651716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.431076, 38.334248, 28.654100>,  <41.413746, 38.733852, 28.658073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.431076, 38.334248, 28.654100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462028, -0.028851, 0.886396,
		-0.885807, -0.033816, -0.462821,
		0.043327, -0.999012, -0.009933,
		41.444073, 38.034546, 28.651121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.722145, 38.435959, 28.674387>,  <41.413746, 38.733852, 28.658073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.722145, 38.435959, 28.674387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.962940, 38.151291, 28.819242>,  <41.107418, 37.980492, 28.906155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.962940, 38.151291, 28.819242>,  <40.722145, 38.435959, 28.674387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.962940, 38.151291, 28.819242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452532, 0.069601, 0.889028,
		-0.657898, -0.699060, -0.280153,
		0.601985, -0.711667, 0.362137,
		41.143536, 37.937790, 28.927883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.286072, 38.097630, 29.157831>,  <40.722145, 38.435959, 28.674387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.286072, 38.097630, 29.157831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.657410, 37.985085, 29.255003>,  <40.880211, 37.917557, 29.313305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.657410, 37.985085, 29.255003>,  <40.286072, 38.097630, 29.157831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.657410, 37.985085, 29.255003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270523, -0.063164, 0.960639,
		-0.254947, -0.957520, -0.134753,
		0.928342, -0.281366, 0.242928,
		40.935913, 37.900677, 29.327881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.171844, 37.531395, 29.675529>,  <40.286072, 38.097630, 29.157831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.171844, 37.531395, 29.675529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.541767, 37.678974, 29.712643>,  <40.763721, 37.767521, 29.734911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.541767, 37.678974, 29.712643>,  <40.171844, 37.531395, 29.675529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.541767, 37.678974, 29.712643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124054, 0.061899, 0.990343,
		0.359644, -0.927386, 0.103015,
		0.924806, 0.368951, 0.092784,
		40.819210, 37.789658, 29.740479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.486298, 37.174011, 30.198992>,  <40.171844, 37.531395, 29.675529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.486298, 37.174011, 30.198992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.673813, 37.527077, 30.185497>,  <40.786324, 37.738914, 30.177401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.673813, 37.527077, 30.185497>,  <40.486298, 37.174011, 30.198992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.673813, 37.527077, 30.185497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091752, 0.086647, 0.992005,
		0.878531, -0.461947, 0.121606,
		0.468791, 0.882665, -0.033737,
		40.814449, 37.791878, 30.175377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.990162, 37.086102, 30.645908>,  <40.486298, 37.174011, 30.198992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.990162, 37.086102, 30.645908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.987896, 37.485699, 30.628139>,  <40.986534, 37.725456, 30.617477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.987896, 37.485699, 30.628139>,  <40.990162, 37.086102, 30.645908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.987896, 37.485699, 30.628139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018118, 0.044313, 0.998854,
		0.999820, 0.006466, 0.017848,
		-0.005667, 0.998997, -0.044422,
		40.986195, 37.785397, 30.614813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.439293, 37.239239, 31.156946>,  <40.990162, 37.086102, 30.645908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.439293, 37.239239, 31.156946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.211311, 37.564693, 31.111092>,  <41.074524, 37.759968, 31.083578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.211311, 37.564693, 31.111092>,  <41.439293, 37.239239, 31.156946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.211311, 37.564693, 31.111092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018937, 0.152484, 0.988124,
		0.821457, 0.561016, -0.102317,
		-0.569955, 0.813640, -0.114636,
		41.040325, 37.808784, 31.076700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.730099, 37.867077, 31.407179>,  <41.439293, 37.239239, 31.156946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.730099, 37.867077, 31.407179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.333412, 37.908154, 31.438028>,  <41.095398, 37.932800, 31.456537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.333412, 37.908154, 31.438028>,  <41.730099, 37.867077, 31.407179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.333412, 37.908154, 31.438028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093949, 0.170646, 0.980843,
		0.087565, 0.979966, -0.178881,
		-0.991719, 0.102693, 0.077124,
		41.035896, 37.938961, 31.461166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.603008, 38.363983, 31.918482>,  <41.730099, 37.867077, 31.407179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.603008, 38.363983, 31.918482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.260853, 38.159763, 31.883503>,  <41.055557, 38.037231, 31.862514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.260853, 38.159763, 31.883503>,  <41.603008, 38.363983, 31.918482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.260853, 38.159763, 31.883503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014037, -0.191612, 0.981370,
		-0.517793, 0.838228, 0.171069,
		-0.855391, -0.510548, -0.087449,
		41.004234, 38.006599, 31.857267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.145908, 38.719952, 32.343128>,  <41.603008, 38.363983, 31.918482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.145908, 38.719952, 32.343128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.011936, 38.345539, 32.299911>,  <40.931553, 38.120892, 32.273983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.011936, 38.345539, 32.299911>,  <41.145908, 38.719952, 32.343128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.011936, 38.345539, 32.299911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206081, -0.184659, 0.960954,
		-0.919430, 0.299587, 0.254746,
		-0.334931, -0.936028, -0.108041,
		40.911457, 38.064732, 32.267498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.851742, 38.700691, 32.947357>,  <41.145908, 38.719952, 32.343128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.851742, 38.700691, 32.947357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.895397, 38.323895, 32.820400>,  <40.921589, 38.097816, 32.744225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.895397, 38.323895, 32.820400>,  <40.851742, 38.700691, 32.947357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.895397, 38.323895, 32.820400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112625, -0.305525, 0.945500,
		-0.987626, -0.138933, 0.072749,
		0.109135, -0.941994, -0.317392,
		40.928139, 38.041298, 32.725182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.610172, 38.304588, 33.464733>,  <40.851742, 38.700691, 32.947357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.610172, 38.304588, 33.464733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.833874, 38.037838, 33.267750>,  <40.968094, 37.877789, 33.149559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.833874, 38.037838, 33.267750>,  <40.610172, 38.304588, 33.464733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.833874, 38.037838, 33.267750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207480, -0.462537, 0.861981,
		-0.802611, -0.584243, -0.120313,
		0.559256, -0.666873, -0.492456,
		41.001652, 37.837776, 33.120014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.430889, 37.581833, 33.757355>,  <40.610172, 38.304588, 33.464733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.430889, 37.581833, 33.757355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.800880, 37.565109, 33.606270>,  <41.022877, 37.555073, 33.515617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.800880, 37.565109, 33.606270>,  <40.430889, 37.581833, 33.757355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.800880, 37.565109, 33.606270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287330, -0.573546, 0.767129,
		-0.248712, -0.818106, -0.518503,
		0.924978, -0.041813, -0.377714,
		41.078373, 37.552567, 33.492954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.621674, 36.884838, 33.942852>,  <40.430889, 37.581833, 33.757355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.621674, 36.884838, 33.942852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.976982, 37.034431, 33.836182>,  <41.190166, 37.124187, 33.772179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.976982, 37.034431, 33.836182>,  <40.621674, 36.884838, 33.942852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.976982, 37.034431, 33.836182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459249, -0.712672, 0.530272,
		0.008258, -0.593496, -0.804795,
		0.888269, 0.373981, -0.266677,
		41.243462, 37.146626, 33.756180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.061218, 36.329445, 33.776150>,  <40.621674, 36.884838, 33.942852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.061218, 36.329445, 33.776150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.311806, 36.628872, 33.863033>,  <41.462158, 36.808529, 33.915165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.311806, 36.628872, 33.863033>,  <41.061218, 36.329445, 33.776150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.311806, 36.628872, 33.863033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519071, -0.608562, 0.600181,
		0.581464, -0.263246, -0.769806,
		0.626470, 0.748568, 0.217214,
		41.499748, 36.853443, 33.928196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.675903, 36.068874, 33.730167>,  <41.061218, 36.329445, 33.776150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.675903, 36.068874, 33.730167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.745468, 36.396919, 33.948219>,  <41.787205, 36.593746, 34.079048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.745468, 36.396919, 33.948219>,  <41.675903, 36.068874, 33.730167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.745468, 36.396919, 33.948219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535926, -0.543229, 0.646286,
		0.826159, 0.179753, -0.533994,
		0.173909, 0.820117, 0.545128,
		41.797642, 36.642956, 34.111759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.431358, 36.110653, 33.864880>,  <41.675903, 36.068874, 33.730167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.431358, 36.110653, 33.864880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.275257, 36.342247, 34.151230>,  <42.181599, 36.481205, 34.323040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.275257, 36.342247, 34.151230>,  <42.431358, 36.110653, 33.864880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.275257, 36.342247, 34.151230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526142, -0.497829, 0.689450,
		0.755566, 0.645712, -0.110351,
		-0.390250, 0.578985, 0.715878,
		42.158180, 36.515942, 34.365993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.940800, 36.087555, 34.363457>,  <42.431358, 36.110653, 33.864880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.940800, 36.087555, 34.363457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.635880, 36.250561, 34.564587>,  <42.452927, 36.348366, 34.685265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.635880, 36.250561, 34.564587>,  <42.940800, 36.087555, 34.363457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.635880, 36.250561, 34.564587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300614, -0.465077, 0.832667,
		0.573175, 0.785897, 0.232023,
		-0.762300, 0.407515, 0.502823,
		42.407188, 36.372814, 34.715435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.208557, 36.517456, 34.912632>,  <42.940800, 36.087555, 34.363457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.208557, 36.517456, 34.912632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.840500, 36.391449, 35.005676>,  <42.619667, 36.315845, 35.061504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.840500, 36.391449, 35.005676>,  <43.208557, 36.517456, 34.912632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.840500, 36.391449, 35.005676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341710, -0.355804, 0.869850,
		-0.191256, 0.879867, 0.435034,
		-0.920139, -0.315020, 0.232609,
		42.564457, 36.296944, 35.075459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.222782, 36.531940, 35.643326>,  <43.208557, 36.517456, 34.912632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.222782, 36.531940, 35.643326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.893642, 36.321369, 35.557735>,  <42.696159, 36.195026, 35.506382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.893642, 36.321369, 35.557735>,  <43.222782, 36.531940, 35.643326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.893642, 36.321369, 35.557735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102611, -0.508005, 0.855220,
		-0.558913, 0.681764, 0.472031,
		-0.822853, -0.526429, -0.213974,
		42.646786, 36.163441, 35.493542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.704296, 36.580448, 36.179790>,  <43.222782, 36.531940, 35.643326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.704296, 36.580448, 36.179790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.614124, 36.236038, 35.997440>,  <42.560020, 36.029392, 35.888031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.614124, 36.236038, 35.997440>,  <42.704296, 36.580448, 36.179790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.614124, 36.236038, 35.997440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109223, -0.442637, 0.890024,
		-0.968117, 0.250433, 0.005741,
		-0.225433, -0.861020, -0.455877,
		42.546494, 35.977734, 35.860676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.791855, 37.345394, 36.419998>,  <42.704296, 36.580448, 36.179790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.791855, 37.345394, 36.419998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.880760, 37.265903, 36.801804>,  <42.934105, 37.218208, 37.030888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.880760, 37.265903, 36.801804>,  <42.791855, 37.345394, 36.419998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.880760, 37.265903, 36.801804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867585, 0.406374, 0.286629,
		-0.444853, -0.891833, -0.082092,
		0.222265, -0.198730, 0.954518,
		42.947441, 37.206284, 37.088158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.249435, 36.978924, 36.721367>,  <42.791855, 37.345394, 36.419998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.249435, 36.978924, 36.721367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.425724, 37.159309, 37.031826>,  <42.531498, 37.267540, 37.218102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.425724, 37.159309, 37.031826>,  <42.249435, 36.978924, 36.721367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.425724, 37.159309, 37.031826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.895348, 0.159012, 0.416014,
		0.064191, -0.878264, 0.473848,
		0.440717, 0.450963, 0.776145,
		42.557938, 37.294598, 37.264668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.865551, 36.733532, 37.367813>,  <42.249435, 36.978924, 36.721367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.865551, 36.733532, 37.367813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.067677, 37.043713, 37.519249>,  <42.188953, 37.229820, 37.610111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.067677, 37.043713, 37.519249>,  <41.865551, 36.733532, 37.367813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.067677, 37.043713, 37.519249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787291, 0.234661, 0.570183,
		0.353309, -0.586183, 0.729084,
		0.505318, 0.775451, 0.378588,
		42.219273, 37.276348, 37.632824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.706032, 36.734486, 38.021683>,  <41.865551, 36.733532, 37.367813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.706032, 36.734486, 38.021683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.850548, 37.103855, 37.969898>,  <41.937260, 37.325478, 37.938828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.850548, 37.103855, 37.969898>,  <41.706032, 36.734486, 38.021683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.850548, 37.103855, 37.969898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640043, 0.346557, 0.685743,
		0.678096, -0.164893, 0.716238,
		0.361291, 0.923422, -0.129460,
		41.958935, 37.380882, 37.931061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.819736, 36.925716, 38.713245>,  <41.706032, 36.734486, 38.021683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.819736, 36.925716, 38.713245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.763458, 37.268276, 38.514534>,  <41.729691, 37.473812, 38.395306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.763458, 37.268276, 38.514534>,  <41.819736, 36.925716, 38.713245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.763458, 37.268276, 38.514534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651399, 0.297794, 0.697853,
		0.745577, 0.421783, 0.515959,
		-0.140694, 0.856398, -0.496777,
		41.721249, 37.525196, 38.365501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.614925, 37.232204, 39.247246>,  <41.819736, 36.925716, 38.713245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.614925, 37.232204, 39.247246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.537392, 37.529129, 38.990685>,  <41.490871, 37.707283, 38.836746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.537392, 37.529129, 38.990685>,  <41.614925, 37.232204, 39.247246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.537392, 37.529129, 38.990685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711249, 0.343972, 0.613032,
		0.675687, 0.575022, 0.461299,
		-0.193833, 0.742316, -0.641402,
		41.479240, 37.751823, 38.798264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.621506, 37.899883, 39.560390>,  <41.614925, 37.232204, 39.247246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.621506, 37.899883, 39.560390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.390453, 37.960026, 39.239460>,  <41.251820, 37.996113, 39.046902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.390453, 37.960026, 39.239460>,  <41.621506, 37.899883, 39.560390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.390453, 37.960026, 39.239460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742118, 0.312663, 0.592877,
		0.340001, 0.937889, -0.069022,
		-0.577633, 0.150356, -0.802330,
		41.217163, 38.005135, 38.998760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.403500, 38.548462, 39.611778>,  <41.621506, 37.899883, 39.560390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.403500, 38.548462, 39.611778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.135067, 38.357273, 39.385082>,  <40.974007, 38.242561, 39.249065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.135067, 38.357273, 39.385082>,  <41.403500, 38.548462, 39.611778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.135067, 38.357273, 39.385082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741294, 0.444557, 0.502845,
		0.011601, 0.757570, -0.652651,
		-0.671081, -0.477972, -0.566739,
		40.933743, 38.213882, 39.215061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.824150, 39.053230, 39.688305>,  <41.403500, 38.548462, 39.611778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.824150, 39.053230, 39.688305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.650764, 38.713551, 39.567665>,  <40.546734, 38.509743, 39.495281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.650764, 38.713551, 39.567665>,  <40.824150, 39.053230, 39.688305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.650764, 38.713551, 39.567665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859330, 0.288707, 0.422137,
		-0.271405, 0.442158, -0.854889,
		-0.433464, -0.849202, -0.301603,
		40.520725, 38.458790, 39.477184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.118851, 39.237007, 39.686310>,  <40.824150, 39.053230, 39.688305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.118851, 39.237007, 39.686310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.070454, 38.840137, 39.673973>,  <40.041416, 38.602016, 39.666573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.070454, 38.840137, 39.673973>,  <40.118851, 39.237007, 39.686310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.070454, 38.840137, 39.673973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.902119, 0.096944, 0.420455,
		-0.414175, 0.078697, -0.906789,
		-0.120996, -0.992174, -0.030843,
		40.034153, 38.542484, 39.664719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.482479, 39.157219, 39.532040>,  <40.118851, 39.237007, 39.686310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.482479, 39.157219, 39.532040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.600021, 38.805832, 39.682743>,  <39.670547, 38.595001, 39.773163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.600021, 38.805832, 39.682743>,  <39.482479, 39.157219, 39.532040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.600021, 38.805832, 39.682743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788615, -0.000089, 0.614887,
		-0.540124, -0.477804, -0.692798,
		0.293857, -0.878466, 0.376756,
		39.688179, 38.542294, 39.795769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.067738, 38.493221, 39.335453>,  <39.482479, 39.157219, 39.532040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.067738, 38.493221, 39.335453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.219990, 38.413422, 39.696632>,  <39.311340, 38.365543, 39.913342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.219990, 38.413422, 39.696632>,  <39.067738, 38.493221, 39.335453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.219990, 38.413422, 39.696632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.924688, -0.091161, 0.369650,
		0.008573, -0.975650, -0.219164,
		0.380628, -0.199489, 0.902954,
		39.334179, 38.353573, 39.967518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.575344, 38.266788, 39.668221>,  <39.067738, 38.493221, 39.335453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.575344, 38.266788, 39.668221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.822918, 38.266689, 39.982399>,  <38.971462, 38.266632, 40.170906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.822918, 38.266689, 39.982399>,  <38.575344, 38.266788, 39.668221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.822918, 38.266689, 39.982399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784427, -0.051067, 0.618115,
		0.039964, -0.998695, -0.031792,
		0.618932, -0.000236, 0.785444,
		39.008598, 38.266617, 40.218033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.385040, 37.742451, 40.178371>,  <38.575344, 38.266788, 39.668221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.385040, 37.742451, 40.178371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.588577, 38.013672, 40.390533>,  <38.710697, 38.176403, 40.517830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.588577, 38.013672, 40.390533>,  <38.385040, 37.742451, 40.178371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.588577, 38.013672, 40.390533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769265, 0.081581, 0.633700,
		0.386411, -0.730473, 0.563113,
		0.508840, 0.678051, 0.530403,
		38.741230, 38.217087, 40.549656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.607441, 37.461384, 40.888184>,  <38.385040, 37.742451, 40.178371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.607441, 37.461384, 40.888184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.550777, 37.857082, 40.873631>,  <38.516781, 38.094501, 40.864899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.550777, 37.857082, 40.873631>,  <38.607441, 37.461384, 40.888184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.550777, 37.857082, 40.873631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610095, -0.058300, 0.790181,
		0.779562, 0.134135, 0.611793,
		-0.141658, 0.989247, -0.036386,
		38.508282, 38.153858, 40.862713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.471142, 37.640915, 41.516300>,  <38.607441, 37.461384, 40.888184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.471142, 37.640915, 41.516300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.373096, 37.982571, 41.332840>,  <38.314270, 38.187565, 41.222763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.373096, 37.982571, 41.332840>,  <38.471142, 37.640915, 41.516300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.373096, 37.982571, 41.332840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602413, 0.236481, 0.762348,
		0.759616, 0.463159, 0.456582,
		-0.245115, 0.854144, -0.458648,
		38.299561, 38.238815, 41.195244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.562805, 38.231331, 42.001740>,  <38.471142, 37.640915, 41.516300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.562805, 38.231331, 42.001740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.283020, 38.301636, 41.724651>,  <38.115150, 38.343819, 41.558399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.283020, 38.301636, 41.724651>,  <38.562805, 38.231331, 42.001740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.283020, 38.301636, 41.724651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663589, 0.200127, 0.720832,
		0.265329, 0.963875, -0.023345,
		-0.699464, 0.175766, -0.692717,
		38.073181, 38.354366, 41.516838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.228962, 38.823715, 42.175068>,  <38.562805, 38.231331, 42.001740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.228962, 38.823715, 42.175068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.962864, 38.657398, 41.927013>,  <37.803204, 38.557610, 41.778183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.962864, 38.657398, 41.927013>,  <38.228962, 38.823715, 42.175068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.962864, 38.657398, 41.927013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745226, 0.318956, 0.585580,
		-0.045684, 0.851694, -0.522043,
		-0.665245, -0.415792, -0.620134,
		37.763290, 38.532661, 41.740974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.691944, 39.254150, 42.106819>,  <38.228962, 38.823715, 42.175068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.691944, 39.254150, 42.106819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.523800, 38.907703, 41.998646>,  <37.422913, 38.699837, 41.933743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.523800, 38.907703, 41.998646>,  <37.691944, 39.254150, 42.106819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.523800, 38.907703, 41.998646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734689, 0.149989, 0.661615,
		-0.532475, 0.476804, -0.699377,
		-0.420359, -0.866118, -0.270437,
		37.397694, 38.647869, 41.917515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.028862, 39.407127, 42.256744>,  <37.691944, 39.254150, 42.106819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.028862, 39.407127, 42.256744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.041512, 39.007496, 42.245178>,  <37.049103, 38.767715, 42.238239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.041512, 39.007496, 42.245178>,  <37.028862, 39.407127, 42.256744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.041512, 39.007496, 42.245178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676305, -0.042692, 0.735383,
		-0.735942, -0.003699, -0.677034,
		0.031624, -0.999081, -0.028917,
		37.050999, 38.707771, 42.236504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.363022, 39.211731, 42.327839>,  <37.028862, 39.407127, 42.256744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.363022, 39.211731, 42.327839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.647476, 38.968498, 42.468990>,  <36.818150, 38.822559, 42.553680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.647476, 38.968498, 42.468990>,  <36.363022, 39.211731, 42.327839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.647476, 38.968498, 42.468990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522595, -0.121445, 0.843887,
		-0.470302, -0.784526, -0.404147,
		0.711133, -0.608087, 0.352874,
		36.860817, 38.786072, 42.574852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.088581, 38.690308, 42.464653>,  <36.363022, 39.211731, 42.327839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.088581, 38.690308, 42.464653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.378036, 38.740898, 42.736050>,  <36.551712, 38.771252, 42.898888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.378036, 38.740898, 42.736050>,  <36.088581, 38.690308, 42.464653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.378036, 38.740898, 42.736050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595853, -0.381601, 0.706640,
		0.348282, -0.915634, -0.200784,
		0.723643, 0.126473, 0.678488,
		36.595131, 38.778839, 42.939594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.237309, 38.083073, 42.849430>,  <36.088581, 38.690308, 42.464653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.237309, 38.083073, 42.849430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.332905, 38.369564, 43.111698>,  <36.390263, 38.541458, 43.269058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.332905, 38.369564, 43.111698>,  <36.237309, 38.083073, 42.849430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.332905, 38.369564, 43.111698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537293, -0.464907, 0.703688,
		0.808825, -0.520466, 0.273712,
		0.238995, 0.716224, 0.655671,
		36.404602, 38.584431, 43.308399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.510303, 37.734333, 43.472282>,  <36.237309, 38.083073, 42.849430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.510303, 37.734333, 43.472282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.336391, 38.083435, 43.561069>,  <36.232044, 38.292896, 43.614342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.336391, 38.083435, 43.561069>,  <36.510303, 37.734333, 43.472282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.336391, 38.083435, 43.561069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484506, -0.434471, 0.759268,
		0.759092, 0.222570, 0.611753,
		-0.434780, 0.872753, 0.221967,
		36.205959, 38.345261, 43.627659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.995094, 37.757645, 42.876038>,  <36.510303, 37.734333, 43.472282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.995094, 37.757645, 42.876038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.803608, 38.014877, 42.636948>,  <36.688717, 38.169216, 42.493492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.803608, 38.014877, 42.636948>,  <36.995094, 37.757645, 42.876038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.803608, 38.014877, 42.636948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826058, 0.099275, -0.554774,
		-0.297428, -0.759333, -0.578749,
		-0.478713, 0.643085, -0.597725,
		36.659992, 38.207802, 42.457630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.029289, 37.498035, 42.172245>,  <36.995094, 37.757645, 42.876038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.029289, 37.498035, 42.172245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.976608, 37.894547, 42.170048>,  <36.945000, 38.132454, 42.168728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.976608, 37.894547, 42.170048>,  <37.029289, 37.498035, 42.172245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.976608, 37.894547, 42.170048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756532, 0.096931, -0.646734,
		-0.640558, -0.089331, -0.762696,
		-0.131702, 0.991274, -0.005492,
		36.937099, 38.191929, 42.168400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.804550, 37.600983, 41.456516>,  <37.029289, 37.498035, 42.172245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.804550, 37.600983, 41.456516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.977226, 37.932240, 41.599525>,  <37.080830, 38.130993, 41.685329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.977226, 37.932240, 41.599525>,  <36.804550, 37.600983, 41.456516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.977226, 37.932240, 41.599525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566972, 0.059155, -0.821611,
		-0.701561, 0.557385, -0.443998,
		0.431689, 0.828144, 0.357522,
		37.106731, 38.180683, 41.706783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.834545, 38.109035, 40.953106>,  <36.804550, 37.600983, 41.456516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.834545, 38.109035, 40.953106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.136478, 38.220642, 41.190552>,  <37.317638, 38.287605, 41.333019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.136478, 38.220642, 41.190552>,  <36.834545, 38.109035, 40.953106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.136478, 38.220642, 41.190552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595338, 0.088445, -0.798593,
		-0.275321, 0.956205, -0.099346,
		0.754832, 0.279014, 0.593616,
		37.362926, 38.304348, 41.368637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.156769, 38.596889, 40.580235>,  <36.834545, 38.109035, 40.953106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.156769, 38.596889, 40.580235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.425144, 38.514080, 40.865044>,  <37.586170, 38.464394, 41.035931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.425144, 38.514080, 40.865044>,  <37.156769, 38.596889, 40.580235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.425144, 38.514080, 40.865044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739347, 0.260033, -0.621086,
		-0.056573, 0.943147, 0.327526,
		0.670943, -0.207019, 0.712024,
		37.626427, 38.451973, 41.078651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.599358, 39.256264, 40.657806>,  <37.156769, 38.596889, 40.580235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.599358, 39.256264, 40.657806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.792004, 38.929382, 40.784439>,  <37.907589, 38.733253, 40.860420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.792004, 38.929382, 40.784439>,  <37.599358, 39.256264, 40.657806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.792004, 38.929382, 40.784439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702555, 0.144070, -0.696894,
		0.523896, 0.558048, 0.643518,
		0.481612, -0.817206, 0.316582,
		37.936489, 38.684219, 40.879414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.222980, 39.430092, 40.731838>,  <37.599358, 39.256264, 40.657806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.222980, 39.430092, 40.731838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.288128, 39.036186, 40.707466>,  <38.327217, 38.799843, 40.692844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.288128, 39.036186, 40.707466>,  <38.222980, 39.430092, 40.731838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.288128, 39.036186, 40.707466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672102, 0.155945, -0.723851,
		0.722325, 0.076942, 0.687260,
		0.162869, -0.984765, -0.060930,
		38.336990, 38.740757, 40.689186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.945824, 39.234489, 40.917362>,  <38.222980, 39.430092, 40.731838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.945824, 39.234489, 40.917362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.774734, 39.008221, 40.635349>,  <38.672081, 38.872459, 40.466141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.774734, 39.008221, 40.635349>,  <38.945824, 39.234489, 40.917362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.774734, 39.008221, 40.635349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649721, 0.349866, -0.674875,
		0.628425, -0.746732, 0.217885,
		-0.427721, -0.565672, -0.705032,
		38.646420, 38.838520, 40.423840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.464039, 39.001434, 41.307766>,  <38.945824, 39.234489, 40.917362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.464039, 39.001434, 41.307766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.241745, 38.750969, 41.089016>,  <39.108368, 38.600689, 40.957767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.241745, 38.750969, 41.089016>,  <39.464039, 39.001434, 41.307766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.241745, 38.750969, 41.089016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811665, -0.266331, -0.519873,
		0.179877, -0.732792, 0.656247,
		-0.555738, -0.626166, -0.546875,
		39.075024, 38.563118, 40.924953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.976768, 38.504391, 41.215286>,  <39.464039, 39.001434, 41.307766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.976768, 38.504391, 41.215286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.697876, 38.435970, 40.936832>,  <39.530540, 38.394917, 40.769760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.697876, 38.435970, 40.936832>,  <39.976768, 38.504391, 41.215286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.697876, 38.435970, 40.936832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716578, -0.139782, -0.683357,
		0.019580, -0.975296, 0.220031,
		-0.697232, -0.171050, -0.696139,
		39.488705, 38.384655, 40.727989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.098236, 37.916386, 40.958912>,  <39.976768, 38.504391, 41.215286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.098236, 37.916386, 40.958912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.887051, 38.092606, 40.668484>,  <39.760342, 38.198338, 40.494228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.887051, 38.092606, 40.668484>,  <40.098236, 37.916386, 40.958912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.887051, 38.092606, 40.668484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672196, -0.305737, -0.674298,
		-0.519049, -0.844060, -0.134721,
		-0.527959, 0.440553, -0.726066,
		39.728664, 38.224770, 40.450665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.099792, 37.429146, 40.462608>,  <40.098236, 37.916386, 40.958912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.099792, 37.429146, 40.462608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.997833, 37.774372, 40.288185>,  <39.936657, 37.981510, 40.183533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.997833, 37.774372, 40.288185>,  <40.099792, 37.429146, 40.462608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.997833, 37.774372, 40.288185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622176, -0.198820, -0.757210,
		-0.740220, -0.464311, -0.486302,
		-0.254894, 0.863068, -0.436054,
		39.921364, 38.033291, 40.157368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.183281, 37.184635, 39.798100>,  <40.099792, 37.429146, 40.462608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.183281, 37.184635, 39.798100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.197048, 37.581829, 39.752865>,  <40.205307, 37.820145, 39.725723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.197048, 37.581829, 39.752865>,  <40.183281, 37.184635, 39.798100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.197048, 37.581829, 39.752865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541088, -0.113649, -0.833251,
		-0.840261, -0.032511, -0.541206,
		0.034417, 0.992989, -0.113086,
		40.207375, 37.879726, 39.718941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.919899, 37.324543, 39.120018>,  <40.183281, 37.184635, 39.798100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.919899, 37.324543, 39.120018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.139816, 37.649200, 39.198978>,  <40.271767, 37.843994, 39.246353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.139816, 37.649200, 39.198978>,  <39.919899, 37.324543, 39.120018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.139816, 37.649200, 39.198978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593666, -0.213438, -0.775890,
		-0.587610, 0.543770, -0.599190,
		0.549796, 0.811639, 0.197399,
		40.304756, 37.892693, 39.258198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.094700, 37.598320, 38.498035>,  <39.919899, 37.324543, 39.120018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.094700, 37.598320, 38.498035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.349751, 37.823872, 38.707977>,  <40.502781, 37.959202, 38.833942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.349751, 37.823872, 38.707977>,  <40.094700, 37.598320, 38.498035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.349751, 37.823872, 38.707977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676874, -0.084808, -0.731198,
		-0.367795, 0.821491, -0.435751,
		0.637628, 0.563879, 0.524854,
		40.541039, 37.993034, 38.865433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.396637, 37.973610, 37.957855>,  <40.094700, 37.598320, 38.498035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.396637, 37.973610, 37.957855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.657127, 38.011707, 38.259007>,  <40.813423, 38.034565, 38.439697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.657127, 38.011707, 38.259007>,  <40.396637, 37.973610, 37.957855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.657127, 38.011707, 38.259007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754371, 0.026761, -0.655903,
		-0.082617, 0.995094, -0.054420,
		0.651229, 0.095241, 0.752881,
		40.852497, 38.040279, 38.484871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.881603, 38.448948, 37.948990>,  <40.396637, 37.973610, 37.957855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.881603, 38.448948, 37.948990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.127972, 38.226360, 38.172054>,  <41.275791, 38.092808, 38.305893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.127972, 38.226360, 38.172054>,  <40.881603, 38.448948, 37.948990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.127972, 38.226360, 38.172054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663722, -0.014803, -0.747833,
		0.424397, 0.830740, 0.360220,
		0.615922, -0.556464, 0.557663,
		41.312748, 38.059422, 38.339352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.537899, 38.620338, 37.733353>,  <40.881603, 38.448948, 37.948990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.537899, 38.620338, 37.733353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.620285, 38.285408, 37.935921>,  <41.669716, 38.084450, 38.057461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.620285, 38.285408, 37.935921>,  <41.537899, 38.620338, 37.733353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.620285, 38.285408, 37.935921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745457, -0.201004, -0.635524,
		0.633933, 0.508415, 0.582789,
		0.205967, -0.837324, 0.506424,
		41.682076, 38.034210, 38.087849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.276283, 38.564838, 37.851307>,  <41.537899, 38.620338, 37.733353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.276283, 38.564838, 37.851307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.168468, 38.183445, 37.905296>,  <42.103779, 37.954609, 37.937691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.168468, 38.183445, 37.905296>,  <42.276283, 38.564838, 37.851307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.168468, 38.183445, 37.905296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853986, -0.301437, -0.424080,
		0.445039, 0.000958, 0.895511,
		-0.269534, -0.953485, 0.134970,
		42.087608, 37.897400, 37.945786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.851734, 38.302612, 38.075123>,  <42.276283, 38.564838, 37.851307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.851734, 38.302612, 38.075123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.651688, 37.981762, 37.944607>,  <42.531658, 37.789249, 37.866295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.651688, 37.981762, 37.944607>,  <42.851734, 38.302612, 38.075123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.651688, 37.981762, 37.944607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860130, -0.416507, -0.294446,
		0.100280, -0.427914, 0.898239,
		-0.500120, -0.802130, -0.326294,
		42.501652, 37.741123, 37.846718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.149303, 37.675014, 38.335003>,  <42.851734, 38.302612, 38.075123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.149303, 37.675014, 38.335003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.955120, 37.551628, 38.007790>,  <42.838612, 37.477596, 37.811462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.955120, 37.551628, 38.007790>,  <43.149303, 37.675014, 38.335003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.955120, 37.551628, 38.007790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810136, -0.510461, -0.288286,
		-0.328647, -0.802669, 0.497707,
		-0.485459, -0.308466, -0.818033,
		42.809483, 37.459087, 37.762379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.317032, 36.970009, 38.320080>,  <43.149303, 37.675014, 38.335003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.317032, 36.970009, 38.320080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.233608, 37.087650, 37.946983>,  <43.183552, 37.158234, 37.723125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.233608, 37.087650, 37.946983>,  <43.317032, 36.970009, 38.320080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.233608, 37.087650, 37.946983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735110, -0.581905, -0.347852,
		-0.645071, -0.758215, -0.094835,
		-0.208562, 0.294103, -0.932741,
		43.171040, 37.175880, 37.667160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.473171, 36.421486, 37.862701>,  <43.317032, 36.970009, 38.320080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.473171, 36.421486, 37.862701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.464287, 36.719791, 37.596367>,  <43.458954, 36.898777, 37.436565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.464287, 36.719791, 37.596367>,  <43.473171, 36.421486, 37.862701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.464287, 36.719791, 37.596367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771838, -0.410509, -0.485539,
		-0.635431, -0.524704, -0.566492,
		-0.022215, 0.745767, -0.665837,
		43.457623, 36.943520, 37.396614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.764030, 36.200375, 37.229996>,  <43.473171, 36.421486, 37.862701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.764030, 36.200375, 37.229996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.795456, 36.598347, 37.204880>,  <43.814312, 36.837132, 37.189812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.795456, 36.598347, 37.204880>,  <43.764030, 36.200375, 37.229996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.795456, 36.598347, 37.204880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800849, -0.100497, -0.590374,
		-0.593691, -0.003902, -0.804684,
		0.078564, 0.994930, -0.062789,
		43.819027, 36.896824, 37.186043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.909035, 36.356754, 36.444767>,  <43.764030, 36.200375, 37.229996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.909035, 36.356754, 36.444767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.068676, 36.593014, 36.725292>,  <44.164463, 36.734772, 36.893608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.068676, 36.593014, 36.725292>,  <43.909035, 36.356754, 36.444767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.068676, 36.593014, 36.725292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903618, -0.123633, -0.410109,
		-0.155525, 0.797400, -0.583065,
		0.399107, 0.590650, 0.701317,
		44.188408, 36.770210, 36.935688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.621639, 36.564049, 36.121960>,  <43.909035, 36.356754, 36.444767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.621639, 36.564049, 36.121960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.597851, 36.607193, 36.518913>,  <44.583580, 36.633080, 36.757088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.597851, 36.607193, 36.518913>,  <44.621639, 36.564049, 36.121960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.597851, 36.607193, 36.518913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996403, -0.053712, 0.065545,
		0.060373, 0.992714, -0.104275,
		-0.059467, 0.107858, 0.992386,
		44.580009, 36.639549, 36.816628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.919048, 36.799870, 35.409397>,  <44.621639, 36.564049, 36.121960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.919048, 36.799870, 35.409397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.193851, 36.884483, 35.687469>,  <45.358734, 36.935249, 35.854313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.193851, 36.884483, 35.687469>,  <44.919048, 36.799870, 35.409397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.193851, 36.884483, 35.687469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319629, -0.771198, 0.550537,
		0.652575, -0.600424, -0.462209,
		0.687011, 0.211531, 0.695177,
		45.399956, 36.947941, 35.896023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.503963, 36.260738, 35.477554>,  <44.919048, 36.799870, 35.409397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.503963, 36.260738, 35.477554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.395077, 36.443275, 35.816410>,  <45.329746, 36.552799, 36.019722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.395077, 36.443275, 35.816410>,  <45.503963, 36.260738, 35.477554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.395077, 36.443275, 35.816410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313071, -0.874489, 0.370479,
		0.909882, -0.164365, 0.380919,
		-0.272216, 0.456347, 0.847140,
		45.313412, 36.580181, 36.070553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.979652, 35.706123, 35.464363>,  <45.503963, 36.260738, 35.477554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.979652, 35.706123, 35.464363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.113773, 36.077656, 35.527420>,  <46.194244, 36.300575, 35.565254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.113773, 36.077656, 35.527420>,  <45.979652, 35.706123, 35.464363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.113773, 36.077656, 35.527420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925308, -0.293218, -0.240474,
		-0.177134, 0.226502, -0.957768,
		0.335303, 0.928827, 0.157645,
		46.214363, 36.356304, 35.574715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.619602, 35.103481, 35.787914>,  <45.979652, 35.706123, 35.464363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.619602, 35.103481, 35.787914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.814758, 34.970268, 35.465164>,  <45.931850, 34.890339, 35.271515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.814758, 34.970268, 35.465164>,  <45.619602, 35.103481, 35.787914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.814758, 34.970268, 35.465164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771750, -0.596492, -0.220453,
		-0.407879, 0.730265, -0.548039,
		0.487890, -0.333031, -0.806879,
		45.961124, 34.870358, 35.223099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.159286, 35.255699, 35.187550>,  <45.619602, 35.103481, 35.787914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.159286, 35.255699, 35.187550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.381432, 34.930859, 35.115929>,  <45.514721, 34.735954, 35.072956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.381432, 34.930859, 35.115929>,  <45.159286, 35.255699, 35.187550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.381432, 34.930859, 35.115929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830569, -0.530918, -0.168168,
		0.041506, 0.242112, -0.969360,
		0.555366, -0.812101, -0.179054,
		45.548042, 34.687229, 35.062214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.041286, 34.769344, 34.520622>,  <45.159286, 35.255699, 35.187550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.041286, 34.769344, 34.520622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.202137, 34.529877, 34.797718>,  <45.298649, 34.386196, 34.963978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.202137, 34.529877, 34.797718>,  <45.041286, 34.769344, 34.520622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.202137, 34.529877, 34.797718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689351, -0.695913, -0.201249,
		0.602569, -0.396614, -0.692537,
		0.402127, -0.598668, 0.692742,
		45.322777, 34.350277, 35.005539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.193382, 34.207630, 34.161339>,  <45.041286, 34.769344, 34.520622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.193382, 34.207630, 34.161339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.169304, 34.075947, 34.538273>,  <45.154858, 33.996937, 34.764435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.169304, 34.075947, 34.538273>,  <45.193382, 34.207630, 34.161339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.169304, 34.075947, 34.538273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718465, -0.641079, -0.269861,
		0.692953, -0.693281, -0.197935,
		-0.060197, -0.329210, 0.942336,
		45.151245, 33.977184, 34.820972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.422138, 33.526237, 34.211800>,  <45.193382, 34.207630, 34.161339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.422138, 33.526237, 34.211800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.154907, 33.634987, 34.488857>,  <44.994568, 33.700237, 34.655090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.154907, 33.634987, 34.488857>,  <45.422138, 33.526237, 34.211800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.154907, 33.634987, 34.488857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516462, -0.839545, -0.168615,
		0.535665, -0.470373, 0.701293,
		-0.668079, 0.271870, 0.692645,
		44.954483, 33.716549, 34.696651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.417080, 33.041340, 34.947220>,  <45.422138, 33.526237, 34.211800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.417080, 33.041340, 34.947220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.080704, 33.211815, 34.813839>,  <44.878880, 33.314098, 34.733810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.080704, 33.211815, 34.813839>,  <45.417080, 33.041340, 34.947220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.080704, 33.211815, 34.813839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426056, -0.901366, -0.077558,
		-0.333618, 0.076849, 0.939571,
		-0.840937, 0.426185, -0.333454,
		44.828423, 33.339672, 34.713802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.189388, 32.416195, 34.643005>,  <45.417080, 33.041340, 34.947220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.189388, 32.416195, 34.643005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.506287, 32.360474, 34.405369>,  <45.696426, 32.327042, 34.262787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.506287, 32.360474, 34.405369>,  <45.189388, 32.416195, 34.643005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.506287, 32.360474, 34.405369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567941, 0.524364, 0.634417,
		0.223141, -0.840021, 0.494543,
		0.792244, -0.139307, -0.594090,
		45.743961, 32.318680, 34.227142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.610962, 32.253944, 35.144146>,  <45.189388, 32.416195, 34.643005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.610962, 32.253944, 35.144146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.759647, 32.408573, 34.806534>,  <45.848858, 32.501350, 34.603966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.759647, 32.408573, 34.806534>,  <45.610962, 32.253944, 35.144146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.759647, 32.408573, 34.806534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436498, 0.729631, 0.526411,
		0.819329, -0.564091, 0.102473,
		0.371711, 0.386575, -0.844033,
		45.871162, 32.524544, 34.553326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.393772, 32.430199, 35.109871>,  <45.610962, 32.253944, 35.144146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.393772, 32.430199, 35.109871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.204063, 32.709137, 34.894924>,  <46.090237, 32.876499, 34.765957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.204063, 32.709137, 34.894924>,  <46.393772, 32.430199, 35.109871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.204063, 32.709137, 34.894924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486539, 0.716322, 0.500163,
		0.733718, -0.024237, -0.679021,
		-0.474275, 0.697349, -0.537371,
		46.061779, 32.918343, 34.733711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.928970, 32.941803, 34.780071>,  <46.393772, 32.430199, 35.109871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.928970, 32.941803, 34.780071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.563145, 33.103584, 34.779724>,  <46.343651, 33.200653, 34.779514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.563145, 33.103584, 34.779724>,  <46.928970, 32.941803, 34.780071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.563145, 33.103584, 34.779724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387113, 0.875979, 0.287758,
		0.117145, 0.262835, -0.957703,
		-0.914560, 0.404449, -0.000869,
		46.288776, 33.224918, 34.779465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.081772, 33.659332, 34.782860>,  <46.928970, 32.941803, 34.780071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.081772, 33.659332, 34.782860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.688953, 33.629471, 34.852158>,  <46.453262, 33.611553, 34.893738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.688953, 33.629471, 34.852158>,  <47.081772, 33.659332, 34.782860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.688953, 33.629471, 34.852158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052133, 0.775195, 0.629567,
		-0.181299, 0.627295, -0.757385,
		-0.982045, -0.074655, 0.173245,
		46.394341, 33.607075, 34.904133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.687504, 34.201214, 34.552479>,  <47.081772, 33.659332, 34.782860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.687504, 34.201214, 34.552479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.457718, 34.073174, 34.853817>,  <46.319847, 33.996349, 35.034618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.457718, 34.073174, 34.853817>,  <46.687504, 34.201214, 34.552479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.457718, 34.073174, 34.853817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202654, 0.836087, 0.509794,
		-0.793044, 0.445528, -0.415435,
		-0.574467, -0.320099, 0.753342,
		46.285378, 33.977142, 35.079819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.955139, 34.822960, 34.806702>,  <46.687504, 34.201214, 34.552479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.955139, 34.822960, 34.806702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.315681, 34.668385, 34.884903>,  <47.532005, 34.575638, 34.931824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.315681, 34.668385, 34.884903>,  <46.955139, 34.822960, 34.806702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.315681, 34.668385, 34.884903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376721, 0.476927, -0.794117,
		0.213637, 0.789433, 0.575460,
		0.901355, -0.386441, 0.195506,
		47.586086, 34.552452, 34.943554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.509483, 35.289455, 35.035576>,  <46.955139, 34.822960, 34.806702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.509483, 35.289455, 35.035576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.638512, 34.977905, 34.820431>,  <47.715931, 34.790974, 34.691345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.638512, 34.977905, 34.820431>,  <47.509483, 35.289455, 35.035576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.638512, 34.977905, 34.820431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315743, 0.624233, -0.714591,
		0.892330, 0.060681, 0.447286,
		0.322573, -0.778878, -0.537862,
		47.735283, 34.744244, 34.659073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<40.783966, 34.324963, 27.368166> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.468102, 34.109562, 27.250557>,  <40.278584, 33.980320, 27.179991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.468102, 34.109562, 27.250557>,  <40.783966, 34.324963, 27.368166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.468102, 34.109562, 27.250557> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443344, 0.169547, 0.880170,
		-0.424125, 0.825389, -0.372627,
		-0.789661, -0.538504, -0.294022,
		40.231205, 33.948009, 27.162350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.211983, 34.740433, 27.711868>,  <40.783966, 34.324963, 27.368166>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.211983, 34.740433, 27.711868> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.063007, 34.387085, 27.598057>,  <39.973621, 34.175076, 27.529770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.063007, 34.387085, 27.598057>,  <40.211983, 34.740433, 27.711868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.063007, 34.387085, 27.598057> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525957, -0.051693, 0.848939,
		-0.764631, 0.465827, -0.445359,
		-0.372437, -0.883365, -0.284531,
		39.951275, 34.122074, 27.512697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.554718, 34.739021, 27.848698>,  <40.211983, 34.740433, 27.711868>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.554718, 34.739021, 27.848698> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.569679, 34.340675, 27.815584>,  <39.578655, 34.101669, 27.795717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.569679, 34.340675, 27.815584>,  <39.554718, 34.739021, 27.848698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.569679, 34.340675, 27.815584> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387062, -0.090809, 0.917571,
		-0.921295, -0.002274, -0.388858,
		0.037398, -0.995866, -0.082782,
		39.580898, 34.041916, 27.790751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.970741, 34.535854, 28.054909>,  <39.554718, 34.739021, 27.848698>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.970741, 34.535854, 28.054909> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.208961, 34.217953, 28.101715>,  <39.351894, 34.027214, 28.129799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.208961, 34.217953, 28.101715>,  <38.970741, 34.535854, 28.054909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.208961, 34.217953, 28.101715> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262749, -0.055060, 0.963292,
		-0.759134, -0.604434, -0.241610,
		0.595549, -0.794750, 0.117016,
		39.387627, 33.979527, 28.136820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.615376, 33.974491, 28.376078>,  <38.970741, 34.535854, 28.054909>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.615376, 33.974491, 28.376078> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.995270, 33.879951, 28.458199>,  <39.223206, 33.823227, 28.507471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.995270, 33.879951, 28.458199>,  <38.615376, 33.974491, 28.376078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.995270, 33.879951, 28.458199> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274115, -0.311019, 0.910015,
		-0.151229, -0.920546, -0.360172,
		0.949732, -0.236350, 0.205300,
		39.280190, 33.809048, 28.519789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.536243, 33.370579, 28.621735>,  <38.615376, 33.974491, 28.376078>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.536243, 33.370579, 28.621735> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.897823, 33.496586, 28.737419>,  <39.114769, 33.572189, 28.806829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.897823, 33.496586, 28.737419>,  <38.536243, 33.370579, 28.621735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.897823, 33.496586, 28.737419> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180696, -0.331589, 0.925958,
		0.387592, -0.889276, -0.242817,
		0.903947, 0.315018, 0.289210,
		39.169006, 33.591091, 28.824183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.686802, 32.860184, 29.056456>,  <38.536243, 33.370579, 28.621735>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.686802, 32.860184, 29.056456> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.948017, 33.147217, 29.153301>,  <39.104744, 33.319435, 29.211409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.948017, 33.147217, 29.153301>,  <38.686802, 32.860184, 29.056456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.948017, 33.147217, 29.153301> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034492, -0.291184, 0.956045,
		0.756541, -0.632683, -0.165402,
		0.653036, 0.717582, 0.242115,
		39.143929, 33.362492, 29.225935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.201206, 32.607422, 29.502815>,  <38.686802, 32.860184, 29.056456>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.201206, 32.607422, 29.502815> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.173805, 33.002773, 29.557089>,  <39.157364, 33.239986, 29.589653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.173805, 33.002773, 29.557089>,  <39.201206, 32.607422, 29.502815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.173805, 33.002773, 29.557089> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188103, -0.146361, 0.971183,
		0.979757, 0.041008, 0.195943,
		-0.068505, 0.988381, 0.135684,
		39.153255, 33.299286, 29.597794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.539879, 32.677208, 30.078430>,  <39.201206, 32.607422, 29.502815>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.539879, 32.677208, 30.078430> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.350735, 33.029274, 30.061913>,  <39.237247, 33.240513, 30.052002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.350735, 33.029274, 30.061913>,  <39.539879, 32.677208, 30.078430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.350735, 33.029274, 30.061913> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060115, 0.014532, 0.998086,
		0.879084, 0.474439, 0.046040,
		-0.472862, 0.880168, -0.041296,
		39.208878, 33.293324, 30.049524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.912399, 33.118912, 30.556162>,  <39.539879, 32.677208, 30.078430>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.912399, 33.118912, 30.556162> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.549194, 33.281761, 30.516645>,  <39.331272, 33.379471, 30.492935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.549194, 33.281761, 30.516645>,  <39.912399, 33.118912, 30.556162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.549194, 33.281761, 30.516645> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041729, 0.146751, 0.988293,
		0.416857, 0.901506, -0.116263,
		-0.908014, 0.407125, -0.098793,
		39.276791, 33.403900, 30.487007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.047188, 33.604065, 30.968294>,  <39.912399, 33.118912, 30.556162>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.047188, 33.604065, 30.968294> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.648037, 33.605400, 30.942261>,  <39.408546, 33.606201, 30.926641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.648037, 33.605400, 30.942261>,  <40.047188, 33.604065, 30.968294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.648037, 33.605400, 30.942261> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061218, 0.294344, 0.953737,
		0.022344, 0.955693, -0.293514,
		-0.997874, 0.003342, -0.065082,
		39.348675, 33.606403, 30.922735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.782360, 34.117050, 31.380302>,  <40.047188, 33.604065, 30.968294>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.782360, 34.117050, 31.380302> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.455616, 33.886322, 31.381594>,  <39.259567, 33.747883, 31.382368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.455616, 33.886322, 31.381594>,  <39.782360, 34.117050, 31.380302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.455616, 33.886322, 31.381594> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037912, 0.059270, 0.997522,
		-0.575584, 0.814717, -0.070284,
		-0.816864, -0.576822, 0.003228,
		39.210556, 33.713276, 31.382563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.401165, 34.382404, 31.958025>,  <39.782360, 34.117050, 31.380302>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.401165, 34.382404, 31.958025> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.256016, 34.022583, 31.860756>,  <39.168926, 33.806690, 31.802395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.256016, 34.022583, 31.860756>,  <39.401165, 34.382404, 31.958025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.256016, 34.022583, 31.860756> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148233, -0.201913, 0.968121,
		-0.919972, 0.387354, -0.060073,
		-0.362876, -0.899549, -0.243173,
		39.147152, 33.752720, 31.787804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.691242, 34.389713, 32.165432>,  <39.401165, 34.382404, 31.958025>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.691242, 34.389713, 32.165432> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.830498, 34.014816, 32.157681>,  <38.914051, 33.789879, 32.153030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.830498, 34.014816, 32.157681>,  <38.691242, 34.389713, 32.165432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.830498, 34.014816, 32.157681> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114827, -0.063151, 0.991376,
		-0.930384, -0.342910, -0.129606,
		0.348138, -0.937243, -0.019379,
		38.934940, 33.733643, 32.151867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.293819, 34.041348, 32.692204>,  <38.691242, 34.389713, 32.165432>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.293819, 34.041348, 32.692204> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.611355, 33.808598, 32.621498>,  <38.801876, 33.668949, 32.579075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.611355, 33.808598, 32.621498>,  <38.293819, 34.041348, 32.692204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.611355, 33.808598, 32.621498> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114069, -0.143040, 0.983122,
		-0.597336, -0.800602, -0.047177,
		0.793837, -0.581873, -0.176766,
		38.849506, 33.634037, 32.568470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.159626, 33.385708, 32.830582>,  <38.293819, 34.041348, 32.692204>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.159626, 33.385708, 32.830582> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.551960, 33.429516, 32.895042>,  <38.787361, 33.455803, 32.933720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.551960, 33.429516, 32.895042>,  <38.159626, 33.385708, 32.830582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.551960, 33.429516, 32.895042> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139140, -0.185289, 0.972784,
		0.136401, -0.976562, -0.166499,
		0.980834, 0.109522, 0.161153,
		38.846210, 33.462372, 32.943390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.252785, 32.929184, 33.430244>,  <38.159626, 33.385708, 32.830582>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.252785, 32.929184, 33.430244> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.611149, 33.103596, 33.396267>,  <38.826168, 33.208244, 33.375881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.611149, 33.103596, 33.396267>,  <38.252785, 32.929184, 33.430244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.611149, 33.103596, 33.396267> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161665, -0.141920, 0.976588,
		0.413767, -0.888671, -0.197639,
		0.895914, 0.436031, -0.084945,
		38.879925, 33.234406, 33.370785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.769604, 32.418587, 33.713936>,  <38.252785, 32.929184, 33.430244>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.769604, 32.418587, 33.713936> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.924355, 32.786465, 33.740715>,  <39.017204, 33.007191, 33.756783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.924355, 32.786465, 33.740715>,  <38.769604, 32.418587, 33.713936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.924355, 32.786465, 33.740715> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250059, -0.174520, 0.952372,
		0.887578, -0.351711, -0.297497,
		0.386879, 0.919697, 0.066952,
		39.040417, 33.062374, 33.760799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.437683, 32.352127, 34.118397>,  <38.769604, 32.418587, 33.713936>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.437683, 32.352127, 34.118397> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.371910, 32.744904, 34.155815>,  <39.332447, 32.980568, 34.178268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.371910, 32.744904, 34.155815>,  <39.437683, 32.352127, 34.118397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.371910, 32.744904, 34.155815> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350098, -0.030569, 0.936214,
		0.922168, 0.186693, -0.338749,
		-0.164429, 0.981943, 0.093551,
		39.322582, 33.039486, 34.183880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.077148, 32.619473, 34.409023>,  <39.437683, 32.352127, 34.118397>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.077148, 32.619473, 34.409023> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.784782, 32.881279, 34.486351>,  <39.609364, 33.038364, 34.532745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.784782, 32.881279, 34.486351>,  <40.077148, 32.619473, 34.409023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.784782, 32.881279, 34.486351> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192630, -0.073888, 0.978486,
		0.654717, 0.752430, -0.072073,
		-0.730917, 0.654515, 0.193317,
		39.565506, 33.077633, 34.544346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.355480, 33.082809, 34.869263>,  <40.077148, 32.619473, 34.409023>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.355480, 33.082809, 34.869263> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.961617, 33.136055, 34.914383>,  <39.725300, 33.168003, 34.941456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.961617, 33.136055, 34.914383>,  <40.355480, 33.082809, 34.869263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.961617, 33.136055, 34.914383> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133326, 0.156960, 0.978564,
		0.112558, 0.978592, -0.172300,
		-0.984660, 0.133117, 0.112804,
		39.666218, 33.175991, 34.948223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.364353, 33.670967, 35.364780>,  <40.355480, 33.082809, 34.869263>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.364353, 33.670967, 35.364780> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.011360, 33.482937, 35.371059>,  <39.799564, 33.370117, 35.374828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.011360, 33.482937, 35.371059>,  <40.364353, 33.670967, 35.364780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.011360, 33.482937, 35.371059> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006294, 0.021576, 0.999747,
		-0.470299, 0.882361, -0.016082,
		-0.882485, -0.470079, 0.015700,
		39.746616, 33.341911, 35.375771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.149773, 33.785244, 35.197037>,  <40.364353, 33.670967, 35.364780>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.149773, 33.785244, 35.197037> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.541107, 33.767769, 35.277985>,  <41.775909, 33.757286, 35.326553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.541107, 33.767769, 35.277985>,  <41.149773, 33.785244, 35.197037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.541107, 33.767769, 35.277985> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201369, -0.026200, -0.979165,
		0.048077, 0.998702, -0.016836,
		0.978335, -0.043686, 0.202368,
		41.834606, 33.754662, 35.338696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.435127, 34.326008, 34.730286>,  <41.149773, 33.785244, 35.197037>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.435127, 34.326008, 34.730286> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.745628, 34.089317, 34.817272>,  <41.931927, 33.947304, 34.869465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.745628, 34.089317, 34.817272>,  <41.435127, 34.326008, 34.730286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.745628, 34.089317, 34.817272> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225914, -0.060953, -0.972239,
		0.588556, 0.803830, 0.086365,
		0.776251, -0.591728, 0.217470,
		41.978504, 33.911800, 34.882515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.808342, 34.427181, 34.193932>,  <41.435127, 34.326008, 34.730286>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.808342, 34.427181, 34.193932> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.006886, 34.118656, 34.353279>,  <42.126011, 33.933540, 34.448887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.006886, 34.118656, 34.353279>,  <41.808342, 34.427181, 34.193932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.006886, 34.118656, 34.353279> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306720, -0.273476, -0.911665,
		0.812126, 0.574703, 0.100835,
		0.496361, -0.771315, 0.398370,
		42.155792, 33.887260, 34.472790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.530117, 34.505646, 34.107006>,  <41.808342, 34.427181, 34.193932>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.530117, 34.505646, 34.107006> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.461060, 34.116314, 34.167439>,  <42.419624, 33.882713, 34.203697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.461060, 34.116314, 34.167439>,  <42.530117, 34.505646, 34.107006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.461060, 34.116314, 34.167439> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366453, -0.205844, -0.907381,
		0.914279, -0.101288, 0.392217,
		-0.172642, -0.973329, 0.151081,
		42.409267, 33.824314, 34.212761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.231277, 34.134979, 33.888107>,  <42.530117, 34.505646, 34.107006>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.231277, 34.134979, 33.888107> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.935707, 33.865723, 33.876293>,  <42.758366, 33.704170, 33.869205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.935707, 33.865723, 33.876293>,  <43.231277, 34.134979, 33.888107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.935707, 33.865723, 33.876293> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436867, -0.445270, -0.781589,
		0.512968, -0.590439, 0.623094,
		-0.738926, -0.673140, -0.029533,
		42.714031, 33.663780, 33.867432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.581230, 33.429821, 33.761806>,  <43.231277, 34.134979, 33.888107>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.581230, 33.429821, 33.761806> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.198666, 33.450367, 33.646820>,  <42.969128, 33.462696, 33.577827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.198666, 33.450367, 33.646820>,  <43.581230, 33.429821, 33.761806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.198666, 33.450367, 33.646820> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240369, -0.420505, -0.874871,
		-0.165816, -0.905835, 0.389830,
		-0.956414, 0.051365, -0.287461,
		42.911743, 33.465778, 33.560581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.460503, 32.918491, 33.217770>,  <43.581230, 33.429821, 33.761806>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.460503, 32.918491, 33.217770> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.127274, 33.138916, 33.198513>,  <42.927334, 33.271172, 33.186958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.127274, 33.138916, 33.198513>,  <43.460503, 32.918491, 33.217770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.127274, 33.138916, 33.198513> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004002, -0.093039, -0.995654,
		-0.553144, -0.829263, 0.079714,
		-0.833076, 0.551059, -0.048145,
		42.877350, 33.304234, 33.184071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.967388, 32.568718, 32.804585>,  <43.460503, 32.918491, 33.217770>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.967388, 32.568718, 32.804585> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.847359, 32.950260, 32.808746>,  <42.775341, 33.179188, 32.811245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.847359, 32.950260, 32.808746>,  <42.967388, 32.568718, 32.804585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.847359, 32.950260, 32.808746> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082137, -0.014970, -0.996509,
		-0.950373, -0.299882, 0.082839,
		-0.300075, 0.953859, 0.010405,
		42.757336, 33.236420, 32.811867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.504295, 32.633999, 32.318722>,  <42.967388, 32.568718, 32.804585>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.504295, 32.633999, 32.318722> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.599968, 33.021049, 32.350956>,  <42.657372, 33.253281, 32.370296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.599968, 33.021049, 32.350956>,  <42.504295, 32.633999, 32.318722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.599968, 33.021049, 32.350956> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225693, 0.136129, -0.964640,
		-0.944380, 0.212537, 0.250946,
		0.239183, 0.967624, 0.080590,
		42.671722, 33.311337, 32.375134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.921558, 33.057968, 31.930918>,  <42.504295, 32.633999, 32.318722>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.921558, 33.057968, 31.930918> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.253983, 33.277332, 31.967985>,  <42.453438, 33.408951, 31.990225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.253983, 33.277332, 31.967985>,  <41.921558, 33.057968, 31.930918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.253983, 33.277332, 31.967985> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166488, 0.404268, -0.899360,
		-0.530679, 0.731994, 0.427275,
		0.831060, 0.548408, 0.092668,
		42.503300, 33.441856, 31.995785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.749870, 33.670048, 31.659380>,  <41.921558, 33.057968, 31.930918>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.749870, 33.670048, 31.659380> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.149132, 33.677181, 31.636185>,  <42.388691, 33.681461, 31.622267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.149132, 33.677181, 31.636185>,  <41.749870, 33.670048, 31.659380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.149132, 33.677181, 31.636185> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059506, 0.474087, -0.878465,
		0.011825, 0.880297, 0.474275,
		0.998158, 0.017834, -0.057989,
		42.448578, 33.682533, 31.618788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.971512, 34.372055, 31.310057>,  <41.749870, 33.670048, 31.659380>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.971512, 34.372055, 31.310057> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.282871, 34.126293, 31.258524>,  <42.469688, 33.978836, 31.227604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.282871, 34.126293, 31.258524>,  <41.971512, 34.372055, 31.310057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.282871, 34.126293, 31.258524> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080924, 0.301719, -0.949956,
		0.622527, 0.729023, 0.284579,
		0.778403, -0.614403, -0.128832,
		42.516392, 33.941971, 31.219873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.505798, 34.707214, 30.914610>,  <41.971512, 34.372055, 31.310057>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.505798, 34.707214, 30.914610> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.615559, 34.324150, 30.879770>,  <42.681416, 34.094311, 30.858868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.615559, 34.324150, 30.879770>,  <42.505798, 34.707214, 30.914610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.615559, 34.324150, 30.879770> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283393, 0.167086, -0.944336,
		0.918909, 0.234442, 0.317244,
		0.274399, -0.957663, -0.087097,
		42.697880, 34.036850, 30.853642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.213856, 34.674786, 30.690083>,  <42.505798, 34.707214, 30.914610>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.213856, 34.674786, 30.690083> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.007771, 34.351776, 30.575214>,  <42.884121, 34.157970, 30.506294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.007771, 34.351776, 30.575214>,  <43.213856, 34.674786, 30.690083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.007771, 34.351776, 30.575214> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379267, 0.085657, -0.921314,
		0.768580, -0.583583, 0.262136,
		-0.515210, -0.807523, -0.287169,
		42.853207, 34.109520, 30.489063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.665348, 34.100346, 30.354973>,  <43.213856, 34.674786, 30.690083>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.665348, 34.100346, 30.354973> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.289562, 34.032505, 30.235880>,  <43.064091, 33.991798, 30.164425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.289562, 34.032505, 30.235880>,  <43.665348, 34.100346, 30.354973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.289562, 34.032505, 30.235880> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279614, 0.122777, -0.952230,
		0.198058, -0.977834, -0.067920,
		-0.939462, -0.169606, -0.297733,
		43.007725, 33.981625, 30.146561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.743015, 33.949921, 29.593170>,  <43.665348, 34.100346, 30.354973>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.743015, 33.949921, 29.593170> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.346485, 33.992714, 29.623686>,  <43.108566, 34.018391, 29.641996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.346485, 33.992714, 29.623686>,  <43.743015, 33.949921, 29.593170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.346485, 33.992714, 29.623686> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059022, 0.156184, -0.985963,
		-0.117396, -0.981917, -0.148516,
		-0.991330, 0.106982, 0.076290,
		43.049088, 34.024807, 29.646572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.600098, 33.606571, 29.028858>,  <43.743015, 33.949921, 29.593170>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.600098, 33.606571, 29.028858> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.273911, 33.811523, 29.136543>,  <43.078197, 33.934494, 29.201155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.273911, 33.811523, 29.136543>,  <43.600098, 33.606571, 29.028858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.273911, 33.811523, 29.136543> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204845, 0.179535, -0.962188,
		-0.541340, -0.839782, -0.041447,
		-0.815469, 0.512380, 0.269214,
		43.029270, 33.965237, 29.217308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.119743, 33.312325, 28.651003>,  <43.600098, 33.606571, 29.028858>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.119743, 33.312325, 28.651003> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.975792, 33.674793, 28.739847>,  <42.889423, 33.892277, 28.793154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.975792, 33.674793, 28.739847>,  <43.119743, 33.312325, 28.651003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.975792, 33.674793, 28.739847> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191028, 0.161453, -0.968215,
		-0.913235, -0.390867, 0.115002,
		-0.359876, 0.906176, 0.222111,
		42.867828, 33.946648, 28.806480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<42.351555, 33.314930, 28.387987> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.408794, 33.707127, 28.441893>,  <42.443138, 33.942444, 28.474236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.408794, 33.707127, 28.441893>,  <42.351555, 33.314930, 28.387987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.408794, 33.707127, 28.441893> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117868, 0.152081, -0.981315,
		-0.982665, 0.124539, 0.137331,
		0.143098, 0.980490, 0.134766,
		42.451725, 34.001274, 28.482323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.950665, 33.604111, 27.851187>,  <42.351555, 33.314930, 28.387987>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.950665, 33.604111, 27.851187> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.166862, 33.926350, 27.948252>,  <42.296581, 34.119694, 28.006491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.166862, 33.926350, 27.948252>,  <41.950665, 33.604111, 27.851187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.166862, 33.926350, 27.948252> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098407, 0.346974, -0.932698,
		-0.835575, 0.480235, 0.266812,
		0.540491, 0.805595, 0.242664,
		42.329010, 34.168030, 28.021051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.623608, 34.214687, 27.619247>,  <41.950665, 33.604111, 27.851187>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.623608, 34.214687, 27.619247> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.000599, 34.346615, 27.641006>,  <42.226791, 34.425770, 27.654062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.000599, 34.346615, 27.641006>,  <41.623608, 34.214687, 27.619247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.000599, 34.346615, 27.641006> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078686, 0.377054, -0.922843,
		-0.324881, 0.865477, 0.381316,
		0.942476, 0.329818, 0.054396,
		42.283340, 34.445560, 27.657326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.663345, 34.906155, 27.443384>,  <41.623608, 34.214687, 27.619247>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.663345, 34.906155, 27.443384> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.028385, 34.762951, 27.364401>,  <42.247410, 34.677029, 27.317011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.028385, 34.762951, 27.364401>,  <41.663345, 34.906155, 27.443384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.028385, 34.762951, 27.364401> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037750, 0.407109, -0.912599,
		0.407109, 0.840292, 0.358012,
		0.912599, -0.358012, -0.197458,
		42.302166, 34.655548, 27.305164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.840977, 35.299290, 26.955397>,  <41.663345, 34.906155, 27.443384>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.840977, 35.299290, 26.955397> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.129169, 35.025051, 26.913704>,  <42.302086, 34.860508, 26.888689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.129169, 35.025051, 26.913704>,  <41.840977, 35.299290, 26.955397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.129169, 35.025051, 26.913704> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179150, 0.329212, -0.927106,
		0.669938, 0.649286, 0.360015,
		0.720478, -0.685600, -0.104232,
		42.345314, 34.819370, 26.882435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.465153, 35.693943, 26.763506>,  <41.840977, 35.299290, 26.955397>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.465153, 35.693943, 26.763506> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.450756, 35.309593, 26.653652>,  <42.442116, 35.078983, 26.587740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.450756, 35.309593, 26.653652>,  <42.465153, 35.693943, 26.763506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.450756, 35.309593, 26.653652> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247208, 0.257709, -0.934064,
		0.968294, -0.101511, 0.228260,
		-0.035993, -0.960876, -0.274632,
		42.439957, 35.021332, 26.571262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.651012, 35.817684, 26.032192>,  <42.465153, 35.693943, 26.763506>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.651012, 35.817684, 26.032192> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.600677, 35.423134, 26.074562>,  <42.570477, 35.186401, 26.099985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.600677, 35.423134, 26.074562>,  <42.651012, 35.817684, 26.032192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.600677, 35.423134, 26.074562> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250366, -0.134895, -0.958708,
		0.959938, -0.094121, 0.263931,
		-0.125838, -0.986380, 0.105926,
		42.562927, 35.127220, 26.106340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.308205, 35.428162, 25.752483>,  <42.651012, 35.817684, 26.032192>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.308205, 35.428162, 25.752483> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.978184, 35.202374, 25.742216>,  <42.780170, 35.066902, 25.736055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.978184, 35.202374, 25.742216>,  <43.308205, 35.428162, 25.752483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.978184, 35.202374, 25.742216> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037199, -0.008932, -0.999268,
		0.563824, -0.825408, 0.028367,
		-0.825057, -0.564467, -0.025668,
		42.730667, 35.033035, 25.734516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.460590, 34.778370, 25.356575>,  <43.308205, 35.428162, 25.752483>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.460590, 34.778370, 25.356575> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.065369, 34.829777, 25.322577>,  <42.828236, 34.860622, 25.302177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.065369, 34.829777, 25.322577>,  <43.460590, 34.778370, 25.356575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.065369, 34.829777, 25.322577> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052046, -0.240846, -0.969167,
		-0.145026, -0.962017, 0.231281,
		-0.988058, 0.128518, -0.084998,
		42.768951, 34.868332, 25.297077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.300545, 34.241787, 24.870300>,  <43.460590, 34.778370, 25.356575>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.300545, 34.241787, 24.870300> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.989414, 34.493141, 24.874552>,  <42.802734, 34.643955, 24.877102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.989414, 34.493141, 24.874552>,  <43.300545, 34.241787, 24.870300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.989414, 34.493141, 24.874552> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041689, -0.034713, -0.998527,
		-0.627091, -0.777127, 0.053197,
		-0.777830, 0.628385, 0.010629,
		42.756065, 34.681656, 24.877741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.704155, 33.856697, 24.685768>,  <43.300545, 34.241787, 24.870300>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.704155, 33.856697, 24.685768> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.636208, 34.244816, 24.616877>,  <42.595440, 34.477688, 24.575542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.636208, 34.244816, 24.616877>,  <42.704155, 33.856697, 24.685768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.636208, 34.244816, 24.616877> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020093, -0.178143, -0.983800,
		-0.985262, -0.163655, 0.049757,
		-0.169867, 0.970300, -0.172229,
		42.585247, 34.535908, 24.565208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.248547, 33.855488, 24.190498>,  <42.704155, 33.856697, 24.685768>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.248547, 33.855488, 24.190498> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.373539, 34.233002, 24.147383>,  <42.448536, 34.459511, 24.121513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.373539, 34.233002, 24.147383>,  <42.248547, 33.855488, 24.190498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.373539, 34.233002, 24.147383> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015358, -0.108439, -0.993984,
		-0.949799, 0.312258, -0.019391,
		0.312483, 0.943788, -0.107790,
		42.467285, 34.516140, 24.115046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.812195, 34.246231, 23.685705>,  <42.248547, 33.855488, 24.190498>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.812195, 34.246231, 23.685705> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.146648, 34.465622, 23.682762>,  <42.347321, 34.597256, 23.680996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.146648, 34.465622, 23.682762>,  <41.812195, 34.246231, 23.685705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.146648, 34.465622, 23.682762> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033363, 0.037460, -0.998741,
		-0.547514, 0.835324, 0.049621,
		0.836131, 0.548480, -0.007359,
		42.397488, 34.630165, 23.680553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.712044, 34.710682, 23.237997>,  <41.812195, 34.246231, 23.685705>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.712044, 34.710682, 23.237997> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.110527, 34.698296, 23.270538>,  <42.349617, 34.690865, 23.290064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.110527, 34.698296, 23.270538>,  <41.712044, 34.710682, 23.237997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.110527, 34.698296, 23.270538> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084238, 0.107399, -0.990641,
		0.021934, 0.993734, 0.109600,
		0.996204, -0.030961, 0.081355,
		42.409389, 34.689007, 23.294945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.961349, 35.310135, 22.865076>,  <41.712044, 34.710682, 23.237997>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.961349, 35.310135, 22.865076> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.291145, 35.085800, 22.895206>,  <42.489025, 34.951199, 22.913284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.291145, 35.085800, 22.895206>,  <41.961349, 35.310135, 22.865076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.291145, 35.085800, 22.895206> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213038, 0.184320, -0.959500,
		0.524237, 0.807150, 0.271450,
		0.824494, -0.560835, 0.075326,
		42.538494, 34.917549, 22.917805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.553581, 35.769684, 22.761578>,  <41.961349, 35.310135, 22.865076>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.553581, 35.769684, 22.761578> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.689705, 35.404480, 22.671600>,  <42.771378, 35.185356, 22.617615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.689705, 35.404480, 22.671600>,  <42.553581, 35.769684, 22.761578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.689705, 35.404480, 22.671600> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228106, 0.312231, -0.922215,
		0.912228, 0.262525, 0.314518,
		0.340307, -0.913013, -0.224942,
		42.791798, 35.130577, 22.604118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.262779, 35.845898, 22.454000>,  <42.553581, 35.769684, 22.761578>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.262779, 35.845898, 22.454000> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.102100, 35.506130, 22.317104>,  <43.005692, 35.302269, 22.234966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.102100, 35.506130, 22.317104>,  <43.262779, 35.845898, 22.454000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.102100, 35.506130, 22.317104> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109002, 0.326710, -0.938818,
		0.909263, -0.414424, -0.038649,
		-0.401695, -0.849420, -0.342238,
		42.981590, 35.251305, 22.214434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.686756, 35.633476, 21.934341>,  <43.262779, 35.845898, 22.454000>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.686756, 35.633476, 21.934341> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.366478, 35.403076, 21.868477>,  <43.174313, 35.264835, 21.828959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.366478, 35.403076, 21.868477>,  <43.686756, 35.633476, 21.934341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.366478, 35.403076, 21.868477> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134021, 0.095671, -0.986350,
		0.583895, -0.811829, 0.000594,
		-0.800691, -0.576004, -0.164663,
		43.126270, 35.230274, 21.819078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.832783, 35.153748, 21.415310>,  <43.686756, 35.633476, 21.934341>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.832783, 35.153748, 21.415310> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.433159, 35.170609, 21.411434>,  <43.193382, 35.180725, 21.409109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.433159, 35.170609, 21.411434>,  <43.832783, 35.153748, 21.415310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.433159, 35.170609, 21.411434> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015509, 0.139980, -0.990033,
		-0.040379, -0.989257, -0.140502,
		-0.999064, 0.042156, -0.009691,
		43.133438, 35.183254, 21.408527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.747246, 35.045135, 20.828331>,  <43.832783, 35.153748, 21.415310>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.747246, 35.045135, 20.828331> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.361744, 35.136295, 20.883804>,  <43.130444, 35.190990, 20.917088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.361744, 35.136295, 20.883804>,  <43.747246, 35.045135, 20.828331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.361744, 35.136295, 20.883804> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095366, 0.191182, -0.976911,
		-0.249152, -0.954731, -0.162519,
		-0.963757, 0.227901, 0.138682,
		43.072617, 35.204666, 20.925409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.425049, 34.712677, 20.349813>,  <43.747246, 35.045135, 20.828331>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.425049, 34.712677, 20.349813> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.169937, 35.009270, 20.433182>,  <43.016869, 35.187225, 20.483202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.169937, 35.009270, 20.433182>,  <43.425049, 34.712677, 20.349813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.169937, 35.009270, 20.433182> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061139, 0.221007, -0.973354,
		-0.767786, -0.633531, -0.095621,
		-0.637783, 0.741481, 0.208420,
		42.978603, 35.231712, 20.495708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.862862, 34.614029, 19.859554>,  <43.425049, 34.712677, 20.349813>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.862862, 34.614029, 19.859554> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.860695, 34.990479, 19.994764>,  <42.859394, 35.216347, 20.075890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.860695, 34.990479, 19.994764>,  <42.862862, 34.614029, 19.859554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.860695, 34.990479, 19.994764> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013780, 0.338068, -0.941021,
		-0.999890, -0.000443, -0.014801,
		-0.005421, 0.941122, 0.338025,
		42.859070, 35.272816, 20.096172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.284657, 34.985611, 19.528673>,  <42.862862, 34.614029, 19.859554>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.284657, 34.985611, 19.528673> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.554016, 35.254700, 19.651300>,  <42.715633, 35.416153, 19.724876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.554016, 35.254700, 19.651300>,  <42.284657, 34.985611, 19.528673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.554016, 35.254700, 19.651300> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122065, 0.510168, -0.851369,
		-0.729132, 0.535890, 0.425662,
		0.673399, 0.672719, 0.306566,
		42.756035, 35.456516, 19.743271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.587044, 34.689381, 19.420534>,  <42.284657, 34.985611, 19.528673>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.587044, 34.689381, 19.420534> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.276730, 34.806438, 19.196924>,  <41.090542, 34.876675, 19.062757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.276730, 34.806438, 19.196924>,  <41.587044, 34.689381, 19.420534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.276730, 34.806438, 19.196924> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463139, 0.337613, 0.819463,
		0.428548, 0.894636, -0.126380,
		-0.775789, 0.292648, -0.559024,
		41.043991, 34.894234, 19.029217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.445381, 35.368324, 19.371943>,  <41.587044, 34.689381, 19.420534>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.445381, 35.368324, 19.371943> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.101124, 35.170746, 19.322456>,  <40.894569, 35.052200, 19.292765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.101124, 35.170746, 19.322456>,  <41.445381, 35.368324, 19.371943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.101124, 35.170746, 19.322456> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330320, 0.356668, 0.873886,
		-0.387529, 0.792971, -0.470125,
		-0.860645, -0.493948, -0.123715,
		40.842930, 35.022560, 19.285341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.967255, 35.812992, 19.725187>,  <41.445381, 35.368324, 19.371943>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.967255, 35.812992, 19.725187> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.763096, 35.477165, 19.650763>,  <40.640602, 35.275669, 19.606108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.763096, 35.477165, 19.650763>,  <40.967255, 35.812992, 19.725187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.763096, 35.477165, 19.650763> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480894, 0.099288, 0.871139,
		-0.712907, 0.534104, -0.454420,
		-0.510397, -0.839568, -0.186064,
		40.609978, 35.225296, 19.594944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.281097, 35.970287, 19.825705>,  <40.967255, 35.812992, 19.725187>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.281097, 35.970287, 19.825705> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.297775, 35.571274, 19.848282>,  <40.307781, 35.331867, 19.861828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.297775, 35.571274, 19.848282>,  <40.281097, 35.970287, 19.825705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.297775, 35.571274, 19.848282> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418198, 0.033882, 0.907724,
		-0.907399, -0.061451, -0.415754,
		0.041694, -0.997535, 0.056443,
		40.310284, 35.272015, 19.865215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.662338, 35.741653, 20.041698>,  <40.281097, 35.970287, 19.825705>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.662338, 35.741653, 20.041698> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.923351, 35.458668, 20.150286>,  <40.079960, 35.288876, 20.215437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.923351, 35.458668, 20.150286>,  <39.662338, 35.741653, 20.041698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.923351, 35.458668, 20.150286> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366240, 0.019175, 0.930323,
		-0.663374, -0.706491, -0.246588,
		0.652537, -0.707462, 0.271466,
		40.119114, 35.246429, 20.231726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.266674, 35.192184, 20.571301>,  <39.662338, 35.741653, 20.041698>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.266674, 35.192184, 20.571301> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.646633, 35.080677, 20.627836>,  <39.874611, 35.013775, 20.661758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.646633, 35.080677, 20.627836>,  <39.266674, 35.192184, 20.571301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.646633, 35.080677, 20.627836> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202525, -0.204550, 0.957676,
		-0.238058, -0.938322, -0.250760,
		0.949901, -0.278767, 0.141339,
		39.931602, 34.997047, 20.670238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.225430, 34.667622, 21.152857>,  <39.266674, 35.192184, 20.571301>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.225430, 34.667622, 21.152857> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.622265, 34.717041, 21.143913>,  <39.860367, 34.746693, 21.138548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.622265, 34.717041, 21.143913>,  <39.225430, 34.667622, 21.152857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.622265, 34.717041, 21.143913> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051012, -0.233915, 0.970918,
		0.114726, -0.964375, -0.238366,
		0.992087, 0.123549, -0.022358,
		39.919891, 34.754105, 21.137205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.524216, 34.050064, 21.589336>,  <39.225430, 34.667622, 21.152857>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.524216, 34.050064, 21.589336> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.785339, 34.352333, 21.568153>,  <39.942013, 34.533695, 21.555443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.785339, 34.352333, 21.568153>,  <39.524216, 34.050064, 21.589336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.785339, 34.352333, 21.568153> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070466, 0.009032, 0.997473,
		0.754238, -0.654892, -0.047353,
		0.652809, 0.755669, -0.052960,
		39.981182, 34.579033, 21.552265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.158558, 33.820320, 21.929605>,  <39.524216, 34.050064, 21.589336>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.158558, 33.820320, 21.929605> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.153065, 34.219692, 21.951309>,  <40.149769, 34.459316, 21.964333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.153065, 34.219692, 21.951309>,  <40.158558, 33.820320, 21.929605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.153065, 34.219692, 21.951309> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090970, -0.052793, 0.994453,
		0.995759, 0.018595, -0.090102,
		-0.013735, 0.998432, 0.054260,
		40.148945, 34.519222, 21.967587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.749680, 33.994221, 22.351578>,  <40.158558, 33.820320, 21.929605>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.749680, 33.994221, 22.351578> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.549747, 34.340668, 22.352730>,  <40.429787, 34.548534, 22.353420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.549747, 34.340668, 22.352730>,  <40.749680, 33.994221, 22.351578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.549747, 34.340668, 22.352730> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059809, 0.031200, 0.997722,
		0.864055, 0.498865, -0.067397,
		-0.499832, 0.866118, 0.002878,
		40.399799, 34.600502, 22.353594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.153847, 34.558525, 22.730419>,  <40.749680, 33.994221, 22.351578>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.153847, 34.558525, 22.730419> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.760670, 34.631058, 22.742743>,  <40.524765, 34.674580, 22.750137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.760670, 34.631058, 22.742743>,  <41.153847, 34.558525, 22.730419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.760670, 34.631058, 22.742743> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033153, 0.009910, 0.999401,
		0.180922, 0.983371, -0.015753,
		-0.982939, 0.181336, 0.030808,
		40.465790, 34.685459, 22.751986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.032616, 35.157387, 23.216541>,  <41.153847, 34.558525, 22.730419>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.032616, 35.157387, 23.216541> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.680599, 34.969387, 23.189333>,  <40.469391, 34.856586, 23.173008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.680599, 34.969387, 23.189333>,  <41.032616, 35.157387, 23.216541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.680599, 34.969387, 23.189333> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053638, -0.043944, 0.997593,
		-0.471860, 0.881571, 0.013462,
		-0.880040, -0.470002, -0.068021,
		40.416588, 34.828388, 23.168926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.610718, 35.488705, 23.696602>,  <41.032616, 35.157387, 23.216541>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.610718, 35.488705, 23.696602> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.474026, 35.116348, 23.644979>,  <40.392010, 34.892933, 23.614006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.474026, 35.116348, 23.644979>,  <40.610718, 35.488705, 23.696602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.474026, 35.116348, 23.644979> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066547, -0.113011, 0.991363,
		-0.937438, 0.347369, -0.023329,
		-0.341733, -0.930894, -0.129057,
		40.371506, 34.837082, 23.606262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.004272, 35.466358, 24.102213>,  <40.610718, 35.488705, 23.696602>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.004272, 35.466358, 24.102213> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.107082, 35.085197, 24.037806>,  <40.168766, 34.856503, 23.999161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.107082, 35.085197, 24.037806>,  <40.004272, 35.466358, 24.102213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.107082, 35.085197, 24.037806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124220, -0.197810, 0.972338,
		-0.958389, -0.229909, -0.169210,
		0.257021, -0.952897, -0.161019,
		40.184189, 34.799328, 23.989500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.598927, 35.037758, 24.650642>,  <40.004272, 35.466358, 24.102213>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.598927, 35.037758, 24.650642> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.866966, 34.775105, 24.512190>,  <40.027790, 34.617512, 24.429119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.866966, 34.775105, 24.512190>,  <39.598927, 35.037758, 24.650642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.866966, 34.775105, 24.512190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011997, -0.456671, 0.889555,
		-0.742176, -0.600241, -0.298137,
		0.670097, -0.656630, -0.346131,
		40.067997, 34.578117, 24.408350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.353474, 34.447384, 24.865314>,  <39.598927, 35.037758, 24.650642>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.353474, 34.447384, 24.865314> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.736996, 34.375694, 24.777157>,  <39.967110, 34.332680, 24.724262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.736996, 34.375694, 24.777157>,  <39.353474, 34.447384, 24.865314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.736996, 34.375694, 24.777157> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066302, -0.613236, 0.787112,
		-0.276220, -0.769299, -0.576091,
		0.958805, -0.179220, -0.220394,
		40.024635, 34.321930, 24.711039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.414314, 33.693680, 24.744089>,  <39.353474, 34.447384, 24.865314>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.414314, 33.693680, 24.744089> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.772007, 33.840244, 24.846918>,  <39.986622, 33.928185, 24.908615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.772007, 33.840244, 24.846918>,  <39.414314, 33.693680, 24.744089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.772007, 33.840244, 24.846918> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021211, -0.539001, 0.842038,
		0.447094, -0.758433, -0.474222,
		0.894235, 0.366411, 0.257071,
		40.040279, 33.950169, 24.924040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.697708, 33.212101, 25.065145>,  <39.414314, 33.693680, 24.744089>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.697708, 33.212101, 25.065145> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.906597, 33.521336, 25.209154>,  <40.031933, 33.706879, 25.295559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.906597, 33.521336, 25.209154>,  <39.697708, 33.212101, 25.065145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.906597, 33.521336, 25.209154> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111768, -0.480562, 0.869809,
		0.845452, -0.413998, -0.337369,
		0.522226, 0.773089, 0.360020,
		40.063263, 33.753262, 25.317160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.140869, 32.843830, 25.451839>,  <39.697708, 33.212101, 25.065145>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.140869, 32.843830, 25.451839> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.158569, 33.217972, 25.592215>,  <40.169189, 33.442455, 25.676439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.158569, 33.217972, 25.592215>,  <40.140869, 32.843830, 25.451839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.158569, 33.217972, 25.592215> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134396, -0.342516, 0.929850,
		0.989939, -0.088312, 0.110551,
		0.044251, 0.935352, 0.350939,
		40.171844, 33.498577, 25.697496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.636353, 32.841175, 26.051098>,  <40.140869, 32.843830, 25.451839>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.636353, 32.841175, 26.051098> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.423378, 33.174023, 26.113174>,  <40.295593, 33.373730, 26.150421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.423378, 33.174023, 26.113174>,  <40.636353, 32.841175, 26.051098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.423378, 33.174023, 26.113174> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086668, -0.128785, 0.987878,
		0.842018, 0.539437, -0.003547,
		-0.532441, 0.832119, 0.155191,
		40.263645, 33.423660, 26.159731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.901142, 33.170509, 26.660961>,  <40.636353, 32.841175, 26.051098>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.901142, 33.170509, 26.660961> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.525288, 33.303707, 26.629469>,  <40.299774, 33.383625, 26.610575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.525288, 33.303707, 26.629469>,  <40.901142, 33.170509, 26.660961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.525288, 33.303707, 26.629469> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123909, -0.116666, 0.985411,
		0.318956, 0.935682, 0.150885,
		-0.939635, 0.332999, -0.078728,
		40.243397, 33.403606, 26.605850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.518024, 33.104225, 31.127808> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.210617, 33.358959, 31.152504>,  <43.026173, 33.511799, 31.167322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.210617, 33.358959, 31.152504>,  <43.518024, 33.104225, 31.127808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.210617, 33.358959, 31.152504> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077804, -0.002759, 0.996965,
		0.635076, 0.770993, -0.047429,
		-0.768522, 0.636838, 0.061739,
		42.980061, 33.550011, 31.171026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.794975, 33.670212, 31.550232>,  <43.518024, 33.104225, 31.127808>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.794975, 33.670212, 31.550232> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.396648, 33.689465, 31.581285>,  <43.157650, 33.701015, 31.599916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.396648, 33.689465, 31.581285>,  <43.794975, 33.670212, 31.550232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.396648, 33.689465, 31.581285> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081266, 0.078812, 0.993572,
		0.041702, 0.995727, -0.082394,
		-0.995820, 0.048130, 0.077632,
		43.097904, 33.703903, 31.604574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.554047, 34.185875, 32.041405>,  <43.794975, 33.670212, 31.550232>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.554047, 34.185875, 32.041405> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.245155, 33.932358, 32.023670>,  <43.059818, 33.780247, 32.013031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.245155, 33.932358, 32.023670>,  <43.554047, 34.185875, 32.041405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.245155, 33.932358, 32.023670> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091915, 0.042395, 0.994864,
		-0.628657, 0.772341, -0.090993,
		-0.772232, -0.633791, -0.044338,
		43.013485, 33.742222, 32.010368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.006863, 34.570576, 32.521469>,  <43.554047, 34.185875, 32.041405>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.006863, 34.570576, 32.521469> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.906231, 34.185421, 32.482346>,  <42.845852, 33.954330, 32.458870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.906231, 34.185421, 32.482346>,  <43.006863, 34.570576, 32.521469>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.906231, 34.185421, 32.482346> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207611, -0.045021, 0.977175,
		-0.945308, 0.266140, -0.188579,
		-0.251576, -0.962882, -0.097813,
		42.830757, 33.896557, 32.453003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.402081, 34.513935, 32.835648>,  <43.006863, 34.570576, 32.521469>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.402081, 34.513935, 32.835648> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.516880, 34.131340, 32.814625>,  <42.585758, 33.901783, 32.802010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.516880, 34.131340, 32.814625>,  <42.402081, 34.513935, 32.835648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.516880, 34.131340, 32.814625> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425699, -0.176496, 0.887485,
		-0.858146, -0.232330, -0.457830,
		0.286995, -0.956489, -0.052556,
		42.602978, 33.844395, 32.798859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.897060, 34.043530, 33.134167>,  <42.402081, 34.513935, 32.835648>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.897060, 34.043530, 33.134167> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.170586, 33.751804, 33.125248>,  <42.334702, 33.576771, 33.119896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.170586, 33.751804, 33.125248>,  <41.897060, 34.043530, 33.134167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.170586, 33.751804, 33.125248> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359708, -0.363542, 0.859330,
		-0.634827, -0.579602, -0.510936,
		0.683816, -0.729313, -0.022299,
		42.375729, 33.533009, 33.118557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.604771, 33.284809, 33.211983>,  <41.897060, 34.043530, 33.134167>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.604771, 33.284809, 33.211983> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.985874, 33.309940, 33.330845>,  <42.214535, 33.325020, 33.402164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.985874, 33.309940, 33.330845>,  <41.604771, 33.284809, 33.211983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.985874, 33.309940, 33.330845> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282237, -0.178337, 0.942623,
		0.112218, -0.981962, -0.152179,
		0.952759, 0.062829, 0.297159,
		42.271702, 33.328789, 33.419994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.769947, 32.821293, 33.665821>,  <41.604771, 33.284809, 33.211983>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.769947, 32.821293, 33.665821> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.049046, 33.100052, 33.732132>,  <42.216503, 33.267307, 33.771919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.049046, 33.100052, 33.732132>,  <41.769947, 32.821293, 33.665821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.049046, 33.100052, 33.732132> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149853, -0.084299, 0.985108,
		0.700498, -0.712195, 0.045614,
		0.697744, 0.696902, 0.165776,
		42.258369, 33.309124, 33.781864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.066792, 32.604908, 34.402847>,  <41.769947, 32.821293, 33.665821>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.066792, 32.604908, 34.402847> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.193138, 32.979633, 34.342701>,  <42.268948, 33.204468, 34.306614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.193138, 32.979633, 34.342701>,  <42.066792, 32.604908, 34.402847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.193138, 32.979633, 34.342701> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148528, 0.205347, 0.967353,
		0.937106, -0.283221, 0.204005,
		0.315867, 0.936813, -0.150366,
		42.287899, 33.260677, 34.297592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.472733, 32.721546, 34.940735>,  <42.066792, 32.604908, 34.402847>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.472733, 32.721546, 34.940735> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.379047, 33.087463, 34.809105>,  <42.322834, 33.307014, 34.730129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.379047, 33.087463, 34.809105>,  <42.472733, 32.721546, 34.940735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.379047, 33.087463, 34.809105> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023936, 0.332958, 0.942638,
		0.971890, 0.228659, -0.056088,
		-0.234218, 0.914797, -0.329071,
		42.308781, 33.361904, 34.710384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.993702, 33.190216, 35.177174>,  <42.472733, 32.721546, 34.940735>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.993702, 33.190216, 35.177174> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.676960, 33.419662, 35.093334>,  <42.486916, 33.557331, 35.043030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.676960, 33.419662, 35.093334>,  <42.993702, 33.190216, 35.177174>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.676960, 33.419662, 35.093334> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113973, 0.198371, 0.973478,
		0.599983, 0.794739, -0.091703,
		-0.791852, 0.573619, -0.209598,
		42.439404, 33.591747, 35.030457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.121094, 33.763851, 35.489277>,  <42.993702, 33.190216, 35.177174>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.121094, 33.763851, 35.489277> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.723938, 33.744545, 35.445766>,  <42.485645, 33.732960, 35.419659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.723938, 33.744545, 35.445766>,  <43.121094, 33.763851, 35.489277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.723938, 33.744545, 35.445766> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109585, 0.014369, 0.993873,
		-0.046409, 0.998731, -0.019556,
		-0.992893, -0.048268, -0.108779,
		42.426071, 33.730064, 35.413132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.726261, 34.406670, 35.801491>,  <43.121094, 33.763851, 35.489277>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.726261, 34.406670, 35.801491> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.517105, 34.065903, 35.813004>,  <42.391613, 33.861443, 35.819912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.517105, 34.065903, 35.813004>,  <42.726261, 34.406670, 35.801491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.517105, 34.065903, 35.813004> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327210, 0.231784, 0.916084,
		-0.787096, 0.469594, -0.399952,
		-0.522890, -0.851914, 0.028780,
		42.360237, 33.810329, 35.821636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.861362, 34.988052, 35.206577>,  <42.726261, 34.406670, 35.801491>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.861362, 34.988052, 35.206577> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.634209, 35.115051, 35.510342>,  <42.497917, 35.191250, 35.692600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.634209, 35.115051, 35.510342>,  <42.861362, 34.988052, 35.206577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.634209, 35.115051, 35.510342> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279971, 0.793095, -0.540941,
		-0.774030, -0.519805, -0.361498,
		-0.567886, 0.317495, 0.759409,
		42.463844, 35.210300, 35.738163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.115009, 35.045315, 35.118717>,  <42.861362, 34.988052, 35.206577>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.115009, 35.045315, 35.118717> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.230736, 35.314808, 35.390709>,  <42.300171, 35.476505, 35.553905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.230736, 35.314808, 35.390709>,  <42.115009, 35.045315, 35.118717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.230736, 35.314808, 35.390709> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317364, 0.737697, -0.595889,
		-0.903091, -0.043399, 0.427250,
		0.289320, 0.673736, 0.679981,
		42.317532, 35.516930, 35.594704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.583775, 35.479355, 35.297813>,  <42.115009, 35.045315, 35.118717>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.583775, 35.479355, 35.297813> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.916580, 35.691471, 35.362976>,  <42.116264, 35.818741, 35.402073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.916580, 35.691471, 35.362976>,  <41.583775, 35.479355, 35.297813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.916580, 35.691471, 35.362976> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319449, 0.698067, -0.640824,
		-0.453542, 0.481137, 0.750205,
		0.832017, 0.530293, 0.162904,
		42.166183, 35.850559, 35.411846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.384621, 36.185177, 35.541847>,  <41.583775, 35.479355, 35.297813>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.384621, 36.185177, 35.541847> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.742767, 36.226692, 35.368618>,  <41.957653, 36.251602, 35.264683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.742767, 36.226692, 35.368618>,  <41.384621, 36.185177, 35.541847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.742767, 36.226692, 35.368618> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364596, 0.729254, -0.579016,
		0.255720, 0.676325, 0.690790,
		0.895364, 0.103793, -0.433070,
		42.011375, 36.257832, 35.238697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.470642, 36.908405, 35.419476>,  <41.384621, 36.185177, 35.541847>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.470642, 36.908405, 35.419476> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.752628, 36.733131, 35.196396>,  <41.921818, 36.627968, 35.062550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.752628, 36.733131, 35.196396>,  <41.470642, 36.908405, 35.419476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.752628, 36.733131, 35.196396> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258979, 0.572993, -0.777566,
		0.660272, 0.692586, 0.290458,
		0.704961, -0.438182, -0.557696,
		41.964115, 36.601677, 35.029087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.737831, 37.477680, 35.102169>,  <41.470642, 36.908405, 35.419476>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.737831, 37.477680, 35.102169> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.874306, 37.175976, 34.877785>,  <41.956192, 36.994953, 34.743153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.874306, 37.175976, 34.877785>,  <41.737831, 37.477680, 35.102169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.874306, 37.175976, 34.877785> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166760, 0.538735, -0.825806,
		0.925085, 0.375301, 0.058029,
		0.341188, -0.754264, -0.560961,
		41.976662, 36.949696, 34.709496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.178204, 37.763443, 34.618900>,  <41.737831, 37.477680, 35.102169>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.178204, 37.763443, 34.618900> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.063873, 37.416519, 34.455894>,  <41.995274, 37.208363, 34.358089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.063873, 37.416519, 34.455894>,  <42.178204, 37.763443, 34.618900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.063873, 37.416519, 34.455894> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252701, 0.478425, -0.840982,
		0.924363, -0.137393, -0.355917,
		-0.285825, -0.867313, -0.407519,
		41.978127, 37.156326, 34.333637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.406620, 37.828625, 34.010738>,  <42.178204, 37.763443, 34.618900>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.406620, 37.828625, 34.010738> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.139141, 37.531288, 34.003910>,  <41.978653, 37.352886, 33.999813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.139141, 37.531288, 34.003910>,  <42.406620, 37.828625, 34.010738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.139141, 37.531288, 34.003910> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442465, 0.416277, -0.794316,
		0.597553, -0.523603, -0.607265,
		-0.668697, -0.743339, -0.017072,
		41.938534, 37.308285, 33.998787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.327541, 37.768711, 33.380100>,  <42.406620, 37.828625, 34.010738>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.327541, 37.768711, 33.380100> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.009888, 37.556976, 33.499531>,  <41.819294, 37.429935, 33.571190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.009888, 37.556976, 33.499531>,  <42.327541, 37.768711, 33.380100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.009888, 37.556976, 33.499531> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518917, 0.334860, -0.786508,
		0.316338, -0.779537, -0.540604,
		-0.794138, -0.529330, 0.298586,
		41.771648, 37.398174, 33.589104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.168961, 37.325066, 32.892864>,  <42.327541, 37.768711, 33.380100>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.168961, 37.325066, 32.892864> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.834999, 37.415279, 33.093689>,  <41.634621, 37.469410, 33.214184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.834999, 37.415279, 33.093689>,  <42.168961, 37.325066, 32.892864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.834999, 37.415279, 33.093689> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468885, 0.186248, -0.863400,
		-0.288238, -0.956266, -0.049748,
		-0.834905, 0.225538, 0.502062,
		41.584526, 37.482941, 33.244308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.700577, 36.910748, 32.534081>,  <42.168961, 37.325066, 32.892864>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.700577, 36.910748, 32.534081> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.480549, 37.187489, 32.721169>,  <41.348534, 37.353535, 32.833420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.480549, 37.187489, 32.721169>,  <41.700577, 36.910748, 32.534081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.480549, 37.187489, 32.721169> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668058, -0.028473, -0.743565,
		-0.501123, -0.721473, 0.477862,
		-0.550068, 0.691857, 0.467717,
		41.315529, 37.395046, 32.861485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.091305, 36.818298, 32.308960>,  <41.700577, 36.910748, 32.534081>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.091305, 36.818298, 32.308960> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.031452, 37.186813, 32.452538>,  <40.995541, 37.407921, 32.538685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.031452, 37.186813, 32.452538>,  <41.091305, 36.818298, 32.308960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.031452, 37.186813, 32.452538> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595110, 0.205989, -0.776797,
		-0.789591, -0.329843, 0.517445,
		-0.149632, 0.921288, 0.358940,
		40.986561, 37.463200, 32.560219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.418907, 36.904774, 32.318336>,  <41.091305, 36.818298, 32.308960>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.418907, 36.904774, 32.318336> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.582115, 37.268826, 32.289539>,  <40.680038, 37.487259, 32.272263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.582115, 37.268826, 32.289539>,  <40.418907, 36.904774, 32.318336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.582115, 37.268826, 32.289539> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498161, 0.155860, -0.852962,
		-0.765087, 0.383886, 0.516985,
		0.408018, 0.910131, -0.071991,
		40.704521, 37.541866, 32.267941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.900951, 37.287525, 31.856146>,  <40.418907, 36.904774, 32.318336>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.900951, 37.287525, 31.856146> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.213341, 37.537254, 31.849209>,  <40.400776, 37.687092, 31.845047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.213341, 37.537254, 31.849209>,  <39.900951, 37.287525, 31.856146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.213341, 37.537254, 31.849209> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113757, 0.114887, -0.986844,
		-0.614112, 0.772675, 0.160745,
		0.780977, 0.624319, -0.017344,
		40.447636, 37.724548, 31.844006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.728313, 37.877441, 31.428118>,  <39.900951, 37.287525, 31.856146>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.728313, 37.877441, 31.428118> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.127533, 37.901218, 31.435860>,  <40.367065, 37.915485, 31.440504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.127533, 37.901218, 31.435860>,  <39.728313, 37.877441, 31.428118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.127533, 37.901218, 31.435860> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005613, 0.223164, -0.974765,
		-0.062262, 0.972967, 0.222394,
		0.998044, 0.059443, 0.019356,
		40.426945, 37.919052, 31.441666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.813248, 38.599854, 31.357809>,  <39.728313, 37.877441, 31.428118>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.813248, 38.599854, 31.357809> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.446507, 38.726379, 31.260378>,  <39.226463, 38.802296, 31.201920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.446507, 38.726379, 31.260378>,  <39.813248, 38.599854, 31.357809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.446507, 38.726379, 31.260378> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354235, -0.363165, 0.861759,
		0.184127, 0.876389, 0.445018,
		-0.916851, 0.316314, -0.243579,
		39.171452, 38.821274, 31.187304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.640556, 38.807453, 32.062286>,  <39.813248, 38.599854, 31.357809>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.640556, 38.807453, 32.062286> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.298775, 38.822365, 31.855009>,  <39.093704, 38.831310, 31.730644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.298775, 38.822365, 31.855009>,  <39.640556, 38.807453, 32.062286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.298775, 38.822365, 31.855009> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515553, -0.184005, 0.836868,
		-0.064153, 0.982218, 0.176443,
		-0.854453, 0.037278, -0.518189,
		39.042439, 38.833549, 31.699553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.106682, 39.217587, 32.354488>,  <39.640556, 38.807453, 32.062286>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.106682, 39.217587, 32.354488> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.874348, 38.979061, 32.132847>,  <38.734947, 38.835945, 31.999861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.874348, 38.979061, 32.132847>,  <39.106682, 39.217587, 32.354488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.874348, 38.979061, 32.132847> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398472, -0.385286, 0.832331,
		-0.709823, 0.704244, -0.013828,
		-0.580836, -0.596318, -0.554107,
		38.700096, 38.800167, 31.966616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.409691, 39.288536, 32.587154>,  <39.106682, 39.217587, 32.354488>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.409691, 39.288536, 32.587154> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.455063, 38.930771, 32.414112>,  <38.482285, 38.716110, 32.310287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.455063, 38.930771, 32.414112>,  <38.409691, 39.288536, 32.587154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.455063, 38.930771, 32.414112> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533236, -0.422200, 0.733080,
		-0.838327, 0.147529, -0.524826,
		0.113431, -0.894418, -0.432609,
		38.489094, 38.662445, 32.284328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.761345, 39.002823, 32.687851>,  <38.409691, 39.288536, 32.587154>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.761345, 39.002823, 32.687851> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.982384, 38.678665, 32.609982>,  <38.115009, 38.484173, 32.563259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.982384, 38.678665, 32.609982>,  <37.761345, 39.002823, 32.687851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.982384, 38.678665, 32.609982> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557996, -0.533237, 0.635845,
		-0.619091, -0.242741, -0.746863,
		0.552600, -0.810392, -0.194673,
		38.148163, 38.435547, 32.551579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.329678, 38.548447, 32.630199>,  <37.761345, 39.002823, 32.687851>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.329678, 38.548447, 32.630199> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.647125, 38.305607, 32.646221>,  <37.837593, 38.159904, 32.655834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.647125, 38.305607, 32.646221>,  <37.329678, 38.548447, 32.630199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.647125, 38.305607, 32.646221> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506128, -0.622223, 0.597221,
		-0.337647, -0.494240, -0.801076,
		0.793618, -0.607096, 0.040057,
		37.885212, 38.123478, 32.658237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.079937, 37.872601, 32.520771>,  <37.329678, 38.548447, 32.630199>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.079937, 37.872601, 32.520771> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.418064, 37.862247, 32.734226>,  <37.620941, 37.856033, 32.862297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.418064, 37.862247, 32.734226>,  <37.079937, 37.872601, 32.520771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.418064, 37.862247, 32.734226> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373594, -0.742659, 0.555775,
		0.381923, -0.669169, -0.637454,
		0.845318, -0.025885, 0.533636,
		37.671661, 37.854481, 32.894318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.137409, 37.185253, 32.617760>,  <37.079937, 37.872601, 32.520771>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.137409, 37.185253, 32.617760> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.372829, 37.367783, 32.884708>,  <37.514080, 37.477299, 33.044876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.372829, 37.367783, 32.884708>,  <37.137409, 37.185253, 32.617760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.372829, 37.367783, 32.884708> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507175, -0.434449, 0.744330,
		0.629592, -0.776547, -0.024260,
		0.588547, 0.456320, 0.667371,
		37.549393, 37.504677, 33.084919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.293606, 36.650074, 33.085133>,  <37.137409, 37.185253, 32.617760>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.293606, 36.650074, 33.085133> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.371834, 36.988407, 33.283657>,  <37.418770, 37.191406, 33.402771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.371834, 36.988407, 33.283657>,  <37.293606, 36.650074, 33.085133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.371834, 36.988407, 33.283657> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258376, -0.443766, 0.858087,
		0.946042, -0.296047, 0.131756,
		0.195566, 0.845830, 0.496313,
		37.430504, 37.242157, 33.432552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.319637, 36.331985, 33.748257>,  <37.293606, 36.650074, 33.085133>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.319637, 36.331985, 33.748257> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.281612, 36.726078, 33.805237>,  <37.258797, 36.962532, 33.839424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.281612, 36.726078, 33.805237>,  <37.319637, 36.331985, 33.748257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.281612, 36.726078, 33.805237> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479460, -0.170719, 0.860798,
		0.872400, 0.013527, 0.488605,
		-0.095058, 0.985227, 0.142450,
		37.253094, 37.021645, 33.847973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.481369, 36.505562, 34.496765>,  <37.319637, 36.331985, 33.748257>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.481369, 36.505562, 34.496765> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.252289, 36.800274, 34.353001>,  <37.114841, 36.977100, 34.266743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.252289, 36.800274, 34.353001>,  <37.481369, 36.505562, 34.496765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.252289, 36.800274, 34.353001> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579428, -0.053676, 0.813254,
		0.579894, 0.674003, 0.457649,
		-0.572701, 0.736776, -0.359410,
		37.080479, 37.021305, 34.245178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.544487, 37.008816, 34.997429>,  <37.481369, 36.505562, 34.496765>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.544487, 37.008816, 34.997429> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.203533, 37.093304, 34.806084>,  <36.998962, 37.143997, 34.691277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.203533, 37.093304, 34.806084>,  <37.544487, 37.008816, 34.997429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.203533, 37.093304, 34.806084> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493645, -0.023222, 0.869353,
		0.172514, 0.977163, 0.124060,
		-0.852381, 0.211217, -0.478366,
		36.947819, 37.156670, 34.662575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.626431, 40.737194, 28.204910> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.343834, 40.512314, 28.032955>,  <40.174274, 40.377384, 27.929783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.343834, 40.512314, 28.032955>,  <40.626431, 40.737194, 28.204910>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.343834, 40.512314, 28.032955> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334162, -0.270459, 0.902878,
		-0.623865, 0.781525, 0.003211,
		-0.706490, -0.562201, -0.429886,
		40.131886, 40.343655, 27.903990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.082829, 40.882465, 28.657789>,  <40.626431, 40.737194, 28.204910>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.082829, 40.882465, 28.657789> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.967976, 40.546776, 28.473068>,  <39.899063, 40.345364, 28.362236>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.967976, 40.546776, 28.473068>,  <40.082829, 40.882465, 28.657789>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.967976, 40.546776, 28.473068> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376016, -0.344659, 0.860129,
		-0.881005, 0.420613, -0.216600,
		-0.287128, -0.839223, -0.461803,
		39.881836, 40.295010, 28.334528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.420605, 40.803776, 28.792816>,  <40.082829, 40.882465, 28.657789>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.420605, 40.803776, 28.792816> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.529549, 40.437874, 28.673452>,  <39.594917, 40.218334, 28.601833>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.529549, 40.437874, 28.673452>,  <39.420605, 40.803776, 28.792816>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.529549, 40.437874, 28.673452> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384886, -0.387816, 0.837533,
		-0.881863, -0.113258, -0.457701,
		0.272361, -0.914752, -0.298409,
		39.611256, 40.163448, 28.583929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.822189, 40.453526, 28.814886>,  <39.420605, 40.803776, 28.792816>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.822189, 40.453526, 28.814886> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.133801, 40.205936, 28.854855>,  <39.320766, 40.057384, 28.878836>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.133801, 40.205936, 28.854855>,  <38.822189, 40.453526, 28.814886>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.133801, 40.205936, 28.854855> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508109, -0.529887, 0.679002,
		-0.367338, -0.579734, -0.727304,
		0.779030, -0.618973, 0.099920,
		39.367508, 40.020245, 28.884830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.536636, 39.841187, 28.877245>,  <38.822189, 40.453526, 28.814886>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.536636, 39.841187, 28.877245> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.894939, 39.799770, 29.050169>,  <39.109921, 39.774921, 29.153923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.894939, 39.799770, 29.050169>,  <38.536636, 39.841187, 28.877245>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.894939, 39.799770, 29.050169> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439693, -0.349518, 0.827350,
		0.065433, -0.931191, -0.358612,
		0.895762, -0.103543, 0.432308,
		39.163670, 39.768707, 29.179861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.482792, 39.164581, 29.269737>,  <38.536636, 39.841187, 28.877245>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.482792, 39.164581, 29.269737> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.793797, 39.364933, 29.421839>,  <38.980400, 39.485142, 29.513100>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.793797, 39.364933, 29.421839>,  <38.482792, 39.164581, 29.269737>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.793797, 39.364933, 29.421839> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158184, -0.429456, 0.889126,
		0.608645, -0.751459, -0.254678,
		0.777515, 0.500876, 0.380255,
		39.027050, 39.515198, 29.535915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.015736, 38.665977, 29.426195>,  <38.482792, 39.164581, 29.269737>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.015736, 38.665977, 29.426195> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.101807, 38.990467, 29.643675>,  <39.153450, 39.185162, 29.774162>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.101807, 38.990467, 29.643675>,  <39.015736, 38.665977, 29.426195>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.101807, 38.990467, 29.643675> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165354, -0.518437, 0.838976,
		0.962474, -0.270431, 0.022584,
		0.215176, 0.811228, 0.543700,
		39.166359, 39.233837, 29.806786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.450500, 38.428406, 29.985836>,  <39.015736, 38.665977, 29.426195>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.450500, 38.428406, 29.985836> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.372620, 38.785210, 30.149008>,  <39.325890, 38.999290, 30.246912>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.372620, 38.785210, 30.149008>,  <39.450500, 38.428406, 29.985836>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.372620, 38.785210, 30.149008> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247601, -0.447119, 0.859522,
		0.949096, 0.066349, 0.307919,
		-0.194705, 0.892010, 0.407930,
		39.314209, 39.052814, 30.271387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.804314, 38.533405, 30.660067>,  <39.450500, 38.428406, 29.985836>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.804314, 38.533405, 30.660067> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.500313, 38.788055, 30.712374>,  <39.317913, 38.940845, 30.743757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.500313, 38.788055, 30.712374>,  <39.804314, 38.533405, 30.660067>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.500313, 38.788055, 30.712374> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198211, -0.418664, 0.886246,
		0.618953, 0.647634, 0.444374,
		-0.760007, 0.636624, 0.130766,
		39.272312, 38.979042, 30.751604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.389793, 38.985298, 30.867407>,  <39.804314, 38.533405, 30.660067>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.389793, 38.985298, 30.867407> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.572716, 38.635719, 30.933237>,  <40.682468, 38.425972, 30.972734>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.572716, 38.635719, 30.933237>,  <40.389793, 38.985298, 30.867407>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.572716, 38.635719, 30.933237> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389115, 0.030233, -0.920693,
		0.799663, 0.485076, 0.353892,
		0.457305, -0.873949, 0.164575,
		40.709908, 38.373535, 30.982609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.913048, 39.067478, 30.445639>,  <40.389793, 38.985298, 30.867407>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.913048, 39.067478, 30.445639> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.925911, 38.674438, 30.518814>,  <40.933628, 38.438614, 30.562719>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.925911, 38.674438, 30.518814>,  <40.913048, 39.067478, 30.445639>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.925911, 38.674438, 30.518814> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526507, -0.138920, -0.838744,
		0.849562, 0.123293, 0.512877,
		0.032162, -0.982598, 0.182936,
		40.935558, 38.379658, 30.573694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.577705, 38.876316, 30.216446>,  <40.913048, 39.067478, 30.445639>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.577705, 38.876316, 30.216446> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.340088, 38.555786, 30.188181>,  <41.197517, 38.363468, 30.171221>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.340088, 38.555786, 30.188181>,  <41.577705, 38.876316, 30.216446>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.340088, 38.555786, 30.188181> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293569, -0.134167, -0.946476,
		0.748952, -0.582992, 0.314945,
		-0.594043, -0.801323, -0.070664,
		41.161877, 38.315388, 30.166983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.971142, 38.285355, 29.882133>,  <41.577705, 38.876316, 30.216446>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.971142, 38.285355, 29.882133> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.600330, 38.141609, 29.839272>,  <41.377846, 38.055363, 29.813555>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.600330, 38.141609, 29.839272>,  <41.971142, 38.285355, 29.882133>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.600330, 38.141609, 29.839272> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202090, -0.238046, -0.949997,
		0.315889, -0.902325, 0.293299,
		-0.927024, -0.359366, -0.107154,
		41.322224, 38.033798, 29.807125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.138306, 37.587067, 29.616701>,  <41.971142, 38.285355, 29.882133>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.138306, 37.587067, 29.616701> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.757092, 37.681095, 29.540314>,  <41.528362, 37.737511, 29.494482>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.757092, 37.681095, 29.540314>,  <42.138306, 37.587067, 29.616701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.757092, 37.681095, 29.540314> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129942, -0.252192, -0.958913,
		-0.273576, -0.938690, 0.209802,
		-0.953032, 0.235074, -0.190969,
		41.471180, 37.751617, 29.483023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.920818, 36.967812, 29.295544>,  <42.138306, 37.587067, 29.616701>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.920818, 36.967812, 29.295544> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.675621, 37.266232, 29.191509>,  <41.528503, 37.445286, 29.129087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.675621, 37.266232, 29.191509>,  <41.920818, 36.967812, 29.295544>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.675621, 37.266232, 29.191509> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169390, -0.197438, -0.965570,
		-0.771719, -0.635942, -0.005346,
		-0.612991, 0.746054, -0.260088,
		41.491722, 37.490047, 29.113483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.602200, 36.733749, 28.658783>,  <41.920818, 36.967812, 29.295544>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.602200, 36.733749, 28.658783> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.525940, 37.126339, 28.651089>,  <41.480186, 37.361893, 28.646473>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.525940, 37.126339, 28.651089>,  <41.602200, 36.733749, 28.658783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.525940, 37.126339, 28.651089> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152756, 0.010305, -0.988210,
		-0.969701, -0.191338, -0.151890,
		-0.190647, 0.981470, -0.019235,
		41.468746, 37.420780, 28.645319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.183949, 36.855011, 28.105989>,  <41.602200, 36.733749, 28.658783>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.183949, 36.855011, 28.105989> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.344311, 37.214916, 28.174919>,  <41.440529, 37.430859, 28.216276>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.344311, 37.214916, 28.174919>,  <41.183949, 36.855011, 28.105989>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.344311, 37.214916, 28.174919> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232511, 0.082010, -0.969130,
		-0.886124, 0.428595, -0.176328,
		0.400904, 0.899767, 0.172324,
		41.464581, 37.484848, 28.226616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.828659, 37.413647, 27.715374>,  <41.183949, 36.855011, 28.105989>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.828659, 37.413647, 27.715374> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.180904, 37.585793, 27.794676>,  <41.392254, 37.689079, 27.842257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.180904, 37.585793, 27.794676>,  <40.828659, 37.413647, 27.715374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.180904, 37.585793, 27.794676> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031643, 0.364060, -0.930838,
		-0.472773, 0.825984, 0.306979,
		0.880616, 0.430361, 0.198254,
		41.445087, 37.714901, 27.854153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.747887, 38.126034, 27.454584>,  <40.828659, 37.413647, 27.715374>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.747887, 38.126034, 27.454584> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.141029, 38.062553, 27.492115>,  <41.376915, 38.024467, 27.514633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.141029, 38.062553, 27.492115>,  <40.747887, 38.126034, 27.454584>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.141029, 38.062553, 27.492115> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142795, 0.333379, -0.931916,
		0.116614, 0.929340, 0.350326,
		0.982858, -0.158699, 0.093829,
		41.435886, 38.014942, 27.520264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.084942, 38.638428, 27.032866>,  <40.747887, 38.126034, 27.454584>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.084942, 38.638428, 27.032866> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.368336, 38.364208, 27.099878>,  <41.538372, 38.199677, 27.140085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.368336, 38.364208, 27.099878>,  <41.084942, 38.638428, 27.032866>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.368336, 38.364208, 27.099878> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205934, -0.026227, -0.978215,
		0.675010, 0.727551, 0.122597,
		0.708486, -0.685552, 0.167531,
		41.580883, 38.158543, 27.150137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.609192, 38.791924, 26.549940>,  <41.084942, 38.638428, 27.032866>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.609192, 38.791924, 26.549940> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.714455, 38.425022, 26.669538>,  <41.777615, 38.204884, 26.741297>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.714455, 38.425022, 26.669538>,  <41.609192, 38.791924, 26.549940>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.714455, 38.425022, 26.669538> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488787, -0.140436, -0.861026,
		0.831766, 0.372732, 0.411383,
		0.263159, -0.917251, 0.298997,
		41.793404, 38.149845, 26.759237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.387371, 38.628895, 26.580269>,  <41.609192, 38.791924, 26.549940>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.387371, 38.628895, 26.580269> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.193718, 38.285713, 26.511534>,  <42.077526, 38.079803, 26.470293>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.193718, 38.285713, 26.511534>,  <42.387371, 38.628895, 26.580269>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.193718, 38.285713, 26.511534> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537684, -0.136776, -0.831979,
		0.690295, -0.495186, 0.527526,
		-0.484137, -0.857953, -0.171838,
		42.048477, 38.028328, 26.459982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.889877, 38.162933, 26.333439>,  <42.387371, 38.628895, 26.580269>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.889877, 38.162933, 26.333439> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.533680, 38.019577, 26.221312>,  <42.319962, 37.933563, 26.154036>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.533680, 38.019577, 26.221312>,  <42.889877, 38.162933, 26.333439>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.533680, 38.019577, 26.221312> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388832, -0.279479, -0.877896,
		0.236287, -0.890757, 0.388228,
		-0.890493, -0.358391, -0.280317,
		42.266533, 37.912060, 26.137217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.979546, 35.348938, 25.369270> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.289967, 35.585201, 25.457691>,  <37.476219, 35.726959, 25.510744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.289967, 35.585201, 25.457691>,  <36.979546, 35.348938, 25.369270>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.289967, 35.585201, 25.457691> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160974, -0.153381, 0.974967,
		0.609781, -0.792208, -0.023951,
		0.776051, 0.590661, 0.221054,
		37.522781, 35.762398, 25.524008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.355896, 34.908710, 25.860992>,  <36.979546, 35.348938, 25.369270>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.355896, 34.908710, 25.860992> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.453384, 35.295670, 25.888521>,  <37.511875, 35.527847, 25.905039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.453384, 35.295670, 25.888521>,  <37.355896, 34.908710, 25.860992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.453384, 35.295670, 25.888521> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189572, -0.022072, 0.981619,
		0.951138, -0.252285, 0.178013,
		0.243718, 0.967401, 0.068820,
		37.526501, 35.585892, 25.909166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.830658, 34.920605, 26.420492>,  <37.355896, 34.908710, 25.860992>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.830658, 34.920605, 26.420492> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.722206, 35.305321, 26.405312>,  <37.657135, 35.536152, 26.396204>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.722206, 35.305321, 26.405312>,  <37.830658, 34.920605, 26.420492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.722206, 35.305321, 26.405312> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190554, -0.014988, 0.981562,
		0.943491, 0.273367, 0.187338,
		-0.271134, 0.961793, -0.037950,
		37.640865, 35.593857, 26.393927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.059021, 35.035229, 26.988564>,  <37.830658, 34.920605, 26.420492>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.059021, 35.035229, 26.988564> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.823299, 35.349129, 26.911732>,  <37.681866, 35.537468, 26.865633>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.823299, 35.349129, 26.911732>,  <38.059021, 35.035229, 26.988564>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.823299, 35.349129, 26.911732> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307272, 0.002181, 0.951619,
		0.747199, 0.619813, 0.239845,
		-0.589303, 0.784747, -0.192081,
		37.646507, 35.584553, 26.854107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.253159, 35.534729, 27.470472>,  <38.059021, 35.035229, 26.988564>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.253159, 35.534729, 27.470472> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.883766, 35.615894, 27.340237>,  <37.662132, 35.664593, 27.262094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.883766, 35.615894, 27.340237>,  <38.253159, 35.534729, 27.470472>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.883766, 35.615894, 27.340237> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324504, 0.039563, 0.945057,
		0.204644, 0.978398, 0.029309,
		-0.923482, 0.202911, -0.325590,
		37.606720, 35.676769, 27.242559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.161850, 36.115978, 27.935095>,  <38.253159, 35.534729, 27.470472>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.161850, 36.115978, 27.935095> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.821323, 35.956917, 27.798199>,  <37.617008, 35.861481, 27.716061>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.821323, 35.956917, 27.798199>,  <38.161850, 36.115978, 27.935095>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.821323, 35.956917, 27.798199> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357043, -0.038851, 0.933280,
		-0.384419, 0.916712, -0.108905,
		-0.851318, -0.397654, -0.342240,
		37.565929, 35.837620, 27.695526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.554947, 36.543755, 28.199141>,  <38.161850, 36.115978, 27.935095>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.554947, 36.543755, 28.199141> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.436569, 36.179604, 28.083464>,  <37.365543, 35.961113, 28.014057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.436569, 36.179604, 28.083464>,  <37.554947, 36.543755, 28.199141>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.436569, 36.179604, 28.083464> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276252, -0.208243, 0.938254,
		-0.914387, 0.357557, -0.189866,
		-0.295941, -0.910378, -0.289190,
		37.347786, 35.906490, 27.996706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.973400, 36.469555, 28.555611>,  <37.554947, 36.543755, 28.199141>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.973400, 36.469555, 28.555611> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.050289, 36.093567, 28.442825>,  <37.096424, 35.867973, 28.375154>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.050289, 36.093567, 28.442825>,  <36.973400, 36.469555, 28.555611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.050289, 36.093567, 28.442825> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312606, -0.331003, 0.890345,
		-0.930229, -0.083004, -0.357468,
		0.192226, -0.939972, -0.281961,
		37.107956, 35.811577, 28.358236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.525620, 36.126751, 28.944275>,  <36.973400, 36.469555, 28.555611>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.525620, 36.126751, 28.944275> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.780697, 35.833420, 28.849976>,  <36.933746, 35.657421, 28.793396>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.780697, 35.833420, 28.849976>,  <36.525620, 36.126751, 28.944275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.780697, 35.833420, 28.849976> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144446, -0.414469, 0.898527,
		-0.756622, -0.538936, -0.370231,
		0.637698, -0.733324, -0.235749,
		36.972008, 35.613422, 28.779251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.198910, 35.488605, 29.078617>,  <36.525620, 36.126751, 28.944275>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.198910, 35.488605, 29.078617> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.579609, 35.365864, 29.080420>,  <36.808029, 35.292217, 29.081501>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.579609, 35.365864, 29.080420>,  <36.198910, 35.488605, 29.078617>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.579609, 35.365864, 29.080420> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169044, -0.511945, 0.842221,
		-0.256132, -0.802342, -0.539113,
		0.951746, -0.306853, 0.004506,
		36.865131, 35.273808, 29.081772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.225883, 34.689869, 29.076611>,  <36.198910, 35.488605, 29.078617>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.225883, 34.689869, 29.076611> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.571712, 34.834293, 29.216406>,  <36.779209, 34.920948, 29.300283>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.571712, 34.834293, 29.216406>,  <36.225883, 34.689869, 29.076611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.571712, 34.834293, 29.216406> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081371, -0.585724, 0.806415,
		0.495871, -0.725645, -0.477023,
		0.864575, 0.361062, 0.349490,
		36.831085, 34.942612, 29.321253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.718739, 34.111000, 29.162800>,  <36.225883, 34.689869, 29.076611>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.718739, 34.111000, 29.162800> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.838928, 34.393993, 29.418671>,  <36.911041, 34.563789, 29.572193>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.838928, 34.393993, 29.418671>,  <36.718739, 34.111000, 29.162800>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.838928, 34.393993, 29.418671> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223410, -0.599804, 0.768324,
		0.927256, -0.373770, -0.022166,
		0.300472, 0.707482, 0.639677,
		36.929070, 34.606239, 29.610573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.257439, 33.803246, 29.602478>,  <36.718739, 34.111000, 29.162800>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.257439, 33.803246, 29.602478> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.119869, 34.130917, 29.786068>,  <37.037327, 34.327518, 29.896221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.119869, 34.130917, 29.786068>,  <37.257439, 33.803246, 29.602478>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.119869, 34.130917, 29.786068> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102389, -0.518594, 0.848868,
		0.933398, 0.244954, 0.262233,
		-0.343926, 0.819182, 0.458974,
		37.016693, 34.376671, 29.923759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.454304, 33.656239, 30.279543>,  <37.257439, 33.803246, 29.602478>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.454304, 33.656239, 30.279543> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.166615, 33.934048, 30.287123>,  <36.993999, 34.100735, 30.291670>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.166615, 33.934048, 30.287123>,  <37.454304, 33.656239, 30.279543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.166615, 33.934048, 30.287123> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316674, -0.351967, 0.880816,
		0.618415, 0.627502, 0.473079,
		-0.719223, 0.694521, 0.018948,
		36.950848, 34.142403, 30.292807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.081676, 33.972294, 30.293060>,  <37.454304, 33.656239, 30.279543>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.081676, 33.972294, 30.293060> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.437748, 33.801525, 30.356712>,  <38.651390, 33.699066, 30.394903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.437748, 33.801525, 30.356712>,  <38.081676, 33.972294, 30.293060>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.437748, 33.801525, 30.356712> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263023, 0.196340, -0.944600,
		0.372025, 0.882717, 0.287067,
		0.890178, -0.426920, 0.159132,
		38.704800, 33.673450, 30.404451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.571846, 34.432621, 29.991230>,  <38.081676, 33.972294, 30.293060>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.571846, 34.432621, 29.991230> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.782356, 34.093304, 30.014648>,  <38.908665, 33.889713, 30.028700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.782356, 34.093304, 30.014648>,  <38.571846, 34.432621, 29.991230>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.782356, 34.093304, 30.014648> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356853, 0.157844, -0.920728,
		0.771807, 0.505453, 0.385787,
		0.526280, -0.848294, 0.058547,
		38.940239, 33.838814, 30.032213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.199677, 34.568401, 29.790365>,  <38.571846, 34.432621, 29.991230>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.199677, 34.568401, 29.790365> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.193138, 34.170692, 29.748100>,  <39.189217, 33.932068, 29.722742>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.193138, 34.170692, 29.748100>,  <39.199677, 34.568401, 29.790365>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.193138, 34.170692, 29.748100> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537275, 0.080390, -0.839567,
		0.843249, -0.070489, 0.532881,
		-0.016342, -0.994268, -0.105661,
		39.188236, 33.872414, 29.716402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.887959, 34.473160, 29.613562>,  <39.199677, 34.568401, 29.790365>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.887959, 34.473160, 29.613562> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.691582, 34.150433, 29.482098>,  <39.573757, 33.956795, 29.403219>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.691582, 34.150433, 29.482098>,  <39.887959, 34.473160, 29.613562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.691582, 34.150433, 29.482098> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393534, 0.131188, -0.909901,
		0.777244, -0.576046, 0.253106,
		-0.490941, -0.806821, -0.328659,
		39.544300, 33.908386, 29.383499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.328457, 33.963318, 29.331930>,  <39.887959, 34.473160, 29.613562>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.328457, 33.963318, 29.331930> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.975285, 33.871788, 29.167942>,  <39.763382, 33.816872, 29.069550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.975285, 33.871788, 29.167942>,  <40.328457, 33.963318, 29.331930>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.975285, 33.871788, 29.167942> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441806, -0.109446, -0.890410,
		0.158874, -0.967297, 0.197727,
		-0.882931, -0.228820, -0.409969,
		39.710403, 33.803143, 29.044950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.486984, 33.405487, 28.772175>,  <40.328457, 33.963318, 29.331930>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.486984, 33.405487, 28.772175> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.118229, 33.537186, 28.690477>,  <39.896976, 33.616207, 28.641459>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.118229, 33.537186, 28.690477>,  <40.486984, 33.405487, 28.772175>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.118229, 33.537186, 28.690477> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115990, -0.268445, -0.956286,
		-0.369686, -0.905280, 0.209286,
		-0.921889, 0.329250, -0.204244,
		39.841663, 33.635960, 28.629204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.225872, 32.957619, 28.349888>,  <40.486984, 33.405487, 28.772175>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.225872, 32.957619, 28.349888> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.000099, 33.279964, 28.278326>,  <39.864635, 33.473370, 28.235390>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.000099, 33.279964, 28.278326>,  <40.225872, 32.957619, 28.349888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.000099, 33.279964, 28.278326> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130323, -0.127016, -0.983302,
		-0.815128, -0.578321, -0.033331,
		-0.564431, 0.805860, -0.178903,
		39.830769, 33.521721, 28.224655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.972805, 32.849922, 27.755684>,  <40.225872, 32.957619, 28.349888>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.972805, 32.849922, 27.755684> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.829357, 33.223316, 27.754786>,  <39.743290, 33.447353, 27.754246>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.829357, 33.223316, 27.754786>,  <39.972805, 32.849922, 27.755684>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.829357, 33.223316, 27.754786> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203526, 0.075838, -0.976128,
		-0.911027, -0.350514, -0.217185,
		-0.358618, 0.933482, -0.002248,
		39.721771, 33.503361, 27.754110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.443367, 32.869644, 27.287514>,  <39.972805, 32.849922, 27.755684>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.443367, 32.869644, 27.287514> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.595402, 33.235828, 27.340382>,  <39.686623, 33.455540, 27.372103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.595402, 33.235828, 27.340382>,  <39.443367, 32.869644, 27.287514>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.595402, 33.235828, 27.340382> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166500, 0.072842, -0.983347,
		-0.909840, 0.395768, -0.124737,
		0.380091, 0.915457, 0.132171,
		39.709431, 33.510464, 27.380033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.146839, 33.378113, 26.842936>,  <39.443367, 32.869644, 27.287514>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.146839, 33.378113, 26.842936> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.507286, 33.527748, 26.930614>,  <39.723553, 33.617527, 26.983221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.507286, 33.527748, 26.930614>,  <39.146839, 33.378113, 26.842936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.507286, 33.527748, 26.930614> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201277, 0.086852, -0.975676,
		-0.384024, 0.923318, 0.002969,
		0.901118, 0.374086, 0.219196,
		39.777622, 33.639973, 26.996374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.292809, 34.068188, 26.579611>,  <39.146839, 33.378113, 26.842936>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.292809, 34.068188, 26.579611> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.667496, 33.935062, 26.623049>,  <39.892307, 33.855186, 26.649111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.667496, 33.935062, 26.623049>,  <39.292809, 34.068188, 26.579611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.667496, 33.935062, 26.623049> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227314, 0.342314, -0.911674,
		0.266241, 0.878668, 0.396305,
		0.936720, -0.332811, 0.108596,
		39.948513, 33.835220, 26.655628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.625019, 34.564476, 26.118748>,  <39.292809, 34.068188, 26.579611>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.625019, 34.564476, 26.118748> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.851906, 34.237984, 26.162622>,  <39.988037, 34.042088, 26.188948>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.851906, 34.237984, 26.162622>,  <39.625019, 34.564476, 26.118748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.851906, 34.237984, 26.162622> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280583, 0.066307, -0.957537,
		0.774299, 0.573907, 0.266631,
		0.567217, -0.816232, 0.109687,
		40.022072, 33.993114, 26.195528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.260731, 34.774025, 25.958879>,  <39.625019, 34.564476, 26.118748>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.260731, 34.774025, 25.958879> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.260883, 34.377403, 25.906992>,  <40.260975, 34.139431, 25.875860>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.260883, 34.377403, 25.906992>,  <40.260731, 34.774025, 25.958879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.260883, 34.377403, 25.906992> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483881, 0.113705, -0.867716,
		0.875134, -0.062433, 0.479836,
		0.000386, -0.991551, -0.129718,
		40.260998, 34.079937, 25.868076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.940968, 34.633430, 25.692272>,  <40.260731, 34.774025, 25.958879>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.940968, 34.633430, 25.692272> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.685268, 34.350197, 25.572283>,  <40.531849, 34.180256, 25.500290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.685268, 34.350197, 25.572283>,  <40.940968, 34.633430, 25.692272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.685268, 34.350197, 25.572283> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242140, 0.184902, -0.952460,
		0.729883, -0.681494, 0.053256,
		-0.639249, -0.708080, -0.299973,
		40.493492, 34.137772, 25.482290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.654171, 34.315678, 25.751007>,  <40.940968, 34.633430, 25.692272>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.654171, 34.315678, 25.751007> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.983795, 34.541908, 25.738062>,  <42.181572, 34.677647, 25.730295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.983795, 34.541908, 25.738062>,  <41.654171, 34.315678, 25.751007>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.983795, 34.541908, 25.738062> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131117, -0.134845, 0.982153,
		0.551116, -0.813599, -0.185277,
		0.824063, 0.565573, -0.032361,
		42.231014, 34.711578, 25.728354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.089554, 33.842281, 25.885736>,  <41.654171, 34.315678, 25.751007>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.089554, 33.842281, 25.885736> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.219807, 34.203518, 25.997725>,  <42.297958, 34.420261, 26.064919>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.219807, 34.203518, 25.997725>,  <42.089554, 33.842281, 25.885736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.219807, 34.203518, 25.997725> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177480, -0.349230, 0.920076,
		0.928689, -0.249918, -0.274002,
		0.325633, 0.903094, 0.279971,
		42.317497, 34.474445, 26.081717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.692455, 33.713989, 26.280241>,  <42.089554, 33.842281, 25.885736>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.692455, 33.713989, 26.280241> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.639603, 34.096416, 26.384918>,  <42.607891, 34.325871, 26.447725>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.639603, 34.096416, 26.384918>,  <42.692455, 33.713989, 26.280241>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.639603, 34.096416, 26.384918> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216505, -0.229796, 0.948852,
		0.967298, 0.182035, -0.176628,
		-0.132136, 0.956063, 0.261693,
		42.599960, 34.383236, 26.463427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.144466, 33.823807, 26.760796>,  <42.692455, 33.713989, 26.280241>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.144466, 33.823807, 26.760796> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.913986, 34.149277, 26.791599>,  <42.775700, 34.344559, 26.810081>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.913986, 34.149277, 26.791599>,  <43.144466, 33.823807, 26.760796>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.913986, 34.149277, 26.791599> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127099, -0.003869, 0.991882,
		0.807364, 0.581312, -0.101188,
		-0.576202, 0.813671, 0.077008,
		42.741127, 34.393379, 26.814701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.539413, 34.239216, 27.171167>,  <43.144466, 33.823807, 26.760796>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.539413, 34.239216, 27.171167> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.155571, 34.347858, 27.200544>,  <42.925266, 34.413044, 27.218170>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.155571, 34.347858, 27.200544>,  <43.539413, 34.239216, 27.171167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.155571, 34.347858, 27.200544> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095049, 0.067245, 0.993199,
		0.264818, 0.960057, -0.090344,
		-0.959603, 0.271604, 0.073445,
		42.867691, 34.429340, 27.222578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.508873, 34.857601, 27.616512>,  <43.539413, 34.239216, 27.171167>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.508873, 34.857601, 27.616512> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.142780, 34.698044, 27.639263>,  <42.923126, 34.602310, 27.652914>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.142780, 34.698044, 27.639263>,  <43.508873, 34.857601, 27.616512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.142780, 34.698044, 27.639263> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060033, 0.004586, 0.998186,
		-0.398431, 0.916986, 0.019749,
		-0.915231, -0.398894, 0.056877,
		42.868210, 34.578377, 27.656326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.215263, 35.090130, 28.179632>,  <43.508873, 34.857601, 27.616512>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.215263, 35.090130, 28.179632> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.937878, 34.805573, 28.133989>,  <42.771446, 34.634838, 28.106604>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.937878, 34.805573, 28.133989>,  <43.215263, 35.090130, 28.179632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.937878, 34.805573, 28.133989> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119218, -0.042894, 0.991941,
		-0.710558, 0.701481, -0.055066,
		-0.693466, -0.711396, -0.114108,
		42.729839, 34.592155, 28.099756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.803745, 35.251389, 28.634640>,  <43.215263, 35.090130, 28.179632>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.803745, 35.251389, 28.634640> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.702938, 34.867493, 28.585024>,  <42.642452, 34.637154, 28.555254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.702938, 34.867493, 28.585024>,  <42.803745, 35.251389, 28.634640>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.702938, 34.867493, 28.585024> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016395, -0.132391, 0.991062,
		-0.967583, 0.247735, 0.049100,
		-0.252021, -0.959740, -0.124038,
		42.627331, 34.579571, 28.547813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.328102, 35.120464, 29.147963>,  <42.803745, 35.251389, 28.634640>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.328102, 35.120464, 29.147963> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.470726, 34.761208, 29.045040>,  <42.556301, 34.545654, 28.983286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.470726, 34.761208, 29.045040>,  <42.328102, 35.120464, 29.147963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.470726, 34.761208, 29.045040> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089087, -0.241469, 0.966310,
		-0.930014, -0.367472, -0.006087,
		0.356562, -0.898141, -0.257307,
		42.577694, 34.491764, 28.967848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.874287, 34.627426, 29.465286>,  <42.328102, 35.120464, 29.147963>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.874287, 34.627426, 29.465286> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.209110, 34.421883, 29.390154>,  <42.410004, 34.298557, 29.345076>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.209110, 34.421883, 29.390154>,  <41.874287, 34.627426, 29.465286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.209110, 34.421883, 29.390154> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010843, -0.327662, 0.944733,
		-0.547009, -0.792832, -0.268700,
		0.837057, -0.513864, -0.187830,
		42.460228, 34.267723, 29.333805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.756943, 34.003036, 29.733660>,  <41.874287, 34.627426, 29.465286>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.756943, 34.003036, 29.733660> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.155846, 34.023575, 29.712357>,  <42.395187, 34.035896, 29.699575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.155846, 34.023575, 29.712357>,  <41.756943, 34.003036, 29.733660>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.155846, 34.023575, 29.712357> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066959, -0.320491, 0.944882,
		0.031446, -0.945859, -0.323051,
		0.997260, 0.051344, -0.053256,
		42.455025, 34.038979, 29.696381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.954533, 33.346153, 29.842178>,  <41.756943, 34.003036, 29.733660>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.954533, 33.346153, 29.842178> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.264130, 33.581371, 29.936102>,  <42.449890, 33.722500, 29.992456>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.264130, 33.581371, 29.936102>,  <41.954533, 33.346153, 29.842178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.264130, 33.581371, 29.936102> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083256, -0.462128, 0.882896,
		0.627692, -0.663810, -0.406644,
		0.773997, 0.588042, 0.234808,
		42.496330, 33.757786, 30.006544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.320744, 33.033203, 30.373919>,  <41.954533, 33.346153, 29.842178>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.320744, 33.033203, 30.373919> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.534138, 33.371395, 30.364408>,  <42.662174, 33.574310, 30.358702>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.534138, 33.371395, 30.364408>,  <42.320744, 33.033203, 30.373919>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.534138, 33.371395, 30.364408> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343904, -0.191147, 0.919344,
		0.772739, -0.498632, -0.392736,
		0.533485, 0.845476, -0.023775,
		42.694183, 33.625038, 30.357277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.973824, 32.777405, 30.707067>,  <42.320744, 33.033203, 30.373919>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.973824, 32.777405, 30.707067> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.920570, 33.172337, 30.741617>,  <42.888618, 33.409294, 30.762346>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.920570, 33.172337, 30.741617>,  <42.973824, 32.777405, 30.707067>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.920570, 33.172337, 30.741617> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144540, -0.066875, 0.987237,
		0.980502, 0.143913, -0.133806,
		-0.133128, 0.987328, 0.086372,
		42.880630, 33.468536, 30.767529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<43.113174, 37.573803, 25.873360> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.726837, 37.651356, 25.804598>,  <42.495033, 37.697887, 25.763340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.726837, 37.651356, 25.804598>,  <43.113174, 37.573803, 25.873360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.726837, 37.651356, 25.804598> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102009, -0.325343, -0.940078,
		-0.238194, -0.925506, 0.294454,
		-0.965846, 0.193884, -0.171905,
		42.437084, 37.709522, 25.753027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.851238, 36.934700, 25.600462>,  <43.113174, 37.573803, 25.873360>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.851238, 36.934700, 25.600462> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.574951, 37.206635, 25.501886>,  <42.409180, 37.369797, 25.442741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.574951, 37.206635, 25.501886>,  <42.851238, 36.934700, 25.600462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.574951, 37.206635, 25.501886> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189204, -0.159021, -0.968976,
		-0.697936, -0.715914, -0.018790,
		-0.690715, 0.679838, -0.246440,
		42.367737, 37.410587, 25.427954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.465431, 36.620960, 25.115168>,  <42.851238, 36.934700, 25.600462>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.465431, 36.620960, 25.115168> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.356915, 37.001183, 25.054707>,  <42.291805, 37.229317, 25.018431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.356915, 37.001183, 25.054707>,  <42.465431, 36.620960, 25.115168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.356915, 37.001183, 25.054707> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130594, -0.119236, -0.984240,
		-0.953596, -0.286756, -0.091789,
		-0.271292, 0.950554, -0.151152,
		42.275528, 37.286350, 25.009361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.011551, 36.612034, 24.594358>,  <42.465431, 36.620960, 25.115168>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.011551, 36.612034, 24.594358> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.149971, 36.987186, 24.584408>,  <42.233025, 37.212280, 24.578438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.149971, 36.987186, 24.584408>,  <42.011551, 36.612034, 24.594358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.149971, 36.987186, 24.584408> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181324, -0.092871, -0.979029,
		-0.920527, 0.334284, -0.202199,
		0.346052, 0.937885, -0.024876,
		42.253788, 37.268551, 24.576944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.587494, 36.991638, 24.004057>,  <42.011551, 36.612034, 24.594358>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.587494, 36.991638, 24.004057> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.925854, 37.197674, 24.059401>,  <42.128868, 37.321293, 24.092607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.925854, 37.197674, 24.059401>,  <41.587494, 36.991638, 24.004057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.925854, 37.197674, 24.059401> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142839, 0.031154, -0.989255,
		-0.513863, 0.856571, -0.047222,
		0.845897, 0.515087, 0.138361,
		42.179623, 37.352200, 24.100908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.565472, 37.521271, 23.400328>,  <41.587494, 36.991638, 24.004057>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.565472, 37.521271, 23.400328> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.938725, 37.514687, 23.543993>,  <42.162674, 37.510738, 23.630192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.938725, 37.514687, 23.543993>,  <41.565472, 37.521271, 23.400328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.938725, 37.514687, 23.543993> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359132, -0.004990, -0.933274,
		0.017150, 0.999852, 0.001254,
		0.933129, -0.016456, 0.359164,
		42.218662, 37.509750, 23.651743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.867844, 37.981194, 23.077011>,  <41.565472, 37.521271, 23.400328>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.867844, 37.981194, 23.077011> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.158085, 37.727859, 23.184633>,  <42.332230, 37.575859, 23.249207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.158085, 37.727859, 23.184633>,  <41.867844, 37.981194, 23.077011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.158085, 37.727859, 23.184633> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359821, 0.015929, -0.932885,
		0.586540, 0.773717, 0.239444,
		0.725603, -0.633331, 0.269057,
		42.375767, 37.537861, 23.265350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.453304, 38.350346, 22.959873>,  <41.867844, 37.981194, 23.077011>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.453304, 38.350346, 22.959873> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.587429, 37.974648, 22.930515>,  <42.667904, 37.749229, 22.912901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.587429, 37.974648, 22.930515>,  <42.453304, 38.350346, 22.959873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.587429, 37.974648, 22.930515> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357644, 0.198977, -0.912413,
		0.871584, 0.279691, 0.402635,
		0.335309, -0.939245, -0.073395,
		42.688023, 37.692875, 22.908497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.124691, 38.396526, 22.660616>,  <42.453304, 38.350346, 22.959873>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.124691, 38.396526, 22.660616> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.009846, 38.016243, 22.613750>,  <42.940941, 37.788074, 22.585632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.009846, 38.016243, 22.613750>,  <43.124691, 38.396526, 22.660616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.009846, 38.016243, 22.613750> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451319, -0.026372, -0.891973,
		0.844914, -0.308972, 0.436643,
		-0.287110, -0.950706, -0.117162,
		42.923714, 37.731030, 22.578602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.671211, 38.162621, 22.286524>,  <43.124691, 38.396526, 22.660616>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.671211, 38.162621, 22.286524> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.375740, 37.896549, 22.242886>,  <43.198460, 37.736908, 22.216703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.375740, 37.896549, 22.242886>,  <43.671211, 38.162621, 22.286524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.375740, 37.896549, 22.242886> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325150, -0.209846, -0.922086,
		0.590455, -0.716594, 0.371289,
		-0.738675, -0.665175, -0.109095,
		43.154137, 37.696999, 22.210157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.935223, 37.523079, 21.904346>,  <43.671211, 38.162621, 22.286524>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.935223, 37.523079, 21.904346> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.540142, 37.478764, 21.860212>,  <43.303093, 37.452175, 21.833731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.540142, 37.478764, 21.860212>,  <43.935223, 37.523079, 21.904346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.540142, 37.478764, 21.860212> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122997, -0.114821, -0.985742,
		0.096537, -0.987189, 0.127035,
		-0.987700, -0.110786, -0.110337,
		43.243832, 37.445526, 21.827110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.815941, 36.846561, 21.435070>,  <43.935223, 37.523079, 21.904346>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.815941, 36.846561, 21.435070> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.515285, 37.109802, 21.417437>,  <43.334892, 37.267746, 21.406857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.515285, 37.109802, 21.417437>,  <43.815941, 36.846561, 21.435070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.515285, 37.109802, 21.417437> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150059, 0.105539, -0.983028,
		-0.642276, -0.745499, -0.178081,
		-0.751640, 0.658098, -0.044084,
		43.289795, 37.307232, 21.404211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.421722, 36.626080, 20.865150>,  <43.815941, 36.846561, 21.435070>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.421722, 36.626080, 20.865150> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.369011, 37.012688, 20.953217>,  <43.337383, 37.244652, 21.006056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.369011, 37.012688, 20.953217>,  <43.421722, 36.626080, 20.865150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.369011, 37.012688, 20.953217> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125302, 0.236561, -0.963503,
		-0.983328, -0.099384, -0.152281,
		-0.131780, 0.966520, 0.220164,
		43.329475, 37.302643, 21.019266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.518974, 36.220814, 20.275831>,  <43.421722, 36.626080, 20.865150>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.518974, 36.220814, 20.275831> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.204430, 36.086990, 20.068096>,  <43.015705, 36.006695, 19.943455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.204430, 36.086990, 20.068096>,  <43.518974, 36.220814, 20.275831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.204430, 36.086990, 20.068096> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419517, -0.327903, 0.846454,
		-0.453480, 0.883488, 0.117497,
		-0.786360, -0.334558, -0.519336,
		42.968521, 35.986622, 19.912296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.794182, 36.511372, 20.464561>,  <43.518974, 36.220814, 20.275831>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.794182, 36.511372, 20.464561> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.793152, 36.130596, 20.342054>,  <42.792534, 35.902130, 20.268551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.793152, 36.130596, 20.342054>,  <42.794182, 36.511372, 20.464561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.793152, 36.130596, 20.342054> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196711, -0.299801, 0.933501,
		-0.980458, 0.062654, -0.186485,
		-0.002580, -0.951942, -0.306267,
		42.792377, 35.845013, 20.250174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.098293, 36.147717, 20.649103>,  <42.794182, 36.511372, 20.464561>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.098293, 36.147717, 20.649103> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.401699, 35.887188, 20.640680>,  <42.583740, 35.730873, 20.635626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.401699, 35.887188, 20.640680>,  <42.098293, 36.147717, 20.649103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.401699, 35.887188, 20.640680> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247206, -0.317490, 0.915472,
		-0.602950, -0.689191, -0.401830,
		0.758512, -0.651319, -0.021058,
		42.629253, 35.691792, 20.634363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.950710, 35.798977, 21.246492>,  <42.098293, 36.147717, 20.649103>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.950710, 35.798977, 21.246492> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.283222, 35.600178, 21.146914>,  <42.482727, 35.480900, 21.087166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.283222, 35.600178, 21.146914>,  <41.950710, 35.798977, 21.246492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.283222, 35.600178, 21.146914> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014935, -0.467665, 0.883780,
		-0.555660, -0.730946, -0.396181,
		0.831275, -0.496998, -0.248946,
		42.532604, 35.451080, 21.072229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.858444, 34.956047, 21.216097>,  <41.950710, 35.798977, 21.246492>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.858444, 34.956047, 21.216097> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.241066, 35.051594, 21.282969>,  <42.470638, 35.108921, 21.323092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.241066, 35.051594, 21.282969>,  <41.858444, 34.956047, 21.216097>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.241066, 35.051594, 21.282969> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017635, -0.524953, 0.850949,
		0.291026, -0.816925, -0.497933,
		0.956552, 0.238867, 0.167181,
		42.528030, 35.123253, 21.333122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.094749, 34.432316, 21.632118>,  <41.858444, 34.956047, 21.216097>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.094749, 34.432316, 21.632118> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.404751, 34.679901, 21.683113>,  <42.590752, 34.828453, 21.713711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.404751, 34.679901, 21.683113>,  <42.094749, 34.432316, 21.632118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.404751, 34.679901, 21.683113> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110723, -0.331608, 0.936897,
		0.622179, -0.711985, -0.325532,
		0.775006, 0.618962, 0.127487,
		42.637253, 34.865589, 21.721359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.659546, 34.034134, 21.932186>,  <42.094749, 34.432316, 21.632118>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.659546, 34.034134, 21.932186> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.738140, 34.415115, 22.025337>,  <42.785297, 34.643703, 22.081228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.738140, 34.415115, 22.025337>,  <42.659546, 34.034134, 21.932186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.738140, 34.415115, 22.025337> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290711, -0.283418, 0.913872,
		0.936418, -0.111866, -0.332576,
		0.196489, 0.952450, 0.232877,
		42.797089, 34.700851, 22.095200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.272793, 33.969189, 22.407341>,  <42.659546, 34.034134, 21.932186>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.272793, 33.969189, 22.407341> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.140465, 34.344105, 22.451241>,  <43.061066, 34.569054, 22.477581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.140465, 34.344105, 22.451241>,  <43.272793, 33.969189, 22.407341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.140465, 34.344105, 22.451241> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140570, -0.066055, 0.987865,
		0.933165, 0.342235, -0.109902,
		-0.330823, 0.937290, 0.109748,
		43.041218, 34.625290, 22.484165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.687046, 34.287773, 22.978930>,  <43.272793, 33.969189, 22.407341>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.687046, 34.287773, 22.978930> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.333527, 34.470604, 22.938950>,  <43.121414, 34.580303, 22.914963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.333527, 34.470604, 22.938950>,  <43.687046, 34.287773, 22.978930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.333527, 34.470604, 22.938950> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023885, 0.169266, 0.985281,
		0.467265, 0.873173, -0.138679,
		-0.883795, 0.457075, -0.099948,
		43.068390, 34.607727, 22.908966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.727684, 34.746044, 23.455811>,  <43.687046, 34.287773, 22.978930>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.727684, 34.746044, 23.455811> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.333103, 34.720047, 23.395550>,  <43.096355, 34.704449, 23.359394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.333103, 34.720047, 23.395550>,  <43.727684, 34.746044, 23.455811>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.333103, 34.720047, 23.395550> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156769, 0.102485, 0.982304,
		-0.048400, 0.992609, -0.111284,
		-0.986449, -0.064989, -0.150650,
		43.037170, 34.700550, 23.350355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.448956, 35.344807, 23.680845>,  <43.727684, 34.746044, 23.455811>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.448956, 35.344807, 23.680845> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.096668, 35.155525, 23.689014>,  <42.885296, 35.041954, 23.693916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.096668, 35.155525, 23.689014>,  <43.448956, 35.344807, 23.680845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.096668, 35.155525, 23.689014> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059073, 0.152524, 0.986533,
		-0.469948, 0.867648, -0.162284,
		-0.880715, -0.473206, 0.020424,
		42.832455, 35.013565, 23.695141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.922161, 35.715134, 24.038980>,  <43.448956, 35.344807, 23.680845>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.922161, 35.715134, 24.038980> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.767181, 35.348293, 24.076517>,  <42.674194, 35.128189, 24.099039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.767181, 35.348293, 24.076517>,  <42.922161, 35.715134, 24.038980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.767181, 35.348293, 24.076517> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138902, 0.158706, 0.977506,
		-0.911368, 0.365696, -0.188878,
		-0.387446, -0.917104, 0.093843,
		42.650948, 35.073162, 24.104670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.253536, 35.737442, 24.378649>,  <42.922161, 35.715134, 24.038980>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.253536, 35.737442, 24.378649> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.374496, 35.358917, 24.424343>,  <42.447071, 35.131802, 24.451759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.374496, 35.358917, 24.424343>,  <42.253536, 35.737442, 24.378649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.374496, 35.358917, 24.424343> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209787, 0.050834, 0.976425,
		-0.929808, -0.319237, -0.183151,
		0.302400, -0.946311, 0.114237,
		42.465218, 35.075024, 24.458614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.785450, 35.515175, 24.833191>,  <42.253536, 35.737442, 24.378649>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.785450, 35.515175, 24.833191> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.089161, 35.256954, 24.866070>,  <42.271389, 35.102020, 24.885798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.089161, 35.256954, 24.866070>,  <41.785450, 35.515175, 24.833191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.089161, 35.256954, 24.866070> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203143, -0.115120, 0.972358,
		-0.618246, -0.754990, -0.218547,
		0.759279, -0.645553, 0.082199,
		42.316944, 35.063290, 24.890730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.450310, 34.870441, 25.233841>,  <41.785450, 35.515175, 24.833191>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.450310, 34.870441, 25.233841> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.847561, 34.877747, 25.280085>,  <42.085911, 34.882130, 25.307831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.847561, 34.877747, 25.280085>,  <41.450310, 34.870441, 25.233841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.847561, 34.877747, 25.280085> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113746, -0.082151, 0.990108,
		0.027587, -0.996453, -0.079508,
		0.993127, 0.018270, 0.115609,
		42.145500, 34.883228, 25.314768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.290039, 34.224075, 25.146545>,  <41.450310, 34.870441, 25.233841>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.290039, 34.224075, 25.146545> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.898499, 34.166721, 25.088179>,  <40.663574, 34.132309, 25.053158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.898499, 34.166721, 25.088179>,  <41.290039, 34.224075, 25.146545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.898499, 34.166721, 25.088179> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109018, 0.237958, -0.965138,
		0.173103, -0.960634, -0.217295,
		-0.978851, -0.143379, -0.145918,
		40.604843, 34.123707, 25.044403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.294106, 34.167850, 24.460281>,  <41.290039, 34.224075, 25.146545>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.294106, 34.167850, 24.460281> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.900715, 34.193466, 24.528006>,  <40.664680, 34.208836, 24.568640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.900715, 34.193466, 24.528006>,  <41.294106, 34.167850, 24.460281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.900715, 34.193466, 24.528006> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150830, 0.227257, -0.962084,
		-0.100085, -0.971727, -0.213844,
		-0.983480, 0.064036, 0.169310,
		40.605671, 34.212677, 24.578798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.992691, 33.793552, 23.946062>,  <41.294106, 34.167850, 24.460281>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.992691, 33.793552, 23.946062> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.705902, 34.027821, 24.097292>,  <40.533829, 34.168381, 24.188030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.705902, 34.027821, 24.097292>,  <40.992691, 33.793552, 23.946062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.705902, 34.027821, 24.097292> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328715, 0.194225, -0.924242,
		-0.614734, -0.786934, 0.053265,
		-0.716972, 0.585672, 0.378074,
		40.490810, 34.203522, 24.210714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.472366, 33.604210, 23.534641>,  <40.992691, 33.793552, 23.946062>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.472366, 33.604210, 23.534641> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.352707, 33.951828, 23.692257>,  <40.280910, 34.160400, 23.786827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.352707, 33.951828, 23.692257>,  <40.472366, 33.604210, 23.534641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.352707, 33.951828, 23.692257> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415726, 0.252997, -0.873593,
		-0.858884, -0.425146, 0.285602,
		-0.299148, 0.869047, 0.394039,
		40.262962, 34.212543, 23.810469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.701344, 33.705719, 23.526701>,  <40.472366, 33.604210, 23.534641>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.701344, 33.705719, 23.526701> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.893436, 34.056511, 23.533470>,  <40.008694, 34.266987, 23.537533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.893436, 34.056511, 23.533470>,  <39.701344, 33.705719, 23.526701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.893436, 34.056511, 23.533470> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357713, 0.213429, -0.909115,
		-0.800884, 0.430536, 0.416202,
		0.480236, 0.876976, 0.016924,
		40.037506, 34.319603, 23.538548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.243805, 34.215351, 23.112215>,  <39.701344, 33.705719, 23.526701>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.243805, 34.215351, 23.112215> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.600155, 34.396446, 23.127050>,  <39.813965, 34.505104, 23.135952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.600155, 34.396446, 23.127050>,  <39.243805, 34.215351, 23.112215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.600155, 34.396446, 23.127050> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109465, 0.293200, -0.949764,
		-0.440871, 0.842057, 0.310762,
		0.890870, 0.452741, 0.037087,
		39.867416, 34.532269, 23.138176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.222481, 34.951157, 22.904827>,  <39.243805, 34.215351, 23.112215>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.222481, 34.951157, 22.904827> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.610775, 34.880508, 22.839735>,  <39.843750, 34.838120, 22.800680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.610775, 34.880508, 22.839735>,  <39.222481, 34.951157, 22.904827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.610775, 34.880508, 22.839735> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074231, 0.423752, -0.902731,
		0.228395, 0.888392, 0.398240,
		0.970734, -0.176618, -0.162729,
		39.901997, 34.827522, 22.790916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.217960, 35.747330, 22.995466>,  <39.222481, 34.951157, 22.904827>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.217960, 35.747330, 22.995466> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.937752, 36.032547, 23.007118>,  <38.769627, 36.203678, 23.014109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.937752, 36.032547, 23.007118>,  <39.217960, 35.747330, 22.995466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.937752, 36.032547, 23.007118> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048639, -0.088428, 0.994894,
		0.711974, 0.695526, 0.096627,
		-0.700519, 0.713039, 0.029129,
		38.727596, 36.246460, 23.015858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.411331, 36.261250, 23.640314>,  <39.217960, 35.747330, 22.995466>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.411331, 36.261250, 23.640314> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.024323, 36.281334, 23.541214>,  <38.792118, 36.293385, 23.481754>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.024323, 36.281334, 23.541214>,  <39.411331, 36.261250, 23.640314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.024323, 36.281334, 23.541214> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252374, -0.135768, 0.958058,
		0.014469, 0.989467, 0.144031,
		-0.967522, 0.050211, -0.247751,
		38.734066, 36.296398, 23.466888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.116222, 36.793671, 24.042072>,  <39.411331, 36.261250, 23.640314>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.116222, 36.793671, 24.042072> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.812710, 36.553093, 23.942060>,  <38.630600, 36.408745, 23.882053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.812710, 36.553093, 23.942060>,  <39.116222, 36.793671, 24.042072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.812710, 36.553093, 23.942060> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226078, -0.116809, 0.967080,
		-0.610849, 0.790331, -0.047340,
		-0.758783, -0.601443, -0.250029,
		38.585075, 36.372662, 23.867052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.570919, 37.053238, 24.423992>,  <39.116222, 36.793671, 24.042072>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.570919, 37.053238, 24.423992> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.451641, 36.683083, 24.330402>,  <38.380074, 36.460991, 24.274248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.451641, 36.683083, 24.330402>,  <38.570919, 37.053238, 24.423992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.451641, 36.683083, 24.330402> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330896, -0.129709, 0.934710,
		-0.895316, 0.356143, -0.267528,
		-0.298190, -0.925385, -0.233977,
		38.362183, 36.405468, 24.260210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.979263, 37.058346, 24.763699>,  <38.570919, 37.053238, 24.423992>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.979263, 37.058346, 24.763699> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.061192, 36.674377, 24.687168>,  <38.110348, 36.443996, 24.641251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.061192, 36.674377, 24.687168>,  <37.979263, 37.058346, 24.763699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.061192, 36.674377, 24.687168> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356412, -0.255195, 0.898803,
		-0.911602, -0.115904, -0.394395,
		0.204822, -0.959918, -0.191327,
		38.122639, 36.386402, 24.629770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.319023, 36.686111, 24.829437>,  <37.979263, 37.058346, 24.763699>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.319023, 36.686111, 24.829437> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.596901, 36.398666, 24.842054>,  <37.763626, 36.226200, 24.849625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.596901, 36.398666, 24.842054>,  <37.319023, 36.686111, 24.829437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.596901, 36.398666, 24.842054> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388292, -0.337735, 0.857417,
		-0.605498, -0.607891, -0.513655,
		0.694695, -0.718612, 0.031541,
		37.805309, 36.183083, 24.851517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.954308, 35.994354, 25.046432>,  <37.319023, 36.686111, 24.829437>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.954308, 35.994354, 25.046432> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.347782, 35.986538, 25.117970>,  <37.583866, 35.981850, 25.160892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.347782, 35.986538, 25.117970>,  <36.954308, 35.994354, 25.046432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.347782, 35.986538, 25.117970> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173752, -0.360960, 0.916252,
		0.046652, -0.932377, -0.358465,
		0.983684, -0.019539, 0.178842,
		37.642887, 35.980675, 25.171621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<40.514915, 38.872265, 21.224598> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.842716, 38.722076, 21.397778>,  <41.039394, 38.631966, 21.501686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.842716, 38.722076, 21.397778>,  <40.514915, 38.872265, 21.224598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.842716, 38.722076, 21.397778> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354601, 0.261265, 0.897775,
		-0.450200, -0.889249, 0.080965,
		0.819499, -0.375468, 0.432950,
		41.088566, 38.609436, 21.527662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.292522, 38.476578, 21.778931>,  <40.514915, 38.872265, 21.224598>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.292522, 38.476578, 21.778931> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.677475, 38.550896, 21.858223>,  <40.908447, 38.595486, 21.905798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.677475, 38.550896, 21.858223>,  <40.292522, 38.476578, 21.778931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.677475, 38.550896, 21.858223> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199143, -0.013944, 0.979871,
		0.184822, -0.982489, 0.023581,
		0.962384, 0.185798, 0.198233,
		40.966190, 38.606636, 21.917692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.410412, 38.124302, 22.387175>,  <40.292522, 38.476578, 21.778931>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.410412, 38.124302, 22.387175> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.705585, 38.392189, 22.353855>,  <40.882690, 38.552921, 22.333864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.705585, 38.392189, 22.353855>,  <40.410412, 38.124302, 22.387175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.705585, 38.392189, 22.353855> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045853, 0.172893, 0.983873,
		0.673318, -0.722210, 0.158291,
		0.737930, 0.669718, -0.083297,
		40.926964, 38.593105, 22.328867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.773277, 38.054970, 23.002129>,  <40.410412, 38.124302, 22.387175>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.773277, 38.054970, 23.002129> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.859798, 38.422764, 22.870821>,  <40.911709, 38.643440, 22.792036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.859798, 38.422764, 22.870821>,  <40.773277, 38.054970, 23.002129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.859798, 38.422764, 22.870821> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163967, 0.365664, 0.916190,
		0.962460, -0.144345, 0.229858,
		0.216299, 0.919486, -0.328269,
		40.924686, 38.698608, 22.772341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.116940, 38.243748, 23.602598>,  <40.773277, 38.054970, 23.002129>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.116940, 38.243748, 23.602598> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.018932, 38.578732, 23.407200>,  <40.960129, 38.779720, 23.289961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.018932, 38.578732, 23.407200>,  <41.116940, 38.243748, 23.602598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.018932, 38.578732, 23.407200> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075187, 0.485925, 0.870761,
		0.966599, 0.250080, -0.056094,
		-0.245018, 0.837459, -0.488497,
		40.945427, 38.829967, 23.260651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.453896, 38.773216, 23.952324>,  <41.116940, 38.243748, 23.602598>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.453896, 38.773216, 23.952324> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.193474, 39.000500, 23.751019>,  <41.037220, 39.136868, 23.630236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.193474, 39.000500, 23.751019>,  <41.453896, 38.773216, 23.952324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.193474, 39.000500, 23.751019> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039986, 0.687786, 0.724812,
		0.757980, 0.451766, -0.470504,
		-0.651051, 0.568207, -0.503264,
		40.998158, 39.170963, 23.600039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.726894, 39.508873, 23.892595>,  <41.453896, 38.773216, 23.952324>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.726894, 39.508873, 23.892595> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.335312, 39.556335, 23.826176>,  <41.100365, 39.584812, 23.786324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.335312, 39.556335, 23.826176>,  <41.726894, 39.508873, 23.892595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.335312, 39.556335, 23.826176> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078928, 0.530189, 0.844198,
		0.188207, 0.839536, -0.509664,
		-0.978953, 0.118657, -0.166048,
		41.041626, 39.591934, 23.776361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.598915, 40.240547, 23.914932>,  <41.726894, 39.508873, 23.892595>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.598915, 40.240547, 23.914932> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.246796, 40.066746, 23.991116>,  <41.035522, 39.962463, 24.036825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.246796, 40.066746, 23.991116>,  <41.598915, 40.240547, 23.914932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.246796, 40.066746, 23.991116> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114235, 0.583787, 0.803831,
		-0.460454, 0.685857, -0.563544,
		-0.880303, -0.434503, 0.190458,
		40.982704, 39.936394, 24.048252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.972317, 40.780430, 24.103052>,  <41.598915, 40.240547, 23.914932>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.972317, 40.780430, 24.103052> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.829102, 40.435162, 24.245459>,  <40.743172, 40.228001, 24.330902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.829102, 40.435162, 24.245459>,  <40.972317, 40.780430, 24.103052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.829102, 40.435162, 24.245459> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121575, 0.421145, 0.898808,
		-0.925760, 0.278521, -0.255724,
		-0.358034, -0.863170, 0.356018,
		40.721691, 40.176212, 24.352264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.196247, 40.853580, 24.334949>,  <40.972317, 40.780430, 24.103052>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.196247, 40.853580, 24.334949> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.365574, 40.546177, 24.526865>,  <40.467171, 40.361736, 24.642015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.365574, 40.546177, 24.526865>,  <40.196247, 40.853580, 24.334949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.365574, 40.546177, 24.526865> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447236, 0.283295, 0.848366,
		-0.787897, -0.573709, -0.223779,
		0.423319, -0.768507, 0.479790,
		40.492569, 40.315624, 24.670803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.613548, 40.582020, 24.744516>,  <40.196247, 40.853580, 24.334949>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.613548, 40.582020, 24.744516> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.946362, 40.449802, 24.922714>,  <40.146049, 40.370472, 25.029633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.946362, 40.449802, 24.922714>,  <39.613548, 40.582020, 24.744516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.946362, 40.449802, 24.922714> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397900, 0.203960, 0.894469,
		-0.386527, -0.921488, 0.038176,
		0.832029, -0.330546, 0.445496,
		40.195969, 40.350639, 25.056362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.352177, 40.324093, 25.341141>,  <39.613548, 40.582020, 24.744516>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.352177, 40.324093, 25.341141> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.738567, 40.363911, 25.436621>,  <39.970402, 40.387802, 25.493908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.738567, 40.363911, 25.436621>,  <39.352177, 40.324093, 25.341141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.738567, 40.363911, 25.436621> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256426, 0.248616, 0.934043,
		0.033630, -0.963474, 0.265683,
		0.965979, 0.099540, 0.238699,
		40.028362, 40.393772, 25.508230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.122776, 39.539425, 25.410240>,  <39.352177, 40.324093, 25.341141>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.122776, 39.539425, 25.410240> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.737282, 39.496334, 25.312582>,  <38.505985, 39.470478, 25.253986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.737282, 39.496334, 25.312582>,  <39.122776, 39.539425, 25.410240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.737282, 39.496334, 25.312582> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257081, -0.129423, -0.957684,
		0.071572, -0.985720, 0.152424,
		-0.963736, -0.107729, -0.244146,
		38.448162, 39.464016, 25.239338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.024757, 38.930664, 25.045406>,  <39.122776, 39.539425, 25.410240>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.024757, 38.930664, 25.045406> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.693607, 39.131744, 24.945877>,  <38.494915, 39.252392, 24.886160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.693607, 39.131744, 24.945877>,  <39.024757, 38.930664, 25.045406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.693607, 39.131744, 24.945877> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123121, -0.269925, -0.954977,
		-0.547229, -0.821240, 0.161572,
		-0.827878, 0.502699, -0.248823,
		38.445244, 39.282555, 24.871231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.711864, 38.586315, 24.467026>,  <39.024757, 38.930664, 25.045406>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.711864, 38.586315, 24.467026> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.547119, 38.948288, 24.424191>,  <38.448273, 39.165470, 24.398489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.547119, 38.948288, 24.424191>,  <38.711864, 38.586315, 24.467026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.547119, 38.948288, 24.424191> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128500, -0.174019, -0.976322,
		-0.902139, -0.388351, 0.187956,
		-0.411864, 0.904931, -0.107086,
		38.423561, 39.219769, 24.392065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.071369, 38.490238, 23.961555>,  <38.711864, 38.586315, 24.467026>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.071369, 38.490238, 23.961555> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.193871, 38.870392, 23.939749>,  <38.267372, 39.098484, 23.926664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.193871, 38.870392, 23.939749>,  <38.071369, 38.490238, 23.961555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.193871, 38.870392, 23.939749> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022425, -0.050052, -0.998495,
		-0.951687, 0.307013, 0.005984,
		0.306251, 0.950388, -0.054519,
		38.285748, 39.155510, 23.923393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.493813, 38.784611, 23.559027>,  <38.071369, 38.490238, 23.961555>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.493813, 38.784611, 23.559027> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.805119, 39.035702, 23.552605>,  <37.991901, 39.186356, 23.548752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.805119, 39.035702, 23.552605>,  <37.493813, 38.784611, 23.559027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.805119, 39.035702, 23.552605> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123970, 0.128535, -0.983926,
		-0.615571, 0.767750, 0.177854,
		0.778269, 0.627725, -0.016056,
		38.038601, 39.224018, 23.547789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.214916, 39.247410, 23.177195>,  <37.493813, 38.784611, 23.559027>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.214916, 39.247410, 23.177195> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.602398, 39.346291, 23.168198>,  <37.834885, 39.405621, 23.162800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.602398, 39.346291, 23.168198>,  <37.214916, 39.247410, 23.177195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.602398, 39.346291, 23.168198> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079299, 0.222323, -0.971743,
		-0.235218, 0.943113, 0.234967,
		0.968702, 0.247204, -0.022493,
		37.893009, 39.420452, 23.161449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.366486, 39.901054, 22.726294>,  <37.214916, 39.247410, 23.177195>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.366486, 39.901054, 22.726294> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.717381, 39.710968, 22.753483>,  <37.927917, 39.596916, 22.769796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.717381, 39.710968, 22.753483>,  <37.366486, 39.901054, 22.726294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.717381, 39.710968, 22.753483> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150129, 0.137091, -0.979115,
		0.455972, 0.869124, 0.191605,
		0.877241, -0.475215, 0.067971,
		37.980553, 39.568405, 22.773874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.819778, 40.287735, 22.321980>,  <37.366486, 39.901054, 22.726294>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.819778, 40.287735, 22.321980> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.995827, 39.928791, 22.334925>,  <38.101456, 39.713425, 22.342691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.995827, 39.928791, 22.334925>,  <37.819778, 40.287735, 22.321980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.995827, 39.928791, 22.334925> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346955, 0.136703, -0.927865,
		0.828202, 0.419599, 0.371508,
		0.440118, -0.897357, 0.032364,
		38.127861, 39.659584, 22.344633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.363632, 40.386276, 21.973907>,  <37.819778, 40.287735, 22.321980>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.363632, 40.386276, 21.973907> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.398876, 39.988518, 21.997293>,  <38.420025, 39.749863, 22.011326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.398876, 39.988518, 21.997293>,  <38.363632, 40.386276, 21.973907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.398876, 39.988518, 21.997293> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434961, -0.014393, -0.900334,
		0.896128, 0.104760, 0.431254,
		0.088112, -0.994393, 0.058465,
		38.425308, 39.690201, 22.014833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.008369, 40.221130, 21.911997>,  <38.363632, 40.386276, 21.973907>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.008369, 40.221130, 21.911997> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.784630, 39.924118, 21.764606>,  <38.650387, 39.745911, 21.676172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.784630, 39.924118, 21.764606>,  <39.008369, 40.221130, 21.911997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.784630, 39.924118, 21.764606> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398192, 0.149186, -0.905089,
		0.727029, -0.652986, 0.212223,
		-0.559350, -0.742532, -0.368476,
		38.616825, 39.701359, 21.654064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.435322, 39.869179, 21.332182>,  <39.008369, 40.221130, 21.911997>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.435322, 39.869179, 21.332182> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.060463, 39.751827, 21.256622>,  <38.835548, 39.681416, 21.211287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.060463, 39.751827, 21.256622>,  <39.435322, 39.869179, 21.332182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.060463, 39.751827, 21.256622> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214778, -0.058351, -0.974918,
		0.275001, -0.954213, 0.117696,
		-0.937147, -0.293382, -0.188897,
		38.779320, 39.663815, 21.199953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.483704, 39.320637, 20.809023>,  <39.435322, 39.869179, 21.332182>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.483704, 39.320637, 20.809023> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.113403, 39.463287, 20.758734>,  <38.891224, 39.548878, 20.728561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.113403, 39.463287, 20.758734>,  <39.483704, 39.320637, 20.809023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.113403, 39.463287, 20.758734> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192901, 0.159432, -0.968179,
		-0.325237, -0.920542, -0.216388,
		-0.925748, 0.356629, -0.125721,
		38.835678, 39.570274, 20.721018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.078411, 38.819622, 20.369438>,  <39.483704, 39.320637, 20.809023>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.078411, 38.819622, 20.369438> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.906525, 39.180573, 20.356371>,  <38.803394, 39.397141, 20.348530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.906525, 39.180573, 20.356371>,  <39.078411, 38.819622, 20.369438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.906525, 39.180573, 20.356371> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123114, 0.022709, -0.992133,
		-0.894532, -0.430356, -0.120853,
		-0.429715, 0.902373, -0.032669,
		38.777611, 39.451286, 20.346571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.374851, 38.398861, 20.902397>,  <39.078411, 38.819622, 20.369438>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.374851, 38.398861, 20.902397> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.166553, 38.213440, 20.615639>,  <39.041576, 38.102188, 20.443584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.166553, 38.213440, 20.615639>,  <39.374851, 38.398861, 20.902397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.166553, 38.213440, 20.615639> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355824, -0.645471, 0.675838,
		-0.776024, 0.607028, 0.171182,
		-0.520746, -0.463556, -0.716896,
		39.010330, 38.074375, 20.400570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.645897, 38.392086, 21.244125>,  <39.374851, 38.398861, 20.902397>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.645897, 38.392086, 21.244125> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.675571, 38.111599, 20.960495>,  <38.693375, 37.943306, 20.790318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.675571, 38.111599, 20.960495>,  <38.645897, 38.392086, 21.244125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.675571, 38.111599, 20.960495> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390891, -0.674583, 0.626212,
		-0.917443, 0.230717, -0.324144,
		0.074184, -0.701218, -0.709076,
		38.697826, 37.901234, 20.747772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.996651, 38.009773, 21.204453>,  <38.645897, 38.392086, 21.244125>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.996651, 38.009773, 21.204453> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.277054, 37.760639, 21.065506>,  <38.445297, 37.611156, 20.982138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.277054, 37.760639, 21.065506>,  <37.996651, 38.009773, 21.204453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.277054, 37.760639, 21.065506> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320759, -0.710400, 0.626455,
		-0.636946, -0.327730, -0.697777,
		0.701009, -0.622836, -0.347364,
		38.487354, 37.573788, 20.961296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.665512, 37.364239, 21.210094>,  <37.996651, 38.009773, 21.204453>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.665512, 37.364239, 21.210094> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.055088, 37.277153, 21.184641>,  <38.288834, 37.224903, 21.169369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.055088, 37.277153, 21.184641>,  <37.665512, 37.364239, 21.210094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.055088, 37.277153, 21.184641> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119903, -0.732312, 0.670330,
		-0.192538, -0.645229, -0.739329,
		0.973937, -0.217712, -0.063633,
		38.347267, 37.211838, 21.165550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.660736, 36.654133, 21.302523>,  <37.665512, 37.364239, 21.210094>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.660736, 36.654133, 21.302523> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.029705, 36.777054, 21.396070>,  <38.251087, 36.850807, 21.452198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.029705, 36.777054, 21.396070>,  <37.660736, 36.654133, 21.302523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.029705, 36.777054, 21.396070> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030846, -0.662295, 0.748608,
		0.384942, -0.683321, -0.620397,
		0.922425, 0.307307, 0.233868,
		38.306431, 36.869247, 21.466230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.954433, 36.174702, 21.589256>,  <37.660736, 36.654133, 21.302523>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.954433, 36.174702, 21.589256> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.234921, 36.431881, 21.712488>,  <38.403214, 36.586189, 21.786427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.234921, 36.431881, 21.712488>,  <37.954433, 36.174702, 21.589256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.234921, 36.431881, 21.712488> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099916, -0.516481, 0.850450,
		0.705908, -0.565571, -0.426408,
		0.701221, 0.642944, 0.308078,
		38.445286, 36.624763, 21.804911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.259708, 35.742878, 21.973043>,  <37.954433, 36.174702, 21.589256>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.259708, 35.742878, 21.973043> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.405975, 36.099876, 22.078678>,  <38.493736, 36.314075, 22.142059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.405975, 36.099876, 22.078678>,  <38.259708, 35.742878, 21.973043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.405975, 36.099876, 22.078678> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207556, -0.354785, 0.911618,
		0.907307, -0.278539, -0.314977,
		0.365671, 0.892493, 0.264086,
		38.515678, 36.367622, 22.157904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.856617, 35.659286, 22.267820>,  <38.259708, 35.742878, 21.973043>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.856617, 35.659286, 22.267820> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.696342, 35.991150, 22.423317>,  <38.600178, 36.190269, 22.516615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.696342, 35.991150, 22.423317>,  <38.856617, 35.659286, 22.267820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.696342, 35.991150, 22.423317> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119048, -0.373550, 0.919939,
		0.908449, 0.414883, 0.050907,
		-0.400684, 0.829658, 0.388743,
		38.576138, 36.240047, 22.539940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.572655, 35.572723, 22.280937>,  <38.856617, 35.659286, 22.267820>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.572655, 35.572723, 22.280937> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.869774, 35.307568, 22.318506>,  <40.048046, 35.148476, 22.341047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.869774, 35.307568, 22.318506>,  <39.572655, 35.572723, 22.280937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.869774, 35.307568, 22.318506> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065576, -0.067575, -0.995557,
		0.666291, 0.745661, -0.006725,
		0.742802, -0.662890, 0.093922,
		40.092613, 35.108700, 22.346684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.067589, 35.816757, 21.864462>,  <39.572655, 35.572723, 22.280937>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.067589, 35.816757, 21.864462> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.123665, 35.422947, 21.906504>,  <40.157310, 35.186661, 21.931728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.123665, 35.422947, 21.906504>,  <40.067589, 35.816757, 21.864462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.123665, 35.422947, 21.906504> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091212, -0.092860, -0.991492,
		0.985914, 0.148583, 0.076783,
		0.140189, -0.984530, 0.105105,
		40.165722, 35.127586, 21.938036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.643799, 35.680088, 21.587736>,  <40.067589, 35.816757, 21.864462>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.643799, 35.680088, 21.587736> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.467422, 35.321323, 21.574371>,  <40.361595, 35.106064, 21.566353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.467422, 35.321323, 21.574371>,  <40.643799, 35.680088, 21.587736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.467422, 35.321323, 21.574371> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099762, -0.011982, -0.994939,
		0.891973, -0.442046, 0.094761,
		-0.440945, -0.896912, -0.033412,
		40.335140, 35.052250, 21.564348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.068932, 35.237625, 21.284664>,  <40.643799, 35.680088, 21.587736>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.068932, 35.237625, 21.284664> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.709949, 35.068016, 21.236042>,  <40.494560, 34.966251, 21.206869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.709949, 35.068016, 21.236042>,  <41.068932, 35.237625, 21.284664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.709949, 35.068016, 21.236042> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164092, -0.065144, -0.984292,
		0.409442, -0.903306, 0.128042,
		-0.897458, -0.424021, -0.121553,
		40.440712, 34.940811, 21.199575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.152039, 34.676918, 20.856943>,  <41.068932, 35.237625, 21.284664>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.152039, 34.676918, 20.856943> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.769882, 34.775940, 20.792511>,  <40.540588, 34.835354, 20.753851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.769882, 34.775940, 20.792511>,  <41.152039, 34.676918, 20.856943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.769882, 34.775940, 20.792511> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152839, -0.052297, -0.986866,
		-0.252724, -0.967462, 0.012128,
		-0.955390, 0.247552, -0.161082,
		40.483265, 34.850204, 20.744186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.828651, 34.144848, 20.465982>,  <41.152039, 34.676918, 20.856943>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.828651, 34.144848, 20.465982> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.616627, 34.479462, 20.410492>,  <40.489410, 34.680229, 20.377197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.616627, 34.479462, 20.410492>,  <40.828651, 34.144848, 20.465982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.616627, 34.479462, 20.410492> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069247, -0.120352, -0.990313,
		-0.845126, -0.534535, 0.005867,
		-0.530063, 0.836533, -0.138727,
		40.457607, 34.730423, 20.368874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.374668, 33.959206, 20.042276>,  <40.828651, 34.144848, 20.465982>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.374668, 33.959206, 20.042276> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.351086, 34.355042, 19.989758>,  <40.336937, 34.592545, 19.958246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.351086, 34.355042, 19.989758>,  <40.374668, 33.959206, 20.042276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.351086, 34.355042, 19.989758> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036548, -0.129300, -0.990932,
		-0.997591, -0.063217, -0.028545,
		-0.058953, 0.989588, -0.131299,
		40.333401, 34.651917, 19.950367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.024464, 33.969784, 19.514347>,  <40.374668, 33.959206, 20.042276>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.024464, 33.969784, 19.514347> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.212498, 34.322292, 19.533854>,  <40.325317, 34.533798, 19.545557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.212498, 34.322292, 19.533854>,  <40.024464, 33.969784, 19.514347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.212498, 34.322292, 19.533854> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171055, -0.036763, -0.984575,
		-0.865886, 0.471177, -0.168028,
		0.470087, 0.881272, 0.048765,
		40.353523, 34.586674, 19.548483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.724972, 34.371544, 18.955091>,  <40.024464, 33.969784, 19.514347>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.724972, 34.371544, 18.955091> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.073570, 34.534531, 19.064245>,  <40.282730, 34.632320, 19.129738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.073570, 34.534531, 19.064245>,  <39.724972, 34.371544, 18.955091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.073570, 34.534531, 19.064245> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143256, 0.320654, -0.936300,
		-0.469011, 0.855075, 0.221077,
		0.871497, 0.407465, 0.272885,
		40.335018, 34.656769, 19.146111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.596092, 32.580456, 35.424110> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.918022, 32.817554, 35.412060>,  <39.111179, 32.959812, 35.404831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.918022, 32.817554, 35.412060>,  <38.596092, 32.580456, 35.424110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.918022, 32.817554, 35.412060> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048652, 0.015305, -0.998699,
		-0.591513, 0.805244, 0.041156,
		0.804826, 0.592746, -0.030124,
		39.159470, 32.995377, 35.403023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.407787, 33.324932, 35.228172>,  <38.596092, 32.580456, 35.424110>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.407787, 33.324932, 35.228172> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.794514, 33.282883, 35.135033>,  <39.026550, 33.257652, 35.079147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.794514, 33.282883, 35.135033>,  <38.407787, 33.324932, 35.228172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.794514, 33.282883, 35.135033> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188331, 0.322608, -0.927607,
		0.172631, 0.940677, 0.292105,
		0.966814, -0.105121, -0.232851,
		39.084557, 33.251347, 35.065178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.614429, 33.963223, 34.832718>,  <38.407787, 33.324932, 35.228172>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.614429, 33.963223, 34.832718> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.903675, 33.705658, 34.732723>,  <39.077221, 33.551121, 34.672726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.903675, 33.705658, 34.732723>,  <38.614429, 33.963223, 34.832718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.903675, 33.705658, 34.732723> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053698, 0.308409, -0.949737,
		0.688642, 0.700188, 0.188437,
		0.723111, -0.643910, -0.249982,
		39.120609, 33.512486, 34.657730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.845039, 34.283226, 34.214645>,  <38.614429, 33.963223, 34.832718>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.845039, 34.283226, 34.214645> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.009441, 33.918861, 34.200142>,  <39.108082, 33.700241, 34.191441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.009441, 33.918861, 34.200142>,  <38.845039, 34.283226, 34.214645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.009441, 33.918861, 34.200142> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089795, -0.000871, -0.995960,
		0.907199, 0.412603, -0.082153,
		0.411008, -0.910910, -0.036260,
		39.132744, 33.645588, 34.189262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.468895, 34.250538, 33.695171>,  <38.845039, 34.283226, 34.214645>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.468895, 34.250538, 33.695171> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.349758, 33.869671, 33.722515>,  <39.278275, 33.641151, 33.738922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.349758, 33.869671, 33.722515>,  <39.468895, 34.250538, 33.695171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.349758, 33.869671, 33.722515> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010204, -0.074782, -0.997148,
		0.954561, -0.296295, 0.031989,
		-0.297842, -0.952165, 0.068360,
		39.260406, 33.584023, 33.743023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.040699, 33.855675, 33.355206>,  <39.468895, 34.250538, 33.695171>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.040699, 33.855675, 33.355206> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.709785, 33.631176, 33.345413>,  <39.511238, 33.496475, 33.339539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.709785, 33.631176, 33.345413>,  <40.040699, 33.855675, 33.355206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.709785, 33.631176, 33.345413> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080305, -0.075016, -0.993943,
		0.556016, -0.824239, 0.107131,
		-0.827283, -0.561252, -0.024481,
		39.461601, 33.462799, 33.338070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.099442, 33.444134, 32.792961>,  <40.040699, 33.855675, 33.355206>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.099442, 33.444134, 32.792961> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.705292, 33.418346, 32.856052>,  <39.468803, 33.402874, 32.893909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.705292, 33.418346, 32.856052>,  <40.099442, 33.444134, 32.792961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.705292, 33.418346, 32.856052> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149702, -0.114644, -0.982062,
		0.081398, -0.991312, 0.103316,
		-0.985375, -0.064472, 0.157733,
		39.409679, 33.399006, 32.903374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.915314, 32.924305, 32.396313>,  <40.099442, 33.444134, 32.792961>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.915314, 32.924305, 32.396313> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.582893, 33.142399, 32.440273>,  <39.383442, 33.273254, 32.466648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.582893, 33.142399, 32.440273>,  <39.915314, 32.924305, 32.396313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.582893, 33.142399, 32.440273> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172669, -0.065084, -0.982827,
		-0.528720, -0.835752, 0.148233,
		-0.831048, 0.545236, 0.109897,
		39.333580, 33.305969, 32.473244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.301617, 32.480663, 32.087551>,  <39.915314, 32.924305, 32.396313>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.301617, 32.480663, 32.087551> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.216373, 32.871307, 32.098988>,  <39.165226, 33.105694, 32.105850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.216373, 32.871307, 32.098988>,  <39.301617, 32.480663, 32.087551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.216373, 32.871307, 32.098988> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430894, -0.067684, -0.899860,
		-0.876877, -0.204091, 0.435240,
		-0.213112, 0.976609, 0.028592,
		39.152439, 33.164291, 32.107567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.741089, 32.475281, 31.666756>,  <39.301617, 32.480663, 32.087551>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.741089, 32.475281, 31.666756> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.855972, 32.856701, 31.703094>,  <38.924904, 33.085552, 31.724897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.855972, 32.856701, 31.703094>,  <38.741089, 32.475281, 31.666756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.855972, 32.856701, 31.703094> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123002, 0.130771, -0.983753,
		-0.949938, 0.271367, 0.154847,
		0.287208, 0.953551, 0.090846,
		38.942135, 33.142765, 31.730349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.228085, 32.954739, 31.436478>,  <38.741089, 32.475281, 31.666756>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.228085, 32.954739, 31.436478> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.571033, 33.157742, 31.402187>,  <38.776802, 33.279541, 31.381613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.571033, 33.157742, 31.402187>,  <38.228085, 32.954739, 31.436478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.571033, 33.157742, 31.402187> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142630, 0.074235, -0.986988,
		-0.494537, 0.858445, 0.136032,
		0.857374, 0.507505, -0.085728,
		38.828247, 33.309994, 31.376469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.041210, 33.473827, 30.929234>,  <38.228085, 32.954739, 31.436478>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.041210, 33.473827, 30.929234> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.439400, 33.507748, 30.912064>,  <38.678314, 33.528099, 30.901762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.439400, 33.507748, 30.912064>,  <38.041210, 33.473827, 30.929234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.439400, 33.507748, 30.912064> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043184, 0.001220, -0.999066,
		-0.084673, 0.996397, 0.004876,
		0.995473, 0.084805, -0.042925,
		38.738041, 33.533188, 30.899187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.418453, 34.000000, 31.055891>,  <38.041210, 33.473827, 30.929234>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.418453, 34.000000, 31.055891> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.073616, 34.119308, 30.892019>,  <36.866714, 34.190891, 30.793695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.073616, 34.119308, 30.892019>,  <37.418453, 34.000000, 31.055891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.073616, 34.119308, 30.892019> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484969, -0.251105, 0.837706,
		0.146988, 0.920860, 0.361126,
		-0.862090, 0.298267, -0.409680,
		36.814987, 34.208790, 30.769115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.138626, 34.173473, 31.583513>,  <37.418453, 34.000000, 31.055891>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.138626, 34.173473, 31.583513> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.837070, 34.158775, 31.321123>,  <36.656136, 34.149956, 31.163689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.837070, 34.158775, 31.321123>,  <37.138626, 34.173473, 31.583513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.837070, 34.158775, 31.321123> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646401, -0.137163, 0.750568,
		-0.117553, 0.989867, 0.079656,
		-0.753888, -0.036742, -0.655974,
		36.610905, 34.147755, 31.124331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.679550, 34.818512, 31.675850>,  <37.138626, 34.173473, 31.583513>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.679550, 34.818512, 31.675850> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.463650, 34.524673, 31.511393>,  <36.334110, 34.348370, 31.412718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.463650, 34.524673, 31.511393>,  <36.679550, 34.818512, 31.675850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.463650, 34.524673, 31.511393> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697779, 0.117192, 0.706661,
		-0.470926, 0.668310, -0.575839,
		-0.539752, -0.734594, -0.411144,
		36.301723, 34.304295, 31.388050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.979301, 35.131954, 31.527613>,  <36.679550, 34.818512, 31.675850>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.979301, 35.131954, 31.527613> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.928223, 34.735596, 31.510551>,  <35.897575, 34.497780, 31.500315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.928223, 34.735596, 31.510551>,  <35.979301, 35.131954, 31.527613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.928223, 34.735596, 31.510551> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752583, 0.068795, 0.654894,
		-0.645997, 0.115727, -0.754516,
		-0.127696, -0.990896, -0.042653,
		35.889915, 34.438328, 31.497755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.255226, 35.030510, 31.351231>,  <35.979301, 35.131954, 31.527613>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.255226, 35.030510, 31.351231> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.404682, 34.694725, 31.509060>,  <35.494354, 34.493252, 31.603758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.404682, 34.694725, 31.509060>,  <35.255226, 35.030510, 31.351231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.404682, 34.694725, 31.509060> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728268, -0.002040, 0.685290,
		-0.574472, -0.543409, -0.612118,
		0.373641, -0.839466, 0.394575,
		35.516773, 34.442886, 31.627432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.676876, 34.618465, 31.464664>,  <35.255226, 35.030510, 31.351231>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.676876, 34.618465, 31.464664> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.951450, 34.455101, 31.705332>,  <35.116196, 34.357082, 31.849731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.951450, 34.455101, 31.705332>,  <34.676876, 34.618465, 31.464664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.951450, 34.455101, 31.705332> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675692, -0.052409, 0.735318,
		-0.268780, -0.911292, -0.311937,
		0.686438, -0.408413, 0.601666,
		35.157383, 34.332577, 31.885832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.328800, 34.132713, 31.817924>,  <34.676876, 34.618465, 31.464664>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.328800, 34.132713, 31.817924> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.638706, 34.191338, 32.063934>,  <34.824650, 34.226513, 32.211540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.638706, 34.191338, 32.063934>,  <34.328800, 34.132713, 31.817924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.638706, 34.191338, 32.063934> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620596, -0.009585, 0.784072,
		0.120811, -0.989155, 0.083531,
		0.774768, 0.146564, 0.615023,
		34.871136, 34.235306, 32.248440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.267986, 33.668957, 32.356251>,  <34.328800, 34.132713, 31.817924>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.267986, 33.668957, 32.356251> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.512028, 33.942825, 32.515751>,  <34.658451, 34.107147, 32.611450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.512028, 33.942825, 32.515751>,  <34.267986, 33.668957, 32.356251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.512028, 33.942825, 32.515751> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473244, -0.088742, 0.876450,
		0.635463, -0.723433, 0.269873,
		0.610104, 0.684667, 0.398753,
		34.695061, 34.148224, 32.635376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.249199, 33.552330, 33.025681>,  <34.267986, 33.668957, 32.356251>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.249199, 33.552330, 33.025681> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.452065, 33.893154, 33.077492>,  <34.573784, 34.097649, 33.108578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.452065, 33.893154, 33.077492>,  <34.249199, 33.552330, 33.025681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.452065, 33.893154, 33.077492> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502301, 0.170094, 0.847798,
		0.700344, -0.495033, 0.514256,
		0.507160, 0.852062, 0.129531,
		34.604214, 34.148773, 33.116352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.481522, 33.548676, 33.697987>,  <34.249199, 33.552330, 33.025681>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.481522, 33.548676, 33.697987> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.460438, 33.939011, 33.613174>,  <34.447788, 34.173214, 33.562286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.460438, 33.939011, 33.613174>,  <34.481522, 33.548676, 33.697987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.460438, 33.939011, 33.613174> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465183, 0.163884, 0.869912,
		0.883644, 0.144487, 0.445306,
		-0.052712, 0.975841, -0.212028,
		34.444626, 34.231762, 33.549564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.881813, 33.925888, 34.265747>,  <34.481522, 33.548676, 33.697987>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.881813, 33.925888, 34.265747> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.605793, 34.154781, 34.088486>,  <34.440182, 34.292118, 33.982128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.605793, 34.154781, 34.088486>,  <34.881813, 33.925888, 34.265747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.605793, 34.154781, 34.088486> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382349, 0.231662, 0.894507,
		0.614530, 0.786689, 0.058936,
		-0.690046, 0.572235, -0.443153,
		34.398781, 34.326450, 33.955540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.777077, 34.356697, 34.831600>,  <34.881813, 33.925888, 34.265747>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.777077, 34.356697, 34.831600> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.483963, 34.449680, 34.575790>,  <34.308094, 34.505470, 34.422302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.483963, 34.449680, 34.575790>,  <34.777077, 34.356697, 34.831600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.483963, 34.449680, 34.575790> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606978, 0.201533, 0.768740,
		0.307587, 0.951497, -0.006582,
		-0.732781, 0.232459, -0.639527,
		34.264130, 34.519417, 34.383934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.578358, 35.071018, 34.975697>,  <34.777077, 34.356697, 34.831600>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.578358, 35.071018, 34.975697> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.271294, 34.887226, 34.797001>,  <34.087055, 34.776951, 34.689785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.271294, 34.887226, 34.797001>,  <34.578358, 35.071018, 34.975697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.271294, 34.887226, 34.797001> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533090, 0.070938, 0.843079,
		-0.355691, 0.885348, -0.299402,
		-0.767658, -0.459484, -0.446739,
		34.040997, 34.749382, 34.662979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.038605, 35.549850, 35.225956>,  <34.578358, 35.071018, 34.975697>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.038605, 35.549850, 35.225956> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.897839, 35.184566, 35.143780>,  <33.813377, 34.965397, 35.094475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.897839, 35.184566, 35.143780>,  <34.038605, 35.549850, 35.225956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.897839, 35.184566, 35.143780> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531258, 0.014157, 0.847092,
		-0.770663, 0.407247, -0.490131,
		-0.351914, -0.913208, -0.205444,
		33.792263, 34.910603, 35.082146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.520416, 35.968727, 34.870728>,  <34.038605, 35.549850, 35.225956>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.520416, 35.968727, 34.870728> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.334991, 36.314819, 34.947128>,  <34.223736, 36.522476, 34.992970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.334991, 36.314819, 34.947128>,  <34.520416, 35.968727, 34.870728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.334991, 36.314819, 34.947128> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203621, 0.313815, -0.927393,
		-0.862349, -0.391015, -0.321653,
		-0.463564, 0.865232, 0.190999,
		34.195923, 36.574390, 35.004429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.936558, 36.092346, 34.491302>,  <34.520416, 35.968727, 34.870728>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.936558, 36.092346, 34.491302> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.096558, 36.457260, 34.526501>,  <34.192558, 36.676208, 34.547619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.096558, 36.457260, 34.526501>,  <33.936558, 36.092346, 34.491302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.096558, 36.457260, 34.526501> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070284, 0.065191, -0.995395,
		-0.913817, 0.404340, -0.038043,
		0.399998, 0.912283, 0.087991,
		34.216557, 36.730946, 34.552898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.472515, 36.515476, 34.147041>,  <33.936558, 36.092346, 34.491302>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.472515, 36.515476, 34.147041> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.838444, 36.676804, 34.155407>,  <34.058002, 36.773598, 34.160427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.838444, 36.676804, 34.155407>,  <33.472515, 36.515476, 34.147041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.838444, 36.676804, 34.155407> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039155, 0.140129, -0.989359,
		-0.401953, 0.904269, 0.143985,
		0.914823, 0.403314, 0.020918,
		34.112892, 36.797798, 34.161682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.555927, 37.289055, 33.991295>,  <33.472515, 36.515476, 34.147041>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.555927, 37.289055, 33.991295> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.898552, 37.099537, 33.909504>,  <34.104126, 36.985825, 33.860428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.898552, 37.099537, 33.909504>,  <33.555927, 37.289055, 33.991295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.898552, 37.099537, 33.909504> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100309, 0.541559, -0.834657,
		0.506197, 0.694426, 0.511407,
		0.856565, -0.473799, -0.204478,
		34.155521, 36.957397, 33.848160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.017544, 37.850189, 33.782902>,  <33.555927, 37.289055, 33.991295>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.017544, 37.850189, 33.782902> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.171257, 37.511974, 33.634636>,  <34.263485, 37.309044, 33.545677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.171257, 37.511974, 33.634636>,  <34.017544, 37.850189, 33.782902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.171257, 37.511974, 33.634636> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077177, 0.429511, -0.899758,
		0.919985, 0.317152, 0.230308,
		0.384280, -0.845538, -0.370667,
		34.286541, 37.258312, 33.523438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.543835, 38.061371, 33.364475>,  <34.017544, 37.850189, 33.782902>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.543835, 38.061371, 33.364475> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.485458, 37.677559, 33.268147>,  <34.450432, 37.447269, 33.210350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.485458, 37.677559, 33.268147>,  <34.543835, 38.061371, 33.364475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.485458, 37.677559, 33.268147> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273695, 0.194769, -0.941890,
		0.950681, -0.203369, 0.234195,
		-0.145937, -0.959534, -0.240824,
		34.441677, 37.389698, 33.195900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.129620, 37.763279, 33.012684>,  <34.543835, 38.061371, 33.364475>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.129620, 37.763279, 33.012684> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.825481, 37.525856, 32.907188>,  <34.642998, 37.383400, 32.843891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.825481, 37.525856, 32.907188>,  <35.129620, 37.763279, 33.012684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.825481, 37.525856, 32.907188> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235172, 0.126914, -0.963632,
		0.605446, -0.794719, 0.043090,
		-0.760348, -0.593561, -0.263736,
		34.597378, 37.347786, 32.828068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.423012, 37.268196, 32.392044>,  <35.129620, 37.763279, 33.012684>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.423012, 37.268196, 32.392044> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.024052, 37.249821, 32.369858>,  <34.784676, 37.238796, 32.356544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.024052, 37.249821, 32.369858>,  <35.423012, 37.268196, 32.392044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.024052, 37.249821, 32.369858> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045007, 0.203625, -0.978014,
		0.056222, -0.977971, -0.201029,
		-0.997404, -0.045939, -0.055464,
		34.724831, 37.236038, 32.353218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.244179, 36.810989, 31.818989>,  <35.423012, 37.268196, 32.392044>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.244179, 36.810989, 31.818989> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.936577, 37.060478, 31.874981>,  <34.752014, 37.210171, 31.908575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.936577, 37.060478, 31.874981>,  <35.244179, 36.810989, 31.818989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.936577, 37.060478, 31.874981> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007256, 0.227480, -0.973756,
		-0.639197, -0.747811, -0.179459,
		-0.769009, 0.623724, 0.139978,
		34.705875, 37.247597, 31.916975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.867802, 36.636990, 31.287426>,  <35.244179, 36.810989, 31.818989>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.867802, 36.636990, 31.287426> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.723843, 36.990990, 31.405575>,  <34.637466, 37.203388, 31.476463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.723843, 36.990990, 31.405575>,  <34.867802, 36.636990, 31.287426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.723843, 36.990990, 31.405575> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005762, 0.318686, -0.947843,
		-0.932972, -0.339429, -0.119795,
		-0.359902, 0.885001, 0.295370,
		34.615871, 37.256489, 31.494186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.322315, 36.653568, 30.852898>,  <34.867802, 36.636990, 31.287426>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.322315, 36.653568, 30.852898> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.373180, 37.029896, 30.978556>,  <34.403702, 37.255692, 31.053951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.373180, 37.029896, 30.978556>,  <34.322315, 36.653568, 30.852898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.373180, 37.029896, 30.978556> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251855, 0.275709, -0.927660,
		-0.959374, 0.197085, -0.201890,
		0.127165, 0.940820, 0.314145,
		34.411331, 37.312141, 31.072800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.972893, 37.028484, 30.376257>,  <34.322315, 36.653568, 30.852898>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.972893, 37.028484, 30.376257> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.239834, 37.275818, 30.542297>,  <34.399998, 37.424217, 30.641922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.239834, 37.275818, 30.542297>,  <33.972893, 37.028484, 30.376257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.239834, 37.275818, 30.542297> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143513, 0.440156, -0.886378,
		-0.730786, 0.651096, 0.204999,
		0.667349, 0.618333, 0.415101,
		34.440037, 37.461319, 30.666828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.875988, 37.725483, 30.079935>,  <33.972893, 37.028484, 30.376257>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.875988, 37.725483, 30.079935> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.241173, 37.749508, 30.241375>,  <34.460285, 37.763924, 30.338240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.241173, 37.749508, 30.241375>,  <33.875988, 37.725483, 30.079935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.241173, 37.749508, 30.241375> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359579, 0.349127, -0.865340,
		-0.192878, 0.935149, 0.297144,
		0.912963, 0.060058, 0.403599,
		34.515060, 37.767525, 30.362455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.184273, 38.249668, 29.655029>,  <33.875988, 37.725483, 30.079935>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.184273, 38.249668, 29.655029> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.510662, 38.117561, 29.844810>,  <34.706497, 38.038296, 29.958679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.510662, 38.117561, 29.844810>,  <34.184273, 38.249668, 29.655029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.510662, 38.117561, 29.844810> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577768, 0.438762, -0.688239,
		0.019129, 0.835711, 0.548836,
		0.815977, -0.330265, 0.474454,
		34.755455, 38.018482, 29.987146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.732048, 38.854347, 29.624119>,  <34.184273, 38.249668, 29.655029>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.732048, 38.854347, 29.624119> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.904263, 38.497124, 29.676399>,  <35.007591, 38.282791, 29.707767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.904263, 38.497124, 29.676399>,  <34.732048, 38.854347, 29.624119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.904263, 38.497124, 29.676399> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725672, 0.256401, -0.638482,
		0.536689, 0.369739, 0.758458,
		0.430541, -0.893057, 0.130702,
		35.033424, 38.229206, 29.715611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.375343, 39.079041, 29.664188>,  <34.732048, 38.854347, 29.624119>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.375343, 39.079041, 29.664188> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.396935, 38.691879, 29.566002>,  <35.409889, 38.459583, 29.507090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.396935, 38.691879, 29.566002>,  <35.375343, 39.079041, 29.664188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.396935, 38.691879, 29.566002> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531756, 0.235933, -0.813370,
		0.845176, -0.086624, 0.527422,
		0.053979, -0.967901, -0.245468,
		35.413128, 38.401508, 29.492361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.100918, 38.886105, 29.717812>,  <35.375343, 39.079041, 29.664188>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.100918, 38.886105, 29.717812> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.908272, 38.651249, 29.457561>,  <35.792686, 38.510334, 29.301411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.908272, 38.651249, 29.457561>,  <36.100918, 38.886105, 29.717812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.908272, 38.651249, 29.457561> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631918, 0.281741, -0.722012,
		0.607232, -0.758871, 0.235337,
		-0.481610, -0.587143, -0.650627,
		35.763790, 38.475105, 29.262373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.610462, 38.652985, 29.358677>,  <36.100918, 38.886105, 29.717812>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.610462, 38.652985, 29.358677> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.297085, 38.581326, 29.120644>,  <36.109058, 38.538330, 28.977823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.297085, 38.581326, 29.120644>,  <36.610462, 38.652985, 29.358677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.297085, 38.581326, 29.120644> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556509, 0.223967, -0.800085,
		0.276612, -0.957990, -0.075769,
		-0.783444, -0.179147, -0.595082,
		36.062050, 38.527580, 28.942120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.846321, 38.129951, 28.816460>,  <36.610462, 38.652985, 29.358677>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.846321, 38.129951, 28.816460> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.508640, 38.308487, 28.697731>,  <36.306030, 38.415607, 28.626493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.508640, 38.308487, 28.697731>,  <36.846321, 38.129951, 28.816460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.508640, 38.308487, 28.697731> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443057, 0.269358, -0.855071,
		-0.301700, -0.853363, -0.425146,
		-0.844202, 0.446339, -0.296823,
		36.255379, 38.442390, 28.608685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.830826, 37.877193, 28.154099>,  <36.846321, 38.129951, 28.816460>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.830826, 37.877193, 28.154099> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.585590, 38.193123, 28.161112>,  <36.438450, 38.382679, 28.165319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.585590, 38.193123, 28.161112>,  <36.830826, 37.877193, 28.154099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.585590, 38.193123, 28.161112> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331593, 0.277410, -0.901715,
		-0.717056, -0.547017, -0.431975,
		-0.613088, 0.789820, 0.017532,
		36.401665, 38.430069, 28.166370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.632721, 37.977818, 27.438643>,  <36.830826, 37.877193, 28.154099>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.632721, 37.977818, 27.438643> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.543098, 38.341785, 27.578270>,  <36.489323, 38.560165, 27.662046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.543098, 38.341785, 27.578270>,  <36.632721, 37.977818, 27.438643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.543098, 38.341785, 27.578270> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323042, 0.407268, -0.854270,
		-0.919479, -0.078642, -0.385193,
		-0.224058, 0.909916, 0.349070,
		36.475880, 38.614761, 27.682991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.353657, 38.239876, 26.937988>,  <36.632721, 37.977818, 27.438643>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.353657, 38.239876, 26.937988> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.470207, 38.570286, 27.130981>,  <36.540138, 38.768532, 27.246777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.470207, 38.570286, 27.130981>,  <36.353657, 38.239876, 26.937988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.470207, 38.570286, 27.130981> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382446, 0.361716, -0.850233,
		-0.876831, 0.432263, -0.210512,
		0.291379, 0.826021, 0.482481,
		36.557621, 38.818092, 27.275726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.212624, 38.843697, 26.523907>,  <36.353657, 38.239876, 26.937988>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.212624, 38.843697, 26.523907> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.481201, 39.008163, 26.770519>,  <36.642345, 39.106842, 26.918488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.481201, 39.008163, 26.770519>,  <36.212624, 38.843697, 26.523907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.481201, 39.008163, 26.770519> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456246, 0.426229, -0.781133,
		-0.583959, 0.805774, 0.098594,
		0.671440, 0.411166, 0.616531,
		36.682632, 39.131512, 26.955479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.324581, 39.509636, 26.322453>,  <36.212624, 38.843697, 26.523907>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.324581, 39.509636, 26.322453> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.657314, 39.464642, 26.539856>,  <36.856953, 39.437645, 26.670298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.657314, 39.464642, 26.539856>,  <36.324581, 39.509636, 26.322453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.657314, 39.464642, 26.539856> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518114, 0.508527, -0.687720,
		-0.199032, 0.853667, 0.481289,
		0.831832, -0.112484, 0.543510,
		36.906864, 39.430897, 26.702909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.661327, 40.213814, 26.290339>,  <36.324581, 39.509636, 26.322453>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.661327, 40.213814, 26.290339> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.919514, 39.922966, 26.383867>,  <37.074425, 39.748459, 26.439985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.919514, 39.922966, 26.383867>,  <36.661327, 40.213814, 26.290339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.919514, 39.922966, 26.383867> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607216, 0.302803, -0.734574,
		0.463321, 0.616122, 0.636967,
		0.645463, -0.727120, 0.233824,
		37.113152, 39.704830, 26.454014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.380424, 40.508530, 26.199240>,  <36.661327, 40.213814, 26.290339>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.380424, 40.508530, 26.199240> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.448772, 40.114571, 26.188015>,  <37.489780, 39.878197, 26.181280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.448772, 40.114571, 26.188015>,  <37.380424, 40.508530, 26.199240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.448772, 40.114571, 26.188015> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597495, 0.126221, -0.791876,
		0.783456, 0.118542, 0.610037,
		0.170870, -0.984894, -0.028060,
		37.500034, 39.819103, 26.179598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.137791, 40.434311, 26.067455>,  <37.380424, 40.508530, 26.199240>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.137791, 40.434311, 26.067455> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.004692, 40.069916, 25.969988>,  <37.924835, 39.851276, 25.911509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.004692, 40.069916, 25.969988>,  <38.137791, 40.434311, 26.067455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.004692, 40.069916, 25.969988> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612477, -0.012301, -0.790393,
		0.717045, -0.412239, 0.562055,
		-0.332744, -0.910993, -0.243667,
		37.904869, 39.796619, 25.896887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.826790, 40.081268, 25.858751>,  <38.137791, 40.434311, 26.067455>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.826790, 40.081268, 25.858751> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.527668, 39.840851, 25.745947>,  <38.348194, 39.696602, 25.678265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.527668, 39.840851, 25.745947>,  <38.826790, 40.081268, 25.858751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.527668, 39.840851, 25.745947> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373402, -0.029538, -0.927199,
		0.548957, -0.798671, 0.246519,
		-0.747809, -0.601043, -0.282010,
		38.303326, 39.660538, 25.661345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.556881, 39.804329, 25.924173>,  <38.826790, 40.081268, 25.858751>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.556881, 39.804329, 25.924173> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.863411, 40.060951, 25.910629>,  <40.047329, 40.214924, 25.902502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.863411, 40.060951, 25.910629>,  <39.556881, 39.804329, 25.924173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.863411, 40.060951, 25.910629> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024778, 0.082180, 0.996310,
		0.641970, -0.762662, 0.078873,
		0.766330, 0.641555, -0.033860,
		40.093311, 40.253418, 25.900471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.125427, 39.493820, 26.220207>,  <39.556881, 39.804329, 25.924173>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.125427, 39.493820, 26.220207> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.160843, 39.891354, 26.246878>,  <40.182091, 40.129875, 26.262880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.160843, 39.891354, 26.246878>,  <40.125427, 39.493820, 26.220207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.160843, 39.891354, 26.246878> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021266, -0.068812, 0.997403,
		0.995845, -0.086892, -0.027227,
		0.088540, 0.993838, 0.066678,
		40.187405, 40.189507, 26.266882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.587635, 39.499634, 26.730742>,  <40.125427, 39.493820, 26.220207>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.587635, 39.499634, 26.730742> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.397877, 39.851257, 26.711918>,  <40.284023, 40.062229, 26.700624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.397877, 39.851257, 26.711918>,  <40.587635, 39.499634, 26.730742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.397877, 39.851257, 26.711918> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091801, 0.003765, 0.995770,
		0.875514, 0.476705, 0.078912,
		-0.474392, 0.879055, -0.047058,
		40.255558, 40.114975, 26.697800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.950584, 39.972553, 27.181257>,  <40.587635, 39.499634, 26.730742>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.950584, 39.972553, 27.181257> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.592304, 40.141884, 27.126829>,  <40.377335, 40.243484, 27.094173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.592304, 40.141884, 27.126829>,  <40.950584, 39.972553, 27.181257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.592304, 40.141884, 27.126829> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132965, 0.037016, 0.990429,
		0.424314, 0.905219, 0.023132,
		-0.895700, 0.423329, -0.136069,
		40.323593, 40.268883, 27.086008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.975166, 40.552948, 27.603859>,  <40.950584, 39.972553, 27.181257>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.975166, 40.552948, 27.603859> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.587402, 40.484024, 27.533949>,  <40.354744, 40.442669, 27.492002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.587402, 40.484024, 27.533949>,  <40.975166, 40.552948, 27.603859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.587402, 40.484024, 27.533949> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178261, 0.004849, 0.983971,
		-0.168699, 0.985031, -0.035416,
		-0.969414, -0.172308, -0.174775,
		40.296577, 40.432331, 27.481516>
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
