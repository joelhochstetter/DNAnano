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
	<22.813887, 17.102966, -1.706714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.548004, 17.346409, -1.880042>,  <22.388475, 17.492474, -1.984038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.548004, 17.346409, -1.880042>,  <22.813887, 17.102966, -1.706714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.548004, 17.346409, -1.880042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315272, 0.297324, 0.901222,
		0.677325, 0.735661, -0.005757,
		-0.664706, 0.608606, -0.433318,
		22.348593, 17.528990, -2.010037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.891352, 17.830193, -1.367472>,  <22.813887, 17.102966, -1.706714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.891352, 17.830193, -1.367472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.536144, 17.831177, -1.551394>,  <22.323021, 17.831768, -1.661746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.536144, 17.831177, -1.551394>,  <22.891352, 17.830193, -1.367472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.536144, 17.831177, -1.551394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384890, 0.543122, 0.746243,
		0.251566, 0.839650, -0.481355,
		-0.888017, 0.002461, -0.459804,
		22.269739, 17.831915, -1.689335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.661932, 18.501917, -1.499482>,  <22.891352, 17.830193, -1.367472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.661932, 18.501917, -1.499482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.324234, 18.288136, -1.483445>,  <22.121614, 18.159866, -1.473823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.324234, 18.288136, -1.483445>,  <22.661932, 18.501917, -1.499482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.324234, 18.288136, -1.483445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354777, 0.613354, 0.705641,
		-0.401724, 0.581511, -0.707434,
		-0.844246, -0.534454, 0.040092,
		22.070961, 18.127800, -1.471417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.907509, 18.932611, -1.571189>,  <22.661932, 18.501917, -1.499482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.907509, 18.932611, -1.571189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.904305, 18.609531, -1.335372>,  <21.902382, 18.415684, -1.193882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.904305, 18.609531, -1.335372>,  <21.907509, 18.932611, -1.571189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.904305, 18.609531, -1.335372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453905, 0.528261, 0.717573,
		-0.891014, -0.261848, -0.370850,
		-0.008011, -0.807698, 0.589542,
		21.901901, 18.367222, -1.158509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.242352, 18.639158, -1.348047>,  <21.907509, 18.932611, -1.571189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.242352, 18.639158, -1.348047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.502792, 18.585281, -1.049270>,  <21.659056, 18.552956, -0.870003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.502792, 18.585281, -1.049270>,  <21.242352, 18.639158, -1.348047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.502792, 18.585281, -1.049270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461732, 0.710781, 0.530655,
		-0.602388, -0.690398, 0.400598,
		0.651101, -0.134692, 0.746945,
		21.698122, 18.544874, -0.825186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.975147, 18.370983, -0.686811>,  <21.242352, 18.639158, -1.348047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.975147, 18.370983, -0.686811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.294033, 18.599434, -0.608571>,  <21.485365, 18.736504, -0.561627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.294033, 18.599434, -0.608571>,  <20.975147, 18.370983, -0.686811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.294033, 18.599434, -0.608571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557623, 0.572513, 0.601070,
		0.231304, -0.588254, 0.774890,
		0.797217, 0.571127, 0.195600,
		21.533197, 18.770771, -0.549891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.920771, 18.537857, 0.069899>,  <20.975147, 18.370983, -0.686811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.920771, 18.537857, 0.069899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.171467, 18.775845, -0.131382>,  <21.321884, 18.918636, -0.252150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.171467, 18.775845, -0.131382>,  <20.920771, 18.537857, 0.069899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.171467, 18.775845, -0.131382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435345, 0.802939, 0.407141,
		0.646276, -0.036106, 0.762249,
		0.626740, 0.594967, -0.503201,
		21.359489, 18.954334, -0.282342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.168348, 19.035646, 0.494650>,  <20.920771, 18.537857, 0.069899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.168348, 19.035646, 0.494650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.240135, 19.205219, 0.139556>,  <21.283207, 19.306963, -0.073500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.240135, 19.205219, 0.139556>,  <21.168348, 19.035646, 0.494650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.240135, 19.205219, 0.139556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269437, 0.889062, 0.370097,
		0.946148, 0.172769, 0.273778,
		0.179464, 0.423933, -0.887735,
		21.293974, 19.332399, -0.126765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.631962, 19.598192, 0.570451>,  <21.168348, 19.035646, 0.494650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.631962, 19.598192, 0.570451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.363991, 19.621780, 0.274418>,  <21.203209, 19.635933, 0.096798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.363991, 19.621780, 0.274418>,  <21.631962, 19.598192, 0.570451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.363991, 19.621780, 0.274418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384915, 0.824816, 0.414149,
		0.634853, 0.562318, -0.529868,
		-0.669927, 0.058970, -0.740082,
		21.163013, 19.639471, 0.052393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.640303, 20.302593, 0.245753>,  <21.631962, 19.598192, 0.570451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.640303, 20.302593, 0.245753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.283607, 20.142769, 0.160759>,  <21.069590, 20.046873, 0.109763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.283607, 20.142769, 0.160759>,  <21.640303, 20.302593, 0.245753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.283607, 20.142769, 0.160759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452004, 0.809406, 0.374906,
		0.022187, 0.430362, -0.902383,
		-0.891740, -0.399563, -0.212483,
		21.016085, 20.022900, 0.097014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.845758, 20.180571, 0.947452>,  <21.640303, 20.302593, 0.245753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.845758, 20.180571, 0.947452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.664604, 20.475479, 0.746922>,  <21.555912, 20.652424, 0.626603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.664604, 20.475479, 0.746922>,  <21.845758, 20.180571, 0.947452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.664604, 20.475479, 0.746922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476743, 0.675414, 0.562612,
		0.753400, 0.015795, -0.657373,
		-0.452885, 0.737270, -0.501326,
		21.528738, 20.696661, 0.596524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.177139, 20.749298, 0.962571>,  <21.845758, 20.180571, 0.947452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.177139, 20.749298, 0.962571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.820194, 20.918194, 0.898814>,  <21.606028, 21.019531, 0.860560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.820194, 20.918194, 0.898814>,  <22.177139, 20.749298, 0.962571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.820194, 20.918194, 0.898814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245104, 0.749941, 0.614420,
		0.378968, 0.509216, -0.772711,
		-0.892361, 0.422240, -0.159393,
		21.552486, 21.044867, 0.850996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.241529, 21.486565, 0.743690>,  <22.177139, 20.749298, 0.962571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.241529, 21.486565, 0.743690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.896393, 21.410824, 0.931158>,  <21.689312, 21.365379, 1.043639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.896393, 21.410824, 0.931158>,  <22.241529, 21.486565, 0.743690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.896393, 21.410824, 0.931158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142192, 0.798823, 0.584519,
		-0.485065, 0.570988, -0.662333,
		-0.862840, -0.189351, 0.468671,
		21.637541, 21.354019, 1.071759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.816936, 22.143595, 0.626060>,  <22.241529, 21.486565, 0.743690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.816936, 22.143595, 0.626060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.715313, 21.945400, 0.958312>,  <21.654339, 21.826483, 1.157663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.715313, 21.945400, 0.958312>,  <21.816936, 22.143595, 0.626060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.715313, 21.945400, 0.958312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236128, 0.801045, 0.550063,
		-0.937922, 0.335884, -0.086515,
		-0.254061, -0.495488, 0.830630,
		21.639095, 21.796755, 1.207500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.422638, 22.573315, 1.096939>,  <21.816936, 22.143595, 0.626060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.422638, 22.573315, 1.096939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.569756, 22.304337, 1.353858>,  <21.658026, 22.142950, 1.508010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.569756, 22.304337, 1.353858>,  <21.422638, 22.573315, 1.096939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.569756, 22.304337, 1.353858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082306, 0.664461, 0.742777,
		-0.926258, -0.326053, 0.189038,
		0.367793, -0.672444, 0.642298,
		21.680094, 22.102604, 1.546548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.059462, 22.554710, 1.690485>,  <21.422638, 22.573315, 1.096939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.059462, 22.554710, 1.690485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.432671, 22.451263, 1.790553>,  <21.656597, 22.389194, 1.850593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.432671, 22.451263, 1.790553>,  <21.059462, 22.554710, 1.690485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.432671, 22.451263, 1.790553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008594, 0.679054, 0.734038,
		-0.359713, -0.687024, 0.631351,
		0.933024, -0.258617, 0.250169,
		21.712578, 22.373678, 1.865603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.761745, 23.135839, 1.423079>,  <21.059462, 22.554710, 1.690485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.761745, 23.135839, 1.423079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.470154, 23.372089, 1.561500>,  <20.295198, 23.513840, 1.644553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.470154, 23.372089, 1.561500>,  <20.761745, 23.135839, 1.423079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.470154, 23.372089, 1.561500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102174, -0.593747, 0.798138,
		0.676867, 0.546469, 0.493176,
		-0.728980, 0.590623, 0.346053,
		20.251459, 23.549276, 1.665316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.887447, 23.436928, 2.051831>,  <20.761745, 23.135839, 1.423079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.887447, 23.436928, 2.051831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.488422, 23.463673, 2.043811>,  <20.249008, 23.479719, 2.038999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.488422, 23.463673, 2.043811>,  <20.887447, 23.436928, 2.051831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.488422, 23.463673, 2.043811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054359, -0.563902, 0.824051,
		0.043792, 0.823131, 0.566161,
		-0.997561, 0.066863, -0.020050,
		20.189154, 23.483732, 2.037796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.686760, 23.653818, 2.714053>,  <20.887447, 23.436928, 2.051831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.686760, 23.653818, 2.714053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.398701, 23.434105, 2.544502>,  <20.225864, 23.302277, 2.442771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.398701, 23.434105, 2.544502>,  <20.686760, 23.653818, 2.714053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.398701, 23.434105, 2.544502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000156, -0.611062, 0.791582,
		-0.693819, 0.569992, 0.440142,
		-0.720149, -0.549284, -0.423878,
		20.182655, 23.269320, 2.417338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.104263, 23.694407, 3.178254>,  <20.686760, 23.653818, 2.714053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.104263, 23.694407, 3.178254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.125553, 23.370445, 2.944595>,  <20.138327, 23.176069, 2.804400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.125553, 23.370445, 2.944595>,  <20.104263, 23.694407, 3.178254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.125553, 23.370445, 2.944595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128750, -0.585659, 0.800267,
		-0.990248, 0.032616, -0.135445,
		0.053224, -0.809901, -0.584147,
		20.141520, 23.127476, 2.769351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.479614, 23.300430, 3.180051>,  <20.104263, 23.694407, 3.178254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.479614, 23.300430, 3.180051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.839378, 23.134109, 3.126138>,  <20.055237, 23.034317, 3.093791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.839378, 23.134109, 3.126138>,  <19.479614, 23.300430, 3.180051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.839378, 23.134109, 3.126138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040531, -0.386362, 0.921456,
		-0.435223, -0.823304, -0.364351,
		0.899410, -0.415806, -0.134784,
		20.109201, 23.009369, 3.085704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.481266, 22.803926, 3.731485>,  <19.479614, 23.300430, 3.180051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.481266, 22.803926, 3.731485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.856487, 22.772923, 3.596404>,  <20.081621, 22.754320, 3.515355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.856487, 22.772923, 3.596404>,  <19.481266, 22.803926, 3.731485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.856487, 22.772923, 3.596404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278866, -0.409550, 0.868621,
		-0.205635, -0.908988, -0.362566,
		0.938056, -0.077512, -0.337704,
		20.137903, 22.749668, 3.495093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.798517, 22.127159, 3.849348>,  <19.481266, 22.803926, 3.731485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.798517, 22.127159, 3.849348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.091591, 22.399376, 3.851827>,  <20.267435, 22.562706, 3.853315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.091591, 22.399376, 3.851827>,  <19.798517, 22.127159, 3.849348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.091591, 22.399376, 3.851827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373597, -0.409801, 0.832159,
		0.568860, -0.607393, -0.554502,
		0.732683, 0.680542, 0.006199,
		20.311396, 22.603539, 3.853687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.347694, 21.792864, 3.937813>,  <19.798517, 22.127159, 3.849348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.347694, 21.792864, 3.937813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.396065, 22.168762, 4.065721>,  <20.425087, 22.394302, 4.142465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.396065, 22.168762, 4.065721>,  <20.347694, 21.792864, 3.937813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.396065, 22.168762, 4.065721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436606, -0.339654, 0.833073,
		0.891489, 0.038872, -0.451373,
		0.120927, 0.939747, 0.319769,
		20.432343, 22.450686, 4.161651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.037777, 21.933538, 4.058268>,  <20.347694, 21.792864, 3.937813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.037777, 21.933538, 4.058268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.822510, 22.147903, 4.318476>,  <20.693350, 22.276522, 4.474600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.822510, 22.147903, 4.318476>,  <21.037777, 21.933538, 4.058268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.822510, 22.147903, 4.318476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461468, -0.458500, 0.759490,
		0.705283, 0.708926, -0.000557,
		-0.538167, 0.535912, 0.650519,
		20.661060, 22.308678, 4.513631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.452494, 21.803864, 4.683352>,  <21.037777, 21.933538, 4.058268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.452494, 21.803864, 4.683352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.140957, 22.014446, 4.819733>,  <20.954035, 22.140797, 4.901561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.140957, 22.014446, 4.819733>,  <21.452494, 21.803864, 4.683352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.140957, 22.014446, 4.819733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341848, -0.099468, 0.934476,
		0.525876, 0.844362, -0.102499,
		-0.778841, 0.526458, 0.340951,
		20.907305, 22.172384, 4.922018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.546309, 22.547255, 5.004943>,  <21.452494, 21.803864, 4.683352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.546309, 22.547255, 5.004943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.238308, 22.345703, 5.161510>,  <21.053509, 22.224771, 5.255449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.238308, 22.345703, 5.161510>,  <21.546309, 22.547255, 5.004943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.238308, 22.345703, 5.161510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415194, 0.070107, 0.907028,
		-0.484472, 0.860925, 0.155225,
		-0.770001, -0.503878, 0.391416,
		21.007307, 22.194540, 5.278934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.103577, 22.943817, 5.559013>,  <21.546309, 22.547255, 5.004943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.103577, 22.943817, 5.559013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.154404, 22.547920, 5.585119>,  <21.184900, 22.310381, 5.600783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.154404, 22.547920, 5.585119>,  <21.103577, 22.943817, 5.559013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.154404, 22.547920, 5.585119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333136, 0.104562, 0.937063,
		-0.934277, -0.097329, 0.343006,
		0.127069, -0.989744, 0.065266,
		21.192524, 22.250998, 5.604699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.687935, 22.627609, 6.093064>,  <21.103577, 22.943817, 5.559013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.687935, 22.627609, 6.093064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.053165, 22.482254, 6.019049>,  <21.272305, 22.395041, 5.974639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.053165, 22.482254, 6.019049>,  <20.687935, 22.627609, 6.093064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.053165, 22.482254, 6.019049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300034, 0.291352, 0.908347,
		-0.276172, -0.884909, 0.375056,
		0.913077, -0.363389, -0.185039,
		21.327089, 22.373238, 5.963537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.967562, 22.127657, 6.582818>,  <20.687935, 22.627609, 6.093064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.967562, 22.127657, 6.582818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.281345, 22.325573, 6.433257>,  <21.469616, 22.444323, 6.343521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.281345, 22.325573, 6.433257>,  <20.967562, 22.127657, 6.582818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.281345, 22.325573, 6.433257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355911, 0.134560, 0.924781,
		0.507887, -0.858530, -0.070545,
		0.784460, 0.494793, -0.373902,
		21.516684, 22.474010, 6.321086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.534231, 21.792109, 6.725614>,  <20.967562, 22.127657, 6.582818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.534231, 21.792109, 6.725614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.591160, 22.187958, 6.717715>,  <21.625317, 22.425467, 6.712976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.591160, 22.187958, 6.717715>,  <21.534231, 21.792109, 6.725614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.591160, 22.187958, 6.717715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429755, -0.043809, 0.901882,
		0.891659, -0.136842, -0.431531,
		0.142320, 0.989624, -0.019745,
		21.633856, 22.484844, 6.711792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.747292, 21.482788, 7.371770>,  <21.534231, 21.792109, 6.725614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.747292, 21.482788, 7.371770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.837749, 21.130825, 7.204621>,  <21.892025, 20.919647, 7.104332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.837749, 21.130825, 7.204621>,  <21.747292, 21.482788, 7.371770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.837749, 21.130825, 7.204621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153082, -0.455758, 0.876841,
		-0.961990, -0.134325, -0.237766,
		0.226145, -0.879909, -0.417872,
		21.905594, 20.866852, 7.079260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.257971, 20.893703, 7.509512>,  <21.747292, 21.482788, 7.371770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.257971, 20.893703, 7.509512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.619835, 20.732201, 7.455006>,  <21.836954, 20.635298, 7.422302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.619835, 20.732201, 7.455006>,  <21.257971, 20.893703, 7.509512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.619835, 20.732201, 7.455006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067259, -0.451056, 0.889958,
		-0.420787, -0.795947, -0.435210,
		0.904663, -0.403754, -0.136264,
		21.891233, 20.611073, 7.414126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.156830, 20.120211, 7.645003>,  <21.257971, 20.893703, 7.509512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.156830, 20.120211, 7.645003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.513454, 20.287865, 7.713640>,  <21.727428, 20.388456, 7.754822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.513454, 20.287865, 7.713640>,  <21.156830, 20.120211, 7.645003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.513454, 20.287865, 7.713640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026129, -0.330642, 0.943394,
		0.452146, -0.845577, -0.283836,
		0.891561, 0.419136, 0.171593,
		21.780922, 20.413605, 7.765118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.744839, 19.600321, 7.784469>,  <21.156830, 20.120211, 7.645003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.744839, 19.600321, 7.784469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.753529, 19.959316, 7.960670>,  <21.758743, 20.174713, 8.066391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.753529, 19.959316, 7.960670>,  <21.744839, 19.600321, 7.784469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.753529, 19.959316, 7.960670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042232, -0.439390, 0.897303,
		0.998872, -0.038098, 0.028356,
		0.021727, 0.897488, 0.440503,
		21.760046, 20.228563, 8.092821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.243208, 19.573900, 8.303946>,  <21.744839, 19.600321, 7.784469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.243208, 19.573900, 8.303946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.006233, 19.871796, 8.426830>,  <21.864048, 20.050533, 8.500561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.006233, 19.871796, 8.426830>,  <22.243208, 19.573900, 8.303946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.006233, 19.871796, 8.426830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065632, -0.335450, 0.939769,
		0.802938, 0.576918, 0.149854,
		-0.592438, 0.744740, 0.307210,
		21.828501, 20.095219, 8.518993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.533518, 19.895727, 8.915956>,  <22.243208, 19.573900, 8.303946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.533518, 19.895727, 8.915956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.150105, 20.004665, 8.949526>,  <21.920057, 20.070028, 8.969667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.150105, 20.004665, 8.949526>,  <22.533518, 19.895727, 8.915956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.150105, 20.004665, 8.949526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092264, 0.017938, 0.995573,
		0.269633, 0.962033, -0.042322,
		-0.958533, 0.272344, 0.083924,
		21.862545, 20.086369, 8.974703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.621073, 20.475096, 9.278196>,  <22.533518, 19.895727, 8.915956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.621073, 20.475096, 9.278196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.263298, 20.299328, 9.311408>,  <22.048634, 20.193867, 9.331335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.263298, 20.299328, 9.311408>,  <22.621073, 20.475096, 9.278196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.263298, 20.299328, 9.311408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126025, -0.069538, 0.989587,
		-0.429070, 0.895586, 0.117575,
		-0.894437, -0.439419, 0.083030,
		21.994967, 20.167501, 9.336317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.446466, 20.694798, 9.905416>,  <22.621073, 20.475096, 9.278196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.446466, 20.694798, 9.905416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.196487, 20.389164, 9.841397>,  <22.046499, 20.205784, 9.802986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.196487, 20.389164, 9.841397>,  <22.446466, 20.694798, 9.905416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.196487, 20.389164, 9.841397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022357, -0.187410, 0.982027,
		-0.780346, 0.617294, 0.100039,
		-0.624948, -0.764085, -0.160045,
		22.009003, 20.159939, 9.793384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.899279, 20.821875, 10.456020>,  <22.446466, 20.694798, 9.905416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.899279, 20.821875, 10.456020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.872849, 20.444019, 10.327466>,  <21.856991, 20.217306, 10.250334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.872849, 20.444019, 10.327466>,  <21.899279, 20.821875, 10.456020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.872849, 20.444019, 10.327466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139789, -0.310150, 0.940354,
		-0.987974, 0.107058, -0.111557,
		-0.066073, -0.944640, -0.321386,
		21.853027, 20.160627, 10.231050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.392469, 20.542908, 10.861122>,  <21.899279, 20.821875, 10.456020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.392469, 20.542908, 10.861122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.594727, 20.220654, 10.737653>,  <21.716082, 20.027302, 10.663571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.594727, 20.220654, 10.737653>,  <21.392469, 20.542908, 10.861122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.594727, 20.220654, 10.737653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036776, -0.377583, 0.925245,
		-0.861959, -0.456491, -0.220550,
		0.505642, -0.805634, -0.308673,
		21.746420, 19.978964, 10.645051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.940815, 19.927586, 11.122539>,  <21.392469, 20.542908, 10.861122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.940815, 19.927586, 11.122539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.324196, 19.830055, 11.063314>,  <21.554224, 19.771538, 11.027781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.324196, 19.830055, 11.063314>,  <20.940815, 19.927586, 11.122539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.324196, 19.830055, 11.063314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043348, -0.388515, 0.920422,
		-0.281945, -0.888597, -0.361804,
		0.958451, -0.243825, -0.148059,
		21.611731, 19.756907, 11.018897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.994406, 19.365213, 11.505085>,  <20.940815, 19.927586, 11.122539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.994406, 19.365213, 11.505085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.387939, 19.416294, 11.454872>,  <21.624060, 19.446943, 11.424745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.387939, 19.416294, 11.454872>,  <20.994406, 19.365213, 11.505085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.387939, 19.416294, 11.454872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158350, -0.293091, 0.942880,
		0.083618, -0.947517, -0.308575,
		0.983836, 0.127704, -0.125531,
		21.683090, 19.454605, 11.417212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.241730, 18.763214, 11.743166>,  <20.994406, 19.365213, 11.505085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.241730, 18.763214, 11.743166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.531746, 19.034615, 11.790424>,  <21.705755, 19.197454, 11.818779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.531746, 19.034615, 11.790424>,  <21.241730, 18.763214, 11.743166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.531746, 19.034615, 11.790424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178350, -0.350671, 0.919359,
		0.665215, -0.645499, -0.375260,
		0.725038, 0.678499, 0.118146,
		21.749258, 19.238165, 11.825869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.816519, 18.411623, 12.028088>,  <21.241730, 18.763214, 11.743166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.816519, 18.411623, 12.028088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.906124, 18.793720, 12.105373>,  <21.959887, 19.022978, 12.151745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.906124, 18.793720, 12.105373>,  <21.816519, 18.411623, 12.028088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.906124, 18.793720, 12.105373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277679, -0.252593, 0.926872,
		0.934191, -0.153979, -0.321834,
		0.224012, 0.955242, 0.193214,
		21.973328, 19.080294, 12.163338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.327963, 18.371487, 12.493862>,  <21.816519, 18.411623, 12.028088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.327963, 18.371487, 12.493862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.206192, 18.748131, 12.551399>,  <22.133129, 18.974117, 12.585921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.206192, 18.748131, 12.551399>,  <22.327963, 18.371487, 12.493862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.206192, 18.748131, 12.551399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154885, -0.100069, 0.982852,
		0.939859, 0.321485, -0.115378,
		-0.304426, 0.941612, 0.143844,
		22.114864, 19.030615, 12.594552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.769356, 18.542902, 13.061370>,  <22.327963, 18.371487, 12.493862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.769356, 18.542902, 13.061370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.513439, 18.849838, 13.044140>,  <22.359890, 19.034000, 13.033802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.513439, 18.849838, 13.044140>,  <22.769356, 18.542902, 13.061370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.513439, 18.849838, 13.044140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036457, 0.025681, 0.999005,
		0.767684, 0.640725, 0.011544,
		-0.639791, 0.767341, -0.043074,
		22.321503, 19.080040, 13.031218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.940523, 19.143824, 13.600535>,  <22.769356, 18.542902, 13.061370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.940523, 19.143824, 13.600535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.548004, 19.184280, 13.535026>,  <22.312492, 19.208555, 13.495720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.548004, 19.184280, 13.535026>,  <22.940523, 19.143824, 13.600535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.548004, 19.184280, 13.535026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152297, 0.112372, 0.981926,
		0.117719, 0.988505, -0.094866,
		-0.981299, 0.101143, -0.163775,
		22.253614, 19.214622, 13.485893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.861467, 19.787807, 13.731917>,  <22.940523, 19.143824, 13.600535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.861467, 19.787807, 13.731917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.503574, 19.614117, 13.773675>,  <22.288837, 19.509903, 13.798729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.503574, 19.614117, 13.773675>,  <22.861467, 19.787807, 13.731917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.503574, 19.614117, 13.773675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096757, 0.039723, 0.994515,
		-0.435991, 0.899928, 0.006473,
		-0.894734, -0.434226, 0.104393,
		22.235153, 19.483849, 13.804993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.494131, 20.121771, 14.176053>,  <22.861467, 19.787807, 13.731917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.494131, 20.121771, 14.176053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.299614, 19.773098, 14.200343>,  <22.182903, 19.563894, 14.214917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.299614, 19.773098, 14.200343>,  <22.494131, 20.121771, 14.176053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.299614, 19.773098, 14.200343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087621, 0.117790, 0.989165,
		-0.869392, 0.475703, -0.133658,
		-0.486292, -0.871684, 0.060724,
		22.153727, 19.511593, 14.218560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.894594, 20.279469, 14.576285>,  <22.494131, 20.121771, 14.176053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.894594, 20.279469, 14.576285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.948494, 19.884029, 14.603156>,  <21.980833, 19.646765, 14.619279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.948494, 19.884029, 14.603156>,  <21.894594, 20.279469, 14.576285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.948494, 19.884029, 14.603156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206870, 0.038234, 0.977621,
		-0.969045, -0.145631, -0.199360,
		0.134750, -0.988600, 0.067177,
		21.988918, 19.587450, 14.623309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.315212, 20.036535, 14.916361>,  <21.894594, 20.279469, 14.576285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.315212, 20.036535, 14.916361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.588856, 19.752254, 14.981957>,  <21.753042, 19.581686, 15.021316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.588856, 19.752254, 14.981957>,  <21.315212, 20.036535, 14.916361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.588856, 19.752254, 14.981957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106781, 0.124827, 0.986416,
		-0.721520, -0.692328, 0.009506,
		0.684110, -0.710704, 0.163993,
		21.794088, 19.539043, 15.031156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.183334, 19.520464, 15.483745>,  <21.315212, 20.036535, 14.916361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.183334, 19.520464, 15.483745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.582375, 19.514652, 15.456670>,  <21.821798, 19.511166, 15.440425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.582375, 19.514652, 15.456670>,  <21.183334, 19.520464, 15.483745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.582375, 19.514652, 15.456670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068809, 0.100616, 0.992543,
		-0.007610, -0.994819, 0.101375,
		0.997601, -0.014528, -0.067687,
		21.881655, 19.510294, 15.436363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.393547, 19.064943, 16.046625>,  <21.183334, 19.520464, 15.483745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.393547, 19.064943, 16.046625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.702110, 19.297874, 15.943997>,  <21.887247, 19.437634, 15.882421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.702110, 19.297874, 15.943997>,  <21.393547, 19.064943, 16.046625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.702110, 19.297874, 15.943997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145989, 0.230488, 0.962062,
		0.619370, -0.779597, 0.092787,
		0.771407, 0.582326, -0.256570,
		21.933533, 19.472572, 15.867026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.853783, 18.934143, 16.508520>,  <21.393547, 19.064943, 16.046625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.853783, 18.934143, 16.508520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.019241, 19.273033, 16.375189>,  <22.118517, 19.476368, 16.295191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.019241, 19.273033, 16.375189>,  <21.853783, 18.934143, 16.508520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.019241, 19.273033, 16.375189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252825, 0.244824, 0.936024,
		0.874629, -0.471456, -0.112929,
		0.413646, 0.847225, -0.333327,
		22.143335, 19.527201, 16.275190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.595535, 18.967300, 16.602173>,  <21.853783, 18.934143, 16.508520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.595535, 18.967300, 16.602173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.504475, 19.356491, 16.586712>,  <22.449839, 19.590006, 16.577435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.504475, 19.356491, 16.586712>,  <22.595535, 18.967300, 16.602173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.504475, 19.356491, 16.586712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120417, 0.067521, 0.990424,
		0.966269, 0.220816, -0.132534,
		-0.227650, 0.972975, -0.038653,
		22.436180, 19.648384, 16.575115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.183058, 19.407236, 17.013882>,  <22.595535, 18.967300, 16.602173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.183058, 19.407236, 17.013882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.842014, 19.615463, 16.995689>,  <22.637388, 19.740398, 16.984774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.842014, 19.615463, 16.995689>,  <23.183058, 19.407236, 17.013882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.842014, 19.615463, 16.995689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029734, 0.135227, 0.990368,
		0.521702, 0.843045, -0.130775,
		-0.852609, 0.520565, -0.045481,
		22.586231, 19.771633, 16.982044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.374022, 20.119665, 17.407694>,  <23.183058, 19.407236, 17.013882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.374022, 20.119665, 17.407694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.976028, 20.087700, 17.383631>,  <22.737232, 20.068521, 17.369194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.976028, 20.087700, 17.383631>,  <23.374022, 20.119665, 17.407694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.976028, 20.087700, 17.383631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092305, 0.501922, 0.859973,
		-0.038529, 0.861213, -0.506781,
		-0.994985, -0.079913, -0.060156,
		22.677532, 20.063726, 17.365583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.061171, 20.789055, 17.659899>,  <23.374022, 20.119665, 17.407694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.061171, 20.789055, 17.659899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.778656, 20.507030, 17.685350>,  <22.609148, 20.337816, 17.700621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.778656, 20.507030, 17.685350>,  <23.061171, 20.789055, 17.659899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.778656, 20.507030, 17.685350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192051, 0.277340, 0.941381,
		-0.681377, 0.652666, -0.331289,
		-0.706287, -0.705060, 0.063628,
		22.566771, 20.295513, 17.704439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.471159, 21.107189, 17.958805>,  <23.061171, 20.789055, 17.659899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.471159, 21.107189, 17.958805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.432556, 20.715492, 18.030102>,  <22.409393, 20.480474, 18.072880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.432556, 20.715492, 18.030102>,  <22.471159, 21.107189, 17.958805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.432556, 20.715492, 18.030102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276202, 0.198392, 0.940401,
		-0.956242, 0.041527, -0.289615,
		-0.096509, -0.979243, 0.178241,
		22.403603, 20.421719, 18.083574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.884361, 21.141909, 18.511818>,  <22.471159, 21.107189, 17.958805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.884361, 21.141909, 18.511818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.057755, 20.782341, 18.537224>,  <22.161791, 20.566601, 18.552467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.057755, 20.782341, 18.537224>,  <21.884361, 21.141909, 18.511818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.057755, 20.782341, 18.537224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214860, -0.034648, 0.976030,
		-0.875173, -0.436739, -0.208162,
		0.433482, -0.898921, 0.063515,
		22.187799, 20.512665, 18.556278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.419256, 20.749912, 18.984900>,  <21.884361, 21.141909, 18.511818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.419256, 20.749912, 18.984900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.759365, 20.539902, 18.970007>,  <21.963430, 20.413895, 18.961071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.759365, 20.539902, 18.970007>,  <21.419256, 20.749912, 18.984900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.759365, 20.539902, 18.970007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202723, -0.391943, 0.897376,
		-0.485740, -0.755465, -0.439693,
		0.850271, -0.525028, -0.037233,
		22.014446, 20.382393, 18.958838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.296892, 20.041176, 19.093811>,  <21.419256, 20.749912, 18.984900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.296892, 20.041176, 19.093811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.674908, 20.122433, 19.196285>,  <21.901718, 20.171186, 19.257769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.674908, 20.122433, 19.196285>,  <21.296892, 20.041176, 19.093811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.674908, 20.122433, 19.196285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177565, -0.339036, 0.923865,
		0.274533, -0.918579, -0.284331,
		0.945041, 0.203144, 0.256184,
		21.958420, 20.183376, 19.273140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.404606, 19.593674, 19.646725>,  <21.296892, 20.041176, 19.093811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.404606, 19.593674, 19.646725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.718475, 19.835766, 19.700367>,  <21.906797, 19.981020, 19.732552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.718475, 19.835766, 19.700367>,  <21.404606, 19.593674, 19.646725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.718475, 19.835766, 19.700367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007076, -0.207573, 0.978194,
		0.619868, -0.768513, -0.158595,
		0.784675, 0.605229, 0.134106,
		21.953878, 20.017334, 19.740599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.778408, 19.247881, 20.198032>,  <21.404606, 19.593674, 19.646725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.778408, 19.247881, 20.198032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.959946, 19.604313, 20.198177>,  <22.068869, 19.818172, 20.198265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.959946, 19.604313, 20.198177>,  <21.778408, 19.247881, 20.198032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.959946, 19.604313, 20.198177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096257, 0.048621, 0.994169,
		0.885868, -0.451231, 0.107839,
		0.453843, 0.891082, 0.000362,
		22.096098, 19.871637, 20.198286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.082705, 19.113264, 20.739487>,  <21.778408, 19.247881, 20.198032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.082705, 19.113264, 20.739487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.075733, 19.509525, 20.685369>,  <22.071550, 19.747282, 20.652899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.075733, 19.509525, 20.685369>,  <22.082705, 19.113264, 20.739487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.075733, 19.509525, 20.685369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045771, 0.134382, 0.989872,
		0.998800, 0.023446, 0.043001,
		-0.017430, 0.990652, -0.135294,
		22.070505, 19.806721, 20.644781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.626999, 19.336065, 21.140762>,  <22.082705, 19.113264, 20.739487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.626999, 19.336065, 21.140762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.387131, 19.653904, 21.102789>,  <22.243210, 19.844608, 21.080004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.387131, 19.653904, 21.102789>,  <22.626999, 19.336065, 21.140762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.387131, 19.653904, 21.102789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062698, 0.071615, 0.995460,
		0.797789, 0.602898, 0.006874,
		-0.599668, 0.794598, -0.094935,
		22.207230, 19.892282, 21.074308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.867777, 19.767872, 21.675404>,  <22.626999, 19.336065, 21.140762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.867777, 19.767872, 21.675404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.508549, 19.921165, 21.589056>,  <22.293011, 20.013142, 21.537247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.508549, 19.921165, 21.589056>,  <22.867777, 19.767872, 21.675404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.508549, 19.921165, 21.589056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166665, 0.157698, 0.973321,
		0.407050, 0.910090, -0.077753,
		-0.898072, 0.383232, -0.215871,
		22.239126, 20.036135, 21.524294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.874701, 20.460419, 21.828943>,  <22.867777, 19.767872, 21.675404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.874701, 20.460419, 21.828943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.489155, 20.356010, 21.850231>,  <22.257828, 20.293365, 21.863005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.489155, 20.356010, 21.850231>,  <22.874701, 20.460419, 21.828943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.489155, 20.356010, 21.850231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028347, 0.299141, 0.953788,
		-0.264880, 0.917814, -0.295730,
		-0.963865, -0.261022, 0.053219,
		22.199995, 20.277704, 21.866198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.598652, 20.906113, 22.371553>,  <22.874701, 20.460419, 21.828943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.598652, 20.906113, 22.371553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.312576, 20.628407, 22.339291>,  <22.140932, 20.461782, 22.319933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.312576, 20.628407, 22.339291>,  <22.598652, 20.906113, 22.371553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.312576, 20.628407, 22.339291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372353, 0.280808, 0.884591,
		-0.591490, 0.662680, -0.459341,
		-0.715187, -0.694263, -0.080656,
		22.098021, 20.420128, 22.315094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.879572, 21.212784, 22.247614>,  <22.598652, 20.906113, 22.371553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.879572, 21.212784, 22.247614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.855541, 20.851074, 22.416695>,  <21.841124, 20.634048, 22.518143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.855541, 20.851074, 22.416695>,  <21.879572, 21.212784, 22.247614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.855541, 20.851074, 22.416695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552833, 0.382732, 0.740197,
		-0.831124, -0.189217, -0.522905,
		-0.060075, -0.904275, 0.422703,
		21.837519, 20.579792, 22.543505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.160599, 21.132147, 22.352869>,  <21.879572, 21.212784, 22.247614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.160599, 21.132147, 22.352869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.353348, 20.869339, 22.584774>,  <21.468998, 20.711655, 22.723917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.353348, 20.869339, 22.584774>,  <21.160599, 21.132147, 22.352869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.353348, 20.869339, 22.584774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412121, 0.413959, 0.811661,
		-0.773275, -0.630050, -0.071296,
		0.481874, -0.657020, 0.579761,
		21.497910, 20.672234, 22.758703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.724743, 21.005795, 22.727173>,  <21.160599, 21.132147, 22.352869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.724743, 21.005795, 22.727173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.028542, 20.856056, 22.939974>,  <21.210821, 20.766212, 23.067656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.028542, 20.856056, 22.939974>,  <20.724743, 21.005795, 22.727173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.028542, 20.856056, 22.939974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526012, 0.127744, 0.840829,
		-0.382723, -0.918447, -0.099890,
		0.759496, -0.374348, 0.532004,
		21.256390, 20.743752, 23.099575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.436253, 20.485338, 23.142437>,  <20.724743, 21.005795, 22.727173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.436253, 20.485338, 23.142437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.772987, 20.593761, 23.329128>,  <20.975029, 20.658815, 23.441143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.772987, 20.593761, 23.329128>,  <20.436253, 20.485338, 23.142437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.772987, 20.593761, 23.329128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520003, 0.175666, 0.835905,
		0.144584, -0.946400, 0.288830,
		0.841839, 0.271051, 0.466733,
		21.025539, 20.675079, 23.469147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.350290, 20.150866, 23.799267>,  <20.436253, 20.485338, 23.142437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.350290, 20.150866, 23.799267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.635185, 20.429218, 23.836082>,  <20.806122, 20.596230, 23.858171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.635185, 20.429218, 23.836082>,  <20.350290, 20.150866, 23.799267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.635185, 20.429218, 23.836082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405191, 0.300515, 0.863430,
		0.573185, -0.652259, 0.496001,
		0.712235, 0.695880, 0.092039,
		20.848856, 20.637981, 23.863693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.472712, 20.133970, 24.507326>,  <20.350290, 20.150866, 23.799267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.472712, 20.133970, 24.507326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.556297, 20.491623, 24.348902>,  <20.606449, 20.706215, 24.253847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.556297, 20.491623, 24.348902>,  <20.472712, 20.133970, 24.507326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.556297, 20.491623, 24.348902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493957, 0.446045, 0.746358,
		0.844003, 0.039676, 0.534869,
		0.208964, 0.894131, -0.396061,
		20.618986, 20.759863, 24.230083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.087404, 20.021187, 24.480980>,  <20.472712, 20.133970, 24.507326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.087404, 20.021187, 24.480980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.024223, 20.407505, 24.398718>,  <20.986315, 20.639296, 24.349361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.024223, 20.407505, 24.398718>,  <21.087404, 20.021187, 24.480980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.024223, 20.407505, 24.398718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339203, 0.142528, 0.929853,
		0.927358, 0.216630, 0.305088,
		-0.157951, 0.965793, -0.205656,
		20.976837, 20.697243, 24.337021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.447243, 20.542675, 25.045532>,  <21.087404, 20.021187, 24.480980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.447243, 20.542675, 25.045532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.149830, 20.740070, 24.865032>,  <20.971382, 20.858507, 24.756733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.149830, 20.740070, 24.865032>,  <21.447243, 20.542675, 25.045532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.149830, 20.740070, 24.865032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327906, 0.319045, 0.889206,
		0.582783, 0.809122, -0.075402,
		-0.743533, 0.493489, -0.451250,
		20.926769, 20.888117, 24.729656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.268457, 21.061043, 25.447611>,  <21.447243, 20.542675, 25.045532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.268457, 21.061043, 25.447611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.946606, 21.094833, 25.212517>,  <20.753494, 21.115107, 25.071461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.946606, 21.094833, 25.212517>,  <21.268457, 21.061043, 25.447611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.946606, 21.094833, 25.212517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423184, 0.612750, 0.667422,
		0.416516, 0.785748, -0.457289,
		-0.804630, 0.084475, -0.587737,
		20.705217, 21.120176, 25.036196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.266243, 21.723324, 25.285101>,  <21.268457, 21.061043, 25.447611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.266243, 21.723324, 25.285101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.913631, 21.534958, 25.298634>,  <20.702065, 21.421938, 25.306753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.913631, 21.534958, 25.298634>,  <21.266243, 21.723324, 25.285101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.913631, 21.534958, 25.298634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278466, 0.576465, 0.768209,
		-0.381262, 0.667779, -0.639305,
		-0.881530, -0.470914, 0.033830,
		20.649172, 21.393684, 25.308783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.692808, 22.226454, 25.126926>,  <21.266243, 21.723324, 25.285101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.692808, 22.226454, 25.126926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.615620, 21.919872, 25.371977>,  <20.569307, 21.735924, 25.519007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.615620, 21.919872, 25.371977>,  <20.692808, 22.226454, 25.126926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.615620, 21.919872, 25.371977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328526, 0.638795, 0.695709,
		-0.924572, -0.067014, -0.375068,
		-0.192969, -0.766453, 0.612628,
		20.557730, 21.689936, 25.555765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.382856, 22.521021, 25.597462>,  <20.692808, 22.226454, 25.126926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.382856, 22.521021, 25.597462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.391148, 22.159382, 25.768188>,  <20.396122, 21.942398, 25.870625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.391148, 22.159382, 25.768188>,  <20.382856, 22.521021, 25.597462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.391148, 22.159382, 25.768188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238346, 0.410133, 0.880331,
		-0.970959, -0.119976, -0.206988,
		0.020726, -0.904100, 0.426818,
		20.397366, 21.888151, 25.896235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.680658, 22.623211, 25.770048>,  <20.382856, 22.521021, 25.597462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.680658, 22.623211, 25.770048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.409439, 22.360771, 25.902582>,  <19.246708, 22.203308, 25.982101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.409439, 22.360771, 25.902582>,  <19.680658, 22.623211, 25.770048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.409439, 22.360771, 25.902582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695498, 0.426890, -0.577969,
		0.237762, -0.622334, -0.745768,
		-0.678050, -0.656099, 0.331334,
		19.206024, 22.163940, 26.001982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.391399, 22.110426, 25.406828>,  <19.680658, 22.623211, 25.770048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.391399, 22.110426, 25.406828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.130600, 22.317387, 25.628529>,  <18.974119, 22.441563, 25.761549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.130600, 22.317387, 25.628529>,  <19.391399, 22.110426, 25.406828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.130600, 22.317387, 25.628529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353978, 0.438727, -0.825965,
		-0.670519, -0.734722, -0.102901,
		-0.652000, 0.517401, 0.554249,
		18.934999, 22.472607, 25.794804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.685877, 21.958612, 25.263659>,  <19.391399, 22.110426, 25.406828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.685877, 21.958612, 25.263659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.760719, 22.330288, 25.391155>,  <18.805626, 22.553293, 25.467653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.760719, 22.330288, 25.391155>,  <18.685877, 21.958612, 25.263659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.760719, 22.330288, 25.391155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116527, 0.343173, -0.932016,
		-0.975403, 0.137246, 0.172486,
		0.187108, 0.929191, 0.318739,
		18.816853, 22.609045, 25.486776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.229485, 22.566017, 25.185148>,  <18.685877, 21.958612, 25.263659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.229485, 22.566017, 25.185148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.617542, 22.659405, 25.158886>,  <18.850378, 22.715437, 25.143127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.617542, 22.659405, 25.158886>,  <18.229485, 22.566017, 25.185148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.617542, 22.659405, 25.158886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114829, 0.203729, -0.972270,
		-0.213617, 0.950783, 0.224455,
		0.970145, 0.233467, -0.065658,
		18.908587, 22.729445, 25.139189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.249258, 23.263151, 24.847315>,  <18.229485, 22.566017, 25.185148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.249258, 23.263151, 24.847315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.574730, 23.035442, 24.800240>,  <18.770014, 22.898817, 24.771996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.574730, 23.035442, 24.800240>,  <18.249258, 23.263151, 24.847315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.574730, 23.035442, 24.800240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106162, 0.053525, -0.992907,
		0.571535, 0.820404, -0.016883,
		0.813681, -0.569274, -0.117687,
		18.818834, 22.864660, 24.764933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.339014, 23.202505, 24.113598>,  <18.249258, 23.263151, 24.847315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.339014, 23.202505, 24.113598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.630096, 22.973747, 24.265059>,  <18.804747, 22.836493, 24.355934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.630096, 22.973747, 24.265059>,  <18.339014, 23.202505, 24.113598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.630096, 22.973747, 24.265059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280110, -0.256126, -0.925169,
		0.626083, 0.779316, -0.026191,
		0.727708, -0.571896, 0.378651,
		18.848408, 22.802177, 24.378654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.983397, 23.482853, 23.863636>,  <18.339014, 23.202505, 24.113598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.983397, 23.482853, 23.863636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.996025, 23.091019, 23.943052>,  <19.003603, 22.855919, 23.990702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.996025, 23.091019, 23.943052>,  <18.983397, 23.482853, 23.863636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.996025, 23.091019, 23.943052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180322, -0.189800, -0.965122,
		0.983101, 0.066273, 0.170648,
		0.031573, -0.979584, 0.198543,
		19.005497, 22.797144, 24.002615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.620090, 23.237774, 23.678593>,  <18.983397, 23.482853, 23.863636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.620090, 23.237774, 23.678593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.374519, 22.922058, 23.682869>,  <19.227177, 22.732628, 23.685434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.374519, 22.922058, 23.682869>,  <19.620090, 23.237774, 23.678593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.374519, 22.922058, 23.682869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301738, -0.247170, -0.920794,
		0.729417, -0.562074, 0.389903,
		-0.613927, -0.789291, 0.010691,
		19.190342, 22.685270, 23.686077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.977913, 22.680767, 23.397755>,  <19.620090, 23.237774, 23.678593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.977913, 22.680767, 23.397755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.599323, 22.556686, 23.362057>,  <19.372169, 22.482239, 23.340639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.599323, 22.556686, 23.362057>,  <19.977913, 22.680767, 23.397755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.599323, 22.556686, 23.362057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210720, -0.384355, -0.898815,
		0.244513, -0.869509, 0.429147,
		-0.946473, -0.310201, -0.089243,
		19.315382, 22.463627, 23.335283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.970945, 22.169920, 22.924887>,  <19.977913, 22.680767, 23.397755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.970945, 22.169920, 22.924887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.576130, 22.227974, 22.897488>,  <19.339241, 22.262806, 22.881048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.576130, 22.227974, 22.897488>,  <19.970945, 22.169920, 22.924887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.576130, 22.227974, 22.897488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003205, -0.444545, -0.895751,
		-0.160455, -0.883920, 0.439248,
		-0.987038, 0.145135, -0.068496,
		19.280018, 22.271515, 22.876938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.812054, 21.593508, 22.833441>,  <19.970945, 22.169920, 22.924887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.812054, 21.593508, 22.833441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.505497, 21.815632, 22.704273>,  <19.321564, 21.948906, 22.626772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.505497, 21.815632, 22.704273>,  <19.812054, 21.593508, 22.833441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.505497, 21.815632, 22.704273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033044, -0.536108, -0.843502,
		-0.641526, -0.635781, 0.429217,
		-0.766390, 0.555312, -0.322919,
		19.275579, 21.982225, 22.607397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.452465, 21.239199, 22.388994>,  <19.812054, 21.593508, 22.833441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.452465, 21.239199, 22.388994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.274837, 21.584145, 22.291727>,  <19.168261, 21.791113, 22.233368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.274837, 21.584145, 22.291727>,  <19.452465, 21.239199, 22.388994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.274837, 21.584145, 22.291727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049527, -0.294603, -0.954336,
		-0.894623, -0.411746, 0.173533,
		-0.444067, 0.862365, -0.243166,
		19.141617, 21.842854, 22.218777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.883755, 21.062387, 21.899784>,  <19.452465, 21.239199, 22.388994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.883755, 21.062387, 21.899784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.989960, 21.441303, 21.828068>,  <19.053682, 21.668653, 21.785038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.989960, 21.441303, 21.828068>,  <18.883755, 21.062387, 21.899784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.989960, 21.441303, 21.828068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018060, -0.190820, -0.981459,
		-0.963938, 0.257352, -0.067773,
		0.265513, 0.947290, -0.179291,
		19.069614, 21.725491, 21.774281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.419765, 21.396267, 21.437679>,  <18.883755, 21.062387, 21.899784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.419765, 21.396267, 21.437679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.763439, 21.596298, 21.394369>,  <18.969643, 21.716316, 21.368383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.763439, 21.596298, 21.394369>,  <18.419765, 21.396267, 21.437679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.763439, 21.596298, 21.394369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036245, -0.151594, -0.987778,
		-0.510381, 0.852608, -0.112123,
		0.859185, 0.500079, -0.108273,
		19.021194, 21.746323, 21.361887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.188911, 21.842653, 20.943174>,  <18.419765, 21.396267, 21.437679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.188911, 21.842653, 20.943174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.586491, 21.881828, 20.923285>,  <18.825039, 21.905333, 20.911350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.586491, 21.881828, 20.923285>,  <18.188911, 21.842653, 20.943174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.586491, 21.881828, 20.923285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022606, -0.260620, -0.965177,
		-0.107486, 0.960461, -0.256829,
		0.993950, 0.097937, -0.049725,
		18.884676, 21.911209, 20.908367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.273937, 22.084032, 20.270550>,  <18.188911, 21.842653, 20.943174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.273937, 22.084032, 20.270550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.623997, 21.946934, 20.407158>,  <18.834034, 21.864676, 20.489122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.623997, 21.946934, 20.407158>,  <18.273937, 22.084032, 20.270550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.623997, 21.946934, 20.407158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167756, -0.447121, -0.878602,
		0.453837, 0.826202, -0.333800,
		0.875151, -0.342745, 0.341520,
		18.886541, 21.844110, 20.509615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.650364, 22.309980, 19.776068>,  <18.273937, 22.084032, 20.270550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.650364, 22.309980, 19.776068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.828888, 21.999062, 19.953434>,  <18.936003, 21.812510, 20.059853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.828888, 21.999062, 19.953434>,  <18.650364, 22.309980, 19.776068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.828888, 21.999062, 19.953434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134819, -0.431442, -0.892010,
		0.884664, 0.457894, -0.087763,
		0.446310, -0.777297, 0.443414,
		18.962782, 21.765873, 20.086458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.209343, 22.325449, 19.538094>,  <18.650364, 22.309980, 19.776068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.209343, 22.325449, 19.538094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.220604, 21.948162, 19.670486>,  <19.227360, 21.721790, 19.749922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.220604, 21.948162, 19.670486>,  <19.209343, 22.325449, 19.538094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.220604, 21.948162, 19.670486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431124, -0.287276, -0.855339,
		0.901853, 0.166774, 0.398556,
		0.028153, -0.943217, 0.330981,
		19.229050, 21.665197, 19.769781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.829372, 22.047478, 19.230347>,  <19.209343, 22.325449, 19.538094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.829372, 22.047478, 19.230347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.621857, 21.723812, 19.340696>,  <19.497347, 21.529613, 19.406906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.621857, 21.723812, 19.340696>,  <19.829372, 22.047478, 19.230347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.621857, 21.723812, 19.340696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406677, -0.517435, -0.752911,
		0.751977, -0.278411, 0.597510,
		-0.518791, -0.809165, 0.275876,
		19.466219, 21.481062, 19.423460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.248869, 21.333344, 19.162197>,  <19.829372, 22.047478, 19.230347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.248869, 21.333344, 19.162197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.859421, 21.244545, 19.141108>,  <19.625751, 21.191267, 19.128454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.859421, 21.244545, 19.141108>,  <20.248869, 21.333344, 19.162197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.859421, 21.244545, 19.141108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162985, -0.514947, -0.841585,
		0.159678, -0.827979, 0.537545,
		-0.973622, -0.221994, -0.052722,
		19.567335, 21.177946, 19.125292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.219372, 20.637396, 18.838430>,  <20.248869, 21.333344, 19.162197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.219372, 20.637396, 18.838430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.868248, 20.824818, 18.798611>,  <19.657574, 20.937271, 18.774719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.868248, 20.824818, 18.798611>,  <20.219372, 20.637396, 18.838430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.868248, 20.824818, 18.798611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002792, -0.202813, -0.979214,
		-0.479006, -0.859839, 0.176722,
		-0.877807, 0.468556, -0.099549,
		19.604906, 20.965384, 18.768745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.863035, 20.280773, 18.389439>,  <20.219372, 20.637396, 18.838430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.863035, 20.280773, 18.389439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.651012, 20.619465, 18.371159>,  <19.523798, 20.822680, 18.360189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.651012, 20.619465, 18.371159>,  <19.863035, 20.280773, 18.389439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.651012, 20.619465, 18.371159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051001, -0.021964, -0.998457,
		-0.846427, -0.531570, -0.031542,
		-0.530057, 0.846730, -0.045702,
		19.491995, 20.873484, 18.357449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.547647, 20.128214, 17.798063>,  <19.863035, 20.280773, 18.389439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.547647, 20.128214, 17.798063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.490032, 20.520966, 17.847326>,  <19.455463, 20.756617, 17.876884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.490032, 20.520966, 17.847326>,  <19.547647, 20.128214, 17.798063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.490032, 20.520966, 17.847326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074249, 0.134827, -0.988083,
		-0.986783, -0.133176, -0.092324,
		-0.144037, 0.981879, 0.123157,
		19.446821, 20.815529, 17.884274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.002363, 20.190802, 17.288780>,  <19.547647, 20.128214, 17.798063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.002363, 20.190802, 17.288780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.164001, 20.549026, 17.363262>,  <19.260984, 20.763962, 17.407951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.164001, 20.549026, 17.363262>,  <19.002363, 20.190802, 17.288780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.164001, 20.549026, 17.363262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029504, 0.190696, -0.981206,
		-0.914240, 0.401996, 0.050637,
		0.404097, 0.895564, 0.186203,
		19.285231, 20.817696, 17.419123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.621784, 20.656845, 16.805950>,  <19.002363, 20.190802, 17.288780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.621784, 20.656845, 16.805950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.960510, 20.842251, 16.910303>,  <19.163746, 20.953495, 16.972916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.960510, 20.842251, 16.910303>,  <18.621784, 20.656845, 16.805950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.960510, 20.842251, 16.910303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067333, 0.393119, -0.917019,
		-0.527610, 0.794110, 0.301689,
		0.846814, 0.463515, 0.260883,
		19.214554, 20.981306, 16.988567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.603216, 21.276073, 16.363501>,  <18.621784, 20.656845, 16.805950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.603216, 21.276073, 16.363501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.971283, 21.262821, 16.519552>,  <19.192123, 21.254869, 16.613182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.971283, 21.262821, 16.519552>,  <18.603216, 21.276073, 16.363501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.971283, 21.262821, 16.519552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373658, 0.371925, -0.849736,
		-0.116945, 0.927671, 0.354613,
		0.920165, -0.033132, 0.390127,
		19.247332, 21.252882, 16.636591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.847641, 21.966499, 16.221397>,  <18.603216, 21.276073, 16.363501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.847641, 21.966499, 16.221397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.141052, 21.695557, 16.243757>,  <19.317099, 21.532991, 16.257174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.141052, 21.695557, 16.243757>,  <18.847641, 21.966499, 16.221397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.141052, 21.695557, 16.243757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301066, 0.250088, -0.920226,
		0.609341, 0.691841, 0.387376,
		0.733528, -0.677356, 0.055901,
		19.361111, 21.492350, 16.260529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.478899, 22.277689, 15.997772>,  <18.847641, 21.966499, 16.221397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.478899, 22.277689, 15.997772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.504353, 21.879948, 15.963792>,  <19.519625, 21.641304, 15.943403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.504353, 21.879948, 15.963792>,  <19.478899, 22.277689, 15.997772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.504353, 21.879948, 15.963792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340203, 0.101638, -0.934843,
		0.938196, 0.030586, 0.344749,
		0.063633, -0.994351, -0.084951,
		19.523443, 21.581642, 15.938307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.035854, 22.210985, 15.525484>,  <19.478899, 22.277689, 15.997772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.035854, 22.210985, 15.525484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.871014, 21.846912, 15.542178>,  <19.772110, 21.628469, 15.552195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.871014, 21.846912, 15.542178>,  <20.035854, 22.210985, 15.525484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.871014, 21.846912, 15.542178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225434, -0.146235, -0.963221,
		0.882809, -0.387536, 0.265450,
		-0.412101, -0.910182, 0.041734,
		19.747383, 21.573858, 15.554698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.481436, 21.854685, 15.323392>,  <20.035854, 22.210985, 15.525484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.481436, 21.854685, 15.323392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.145424, 21.656895, 15.234086>,  <19.943817, 21.538221, 15.180503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.145424, 21.656895, 15.234086>,  <20.481436, 21.854685, 15.323392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.145424, 21.656895, 15.234086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281132, -0.044758, -0.958625,
		0.464022, -0.868039, 0.176611,
		-0.840029, -0.494474, -0.223265,
		19.893415, 21.508553, 15.167107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.663731, 21.352808, 14.876345>,  <20.481436, 21.854685, 15.323392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.663731, 21.352808, 14.876345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.267788, 21.381760, 14.827439>,  <20.030222, 21.399130, 14.798096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.267788, 21.381760, 14.827439>,  <20.663731, 21.352808, 14.876345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.267788, 21.381760, 14.827439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125228, 0.037921, -0.991403,
		-0.067122, -0.996656, -0.046600,
		-0.989855, 0.072380, -0.122263,
		19.970831, 21.403473, 14.790760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.509975, 20.870949, 14.279673>,  <20.663731, 21.352808, 14.876345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.509975, 20.870949, 14.279673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.195732, 21.115883, 14.315148>,  <20.007187, 21.262844, 14.336433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.195732, 21.115883, 14.315148>,  <20.509975, 20.870949, 14.279673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.195732, 21.115883, 14.315148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039317, 0.093646, -0.994829,
		-0.617476, -0.785031, -0.049494,
		-0.785606, 0.612337, 0.088689,
		19.960051, 21.299583, 14.341755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.024641, 20.545090, 13.934309>,  <20.509975, 20.870949, 14.279673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.024641, 20.545090, 13.934309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.910583, 20.928482, 13.935216>,  <19.842148, 21.158518, 13.935760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.910583, 20.928482, 13.935216>,  <20.024641, 20.545090, 13.934309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.910583, 20.928482, 13.935216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221383, -0.063559, -0.973114,
		-0.932567, -0.277981, 0.230315,
		-0.285146, 0.958482, 0.002267,
		19.825039, 21.216026, 13.935896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.492104, 20.662384, 13.500998>,  <20.024641, 20.545090, 13.934309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.492104, 20.662384, 13.500998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.621109, 21.040836, 13.512425>,  <19.698513, 21.267908, 13.519282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.621109, 21.040836, 13.512425>,  <19.492104, 20.662384, 13.500998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.621109, 21.040836, 13.512425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078059, 0.056665, -0.995337,
		-0.943340, 0.318781, 0.092130,
		0.322516, 0.946133, 0.028571,
		19.717863, 21.324677, 13.520997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.991722, 20.973545, 13.115940>,  <19.492104, 20.662384, 13.500998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.991722, 20.973545, 13.115940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.283039, 21.247105, 13.133246>,  <19.457829, 21.411242, 13.143630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.283039, 21.247105, 13.133246>,  <18.991722, 20.973545, 13.115940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.283039, 21.247105, 13.133246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217653, 0.290724, -0.931722,
		-0.649784, 0.669148, 0.360585,
		0.728291, 0.683901, 0.043266,
		19.501526, 21.452274, 13.146226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.674950, 21.613157, 12.946844>,  <18.991722, 20.973545, 13.115940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.674950, 21.613157, 12.946844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.060921, 21.684944, 12.870211>,  <19.292503, 21.728016, 12.824231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.060921, 21.684944, 12.870211>,  <18.674950, 21.613157, 12.946844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.060921, 21.684944, 12.870211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220727, 0.159625, -0.962185,
		-0.142100, 0.970727, 0.193641,
		0.964929, 0.179468, -0.191583,
		19.350399, 21.738785, 12.812736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.726763, 22.173954, 12.586907>,  <18.674950, 21.613157, 12.946844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.726763, 22.173954, 12.586907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.080814, 22.025036, 12.475237>,  <19.293245, 21.935686, 12.408235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.080814, 22.025036, 12.475237>,  <18.726763, 22.173954, 12.586907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.080814, 22.025036, 12.475237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251997, 0.120876, -0.960149,
		0.391204, 0.920210, 0.013174,
		0.885131, -0.372294, -0.279177,
		19.346354, 21.913347, 12.391484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.037832, 22.742191, 12.251561>,  <18.726763, 22.173954, 12.586907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.037832, 22.742191, 12.251561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.210365, 22.393414, 12.158899>,  <19.313885, 22.184147, 12.103302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.210365, 22.393414, 12.158899>,  <19.037832, 22.742191, 12.251561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.210365, 22.393414, 12.158899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037340, 0.239294, -0.970229,
		0.901419, 0.427143, 0.070657,
		0.431334, -0.871945, -0.231654,
		19.339766, 22.131830, 12.089403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.616064, 22.878574, 11.653575>,  <19.037832, 22.742191, 12.251561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.616064, 22.878574, 11.653575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.508434, 22.493389, 11.646695>,  <19.443855, 22.262278, 11.642568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.508434, 22.493389, 11.646695>,  <19.616064, 22.878574, 11.653575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.508434, 22.493389, 11.646695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130359, 0.054106, -0.989989,
		0.954256, -0.264140, -0.140090,
		-0.269076, -0.962965, -0.017198,
		19.427711, 22.204500, 11.641536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.059690, 22.652086, 11.121836>,  <19.616064, 22.878574, 11.653575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.059690, 22.652086, 11.121836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.771946, 22.376579, 11.157884>,  <19.599298, 22.211275, 11.179512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.771946, 22.376579, 11.157884>,  <20.059690, 22.652086, 11.121836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.771946, 22.376579, 11.157884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054337, -0.073543, -0.995811,
		0.692507, -0.721245, 0.015478,
		-0.719362, -0.688765, 0.090120,
		19.556137, 22.169950, 11.184919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.217491, 22.240980, 10.552430>,  <20.059690, 22.652086, 11.121836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.217491, 22.240980, 10.552430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.847233, 22.129749, 10.655076>,  <19.625078, 22.063011, 10.716663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.847233, 22.129749, 10.655076>,  <20.217491, 22.240980, 10.552430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.847233, 22.129749, 10.655076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178299, -0.277625, -0.943999,
		0.333749, -0.919563, 0.207401,
		-0.925646, -0.278079, 0.256614,
		19.569538, 22.046326, 10.732060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.115351, 21.573427, 10.343503>,  <20.217491, 22.240980, 10.552430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.115351, 21.573427, 10.343503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.739628, 21.688885, 10.417675>,  <19.514194, 21.758160, 10.462178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.739628, 21.688885, 10.417675>,  <20.115351, 21.573427, 10.343503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.739628, 21.688885, 10.417675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313458, -0.502372, -0.805833,
		-0.139444, -0.815050, 0.562360,
		-0.939308, 0.288645, 0.185431,
		19.457836, 21.775478, 10.473305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.764090, 20.997810, 10.228569>,  <20.115351, 21.573427, 10.343503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.764090, 20.997810, 10.228569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.497913, 21.293510, 10.187192>,  <19.338207, 21.470930, 10.162366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.497913, 21.293510, 10.187192>,  <19.764090, 20.997810, 10.228569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.497913, 21.293510, 10.187192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355917, -0.436038, -0.826555,
		-0.656137, -0.513204, 0.553269,
		-0.665437, 0.739251, -0.103442,
		19.298283, 21.515285, 10.156159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.193415, 20.736639, 10.125340>,  <19.764090, 20.997810, 10.228569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.193415, 20.736639, 10.125340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.095089, 21.097057, 9.982405>,  <19.036093, 21.313309, 9.896644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.095089, 21.097057, 9.982405>,  <19.193415, 20.736639, 10.125340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.095089, 21.097057, 9.982405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140172, -0.397819, -0.906693,
		-0.959128, -0.172791, 0.224092,
		-0.245816, 0.901045, -0.357339,
		19.021343, 21.367371, 9.875203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.527927, 20.646711, 9.760518>,  <19.193415, 20.736639, 10.125340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.527927, 20.646711, 9.760518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.693863, 20.960079, 9.575408>,  <18.793425, 21.148100, 9.464342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.693863, 20.960079, 9.575408>,  <18.527927, 20.646711, 9.760518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.693863, 20.960079, 9.575408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215415, -0.409584, -0.886475,
		-0.884027, 0.467434, -0.001152,
		0.414840, 0.783419, -0.462776,
		18.818316, 21.195105, 9.436575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.181864, 20.890795, 10.310122>,  <18.527927, 20.646711, 9.760518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.181864, 20.890795, 10.310122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.952477, 20.575764, 10.219917>,  <17.814844, 20.386745, 10.165794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.952477, 20.575764, 10.219917>,  <18.181864, 20.890795, 10.310122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.952477, 20.575764, 10.219917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246794, -0.096401, 0.964261,
		-0.781170, 0.608628, -0.139086,
		-0.573469, -0.787578, -0.225511,
		17.780436, 20.339491, 10.152264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.612604, 21.143250, 10.547389>,  <18.181864, 20.890795, 10.310122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.612604, 21.143250, 10.547389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.580227, 20.744942, 10.529984>,  <17.560801, 20.505957, 10.519542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.580227, 20.744942, 10.529984>,  <17.612604, 21.143250, 10.547389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.580227, 20.744942, 10.529984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398588, -0.007675, 0.917098,
		-0.913551, 0.091574, -0.396280,
		-0.080941, -0.995769, -0.043512,
		17.555944, 20.446211, 10.516931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.030390, 21.065832, 10.907416>,  <17.612604, 21.143250, 10.547389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.030390, 21.065832, 10.907416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.181744, 20.696060, 10.888439>,  <17.272556, 20.474197, 10.877052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.181744, 20.696060, 10.888439>,  <17.030390, 21.065832, 10.907416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.181744, 20.696060, 10.888439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421327, -0.217640, 0.880407,
		-0.824202, -0.313144, -0.471840,
		0.378385, -0.924432, -0.047444,
		17.295259, 20.418732, 10.874207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.421421, 20.681673, 11.064902>,  <17.030390, 21.065832, 10.907416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.421421, 20.681673, 11.064902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.748226, 20.470982, 11.158754>,  <16.944309, 20.344566, 11.215066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.748226, 20.470982, 11.158754>,  <16.421421, 20.681673, 11.064902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.748226, 20.470982, 11.158754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467847, -0.367674, 0.803701,
		-0.337069, -0.766401, -0.546823,
		0.817009, -0.526732, 0.234627,
		16.993330, 20.312963, 11.229143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.112192, 20.043272, 11.370873>,  <16.421421, 20.681673, 11.064902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.112192, 20.043272, 11.370873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.493423, 20.074383, 11.487899>,  <16.722162, 20.093048, 11.558114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.493423, 20.074383, 11.487899>,  <16.112192, 20.043272, 11.370873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.493423, 20.074383, 11.487899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277121, -0.164838, 0.946590,
		0.121847, -0.983250, -0.135550,
		0.953078, 0.077775, 0.292564,
		16.779346, 20.097715, 11.575668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.269897, 19.421642, 11.764656>,  <16.112192, 20.043272, 11.370873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.269897, 19.421642, 11.764656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.547245, 19.686016, 11.879482>,  <16.713654, 19.844641, 11.948378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.547245, 19.686016, 11.879482>,  <16.269897, 19.421642, 11.764656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.547245, 19.686016, 11.879482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237204, -0.166824, 0.957029,
		0.680424, -0.731665, 0.041106,
		0.693367, 0.660936, 0.287065,
		16.755255, 19.884296, 11.965602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.557068, 19.148727, 12.422478>,  <16.269897, 19.421642, 11.764656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.557068, 19.148727, 12.422478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.689442, 19.526115, 12.429881>,  <16.768866, 19.752548, 12.434323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.689442, 19.526115, 12.429881>,  <16.557068, 19.148727, 12.422478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.689442, 19.526115, 12.429881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314679, 0.091844, 0.944744,
		0.889639, -0.318475, 0.327286,
		0.330936, 0.943471, 0.018509,
		16.788723, 19.809156, 12.435434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.968872, 19.167280, 13.018473>,  <16.557068, 19.148727, 12.422478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.968872, 19.167280, 13.018473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.822121, 19.530773, 12.938870>,  <16.734070, 19.748869, 12.891109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.822121, 19.530773, 12.938870>,  <16.968872, 19.167280, 13.018473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.822121, 19.530773, 12.938870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218155, 0.123914, 0.968015,
		0.904327, 0.398559, 0.152783,
		-0.366879, 0.908733, -0.199006,
		16.712057, 19.803392, 12.879169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.162086, 19.605347, 13.585052>,  <16.968872, 19.167280, 13.018473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.162086, 19.605347, 13.585052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.912155, 19.851086, 13.392318>,  <16.762196, 19.998529, 13.276677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.912155, 19.851086, 13.392318>,  <17.162086, 19.605347, 13.585052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.912155, 19.851086, 13.392318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330904, 0.350594, 0.876120,
		0.707170, 0.706868, -0.015772,
		-0.624831, 0.614347, -0.481835,
		16.724707, 20.035389, 13.247767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.332270, 20.228783, 13.818386>,  <17.162086, 19.605347, 13.585052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.332270, 20.228783, 13.818386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.963390, 20.275738, 13.670999>,  <16.742062, 20.303911, 13.582566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.963390, 20.275738, 13.670999>,  <17.332270, 20.228783, 13.818386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.963390, 20.275738, 13.670999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283511, 0.442778, 0.850629,
		0.263002, 0.888914, -0.375049,
		-0.922199, 0.117387, -0.368469,
		16.686731, 20.310953, 13.560458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.091551, 20.975798, 13.984429>,  <17.332270, 20.228783, 13.818386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.091551, 20.975798, 13.984429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.753078, 20.770790, 13.926053>,  <16.549995, 20.647785, 13.891027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.753078, 20.770790, 13.926053>,  <17.091551, 20.975798, 13.984429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.753078, 20.770790, 13.926053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389371, 0.407672, 0.825950,
		-0.363819, 0.755730, -0.544525,
		-0.846183, -0.512519, -0.145941,
		16.499224, 20.617035, 13.882271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.574497, 21.370792, 14.283046>,  <17.091551, 20.975798, 13.984429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.574497, 21.370792, 14.283046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.405575, 21.008778, 14.262795>,  <16.304220, 20.791569, 14.250646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.405575, 21.008778, 14.262795>,  <16.574497, 21.370792, 14.283046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.405575, 21.008778, 14.262795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370088, 0.121168, 0.921061,
		-0.827461, 0.407707, -0.386114,
		-0.422308, -0.905038, -0.050626,
		16.278883, 20.737267, 14.247608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.909748, 21.427849, 14.575257>,  <16.574497, 21.370792, 14.283046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.909748, 21.427849, 14.575257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.010509, 21.042221, 14.608987>,  <16.070967, 20.810844, 14.629225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.010509, 21.042221, 14.608987>,  <15.909748, 21.427849, 14.575257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.010509, 21.042221, 14.608987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338198, -0.006057, 0.941056,
		-0.906734, -0.265573, -0.327573,
		0.251903, -0.964072, 0.084324,
		16.086081, 20.753000, 14.634284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.360825, 21.120476, 14.928086>,  <15.909748, 21.427849, 14.575257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.360825, 21.120476, 14.928086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.683570, 20.893864, 14.995032>,  <15.877217, 20.757896, 15.035200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.683570, 20.893864, 14.995032>,  <15.360825, 21.120476, 14.928086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.683570, 20.893864, 14.995032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261610, -0.088664, 0.961093,
		-0.529651, -0.819256, -0.219750,
		0.806865, -0.566533, 0.167365,
		15.925630, 20.723904, 15.045241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.205879, 20.600227, 15.527548>,  <15.360825, 21.120476, 14.928086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.205879, 20.600227, 15.527548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.605689, 20.593872, 15.516965>,  <15.845574, 20.590059, 15.510615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.605689, 20.593872, 15.516965>,  <15.205879, 20.600227, 15.527548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.605689, 20.593872, 15.516965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024960, -0.088073, 0.995801,
		-0.018148, -0.995987, -0.087635,
		0.999524, -0.015885, -0.026458,
		15.905546, 20.589106, 15.509027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.287868, 20.148985, 15.986993>,  <15.205879, 20.600227, 15.527548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.287868, 20.148985, 15.986993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.659287, 20.297325, 15.980418>,  <15.882138, 20.386330, 15.976474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.659287, 20.297325, 15.980418>,  <15.287868, 20.148985, 15.986993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.659287, 20.297325, 15.980418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028499, -0.027070, 0.999227,
		0.370121, -0.928297, -0.035704,
		0.928546, 0.370852, -0.016437,
		15.937851, 20.408581, 15.975488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.736429, 19.750551, 16.381536>,  <15.287868, 20.148985, 15.986993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.736429, 19.750551, 16.381536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.947719, 20.090187, 16.383558>,  <16.074492, 20.293968, 16.384771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.947719, 20.090187, 16.383558>,  <15.736429, 19.750551, 16.381536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.947719, 20.090187, 16.383558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194753, -0.126944, 0.972603,
		0.826469, -0.512768, -0.232417,
		0.528223, 0.849091, 0.005053,
		16.106186, 20.344913, 16.385075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.218430, 19.588219, 16.737688>,  <15.736429, 19.750551, 16.381536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.218430, 19.588219, 16.737688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.228249, 19.987762, 16.754059>,  <16.234140, 20.227489, 16.763882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.228249, 19.987762, 16.754059>,  <16.218430, 19.588219, 16.737688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.228249, 19.987762, 16.754059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388606, -0.047255, 0.920191,
		0.921077, -0.006682, -0.389323,
		0.024546, 0.998861, 0.040929,
		16.235613, 20.287420, 16.766336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.918472, 19.793709, 16.915049>,  <16.218430, 19.588219, 16.737688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.918472, 19.793709, 16.915049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.710667, 20.123535, 17.004662>,  <16.585983, 20.321432, 17.058430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.710667, 20.123535, 17.004662>,  <16.918472, 19.793709, 16.915049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.710667, 20.123535, 17.004662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479892, 0.064634, 0.874944,
		0.706971, 0.562058, -0.429282,
		-0.519516, 0.824568, 0.224032,
		16.554811, 20.370905, 17.071871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.392557, 20.229813, 17.160637>,  <16.918472, 19.793709, 16.915049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.392557, 20.229813, 17.160637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.039139, 20.340805, 17.311554>,  <16.827087, 20.407400, 17.402105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.039139, 20.340805, 17.311554>,  <17.392557, 20.229813, 17.160637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.039139, 20.340805, 17.311554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326948, -0.211377, 0.921100,
		0.335338, 0.937190, 0.096040,
		-0.883546, 0.277480, 0.377295,
		16.774075, 20.424049, 17.424742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.557003, 20.731258, 17.665850>,  <17.392557, 20.229813, 17.160637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.557003, 20.731258, 17.665850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.194706, 20.585754, 17.752853>,  <16.977327, 20.498451, 17.805056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.194706, 20.585754, 17.752853>,  <17.557003, 20.731258, 17.665850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.194706, 20.585754, 17.752853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284860, -0.142475, 0.947922,
		-0.313828, 0.920532, 0.232666,
		-0.905741, -0.363762, 0.217510,
		16.922983, 20.476625, 17.818106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.415556, 21.044426, 18.344961>,  <17.557003, 20.731258, 17.665850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.415556, 21.044426, 18.344961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.188408, 20.721745, 18.279533>,  <17.052120, 20.528135, 18.240276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.188408, 20.721745, 18.279533>,  <17.415556, 21.044426, 18.344961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.188408, 20.721745, 18.279533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199836, -0.327889, 0.923339,
		-0.798493, 0.491648, 0.347406,
		-0.567868, -0.806704, -0.163568,
		17.018047, 20.479733, 18.230463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.037621, 20.960382, 18.929298>,  <17.415556, 21.044426, 18.344961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.037621, 20.960382, 18.929298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.979637, 20.599174, 18.767540>,  <16.944847, 20.382450, 18.670485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.979637, 20.599174, 18.767540>,  <17.037621, 20.960382, 18.929298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.979637, 20.599174, 18.767540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160111, -0.424737, 0.891046,
		-0.976397, 0.064417, 0.206153,
		-0.144959, -0.903022, -0.404398,
		16.936150, 20.328268, 18.646221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.584370, 20.542904, 19.409967>,  <17.037621, 20.960382, 18.929298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.584370, 20.542904, 19.409967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.783741, 20.279282, 19.184681>,  <16.903364, 20.121107, 19.049509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.783741, 20.279282, 19.184681>,  <16.584370, 20.542904, 19.409967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.783741, 20.279282, 19.184681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319042, -0.464626, 0.826036,
		-0.806089, -0.591410, -0.021316,
		0.498430, -0.659057, -0.563215,
		16.933270, 20.081564, 19.015717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.423491, 19.921450, 19.729357>,  <16.584370, 20.542904, 19.409967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.423491, 19.921450, 19.729357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.740761, 19.866043, 19.492146>,  <16.931124, 19.832800, 19.349819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.740761, 19.866043, 19.492146>,  <16.423491, 19.921450, 19.729357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.740761, 19.866043, 19.492146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438549, -0.545741, 0.714032,
		-0.422543, -0.826426, -0.372125,
		0.793178, -0.138515, -0.593028,
		16.978714, 19.824488, 19.314238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.590721, 19.230207, 19.779476>,  <16.423491, 19.921450, 19.729357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.590721, 19.230207, 19.779476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.930534, 19.416065, 19.679560>,  <17.134422, 19.527580, 19.619610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.930534, 19.416065, 19.679560>,  <16.590721, 19.230207, 19.779476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.930534, 19.416065, 19.679560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437092, -0.354858, 0.826455,
		0.295369, -0.811283, -0.504557,
		0.849534, 0.464647, -0.249791,
		17.185394, 19.555460, 19.604622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.131548, 18.766964, 19.876839>,  <16.590721, 19.230207, 19.779476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.131548, 18.766964, 19.876839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.270817, 19.141109, 19.901733>,  <17.354378, 19.365597, 19.916670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.270817, 19.141109, 19.901733>,  <17.131548, 18.766964, 19.876839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.270817, 19.141109, 19.901733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448931, -0.224650, 0.864866,
		0.822945, -0.273181, -0.498130,
		0.348170, 0.935363, 0.062235,
		17.375267, 19.421719, 19.920404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.665607, 18.586666, 20.259605>,  <17.131548, 18.766964, 19.876839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.665607, 18.586666, 20.259605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.677292, 18.986454, 20.253839>,  <17.684301, 19.226326, 20.250380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.677292, 18.986454, 20.253839>,  <17.665607, 18.586666, 20.259605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.677292, 18.986454, 20.253839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490568, -0.001769, 0.871401,
		0.870913, -0.032524, -0.490359,
		0.029209, 0.999469, -0.014415,
		17.686054, 19.286295, 20.249516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.385345, 18.715553, 20.208229>,  <17.665607, 18.586666, 20.259605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.385345, 18.715553, 20.208229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.176495, 19.018749, 20.364605>,  <18.051184, 19.200666, 20.458429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.176495, 19.018749, 20.364605>,  <18.385345, 18.715553, 20.208229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.176495, 19.018749, 20.364605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464354, -0.131828, 0.875783,
		0.715372, 0.638806, -0.283145,
		-0.522129, 0.757990, 0.390938,
		18.019855, 19.246147, 20.481886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.869110, 19.166784, 20.586699>,  <18.385345, 18.715553, 20.208229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.869110, 19.166784, 20.586699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.520573, 19.301685, 20.729259>,  <18.311451, 19.382626, 20.814796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.520573, 19.301685, 20.729259>,  <18.869110, 19.166784, 20.586699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.520573, 19.301685, 20.729259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353270, -0.072907, 0.932676,
		0.340531, 0.938587, -0.055614,
		-0.871343, 0.337252, 0.356402,
		18.259171, 19.402861, 20.836180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.968979, 19.884418, 20.962006>,  <18.869110, 19.166784, 20.586699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.968979, 19.884418, 20.962006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.642841, 19.698032, 21.099463>,  <18.447159, 19.586201, 21.181936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.642841, 19.698032, 21.099463>,  <18.968979, 19.884418, 20.962006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.642841, 19.698032, 21.099463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452144, -0.141727, 0.880613,
		-0.361630, 0.873379, 0.326239,
		-0.815346, -0.465963, 0.343640,
		18.398237, 19.558243, 21.202555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.858269, 20.120583, 21.609827>,  <18.968979, 19.884418, 20.962006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.858269, 20.120583, 21.609827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.654507, 19.776489, 21.618820>,  <18.532249, 19.570034, 21.624216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.654507, 19.776489, 21.618820>,  <18.858269, 20.120583, 21.609827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.654507, 19.776489, 21.618820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298059, -0.151871, 0.942388,
		-0.807260, 0.486758, 0.333764,
		-0.509404, -0.860234, 0.022483,
		18.501686, 19.518419, 21.625565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.644684, 20.076824, 22.290455>,  <18.858269, 20.120583, 21.609827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.644684, 20.076824, 22.290455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.553650, 19.702179, 22.183901>,  <18.499029, 19.477392, 22.119968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.553650, 19.702179, 22.183901>,  <18.644684, 20.076824, 22.290455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.553650, 19.702179, 22.183901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052995, -0.285071, 0.957040,
		-0.972316, 0.203689, 0.114513,
		-0.227583, -0.936614, -0.266384,
		18.485374, 19.421194, 22.103985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.150764, 19.758736, 22.889132>,  <18.644684, 20.076824, 22.290455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.150764, 19.758736, 22.889132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.330517, 19.475304, 22.671520>,  <18.438368, 19.305244, 22.540953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.330517, 19.475304, 22.671520>,  <18.150764, 19.758736, 22.889132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.330517, 19.475304, 22.671520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264758, -0.475985, 0.838654,
		-0.853205, -0.520912, -0.026296,
		0.449382, -0.708582, -0.544029,
		18.465332, 19.262730, 22.508312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.965439, 19.100508, 23.126707>,  <18.150764, 19.758736, 22.889132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.965439, 19.100508, 23.126707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.304737, 19.006271, 22.936979>,  <18.508316, 18.949730, 22.823143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.304737, 19.006271, 22.936979>,  <17.965439, 19.100508, 23.126707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.304737, 19.006271, 22.936979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253254, -0.606133, 0.753966,
		-0.465130, -0.759670, -0.454483,
		0.848243, -0.235592, -0.474320,
		18.559210, 18.935595, 22.794683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.102995, 18.422401, 23.297825>,  <17.965439, 19.100508, 23.126707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.102995, 18.422401, 23.297825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.460651, 18.545490, 23.167707>,  <18.675245, 18.619345, 23.089638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.460651, 18.545490, 23.167707>,  <18.102995, 18.422401, 23.297825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.460651, 18.545490, 23.167707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444286, -0.519072, 0.730188,
		0.055846, -0.797415, -0.600842,
		0.894142, 0.307724, -0.325292,
		18.728893, 18.637808, 23.070120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.602697, 17.792698, 23.340673>,  <18.102995, 18.422401, 23.297825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.602697, 17.792698, 23.340673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.837955, 18.116192, 23.343071>,  <18.979111, 18.310287, 23.344509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.837955, 18.116192, 23.343071>,  <18.602697, 17.792698, 23.340673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.837955, 18.116192, 23.343071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396193, -0.294572, 0.869631,
		0.705065, -0.509095, -0.493666,
		0.588145, 0.808734, 0.005992,
		19.014399, 18.358812, 23.344870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.314964, 17.525660, 23.378193>,  <18.602697, 17.792698, 23.340673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.314964, 17.525660, 23.378193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.285488, 17.888763, 23.543379>,  <19.267803, 18.106627, 23.642490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.285488, 17.888763, 23.543379>,  <19.314964, 17.525660, 23.378193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.285488, 17.888763, 23.543379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564438, -0.303423, 0.767688,
		0.822180, 0.289665, -0.490015,
		-0.073691, 0.907760, 0.412966,
		19.263380, 18.161091, 23.667269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.979815, 16.827854, 23.134611>,  <19.314964, 17.525660, 23.378193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.979815, 16.827854, 23.134611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.893230, 16.510925, 23.362774>,  <18.841280, 16.320766, 23.499672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.893230, 16.510925, 23.362774>,  <18.979815, 16.827854, 23.134611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.893230, 16.510925, 23.362774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449599, -0.437720, -0.778628,
		0.866606, -0.424998, -0.261479,
		-0.216461, -0.792325, 0.570409,
		18.828293, 16.273228, 23.533897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.397333, 16.290274, 22.883022>,  <18.979815, 16.827854, 23.134611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.397333, 16.290274, 22.883022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.051659, 16.160580, 23.036936>,  <18.844254, 16.082764, 23.129284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.051659, 16.160580, 23.036936>,  <19.397333, 16.290274, 22.883022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.051659, 16.160580, 23.036936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330642, -0.210517, -0.919978,
		0.379292, -0.922255, 0.074720,
		-0.864184, -0.324234, 0.384784,
		18.792404, 16.063309, 23.152370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.281576, 15.662666, 22.602140>,  <19.397333, 16.290274, 22.883022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.281576, 15.662666, 22.602140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.924305, 15.779953, 22.738527>,  <18.709942, 15.850325, 22.820360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.924305, 15.779953, 22.738527>,  <19.281576, 15.662666, 22.602140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.924305, 15.779953, 22.738527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409924, -0.219073, -0.885421,
		-0.184912, -0.930612, 0.315863,
		-0.893180, 0.293205, 0.340970,
		18.656351, 15.867918, 22.840816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.836485, 15.045150, 22.448183>,  <19.281576, 15.662666, 22.602140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.836485, 15.045150, 22.448183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.610100, 15.373489, 22.478895>,  <18.474268, 15.570493, 22.497322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.610100, 15.373489, 22.478895>,  <18.836485, 15.045150, 22.448183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.610100, 15.373489, 22.478895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520856, -0.283819, -0.805081,
		-0.639058, -0.495637, 0.588175,
		-0.565963, 0.820848, 0.076779,
		18.440311, 15.619743, 22.501928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.316177, 14.781646, 22.166784>,  <18.836485, 15.045150, 22.448183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.316177, 14.781646, 22.166784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.257225, 15.177090, 22.178995>,  <18.221853, 15.414356, 22.186321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.257225, 15.177090, 22.178995>,  <18.316177, 14.781646, 22.166784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.257225, 15.177090, 22.178995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562251, -0.058348, -0.824905,
		-0.813727, -0.138738, 0.564446,
		-0.147380, 0.988609, 0.030527,
		18.213011, 15.473672, 22.188152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.680048, 14.848502, 22.024498>,  <18.316177, 14.781646, 22.166784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.680048, 14.848502, 22.024498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.823292, 15.212589, 21.941299>,  <17.909239, 15.431042, 21.891380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.823292, 15.212589, 21.941299>,  <17.680048, 14.848502, 22.024498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.823292, 15.212589, 21.941299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559321, 0.030763, -0.828380,
		-0.747607, 0.412988, 0.520119,
		0.358111, 0.910217, -0.207994,
		17.930725, 15.485654, 21.878901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.099789, 15.236837, 21.883846>,  <17.680048, 14.848502, 22.024498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.099789, 15.236837, 21.883846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.397488, 15.428459, 21.697685>,  <17.576107, 15.543432, 21.585989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.397488, 15.428459, 21.697685>,  <17.099789, 15.236837, 21.883846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.397488, 15.428459, 21.697685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599986, 0.173385, -0.780996,
		-0.293444, 0.860492, 0.416467,
		0.744249, 0.479053, -0.465404,
		17.620762, 15.572175, 21.558064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.787169, 15.834269, 21.558355>,  <17.099789, 15.236837, 21.883846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.787169, 15.834269, 21.558355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.137371, 15.797092, 21.368683>,  <17.347492, 15.774787, 21.254879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.137371, 15.797092, 21.368683>,  <16.787169, 15.834269, 21.558355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.137371, 15.797092, 21.368683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426325, 0.313349, -0.848563,
		0.227451, 0.945079, 0.234716,
		0.875507, -0.092941, -0.474182,
		17.400023, 15.769210, 21.226429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.748217, 16.338362, 21.176811>,  <16.787169, 15.834269, 21.558355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.748217, 16.338362, 21.176811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.039936, 16.123188, 21.007694>,  <17.214968, 15.994083, 20.906225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.039936, 16.123188, 21.007694>,  <16.748217, 16.338362, 21.176811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.039936, 16.123188, 21.007694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322711, 0.274434, -0.905839,
		0.603311, 0.797064, 0.026546,
		0.729296, -0.537936, -0.422790,
		17.258724, 15.961807, 20.880857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.092449, 16.676277, 20.520586>,  <16.748217, 16.338362, 21.176811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.092449, 16.676277, 20.520586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.187000, 16.291386, 20.466564>,  <17.243731, 16.060450, 20.434151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.187000, 16.291386, 20.466564>,  <17.092449, 16.676277, 20.520586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.187000, 16.291386, 20.466564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243453, 0.075912, -0.966938,
		0.940669, 0.261440, -0.216314,
		0.236376, -0.962230, -0.135056,
		17.257914, 16.002716, 20.426048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.503630, 16.725912, 19.931725>,  <17.092449, 16.676277, 20.520586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.503630, 16.725912, 19.931725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.413048, 16.336361, 19.938408>,  <17.358700, 16.102631, 19.942417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.413048, 16.336361, 19.938408>,  <17.503630, 16.725912, 19.931725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.413048, 16.336361, 19.938408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130999, 0.013455, -0.991291,
		0.965173, -0.226669, -0.130624,
		-0.226452, -0.973879, 0.016707,
		17.345112, 16.044197, 19.943420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.911634, 16.429615, 19.365759>,  <17.503630, 16.725912, 19.931725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.911634, 16.429615, 19.365759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.590107, 16.208248, 19.453035>,  <17.397190, 16.075428, 19.505402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.590107, 16.208248, 19.453035>,  <17.911634, 16.429615, 19.365759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.590107, 16.208248, 19.453035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240671, -0.032885, -0.970050,
		0.544018, -0.832254, -0.106758,
		-0.803817, -0.553418, 0.218189,
		17.348961, 16.042223, 19.518492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.885880, 15.817848, 18.972729>,  <17.911634, 16.429615, 19.365759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.885880, 15.817848, 18.972729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.518562, 15.939068, 19.074633>,  <17.298172, 16.011799, 19.135775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.518562, 15.939068, 19.074633>,  <17.885880, 15.817848, 18.972729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.518562, 15.939068, 19.074633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250994, 0.052015, -0.966590,
		-0.306176, -0.951554, 0.028299,
		-0.918291, 0.303050, 0.254760,
		17.243074, 16.029984, 19.151060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.416531, 15.506598, 18.449789>,  <17.885880, 15.817848, 18.972729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.416531, 15.506598, 18.449789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.179676, 15.774776, 18.628620>,  <17.037563, 15.935683, 18.735920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.179676, 15.774776, 18.628620>,  <17.416531, 15.506598, 18.449789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.179676, 15.774776, 18.628620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395608, 0.241488, -0.886103,
		-0.702048, -0.701560, 0.122239,
		-0.592135, 0.670445, 0.447079,
		17.002035, 15.975910, 18.762743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.892454, 15.438613, 18.012686>,  <17.416531, 15.506598, 18.449789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.892454, 15.438613, 18.012686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.811752, 15.771290, 18.219599>,  <16.763330, 15.970896, 18.343746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.811752, 15.771290, 18.219599>,  <16.892454, 15.438613, 18.012686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.811752, 15.771290, 18.219599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324720, 0.441473, -0.836456,
		-0.924041, -0.336731, 0.180998,
		-0.201755, 0.831693, 0.517283,
		16.751226, 16.020798, 18.374784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.136831, 15.726761, 17.776684>,  <16.892454, 15.438613, 18.012686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.136831, 15.726761, 17.776684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.357197, 16.019760, 17.936653>,  <16.489416, 16.195560, 18.032635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.357197, 16.019760, 17.936653>,  <16.136831, 15.726761, 17.776684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.357197, 16.019760, 17.936653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233677, 0.595424, -0.768677,
		-0.801179, 0.330024, 0.499197,
		0.550916, 0.732499, 0.399922,
		16.522472, 16.239510, 18.056629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.628913, 16.139437, 17.843933>,  <16.136831, 15.726761, 17.776684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.628913, 16.139437, 17.843933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.965486, 16.355183, 17.857058>,  <16.167429, 16.484631, 17.864933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.965486, 16.355183, 17.857058>,  <15.628913, 16.139437, 17.843933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.965486, 16.355183, 17.857058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385062, 0.641097, -0.663869,
		-0.379103, 0.545967, 0.747128,
		0.841432, 0.539365, 0.032811,
		16.217915, 16.516993, 17.866901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.438238, 16.787434, 17.933395>,  <15.628913, 16.139437, 17.843933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.438238, 16.787434, 17.933395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.812392, 16.808338, 17.793497>,  <16.036884, 16.820881, 17.709558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.812392, 16.808338, 17.793497>,  <15.438238, 16.787434, 17.933395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.812392, 16.808338, 17.793497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291936, 0.672268, -0.680315,
		0.199569, 0.738460, 0.644087,
		0.935385, 0.052262, -0.349747,
		16.093008, 16.824017, 17.688574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.657971, 17.456287, 17.846399>,  <15.438238, 16.787434, 17.933395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.657971, 17.456287, 17.846399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.897231, 17.274082, 17.582664>,  <16.040787, 17.164759, 17.424423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.897231, 17.274082, 17.582664>,  <15.657971, 17.456287, 17.846399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.897231, 17.274082, 17.582664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219385, 0.698241, -0.681418,
		0.770771, 0.552238, 0.317720,
		0.598150, -0.455514, -0.659336,
		16.076675, 17.137428, 17.384863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.998041, 17.998003, 17.497360>,  <15.657971, 17.456287, 17.846399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.998041, 17.998003, 17.497360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.064064, 17.683361, 17.259365>,  <16.103678, 17.494576, 17.116568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.064064, 17.683361, 17.259365>,  <15.998041, 17.998003, 17.497360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.064064, 17.683361, 17.259365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209189, 0.561616, -0.800517,
		0.963844, 0.256596, -0.071850,
		0.165057, -0.786604, -0.594987,
		16.113581, 17.447380, 17.080870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.384958, 18.275232, 16.903162>,  <15.998041, 17.998003, 17.497360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.384958, 18.275232, 16.903162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.219673, 17.930897, 16.784361>,  <16.120502, 17.724295, 16.713081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.219673, 17.930897, 16.784361>,  <16.384958, 18.275232, 16.903162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.219673, 17.930897, 16.784361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182210, 0.397712, -0.899235,
		0.892219, -0.317460, -0.321193,
		-0.413214, -0.860839, -0.297002,
		16.095709, 17.672646, 16.695261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.650398, 18.311014, 16.202696>,  <16.384958, 18.275232, 16.903162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.650398, 18.311014, 16.202696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.358624, 18.037567, 16.212421>,  <16.183559, 17.873499, 16.218258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.358624, 18.037567, 16.212421>,  <16.650398, 18.311014, 16.202696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.358624, 18.037567, 16.212421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322344, 0.312164, -0.893671,
		0.603338, -0.659714, -0.448063,
		-0.729437, -0.683616, 0.024315,
		16.139791, 17.832483, 16.219715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.656979, 17.794176, 15.606789>,  <16.650398, 18.311014, 16.202696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.656979, 17.794176, 15.606789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.282516, 17.766960, 15.744763>,  <16.057838, 17.750631, 15.827548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.282516, 17.766960, 15.744763>,  <16.656979, 17.794176, 15.606789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.282516, 17.766960, 15.744763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349738, 0.280618, -0.893833,
		-0.035981, -0.957405, -0.286499,
		-0.936156, -0.068039, 0.344938,
		16.001669, 17.746550, 15.848245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.414087, 17.420406, 15.107822>,  <16.656979, 17.794176, 15.606789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.414087, 17.420406, 15.107822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.118202, 17.621181, 15.287105>,  <15.940672, 17.741646, 15.394673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.118202, 17.621181, 15.287105>,  <16.414087, 17.420406, 15.107822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.118202, 17.621181, 15.287105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404912, 0.199983, -0.892218,
		-0.537469, -0.841468, 0.055310,
		-0.739712, 0.501935, 0.448205,
		15.896289, 17.771763, 15.421566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.761940, 17.193779, 14.830433>,  <16.414087, 17.420406, 15.107822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.761940, 17.193779, 14.830433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.643823, 17.538719, 14.994946>,  <15.572952, 17.745684, 15.093655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.643823, 17.538719, 14.994946>,  <15.761940, 17.193779, 14.830433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.643823, 17.538719, 14.994946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376626, 0.290554, -0.879620,
		-0.878040, -0.414646, 0.238985,
		-0.295292, 0.862350, 0.411285,
		15.555235, 17.797424, 15.118332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.993025, 17.243532, 14.709444>,  <15.761940, 17.193779, 14.830433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.993025, 17.243532, 14.709444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.134347, 17.610992, 14.780160>,  <15.219140, 17.831469, 14.822590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.134347, 17.610992, 14.780160>,  <14.993025, 17.243532, 14.709444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.134347, 17.610992, 14.780160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408996, 0.321639, -0.853974,
		-0.841367, 0.229407, 0.489361,
		0.353305, 0.918652, 0.176790,
		15.240338, 17.886587, 14.833197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.487606, 17.668274, 14.578110>,  <14.993025, 17.243532, 14.709444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.487606, 17.668274, 14.578110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.805167, 17.910767, 14.559358>,  <14.995704, 18.056263, 14.548106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.805167, 17.910767, 14.559358>,  <14.487606, 17.668274, 14.578110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.805167, 17.910767, 14.559358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330476, 0.365492, -0.870173,
		-0.510394, 0.706326, 0.490511,
		0.793904, 0.606234, -0.046879,
		15.043339, 18.092636, 14.545294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.229215, 18.323006, 14.453827>,  <14.487606, 17.668274, 14.578110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.229215, 18.323006, 14.453827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.610576, 18.347794, 14.335719>,  <14.839392, 18.362667, 14.264854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.610576, 18.347794, 14.335719>,  <14.229215, 18.323006, 14.453827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.610576, 18.347794, 14.335719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296655, 0.370850, -0.880038,
		0.054964, 0.926623, 0.371953,
		0.953402, 0.061971, -0.295271,
		14.896596, 18.366385, 14.247138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.299483, 18.974463, 14.025039>,  <14.229215, 18.323006, 14.453827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.299483, 18.974463, 14.025039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.624871, 18.774437, 13.906245>,  <14.820105, 18.654421, 13.834970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.624871, 18.774437, 13.906245>,  <14.299483, 18.974463, 14.025039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.624871, 18.774437, 13.906245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202671, 0.234896, -0.950657,
		0.545151, 0.833522, 0.089732,
		0.813471, -0.500066, -0.296984,
		14.868913, 18.624416, 13.817150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.781985, 19.435774, 13.609314>,  <14.299483, 18.974463, 14.025039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.781985, 19.435774, 13.609314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.871680, 19.061768, 13.499433>,  <14.925497, 18.837364, 13.433504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.871680, 19.061768, 13.499433>,  <14.781985, 19.435774, 13.609314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.871680, 19.061768, 13.499433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176108, 0.238361, -0.955076,
		0.958490, 0.262542, -0.111214,
		0.224238, -0.935017, -0.274702,
		14.938951, 18.781263, 13.417022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.169035, 19.530281, 12.889748>,  <14.781985, 19.435774, 13.609314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.169035, 19.530281, 12.889748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.100873, 19.136150, 12.893708>,  <15.059976, 18.899672, 12.896085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.100873, 19.136150, 12.893708>,  <15.169035, 19.530281, 12.889748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.100873, 19.136150, 12.893708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142442, 0.014688, -0.989694,
		0.975024, -0.170058, -0.142855,
		-0.170404, -0.985324, 0.009903,
		15.049752, 18.840553, 12.896679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.572698, 19.330236, 12.369913>,  <15.169035, 19.530281, 12.889748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.572698, 19.330236, 12.369913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.291385, 19.052906, 12.432773>,  <15.122597, 18.886509, 12.470489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.291385, 19.052906, 12.432773>,  <15.572698, 19.330236, 12.369913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.291385, 19.052906, 12.432773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293246, 0.081553, -0.952552,
		0.647612, -0.715996, -0.260670,
		-0.703282, -0.693325, 0.157148,
		15.080400, 18.844910, 12.479918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.656644, 18.751432, 11.901893>,  <15.572698, 19.330236, 12.369913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.656644, 18.751432, 11.901893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.275565, 18.749336, 12.023442>,  <15.046918, 18.748079, 12.096373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.275565, 18.749336, 12.023442>,  <15.656644, 18.751432, 11.901893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.275565, 18.749336, 12.023442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281320, -0.363146, -0.888248,
		0.115006, -0.931718, 0.344494,
		-0.952697, -0.005241, 0.303875,
		14.989756, 18.747765, 12.114605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.426823, 18.132288, 11.823442>,  <15.656644, 18.751432, 11.901893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.426823, 18.132288, 11.823442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.085694, 18.341164, 11.824891>,  <14.881018, 18.466490, 11.825760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.085694, 18.341164, 11.824891>,  <15.426823, 18.132288, 11.823442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.085694, 18.341164, 11.824891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253223, -0.407470, -0.877409,
		-0.456703, -0.749187, 0.479729,
		-0.852819, 0.522194, 0.003619,
		14.829848, 18.497822, 11.825977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.866043, 17.629631, 11.540343>,  <15.426823, 18.132288, 11.823442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.866043, 17.629631, 11.540343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.704272, 17.995121, 11.524638>,  <14.607210, 18.214417, 11.515215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.704272, 17.995121, 11.524638>,  <14.866043, 17.629631, 11.540343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.704272, 17.995121, 11.524638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394636, -0.213077, -0.893790,
		-0.825046, -0.345978, 0.446763,
		-0.404426, 0.913727, -0.039263,
		14.582944, 18.269239, 11.512859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.156715, 17.620321, 11.568581>,  <14.866043, 17.629631, 11.540343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.156715, 17.620321, 11.568581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.241647, 17.964222, 11.382789>,  <14.292605, 18.170563, 11.271314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.241647, 17.964222, 11.382789>,  <14.156715, 17.620321, 11.568581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.241647, 17.964222, 11.382789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446189, -0.337581, -0.828828,
		-0.869386, 0.383231, 0.311933,
		0.212330, 0.859752, -0.464481,
		14.305346, 18.222147, 11.243444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.641859, 17.782091, 11.095969>,  <14.156715, 17.620321, 11.568581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.641859, 17.782091, 11.095969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.921798, 18.022903, 10.942204>,  <14.089761, 18.167391, 10.849946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.921798, 18.022903, 10.942204>,  <13.641859, 17.782091, 11.095969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.921798, 18.022903, 10.942204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322408, -0.213988, -0.922097,
		-0.637390, 0.769264, 0.044341,
		0.699848, 0.602032, -0.384411,
		14.131752, 18.203512, 10.826881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.343637, 18.121393, 10.552840>,  <13.641859, 17.782091, 11.095969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.343637, 18.121393, 10.552840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.734300, 18.152241, 10.472646>,  <13.968698, 18.170750, 10.424529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.734300, 18.152241, 10.472646>,  <13.343637, 18.121393, 10.552840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.734300, 18.152241, 10.472646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177445, -0.236356, -0.955327,
		-0.121058, 0.968602, -0.217154,
		0.976657, 0.077117, -0.200487,
		14.027297, 18.175375, 10.412499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.460323, 18.268206, 9.787427>,  <13.343637, 18.121393, 10.552840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.460323, 18.268206, 9.787427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.827638, 18.140724, 9.881387>,  <14.048026, 18.064236, 9.937763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.827638, 18.140724, 9.881387>,  <13.460323, 18.268206, 9.787427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.827638, 18.140724, 9.881387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117346, -0.347557, -0.930287,
		0.378129, 0.881834, -0.281758,
		0.918286, -0.318706, 0.234901,
		14.103124, 18.045113, 9.951857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.523707, 18.069323, 9.181650>,  <13.460323, 18.268206, 9.787427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.523707, 18.069323, 9.181650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.857820, 17.948006, 9.365093>,  <14.058287, 17.875216, 9.475160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.857820, 17.948006, 9.365093>,  <13.523707, 18.069323, 9.181650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.857820, 17.948006, 9.365093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263442, -0.511355, -0.817994,
		0.482604, 0.804071, -0.347224,
		0.835279, -0.303294, 0.458608,
		14.108403, 17.857018, 9.502676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.098269, 18.357807, 8.924926>,  <13.523707, 18.069323, 9.181650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.098269, 18.357807, 8.924926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.195992, 17.990696, 9.050141>,  <14.254626, 17.770428, 9.125271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.195992, 17.990696, 9.050141>,  <14.098269, 18.357807, 8.924926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.195992, 17.990696, 9.050141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481945, -0.165206, -0.860486,
		0.841453, 0.361091, 0.401959,
		0.244308, -0.917780, 0.313039,
		14.269285, 17.715363, 9.144053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.792299, 18.188236, 8.822314>,  <14.098269, 18.357807, 8.924926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.792299, 18.188236, 8.822314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.569829, 17.857616, 8.787717>,  <14.436347, 17.659245, 8.766958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.569829, 17.857616, 8.787717>,  <14.792299, 18.188236, 8.822314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.569829, 17.857616, 8.787717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330399, -0.124416, -0.935605,
		0.762565, -0.548938, 0.342289,
		-0.556176, -0.826552, -0.086493,
		14.402976, 17.609652, 8.761769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.251039, 17.603958, 8.553224>,  <14.792299, 18.188236, 8.822314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.251039, 17.603958, 8.553224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.868302, 17.539841, 8.456261>,  <14.638660, 17.501369, 8.398083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.868302, 17.539841, 8.456261>,  <15.251039, 17.603958, 8.553224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.868302, 17.539841, 8.456261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272717, -0.207083, -0.939543,
		0.100405, -0.965102, 0.241861,
		-0.956841, -0.160295, -0.242408,
		14.581250, 17.491753, 8.383538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.384063, 17.436586, 7.775603>,  <15.251039, 17.603958, 8.553224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.384063, 17.436586, 7.775603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.287553, 17.205704, 7.463548>,  <15.229647, 17.067173, 7.276314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.287553, 17.205704, 7.463548>,  <15.384063, 17.436586, 7.775603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.287553, 17.205704, 7.463548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.964321, 0.232853, 0.125952,
		0.108957, 0.782694, -0.612796,
		-0.241274, -0.577209, -0.780139,
		15.215171, 17.032541, 7.229506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.619078, 17.370190, 7.773571>,  <15.384063, 17.436586, 7.775603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.619078, 17.370190, 7.773571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.682937, 17.281750, 7.388733>,  <14.721252, 17.228685, 7.157830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.682937, 17.281750, 7.388733>,  <14.619078, 17.370190, 7.773571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.682937, 17.281750, 7.388733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.964921, 0.170815, -0.199372,
		0.208421, 0.960176, -0.186073,
		0.159648, -0.221099, -0.962095,
		14.730831, 17.215420, 7.100104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.202013, 17.746132, 7.346143>,  <14.619078, 17.370190, 7.773571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.202013, 17.746132, 7.346143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.284097, 17.423687, 7.124126>,  <14.333347, 17.230221, 6.990916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.284097, 17.423687, 7.124126>,  <14.202013, 17.746132, 7.346143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.284097, 17.423687, 7.124126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.942809, -0.010611, -0.333164,
		0.262678, 0.591667, -0.762188,
		0.205210, -0.806113, -0.555042,
		14.345659, 17.181852, 6.957614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.909328, 17.847933, 6.721164>,  <14.202013, 17.746132, 7.346143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.909328, 17.847933, 6.721164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.942603, 17.451775, 6.765339>,  <13.962568, 17.214079, 6.791843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.942603, 17.451775, 6.765339>,  <13.909328, 17.847933, 6.721164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.942603, 17.451775, 6.765339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871259, -0.126076, -0.474355,
		0.483722, -0.056757, -0.873379,
		0.083189, -0.990396, 0.110436,
		13.967560, 17.154655, 6.798470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.773208, 17.572657, 6.064735>,  <13.909328, 17.847933, 6.721164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.773208, 17.572657, 6.064735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.677272, 17.335819, 6.372476>,  <13.619710, 17.193716, 6.557120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.677272, 17.335819, 6.372476>,  <13.773208, 17.572657, 6.064735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.677272, 17.335819, 6.372476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.950724, -0.017131, -0.309566,
		0.196472, -0.805686, -0.558810,
		-0.239841, -0.592095, 0.769351,
		13.605320, 17.158192, 6.603281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.581429, 16.884682, 5.876743>,  <13.773208, 17.572657, 6.064735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.581429, 16.884682, 5.876743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.381446, 16.948864, 6.217165>,  <13.261456, 16.987373, 6.421418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.381446, 16.948864, 6.217165>,  <13.581429, 16.884682, 5.876743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.381446, 16.948864, 6.217165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848711, -0.286424, -0.444580,
		0.172429, -0.944572, 0.279379,
		-0.499959, 0.160453, 0.851056,
		13.231458, 16.997000, 6.472482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.188713, 16.268988, 5.869622>,  <13.581429, 16.884682, 5.876743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.188713, 16.268988, 5.869622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.024497, 16.595322, 6.032529>,  <12.925967, 16.791122, 6.130273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.024497, 16.595322, 6.032529>,  <13.188713, 16.268988, 5.869622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.024497, 16.595322, 6.032529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790500, -0.095813, -0.604922,
		-0.454495, -0.570290, 0.684253,
		-0.410541, 0.815836, 0.407268,
		12.901335, 16.840073, 6.154709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.407049, 16.293913, 6.048939>,  <13.188713, 16.268988, 5.869622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.407049, 16.293913, 6.048939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.521344, 16.670189, 5.975776>,  <12.589921, 16.895954, 5.931878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.521344, 16.670189, 5.975776>,  <12.407049, 16.293913, 6.048939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.521344, 16.670189, 5.975776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.901788, 0.199364, -0.383447,
		-0.324239, 0.274511, 0.905270,
		0.285739, 0.940690, -0.182909,
		12.607066, 16.952396, 5.920903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.975729, 16.842398, 6.408465>,  <12.407049, 16.293913, 6.048939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.975729, 16.842398, 6.408465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.130555, 16.966675, 6.061213>,  <12.223451, 17.041241, 5.852861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.130555, 16.966675, 6.061213>,  <11.975729, 16.842398, 6.408465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.130555, 16.966675, 6.061213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.920353, 0.073041, -0.384209,
		-0.055961, 0.947700, 0.314217,
		0.387066, 0.310691, -0.868131,
		12.246675, 17.059883, 5.800773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.648336, 17.473864, 6.201313>,  <11.975729, 16.842398, 6.408465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.648336, 17.473864, 6.201313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.800569, 17.246056, 5.909887>,  <11.891908, 17.109371, 5.735032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.800569, 17.246056, 5.909887>,  <11.648336, 17.473864, 6.201313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.800569, 17.246056, 5.909887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840839, 0.114803, -0.528971,
		0.384900, 0.813922, -0.435182,
		0.380581, -0.569518, -0.728565,
		11.914742, 17.075199, 5.691318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.540398, 17.750109, 5.459910>,  <11.648336, 17.473864, 6.201313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.540398, 17.750109, 5.459910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.564824, 17.351315, 5.440770>,  <11.579480, 17.112038, 5.429286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.564824, 17.351315, 5.440770>,  <11.540398, 17.750109, 5.459910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.564824, 17.351315, 5.440770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719907, -0.010788, -0.693987,
		0.691379, 0.076827, -0.718396,
		0.061067, -0.996986, -0.047849,
		11.583144, 17.052219, 5.426415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.691201, 17.933121, 4.758752>,  <11.540398, 17.750109, 5.459910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.691201, 17.933121, 4.758752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.841332, 18.296249, 4.683934>,  <11.931412, 18.514128, 4.639044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.841332, 18.296249, 4.683934>,  <11.691201, 17.933121, 4.758752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.841332, 18.296249, 4.683934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158484, -0.261680, -0.952054,
		-0.913242, 0.327690, -0.242092,
		0.375329, 0.907823, -0.187044,
		11.953931, 18.568596, 4.627821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.392404, 18.176504, 4.151876>,  <11.691201, 17.933121, 4.758752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.392404, 18.176504, 4.151876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.748193, 18.353958, 4.195743>,  <11.961666, 18.460430, 4.222062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.748193, 18.353958, 4.195743>,  <11.392404, 18.176504, 4.151876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.748193, 18.353958, 4.195743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192540, -0.146170, -0.970342,
		-0.414448, 0.884207, -0.215432,
		0.889472, 0.443635, 0.109665,
		12.015035, 18.487049, 4.228642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.721783, 18.574787, 3.545857>,  <11.392404, 18.176504, 4.151876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.721783, 18.574787, 3.545857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.036063, 18.478504, 3.773798>,  <12.224631, 18.420734, 3.910563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.036063, 18.478504, 3.773798>,  <11.721783, 18.574787, 3.545857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.036063, 18.478504, 3.773798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533916, -0.201368, -0.821209,
		0.312423, 0.949479, -0.029696,
		0.785701, -0.240709, 0.569854,
		12.271773, 18.406292, 3.944754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.389580, 18.986717, 3.490482>,  <11.721783, 18.574787, 3.545857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.389580, 18.986717, 3.490482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.417321, 18.593834, 3.560290>,  <12.433967, 18.358105, 3.602175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.417321, 18.593834, 3.560290>,  <12.389580, 18.986717, 3.490482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.417321, 18.593834, 3.560290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432163, -0.128093, -0.892652,
		0.899125, 0.137331, 0.415590,
		0.069354, -0.982208, 0.174521,
		12.438128, 18.299171, 3.612646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.065688, 18.711946, 3.407739>,  <12.389580, 18.986717, 3.490482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.065688, 18.711946, 3.407739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.746816, 18.492104, 3.307792>,  <12.555492, 18.360197, 3.247824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.746816, 18.492104, 3.307792>,  <13.065688, 18.711946, 3.407739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.746816, 18.492104, 3.307792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345074, -0.075180, -0.935560,
		0.495407, -0.832032, 0.249588,
		-0.797180, -0.549609, -0.249867,
		12.507662, 18.327221, 3.232832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.676304, 18.798998, 3.276293>,  <13.065688, 18.711946, 3.407739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.676304, 18.798998, 3.276293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.502891, 18.631153, 2.957300>,  <13.398843, 18.530447, 2.765905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.502891, 18.631153, 2.957300>,  <13.676304, 18.798998, 3.276293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.502891, 18.631153, 2.957300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779965, 0.268511, -0.565293,
		0.451335, -0.867081, 0.210873,
		-0.433533, -0.419611, -0.797481,
		13.372830, 18.505270, 2.718056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.143941, 18.394621, 2.918316>,  <13.676304, 18.798998, 3.276293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.143941, 18.394621, 2.918316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.885957, 18.540531, 2.649700>,  <13.731166, 18.628077, 2.488531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.885957, 18.540531, 2.649700>,  <14.143941, 18.394621, 2.918316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.885957, 18.540531, 2.649700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738046, 0.525297, -0.423499,
		0.198275, -0.768767, -0.608016,
		-0.644961, 0.364774, -0.671539,
		13.692469, 18.649963, 2.448239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.215487, 18.125025, 2.266832>,  <14.143941, 18.394621, 2.918316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.215487, 18.125025, 2.266832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.049167, 18.488651, 2.256209>,  <13.949374, 18.706827, 2.249835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.049167, 18.488651, 2.256209>,  <14.215487, 18.125025, 2.266832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.049167, 18.488651, 2.256209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838692, 0.371993, -0.397766,
		-0.351716, -0.187666, -0.917103,
		-0.415803, 0.909067, -0.026558,
		13.924426, 18.761372, 2.248241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.007030, 18.290133, 1.557593>,  <14.215487, 18.125025, 2.266832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.007030, 18.290133, 1.557593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.148107, 18.545227, 1.831498>,  <14.232753, 18.698284, 1.995842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.148107, 18.545227, 1.831498>,  <14.007030, 18.290133, 1.557593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.148107, 18.545227, 1.831498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860397, 0.066670, -0.505245,
		-0.367865, 0.767366, -0.525191,
		0.352693, 0.637734, 0.684764,
		14.253915, 18.736547, 2.036928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.547618, 18.490995, 1.223656>,  <14.007030, 18.290133, 1.557593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.547618, 18.490995, 1.223656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.634658, 18.643093, 1.583226>,  <14.686882, 18.734352, 1.798968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.634658, 18.643093, 1.583226>,  <14.547618, 18.490995, 1.223656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.634658, 18.643093, 1.583226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975962, -0.096211, -0.195552,
		0.012129, 0.919869, -0.392037,
		0.217601, 0.380242, 0.898925,
		14.699938, 18.757166, 1.852903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.991060, 18.405056, 0.744847>,  <14.547618, 18.490995, 1.223656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.991060, 18.405056, 0.744847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.801862, 18.584961, 1.047894>,  <13.688343, 18.692904, 1.229723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.801862, 18.584961, 1.047894>,  <13.991060, 18.405056, 0.744847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.801862, 18.584961, 1.047894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578309, 0.490247, -0.652086,
		-0.664706, -0.746572, 0.028217,
		-0.472996, 0.449764, 0.757619,
		13.659963, 18.719891, 1.275180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.262807, 18.417543, 0.628479>,  <13.991060, 18.405056, 0.744847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.262807, 18.417543, 0.628479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.350583, 18.732395, 0.859052>,  <13.403249, 18.921307, 0.997395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.350583, 18.732395, 0.859052>,  <13.262807, 18.417543, 0.628479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.350583, 18.732395, 0.859052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208944, 0.615040, -0.760308,
		-0.952989, 0.046400, 0.299430,
		0.219440, 0.787129, 0.576432,
		13.416415, 18.968534, 1.031981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.693691, 18.924507, 0.660204>,  <13.262807, 18.417543, 0.628479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.693691, 18.924507, 0.660204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.054822, 19.087627, 0.714759>,  <13.271501, 19.185499, 0.747491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.054822, 19.087627, 0.714759>,  <12.693691, 18.924507, 0.660204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.054822, 19.087627, 0.714759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117527, 0.539116, -0.833991,
		-0.413629, 0.736922, 0.534656,
		0.902828, 0.407800, 0.136386,
		13.325670, 19.209967, 0.755674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.646345, 19.545662, 0.398600>,  <12.693691, 18.924507, 0.660204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.646345, 19.545662, 0.398600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.032983, 19.443150, 0.400134>,  <13.264966, 19.381643, 0.401055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.032983, 19.443150, 0.400134>,  <12.646345, 19.545662, 0.398600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.032983, 19.443150, 0.400134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106403, 0.387612, -0.915661,
		0.233178, 0.885482, 0.401932,
		0.966595, -0.256279, 0.003836,
		13.322962, 19.366266, 0.401285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.158473, 20.079510, 0.344972>,  <12.646345, 19.545662, 0.398600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.158473, 20.079510, 0.344972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.253438, 19.750568, 0.138142>,  <13.310417, 19.553204, 0.014044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.253438, 19.750568, 0.138142>,  <13.158473, 20.079510, 0.344972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.253438, 19.750568, 0.138142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152963, 0.557302, -0.816098,
		0.959290, 0.114659, 0.258101,
		0.237413, -0.822355, -0.517076,
		13.324662, 19.503862, -0.016981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.829782, 20.194065, -0.124137>,  <13.158473, 20.079510, 0.344972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.829782, 20.194065, -0.124137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.634854, 19.880646, -0.278316>,  <13.517898, 19.692595, -0.370824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.634854, 19.880646, -0.278316>,  <13.829782, 20.194065, -0.124137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.634854, 19.880646, -0.278316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190768, 0.335217, -0.922625,
		0.852130, -0.523145, -0.013882,
		-0.487321, -0.783549, -0.385447,
		13.488658, 19.645580, -0.393951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.328455, 19.778721, -0.549062>,  <13.829782, 20.194065, -0.124137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.328455, 19.778721, -0.549062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.950131, 19.791103, -0.678360>,  <13.723137, 19.798532, -0.755939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.950131, 19.791103, -0.678360>,  <14.328455, 19.778721, -0.549062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.950131, 19.791103, -0.678360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305543, 0.421900, -0.853606,
		0.109952, -0.906114, -0.408496,
		-0.945809, 0.030958, -0.323246,
		13.666389, 19.800390, -0.775334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.176104, 19.329115, -1.117826>,  <14.328455, 19.778721, -0.549062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.176104, 19.329115, -1.117826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.937049, 19.649757, -1.124214>,  <13.793616, 19.842144, -1.128047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.937049, 19.649757, -1.124214>,  <14.176104, 19.329115, -1.117826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.937049, 19.649757, -1.124214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423554, 0.298741, -0.855194,
		-0.680759, -0.517860, -0.518063,
		-0.597637, 0.801608, -0.015970,
		13.757758, 19.890240, -1.129005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.701959, 19.356379, -1.758693>,  <14.176104, 19.329115, -1.117826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.701959, 19.356379, -1.758693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.842874, 19.703266, -1.617939>,  <13.927423, 19.911400, -1.533486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.842874, 19.703266, -1.617939>,  <13.701959, 19.356379, -1.758693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.842874, 19.703266, -1.617939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326468, 0.238500, -0.914624,
		-0.877104, 0.437090, -0.199099,
		0.352288, 0.867220, 0.351885,
		13.948560, 19.963432, -1.512373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.580997, 19.952154, -2.279867>,  <13.701959, 19.356379, -1.758693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.580997, 19.952154, -2.279867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.891549, 20.020931, -2.037324>,  <14.077881, 20.062197, -1.891799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.891549, 20.020931, -2.037324>,  <13.580997, 19.952154, -2.279867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.891549, 20.020931, -2.037324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579502, 0.183522, -0.794039,
		-0.247809, 0.967861, 0.042841,
		0.776382, 0.171943, 0.606356,
		14.124464, 20.072514, -1.855418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.812390, 20.667706, -2.252709>,  <13.580997, 19.952154, -2.279867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.812390, 20.667706, -2.252709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.114722, 20.411926, -2.196386>,  <14.296122, 20.258459, -2.162592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.114722, 20.411926, -2.196386>,  <13.812390, 20.667706, -2.252709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.114722, 20.411926, -2.196386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416722, 0.303914, -0.856726,
		0.505039, 0.706217, 0.496179,
		0.755830, -0.639449, 0.140808,
		14.341472, 20.220091, -2.154144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<20.765743, 16.365099, 18.160589> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.022369, 16.669323, 18.200480>,  <21.176344, 16.851858, 18.224413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.022369, 16.669323, 18.200480>,  <20.765743, 16.365099, 18.160589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.022369, 16.669323, 18.200480> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069918, 0.187447, -0.979783,
		-0.763877, 0.621621, 0.173436,
		0.641563, 0.760560, 0.099723,
		21.214838, 16.897491, 18.230396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.456074, 16.908241, 17.830256>,  <20.765743, 16.365099, 18.160589>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.456074, 16.908241, 17.830256> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.848663, 16.982929, 17.813072>,  <21.084217, 17.027742, 17.802763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.848663, 16.982929, 17.813072>,  <20.456074, 16.908241, 17.830256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.848663, 16.982929, 17.813072> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088902, 0.245195, -0.965389,
		-0.169725, 0.951323, 0.257252,
		0.981473, 0.186721, -0.042958,
		21.143105, 17.038946, 17.800184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.488556, 17.377827, 17.386625>,  <20.456074, 16.908241, 17.830256>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.488556, 17.377827, 17.386625> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.871952, 17.265747, 17.365519>,  <21.101990, 17.198498, 17.352854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.871952, 17.265747, 17.365519>,  <20.488556, 17.377827, 17.386625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.871952, 17.265747, 17.365519> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002254, 0.177618, -0.984097,
		0.285118, 0.943366, 0.169614,
		0.958490, -0.280201, -0.052769,
		21.159498, 17.181686, 17.349688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.841351, 17.958622, 17.093712>,  <20.488556, 17.377827, 17.386625>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.841351, 17.958622, 17.093712> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.042389, 17.618446, 17.031548>,  <21.163012, 17.414341, 16.994249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.042389, 17.618446, 17.031548>,  <20.841351, 17.958622, 17.093712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.042389, 17.618446, 17.031548> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089846, 0.230174, -0.968993,
		0.859839, 0.473051, 0.192094,
		0.502598, -0.850437, -0.155411,
		21.193169, 17.363316, 16.984924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.334211, 18.150890, 16.527168>,  <20.841351, 17.958622, 17.093712>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.334211, 18.150890, 16.527168> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.322453, 17.751553, 16.546936>,  <21.315397, 17.511950, 16.558798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.322453, 17.751553, 16.546936>,  <21.334211, 18.150890, 16.527168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.322453, 17.751553, 16.546936> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064918, -0.051245, -0.996574,
		0.997457, -0.026090, 0.066318,
		-0.029399, -0.998345, 0.049421,
		21.313633, 17.452049, 16.561762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.889853, 17.911358, 16.130405>,  <21.334211, 18.150890, 16.527168>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.889853, 17.911358, 16.130405> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.621910, 17.614372, 16.127907>,  <21.461145, 17.436180, 16.126408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.621910, 17.614372, 16.127907>,  <21.889853, 17.911358, 16.130405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.621910, 17.614372, 16.127907> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000898, 0.009223, -0.999957,
		0.742491, -0.669821, -0.006845,
		-0.669855, -0.742466, -0.006247,
		21.420954, 17.391632, 16.126032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.145144, 17.478796, 15.665196>,  <21.889853, 17.911358, 16.130405>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.145144, 17.478796, 15.665196> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.762955, 17.364105, 15.693088>,  <21.533642, 17.295290, 15.709822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.762955, 17.364105, 15.693088>,  <22.145144, 17.478796, 15.665196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.762955, 17.364105, 15.693088> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056427, -0.054402, -0.996923,
		0.289641, -0.956466, 0.035800,
		-0.955471, -0.286730, 0.069727,
		21.476313, 17.278086, 15.714005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.060984, 16.975498, 15.061149>,  <22.145144, 17.478796, 15.665196>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.060984, 16.975498, 15.061149> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.686775, 17.048264, 15.182281>,  <21.462250, 17.091923, 15.254960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.686775, 17.048264, 15.182281>,  <22.060984, 16.975498, 15.061149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.686775, 17.048264, 15.182281> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300819, 0.039228, -0.952874,
		-0.185222, -0.982531, 0.018025,
		-0.935522, 0.181916, 0.302830,
		21.406118, 17.102839, 15.273129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.637028, 16.448723, 14.702787>,  <22.060984, 16.975498, 15.061149>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.637028, 16.448723, 14.702787> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.405933, 16.759384, 14.803208>,  <21.267277, 16.945782, 14.863461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.405933, 16.759384, 14.803208>,  <21.637028, 16.448723, 14.702787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.405933, 16.759384, 14.803208> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380194, 0.016113, -0.924766,
		-0.722270, -0.629720, 0.285971,
		-0.577737, 0.776655, 0.251053,
		21.232613, 16.992380, 14.878525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.906555, 16.221210, 14.502135>,  <21.637028, 16.448723, 14.702787>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.906555, 16.221210, 14.502135> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.907677, 16.620628, 14.523685>,  <20.908350, 16.860279, 14.536614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.907677, 16.620628, 14.523685>,  <20.906555, 16.221210, 14.502135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.907677, 16.620628, 14.523685> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567084, 0.045963, -0.822376,
		-0.823655, -0.028243, 0.566387,
		0.002806, 0.998544, 0.053874,
		20.908518, 16.920191, 14.539846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.240177, 16.407738, 14.532286>,  <20.906555, 16.221210, 14.502135>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.240177, 16.407738, 14.532286> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.474731, 16.682552, 14.360644>,  <20.615465, 16.847441, 14.257660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.474731, 16.682552, 14.360644>,  <20.240177, 16.407738, 14.532286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.474731, 16.682552, 14.360644> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676571, 0.124116, -0.725842,
		-0.445422, 0.715944, 0.537609,
		0.586388, 0.687037, -0.429103,
		20.650648, 16.888664, 14.231914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.772581, 16.844145, 14.312149>,  <20.240177, 16.407738, 14.532286>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.772581, 16.844145, 14.312149> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.088791, 16.937592, 14.085702>,  <20.278517, 16.993660, 13.949834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.088791, 16.937592, 14.085702>,  <19.772581, 16.844145, 14.312149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.088791, 16.937592, 14.085702> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611283, 0.244510, -0.752694,
		-0.037421, 0.941083, 0.336099,
		0.790527, 0.233618, -0.566118,
		20.325949, 17.007677, 13.915867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.464504, 17.341763, 13.934222>,  <19.772581, 16.844145, 14.312149>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.464504, 17.341763, 13.934222> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.817394, 17.338600, 13.745919>,  <20.029129, 17.336702, 13.632937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.817394, 17.338600, 13.745919>,  <19.464504, 17.341763, 13.934222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.817394, 17.338600, 13.745919> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407357, 0.488545, -0.771612,
		0.236085, 0.872503, 0.427788,
		0.882227, -0.007904, -0.470758,
		20.082062, 17.336229, 13.604692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.660488, 17.973465, 13.659761>,  <19.464504, 17.341763, 13.934222>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.660488, 17.973465, 13.659761> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.867706, 17.712181, 13.438872>,  <19.992037, 17.555410, 13.306339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.867706, 17.712181, 13.438872>,  <19.660488, 17.973465, 13.659761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.867706, 17.712181, 13.438872> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288420, 0.474397, -0.831721,
		0.805260, 0.590140, 0.057361,
		0.518044, -0.653209, -0.552222,
		20.023119, 17.516218, 13.273206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.087826, 18.322826, 13.278752>,  <19.660488, 17.973465, 13.659761>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.087826, 18.322826, 13.278752> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.010441, 17.978928, 13.089688>,  <19.964010, 17.772589, 12.976250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.010441, 17.978928, 13.089688>,  <20.087826, 18.322826, 13.278752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.010441, 17.978928, 13.089688> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390118, 0.509449, -0.766987,
		0.900211, 0.036009, -0.433963,
		-0.193463, -0.859747, -0.472659,
		19.952402, 17.721003, 12.947890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.254204, 18.467125, 12.610182>,  <20.087826, 18.322826, 13.278752>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.254204, 18.467125, 12.610182> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.017410, 18.146240, 12.579165>,  <19.875334, 17.953711, 12.560555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.017410, 18.146240, 12.579165>,  <20.254204, 18.467125, 12.610182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.017410, 18.146240, 12.579165> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429421, 0.395372, -0.811960,
		0.682020, -0.447370, -0.578540,
		-0.591985, -0.802210, -0.077542,
		19.839815, 17.905577, 12.555903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.198200, 18.292376, 11.954476>,  <20.254204, 18.467125, 12.610182>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.198200, 18.292376, 11.954476> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.895248, 18.064320, 12.081797>,  <19.713476, 17.927486, 12.158189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.895248, 18.064320, 12.081797>,  <20.198200, 18.292376, 11.954476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.895248, 18.064320, 12.081797> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463934, 0.126824, -0.876744,
		0.459498, -0.811700, -0.360561,
		-0.757381, -0.570139, 0.318300,
		19.668034, 17.893278, 12.177286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.110706, 17.965210, 11.382071>,  <20.198200, 18.292376, 11.954476>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.110706, 17.965210, 11.382071> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.780777, 17.894615, 11.596926>,  <19.582819, 17.852259, 11.725839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.780777, 17.894615, 11.596926>,  <20.110706, 17.965210, 11.382071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.780777, 17.894615, 11.596926> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555390, 0.075040, -0.828198,
		0.105862, -0.981438, -0.159915,
		-0.824825, -0.176490, 0.537137,
		19.533329, 17.841669, 11.758067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.797565, 17.487551, 11.003288>,  <20.110706, 17.965210, 11.382071>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.797565, 17.487551, 11.003288> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.504700, 17.642368, 11.227479>,  <19.328979, 17.735258, 11.361993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.504700, 17.642368, 11.227479>,  <19.797565, 17.487551, 11.003288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.504700, 17.642368, 11.227479> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573383, 0.093925, -0.813886,
		-0.367653, -0.917265, 0.153157,
		-0.732164, 0.387045, 0.560476,
		19.285051, 17.758482, 11.395621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.152283, 17.169180, 10.742573>,  <19.797565, 17.487551, 11.003288>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.152283, 17.169180, 10.742573> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.069225, 17.506409, 10.941011>,  <19.019390, 17.708746, 11.060075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.069225, 17.506409, 10.941011>,  <19.152283, 17.169180, 10.742573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.069225, 17.506409, 10.941011> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654238, 0.257339, -0.711161,
		-0.727225, -0.472234, 0.498135,
		-0.207645, 0.843073, 0.496096,
		19.006931, 17.759331, 11.089840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.428579, 17.237103, 10.795635>,  <19.152283, 17.169180, 10.742573>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.428579, 17.237103, 10.795635> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.529819, 17.617630, 10.865982>,  <18.590563, 17.845947, 10.908190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.529819, 17.617630, 10.865982>,  <18.428579, 17.237103, 10.795635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.529819, 17.617630, 10.865982> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711737, 0.306228, -0.632183,
		-0.655264, 0.034835, 0.754596,
		0.253101, 0.951320, 0.175867,
		18.605749, 17.903027, 10.918742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.807100, 17.507765, 10.923052>,  <18.428579, 17.237103, 10.795635>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.807100, 17.507765, 10.923052> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.064785, 17.784256, 10.792090>,  <18.219397, 17.950151, 10.713513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.064785, 17.784256, 10.792090>,  <17.807100, 17.507765, 10.923052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.064785, 17.784256, 10.792090> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465408, 0.014578, -0.884976,
		-0.606947, 0.722490, 0.331094,
		0.644213, 0.691228, -0.327405,
		18.258049, 17.991625, 10.693869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.077980, 17.310108, 10.641270>,  <17.807100, 17.507765, 10.923052>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.077980, 17.310108, 10.641270> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.809479, 17.019650, 10.581766>,  <16.648378, 16.845373, 10.546064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.809479, 17.019650, 10.581766>,  <17.077980, 17.310108, 10.641270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.809479, 17.019650, 10.581766> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316519, -0.462281, 0.828319,
		-0.670250, 0.508927, 0.540147,
		-0.671253, -0.726148, -0.148759,
		16.608103, 16.801805, 10.537139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.644850, 17.209713, 11.290639>,  <17.077980, 17.310108, 10.641270>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.644850, 17.209713, 11.290639> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.615471, 16.867756, 11.085209>,  <16.597843, 16.662580, 10.961950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.615471, 16.867756, 11.085209>,  <16.644850, 17.209713, 11.290639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.615471, 16.867756, 11.085209> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192648, -0.517430, 0.833758,
		-0.978515, -0.037702, 0.202698,
		-0.073448, -0.854895, -0.513576,
		16.593437, 16.611288, 10.931136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.125084, 16.742630, 11.639068>,  <16.644850, 17.209713, 11.290639>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.125084, 16.742630, 11.639068> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.371399, 16.499931, 11.438005>,  <16.519188, 16.354313, 11.317368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.371399, 16.499931, 11.438005>,  <16.125084, 16.742630, 11.639068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.371399, 16.499931, 11.438005> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196153, -0.499821, 0.843625,
		-0.763105, -0.618092, -0.188769,
		0.615788, -0.606747, -0.502656,
		16.556135, 16.317907, 11.287209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.974863, 16.097801, 11.892891>,  <16.125084, 16.742630, 11.639068>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.974863, 16.097801, 11.892891> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.327110, 16.012611, 11.723584>,  <16.538458, 15.961497, 11.622000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.327110, 16.012611, 11.723584>,  <15.974863, 16.097801, 11.892891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.327110, 16.012611, 11.723584> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150181, -0.721780, 0.675633,
		-0.449397, -0.658541, -0.603628,
		0.880618, -0.212974, -0.423266,
		16.591295, 15.948719, 11.596604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.993551, 15.380236, 12.005859>,  <15.974863, 16.097801, 11.892891>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.993551, 15.380236, 12.005859> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.367092, 15.491219, 11.915580>,  <16.591217, 15.557808, 11.861412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.367092, 15.491219, 11.915580>,  <15.993551, 15.380236, 12.005859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.367092, 15.491219, 11.915580> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351606, -0.596539, 0.721466,
		0.065539, -0.753099, -0.654635,
		0.933851, 0.277457, -0.225698,
		16.647247, 15.574455, 11.847870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.413723, 14.752042, 11.958895>,  <15.993551, 15.380236, 12.005859>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.413723, 14.752042, 11.958895> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.673981, 15.045017, 12.039091>,  <16.830135, 15.220802, 12.087209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.673981, 15.045017, 12.039091>,  <16.413723, 14.752042, 11.958895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.673981, 15.045017, 12.039091> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348675, -0.522688, 0.777961,
		0.674602, -0.436270, -0.595467,
		0.650645, 0.732438, 0.200490,
		16.869175, 15.264749, 12.099238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.968952, 14.488001, 12.219164>,  <16.413723, 14.752042, 11.958895>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.968952, 14.488001, 12.219164> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.037842, 14.862640, 12.341227>,  <17.079176, 15.087424, 12.414464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.037842, 14.862640, 12.341227>,  <16.968952, 14.488001, 12.219164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.037842, 14.862640, 12.341227> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348651, -0.347691, 0.870375,
		0.921293, -0.043506, -0.386427,
		0.172224, 0.936599, 0.305157,
		17.089508, 15.143620, 12.432774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.566767, 14.458762, 12.573544>,  <16.968952, 14.488001, 12.219164>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.566767, 14.458762, 12.573544> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.364788, 14.775040, 12.712009>,  <17.243601, 14.964807, 12.795089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.364788, 14.775040, 12.712009>,  <17.566767, 14.458762, 12.573544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.364788, 14.775040, 12.712009> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369914, -0.164115, 0.914456,
		0.779866, 0.589805, -0.209619,
		-0.504949, 0.790694, 0.346165,
		17.213303, 15.012248, 12.815859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.001093, 14.725247, 12.998311>,  <17.566767, 14.458762, 12.573544>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.001093, 14.725247, 12.998311> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.676117, 14.920639, 13.125641>,  <17.481131, 15.037874, 13.202039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.676117, 14.920639, 13.125641>,  <18.001093, 14.725247, 12.998311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.676117, 14.920639, 13.125641> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305832, -0.107789, 0.945964,
		0.496396, 0.865892, -0.061821,
		-0.812439, 0.488480, 0.318324,
		17.432384, 15.067183, 13.221138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.275431, 15.350610, 13.304371>,  <18.001093, 14.725247, 12.998311>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.275431, 15.350610, 13.304371> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.911030, 15.286610, 13.456409>,  <17.692389, 15.248210, 13.547631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.911030, 15.286610, 13.456409>,  <18.275431, 15.350610, 13.304371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.911030, 15.286610, 13.456409> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358150, 0.149981, 0.921539,
		-0.204453, 0.975657, -0.079329,
		-0.911004, -0.160000, 0.380095,
		17.637728, 15.238609, 13.570437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.153225, 15.889225, 13.784397>,  <18.275431, 15.350610, 13.304371>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.153225, 15.889225, 13.784397> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.900692, 15.598190, 13.891753>,  <17.749172, 15.423569, 13.956166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.900692, 15.598190, 13.891753>,  <18.153225, 15.889225, 13.784397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.900692, 15.598190, 13.891753> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259780, 0.127671, 0.957191,
		-0.730706, 0.674030, 0.108410,
		-0.631334, -0.727588, 0.268390,
		17.711292, 15.379914, 13.972270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.878777, 16.127916, 14.444967>,  <18.153225, 15.889225, 13.784397>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.878777, 16.127916, 14.444967> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.762840, 15.745262, 14.433387>,  <17.693279, 15.515669, 14.426438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.762840, 15.745262, 14.433387>,  <17.878777, 16.127916, 14.444967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.762840, 15.745262, 14.433387> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202788, -0.090946, 0.974990,
		-0.935345, 0.276719, 0.220354,
		-0.289838, -0.956638, -0.028951,
		17.675888, 15.458271, 14.424702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.532219, 16.055744, 15.075258>,  <17.878777, 16.127916, 14.444967>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.532219, 16.055744, 15.075258> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.635490, 15.684784, 14.966981>,  <17.697453, 15.462208, 14.902015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.635490, 15.684784, 14.966981>,  <17.532219, 16.055744, 15.075258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.635490, 15.684784, 14.966981> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343299, -0.173837, 0.922999,
		-0.903044, -0.331227, 0.273494,
		0.258179, -0.927399, -0.270692,
		17.712944, 15.406564, 14.885773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.267979, 15.591727, 15.591645>,  <17.532219, 16.055744, 15.075258>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.267979, 15.591727, 15.591645> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.576099, 15.387951, 15.438230>,  <17.760973, 15.265685, 15.346180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.576099, 15.387951, 15.438230>,  <17.267979, 15.591727, 15.591645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.576099, 15.387951, 15.438230> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382827, -0.111561, 0.917059,
		-0.509976, -0.853243, 0.109092,
		0.770304, -0.509441, -0.383538,
		17.807190, 15.235119, 15.323168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.361935, 14.891991, 15.976791>,  <17.267979, 15.591727, 15.591645>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.361935, 14.891991, 15.976791> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.709312, 14.976791, 15.797521>,  <17.917738, 15.027672, 15.689959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.709312, 14.976791, 15.797521>,  <17.361935, 14.891991, 15.976791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.709312, 14.976791, 15.797521> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486727, -0.192516, 0.852076,
		0.094362, -0.958119, -0.270377,
		0.868443, 0.212003, -0.448177,
		17.969845, 15.040392, 15.663068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.754629, 14.342369, 16.281864>,  <17.361935, 14.891991, 15.976791>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.754629, 14.342369, 16.281864> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.014458, 14.613144, 16.143408>,  <18.170355, 14.775609, 16.060333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.014458, 14.613144, 16.143408>,  <17.754629, 14.342369, 16.281864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.014458, 14.613144, 16.143408> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535431, -0.084066, 0.840385,
		0.539789, -0.731224, -0.417061,
		0.649570, 0.676938, -0.346142,
		18.209330, 14.816225, 16.039566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.430573, 14.045357, 16.422020>,  <17.754629, 14.342369, 16.281864>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.430573, 14.045357, 16.422020> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.485756, 14.439896, 16.386051>,  <18.518866, 14.676619, 16.364470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.485756, 14.439896, 16.386051>,  <18.430573, 14.045357, 16.422020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.485756, 14.439896, 16.386051> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673700, -0.026901, 0.738515,
		0.726013, -0.162468, -0.668213,
		0.137960, 0.986347, -0.089924,
		18.527143, 14.735800, 16.359074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.163895, 14.259024, 16.357059>,  <18.430573, 14.045357, 16.422020>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.163895, 14.259024, 16.357059> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.922054, 14.500397, 16.565033>,  <18.776951, 14.645221, 16.689817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.922054, 14.500397, 16.565033>,  <19.163895, 14.259024, 16.357059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.922054, 14.500397, 16.565033> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548400, -0.158056, 0.821143,
		0.577683, 0.781593, -0.235362,
		-0.604599, 0.603433, 0.519931,
		18.740675, 14.681426, 16.721012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<20.028828, 15.355707, 16.808887> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.636372, 15.408665, 16.865229>,  <19.400898, 15.440439, 16.899033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.636372, 15.408665, 16.865229>,  <20.028828, 15.355707, 16.808887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.636372, 15.408665, 16.865229> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156216, 0.113860, 0.981138,
		0.113860, 0.984636, -0.132394,
		-0.981138, 0.132394, 0.140851,
		19.342030, 15.448383, 16.907484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.811996, 15.988953, 17.195354>,  <20.028828, 15.355707, 16.808887>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.811996, 15.988953, 17.195354> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.480907, 15.781620, 17.281340>,  <19.282253, 15.657221, 17.332932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.480907, 15.781620, 17.281340>,  <19.811996, 15.988953, 17.195354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.480907, 15.781620, 17.281340> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156883, 0.154050, 0.975529,
		-0.538761, 0.841191, -0.046193,
		-0.827722, -0.518330, 0.214964,
		19.232592, 15.626121, 17.345829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.564999, 16.327965, 17.697710>,  <19.811996, 15.988953, 17.195354>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.564999, 16.327965, 17.697710> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.410976, 15.963264, 17.754894>,  <19.318562, 15.744444, 17.789206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.410976, 15.963264, 17.754894>,  <19.564999, 16.327965, 17.697710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.410976, 15.963264, 17.754894> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232639, 0.054012, 0.971062,
		-0.893090, 0.407174, 0.191311,
		-0.385058, -0.911752, 0.142962,
		19.295460, 15.689739, 17.797783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.167091, 16.426493, 18.340689>,  <19.564999, 16.327965, 17.697710>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.167091, 16.426493, 18.340689> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.213657, 16.033577, 18.281956>,  <19.241596, 15.797828, 18.246716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.213657, 16.033577, 18.281956>,  <19.167091, 16.426493, 18.340689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.213657, 16.033577, 18.281956> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151008, -0.128613, 0.980130,
		-0.981654, -0.136274, 0.133361,
		0.116414, -0.982287, -0.146832,
		19.248581, 15.738891, 18.237906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.684177, 16.023993, 18.741674>,  <19.167091, 16.426493, 18.340689>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.684177, 16.023993, 18.741674> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.985104, 15.771095, 18.667606>,  <19.165659, 15.619357, 18.623165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.985104, 15.771095, 18.667606>,  <18.684177, 16.023993, 18.741674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.985104, 15.771095, 18.667606> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079377, -0.192034, 0.978173,
		-0.654003, -0.750594, -0.094284,
		0.752316, -0.632244, -0.185171,
		19.210798, 15.581422, 18.612055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.602543, 15.481103, 19.304914>,  <18.684177, 16.023993, 18.741674>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.602543, 15.481103, 19.304914> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.965118, 15.409069, 19.152105>,  <19.182663, 15.365849, 19.060419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.965118, 15.409069, 19.152105>,  <18.602543, 15.481103, 19.304914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.965118, 15.409069, 19.152105> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346174, -0.201370, 0.916304,
		-0.241948, -0.962817, -0.120186,
		0.906435, -0.180092, -0.382023,
		19.237049, 15.355043, 19.037498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.838766, 14.857454, 19.633348>,  <18.602543, 15.481103, 19.304914>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.838766, 14.857454, 19.633348> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.171936, 15.043442, 19.513323>,  <19.371838, 15.155034, 19.441307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.171936, 15.043442, 19.513323>,  <18.838766, 14.857454, 19.633348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.171936, 15.043442, 19.513323> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378405, -0.082900, 0.921920,
		0.403789, -0.881437, -0.244997,
		0.832925, 0.464969, -0.300066,
		19.421814, 15.182933, 19.423304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.273701, 14.501241, 19.947390>,  <18.838766, 14.857454, 19.633348>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.273701, 14.501241, 19.947390> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.476486, 14.835777, 19.863945>,  <19.598158, 15.036499, 19.813879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.476486, 14.835777, 19.863945>,  <19.273701, 14.501241, 19.947390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.476486, 14.835777, 19.863945> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509593, -0.095613, 0.855087,
		0.695199, -0.539806, -0.474666,
		0.506965, 0.836342, -0.208611,
		19.628576, 15.086679, 19.801361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.989901, 14.270812, 20.044600>,  <19.273701, 14.501241, 19.947390>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.989901, 14.270812, 20.044600> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.013836, 14.669323, 20.069420>,  <20.028196, 14.908430, 20.084312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.013836, 14.669323, 20.069420>,  <19.989901, 14.270812, 20.044600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.013836, 14.669323, 20.069420> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521921, -0.084213, 0.848827,
		0.850892, -0.018407, -0.525017,
		0.059838, 0.996278, 0.062049,
		20.031788, 14.968206, 20.088034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.705564, 14.505418, 19.959612>,  <19.989901, 14.270812, 20.044600>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.705564, 14.505418, 19.959612> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.514408, 14.810673, 20.133621>,  <20.399715, 14.993826, 20.238028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.514408, 14.810673, 20.133621>,  <20.705564, 14.505418, 19.959612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.514408, 14.810673, 20.133621> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650625, -0.025221, 0.758980,
		0.590177, 0.645745, -0.484462,
		-0.477889, 0.763136, 0.435023,
		20.371042, 15.039614, 20.264128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.252939, 14.976723, 20.241274>,  <20.705564, 14.505418, 19.959612>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.252939, 14.976723, 20.241274> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.922401, 15.068069, 20.447186>,  <20.724079, 15.122878, 20.570732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.922401, 15.068069, 20.447186>,  <21.252939, 14.976723, 20.241274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.922401, 15.068069, 20.447186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537811, 0.048838, 0.841650,
		0.167065, 0.972349, -0.163176,
		-0.826347, 0.228368, 0.514781,
		20.674498, 15.136580, 20.601620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.362640, 15.490891, 20.724617>,  <21.252939, 14.976723, 20.241274>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.362640, 15.490891, 20.724617> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.034451, 15.330303, 20.887413>,  <20.837536, 15.233950, 20.985090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.034451, 15.330303, 20.887413>,  <21.362640, 15.490891, 20.724617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.034451, 15.330303, 20.887413> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444149, 0.000573, 0.895953,
		-0.359933, 0.915871, 0.177843,
		-0.820476, -0.401471, 0.406990,
		20.788307, 15.209862, 21.009510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.297026, 15.843875, 21.357958>,  <21.362640, 15.490891, 20.724617>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.297026, 15.843875, 21.357958> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.059479, 15.526485, 21.411205>,  <20.916950, 15.336052, 21.443153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.059479, 15.526485, 21.411205>,  <21.297026, 15.843875, 21.357958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.059479, 15.526485, 21.411205> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122151, 0.074615, 0.989703,
		-0.795236, 0.604013, 0.052612,
		-0.593868, -0.793474, 0.133117,
		20.881319, 15.288444, 21.451141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.789572, 16.080383, 21.907898>,  <21.297026, 15.843875, 21.357958>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.789572, 16.080383, 21.907898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.807854, 15.681450, 21.885138>,  <20.818823, 15.442090, 21.871481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.807854, 15.681450, 21.885138>,  <20.789572, 16.080383, 21.907898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.807854, 15.681450, 21.885138> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144487, -0.062962, 0.987502,
		-0.988451, -0.036913, -0.146980,
		0.045706, -0.997333, -0.056901,
		20.821566, 15.382250, 21.868067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.381941, 15.904839, 22.437559>,  <20.789572, 16.080383, 21.907898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.381941, 15.904839, 22.437559> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.571362, 15.557972, 22.375889>,  <20.685015, 15.349853, 22.338886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.571362, 15.557972, 22.375889>,  <20.381941, 15.904839, 22.437559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.571362, 15.557972, 22.375889> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116760, -0.235313, 0.964881,
		-0.872991, -0.438921, -0.212683,
		0.473554, -0.867166, -0.154177,
		20.713428, 15.297822, 22.329636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.077778, 15.487816, 22.922035>,  <20.381941, 15.904839, 22.437559>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.077778, 15.487816, 22.922035> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.423378, 15.303295, 22.841335>,  <20.630737, 15.192583, 22.792915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.423378, 15.303295, 22.841335>,  <20.077778, 15.487816, 22.922035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.423378, 15.303295, 22.841335> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116492, -0.206680, 0.971449,
		-0.489830, -0.862835, -0.124833,
		0.864000, -0.461303, -0.201752,
		20.682579, 15.164905, 22.780809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.066404, 14.877873, 23.345854>,  <20.077778, 15.487816, 22.922035>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.066404, 14.877873, 23.345854> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.444435, 14.938297, 23.229916>,  <20.671253, 14.974551, 23.160353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.444435, 14.938297, 23.229916>,  <20.066404, 14.877873, 23.345854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.444435, 14.938297, 23.229916> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322720, -0.290797, 0.900716,
		0.051777, -0.944784, -0.323575,
		0.945077, 0.151061, -0.289845,
		20.727959, 14.983615, 23.142962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.414135, 14.307919, 23.550386>,  <20.066404, 14.877873, 23.345854>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.414135, 14.307919, 23.550386> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.680714, 14.604603, 23.520147>,  <20.840660, 14.782613, 23.502005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.680714, 14.604603, 23.520147>,  <20.414135, 14.307919, 23.550386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.680714, 14.604603, 23.520147> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207473, -0.087112, 0.974354,
		0.716103, -0.665039, -0.211941,
		0.666447, 0.741711, -0.075596,
		20.880648, 14.827116, 23.497469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.917719, 14.040463, 23.994812>,  <20.414135, 14.307919, 23.550386>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.917719, 14.040463, 23.994812> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.965698, 14.435020, 23.949837>,  <20.994486, 14.671755, 23.922852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.965698, 14.435020, 23.949837>,  <20.917719, 14.040463, 23.994812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.965698, 14.435020, 23.949837> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257719, 0.078438, 0.963031,
		0.958746, -0.144491, -0.244803,
		0.119947, 0.986392, -0.112440,
		21.001682, 14.730938, 23.916105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.437302, 14.309132, 24.486481>,  <20.917719, 14.040463, 23.994812>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.437302, 14.309132, 24.486481> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.272743, 14.661995, 24.394785>,  <21.174007, 14.873713, 24.339767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.272743, 14.661995, 24.394785>,  <21.437302, 14.309132, 24.486481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.272743, 14.661995, 24.394785> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099235, 0.206661, 0.973367,
		0.906039, 0.423187, 0.002521,
		-0.411396, 0.882158, -0.229238,
		21.149324, 14.926642, 24.326014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.717903, 14.824842, 24.979046>,  <21.437302, 14.309132, 24.486481>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.717903, 14.824842, 24.979046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.377686, 14.993954, 24.853931>,  <21.173555, 15.095421, 24.778862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.377686, 14.993954, 24.853931>,  <21.717903, 14.824842, 24.979046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.377686, 14.993954, 24.853931> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158529, 0.360982, 0.919000,
		0.501443, 0.831235, -0.240008,
		-0.850543, 0.422778, -0.312786,
		21.122522, 15.120787, 24.760096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.711958, 15.476261, 25.176022>,  <21.717903, 14.824842, 24.979046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.711958, 15.476261, 25.176022> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.323830, 15.423355, 25.095047>,  <21.090952, 15.391612, 25.046463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.323830, 15.423355, 25.095047>,  <21.711958, 15.476261, 25.176022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.323830, 15.423355, 25.095047> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227796, 0.219074, 0.948744,
		-0.081136, 0.966702, -0.242701,
		-0.970322, -0.132264, -0.202436,
		21.032732, 15.383676, 25.034317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.314819, 16.065702, 25.261438>,  <21.711958, 15.476261, 25.176022>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.314819, 16.065702, 25.261438> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.140602, 15.714607, 25.341311>,  <21.036072, 15.503949, 25.389235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.140602, 15.714607, 25.341311>,  <21.314819, 16.065702, 25.261438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.140602, 15.714607, 25.341311> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053195, 0.246536, 0.967673,
		-0.898594, 0.410843, -0.154069,
		-0.435545, -0.877740, 0.199681,
		21.009939, 15.451285, 25.401215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.771963, 16.307333, 25.618210>,  <21.314819, 16.065702, 25.261438>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.771963, 16.307333, 25.618210> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.865215, 15.927334, 25.701303>,  <20.921165, 15.699334, 25.751160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.865215, 15.927334, 25.701303>,  <20.771963, 16.307333, 25.618210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.865215, 15.927334, 25.701303> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280262, 0.270196, 0.921112,
		-0.931185, -0.156517, 0.329238,
		0.233128, -0.949998, 0.207736,
		20.935154, 15.642334, 25.763624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.617680, 16.979731, 25.849360>,  <20.771963, 16.307333, 25.618210>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.617680, 16.979731, 25.849360> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.918198, 17.234257, 25.919397>,  <21.098509, 17.386972, 25.961420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.918198, 17.234257, 25.919397>,  <20.617680, 16.979731, 25.849360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.918198, 17.234257, 25.919397> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263334, 0.532306, -0.804553,
		-0.605156, 0.558347, 0.567481,
		0.751294, 0.636317, 0.175096,
		21.143585, 17.425152, 25.971926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.421410, 17.727617, 25.837036>,  <20.617680, 16.979731, 25.849360>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.421410, 17.727617, 25.837036> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.811584, 17.723923, 25.749002>,  <21.045689, 17.721706, 25.696182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.811584, 17.723923, 25.749002>,  <20.421410, 17.727617, 25.837036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.811584, 17.723923, 25.749002> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181798, 0.530417, -0.828014,
		0.124383, 0.847686, 0.515710,
		0.975437, -0.009236, -0.220082,
		21.104216, 17.721151, 25.682978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.451166, 18.160576, 25.356573>,  <20.421410, 17.727617, 25.837036>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.451166, 18.160576, 25.356573> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.832424, 18.040737, 25.339819>,  <21.061178, 17.968834, 25.329767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.832424, 18.040737, 25.339819>,  <20.451166, 18.160576, 25.356573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.832424, 18.040737, 25.339819> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040105, 0.262374, -0.964132,
		0.299842, 0.917279, 0.262096,
		0.953146, -0.299599, -0.041883,
		21.118368, 17.950857, 25.327253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.890419, 18.741461, 25.168856>,  <20.451166, 18.160576, 25.356573>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.890419, 18.741461, 25.168856> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.073811, 18.399250, 25.072630>,  <21.183846, 18.193924, 25.014894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.073811, 18.399250, 25.072630>,  <20.890419, 18.741461, 25.168856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.073811, 18.399250, 25.072630> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040877, 0.250103, -0.967356,
		0.887766, 0.453344, 0.079695,
		0.458477, -0.855528, -0.240564,
		21.211353, 18.142591, 25.000460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.544603, 18.921778, 24.772356>,  <20.890419, 18.741461, 25.168856>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.544603, 18.921778, 24.772356> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.436600, 18.543674, 24.699049>,  <21.371798, 18.316813, 24.655066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.436600, 18.543674, 24.699049>,  <21.544603, 18.921778, 24.772356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.436600, 18.543674, 24.699049> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306676, 0.095997, -0.946960,
		0.912713, -0.311890, 0.263968,
		-0.270007, -0.945256, -0.183267,
		21.355598, 18.260098, 24.644070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.066395, 18.636778, 24.394148>,  <21.544603, 18.921778, 24.772356>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.066395, 18.636778, 24.394148> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.753017, 18.409027, 24.294531>,  <21.564991, 18.272377, 24.234760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.753017, 18.409027, 24.294531>,  <22.066395, 18.636778, 24.394148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.753017, 18.409027, 24.294531> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325244, -0.034181, -0.945012,
		0.529558, -0.821364, 0.211966,
		-0.783444, -0.569380, -0.249042,
		21.517984, 18.238213, 24.219818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.260242, 18.092243, 24.027742>,  <22.066395, 18.636778, 24.394148>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.260242, 18.092243, 24.027742> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.879856, 18.085663, 23.904198>,  <21.651625, 18.081715, 23.830070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.879856, 18.085663, 23.904198>,  <22.260242, 18.092243, 24.027742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.879856, 18.085663, 23.904198> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309191, -0.076814, -0.947893,
		-0.008129, -0.996910, 0.078134,
		-0.950965, -0.016453, -0.308860,
		21.594566, 18.080729, 23.811539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.196302, 17.595022, 23.501499>,  <22.260242, 18.092243, 24.027742>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.196302, 17.595022, 23.501499> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.862354, 17.801849, 23.425993>,  <21.661985, 17.925945, 23.380690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.862354, 17.801849, 23.425993>,  <22.196302, 17.595022, 23.501499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.862354, 17.801849, 23.425993> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091196, -0.208261, -0.973813,
		-0.542841, -0.830221, 0.126716,
		-0.834870, 0.517069, -0.188765,
		21.611893, 17.956970, 23.369364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.928457, 17.200136, 22.999739>,  <22.196302, 17.595022, 23.501499>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.928457, 17.200136, 22.999739> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.746525, 17.555233, 22.971325>,  <21.637365, 17.768291, 22.954277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.746525, 17.555233, 22.971325>,  <21.928457, 17.200136, 22.999739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.746525, 17.555233, 22.971325> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099965, -0.130147, -0.986443,
		-0.884951, -0.441562, 0.147938,
		-0.454829, 0.887742, -0.071033,
		21.610077, 17.821556, 22.950014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.214842, 17.095675, 22.750648>,  <21.928457, 17.200136, 22.999739>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.214842, 17.095675, 22.750648> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.329468, 17.465836, 22.651442>,  <21.398243, 17.687931, 22.591917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.329468, 17.465836, 22.651442>,  <21.214842, 17.095675, 22.750648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.329468, 17.465836, 22.651442> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161930, -0.208364, -0.964553,
		-0.944277, 0.316569, 0.090140,
		0.286566, 0.925402, -0.248016,
		21.415438, 17.743456, 22.577036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.653553, 17.395658, 22.370111>,  <21.214842, 17.095675, 22.750648>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.653553, 17.395658, 22.370111> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.966751, 17.616405, 22.255318>,  <21.154671, 17.748854, 22.186441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.966751, 17.616405, 22.255318>,  <20.653553, 17.395658, 22.370111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.966751, 17.616405, 22.255318> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289447, -0.085118, -0.953402,
		-0.550578, 0.829577, 0.093089,
		0.782997, 0.551866, -0.286983,
		21.201651, 17.781965, 22.169224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.389523, 17.802021, 21.854921>,  <20.653553, 17.395658, 22.370111>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.389523, 17.802021, 21.854921> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.786476, 17.813293, 21.806959>,  <21.024649, 17.820057, 21.778181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.786476, 17.813293, 21.806959>,  <20.389523, 17.802021, 21.854921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.786476, 17.813293, 21.806959> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118708, -0.040880, -0.992087,
		-0.032858, 0.998767, -0.037224,
		0.992385, 0.028179, -0.119905,
		21.084192, 17.821747, 21.770988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.507935, 18.186014, 21.241772>,  <20.389523, 17.802021, 21.854921>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.507935, 18.186014, 21.241772> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.846863, 17.983494, 21.305908>,  <21.050219, 17.861980, 21.344389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.846863, 17.983494, 21.305908>,  <20.507935, 18.186014, 21.241772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.846863, 17.983494, 21.305908> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077924, -0.180121, -0.980553,
		0.525338, 0.843335, -0.113167,
		0.847318, -0.506303, 0.160340,
		21.101059, 17.831602, 21.354010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.953079, 18.394455, 20.744555>,  <20.507935, 18.186014, 21.241772>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.953079, 18.394455, 20.744555> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.092964, 18.037697, 20.859255>,  <21.176895, 17.823643, 20.928074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.092964, 18.037697, 20.859255>,  <20.953079, 18.394455, 20.744555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.092964, 18.037697, 20.859255> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207004, -0.224949, -0.952128,
		0.913702, 0.392328, 0.105959,
		0.349710, -0.891895, 0.286750,
		21.197878, 17.770128, 20.945280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.522736, 18.332104, 20.374336>,  <20.953079, 18.394455, 20.744555>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.522736, 18.332104, 20.374336> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.442581, 17.958820, 20.493645>,  <21.394489, 17.734850, 20.565229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.442581, 17.958820, 20.493645>,  <21.522736, 18.332104, 20.374336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.442581, 17.958820, 20.493645> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228672, -0.340586, -0.911982,
		0.952657, -0.114542, 0.281647,
		-0.200385, -0.933210, 0.298269,
		21.382465, 17.678858, 20.583126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.084372, 17.946804, 20.189678>,  <21.522736, 18.332104, 20.374336>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.084372, 17.946804, 20.189678> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.784061, 17.684532, 20.221716>,  <21.603874, 17.527168, 20.240938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.784061, 17.684532, 20.221716>,  <22.084372, 17.946804, 20.189678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.784061, 17.684532, 20.221716> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173997, -0.313275, -0.933586,
		0.637227, -0.686979, 0.349287,
		-0.750778, -0.655681, 0.080095,
		21.558828, 17.487827, 20.245745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.349272, 17.320297, 19.792624>,  <22.084372, 17.946804, 20.189678>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.349272, 17.320297, 19.792624> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.960110, 17.237381, 19.833588>,  <21.726612, 17.187632, 19.858166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.960110, 17.237381, 19.833588>,  <22.349272, 17.320297, 19.792624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.960110, 17.237381, 19.833588> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025027, -0.345920, -0.937930,
		0.229849, -0.915079, 0.331359,
		-0.972904, -0.207289, 0.102411,
		21.668238, 17.175194, 19.864311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.250990, 16.619944, 19.496975>,  <22.349272, 17.320297, 19.792624>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.250990, 16.619944, 19.496975> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.877605, 16.761223, 19.471992>,  <21.653574, 16.845991, 19.457003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.877605, 16.761223, 19.471992>,  <22.250990, 16.619944, 19.496975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.877605, 16.761223, 19.471992> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017865, -0.219695, -0.975405,
		-0.358233, -0.909387, 0.211387,
		-0.933461, 0.353199, -0.062456,
		21.597567, 16.867182, 19.453257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.789053, 16.159103, 19.210913>,  <22.250990, 16.619944, 19.496975>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.789053, 16.159103, 19.210913> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.644867, 16.525715, 19.141586>,  <21.558355, 16.745682, 19.099991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.644867, 16.525715, 19.141586>,  <21.789053, 16.159103, 19.210913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.644867, 16.525715, 19.141586> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047689, -0.203671, -0.977877,
		-0.931553, -0.344225, 0.117125,
		-0.360465, 0.916530, -0.173314,
		21.536728, 16.800674, 19.089592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.243912, 16.134876, 18.711208>,  <21.789053, 16.159103, 19.210913>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.243912, 16.134876, 18.711208> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.304184, 16.529408, 18.684525>,  <21.340347, 16.766127, 18.668514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.304184, 16.529408, 18.684525>,  <21.243912, 16.134876, 18.711208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.304184, 16.529408, 18.684525> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258480, -0.025825, -0.965671,
		-0.954193, 0.162750, 0.251055,
		0.150680, 0.986329, -0.066710,
		21.349388, 16.825306, 18.664511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<17.356861, 14.189466, 14.633225> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.447926, 14.568741, 14.544578>,  <17.502563, 14.796306, 14.491389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.447926, 14.568741, 14.544578>,  <17.356861, 14.189466, 14.633225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.447926, 14.568741, 14.544578> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567102, -0.055904, -0.821748,
		-0.791559, 0.312761, 0.524991,
		0.227662, 0.948185, -0.221619,
		17.516224, 14.853196, 14.478092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.813044, 14.469130, 14.305963>,  <17.356861, 14.189466, 14.633225>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.813044, 14.469130, 14.305963> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.093468, 14.740967, 14.219554>,  <17.261723, 14.904069, 14.167708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.093468, 14.740967, 14.219554>,  <16.813044, 14.469130, 14.305963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.093468, 14.740967, 14.219554> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434789, 0.167252, -0.884865,
		-0.565217, 0.714270, 0.412733,
		0.701062, 0.679593, -0.216023,
		17.303787, 14.944844, 14.154747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.401766, 15.003904, 14.017449>,  <16.813044, 14.469130, 14.305963>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.401766, 15.003904, 14.017449> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.772301, 15.079086, 13.886867>,  <16.994621, 15.124195, 13.808517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.772301, 15.079086, 13.886867>,  <16.401766, 15.003904, 14.017449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.772301, 15.079086, 13.886867> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369476, 0.284438, -0.884637,
		-0.073415, 0.940089, 0.332930,
		0.926336, 0.187955, -0.326458,
		17.050201, 15.135472, 13.788929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.347696, 15.652734, 13.577932>,  <16.401766, 15.003904, 14.017449>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.347696, 15.652734, 13.577932> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.686874, 15.471352, 13.468121>,  <16.890381, 15.362522, 13.402234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.686874, 15.471352, 13.468121>,  <16.347696, 15.652734, 13.577932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.686874, 15.471352, 13.468121> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196319, 0.212426, -0.957253,
		0.492389, 0.865594, 0.091104,
		0.847946, -0.453456, -0.274529,
		16.941257, 15.335315, 13.385762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.730433, 16.133797, 13.189266>,  <16.347696, 15.652734, 13.577932>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.730433, 16.133797, 13.189266> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.880932, 15.778370, 13.084281>,  <16.971231, 15.565114, 13.021290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.880932, 15.778370, 13.084281>,  <16.730433, 16.133797, 13.189266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.880932, 15.778370, 13.084281> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001594, 0.282657, -0.959220,
		0.926518, 0.361321, 0.104933,
		0.376246, -0.888567, -0.262463,
		16.993805, 15.511800, 13.005542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.250805, 16.357975, 12.813832>,  <16.730433, 16.133797, 13.189266>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.250805, 16.357975, 12.813832> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.217266, 15.976082, 12.699673>,  <17.197144, 15.746945, 12.631177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.217266, 15.976082, 12.699673>,  <17.250805, 16.357975, 12.813832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.217266, 15.976082, 12.699673> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047261, 0.282276, -0.958168,
		0.995357, -0.093826, 0.021454,
		-0.083845, -0.954734, -0.285400,
		17.192112, 15.689662, 12.614053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.678492, 16.277107, 12.218389>,  <17.250805, 16.357975, 12.813832>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.678492, 16.277107, 12.218389> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.419415, 15.973598, 12.190787>,  <17.263968, 15.791493, 12.174227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.419415, 15.973598, 12.190787>,  <17.678492, 16.277107, 12.218389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.419415, 15.973598, 12.190787> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105049, 0.178636, -0.978292,
		0.754625, -0.626384, -0.195409,
		-0.647693, -0.758771, -0.069002,
		17.225107, 15.745967, 12.170087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.856155, 15.899235, 11.621479>,  <17.678492, 16.277107, 12.218389>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.856155, 15.899235, 11.621479> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.471027, 15.815678, 11.690000>,  <17.239950, 15.765544, 11.731112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.471027, 15.815678, 11.690000>,  <17.856155, 15.899235, 11.621479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.471027, 15.815678, 11.690000> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237086, 0.349419, -0.906475,
		0.129499, -0.913384, -0.385952,
		-0.962819, -0.208891, 0.171301,
		17.182182, 15.753010, 11.741390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.683931, 15.750855, 11.027587>,  <17.856155, 15.899235, 11.621479>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.683931, 15.750855, 11.027587> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.329903, 15.793190, 11.208892>,  <17.117485, 15.818591, 11.317675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.329903, 15.793190, 11.208892>,  <17.683931, 15.750855, 11.027587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.329903, 15.793190, 11.208892> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388301, 0.369062, -0.844402,
		-0.256650, -0.923359, -0.285550,
		-0.885072, 0.105836, 0.453261,
		17.064381, 15.824941, 11.344871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.197918, 15.448241, 10.610389>,  <17.683931, 15.750855, 11.027587>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.197918, 15.448241, 10.610389> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.999592, 15.725208, 10.820045>,  <16.880596, 15.891389, 10.945838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.999592, 15.725208, 10.820045>,  <17.197918, 15.448241, 10.610389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.999592, 15.725208, 10.820045> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447413, 0.313614, -0.837537,
		-0.744304, -0.649771, 0.154302,
		-0.495816, 0.692419, 0.524140,
		16.850847, 15.932934, 10.977286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.554573, 15.479884, 10.338086>,  <17.197918, 15.448241, 10.610389>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.554573, 15.479884, 10.338086> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.578773, 15.839779, 10.510973>,  <16.593294, 16.055716, 10.614705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.578773, 15.839779, 10.510973>,  <16.554573, 15.479884, 10.338086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.578773, 15.839779, 10.510973> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470932, 0.407519, -0.782401,
		-0.880092, -0.156208, 0.448371,
		0.060502, 0.899737, 0.432218,
		16.596924, 16.109699, 10.640638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.792355, 15.775534, 10.320942>,  <16.554573, 15.479884, 10.338086>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.792355, 15.775534, 10.320942> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.055443, 16.073421, 10.366190>,  <16.213295, 16.252153, 10.393338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.055443, 16.073421, 10.366190>,  <15.792355, 15.775534, 10.320942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.055443, 16.073421, 10.366190> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342881, 0.429709, -0.835334,
		-0.670698, 0.510630, 0.537979,
		0.657721, 0.744720, 0.113119,
		16.252760, 16.296837, 10.400126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.448099, 16.470495, 10.412555>,  <15.792355, 15.775534, 10.320942>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.448099, 16.470495, 10.412555> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.816983, 16.479908, 10.258166>,  <16.038313, 16.485556, 10.165533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.816983, 16.479908, 10.258166>,  <15.448099, 16.470495, 10.412555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.816983, 16.479908, 10.258166> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348060, 0.485381, -0.802035,
		0.168469, 0.873986, 0.455814,
		0.922211, 0.023533, -0.385971,
		16.093647, 16.486967, 10.142375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.682400, 17.190271, 10.451187>,  <15.448099, 16.470495, 10.412555>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.682400, 17.190271, 10.451187> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.854110, 16.974392, 10.161512>,  <15.957136, 16.844864, 9.987708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.854110, 16.974392, 10.161512>,  <15.682400, 17.190271, 10.451187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.854110, 16.974392, 10.161512> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316407, 0.661145, -0.680275,
		0.845937, 0.521163, 0.113048,
		0.429276, -0.539700, -0.724186,
		15.982892, 16.812481, 9.944257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.037114, 17.196058, 10.079596>,  <15.682400, 17.190271, 10.451187>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.037114, 17.196058, 10.079596> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.773412, 17.429504, 9.889954>,  <14.615191, 17.569572, 9.776169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.773412, 17.429504, 9.889954>,  <15.037114, 17.196058, 10.079596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.773412, 17.429504, 9.889954> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007197, 0.635394, 0.772154,
		0.751885, 0.505635, -0.423088,
		-0.659256, 0.583616, -0.474104,
		14.575635, 17.604589, 9.747723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.353698, 17.806852, 10.236987>,  <15.037114, 17.196058, 10.079596>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.353698, 17.806852, 10.236987> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.974858, 17.883511, 10.134012>,  <14.747555, 17.929506, 10.072227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.974858, 17.883511, 10.134012>,  <15.353698, 17.806852, 10.236987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.974858, 17.883511, 10.134012> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100949, 0.583533, 0.805791,
		0.304651, 0.789152, -0.533317,
		-0.947099, 0.191647, -0.257438,
		14.690728, 17.941006, 10.056781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.274575, 18.576742, 10.072316>,  <15.353698, 17.806852, 10.236987>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.274575, 18.576742, 10.072316> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.921599, 18.429844, 10.189913>,  <14.709814, 18.341705, 10.260470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.921599, 18.429844, 10.189913>,  <15.274575, 18.576742, 10.072316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.921599, 18.429844, 10.189913> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022961, 0.590580, 0.806653,
		-0.469863, 0.718573, -0.512719,
		-0.882441, -0.367244, 0.293991,
		14.656867, 18.319672, 10.278111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.892648, 19.093485, 10.242320>,  <15.274575, 18.576742, 10.072316>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.892648, 19.093485, 10.242320> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.696132, 18.799248, 10.428884>,  <14.578222, 18.622705, 10.540822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.696132, 18.799248, 10.428884>,  <14.892648, 19.093485, 10.242320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.696132, 18.799248, 10.428884> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152677, 0.599929, 0.785350,
		-0.857511, 0.314624, -0.407047,
		-0.491289, -0.735593, 0.466410,
		14.548745, 18.578569, 10.568807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.584413, 19.390326, 10.793354>,  <14.892648, 19.093485, 10.242320>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.584413, 19.390326, 10.793354> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.511380, 19.020393, 10.926833>,  <14.467561, 18.798435, 11.006921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.511380, 19.020393, 10.926833>,  <14.584413, 19.390326, 10.793354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.511380, 19.020393, 10.926833> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035032, 0.333069, 0.942252,
		-0.982567, 0.183727, -0.028414,
		-0.182581, -0.924829, 0.333699,
		14.456606, 18.742945, 11.026943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.225014, 19.490860, 11.405737>,  <14.584413, 19.390326, 10.793354>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.225014, 19.490860, 11.405737> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.293118, 19.100166, 11.457895>,  <14.333982, 18.865749, 11.489190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.293118, 19.100166, 11.457895>,  <14.225014, 19.490860, 11.405737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.293118, 19.100166, 11.457895> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048027, 0.140397, 0.988930,
		-0.984228, -0.162114, 0.070813,
		0.170261, -0.976733, 0.130396,
		14.344196, 18.807146, 11.497014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.724957, 19.213709, 11.879371>,  <14.225014, 19.490860, 11.405737>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.724957, 19.213709, 11.879371> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.040309, 18.967808, 11.870068>,  <14.229520, 18.820267, 11.864486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.040309, 18.967808, 11.870068>,  <13.724957, 19.213709, 11.879371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.040309, 18.967808, 11.870068> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183780, 0.199270, 0.962557,
		-0.587099, -0.763133, 0.270079,
		0.788378, -0.614752, -0.023257,
		14.276822, 18.783382, 11.863091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.766769, 18.830217, 12.536163>,  <13.724957, 19.213709, 11.879371>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.766769, 18.830217, 12.536163> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.140380, 18.774982, 12.404389>,  <14.364546, 18.741840, 12.325325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.140380, 18.774982, 12.404389>,  <13.766769, 18.830217, 12.536163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.140380, 18.774982, 12.404389> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319424, -0.089931, 0.943335,
		-0.159893, -0.986328, -0.039888,
		0.934025, -0.138091, -0.329436,
		14.420588, 18.733555, 12.305559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.027733, 18.166470, 12.841193>,  <13.766769, 18.830217, 12.536163>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.027733, 18.166470, 12.841193> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.355643, 18.359783, 12.718292>,  <14.552390, 18.475771, 12.644552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.355643, 18.359783, 12.718292>,  <14.027733, 18.166470, 12.841193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.355643, 18.359783, 12.718292> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488279, -0.309496, 0.815963,
		0.299248, -0.818932, -0.489695,
		0.819777, 0.483283, -0.307252,
		14.601577, 18.504768, 12.626117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.489219, 17.663605, 12.876307>,  <14.027733, 18.166470, 12.841193>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.489219, 17.663605, 12.876307> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.655702, 18.026581, 12.899360>,  <14.755591, 18.244368, 12.913192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.655702, 18.026581, 12.899360>,  <14.489219, 17.663605, 12.876307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.655702, 18.026581, 12.899360> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412352, -0.244860, 0.877502,
		0.810394, -0.341457, -0.476098,
		0.416206, 0.907442, 0.057633,
		14.780563, 18.298813, 12.916650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.242348, 17.576172, 12.986747>,  <14.489219, 17.663605, 12.876307>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.242348, 17.576172, 12.986747> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.124448, 17.933392, 13.122739>,  <15.053708, 18.147724, 13.204334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.124448, 17.933392, 13.122739>,  <15.242348, 17.576172, 12.986747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.124448, 17.933392, 13.122739> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391035, -0.211909, 0.895648,
		0.871902, 0.396937, -0.286753,
		-0.294751, 0.893048, 0.339980,
		15.036022, 18.201305, 13.224732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.831121, 17.816917, 13.392717>,  <15.242348, 17.576172, 12.986747>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.831121, 17.816917, 13.392717> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.560449, 18.081642, 13.521779>,  <15.398046, 18.240477, 13.599216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.560449, 18.081642, 13.521779>,  <15.831121, 17.816917, 13.392717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.560449, 18.081642, 13.521779> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409628, -0.025743, 0.911889,
		0.611807, 0.749226, -0.253678,
		-0.676681, 0.661814, 0.322654,
		15.357445, 18.280186, 13.618575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.147709, 18.504398, 13.812041>,  <15.831121, 17.816917, 13.392717>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.147709, 18.504398, 13.812041> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.773250, 18.443417, 13.938775>,  <15.548573, 18.406828, 14.014815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.773250, 18.443417, 13.938775>,  <16.147709, 18.504398, 13.812041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.773250, 18.443417, 13.938775> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342133, -0.187230, 0.920809,
		-0.081059, 0.970414, 0.227434,
		-0.936149, -0.152452, 0.316834,
		15.492405, 18.397680, 14.033825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.092625, 18.907022, 14.348214>,  <16.147709, 18.504398, 13.812041>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.092625, 18.907022, 14.348214> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.784768, 18.657799, 14.404000>,  <15.600054, 18.508265, 14.437472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.784768, 18.657799, 14.404000>,  <16.092625, 18.907022, 14.348214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.784768, 18.657799, 14.404000> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210332, -0.041176, 0.976762,
		-0.602837, 0.781091, 0.162740,
		-0.769641, -0.623058, 0.139466,
		15.553876, 18.470881, 14.445840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.730633, 19.568840, 14.341077>,  <16.092625, 18.907022, 14.348214>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.730633, 19.568840, 14.341077> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.910123, 19.923904, 14.299701>,  <16.017817, 20.136944, 14.274875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.910123, 19.923904, 14.299701>,  <15.730633, 19.568840, 14.341077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.910123, 19.923904, 14.299701> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054981, -0.142951, -0.988201,
		-0.891977, 0.437743, -0.112951,
		0.448725, 0.887663, -0.103441,
		16.044741, 20.190203, 14.268668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.453863, 19.934109, 13.722742>,  <15.730633, 19.568840, 14.341077>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.453863, 19.934109, 13.722742> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.793696, 20.139462, 13.771152>,  <15.997597, 20.262672, 13.800197>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.793696, 20.139462, 13.771152>,  <15.453863, 19.934109, 13.722742>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.793696, 20.139462, 13.771152> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170998, -0.051028, -0.983949,
		-0.498966, 0.856642, -0.131139,
		0.849584, 0.513381, 0.121023,
		16.048573, 20.293476, 13.807459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.410377, 20.328844, 13.180527>,  <15.453863, 19.934109, 13.722742>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.410377, 20.328844, 13.180527> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.795527, 20.319523, 13.288100>,  <16.026617, 20.313931, 13.352644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.795527, 20.319523, 13.288100>,  <15.410377, 20.328844, 13.180527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.795527, 20.319523, 13.288100> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267929, -0.038892, -0.962653,
		0.032893, 0.998972, -0.031205,
		0.962877, -0.023304, 0.268933,
		16.084391, 20.312532, 13.368780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.868814, 20.856409, 12.697934>,  <15.410377, 20.328844, 13.180527>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.868814, 20.856409, 12.697934> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.140259, 20.611160, 12.859709>,  <16.303125, 20.464010, 12.956774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.140259, 20.611160, 12.859709>,  <15.868814, 20.856409, 12.697934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.140259, 20.611160, 12.859709> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492432, -0.028771, -0.869875,
		0.544977, 0.789463, 0.282397,
		0.678610, -0.613123, 0.404437,
		16.343842, 20.427223, 12.981040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.500990, 21.028067, 12.422296>,  <15.868814, 20.856409, 12.697934>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.500990, 21.028067, 12.422296> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.590534, 20.678757, 12.595397>,  <16.644260, 20.469170, 12.699258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.590534, 20.678757, 12.595397>,  <16.500990, 21.028067, 12.422296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.590534, 20.678757, 12.595397> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655612, -0.193618, -0.729853,
		0.721152, 0.447103, 0.529187,
		0.223860, -0.873276, 0.432754,
		16.657692, 20.416775, 12.725223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.247824, 21.033604, 12.482263>,  <16.500990, 21.028067, 12.422296>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.247824, 21.033604, 12.482263> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.104080, 20.660942, 12.460793>,  <17.017834, 20.437346, 12.447910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.104080, 20.660942, 12.460793>,  <17.247824, 21.033604, 12.482263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.104080, 20.660942, 12.460793> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299410, -0.060628, -0.952196,
		0.883865, -0.358249, 0.300734,
		-0.359357, -0.931655, -0.053676,
		16.996273, 20.381445, 12.444690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.773640, 20.629835, 12.261542>,  <17.247824, 21.033604, 12.482263>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.773640, 20.629835, 12.261542> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.458511, 20.401573, 12.168857>,  <17.269434, 20.264616, 12.113245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.458511, 20.401573, 12.168857>,  <17.773640, 20.629835, 12.261542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.458511, 20.401573, 12.168857> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343611, -0.095005, -0.934294,
		0.511144, -0.815677, 0.270930,
		-0.787822, -0.570653, -0.231714,
		17.222164, 20.230377, 12.099342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.045658, 20.100933, 11.931654>,  <17.773640, 20.629835, 12.261542>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.045658, 20.100933, 11.931654> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.663334, 20.080090, 11.815921>,  <17.433939, 20.067583, 11.746481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.663334, 20.080090, 11.815921>,  <18.045658, 20.100933, 11.931654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.663334, 20.080090, 11.815921> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292636, -0.074309, -0.953332,
		0.028180, -0.995873, 0.086275,
		-0.955809, -0.052113, -0.289334,
		17.376591, 20.064457, 11.729120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.010828, 19.516077, 11.489198>,  <18.045658, 20.100933, 11.931654>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.010828, 19.516077, 11.489198> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.700741, 19.756992, 11.413003>,  <17.514688, 19.901543, 11.367286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.700741, 19.756992, 11.413003>,  <18.010828, 19.516077, 11.489198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.700741, 19.756992, 11.413003> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225479, -0.017857, -0.974084,
		-0.590083, -0.798078, -0.121960,
		-0.775218, 0.602290, -0.190487,
		17.468176, 19.937679, 11.355857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.672457, 19.221750, 11.038940>,  <18.010828, 19.516077, 11.489198>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.672457, 19.221750, 11.038940> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.579102, 19.607281, 10.987450>,  <17.523088, 19.838598, 10.956555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.579102, 19.607281, 10.987450>,  <17.672457, 19.221750, 11.038940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.579102, 19.607281, 10.987450> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102977, -0.107140, -0.988897,
		-0.966916, -0.244052, -0.074247,
		-0.233387, 0.963826, -0.128727,
		17.509085, 19.896429, 10.948832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.225012, 19.173986, 10.457184>,  <17.672457, 19.221750, 11.038940>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.225012, 19.173986, 10.457184> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.336807, 19.557472, 10.478153>,  <17.403885, 19.787563, 10.490735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.336807, 19.557472, 10.478153>,  <17.225012, 19.173986, 10.457184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.336807, 19.557472, 10.478153> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217529, -0.010047, -0.976002,
		-0.935183, 0.284185, -0.211356,
		0.279489, 0.958717, 0.052422,
		17.420654, 19.845087, 10.493880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.025324, 19.396877, 9.857285>,  <17.225012, 19.173986, 10.457184>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.025324, 19.396877, 9.857285> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.307377, 19.663616, 9.953704>,  <17.476608, 19.823660, 10.011555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.307377, 19.663616, 9.953704>,  <17.025324, 19.396877, 9.857285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.307377, 19.663616, 9.953704> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127187, 0.215483, -0.968189,
		-0.697574, 0.713361, 0.067130,
		0.705134, 0.666845, 0.241046,
		17.518917, 19.863670, 10.026017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<15.797015, 20.090919, 18.210342> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.139229, 20.231689, 18.058443>,  <16.344557, 20.316153, 17.967304>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.139229, 20.231689, 18.058443>,  <15.797015, 20.090919, 18.210342>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.139229, 20.231689, 18.058443> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516971, 0.540531, -0.663752,
		-0.028326, 0.764182, 0.644379,
		0.855534, 0.351927, -0.379748,
		16.395889, 20.337267, 17.944519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.603040, 20.684122, 17.867031>,  <15.797015, 20.090919, 18.210342>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.603040, 20.684122, 17.867031> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.972135, 20.606903, 17.733589>,  <16.193592, 20.560572, 17.653524>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.972135, 20.606903, 17.733589>,  <15.603040, 20.684122, 17.867031>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.972135, 20.606903, 17.733589> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234910, 0.404530, -0.883840,
		0.305574, 0.893918, 0.327926,
		0.922736, -0.193045, -0.333604,
		16.248955, 20.548990, 17.633509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.841885, 21.328306, 17.453926>,  <15.603040, 20.684122, 17.867031>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.841885, 21.328306, 17.453926> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.064983, 21.021561, 17.326906>,  <16.198843, 20.837513, 17.250694>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.064983, 21.021561, 17.326906>,  <15.841885, 21.328306, 17.453926>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.064983, 21.021561, 17.326906> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112097, 0.309482, -0.944275,
		0.822407, 0.562262, 0.086649,
		0.557746, -0.766865, -0.317548,
		16.232307, 20.791500, 17.231642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.314617, 21.600443, 16.926071>,  <15.841885, 21.328306, 17.453926>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.314617, 21.600443, 16.926071> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.279190, 21.205151, 16.876183>,  <16.257935, 20.967976, 16.846249>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.279190, 21.205151, 16.876183>,  <16.314617, 21.600443, 16.926071>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.279190, 21.205151, 16.876183> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000795, 0.125286, -0.992120,
		0.996070, -0.087770, -0.011882,
		-0.088567, -0.988230, -0.124724,
		16.252621, 20.908682, 16.838766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.707586, 21.468708, 16.337191>,  <16.314617, 21.600443, 16.926071>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.707586, 21.468708, 16.337191> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.536392, 21.107399, 16.349371>,  <16.433676, 20.890614, 16.356680>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.536392, 21.107399, 16.349371>,  <16.707586, 21.468708, 16.337191>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.536392, 21.107399, 16.349371> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046536, -0.055672, -0.997364,
		0.902586, -0.425442, 0.065861,
		-0.427987, -0.903272, 0.030450,
		16.407995, 20.836418, 16.358505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.085443, 20.958460, 15.936827>,  <16.707586, 21.468708, 16.337191>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.085443, 20.958460, 15.936827> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.710350, 20.819580, 15.932662>,  <16.485294, 20.736252, 15.930163>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.710350, 20.819580, 15.932662>,  <17.085443, 20.958460, 15.936827>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.710350, 20.819580, 15.932662> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120464, -0.296952, -0.947264,
		0.325797, -0.889535, 0.320287,
		-0.937734, -0.347199, -0.010411,
		16.429029, 20.715420, 15.929539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.181652, 20.372480, 15.564532>,  <17.085443, 20.958460, 15.936827>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.181652, 20.372480, 15.564532> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.788460, 20.443882, 15.547154>,  <16.552546, 20.486723, 15.536728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.788460, 20.443882, 15.547154>,  <17.181652, 20.372480, 15.564532>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.788460, 20.443882, 15.547154> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001182, -0.230330, -0.973112,
		-0.183707, -0.956601, 0.226199,
		-0.982981, 0.178500, -0.043444,
		16.493567, 20.497433, 15.534122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.858158, 19.782455, 15.114610>,  <17.181652, 20.372480, 15.564532>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.858158, 19.782455, 15.114610> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.575336, 20.064922, 15.099612>,  <16.405643, 20.234402, 15.090613>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.575336, 20.064922, 15.099612>,  <16.858158, 19.782455, 15.114610>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.575336, 20.064922, 15.099612> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006997, -0.046031, -0.998915,
		-0.707128, -0.706547, 0.027606,
		-0.707051, 0.706167, -0.037493,
		16.363220, 20.276772, 15.088365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.397135, 19.458569, 14.740348>,  <16.858158, 19.782455, 15.114610>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.397135, 19.458569, 14.740348> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.317314, 19.848919, 14.704921>,  <16.269423, 20.083130, 14.683664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.317314, 19.848919, 14.704921>,  <16.397135, 19.458569, 14.740348>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.317314, 19.848919, 14.704921> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114547, -0.112998, -0.986970,
		-0.973169, -0.186805, 0.134333,
		-0.199550, 0.975877, -0.088569,
		16.257448, 20.141682, 14.678350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.815021, 19.098873, 15.071077>,  <16.397135, 19.458569, 14.740348>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.815021, 19.098873, 15.071077> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.650084, 18.741417, 15.000220>,  <15.551123, 18.526943, 14.957705>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.650084, 18.741417, 15.000220>,  <15.815021, 19.098873, 15.071077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.650084, 18.741417, 15.000220> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141542, -0.254923, 0.956546,
		-0.899967, 0.369350, 0.231603,
		-0.412341, -0.893642, -0.177143,
		15.526382, 18.473324, 14.947078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.244233, 18.987005, 15.534223>,  <15.815021, 19.098873, 15.071077>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.244233, 18.987005, 15.534223> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.355678, 18.624073, 15.408286>,  <15.422544, 18.406313, 15.332725>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.355678, 18.624073, 15.408286>,  <15.244233, 18.987005, 15.534223>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.355678, 18.624073, 15.408286> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228898, -0.255642, 0.939283,
		-0.932728, -0.333760, 0.136462,
		0.278610, -0.907332, -0.314841,
		15.439260, 18.351873, 15.313833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.942333, 18.485186, 15.950651>,  <15.244233, 18.987005, 15.534223>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.942333, 18.485186, 15.950651> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.246821, 18.279629, 15.792432>,  <15.429514, 18.156294, 15.697500>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.246821, 18.279629, 15.792432>,  <14.942333, 18.485186, 15.950651>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.246821, 18.279629, 15.792432> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376061, -0.147112, 0.914842,
		-0.528321, -0.845146, 0.081271,
		0.761220, -0.513893, -0.395548,
		15.475187, 18.125462, 15.673767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.785295, 17.860876, 16.283070>,  <14.942333, 18.485186, 15.950651>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.785295, 17.860876, 16.283070> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.159883, 17.807617, 16.153271>,  <15.384635, 17.775661, 16.075392>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.159883, 17.807617, 16.153271>,  <14.785295, 17.860876, 16.283070>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.159883, 17.807617, 16.153271> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238100, -0.438023, 0.866859,
		-0.257557, -0.889049, -0.378493,
		0.936468, -0.133147, -0.324498,
		15.440823, 17.767673, 16.055922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.040169, 17.146208, 16.475037>,  <14.785295, 17.860876, 16.283070>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.040169, 17.146208, 16.475037> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.369544, 17.349335, 16.373787>,  <15.567169, 17.471210, 16.313038>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.369544, 17.349335, 16.373787>,  <15.040169, 17.146208, 16.475037>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.369544, 17.349335, 16.373787> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519966, -0.496775, 0.694874,
		0.227123, -0.703802, -0.673111,
		0.823438, 0.507817, -0.253124,
		15.616575, 17.501680, 16.297850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.554160, 16.624537, 16.248709>,  <15.040169, 17.146208, 16.475037>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.554160, 16.624537, 16.248709> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.742917, 16.951298, 16.381365>,  <15.856172, 17.147354, 16.460958>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.742917, 16.951298, 16.381365>,  <15.554160, 16.624537, 16.248709>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.742917, 16.951298, 16.381365> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537891, -0.564795, 0.625843,
		0.698563, -0.116944, -0.705928,
		0.471893, 0.816903, 0.331642,
		15.884485, 17.196369, 16.480858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.222805, 16.419853, 16.311934>,  <15.554160, 16.624537, 16.248709>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.222805, 16.419853, 16.311934> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.199429, 16.730541, 16.562784>,  <16.185404, 16.916954, 16.713295>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.199429, 16.730541, 16.562784>,  <16.222805, 16.419853, 16.311934>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.199429, 16.730541, 16.562784> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456856, -0.537751, 0.708595,
		0.887619, 0.327918, -0.323423,
		-0.058440, 0.776720, 0.627129,
		16.181896, 16.963556, 16.750923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.880276, 16.546141, 16.588112>,  <16.222805, 16.419853, 16.311934>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.880276, 16.546141, 16.588112> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.645157, 16.749588, 16.839764>,  <16.504086, 16.871656, 16.990755>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.645157, 16.749588, 16.839764>,  <16.880276, 16.546141, 16.588112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.645157, 16.749588, 16.839764> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517032, -0.361945, 0.775676,
		0.622233, 0.781219, -0.050222,
		-0.587795, 0.508618, 0.629130,
		16.468819, 16.902174, 17.028503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.364147, 16.778770, 17.154976>,  <16.880276, 16.546141, 16.588112>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.364147, 16.778770, 17.154976> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.992001, 16.789997, 17.301199>,  <16.768713, 16.796732, 17.388933>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.992001, 16.789997, 17.301199>,  <17.364147, 16.778770, 17.154976>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.992001, 16.789997, 17.301199> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352637, -0.204345, 0.913176,
		0.100328, 0.978496, 0.180219,
		-0.930366, 0.028066, 0.365555,
		16.712891, 16.798416, 17.410866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.457098, 17.010059, 17.825392>,  <17.364147, 16.778770, 17.154976>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.457098, 17.010059, 17.825392> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.075962, 16.891937, 17.853373>,  <16.847281, 16.821064, 17.870161>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.075962, 16.891937, 17.853373>,  <17.457098, 17.010059, 17.825392>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.075962, 16.891937, 17.853373> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190252, -0.401661, 0.895808,
		-0.236441, 0.866869, 0.438901,
		-0.952838, -0.295307, 0.069954,
		16.790112, 16.803345, 17.874359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.120613, 17.306791, 18.480679>,  <17.457098, 17.010059, 17.825392>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.120613, 17.306791, 18.480679> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.965427, 16.960636, 18.353817>,  <16.872316, 16.752943, 18.277700>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.965427, 16.960636, 18.353817>,  <17.120613, 17.306791, 18.480679>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.965427, 16.960636, 18.353817> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073217, -0.371955, 0.925359,
		-0.918761, 0.335786, 0.207666,
		-0.387965, -0.865389, -0.317152,
		16.849037, 16.701019, 18.258671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.551149, 17.171234, 18.904095>,  <17.120613, 17.306791, 18.480679>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.551149, 17.171234, 18.904095> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.630161, 16.811096, 18.748987>,  <16.677568, 16.595015, 18.655922>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.630161, 16.811096, 18.748987>,  <16.551149, 17.171234, 18.904095>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.630161, 16.811096, 18.748987> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010745, -0.397527, 0.917528,
		-0.980238, -0.177071, -0.088197,
		0.197528, -0.900343, -0.387769,
		16.689421, 16.540993, 18.632656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.225126, 16.795616, 19.333988>,  <16.551149, 17.171234, 18.904095>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.225126, 16.795616, 19.333988> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.472515, 16.546776, 19.141954>,  <16.620949, 16.397472, 19.026733>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.472515, 16.546776, 19.141954>,  <16.225126, 16.795616, 19.333988>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.472515, 16.546776, 19.141954> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286499, -0.390378, 0.874942,
		-0.731717, -0.678672, -0.063207,
		0.618473, -0.622101, -0.480085,
		16.658056, 16.360146, 18.997929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.043888, 16.182690, 19.550301>,  <16.225126, 16.795616, 19.333988>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.043888, 16.182690, 19.550301> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.428883, 16.169395, 19.442587>,  <16.659880, 16.161419, 19.377958>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.428883, 16.169395, 19.442587>,  <16.043888, 16.182690, 19.550301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.428883, 16.169395, 19.442587> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225500, -0.453956, 0.862017,
		-0.150895, -0.890404, -0.429431,
		0.962487, -0.033237, -0.269286,
		16.717628, 16.159424, 19.361801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<23.221807, 20.080244, 19.441484> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.828144, 20.142159, 19.406906>,  <22.591946, 20.179308, 19.386160>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.828144, 20.142159, 19.406906>,  <23.221807, 20.080244, 19.441484>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.828144, 20.142159, 19.406906> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060220, -0.166750, -0.984159,
		-0.166750, -0.973774, 0.154787,
		0.984159, -0.154787, 0.086446,
		22.532896, 20.188595, 19.380972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.029060, 19.589388, 19.007416>,  <23.221807, 20.080244, 19.441484>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.029060, 19.589388, 19.007416> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.723930, 19.846001, 18.975079>,  <22.540854, 19.999969, 18.955677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.723930, 19.846001, 18.975079>,  <23.029060, 19.589388, 19.007416>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.723930, 19.846001, 18.975079> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050828, -0.184134, -0.981586,
		-0.644606, -0.744668, 0.173070,
		-0.762823, 0.641533, -0.080844,
		22.495083, 20.038460, 18.950825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.805069, 19.383440, 18.495684>,  <23.029060, 19.589388, 19.007416>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.805069, 19.383440, 18.495684> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.619949, 19.737282, 18.518629>,  <22.508879, 19.949587, 18.532396>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.619949, 19.737282, 18.518629>,  <22.805069, 19.383440, 18.495684>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.619949, 19.737282, 18.518629> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178108, -0.029399, -0.983572,
		-0.868387, -0.465412, 0.171162,
		-0.462798, 0.884606, 0.057364,
		22.481110, 20.002663, 18.535839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.065701, 19.195572, 18.265610>,  <22.805069, 19.383440, 18.495684>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.065701, 19.195572, 18.265610> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.187855, 19.570133, 18.196449>,  <22.261147, 19.794870, 18.154953>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.187855, 19.570133, 18.196449>,  <22.065701, 19.195572, 18.265610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.187855, 19.570133, 18.196449> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245545, -0.097995, -0.964419,
		-0.920026, 0.336972, 0.200002,
		0.305383, 0.936401, -0.172899,
		22.279470, 19.851053, 18.144579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.512766, 19.594982, 17.895283>,  <22.065701, 19.195572, 18.265610>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.512766, 19.594982, 17.895283> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.848770, 19.797817, 17.818090>,  <22.050373, 19.919518, 17.771774>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.848770, 19.797817, 17.818090>,  <21.512766, 19.594982, 17.895283>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.848770, 19.797817, 17.818090> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234070, 0.017813, -0.972057,
		-0.489480, 0.861711, 0.133657,
		0.840012, 0.507087, -0.192981,
		22.100775, 19.949944, 17.760197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.395945, 19.957972, 17.278429>,  <21.512766, 19.594982, 17.895283>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.395945, 19.957972, 17.278429> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.793728, 19.992268, 17.302752>,  <22.032398, 20.012846, 17.317345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.793728, 19.992268, 17.302752>,  <21.395945, 19.957972, 17.278429>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.793728, 19.992268, 17.302752> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059871, 0.013439, -0.998116,
		-0.086398, 0.996227, 0.008231,
		0.994460, 0.085742, 0.060806,
		22.092066, 20.017990, 17.320993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.534878, 20.466873, 16.802887>,  <21.395945, 19.957972, 17.278429>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.534878, 20.466873, 16.802887> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.871532, 20.257275, 16.855165>,  <22.073524, 20.131516, 16.886532>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.871532, 20.257275, 16.855165>,  <21.534878, 20.466873, 16.802887>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.871532, 20.257275, 16.855165> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188500, 0.058249, -0.980344,
		0.506082, 0.849727, 0.147797,
		0.841634, -0.523995, 0.130695,
		22.124023, 20.100077, 16.894375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.137756, 20.903805, 16.467407>,  <21.534878, 20.466873, 16.802887>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.137756, 20.903805, 16.467407> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.207539, 20.511230, 16.499283>,  <22.249409, 20.275686, 16.518408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.207539, 20.511230, 16.499283>,  <22.137756, 20.903805, 16.467407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.207539, 20.511230, 16.499283> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084940, -0.095629, -0.991786,
		0.980995, 0.166254, -0.100046,
		0.174456, -0.981435, 0.079689,
		22.259874, 20.216801, 16.523190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.523968, 20.652483, 15.821259>,  <22.137756, 20.903805, 16.467407>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.523968, 20.652483, 15.821259> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.402897, 20.301903, 15.971040>,  <22.330254, 20.091555, 16.060909>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.402897, 20.301903, 15.971040>,  <22.523968, 20.652483, 15.821259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.402897, 20.301903, 15.971040> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202195, -0.324892, -0.923885,
		0.931398, -0.355353, -0.078876,
		-0.302679, -0.876453, 0.374454,
		22.312094, 20.038967, 16.083376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.004015, 20.037926, 15.516394>,  <22.523968, 20.652483, 15.821259>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.004015, 20.037926, 15.516394> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.682827, 19.832573, 15.637507>,  <22.490114, 19.709362, 15.710176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.682827, 19.832573, 15.637507>,  <23.004015, 20.037926, 15.516394>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.682827, 19.832573, 15.637507> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103007, -0.380836, -0.918887,
		0.587051, -0.769028, 0.252917,
		-0.802970, -0.513382, 0.302786,
		22.441936, 19.678558, 15.728343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.159718, 19.389748, 15.317418>,  <23.004015, 20.037926, 15.516394>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.159718, 19.389748, 15.317418> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.763149, 19.422264, 15.358359>,  <22.525208, 19.441774, 15.382924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.763149, 19.422264, 15.358359>,  <23.159718, 19.389748, 15.317418>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.763149, 19.422264, 15.358359> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124378, -0.345995, -0.929956,
		-0.040184, -0.934708, 0.353138,
		-0.991421, 0.081292, 0.102354,
		22.465723, 19.446651, 15.389066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.762543, 18.701220, 15.152289>,  <23.159718, 19.389748, 15.317418>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.762543, 18.701220, 15.152289> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.481335, 18.982079, 15.107127>,  <22.312609, 19.150595, 15.080029>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.481335, 18.982079, 15.107127>,  <22.762543, 18.701220, 15.152289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.481335, 18.982079, 15.107127> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131854, -0.284701, -0.949505,
		-0.698838, -0.652636, 0.292732,
		-0.703022, 0.702148, -0.112907,
		22.270428, 19.192722, 15.073256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.157722, 18.314169, 14.781062>,  <22.762543, 18.701220, 15.152289>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.157722, 18.314169, 14.781062> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.102322, 18.705284, 14.718131>,  <22.069080, 18.939953, 14.680372>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.102322, 18.705284, 14.718131>,  <22.157722, 18.314169, 14.781062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.102322, 18.705284, 14.718131> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085364, -0.170055, -0.981730,
		-0.986676, -0.122541, 0.107020,
		-0.138502, 0.977786, -0.157328,
		22.060772, 18.998619, 14.670933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.647484, 18.358883, 14.251475>,  <22.157722, 18.314169, 14.781062>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.647484, 18.358883, 14.251475> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.810925, 18.723915, 14.245225>,  <21.908989, 18.942934, 14.241475>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.810925, 18.723915, 14.245225>,  <21.647484, 18.358883, 14.251475>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.810925, 18.723915, 14.245225> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101228, 0.028296, -0.994461,
		-0.907082, 0.407920, 0.103940,
		0.408601, 0.912579, -0.015626,
		21.933504, 18.997688, 14.240537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.012777, 18.210567, 14.595809>,  <21.647484, 18.358883, 14.251475>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.012777, 18.210567, 14.595809> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.964622, 17.813950, 14.576430>,  <20.935730, 17.575979, 14.564803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.964622, 17.813950, 14.576430>,  <21.012777, 18.210567, 14.595809>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.964622, 17.813950, 14.576430> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402170, -0.093332, 0.910796,
		-0.907616, 0.090166, 0.410005,
		-0.120389, -0.991544, -0.048447,
		20.928505, 17.516487, 14.561896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.478813, 18.021877, 15.092606>,  <21.012777, 18.210567, 14.595809>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.478813, 18.021877, 15.092606> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.717056, 17.706467, 15.031320>,  <20.860003, 17.517220, 14.994548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.717056, 17.706467, 15.031320>,  <20.478813, 18.021877, 15.092606>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.717056, 17.706467, 15.031320> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112051, -0.107316, 0.987891,
		-0.795422, -0.605563, 0.024437,
		0.595607, -0.788528, -0.153216,
		20.895739, 17.469908, 14.985354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.286900, 17.576870, 15.625518>,  <20.478813, 18.021877, 15.092606>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.286900, 17.576870, 15.625518> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.642399, 17.440262, 15.503213>,  <20.855698, 17.358297, 15.429830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.642399, 17.440262, 15.503213>,  <20.286900, 17.576870, 15.625518>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.642399, 17.440262, 15.503213> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254615, -0.186881, 0.948813,
		-0.381179, -0.921108, -0.079135,
		0.888749, -0.341519, -0.305763,
		20.909023, 17.337807, 15.411484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.258503, 16.911364, 15.918821>,  <20.286900, 17.576870, 15.625518>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.258503, 16.911364, 15.918821> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.646263, 16.983856, 15.852588>,  <20.878920, 17.027351, 15.812847>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.646263, 16.983856, 15.852588>,  <20.258503, 16.911364, 15.918821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.646263, 16.983856, 15.852588> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194950, -0.158414, 0.967936,
		0.149190, -0.970598, -0.188898,
		0.969400, 0.181232, -0.165584,
		20.937084, 17.038225, 15.802913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.648252, 16.411821, 16.363541>,  <20.258503, 16.911364, 15.918821>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.648252, 16.411821, 16.363541> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.867348, 16.731880, 16.265766>,  <20.998804, 16.923916, 16.207102>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.867348, 16.731880, 16.265766>,  <20.648252, 16.411821, 16.363541>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.867348, 16.731880, 16.265766> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398461, 0.007417, 0.917155,
		0.735673, -0.599757, -0.314765,
		0.547736, 0.800148, -0.244437,
		21.031668, 16.971924, 16.192434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.384485, 16.206335, 16.410570>,  <20.648252, 16.411821, 16.363541>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.384485, 16.206335, 16.410570> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.329144, 16.596596, 16.478647>,  <21.295938, 16.830751, 16.519493>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.329144, 16.596596, 16.478647>,  <21.384485, 16.206335, 16.410570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.329144, 16.596596, 16.478647> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436855, -0.094103, 0.894596,
		0.888829, 0.198118, -0.413198,
		-0.138352, 0.975650, 0.170191,
		21.287638, 16.889292, 16.529705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.953524, 16.298857, 16.771362>,  <21.384485, 16.206335, 16.410570>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.953524, 16.298857, 16.771362> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.712734, 16.611931, 16.834648>,  <21.568260, 16.799774, 16.872620>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.712734, 16.611931, 16.834648>,  <21.953524, 16.298857, 16.771362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.712734, 16.611931, 16.834648> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321067, 0.055827, 0.945410,
		0.731124, 0.619911, -0.284900,
		-0.601975, 0.782683, 0.158217,
		21.532141, 16.846735, 16.882113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.364222, 16.698568, 17.348269>,  <21.953524, 16.298857, 16.771362>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.364222, 16.698568, 17.348269> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.994896, 16.851841, 17.338003>,  <21.773300, 16.943806, 17.331844>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.994896, 16.851841, 17.338003>,  <22.364222, 16.698568, 17.348269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.994896, 16.851841, 17.338003> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049540, -0.052574, 0.997387,
		0.380833, 0.922175, 0.067525,
		-0.923316, 0.383184, -0.025662,
		21.717901, 16.966797, 17.330305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.371834, 17.398731, 17.650881>,  <22.364222, 16.698568, 17.348269>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.371834, 17.398731, 17.650881> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.002625, 17.254883, 17.705580>,  <21.781099, 17.168573, 17.738400>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.002625, 17.254883, 17.705580>,  <22.371834, 17.398731, 17.650881>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.002625, 17.254883, 17.705580> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102075, 0.113795, 0.988247,
		-0.370954, 0.926134, -0.068327,
		-0.923024, -0.359620, 0.136748,
		21.725718, 17.146997, 17.746605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.159729, 17.766001, 18.278116>,  <22.371834, 17.398731, 17.650881>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.159729, 17.766001, 18.278116> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.865520, 17.495625, 18.259729>,  <21.688995, 17.333399, 18.248697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.865520, 17.495625, 18.259729>,  <22.159729, 17.766001, 18.278116>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.865520, 17.495625, 18.259729> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073375, 0.012027, 0.997232,
		-0.673516, 0.736859, -0.058443,
		-0.735522, -0.675940, -0.045966,
		21.644863, 17.292843, 18.245939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.562197, 18.093929, 18.612150>,  <22.159729, 17.766001, 18.278116>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.562197, 18.093929, 18.612150> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.491581, 17.700382, 18.623745>,  <21.449211, 17.464254, 18.630703>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.491581, 17.700382, 18.623745>,  <21.562197, 18.093929, 18.612150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.491581, 17.700382, 18.623745> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235487, 0.070813, 0.969294,
		-0.955709, 0.164293, -0.244189,
		-0.176540, -0.983867, 0.028988,
		21.438620, 17.405222, 18.632441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.938114, 17.967962, 19.051605>,  <21.562197, 18.093929, 18.612150>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.938114, 17.967962, 19.051605> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.123211, 17.613365, 19.052076>,  <21.234268, 17.400606, 19.052359>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.123211, 17.613365, 19.052076>,  <20.938114, 17.967962, 19.051605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.123211, 17.613365, 19.052076> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199072, -0.102619, 0.974598,
		-0.863853, -0.451220, -0.223961,
		0.462740, -0.886493, 0.001178,
		21.262033, 17.347418, 19.052429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.539888, 17.605064, 19.505438>,  <20.938114, 17.967962, 19.051605>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.539888, 17.605064, 19.505438> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.872097, 17.384064, 19.477228>,  <21.071423, 17.251463, 19.460302>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.872097, 17.384064, 19.477228>,  <20.539888, 17.605064, 19.505438>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.872097, 17.384064, 19.477228> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005929, -0.135377, 0.990776,
		-0.556953, -0.822444, -0.115710,
		0.830523, -0.552502, -0.070522,
		21.121254, 17.218313, 19.456072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.461845, 16.819241, 19.791525>,  <20.539888, 17.605064, 19.505438>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.461845, 16.819241, 19.791525> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.834251, 16.963577, 19.813448>,  <21.057695, 17.050180, 19.826601>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.834251, 16.963577, 19.813448>,  <20.461845, 16.819241, 19.791525>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.834251, 16.963577, 19.813448> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043875, -0.038423, 0.998298,
		0.362336, -0.931834, -0.019940,
		0.931014, 0.360844, 0.054806,
		21.113556, 17.071831, 19.829889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.309752, 16.170208, 19.537697>,  <20.461845, 16.819241, 19.791525>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.309752, 16.170208, 19.537697> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.120274, 15.826672, 19.615671>,  <20.006586, 15.620549, 19.662457>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.120274, 15.826672, 19.615671>,  <20.309752, 16.170208, 19.537697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.120274, 15.826672, 19.615671> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133147, -0.148963, -0.979838,
		0.870565, -0.490100, -0.043790,
		-0.473695, -0.858843, 0.194937,
		19.978165, 15.569018, 19.674152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.557219, 15.737649, 19.167738>,  <20.309752, 16.170208, 19.537697>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.557219, 15.737649, 19.167738> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.205875, 15.555931, 19.227201>,  <19.995070, 15.446900, 19.262880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.205875, 15.555931, 19.227201>,  <20.557219, 15.737649, 19.167738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.205875, 15.555931, 19.227201> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141141, -0.050643, -0.988693,
		0.456688, -0.889410, -0.019637,
		-0.878359, -0.454296, 0.148660,
		19.942368, 15.419642, 19.271799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.465303, 15.297040, 18.661247>,  <20.557219, 15.737649, 19.167738>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.465303, 15.297040, 18.661247> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.082397, 15.306686, 18.776531>,  <19.852654, 15.312474, 18.845701>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.082397, 15.306686, 18.776531>,  <20.465303, 15.297040, 18.661247>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.082397, 15.306686, 18.776531> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287727, -0.180511, -0.940547,
		0.029345, -0.983277, 0.179735,
		-0.957263, 0.024114, 0.288213,
		19.795219, 15.313921, 18.862995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.154661, 14.784013, 18.302071>,  <20.465303, 15.297040, 18.661247>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.154661, 14.784013, 18.302071> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.855133, 15.027233, 18.407553>,  <19.675415, 15.173165, 18.470842>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.855133, 15.027233, 18.407553>,  <20.154661, 14.784013, 18.302071>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.855133, 15.027233, 18.407553> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327230, 0.006813, -0.944920,
		-0.576356, -0.793869, 0.193871,
		-0.748821, 0.608051, 0.263705,
		19.630486, 15.209648, 18.486664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.589733, 14.515117, 18.018366>,  <20.154661, 14.784013, 18.302071>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.589733, 14.515117, 18.018366> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.449467, 14.879864, 18.103714>,  <19.365307, 15.098712, 18.154922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.449467, 14.879864, 18.103714>,  <19.589733, 14.515117, 18.018366>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.449467, 14.879864, 18.103714> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530677, -0.005754, -0.847555,
		-0.771631, -0.410442, 0.485926,
		-0.350668, 0.911869, 0.213372,
		19.344267, 15.153424, 18.167725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.819485, 14.535395, 18.077660>,  <19.589733, 14.515117, 18.018366>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.819485, 14.535395, 18.077660> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.938057, 14.905022, 17.981138>,  <19.009201, 15.126798, 17.923225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.938057, 14.905022, 17.981138>,  <18.819485, 14.535395, 18.077660>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.938057, 14.905022, 17.981138> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487982, -0.070641, -0.869991,
		-0.820976, 0.375645, 0.429988,
		0.296433, 0.924068, -0.241302,
		19.026987, 15.182242, 17.908747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.256771, 14.887694, 17.669418>,  <18.819485, 14.535395, 18.077660>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.256771, 14.887694, 17.669418> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.558289, 15.127720, 17.562298>,  <18.739199, 15.271735, 17.498026>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.558289, 15.127720, 17.562298>,  <18.256771, 14.887694, 17.669418>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.558289, 15.127720, 17.562298> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389280, 0.079455, -0.917686,
		-0.529392, 0.795996, 0.293485,
		0.753794, 0.600064, -0.267803,
		18.784428, 15.307739, 17.481956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.072226, 15.396231, 17.249163>,  <18.256771, 14.887694, 17.669418>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.072226, 15.396231, 17.249163> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.457424, 15.420090, 17.144030>,  <18.688543, 15.434405, 17.080950>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.457424, 15.420090, 17.144030>,  <18.072226, 15.396231, 17.249163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.457424, 15.420090, 17.144030> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258005, -0.077919, -0.962996,
		-0.077919, 0.995174, -0.059647,
		0.962996, 0.059647, -0.262831,
		18.746323, 15.437984, 17.065180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.112015, 15.880280, 16.668442>,  <18.072226, 15.396231, 17.249163>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.112015, 15.880280, 16.668442> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.403179, 15.606125, 16.676306>,  <18.577877, 15.441631, 16.681025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.403179, 15.606125, 16.676306>,  <18.112015, 15.880280, 16.668442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.403179, 15.606125, 16.676306> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253041, -0.295169, -0.921328,
		0.637272, 0.665669, -0.388289,
		0.727911, -0.685390, 0.019661,
		18.621552, 15.400508, 16.682203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.619555, 16.056032, 16.170261>,  <18.112015, 15.880280, 16.668442>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.619555, 16.056032, 16.170261> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.583977, 15.660248, 16.215961>,  <18.562630, 15.422777, 16.243382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.583977, 15.660248, 16.215961>,  <18.619555, 16.056032, 16.170261>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.583977, 15.660248, 16.215961> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242447, -0.089745, -0.966005,
		0.966079, -0.113621, -0.231910,
		-0.088946, -0.989463, 0.114248,
		18.557293, 15.363409, 16.250237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.124598, 15.666779, 15.656205>,  <18.619555, 16.056032, 16.170261>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.124598, 15.666779, 15.656205> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.823704, 15.431297, 15.774577>,  <18.643167, 15.290009, 15.845600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.823704, 15.431297, 15.774577>,  <19.124598, 15.666779, 15.656205>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.823704, 15.431297, 15.774577> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329038, -0.053490, -0.942800,
		0.570860, -0.806577, -0.153469,
		-0.752232, -0.588704, 0.295930,
		18.598034, 15.254686, 15.863357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.147369, 15.114892, 15.150567>,  <19.124598, 15.666779, 15.656205>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.147369, 15.114892, 15.150567> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.781994, 15.092758, 15.311847>,  <18.562769, 15.079478, 15.408615>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.781994, 15.092758, 15.311847>,  <19.147369, 15.114892, 15.150567>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.781994, 15.092758, 15.311847> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391867, -0.147894, -0.908057,
		0.109878, -0.987454, 0.113408,
		-0.913437, -0.055335, 0.403200,
		18.507963, 15.076159, 15.432807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.776438, 14.550065, 14.822749>,  <19.147369, 15.114892, 15.150567>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.776438, 14.550065, 14.822749> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.486492, 14.779972, 14.974652>,  <18.312525, 14.917916, 15.065794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.486492, 14.779972, 14.974652>,  <18.776438, 14.550065, 14.822749>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.486492, 14.779972, 14.974652> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492045, -0.046148, -0.869346,
		-0.482146, -0.817015, 0.316262,
		-0.724864, 0.574766, 0.379758,
		18.269033, 14.952402, 15.088579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.228224, 14.294483, 14.501846>,  <18.776438, 14.550065, 14.822749>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.228224, 14.294483, 14.501846> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.067715, 14.639969, 14.623816>,  <17.971409, 14.847260, 14.696999>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.067715, 14.639969, 14.623816>,  <18.228224, 14.294483, 14.501846>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.067715, 14.639969, 14.623816> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566975, 0.027242, -0.823284,
		-0.719389, -0.503245, 0.478773,
		-0.401271, 0.863714, 0.304925,
		17.947334, 14.899083, 14.715294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<16.370399, 15.089488, 19.776752> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.655716, 15.360477, 19.704922>,  <16.826906, 15.523071, 19.661823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.655716, 15.360477, 19.704922>,  <16.370399, 15.089488, 19.776752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.655716, 15.360477, 19.704922> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471838, -0.274712, 0.837796,
		0.518252, -0.682323, -0.515606,
		0.713291, 0.677473, -0.179576,
		16.869703, 15.563719, 19.651049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.001572, 14.790806, 20.014494>,  <16.370399, 15.089488, 19.776752>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.001572, 14.790806, 20.014494> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.077461, 15.183468, 20.006920>,  <17.122995, 15.419065, 20.002375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.077461, 15.183468, 20.006920>,  <17.001572, 14.790806, 20.014494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.077461, 15.183468, 20.006920> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413301, -0.062355, 0.908457,
		0.890611, -0.180180, -0.417549,
		0.189722, 0.981655, -0.018935,
		17.134378, 15.477964, 20.001240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.599527, 14.778809, 20.245790>,  <17.001572, 14.790806, 20.014494>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.599527, 14.778809, 20.245790> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.486591, 15.159927, 20.290442>,  <17.418829, 15.388598, 20.317232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.486591, 15.159927, 20.290442>,  <17.599527, 14.778809, 20.245790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.486591, 15.159927, 20.290442> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624217, 0.094111, 0.775562,
		0.728448, 0.288652, -0.621324,
		-0.282341, 0.952797, 0.111627,
		17.401890, 15.445766, 20.323929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.131107, 15.074550, 20.487448>,  <17.599527, 14.778809, 20.245790>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.131107, 15.074550, 20.487448> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.873104, 15.367317, 20.575319>,  <17.718302, 15.542978, 20.628042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.873104, 15.367317, 20.575319>,  <18.131107, 15.074550, 20.487448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.873104, 15.367317, 20.575319> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538711, 0.231622, 0.810026,
		0.541992, 0.640815, -0.543691,
		-0.645008, 0.731920, 0.219678,
		17.679602, 15.586893, 20.641222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.476723, 15.673043, 20.573961>,  <18.131107, 15.074550, 20.487448>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.476723, 15.673043, 20.573961> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.137337, 15.719421, 20.780519>,  <17.933706, 15.747249, 20.904455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.137337, 15.719421, 20.780519>,  <18.476723, 15.673043, 20.573961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.137337, 15.719421, 20.780519> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529253, 0.185404, 0.827959,
		0.000256, 0.975798, -0.218673,
		-0.848464, 0.115945, 0.516397,
		17.882797, 15.754205, 20.935438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.650185, 16.161596, 21.019541>,  <18.476723, 15.673043, 20.573961>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.650185, 16.161596, 21.019541> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.337627, 15.979553, 21.190329>,  <18.150093, 15.870328, 21.292801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.337627, 15.979553, 21.190329>,  <18.650185, 16.161596, 21.019541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.337627, 15.979553, 21.190329> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401081, 0.157911, 0.902329,
		-0.478079, 0.876324, 0.059144,
		-0.781393, -0.455106, 0.426970,
		18.103210, 15.843021, 21.318420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.378904, 16.689453, 21.485464>,  <18.650185, 16.161596, 21.019541>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.378904, 16.689453, 21.485464> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.260147, 16.331669, 21.619209>,  <18.188892, 16.116999, 21.699457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.260147, 16.331669, 21.619209>,  <18.378904, 16.689453, 21.485464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.260147, 16.331669, 21.619209> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209192, 0.280722, 0.936714,
		-0.931715, 0.348050, 0.103769,
		-0.296893, -0.894459, 0.334362,
		18.171080, 16.063332, 21.719519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.099564, 16.772287, 22.179276>,  <18.378904, 16.689453, 21.485464>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.099564, 16.772287, 22.179276> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.148941, 16.375385, 22.184811>,  <18.178568, 16.137243, 22.188131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.148941, 16.375385, 22.184811>,  <18.099564, 16.772287, 22.179276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.148941, 16.375385, 22.184811> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093905, 0.025564, 0.995253,
		-0.987898, -0.121560, 0.096334,
		0.123445, -0.992255, 0.013840,
		18.185974, 16.077709, 22.188963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.696833, 16.590921, 22.659378>,  <18.099564, 16.772287, 22.179276>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.696833, 16.590921, 22.659378> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.930172, 16.268261, 22.621397>,  <18.070175, 16.074665, 22.598608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.930172, 16.268261, 22.621397>,  <17.696833, 16.590921, 22.659378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.930172, 16.268261, 22.621397> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011867, -0.108426, 0.994034,
		-0.812134, -0.580997, -0.053678,
		0.583350, -0.806651, -0.094951,
		18.105177, 16.026266, 22.592911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.515490, 16.265913, 23.244959>,  <17.696833, 16.590921, 22.659378>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.515490, 16.265913, 23.244959> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.872452, 16.132103, 23.123823>,  <18.086628, 16.051817, 23.051142>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.872452, 16.132103, 23.123823>,  <17.515490, 16.265913, 23.244959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.872452, 16.132103, 23.123823> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250805, -0.190195, 0.949169,
		-0.375118, -0.922995, -0.085831,
		0.892403, -0.334524, -0.302837,
		18.140173, 16.031746, 23.032972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.651012, 15.654276, 23.649958>,  <17.515490, 16.265913, 23.244959>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.651012, 15.654276, 23.649958> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.999165, 15.782074, 23.500097>,  <18.208055, 15.858752, 23.410181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.999165, 15.782074, 23.500097>,  <17.651012, 15.654276, 23.649958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.999165, 15.782074, 23.500097> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417663, -0.076098, 0.905410,
		0.260764, -0.944528, -0.199675,
		0.870379, 0.319495, -0.374651,
		18.260279, 15.877922, 23.387703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.125994, 15.389442, 24.067026>,  <17.651012, 15.654276, 23.649958>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.125994, 15.389442, 24.067026> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.322720, 15.703167, 23.915777>,  <18.440756, 15.891401, 23.825027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.322720, 15.703167, 23.915777>,  <18.125994, 15.389442, 24.067026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.322720, 15.703167, 23.915777> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386145, 0.192756, 0.902074,
		0.780391, -0.589663, -0.208057,
		0.491815, 0.784310, -0.378120,
		18.470264, 15.938460, 23.802341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.866280, 15.328105, 24.276524>,  <18.125994, 15.389442, 24.067026>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.866280, 15.328105, 24.276524> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.730808, 15.695747, 24.195984>,  <18.649525, 15.916333, 24.147659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.730808, 15.695747, 24.195984>,  <18.866280, 15.328105, 24.276524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.730808, 15.695747, 24.195984> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223545, 0.286469, 0.931645,
		0.913961, 0.270518, -0.302482,
		-0.338679, 0.919106, -0.201349,
		18.629204, 15.971479, 24.135580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.382957, 15.822774, 24.631882>,  <18.866280, 15.328105, 24.276524>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.382957, 15.822774, 24.631882> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.047924, 16.030441, 24.563866>,  <18.846903, 16.155043, 24.523056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.047924, 16.030441, 24.563866>,  <19.382957, 15.822774, 24.631882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.047924, 16.030441, 24.563866> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091706, 0.440458, 0.893077,
		0.538555, 0.732435, -0.416532,
		-0.837585, 0.519170, -0.170042,
		18.796648, 16.186192, 24.512854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.800056, 15.150984, 24.832407>,  <19.382957, 15.822774, 24.631882>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.800056, 15.150984, 24.832407> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.178841, 15.252941, 24.910683>,  <20.406111, 15.314116, 24.957647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.178841, 15.252941, 24.910683>,  <19.800056, 15.150984, 24.832407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.178841, 15.252941, 24.910683> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264448, -0.272153, -0.925203,
		-0.182570, 0.927881, -0.325124,
		0.946961, 0.254893, 0.195689,
		20.462929, 15.329409, 24.969389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.969227, 15.454227, 24.215347>,  <19.800056, 15.150984, 24.832407>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.969227, 15.454227, 24.215347> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.313862, 15.363762, 24.397123>,  <20.520643, 15.309483, 24.506189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.313862, 15.363762, 24.397123>,  <19.969227, 15.454227, 24.215347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.313862, 15.363762, 24.397123> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457919, -0.040017, -0.888093,
		0.219040, 0.973267, 0.069087,
		0.861587, -0.226164, 0.454442,
		20.572338, 15.295913, 24.533457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.477516, 15.978289, 24.057281>,  <19.969227, 15.454227, 24.215347>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.477516, 15.978289, 24.057281> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.690048, 15.651913, 24.148436>,  <20.817568, 15.456087, 24.203129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.690048, 15.651913, 24.148436>,  <20.477516, 15.978289, 24.057281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.690048, 15.651913, 24.148436> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303865, -0.067544, -0.950318,
		0.790795, 0.574177, 0.212048,
		0.531328, -0.815940, 0.227886,
		20.849447, 15.407130, 24.216801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.144579, 16.089327, 23.738760>,  <20.477516, 15.978289, 24.057281>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.144579, 16.089327, 23.738760> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.114613, 15.695900, 23.804472>,  <21.096634, 15.459845, 23.843899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.114613, 15.695900, 23.804472>,  <21.144579, 16.089327, 23.738760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.114613, 15.695900, 23.804472> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209477, -0.176587, -0.961736,
		0.974939, -0.037635, 0.219263,
		-0.074914, -0.983565, 0.164278,
		21.092138, 15.400830, 23.853756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.673475, 15.820555, 23.399689>,  <21.144579, 16.089327, 23.738760>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.673475, 15.820555, 23.399689> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.422188, 15.511150, 23.433212>,  <21.271416, 15.325507, 23.453325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.422188, 15.511150, 23.433212>,  <21.673475, 15.820555, 23.399689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.422188, 15.511150, 23.433212> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012548, -0.097629, -0.995144,
		0.777937, -0.626217, 0.051626,
		-0.628217, -0.773512, 0.083807,
		21.233723, 15.279097, 23.458355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.987602, 15.210414, 22.997374>,  <21.673475, 15.820555, 23.399689>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.987602, 15.210414, 22.997374> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.591457, 15.159042, 23.018129>,  <21.353771, 15.128220, 23.030582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.591457, 15.159042, 23.018129>,  <21.987602, 15.210414, 22.997374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.591457, 15.159042, 23.018129> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036593, -0.118707, -0.992255,
		0.133595, -0.984589, 0.112863,
		-0.990361, -0.128430, 0.051888,
		21.294350, 15.120514, 23.033695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.867340, 14.643647, 22.584162>,  <21.987602, 15.210414, 22.997374>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.867340, 14.643647, 22.584162> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.511978, 14.822697, 22.624893>,  <21.298761, 14.930126, 22.649332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.511978, 14.822697, 22.624893>,  <21.867340, 14.643647, 22.584162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.511978, 14.822697, 22.624893> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180006, -0.135628, -0.974270,
		-0.422295, -0.883877, 0.201067,
		-0.888406, 0.447623, 0.101829,
		21.245457, 14.956984, 22.655441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.426142, 14.263206, 22.095718>,  <21.867340, 14.643647, 22.584162>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.426142, 14.263206, 22.095718> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.182381, 14.571838, 22.168701>,  <21.036125, 14.757018, 22.212490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.182381, 14.571838, 22.168701>,  <21.426142, 14.263206, 22.095718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.182381, 14.571838, 22.168701> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213956, 0.061550, -0.974902,
		-0.763448, -0.633144, 0.127577,
		-0.609401, 0.771583, 0.182455,
		20.999561, 14.803313, 22.223438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.755129, 14.040586, 21.834103>,  <21.426142, 14.263206, 22.095718>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.755129, 14.040586, 21.834103> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.788662, 14.438560, 21.856279>,  <20.808783, 14.677345, 21.869585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.788662, 14.438560, 21.856279>,  <20.755129, 14.040586, 21.834103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.788662, 14.438560, 21.856279> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426611, 0.086115, -0.900326,
		-0.900542, 0.051826, 0.431670,
		0.083834, 0.994936, 0.055440,
		20.813812, 14.737041, 21.872911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.117811, 14.287656, 21.585638>,  <20.755129, 14.040586, 21.834103>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.117811, 14.287656, 21.585638> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.361683, 14.604076, 21.565527>,  <20.508005, 14.793929, 21.553459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.361683, 14.604076, 21.565527>,  <20.117811, 14.287656, 21.585638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.361683, 14.604076, 21.565527> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519627, 0.350975, -0.778977,
		-0.598564, 0.501052, 0.625034,
		0.609680, 0.791052, -0.050279,
		20.544586, 14.841392, 21.550444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.655510, 14.810318, 21.470444>,  <20.117811, 14.287656, 21.585638>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.655510, 14.810318, 21.470444> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.015144, 14.920673, 21.334486>,  <20.230925, 14.986887, 21.252911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.015144, 14.920673, 21.334486>,  <19.655510, 14.810318, 21.470444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.015144, 14.920673, 21.334486> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433645, 0.454950, -0.777799,
		-0.059952, 0.846703, 0.528678,
		0.899087, 0.275889, -0.339893,
		20.284870, 15.003440, 21.232517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.531864, 15.443872, 21.212305>,  <19.655510, 14.810318, 21.470444>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.531864, 15.443872, 21.212305> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.868637, 15.335720, 21.025526>,  <20.070702, 15.270829, 20.913458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.868637, 15.335720, 21.025526>,  <19.531864, 15.443872, 21.212305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.868637, 15.335720, 21.025526> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302215, 0.480621, -0.823207,
		0.447004, 0.834205, 0.322938,
		0.841935, -0.270380, -0.466948,
		20.121218, 15.254606, 20.885441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.580965, 15.948403, 20.815006>,  <19.531864, 15.443872, 21.212305>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.580965, 15.948403, 20.815006> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.843872, 15.684929, 20.668512>,  <20.001617, 15.526844, 20.580616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.843872, 15.684929, 20.668512>,  <19.580965, 15.948403, 20.815006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.843872, 15.684929, 20.668512> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403110, 0.103337, -0.909298,
		0.636789, 0.745287, -0.197603,
		0.657269, -0.658687, -0.366237,
		20.041052, 15.487323, 20.558641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.939142, 16.285244, 20.185476>,  <19.580965, 15.948403, 20.815006>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.939142, 16.285244, 20.185476> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.969604, 15.888744, 20.142351>,  <19.987883, 15.650845, 20.116476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.969604, 15.888744, 20.142351>,  <19.939142, 16.285244, 20.185476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.969604, 15.888744, 20.142351> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276616, 0.082878, -0.957400,
		0.957958, 0.102734, -0.267884,
		0.076156, -0.991250, -0.107811,
		19.992451, 15.591370, 20.110008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.640753, 16.558565, 20.473534>,  <19.939142, 16.285244, 20.185476>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.640753, 16.558565, 20.473534> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.924007, 16.828144, 20.389311>,  <21.093960, 16.989891, 20.338778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.924007, 16.828144, 20.389311>,  <20.640753, 16.558565, 20.473534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.924007, 16.828144, 20.389311> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178942, 0.117174, 0.976857,
		0.683024, -0.729426, -0.037623,
		0.708137, 0.673950, -0.210558,
		21.136448, 17.030329, 20.326143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.251694, 16.395750, 20.869986>,  <20.640753, 16.558565, 20.473534>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.251694, 16.395750, 20.869986> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.255589, 16.789013, 20.796986>,  <21.257925, 17.024971, 20.753185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.255589, 16.789013, 20.796986>,  <21.251694, 16.395750, 20.869986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.255589, 16.789013, 20.796986> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136201, 0.179506, 0.974283,
		0.990633, -0.034341, -0.132159,
		0.009735, 0.983157, -0.182501,
		21.258509, 17.083960, 20.742235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.685820, 16.584612, 21.413158>,  <21.251694, 16.395750, 20.869986>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.685820, 16.584612, 21.413158> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.560104, 16.936031, 21.269285>,  <21.484674, 17.146883, 21.182961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.560104, 16.936031, 21.269285>,  <21.685820, 16.584612, 21.413158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.560104, 16.936031, 21.269285> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092894, 0.405527, 0.909350,
		0.944771, 0.252386, -0.209065,
		-0.314289, 0.878549, -0.359685,
		21.465818, 17.199596, 21.161379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.125088, 17.116920, 21.730095>,  <21.685820, 16.584612, 21.413158>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.125088, 17.116920, 21.730095> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.814705, 17.331409, 21.597214>,  <21.628475, 17.460102, 21.517485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.814705, 17.331409, 21.597214>,  <22.125088, 17.116920, 21.730095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.814705, 17.331409, 21.597214> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101415, 0.625848, 0.773324,
		0.622579, 0.566377, -0.540012,
		-0.775958, 0.536220, -0.332201,
		21.581917, 17.492275, 21.497553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.377905, 17.866238, 21.630245>,  <22.125088, 17.116920, 21.730095>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.377905, 17.866238, 21.630245> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.980801, 17.874321, 21.677605>,  <21.742538, 17.879171, 21.706020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.980801, 17.874321, 21.677605>,  <22.377905, 17.866238, 21.630245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.980801, 17.874321, 21.677605> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111161, 0.527953, 0.841968,
		-0.045496, 0.849034, -0.526377,
		-0.992761, 0.020206, 0.118399,
		21.682972, 17.880383, 21.713125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.163221, 18.592190, 21.764236>,  <22.377905, 17.866238, 21.630245>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.163221, 18.592190, 21.764236> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.887665, 18.347324, 21.919506>,  <21.722330, 18.200405, 22.012669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.887665, 18.347324, 21.919506>,  <22.163221, 18.592190, 21.764236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.887665, 18.347324, 21.919506> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016925, 0.548952, 0.835682,
		-0.724665, 0.569126, -0.388530,
		-0.688893, -0.612166, 0.388174,
		21.680996, 18.163675, 22.035959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.793474, 18.914259, 22.299686>,  <22.163221, 18.592190, 21.764236>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.793474, 18.914259, 22.299686> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.631901, 18.559444, 22.389132>,  <21.534958, 18.346556, 22.442799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.631901, 18.559444, 22.389132>,  <21.793474, 18.914259, 22.299686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.631901, 18.559444, 22.389132> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293221, 0.357091, 0.886853,
		-0.866522, 0.292661, -0.404339,
		-0.403933, -0.887038, 0.223612,
		21.510721, 18.293333, 22.456215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.241674, 19.495710, 22.233999>,  <21.793474, 18.914259, 22.299686>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.241674, 19.495710, 22.233999> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.486992, 19.810867, 22.256258>,  <21.634182, 19.999962, 22.269613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.486992, 19.810867, 22.256258>,  <21.241674, 19.495710, 22.233999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.486992, 19.810867, 22.256258> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071080, 0.015111, -0.997356,
		-0.786649, 0.615629, -0.046735,
		0.613295, 0.787891, 0.055646,
		21.670980, 20.047235, 22.272951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.966438, 19.885370, 21.717134>,  <21.241674, 19.495710, 22.233999>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.966438, 19.885370, 21.717134> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.334644, 20.023945, 21.789398>,  <21.555567, 20.107090, 21.832756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.334644, 20.023945, 21.789398>,  <20.966438, 19.885370, 21.717134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.334644, 20.023945, 21.789398> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175913, 0.045382, -0.983359,
		-0.348871, 0.936975, -0.019168,
		0.920513, 0.346438, 0.180658,
		21.610798, 20.127876, 21.843596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.048370, 20.499535, 21.314234>,  <20.966438, 19.885370, 21.717134>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.048370, 20.499535, 21.314234> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.420696, 20.367989, 21.378021>,  <21.644093, 20.289061, 21.416294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.420696, 20.367989, 21.378021>,  <21.048370, 20.499535, 21.314234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.420696, 20.367989, 21.378021> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182309, 0.039607, -0.982443,
		0.316774, 0.943546, 0.096822,
		0.930815, -0.328864, 0.159471,
		21.699942, 20.269329, 21.425863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.398607, 20.951788, 20.971430>,  <21.048370, 20.499535, 21.314234>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.398607, 20.951788, 20.971430> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.614826, 20.615517, 20.984484>,  <21.744558, 20.413754, 20.992315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.614826, 20.615517, 20.984484>,  <21.398607, 20.951788, 20.971430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.614826, 20.615517, 20.984484> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358878, 0.195323, -0.912718,
		0.760929, 0.505081, 0.407284,
		0.540548, -0.840680, 0.032635,
		21.776991, 20.363314, 20.994274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.837240, 21.141401, 20.581665>,  <21.398607, 20.951788, 20.971430>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.837240, 21.141401, 20.581665> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.933315, 20.753223, 20.591047>,  <21.990959, 20.520317, 20.596678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.933315, 20.753223, 20.591047>,  <21.837240, 21.141401, 20.581665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.933315, 20.753223, 20.591047> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332129, 0.059448, -0.941359,
		0.912141, 0.233893, 0.336591,
		0.240187, -0.970443, 0.023457,
		22.005371, 20.462090, 20.598083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.506004, 21.077471, 20.204035>,  <21.837240, 21.141401, 20.581665>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.506004, 21.077471, 20.204035> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.397877, 20.692364, 20.205339>,  <22.333000, 20.461300, 20.206121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.397877, 20.692364, 20.205339>,  <22.506004, 21.077471, 20.204035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.397877, 20.692364, 20.205339> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380029, -0.109813, -0.918433,
		0.884594, -0.247029, 0.395563,
		-0.270317, -0.962766, 0.003262,
		22.316782, 20.403534, 20.206318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.099201, 20.620457, 19.962135>,  <22.506004, 21.077471, 20.204035>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.099201, 20.620457, 19.962135> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.749519, 20.441792, 19.885973>,  <22.539709, 20.334593, 19.840275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.749519, 20.441792, 19.885973>,  <23.099201, 20.620457, 19.962135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.749519, 20.441792, 19.885973> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229929, -0.035424, -0.972562,
		0.427663, -0.894000, 0.133669,
		-0.874206, -0.446663, -0.190407,
		22.487257, 20.307793, 19.828852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<19.214809, 19.455509, 23.875700> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.271282, 19.064808, 23.811180>,  <19.305166, 18.830387, 23.772469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.271282, 19.064808, 23.811180>,  <19.214809, 19.455509, 23.875700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.271282, 19.064808, 23.811180> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281658, 0.116567, -0.952408,
		0.949071, 0.179896, -0.258654,
		0.141184, -0.976754, -0.161300,
		19.313637, 18.771782, 23.762791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.841167, 19.333559, 23.361839>,  <19.214809, 19.455509, 23.875700>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.841167, 19.333559, 23.361839> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.571602, 19.038074, 23.357065>,  <19.409863, 18.860783, 23.354200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.571602, 19.038074, 23.357065>,  <19.841167, 19.333559, 23.361839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.571602, 19.038074, 23.357065> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213949, 0.210594, -0.953874,
		0.707154, -0.640275, -0.299969,
		-0.673914, -0.738714, -0.011936,
		19.369429, 18.816460, 23.353485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.912504, 19.049026, 22.640617>,  <19.841167, 19.333559, 23.361839>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.912504, 19.049026, 22.640617> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.555225, 18.918667, 22.764545>,  <19.340858, 18.840450, 22.838903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.555225, 18.918667, 22.764545>,  <19.912504, 19.049026, 22.640617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.555225, 18.918667, 22.764545> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366882, 0.129795, -0.921168,
		0.259998, -0.936451, -0.235500,
		-0.893196, -0.325903, 0.309820,
		19.287266, 18.820896, 22.857492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.619732, 18.588324, 22.130016>,  <19.912504, 19.049026, 22.640617>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.619732, 18.588324, 22.130016> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.293774, 18.706062, 22.329739>,  <19.098198, 18.776705, 22.449572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.293774, 18.706062, 22.329739>,  <19.619732, 18.588324, 22.130016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.293774, 18.706062, 22.329739> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445272, 0.233560, -0.864397,
		-0.371050, -0.926720, -0.059263,
		-0.814895, 0.294347, 0.499305,
		19.049305, 18.794367, 22.479530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.015055, 18.346731, 21.814116>,  <19.619732, 18.588324, 22.130016>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.015055, 18.346731, 21.814116> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.838921, 18.624512, 22.041742>,  <18.733240, 18.791180, 22.178318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.838921, 18.624512, 22.041742>,  <19.015055, 18.346731, 21.814116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.838921, 18.624512, 22.041742> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625226, 0.217704, -0.749465,
		-0.644357, -0.685813, 0.338327,
		-0.440337, 0.694453, 0.569067,
		18.706820, 18.832848, 22.212461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.328831, 18.215183, 21.748037>,  <19.015055, 18.346731, 21.814116>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.328831, 18.215183, 21.748037> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.389755, 18.596649, 21.851824>,  <18.426310, 18.825529, 21.914095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.389755, 18.596649, 21.851824>,  <18.328831, 18.215183, 21.748037>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.389755, 18.596649, 21.851824> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459323, 0.300759, -0.835803,
		-0.875114, 0.008124, 0.483849,
		0.152312, 0.953666, 0.259467,
		18.435450, 18.882750, 21.929665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.723530, 18.407057, 21.541862>,  <18.328831, 18.215183, 21.748037>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.723530, 18.407057, 21.541862> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.940712, 18.740116, 21.585489>,  <18.071020, 18.939953, 21.611666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.940712, 18.740116, 21.585489>,  <17.723530, 18.407057, 21.541862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.940712, 18.740116, 21.585489> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591019, 0.471156, -0.654759,
		-0.596571, 0.291044, 0.747928,
		0.542955, 0.832650, 0.109066,
		18.103598, 18.989910, 21.618210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.217354, 19.007980, 21.551373>,  <17.723530, 18.407057, 21.541862>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.217354, 19.007980, 21.551373> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.577507, 19.153286, 21.455580>,  <17.793598, 19.240469, 21.398104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.577507, 19.153286, 21.455580>,  <17.217354, 19.007980, 21.551373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.577507, 19.153286, 21.455580> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405179, 0.499442, -0.765760,
		-0.158567, 0.786509, 0.596876,
		0.900381, 0.363266, -0.239482,
		17.847622, 19.262266, 21.383736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.143194, 19.708998, 21.403795>,  <17.217354, 19.007980, 21.551373>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.143194, 19.708998, 21.403795> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.480045, 19.606205, 21.214151>,  <17.682156, 19.544529, 21.100365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.480045, 19.606205, 21.214151>,  <17.143194, 19.708998, 21.403795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.480045, 19.606205, 21.214151> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355423, 0.396709, -0.846343,
		0.405578, 0.881239, 0.242743,
		0.842129, -0.256981, -0.474109,
		17.732683, 19.529110, 21.071918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.258181, 20.233202, 20.922703>,  <17.143194, 19.708998, 21.403795>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.258181, 20.233202, 20.922703> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.502254, 19.945908, 20.788950>,  <17.648699, 19.773531, 20.708698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.502254, 19.945908, 20.788950>,  <17.258181, 20.233202, 20.922703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.502254, 19.945908, 20.788950> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192240, 0.275223, -0.941964,
		0.768582, 0.639054, 0.029864,
		0.610185, -0.718235, -0.334383,
		17.685310, 19.730436, 20.688635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.619606, 20.561136, 20.409199>,  <17.258181, 20.233202, 20.922703>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.619606, 20.561136, 20.409199> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.675571, 20.169861, 20.347788>,  <17.709150, 19.935095, 20.310942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.675571, 20.169861, 20.347788>,  <17.619606, 20.561136, 20.409199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.675571, 20.169861, 20.347788> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169525, 0.129096, -0.977034,
		0.975544, 0.162726, -0.147765,
		0.139913, -0.978189, -0.153525,
		17.717545, 19.876404, 20.301731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.038984, 20.552666, 19.824787>,  <17.619606, 20.561136, 20.409199>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.038984, 20.552666, 19.824787> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.838722, 20.210190, 19.875826>,  <17.718565, 20.004704, 19.906450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.838722, 20.210190, 19.875826>,  <18.038984, 20.552666, 19.824787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.838722, 20.210190, 19.875826> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192005, -0.033896, -0.980809,
		0.844085, -0.515546, -0.147423,
		-0.500655, -0.856191, 0.127598,
		17.688526, 19.953333, 19.914104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.740622, 20.464964, 19.767441>,  <18.038984, 20.552666, 19.824787>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.740622, 20.464964, 19.767441> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.963554, 20.775990, 19.650974>,  <19.097313, 20.962605, 19.581095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.963554, 20.775990, 19.650974>,  <18.740622, 20.464964, 19.767441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.963554, 20.775990, 19.650974> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026770, 0.333667, 0.942311,
		0.829859, -0.532973, 0.165147,
		0.557331, 0.777564, -0.291164,
		19.130754, 21.009258, 19.563625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.144810, 20.460537, 20.295099>,  <18.740622, 20.464964, 19.767441>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.144810, 20.460537, 20.295099> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.197849, 20.817654, 20.122894>,  <19.229673, 21.031923, 20.019571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.197849, 20.817654, 20.122894>,  <19.144810, 20.460537, 20.295099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.197849, 20.817654, 20.122894> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030458, 0.437813, 0.898550,
		0.990701, -0.106035, 0.085246,
		0.132600, 0.892791, -0.430513,
		19.237629, 21.085491, 19.993740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.509033, 20.756268, 20.686152>,  <19.144810, 20.460537, 20.295099>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.509033, 20.756268, 20.686152> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.384029, 21.071011, 20.473289>,  <19.309027, 21.259857, 20.345572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.384029, 21.071011, 20.473289>,  <19.509033, 20.756268, 20.686152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.384029, 21.071011, 20.473289> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222422, 0.605254, 0.764327,
		0.923508, 0.120495, -0.364162,
		-0.312508, 0.786860, -0.532156,
		19.290277, 21.307068, 20.313643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.021994, 21.235424, 20.826330>,  <19.509033, 20.756268, 20.686152>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.021994, 21.235424, 20.826330> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.680145, 21.422047, 20.735165>,  <19.475037, 21.534021, 20.680466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.680145, 21.422047, 20.735165>,  <20.021994, 21.235424, 20.826330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.680145, 21.422047, 20.735165> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123026, 0.608365, 0.784064,
		0.504465, 0.642040, -0.577321,
		-0.854622, 0.466559, -0.227912,
		19.423759, 21.562014, 20.666792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.205084, 21.901390, 20.876589>,  <20.021994, 21.235424, 20.826330>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.205084, 21.901390, 20.876589> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.805214, 21.898178, 20.886236>,  <19.565292, 21.896252, 20.892025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.805214, 21.898178, 20.886236>,  <20.205084, 21.901390, 20.876589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.805214, 21.898178, 20.886236> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013494, 0.636473, 0.771181,
		-0.021541, 0.771257, -0.636159,
		-0.999677, -0.008028, 0.024118,
		19.505310, 21.895769, 20.893471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.983547, 22.554052, 21.073936>,  <20.205084, 21.901390, 20.876589>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.983547, 22.554052, 21.073936> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.686619, 22.308479, 21.181303>,  <19.508461, 22.161135, 21.245722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.686619, 22.308479, 21.181303>,  <19.983547, 22.554052, 21.073936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.686619, 22.308479, 21.181303> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076564, 0.475688, 0.876275,
		-0.665655, 0.629927, -0.400119,
		-0.742321, -0.613932, 0.268414,
		19.463923, 22.124300, 21.261827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.419271, 22.966963, 21.520761>,  <19.983547, 22.554052, 21.073936>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.419271, 22.966963, 21.520761> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.317482, 22.587368, 21.595234>,  <19.256409, 22.359612, 21.639917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.317482, 22.587368, 21.595234>,  <19.419271, 22.966963, 21.520761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.317482, 22.587368, 21.595234> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220754, 0.244440, 0.944202,
		-0.941547, 0.199175, -0.271697,
		-0.254475, -0.948988, 0.186183,
		19.241140, 22.302671, 21.651089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.696327, 22.980440, 21.801910>,  <19.419271, 22.966963, 21.520761>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.696327, 22.980440, 21.801910> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.849693, 22.627926, 21.912420>,  <18.941713, 22.416416, 21.978725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.849693, 22.627926, 21.912420>,  <18.696327, 22.980440, 21.801910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.849693, 22.627926, 21.912420> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256754, 0.185633, 0.948482,
		-0.887170, -0.434597, -0.155099,
		0.383416, -0.881287, 0.276273,
		18.964718, 22.363541, 21.995302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.264740, 22.770649, 22.248049>,  <18.696327, 22.980440, 21.801910>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.264740, 22.770649, 22.248049> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.565479, 22.523975, 22.341366>,  <18.745922, 22.375971, 22.397356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.565479, 22.523975, 22.341366>,  <18.264740, 22.770649, 22.248049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.565479, 22.523975, 22.341366> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161983, 0.170226, 0.972000,
		-0.639129, -0.768587, 0.028092,
		0.751848, -0.616683, 0.233294,
		18.791035, 22.338970, 22.411354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.986919, 22.380390, 22.770782>,  <18.264740, 22.770649, 22.248049>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.986919, 22.380390, 22.770782> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.384655, 22.347122, 22.797237>,  <18.623297, 22.327162, 22.813110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.384655, 22.347122, 22.797237>,  <17.986919, 22.380390, 22.770782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.384655, 22.347122, 22.797237> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054149, 0.138957, 0.988817,
		-0.091433, -0.986800, 0.133666,
		0.994338, -0.083173, 0.066139,
		18.682957, 22.322170, 22.817080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.075150, 22.007080, 23.431591>,  <17.986919, 22.380390, 22.770782>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.075150, 22.007080, 23.431591> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.456604, 22.121040, 23.392801>,  <18.685476, 22.189417, 23.369528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.456604, 22.121040, 23.392801>,  <18.075150, 22.007080, 23.431591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.456604, 22.121040, 23.392801> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081473, 0.065802, 0.994501,
		0.289718, -0.956295, 0.039540,
		0.953638, 0.284904, -0.096976,
		18.742695, 22.206511, 23.363708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.462025, 21.588861, 23.854912>,  <18.075150, 22.007080, 23.431591>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.462025, 21.588861, 23.854912> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.671413, 21.923752, 23.791630>,  <18.797047, 22.124685, 23.753660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.671413, 21.923752, 23.791630>,  <18.462025, 21.588861, 23.854912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.671413, 21.923752, 23.791630> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143443, 0.096433, 0.984949,
		0.839882, -0.538286, -0.069614,
		0.523472, 0.837227, -0.158206,
		18.828455, 22.174919, 23.744167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.106186, 21.474367, 24.194752>,  <18.462025, 21.588861, 23.854912>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.106186, 21.474367, 24.194752> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.016521, 21.862797, 24.161837>,  <18.962723, 22.095854, 24.142088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.016521, 21.862797, 24.161837>,  <19.106186, 21.474367, 24.194752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.016521, 21.862797, 24.161837> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295873, 0.148262, 0.943651,
		0.928553, 0.187184, -0.320549,
		-0.224162, 0.971072, -0.082286,
		18.949272, 22.154118, 24.137150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.663923, 21.802593, 24.647921>,  <19.106186, 21.474367, 24.194752>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.663923, 21.802593, 24.647921> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.377438, 22.076248, 24.592793>,  <19.205545, 22.240440, 24.559715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.377438, 22.076248, 24.592793>,  <19.663923, 21.802593, 24.647921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.377438, 22.076248, 24.592793> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245363, 0.431725, 0.867992,
		0.653324, 0.587854, -0.477070,
		-0.716216, 0.684135, -0.137819,
		19.162573, 22.281488, 24.551447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.207096, 21.779364, 24.075853>,  <19.663923, 21.802593, 24.647921>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.207096, 21.779364, 24.075853> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.456577, 21.558464, 24.297127>,  <20.606266, 21.425924, 24.429892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.456577, 21.558464, 24.297127>,  <20.207096, 21.779364, 24.075853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.456577, 21.558464, 24.297127> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536215, -0.212646, -0.816857,
		0.568743, 0.806102, 0.163497,
		0.623703, -0.552251, 0.553185,
		20.643688, 21.392788, 24.463081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.927740, 21.970062, 24.124805>,  <20.207096, 21.779364, 24.075853>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.927740, 21.970062, 24.124805> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.939522, 21.574253, 24.181345>,  <20.946590, 21.336767, 24.215269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.939522, 21.574253, 24.181345>,  <20.927740, 21.970062, 24.124805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.939522, 21.574253, 24.181345> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546040, -0.102520, -0.831463,
		0.837241, 0.101672, 0.537299,
		0.029453, -0.989521, 0.141351,
		20.948359, 21.277397, 24.223751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.604458, 21.690804, 24.008104>,  <20.927740, 21.970062, 24.124805>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.604458, 21.690804, 24.008104> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.335644, 21.405598, 23.928123>,  <21.174355, 21.234474, 23.880135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.335644, 21.405598, 23.928123>,  <21.604458, 21.690804, 24.008104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.335644, 21.405598, 23.928123> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548476, -0.297848, -0.781320,
		0.497538, -0.634742, 0.591235,
		-0.672034, -0.713014, -0.199950,
		21.134033, 21.191694, 23.868139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.089006, 21.089315, 24.050875>,  <21.604458, 21.690804, 24.008104>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.089006, 21.089315, 24.050875> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.758797, 20.974770, 23.856348>,  <21.560671, 20.906042, 23.739632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.758797, 20.974770, 23.856348>,  <22.089006, 21.089315, 24.050875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.758797, 20.974770, 23.856348> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563716, -0.377102, -0.734859,
		0.027049, -0.880788, 0.472737,
		-0.825525, -0.286367, -0.486315,
		21.511139, 20.888861, 23.710453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.309019, 20.402620, 23.759289>,  <22.089006, 21.089315, 24.050875>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.309019, 20.402620, 23.759289> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.985798, 20.529415, 23.560667>,  <21.791864, 20.605492, 23.441494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.985798, 20.529415, 23.560667>,  <22.309019, 20.402620, 23.759289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.985798, 20.529415, 23.560667> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312417, -0.484023, -0.817384,
		-0.499443, -0.815624, 0.292086,
		-0.808054, 0.316985, -0.496557,
		21.743382, 20.624510, 23.411699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.062468, 19.770733, 23.454901>,  <22.309019, 20.402620, 23.759289>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.062468, 19.770733, 23.454901> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.863907, 20.052605, 23.252115>,  <21.744770, 20.221727, 23.130444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.863907, 20.052605, 23.252115>,  <22.062468, 19.770733, 23.454901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.863907, 20.052605, 23.252115> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175769, -0.490309, -0.853641,
		-0.850113, -0.512856, 0.119528,
		-0.496400, 0.704682, -0.506962,
		21.714987, 20.264009, 23.100027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.530012, 19.451698, 23.007296>,  <22.062468, 19.770733, 23.454901>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.530012, 19.451698, 23.007296> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.653404, 19.804607, 22.865067>,  <21.727440, 20.016354, 22.779728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.653404, 19.804607, 22.865067>,  <21.530012, 19.451698, 23.007296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.653404, 19.804607, 22.865067> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166858, -0.418197, -0.892899,
		-0.936482, 0.216112, -0.276221,
		0.308481, 0.882274, -0.355574,
		21.745949, 20.069290, 22.758394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.964043, 18.952284, 22.815041>,  <21.530012, 19.451698, 23.007296>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.964043, 18.952284, 22.815041> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.144905, 18.598839, 22.863680>,  <21.253422, 18.386772, 22.892862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.144905, 18.598839, 22.863680>,  <20.964043, 18.952284, 22.815041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.144905, 18.598839, 22.863680> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229108, 0.016697, 0.973258,
		-0.862012, -0.467922, -0.194893,
		0.452155, -0.883612, 0.121597,
		21.280552, 18.333755, 22.900160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.484568, 18.475342, 23.113516>,  <20.964043, 18.952284, 22.815041>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.484568, 18.475342, 23.113516> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.843536, 18.324005, 23.204285>,  <21.058918, 18.233202, 23.258745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.843536, 18.324005, 23.204285>,  <20.484568, 18.475342, 23.113516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.843536, 18.324005, 23.204285> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342209, -0.272333, 0.899293,
		-0.278462, -0.884690, -0.373875,
		0.897414, -0.378362, 0.226915,
		21.112762, 18.210503, 23.272362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.327862, 18.025476, 23.588100>,  <20.484568, 18.475342, 23.113516>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.327862, 18.025476, 23.588100> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.722057, 18.021420, 23.655876>,  <20.958574, 18.018986, 23.696541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.722057, 18.021420, 23.655876>,  <20.327862, 18.025476, 23.588100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.722057, 18.021420, 23.655876> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164699, -0.298636, 0.940048,
		0.041066, -0.954313, -0.295972,
		0.985489, -0.010142, 0.169439,
		21.017704, 18.018377, 23.706707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.509977, 17.427237, 23.952135>,  <20.327862, 18.025476, 23.588100>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.509977, 17.427237, 23.952135> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.802937, 17.683407, 24.044607>,  <20.978712, 17.837109, 24.100090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.802937, 17.683407, 24.044607>,  <20.509977, 17.427237, 23.952135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.802937, 17.683407, 24.044607> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065794, -0.271378, 0.960221,
		0.677689, -0.718476, -0.156621,
		0.732400, 0.640426, 0.231181,
		21.022657, 17.875534, 24.113962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.118536, 17.036644, 24.214180>,  <20.509977, 17.427237, 23.952135>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.118536, 17.036644, 24.214180> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.156612, 17.407146, 24.360052>,  <21.179459, 17.629448, 24.447575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.156612, 17.407146, 24.360052>,  <21.118536, 17.036644, 24.214180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.156612, 17.407146, 24.360052> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138896, -0.375118, 0.916512,
		0.985721, -0.036592, -0.164361,
		0.095192, 0.926255, 0.364680,
		21.185169, 17.685022, 24.469456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.723078, 17.053951, 24.560179>,  <21.118536, 17.036644, 24.214180>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.723078, 17.053951, 24.560179> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.556908, 17.385033, 24.711084>,  <21.457207, 17.583681, 24.801628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.556908, 17.385033, 24.711084>,  <21.723078, 17.053951, 24.560179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.556908, 17.385033, 24.711084> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150481, -0.346495, 0.925903,
		0.897095, 0.441412, 0.019388,
		-0.415423, 0.827706, 0.377263,
		21.432281, 17.633345, 24.824263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.174580, 17.334351, 25.092339>,  <21.723078, 17.053951, 24.560179>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.174580, 17.334351, 25.092339> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.826809, 17.514065, 25.174545>,  <21.618147, 17.621893, 25.223869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.826809, 17.514065, 25.174545>,  <22.174580, 17.334351, 25.092339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.826809, 17.514065, 25.174545> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207024, -0.046399, 0.977235,
		0.448594, 0.892182, -0.052672,
		-0.869428, 0.449286, 0.205518,
		21.565981, 17.648851, 25.236200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.331146, 17.851246, 25.537483>,  <22.174580, 17.334351, 25.092339>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.331146, 17.851246, 25.537483> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.942051, 17.771141, 25.584255>,  <21.708593, 17.723078, 25.612318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.942051, 17.771141, 25.584255>,  <22.331146, 17.851246, 25.537483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.942051, 17.771141, 25.584255> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123615, -0.021165, 0.992104,
		-0.196207, 0.979513, 0.045344,
		-0.972739, -0.200263, 0.116929,
		21.650229, 17.711061, 25.619333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.129622, 18.302214, 26.082468>,  <22.331146, 17.851246, 25.537483>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.129622, 18.302214, 26.082468> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.874454, 17.998192, 26.032860>,  <21.721355, 17.815779, 26.003096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.874454, 17.998192, 26.032860>,  <22.129622, 18.302214, 26.082468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.874454, 17.998192, 26.032860> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043057, -0.195993, 0.979660,
		-0.768902, 0.619600, 0.157752,
		-0.637916, -0.760054, -0.124021,
		21.683081, 17.770176, 25.995653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<19.211859, 18.841619, 10.345462> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.896927, 18.627815, 10.468367>,  <18.707968, 18.499533, 10.542109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.896927, 18.627815, 10.468367>,  <19.211859, 18.841619, 10.345462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.896927, 18.627815, 10.468367> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461956, -0.181403, 0.868153,
		-0.408297, 0.825466, 0.389744,
		-0.787331, -0.534508, 0.307262,
		18.660727, 18.467463, 10.560545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.929325, 19.118261, 11.091811>,  <19.211859, 18.841619, 10.345462>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.929325, 19.118261, 11.091811> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.845619, 18.730869, 11.037766>,  <18.795397, 18.498434, 11.005339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.845619, 18.730869, 11.037766>,  <18.929325, 19.118261, 11.091811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.845619, 18.730869, 11.037766> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430705, -0.215335, 0.876427,
		-0.877896, 0.125210, 0.462191,
		-0.209264, -0.968480, -0.135113,
		18.782841, 18.440325, 10.997231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.812580, 18.901459, 11.752658>,  <18.929325, 19.118261, 11.091811>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.812580, 18.901459, 11.752658> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.837536, 18.552197, 11.559283>,  <18.852509, 18.342640, 11.443258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.837536, 18.552197, 11.559283>,  <18.812580, 18.901459, 11.752658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.837536, 18.552197, 11.559283> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416235, -0.417483, 0.807748,
		-0.907114, -0.251617, 0.337391,
		0.062388, -0.873154, -0.483436,
		18.856253, 18.290251, 11.414252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.357584, 18.358196, 12.097987>,  <18.812580, 18.901459, 11.752658>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.357584, 18.358196, 12.097987> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.649387, 18.184990, 11.886208>,  <18.824469, 18.081066, 11.759140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.649387, 18.184990, 11.886208>,  <18.357584, 18.358196, 12.097987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.649387, 18.184990, 11.886208> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348899, -0.430203, 0.832583,
		-0.588294, -0.792099, -0.162756,
		0.729506, -0.433019, -0.529449,
		18.868240, 18.055084, 11.727373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.378128, 17.735474, 12.403625>,  <18.357584, 18.358196, 12.097987>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.378128, 17.735474, 12.403625> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.729057, 17.790951, 12.219856>,  <18.939615, 17.824238, 12.109595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.729057, 17.790951, 12.219856>,  <18.378128, 17.735474, 12.403625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.729057, 17.790951, 12.219856> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458922, -0.522422, 0.718656,
		-0.140337, -0.841331, -0.521983,
		0.877324, 0.138695, -0.459421,
		18.992254, 17.832560, 12.082030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.715120, 17.107920, 12.566897>,  <18.378128, 17.735474, 12.403625>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.715120, 17.107920, 12.566897> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.993214, 17.370903, 12.450691>,  <19.160069, 17.528694, 12.380968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.993214, 17.370903, 12.450691>,  <18.715120, 17.107920, 12.566897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.993214, 17.370903, 12.450691> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623983, -0.351419, 0.697962,
		0.356790, -0.666521, -0.654562,
		0.695232, 0.657461, -0.290514,
		19.201782, 17.568142, 12.363537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.296955, 16.726818, 12.470632>,  <18.715120, 17.107920, 12.566897>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.296955, 16.726818, 12.470632> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.452023, 17.095303, 12.483827>,  <19.545063, 17.316393, 12.491744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.452023, 17.095303, 12.483827>,  <19.296955, 16.726818, 12.470632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.452023, 17.095303, 12.483827> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789593, -0.350320, 0.503804,
		0.475666, -0.169260, -0.863188,
		0.387666, 0.921209, 0.032989,
		19.568323, 17.371666, 12.493723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.003029, 16.557392, 12.382488>,  <19.296955, 16.726818, 12.470632>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.003029, 16.557392, 12.382488> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.001148, 16.921364, 12.548381>,  <20.000021, 17.139748, 12.647917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.001148, 16.921364, 12.548381>,  <20.003029, 16.557392, 12.382488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.001148, 16.921364, 12.548381> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672981, -0.303883, 0.674353,
		0.739645, 0.282277, -0.610938,
		-0.004700, 0.909931, 0.414732,
		19.999739, 17.194344, 12.672801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.622253, 16.668835, 12.569691>,  <20.003029, 16.557392, 12.382488>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.622253, 16.668835, 12.569691> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.426750, 16.940891, 12.788239>,  <20.309448, 17.104126, 12.919369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.426750, 16.940891, 12.788239>,  <20.622253, 16.668835, 12.569691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.426750, 16.940891, 12.788239> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595623, -0.197456, 0.778617,
		0.637454, 0.705987, -0.308601,
		-0.488758, 0.680142, 0.546372,
		20.280123, 17.144934, 12.952151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.117371, 16.953520, 12.895528>,  <20.622253, 16.668835, 12.569691>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.117371, 16.953520, 12.895528> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.804531, 17.065514, 13.118212>,  <20.616827, 17.132710, 13.251822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.804531, 17.065514, 13.118212>,  <21.117371, 16.953520, 12.895528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.804531, 17.065514, 13.118212> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595671, 0.073529, 0.799856,
		0.183015, 0.957184, -0.224287,
		-0.782101, 0.279987, 0.556710,
		20.569901, 17.149509, 13.285225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.345594, 17.520378, 13.299885>,  <21.117371, 16.953520, 12.895528>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.345594, 17.520378, 13.299885> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.023567, 17.373734, 13.486415>,  <20.830351, 17.285748, 13.598333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.023567, 17.373734, 13.486415>,  <21.345594, 17.520378, 13.299885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.023567, 17.373734, 13.486415> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440070, 0.157997, 0.883955,
		-0.397746, 0.916860, 0.034136,
		-0.805070, -0.366611, 0.466325,
		20.782047, 17.263750, 13.626312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.239815, 17.985985, 13.764025>,  <21.345594, 17.520378, 13.299885>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.239815, 17.985985, 13.764025> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.067009, 17.653286, 13.903487>,  <20.963326, 17.453667, 13.987164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.067009, 17.653286, 13.903487>,  <21.239815, 17.985985, 13.764025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.067009, 17.653286, 13.903487> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534337, 0.075377, 0.841904,
		-0.726531, 0.550016, 0.411868,
		-0.432015, -0.831746, 0.348657,
		20.937405, 17.403763, 14.008084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.167252, 18.772905, 13.914837>,  <21.239815, 17.985985, 13.764025>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.167252, 18.772905, 13.914837> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.485664, 19.013752, 13.890222>,  <21.676712, 19.158260, 13.875453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.485664, 19.013752, 13.890222>,  <21.167252, 18.772905, 13.914837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.485664, 19.013752, 13.890222> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195130, 0.159063, -0.967793,
		-0.572936, 0.782403, 0.244111,
		0.796033, 0.602117, -0.061537,
		21.724474, 19.194387, 13.871760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.000820, 19.468540, 13.455487>,  <21.167252, 18.772905, 13.914837>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.000820, 19.468540, 13.455487> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.388138, 19.368717, 13.450947>,  <21.620529, 19.308825, 13.448222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.388138, 19.368717, 13.450947>,  <21.000820, 19.468540, 13.455487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.388138, 19.368717, 13.450947> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018181, 0.115720, -0.993116,
		0.249152, 0.961421, 0.116588,
		0.968294, -0.249557, -0.011352,
		21.678625, 19.293850, 13.447541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.312912, 19.862928, 12.984913>,  <21.000820, 19.468540, 13.455487>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.312912, 19.862928, 12.984913> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.629475, 19.618526, 12.992386>,  <21.819412, 19.471886, 12.996870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.629475, 19.618526, 12.992386>,  <21.312912, 19.862928, 12.984913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.629475, 19.618526, 12.992386> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233158, 0.273465, -0.933195,
		0.565077, 0.742893, 0.358883,
		0.791407, -0.611004, 0.018683,
		21.866898, 19.435225, 12.997991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.824100, 20.275146, 12.832799>,  <21.312912, 19.862928, 12.984913>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.824100, 20.275146, 12.832799> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.927284, 19.895481, 12.760636>,  <21.989195, 19.667683, 12.717339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.927284, 19.895481, 12.760636>,  <21.824100, 20.275146, 12.832799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.927284, 19.895481, 12.760636> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224378, 0.240476, -0.944365,
		0.939740, 0.203130, 0.275004,
		0.257961, -0.949162, -0.180407,
		22.004673, 19.610733, 12.706514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.367931, 20.349693, 12.316257>,  <21.824100, 20.275146, 12.832799>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.367931, 20.349693, 12.316257> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.244267, 19.970074, 12.291852>,  <22.170067, 19.742302, 12.277209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.244267, 19.970074, 12.291852>,  <22.367931, 20.349693, 12.316257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.244267, 19.970074, 12.291852> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047174, 0.048770, -0.997695,
		0.949838, -0.311328, 0.029692,
		-0.309163, -0.949050, -0.061010,
		22.151518, 19.685358, 12.273549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.833410, 19.996950, 11.957753>,  <22.367931, 20.349693, 12.316257>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.833410, 19.996950, 11.957753> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.488766, 19.798748, 11.913743>,  <22.281979, 19.679827, 11.887337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.488766, 19.798748, 11.913743>,  <22.833410, 19.996950, 11.957753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.488766, 19.798748, 11.913743> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064478, 0.108163, -0.992040,
		0.503461, -0.861845, -0.061245,
		-0.861609, -0.495504, -0.110026,
		22.230284, 19.650097, 11.880735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.891853, 19.821581, 11.274360>,  <22.833410, 19.996950, 11.957753>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.891853, 19.821581, 11.274360> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.517220, 19.687862, 11.316421>,  <22.292440, 19.607632, 11.341657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.517220, 19.687862, 11.316421>,  <22.891853, 19.821581, 11.274360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.517220, 19.687862, 11.316421> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112040, 0.001332, -0.993703,
		0.332053, -0.942466, -0.038702,
		-0.936583, -0.334298, 0.105152,
		22.236244, 19.587572, 11.347966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.789516, 19.262501, 10.813619>,  <22.891853, 19.821581, 11.274360>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.789516, 19.262501, 10.813619> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.429977, 19.428913, 10.868745>,  <22.214254, 19.528761, 10.901820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.429977, 19.428913, 10.868745>,  <22.789516, 19.262501, 10.813619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.429977, 19.428913, 10.868745> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137241, 0.031448, -0.990038,
		-0.416219, -0.908807, 0.028829,
		-0.898848, 0.416029, 0.137815,
		22.160324, 19.553722, 10.910089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.328447, 18.923214, 10.300957>,  <22.789516, 19.262501, 10.813619>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.328447, 18.923214, 10.300957> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.128468, 19.258751, 10.387115>,  <22.008480, 19.460073, 10.438810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.128468, 19.258751, 10.387115>,  <22.328447, 18.923214, 10.300957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.128468, 19.258751, 10.387115> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007286, 0.244628, -0.969590,
		-0.866024, -0.486315, -0.116190,
		-0.499950, 0.838841, 0.215397,
		21.978483, 19.510403, 10.451735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.740049, 18.932499, 9.937239>,  <22.328447, 18.923214, 10.300957>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.740049, 18.932499, 9.937239> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.739323, 19.320908, 10.032829>,  <21.738886, 19.553953, 10.090183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.739323, 19.320908, 10.032829>,  <21.740049, 18.932499, 9.937239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.739323, 19.320908, 10.032829> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259714, 0.230319, -0.937818,
		-0.965684, -0.063769, 0.251770,
		-0.001816, 0.971024, 0.238977,
		21.738777, 19.612215, 10.104523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.135136, 19.162098, 9.684188>,  <21.740049, 18.932499, 9.937239>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.135136, 19.162098, 9.684188> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.399120, 19.460632, 9.718678>,  <21.557510, 19.639753, 9.739371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.399120, 19.460632, 9.718678>,  <21.135136, 19.162098, 9.684188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.399120, 19.460632, 9.718678> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383846, 0.433608, -0.815258,
		-0.645844, 0.504941, 0.572643,
		0.659960, 0.746337, 0.086224,
		21.597109, 19.684534, 9.744545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.738693, 19.739231, 9.461775>,  <21.135136, 19.162098, 9.684188>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.738693, 19.739231, 9.461775> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.120998, 19.854389, 9.437664>,  <21.350382, 19.923483, 9.423198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.120998, 19.854389, 9.437664>,  <20.738693, 19.739231, 9.461775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.120998, 19.854389, 9.437664> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176203, 0.396315, -0.901047,
		-0.235518, 0.871809, 0.429512,
		0.955764, 0.287894, -0.060276,
		21.407728, 19.940758, 9.419581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.650833, 20.385757, 9.116325>,  <20.738693, 19.739231, 9.461775>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.650833, 20.385757, 9.116325> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.023266, 20.245171, 9.077212>,  <21.246725, 20.160818, 9.053744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.023266, 20.245171, 9.077212>,  <20.650833, 20.385757, 9.116325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.023266, 20.245171, 9.077212> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000685, 0.266345, -0.963877,
		0.364814, 0.897514, 0.247748,
		0.931080, -0.351466, -0.097781,
		21.302589, 20.139730, 9.047878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.989529, 21.022480, 8.915651>,  <20.650833, 20.385757, 9.116325>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.989529, 21.022480, 8.915651> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.238266, 20.733826, 8.793959>,  <21.387508, 20.560633, 8.720942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.238266, 20.733826, 8.793959>,  <20.989529, 21.022480, 8.915651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.238266, 20.733826, 8.793959> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064744, 0.434518, -0.898333,
		0.780462, 0.538924, 0.316923,
		0.621842, -0.721634, -0.304232,
		21.424818, 20.517336, 8.702689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.123653, 21.295975, 8.846969>,  <20.989529, 21.022480, 8.915651>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.123653, 21.295975, 8.846969> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.762852, 21.403107, 8.711524>,  <19.546371, 21.467386, 8.630257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.762852, 21.403107, 8.711524>,  <20.123653, 21.295975, 8.846969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.762852, 21.403107, 8.711524> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322267, 0.104218, 0.940894,
		0.287291, 0.957812, -0.007692,
		-0.902002, 0.267832, -0.338612,
		19.492250, 21.483456, 8.609941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.900967, 21.914368, 9.136011>,  <20.123653, 21.295975, 8.846969>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.900967, 21.914368, 9.136011> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.554962, 21.727707, 9.062259>,  <19.347361, 21.615711, 9.018007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.554962, 21.727707, 9.062259>,  <19.900967, 21.914368, 9.136011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.554962, 21.727707, 9.062259> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336826, 0.267685, 0.902714,
		-0.371895, 0.842961, -0.388730,
		-0.865010, -0.466650, -0.184381,
		19.295460, 21.587711, 9.006945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.280907, 22.369053, 9.020362>,  <19.900967, 21.914368, 9.136011>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.280907, 22.369053, 9.020362> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.162781, 22.014137, 9.162069>,  <19.091906, 21.801188, 9.247094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.162781, 22.014137, 9.162069>,  <19.280907, 22.369053, 9.020362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.162781, 22.014137, 9.162069> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161741, 0.411885, 0.896767,
		-0.941610, 0.207527, -0.265146,
		-0.295313, -0.887290, 0.354269,
		19.074186, 21.747950, 9.268351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.827486, 22.607882, 9.537224>,  <19.280907, 22.369053, 9.020362>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.827486, 22.607882, 9.537224> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.895016, 22.220673, 9.611450>,  <18.935534, 21.988348, 9.655986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.895016, 22.220673, 9.611450>,  <18.827486, 22.607882, 9.537224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.895016, 22.220673, 9.611450> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050419, 0.196502, 0.979206,
		-0.984355, -0.155959, 0.081981,
		0.168826, -0.968020, 0.185565,
		18.945663, 21.930267, 9.667120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.388710, 22.450443, 9.942143>,  <18.827486, 22.607882, 9.537224>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.388710, 22.450443, 9.942143> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.678944, 22.183754, 10.010276>,  <18.853083, 22.023741, 10.051155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.678944, 22.183754, 10.010276>,  <18.388710, 22.450443, 9.942143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.678944, 22.183754, 10.010276> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011610, 0.235629, 0.971774,
		-0.688038, -0.707079, 0.163228,
		0.725582, -0.666722, 0.170331,
		18.896618, 21.983738, 10.061375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.229591, 22.162699, 10.528991>,  <18.388710, 22.450443, 9.942143>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.229591, 22.162699, 10.528991> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.620045, 22.081585, 10.497895>,  <18.854317, 22.032917, 10.479238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.620045, 22.081585, 10.497895>,  <18.229591, 22.162699, 10.528991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.620045, 22.081585, 10.497895> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094218, 0.072906, 0.992879,
		-0.195674, -0.976506, 0.090272,
		0.976133, -0.202786, -0.077738,
		18.912884, 22.020750, 10.474574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.328197, 21.698767, 10.971143>,  <18.229591, 22.162699, 10.528991>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.328197, 21.698767, 10.971143> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.710007, 21.797359, 10.904057>,  <18.939093, 21.856516, 10.863805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.710007, 21.797359, 10.904057>,  <18.328197, 21.698767, 10.971143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.710007, 21.797359, 10.904057> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247009, -0.338838, 0.907841,
		0.166939, -0.907984, -0.384313,
		0.954525, 0.246482, -0.167715,
		18.996365, 21.871304, 10.853743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.640118, 21.293863, 11.404494>,  <18.328197, 21.698767, 10.971143>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.640118, 21.293863, 11.404494> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.910305, 21.573345, 11.310217>,  <19.072418, 21.741035, 11.253651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.910305, 21.573345, 11.310217>,  <18.640118, 21.293863, 11.404494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.910305, 21.573345, 11.310217> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327047, 0.002606, 0.945004,
		0.660895, -0.715403, -0.226749,
		0.675468, 0.698707, -0.235693,
		19.112946, 21.782957, 11.239509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.301756, 20.917088, 11.641484>,  <18.640118, 21.293863, 11.404494>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.301756, 20.917088, 11.641484> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.291039, 21.316925, 11.637544>,  <19.284609, 21.556828, 11.635180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.291039, 21.316925, 11.637544>,  <19.301756, 20.917088, 11.641484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.291039, 21.316925, 11.637544> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425028, 0.020312, 0.904952,
		0.904784, 0.020060, -0.425399,
		-0.026794, 0.999592, -0.009852,
		19.283001, 21.616802, 11.634588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.024668, 21.032999, 11.743131>,  <19.301756, 20.917088, 11.641484>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.024668, 21.032999, 11.743131> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.802063, 21.350731, 11.840568>,  <19.668501, 21.541370, 11.899030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.802063, 21.350731, 11.840568>,  <20.024668, 21.032999, 11.743131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.802063, 21.350731, 11.840568> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373012, -0.023109, 0.927539,
		0.742399, 0.607049, -0.283433,
		-0.556512, 0.794328, 0.243593,
		19.635109, 21.589029, 11.913646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.471340, 21.380167, 12.066040>,  <20.024668, 21.032999, 11.743131>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.471340, 21.380167, 12.066040> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.121155, 21.542679, 12.170729>,  <19.911043, 21.640186, 12.233541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.121155, 21.542679, 12.170729>,  <20.471340, 21.380167, 12.066040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.121155, 21.542679, 12.170729> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289247, 0.006639, 0.957232,
		0.387166, 0.913725, -0.123327,
		-0.875465, 0.406280, 0.261722,
		19.858515, 21.664562, 12.249245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.615395, 21.843979, 12.542565>,  <20.471340, 21.380167, 12.066040>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.615395, 21.843979, 12.542565> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.229076, 21.788479, 12.630193>,  <19.997286, 21.755178, 12.682769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.229076, 21.788479, 12.630193>,  <20.615395, 21.843979, 12.542565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.229076, 21.788479, 12.630193> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202136, 0.126346, 0.971173,
		-0.162429, 0.982235, -0.093978,
		-0.965794, -0.138751, 0.219067,
		19.939339, 21.746853, 12.695913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.474409, 22.320597, 13.082730>,  <20.615395, 21.843979, 12.542565>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.474409, 22.320597, 13.082730> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.173409, 22.059868, 13.120396>,  <19.992807, 21.903431, 13.142995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.173409, 22.059868, 13.120396>,  <20.474409, 22.320597, 13.082730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.173409, 22.059868, 13.120396> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043769, 0.093166, 0.994688,
		-0.657133, 0.752627, -0.041578,
		-0.752503, -0.651822, 0.094164,
		19.947659, 21.864321, 13.148645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.049564, 22.553919, 13.712694>,  <20.474409, 22.320597, 13.082730>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.049564, 22.553919, 13.712694> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.932564, 22.175724, 13.655425>,  <19.862364, 21.948807, 13.621063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.932564, 22.175724, 13.655425>,  <20.049564, 22.553919, 13.712694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.932564, 22.175724, 13.655425> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062159, -0.130605, 0.989484,
		-0.954243, 0.298325, -0.020568,
		-0.292502, -0.945486, -0.143172,
		19.844812, 21.892078, 13.612473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.477200, 22.422274, 14.098394>,  <20.049564, 22.553919, 13.712694>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.477200, 22.422274, 14.098394> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.567429, 22.038731, 14.029454>,  <19.621567, 21.808605, 13.988090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.567429, 22.038731, 14.029454>,  <19.477200, 22.422274, 14.098394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.567429, 22.038731, 14.029454> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220557, -0.222580, 0.949638,
		-0.948932, -0.176201, -0.261691,
		0.225575, -0.958859, -0.172351,
		19.635101, 21.751072, 13.977749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.889986, 22.001625, 14.313692>,  <19.477200, 22.422274, 14.098394>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.889986, 22.001625, 14.313692> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.213020, 21.767365, 14.341460>,  <19.406841, 21.626808, 14.358121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.213020, 21.767365, 14.341460>,  <18.889986, 22.001625, 14.313692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.213020, 21.767365, 14.341460> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245392, -0.226658, 0.942555,
		-0.536274, -0.778228, -0.326760,
		0.807585, -0.585651, 0.069420,
		19.455296, 21.591669, 14.362287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.674608, 21.422945, 14.642713>,  <18.889986, 22.001625, 14.313692>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.674608, 21.422945, 14.642713> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.070587, 21.408730, 14.697474>,  <19.308174, 21.400200, 14.730331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.070587, 21.408730, 14.697474>,  <18.674608, 21.422945, 14.642713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.070587, 21.408730, 14.697474> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140737, -0.344093, 0.928328,
		0.014116, -0.938263, -0.345635,
		0.989946, -0.035539, 0.136906,
		19.367571, 21.398067, 14.738546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.846949, 20.744108, 15.004595>,  <18.674608, 21.422945, 14.642713>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.846949, 20.744108, 15.004595> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.164833, 20.979355, 15.064666>,  <19.355564, 21.120502, 15.100708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.164833, 20.979355, 15.064666>,  <18.846949, 20.744108, 15.004595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.164833, 20.979355, 15.064666> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016081, -0.226928, 0.973779,
		0.606774, -0.776288, -0.170885,
		0.794711, 0.588116, 0.150178,
		19.403246, 21.155790, 15.109719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.241386, 20.407362, 15.388137>,  <18.846949, 20.744108, 15.004595>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.241386, 20.407362, 15.388137> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.398499, 20.770313, 15.447986>,  <19.492765, 20.988085, 15.483895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.398499, 20.770313, 15.447986>,  <19.241386, 20.407362, 15.388137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.398499, 20.770313, 15.447986> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041856, -0.180168, 0.982745,
		0.918679, -0.379742, -0.108746,
		0.392782, 0.907378, 0.149622,
		19.516333, 21.042526, 15.492872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.675602, 20.272846, 15.914627>,  <19.241386, 20.407362, 15.388137>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.675602, 20.272846, 15.914627> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.642559, 20.671299, 15.902629>,  <19.622734, 20.910370, 15.895430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.642559, 20.671299, 15.902629>,  <19.675602, 20.272846, 15.914627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.642559, 20.671299, 15.902629> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065853, 0.035489, 0.997198,
		0.994404, 0.080400, -0.068530,
		-0.082607, 0.996131, -0.029996,
		19.617777, 20.970139, 15.893630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.194271, 20.461477, 16.351641>,  <19.675602, 20.272846, 15.914627>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.194271, 20.461477, 16.351641> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.950653, 20.777813, 16.327517>,  <19.804483, 20.967615, 16.313042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.950653, 20.777813, 16.327517>,  <20.194271, 20.461477, 16.351641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.950653, 20.777813, 16.327517> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008562, 0.082590, 0.996547,
		0.793091, 0.606423, -0.057072,
		-0.609043, 0.790841, -0.060309,
		19.767941, 21.015066, 16.309423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.481272, 21.084042, 16.753059>,  <20.194271, 20.461477, 16.351641>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.481272, 21.084042, 16.753059> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.082859, 21.117641, 16.741314>,  <19.843811, 21.137800, 16.734266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.082859, 21.117641, 16.741314>,  <20.481272, 21.084042, 16.753059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.082859, 21.117641, 16.741314> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009857, 0.223816, 0.974582,
		0.088435, 0.971005, -0.222101,
		-0.996033, 0.083998, -0.029364,
		19.784050, 21.142841, 16.732504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.363413, 21.523293, 17.318928>,  <20.481272, 21.084042, 16.753059>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.363413, 21.523293, 17.318928> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.994713, 21.396175, 17.230036>,  <19.773493, 21.319906, 17.176701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.994713, 21.396175, 17.230036>,  <20.363413, 21.523293, 17.318928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.994713, 21.396175, 17.230036> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212334, -0.065925, 0.974971,
		-0.324488, 0.945866, -0.006712,
		-0.921749, -0.317792, -0.222231,
		19.718187, 21.300838, 17.163366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.881094, 21.996277, 17.614202>,  <20.363413, 21.523293, 17.318928>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.881094, 21.996277, 17.614202> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.689892, 21.649529, 17.557562>,  <19.575171, 21.441481, 17.523577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.689892, 21.649529, 17.557562>,  <19.881094, 21.996277, 17.614202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.689892, 21.649529, 17.557562> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411905, 0.078842, 0.907809,
		-0.775787, 0.492262, -0.394755,
		-0.478004, -0.866869, -0.141601,
		19.546492, 21.389467, 17.515081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.328283, 22.091190, 18.011019>,  <19.881094, 21.996277, 17.614202>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.328283, 22.091190, 18.011019> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.391861, 21.698051, 17.973600>,  <19.430008, 21.462168, 17.951149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.391861, 21.698051, 17.973600>,  <19.328283, 22.091190, 18.011019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.391861, 21.698051, 17.973600> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440606, -0.155404, 0.884147,
		-0.883517, -0.099314, -0.457749,
		0.158944, -0.982846, -0.093544,
		19.439545, 21.403198, 17.945538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.760923, 21.922062, 18.302824>,  <19.328283, 22.091190, 18.011019>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.760923, 21.922062, 18.302824> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.981949, 21.589104, 18.319742>,  <19.114565, 21.389328, 18.329893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.981949, 21.589104, 18.319742>,  <18.760923, 21.922062, 18.302824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.981949, 21.589104, 18.319742> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233961, -0.106203, 0.966428,
		-0.799959, -0.543909, -0.253432,
		0.552565, -0.832396, 0.042295,
		19.147718, 21.339384, 18.332432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.376242, 21.496311, 18.718845>,  <18.760923, 21.922062, 18.302824>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.376242, 21.496311, 18.718845> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.738071, 21.325851, 18.723602>,  <18.955170, 21.223576, 18.726456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.738071, 21.325851, 18.723602>,  <18.376242, 21.496311, 18.718845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.738071, 21.325851, 18.723602> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078969, -0.140084, 0.986986,
		-0.418940, -0.893740, -0.160369,
		0.904573, -0.426152, 0.011891,
		19.009443, 21.198006, 18.727169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.297787, 20.869791, 19.158342>,  <18.376242, 21.496311, 18.718845>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.297787, 20.869791, 19.158342> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.680752, 20.984882, 19.148750>,  <18.910530, 21.053938, 19.142994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.680752, 20.984882, 19.148750>,  <18.297787, 20.869791, 19.158342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.680752, 20.984882, 19.148750> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019268, 0.019200, 0.999630,
		0.288084, -0.957519, 0.012838,
		0.957411, 0.287730, -0.023981,
		18.967976, 21.071201, 19.141556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.160721, 20.221928, 19.132595>,  <18.297787, 20.869791, 19.158342>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.160721, 20.221928, 19.132595> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.849731, 20.023235, 19.286888>,  <17.663137, 19.904020, 19.379465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.849731, 20.023235, 19.286888>,  <18.160721, 20.221928, 19.132595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.849731, 20.023235, 19.286888> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440244, -0.008152, -0.897841,
		0.449131, -0.867865, -0.212345,
		-0.777474, -0.496732, 0.385734,
		17.616489, 19.874216, 19.402609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.045685, 19.550528, 18.666210>,  <18.160721, 20.221928, 19.132595>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.045685, 19.550528, 18.666210> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.709885, 19.647308, 18.860819>,  <17.508406, 19.705378, 18.977583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.709885, 19.647308, 18.860819>,  <18.045685, 19.550528, 18.666210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.709885, 19.647308, 18.860819> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470206, 0.125232, -0.873627,
		-0.272304, -0.962172, 0.008636,
		-0.839498, 0.241953, 0.486520,
		17.458035, 19.719894, 19.006775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.589567, 19.235737, 18.284580>,  <18.045685, 19.550528, 18.666210>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.589567, 19.235737, 18.284580> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.373989, 19.491329, 18.504122>,  <17.244642, 19.644686, 18.635847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.373989, 19.491329, 18.504122>,  <17.589567, 19.235737, 18.284580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.373989, 19.491329, 18.504122> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528664, 0.250687, -0.810969,
		-0.655786, -0.727226, 0.202701,
		-0.538943, 0.638983, 0.548855,
		17.212307, 19.683023, 18.668777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.899353, 19.141912, 18.039850>,  <17.589567, 19.235737, 18.284580>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.899353, 19.141912, 18.039850> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.889030, 19.498585, 18.220621>,  <16.882837, 19.712587, 18.329084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.889030, 19.498585, 18.220621>,  <16.899353, 19.141912, 18.039850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.889030, 19.498585, 18.220621> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480994, 0.385233, -0.787554,
		-0.876344, -0.237700, 0.418951,
		-0.025808, 0.891681, 0.451929,
		16.881289, 19.766088, 18.356199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.294107, 19.401438, 17.983130>,  <16.899353, 19.141912, 18.039850>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.294107, 19.401438, 17.983130> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.522526, 19.722492, 18.052042>,  <16.659576, 19.915125, 18.093390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.522526, 19.722492, 18.052042>,  <16.294107, 19.401438, 17.983130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.522526, 19.722492, 18.052042> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284067, 0.390100, -0.875858,
		-0.770202, 0.451217, 0.450768,
		0.571047, 0.802636, 0.172280,
		16.693840, 19.963284, 18.103725>
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
