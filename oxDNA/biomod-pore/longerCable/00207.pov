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
	<24.167917, 34.627544, 35.191547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.199881, 34.841499, 34.855091>,  <24.219059, 34.969872, 34.653217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.199881, 34.841499, 34.855091>,  <24.167917, 34.627544, 35.191547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.199881, 34.841499, 34.855091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964901, -0.253279, -0.069396,
		-0.250161, -0.806070, -0.536349,
		0.079908, 0.534884, -0.841139,
		24.223852, 35.001965, 34.602749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.591902, 34.184486, 34.740047>,  <24.167917, 34.627544, 35.191547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.591902, 34.184486, 34.740047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.598694, 34.560127, 34.602764>,  <24.602768, 34.785511, 34.520393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.598694, 34.560127, 34.602764>,  <24.591902, 34.184486, 34.740047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.598694, 34.560127, 34.602764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976399, -0.089489, -0.196561,
		-0.215305, -0.331771, -0.918462,
		0.016979, 0.939106, -0.343209,
		24.603788, 34.841858, 34.499802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.922871, 34.190056, 33.990608>,  <24.591902, 34.184486, 34.740047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.922871, 34.190056, 33.990608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.950106, 34.520714, 34.214043>,  <24.966446, 34.719109, 34.348103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.950106, 34.520714, 34.214043>,  <24.922871, 34.190056, 33.990608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.950106, 34.520714, 34.214043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959553, 0.099043, -0.263530,
		-0.273171, 0.553939, -0.786466,
		0.068086, 0.826645, 0.558590,
		24.970531, 34.768707, 34.381618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.025917, 34.757504, 33.566608>,  <24.922871, 34.190056, 33.990608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.025917, 34.757504, 33.566608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.173634, 34.829220, 33.931351>,  <25.262264, 34.872250, 34.150196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.173634, 34.829220, 33.931351>,  <25.025917, 34.757504, 33.566608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.173634, 34.829220, 33.931351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916730, 0.090641, -0.389090,
		-0.152413, 0.979611, -0.130890,
		0.369293, 0.179293, 0.911853,
		25.284422, 34.883007, 34.204906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.258265, 35.486511, 33.775196>,  <25.025917, 34.757504, 33.566608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.258265, 35.486511, 33.775196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.483957, 35.207100, 33.951241>,  <25.619373, 35.039452, 34.056866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.483957, 35.207100, 33.951241>,  <25.258265, 35.486511, 33.775196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.483957, 35.207100, 33.951241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820997, 0.418407, -0.388458,
		0.087206, 0.580507, 0.809572,
		0.564233, -0.698532, 0.440107,
		25.653227, 34.997540, 34.083271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.845499, 35.728004, 34.083439>,  <25.258265, 35.486511, 33.775196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.845499, 35.728004, 34.083439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.912643, 35.373077, 33.911625>,  <25.952930, 35.160122, 33.808537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.912643, 35.373077, 33.911625>,  <25.845499, 35.728004, 34.083439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.912643, 35.373077, 33.911625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878517, 0.332322, -0.343175,
		0.447247, -0.319746, 0.835304,
		0.167861, -0.887313, -0.429533,
		25.963001, 35.106884, 33.782764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.381943, 35.257980, 34.294109>,  <25.845499, 35.728004, 34.083439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.381943, 35.257980, 34.294109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.346935, 35.217903, 33.897663>,  <26.325932, 35.193855, 33.659798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.346935, 35.217903, 33.897663>,  <26.381943, 35.257980, 34.294109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.346935, 35.217903, 33.897663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911171, 0.394075, -0.120297,
		0.402626, -0.913600, 0.056809,
		-0.087517, -0.100197, -0.991111,
		26.320681, 35.187843, 33.600330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.789074, 35.443237, 34.859203>,  <26.381943, 35.257980, 34.294109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.789074, 35.443237, 34.859203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.002575, 35.106251, 34.829933>,  <27.130676, 34.904060, 34.812370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.002575, 35.106251, 34.829933>,  <26.789074, 35.443237, 34.859203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.002575, 35.106251, 34.829933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338755, 0.292304, -0.894317,
		0.774824, 0.452555, 0.441408,
		0.533753, -0.842468, -0.073180,
		27.162701, 34.853512, 34.807980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.356230, 35.637917, 34.589413>,  <26.789074, 35.443237, 34.859203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.356230, 35.637917, 34.589413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.384348, 35.246681, 34.511028>,  <27.401218, 35.011940, 34.463997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.384348, 35.246681, 34.511028>,  <27.356230, 35.637917, 34.589413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.384348, 35.246681, 34.511028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476642, 0.205500, -0.854741,
		0.876283, -0.033319, 0.480644,
		0.070293, -0.978090, -0.195957,
		27.405436, 34.953255, 34.452240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.045979, 35.656178, 34.378040>,  <27.356230, 35.637917, 34.589413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.045979, 35.656178, 34.378040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.859283, 35.327000, 34.248470>,  <27.747267, 35.129494, 34.170731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.859283, 35.327000, 34.248470>,  <28.045979, 35.656178, 34.378040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.859283, 35.327000, 34.248470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474417, 0.076134, -0.877002,
		0.746382, -0.563004, 0.354882,
		-0.466737, -0.822940, -0.323923,
		27.719263, 35.080116, 34.151295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.663412, 35.271233, 34.125946>,  <28.045979, 35.656178, 34.378040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.663412, 35.271233, 34.125946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.342209, 35.116508, 33.944592>,  <28.149487, 35.023674, 33.835781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.342209, 35.116508, 33.944592>,  <28.663412, 35.271233, 34.125946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.342209, 35.116508, 33.944592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495009, -0.009258, -0.868838,
		0.331878, -0.922113, 0.198908,
		-0.803009, -0.386810, -0.453382,
		28.101307, 35.000465, 33.808578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.721525, 34.681271, 33.673378>,  <28.663412, 35.271233, 34.125946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.721525, 34.681271, 33.673378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.414963, 34.897820, 33.535084>,  <28.231026, 35.027748, 33.452106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.414963, 34.897820, 33.535084>,  <28.721525, 34.681271, 33.673378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.414963, 34.897820, 33.535084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508914, 0.183317, -0.841071,
		-0.391956, -0.820552, -0.416010,
		-0.766405, 0.541376, -0.345739,
		28.185041, 35.060234, 33.431362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.488815, 34.330345, 32.967884>,  <28.721525, 34.681271, 33.673378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.488815, 34.330345, 32.967884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.461737, 34.725071, 33.026695>,  <28.445490, 34.961906, 33.061981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.461737, 34.725071, 33.026695>,  <28.488815, 34.330345, 32.967884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.461737, 34.725071, 33.026695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522046, 0.160619, -0.837657,
		-0.850227, 0.020052, -0.526035,
		-0.067694, 0.986813, 0.147031,
		28.441429, 35.021114, 33.070805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.138943, 34.707893, 32.427406>,  <28.488815, 34.330345, 32.967884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.138943, 34.707893, 32.427406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.415514, 34.930801, 32.611313>,  <28.581457, 35.064545, 32.721657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.415514, 34.930801, 32.611313>,  <28.138943, 34.707893, 32.427406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.415514, 34.930801, 32.611313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448265, 0.168151, -0.877943,
		-0.566559, 0.813129, -0.133539,
		0.691426, 0.557267, 0.459764,
		28.622942, 35.097980, 32.749241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.521488, 35.027344, 32.566986>,  <28.138943, 34.707893, 32.427406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.521488, 35.027344, 32.566986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.243795, 34.822849, 32.364330>,  <27.077181, 34.700153, 32.242737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.243795, 34.822849, 32.364330>,  <27.521488, 35.027344, 32.566986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.243795, 34.822849, 32.364330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516836, 0.135810, -0.845243,
		0.500923, -0.848644, 0.169941,
		-0.694231, -0.511234, -0.506640,
		27.035526, 34.669479, 32.212337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.084711, 35.157154, 33.089069>,  <27.521488, 35.027344, 32.566986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.084711, 35.157154, 33.089069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.466633, 35.046070, 33.131447>,  <27.695786, 34.979420, 33.156876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.466633, 35.046070, 33.131447>,  <27.084711, 35.157154, 33.089069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.466633, 35.046070, 33.131447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238178, -0.501611, 0.831659,
		-0.177813, -0.819308, -0.545085,
		0.954806, -0.277707, 0.105948,
		27.753075, 34.962757, 33.163231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.061214, 34.464088, 33.165268>,  <27.084711, 35.157154, 33.089069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.061214, 34.464088, 33.165268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.381662, 34.613708, 33.352158>,  <27.573931, 34.703480, 33.464291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.381662, 34.613708, 33.352158>,  <27.061214, 34.464088, 33.165268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.381662, 34.613708, 33.352158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255395, -0.492356, 0.832081,
		0.541279, -0.785922, -0.298905,
		0.801118, 0.374049, 0.467223,
		27.621998, 34.725922, 33.492325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.276243, 33.941467, 33.615616>,  <27.061214, 34.464088, 33.165268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.276243, 33.941467, 33.615616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.412426, 34.284679, 33.769432>,  <27.494135, 34.490608, 33.861721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.412426, 34.284679, 33.769432>,  <27.276243, 33.941467, 33.615616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.412426, 34.284679, 33.769432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191920, -0.336946, 0.921756,
		0.920466, -0.387617, 0.049959,
		0.340455, 0.858033, 0.384538,
		27.514563, 34.542088, 33.884792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.508045, 33.702305, 34.177822>,  <27.276243, 33.941467, 33.615616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.508045, 33.702305, 34.177822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.474327, 34.093449, 34.254436>,  <27.454096, 34.328136, 34.300404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.474327, 34.093449, 34.254436>,  <27.508045, 33.702305, 34.177822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.474327, 34.093449, 34.254436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087425, -0.198735, 0.976146,
		0.992598, 0.065538, 0.102241,
		-0.084293, 0.977859, 0.191535,
		27.449039, 34.386806, 34.311897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.822536, 33.731091, 34.715427>,  <27.508045, 33.702305, 34.177822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.822536, 33.731091, 34.715427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.585634, 34.052883, 34.733524>,  <27.443493, 34.245956, 34.744385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.585634, 34.052883, 34.733524>,  <27.822536, 33.731091, 34.715427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.585634, 34.052883, 34.733524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223126, -0.217703, 0.950168,
		0.774240, 0.552648, 0.308436,
		-0.592256, 0.804478, 0.045244,
		27.407957, 34.294228, 34.747097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.818680, 33.948826, 35.436157>,  <27.822536, 33.731091, 34.715427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.818680, 33.948826, 35.436157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.497368, 34.067032, 35.229309>,  <27.304581, 34.137955, 35.105202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.497368, 34.067032, 35.229309>,  <27.818680, 33.948826, 35.436157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.497368, 34.067032, 35.229309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580654, -0.195269, 0.790386,
		0.132595, 0.935168, 0.328449,
		-0.803280, 0.295517, -0.517118,
		27.256384, 34.155685, 35.074173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.475027, 34.575348, 35.594082>,  <27.818680, 33.948826, 35.436157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.475027, 34.575348, 35.594082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.187737, 34.339481, 35.446323>,  <27.015362, 34.197964, 35.357670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.187737, 34.339481, 35.446323>,  <27.475027, 34.575348, 35.594082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.187737, 34.339481, 35.446323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533987, 0.126737, 0.835940,
		-0.446106, 0.797644, -0.405898,
		-0.718225, -0.589662, -0.369394,
		26.972269, 34.162582, 35.335506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.203697, 34.526356, 35.333885>,  <27.475027, 34.575348, 35.594082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.203697, 34.526356, 35.333885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.589252, 34.434116, 35.387173>,  <28.820585, 34.378773, 35.419144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.589252, 34.434116, 35.387173>,  <28.203697, 34.526356, 35.333885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.589252, 34.434116, 35.387173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142529, 0.024116, -0.989497,
		0.224966, 0.972750, 0.056112,
		0.963886, -0.230600, 0.133220,
		28.878418, 34.364937, 35.427139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.656452, 35.009895, 35.098866>,  <28.203697, 34.526356, 35.333885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.656452, 35.009895, 35.098866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.895004, 34.689915, 35.072296>,  <29.038136, 34.497925, 35.056355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.895004, 34.689915, 35.072296>,  <28.656452, 35.009895, 35.098866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.895004, 34.689915, 35.072296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206165, 0.232624, -0.950464,
		0.775776, 0.553142, 0.303654,
		0.596378, -0.799950, -0.066426,
		29.073917, 34.449928, 35.052368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.298212, 35.186787, 34.667496>,  <28.656452, 35.009895, 35.098866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.298212, 35.186787, 34.667496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.240789, 34.790943, 34.664440>,  <29.206337, 34.553436, 34.662605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.240789, 34.790943, 34.664440>,  <29.298212, 35.186787, 34.667496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.240789, 34.790943, 34.664440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334895, -0.041316, -0.941349,
		0.931256, -0.137693, 0.337348,
		-0.143555, -0.989613, -0.007637,
		29.197723, 34.494061, 34.662148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.941639, 34.916237, 34.489403>,  <29.298212, 35.186787, 34.667496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.941639, 34.916237, 34.489403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.614799, 34.710491, 34.385262>,  <29.418695, 34.587044, 34.322777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.614799, 34.710491, 34.385262>,  <29.941639, 34.916237, 34.489403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.614799, 34.710491, 34.385262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260421, 0.073593, -0.962686,
		0.514327, -0.854411, 0.073818,
		-0.817098, -0.514360, -0.260358,
		29.369671, 34.556183, 34.307156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.147482, 34.247253, 34.233227>,  <29.941639, 34.916237, 34.489403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.147482, 34.247253, 34.233227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.811880, 34.405052, 34.083324>,  <29.610519, 34.499733, 33.993382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.811880, 34.405052, 34.083324>,  <30.147482, 34.247253, 34.233227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.811880, 34.405052, 34.083324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450189, 0.116427, -0.885311,
		-0.305622, -0.911491, -0.275281,
		-0.839003, 0.394499, -0.374761,
		29.560179, 34.523403, 33.970898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.047344, 33.965126, 34.895378>,  <30.147482, 34.247253, 34.233227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.047344, 33.965126, 34.895378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.334923, 33.739441, 34.733002>,  <30.507469, 33.604031, 34.635574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.334923, 33.739441, 34.733002>,  <30.047344, 33.965126, 34.895378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.334923, 33.739441, 34.733002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286199, -0.291925, 0.912617,
		-0.633410, -0.772301, -0.048402,
		0.718945, -0.564208, -0.405940,
		30.550606, 33.570179, 34.611221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.056648, 33.269260, 35.283642>,  <30.047344, 33.965126, 34.895378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.056648, 33.269260, 35.283642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.398397, 33.322468, 35.082703>,  <30.603447, 33.354393, 34.962139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.398397, 33.322468, 35.082703>,  <30.056648, 33.269260, 35.283642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.398397, 33.322468, 35.082703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513846, -0.360455, 0.778483,
		-0.077522, -0.923244, -0.376313,
		0.854373, 0.133017, -0.502348,
		30.654709, 33.362373, 34.931999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.503881, 32.669128, 35.286900>,  <30.056648, 33.269260, 35.283642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.503881, 32.669128, 35.286900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.724106, 33.003044, 35.288090>,  <30.856241, 33.203392, 35.288803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.724106, 33.003044, 35.288090>,  <30.503881, 32.669128, 35.286900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.724106, 33.003044, 35.288090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561186, -0.372749, 0.739005,
		0.618022, -0.405200, -0.673693,
		0.550563, 0.834788, 0.002975,
		30.889275, 33.253479, 35.288982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.174913, 32.442234, 35.249874>,  <30.503881, 32.669128, 35.286900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.174913, 32.442234, 35.249874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.147039, 32.800198, 35.426186>,  <31.130316, 33.014977, 35.531971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.147039, 32.800198, 35.426186>,  <31.174913, 32.442234, 35.249874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.147039, 32.800198, 35.426186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563546, -0.329278, 0.757622,
		0.823140, 0.301195, -0.481375,
		-0.069686, 0.894906, 0.440779,
		31.126133, 33.068668, 35.558418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.803459, 32.600529, 35.389717>,  <31.174913, 32.442234, 35.249874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.803459, 32.600529, 35.389717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.597315, 32.829746, 35.644600>,  <31.473629, 32.967278, 35.797527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.597315, 32.829746, 35.644600>,  <31.803459, 32.600529, 35.389717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.597315, 32.829746, 35.644600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522558, -0.379188, 0.763642,
		0.679218, 0.726526, -0.104029,
		-0.515360, 0.573041, 0.637204,
		31.442707, 33.001659, 35.835762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.321793, 33.075115, 35.815056>,  <31.803459, 32.600529, 35.389717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.321793, 33.075115, 35.815056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.974558, 33.048550, 36.011837>,  <31.766216, 33.032608, 36.129906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.974558, 33.048550, 36.011837>,  <32.321793, 33.075115, 35.815056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.974558, 33.048550, 36.011837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492328, -0.242058, 0.836075,
		0.063550, 0.967986, 0.242827,
		-0.868087, -0.066418, 0.491949,
		31.714132, 33.028625, 36.159420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.379768, 33.335476, 36.440941>,  <32.321793, 33.075115, 35.815056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.379768, 33.335476, 36.440941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.068478, 33.088623, 36.487427>,  <31.881702, 32.940510, 36.515320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.068478, 33.088623, 36.487427>,  <32.379768, 33.335476, 36.440941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.068478, 33.088623, 36.487427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356549, -0.281881, 0.890739,
		-0.516943, 0.734637, 0.439406,
		-0.778231, -0.617131, 0.116218,
		31.835009, 32.903484, 36.522293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.138992, 33.333729, 37.148655>,  <32.379768, 33.335476, 36.440941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.138992, 33.333729, 37.148655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.003429, 32.984928, 37.007374>,  <31.922091, 32.775646, 36.922607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.003429, 32.984928, 37.007374>,  <32.138992, 33.333729, 37.148655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.003429, 32.984928, 37.007374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187782, -0.430561, 0.882811,
		-0.921889, 0.232867, 0.309667,
		-0.338908, -0.872004, -0.353201,
		31.901756, 32.723328, 36.901413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.463680, 33.041340, 37.287605>,  <32.138992, 33.333729, 37.148655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.463680, 33.041340, 37.287605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.764658, 32.781704, 37.242867>,  <31.945244, 32.625923, 37.216022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.764658, 32.781704, 37.242867>,  <31.463680, 33.041340, 37.287605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.764658, 32.781704, 37.242867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020147, -0.147053, 0.988923,
		-0.658349, -0.746362, -0.097572,
		0.752443, -0.649091, -0.111849,
		31.990391, 32.586975, 37.209312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.276369, 32.372749, 37.461216>,  <31.463680, 33.041340, 37.287605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.276369, 32.372749, 37.461216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.668034, 32.425385, 37.523087>,  <31.903032, 32.456966, 37.560207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.668034, 32.425385, 37.523087>,  <31.276369, 32.372749, 37.461216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.668034, 32.425385, 37.523087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161074, 0.039409, 0.986155,
		0.123679, -0.990520, 0.059784,
		0.979162, 0.131597, 0.154673,
		31.961782, 32.464863, 37.569489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.718740, 32.479534, 36.993855>,  <31.276369, 32.372749, 37.461216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.718740, 32.479534, 36.993855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.059723, 32.650352, 36.873222>,  <31.264313, 32.752846, 36.800842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.059723, 32.650352, 36.873222>,  <30.718740, 32.479534, 36.993855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.059723, 32.650352, 36.873222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482546, 0.420734, -0.768201,
		-0.201176, 0.800382, 0.564728,
		0.852454, 0.427050, -0.301579,
		31.315458, 32.778469, 36.782749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.598282, 33.122223, 36.870731>,  <30.718740, 32.479534, 36.993855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.598282, 33.122223, 36.870731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.928625, 33.069229, 36.651493>,  <31.126831, 33.037434, 36.519951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.928625, 33.069229, 36.651493>,  <30.598282, 33.122223, 36.870731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.928625, 33.069229, 36.651493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378453, 0.590331, -0.712940,
		0.418007, 0.796215, 0.437392,
		0.825859, -0.132482, -0.548092,
		31.176382, 33.029484, 36.487064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.702112, 33.795292, 36.654312>,  <30.598282, 33.122223, 36.870731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.702112, 33.795292, 36.654312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.908613, 33.553070, 36.412064>,  <31.032515, 33.407738, 36.266712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.908613, 33.553070, 36.412064>,  <30.702112, 33.795292, 36.654312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.908613, 33.553070, 36.412064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358191, 0.489661, -0.794941,
		0.777933, 0.627321, 0.035884,
		0.516254, -0.605558, -0.605624,
		31.063490, 33.371403, 36.230377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.105053, 34.227398, 36.200336>,  <30.702112, 33.795292, 36.654312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.105053, 34.227398, 36.200336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.100155, 33.880207, 36.001755>,  <31.097216, 33.671894, 35.882607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.100155, 33.880207, 36.001755>,  <31.105053, 34.227398, 36.200336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.100155, 33.880207, 36.001755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189490, 0.489512, -0.851159,
		0.981806, 0.083653, -0.170466,
		-0.012243, -0.867975, -0.496457,
		31.096481, 33.619816, 35.852818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.366623, 34.398697, 35.572269>,  <31.105053, 34.227398, 36.200336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.366623, 34.398697, 35.572269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.215033, 34.034245, 35.507504>,  <31.124079, 33.815575, 35.468643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.215033, 34.034245, 35.507504>,  <31.366623, 34.398697, 35.572269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.215033, 34.034245, 35.507504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298049, 0.285816, -0.910756,
		0.876096, -0.296897, -0.379879,
		-0.378977, -0.911132, -0.161913,
		31.101339, 33.760906, 35.458931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.554752, 34.225277, 34.868515>,  <31.366623, 34.398697, 35.572269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.554752, 34.225277, 34.868515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.247210, 34.007801, 35.003132>,  <31.062683, 33.877316, 35.083904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.247210, 34.007801, 35.003132>,  <31.554752, 34.225277, 34.868515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.247210, 34.007801, 35.003132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419003, 0.030811, -0.907462,
		0.483006, -0.838722, -0.251496,
		-0.768857, -0.543687, 0.336545,
		31.016552, 33.844696, 35.104095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.077047, 34.379826, 34.298130>,  <31.554752, 34.225277, 34.868515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.077047, 34.379826, 34.298130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.017456, 34.169682, 33.963036>,  <30.981701, 34.043594, 33.761978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.017456, 34.169682, 33.963036>,  <31.077047, 34.379826, 34.298130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.017456, 34.169682, 33.963036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324005, 0.774488, -0.543313,
		0.934252, -0.352373, 0.054837,
		-0.148978, -0.525358, -0.837738,
		30.972763, 34.012074, 33.711716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.644234, 34.474392, 33.850677>,  <31.077047, 34.379826, 34.298130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.644234, 34.474392, 33.850677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.313744, 34.389450, 33.641964>,  <31.115450, 34.338486, 33.516735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.313744, 34.389450, 33.641964>,  <31.644234, 34.474392, 33.850677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.313744, 34.389450, 33.641964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203638, 0.751008, -0.628108,
		0.525245, -0.625213, -0.577257,
		-0.826226, -0.212359, -0.521780,
		31.065876, 34.325741, 33.485432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.729145, 34.529415, 33.236259>,  <31.644234, 34.474392, 33.850677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.729145, 34.529415, 33.236259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.347307, 34.626945, 33.304726>,  <31.118204, 34.685463, 33.345806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.347307, 34.626945, 33.304726>,  <31.729145, 34.529415, 33.236259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.347307, 34.626945, 33.304726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136275, 0.868326, -0.476905,
		-0.264907, -0.431926, -0.862128,
		-0.954596, 0.243822, 0.171164,
		31.060928, 34.700092, 33.356075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.442242, 34.825901, 32.624779>,  <31.729145, 34.529415, 33.236259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.442242, 34.825901, 32.624779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.218006, 34.939762, 32.935833>,  <31.083466, 35.008080, 33.122463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.218006, 34.939762, 32.935833>,  <31.442242, 34.825901, 32.624779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.218006, 34.939762, 32.935833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122531, 0.957240, -0.262065,
		-0.818979, -0.051626, -0.571496,
		-0.560588, 0.284652, 0.777633,
		31.049829, 35.025158, 33.169125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.781574, 35.267780, 32.436714>,  <31.442242, 34.825901, 32.624779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.781574, 35.267780, 32.436714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.889645, 35.374969, 32.806622>,  <30.954487, 35.439285, 33.028564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.889645, 35.374969, 32.806622>,  <30.781574, 35.267780, 32.436714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.889645, 35.374969, 32.806622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172946, 0.958372, -0.227186,
		-0.947151, -0.098555, 0.305272,
		0.270174, 0.267975, 0.924768,
		30.970697, 35.455360, 33.084053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.217096, 35.618240, 32.740299>,  <30.781574, 35.267780, 32.436714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.217096, 35.618240, 32.740299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.585392, 35.740917, 32.836781>,  <30.806370, 35.814522, 32.894669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.585392, 35.740917, 32.836781>,  <30.217096, 35.618240, 32.740299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.585392, 35.740917, 32.836781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211543, 0.911828, -0.351879,
		-0.327853, 0.272964, 0.904435,
		0.920740, 0.306691, 0.241202,
		30.861614, 35.832924, 32.909142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.989325, 36.197029, 33.018383>,  <30.217096, 35.618240, 32.740299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.989325, 36.197029, 33.018383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.379040, 36.220600, 32.931400>,  <30.612869, 36.234741, 32.879211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.379040, 36.220600, 32.931400>,  <29.989325, 36.197029, 33.018383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.379040, 36.220600, 32.931400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133446, 0.928599, -0.346260,
		0.181529, 0.366376, 0.912588,
		0.974289, 0.058925, -0.217458,
		30.671326, 36.238277, 32.866161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.272587, 36.923225, 33.317108>,  <29.989325, 36.197029, 33.018383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.272587, 36.923225, 33.317108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.463556, 36.776241, 32.997849>,  <30.578138, 36.688049, 32.806293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.463556, 36.776241, 32.997849>,  <30.272587, 36.923225, 33.317108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.463556, 36.776241, 32.997849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120156, 0.872517, -0.473577,
		0.870420, 0.321998, 0.372406,
		0.477422, -0.367464, -0.798147,
		30.606783, 36.666000, 32.758404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.798752, 37.452419, 33.003025>,  <30.272587, 36.923225, 33.317108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.798752, 37.452419, 33.003025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.668093, 37.221931, 32.703354>,  <30.589697, 37.083637, 32.523552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.668093, 37.221931, 32.703354>,  <30.798752, 37.452419, 33.003025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.668093, 37.221931, 32.703354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379369, 0.805939, -0.454469,
		0.865668, 0.135764, -0.481858,
		-0.326647, -0.576222, -0.749180,
		30.570097, 37.049065, 32.478600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.942390, 37.742634, 32.350494>,  <30.798752, 37.452419, 33.003025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.942390, 37.742634, 32.350494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.617376, 37.510845, 32.325218>,  <30.422367, 37.371773, 32.310051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.617376, 37.510845, 32.325218>,  <30.942390, 37.742634, 32.350494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.617376, 37.510845, 32.325218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475702, 0.721841, -0.502646,
		0.336887, -0.378357, -0.862180,
		-0.812536, -0.579476, -0.063193,
		30.373615, 37.337002, 32.306259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.775192, 37.540257, 31.642998>,  <30.942390, 37.742634, 32.350494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.775192, 37.540257, 31.642998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.478312, 37.595840, 31.905243>,  <30.300182, 37.629192, 32.062588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.478312, 37.595840, 31.905243>,  <30.775192, 37.540257, 31.642998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.478312, 37.595840, 31.905243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432687, 0.647694, -0.627116,
		-0.511780, -0.749121, -0.420593,
		-0.742202, 0.138961, 0.655612,
		30.255651, 37.637527, 32.101925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.232460, 37.133568, 32.028973>,  <30.775192, 37.540257, 31.642998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.232460, 37.133568, 32.028973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.604525, 37.180733, 32.168053>,  <31.827765, 37.209034, 32.251499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.604525, 37.180733, 32.168053>,  <31.232460, 37.133568, 32.028973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.604525, 37.180733, 32.168053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360302, 0.475200, 0.802725,
		-0.070573, -0.871941, 0.484499,
		0.930162, 0.117915, 0.347698,
		31.883574, 37.216106, 32.272362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.425962, 36.670906, 32.545097>,  <31.232460, 37.133568, 32.028973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.425962, 36.670906, 32.545097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.667877, 36.980785, 32.618931>,  <31.813026, 37.166714, 32.663231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.667877, 36.980785, 32.618931>,  <31.425962, 36.670906, 32.545097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.667877, 36.980785, 32.618931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233201, -0.049341, 0.971176,
		0.761478, -0.630401, 0.150820,
		0.604789, 0.774700, 0.184582,
		31.849314, 37.213196, 32.674305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.913549, 36.498390, 33.148262>,  <31.425962, 36.670906, 32.545097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.913549, 36.498390, 33.148262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.898539, 36.896496, 33.112396>,  <31.889532, 37.135361, 33.090878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.898539, 36.896496, 33.112396>,  <31.913549, 36.498390, 33.148262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.898539, 36.896496, 33.112396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130962, 0.084059, 0.987817,
		0.990677, 0.048811, 0.127187,
		-0.037525, 0.995265, -0.089667,
		31.887281, 37.195076, 33.085495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.538555, 36.897312, 33.656197>,  <31.913549, 36.498390, 33.148262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.538555, 36.897312, 33.656197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.189510, 37.074966, 33.574924>,  <31.980083, 37.181561, 33.526161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.189510, 37.074966, 33.574924>,  <32.538555, 36.897312, 33.656197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.189510, 37.074966, 33.574924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187058, 0.080372, 0.979055,
		0.451167, 0.892346, 0.012946,
		-0.872615, 0.444139, -0.203182,
		31.927725, 37.208210, 33.513969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.248001, 37.039879, 34.251698>,  <32.538555, 36.897312, 33.656197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.248001, 37.039879, 34.251698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.923534, 37.188251, 34.070843>,  <31.728855, 37.277275, 33.962330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.923534, 37.188251, 34.070843>,  <32.248001, 37.039879, 34.251698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.923534, 37.188251, 34.070843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451486, 0.094214, 0.887290,
		0.371720, 0.923869, 0.091046,
		-0.811163, 0.370929, -0.452135,
		31.680185, 37.299530, 33.935204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.578131, 36.694107, 34.121727>,  <32.248001, 37.039879, 34.251698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.578131, 36.694107, 34.121727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.859327, 36.416813, 34.058193>,  <32.028046, 36.250435, 34.020073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.859327, 36.416813, 34.058193>,  <31.578131, 36.694107, 34.121727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.859327, 36.416813, 34.058193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677164, 0.720704, -0.148443,
		0.217378, -0.003203, 0.976082,
		0.702991, -0.693236, -0.158834,
		32.070225, 36.208843, 34.010544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.109997, 37.265388, 34.357201>,  <31.578131, 36.694107, 34.121727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.109997, 37.265388, 34.357201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.858414, 37.348804, 34.057621>,  <30.707464, 37.398853, 33.877872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.858414, 37.348804, 34.057621>,  <31.109997, 37.265388, 34.357201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.858414, 37.348804, 34.057621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464831, 0.873067, -0.147263,
		0.623175, -0.440758, -0.646054,
		-0.628956, 0.208535, -0.748951,
		30.669727, 37.411366, 33.832935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.995073, 37.856262, 33.866695>,  <31.109997, 37.265388, 34.357201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.995073, 37.856262, 33.866695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.381266, 37.752350, 33.874275>,  <31.612982, 37.690002, 33.878822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.381266, 37.752350, 33.874275>,  <30.995073, 37.856262, 33.866695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.381266, 37.752350, 33.874275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134769, 0.435961, -0.889817,
		0.222895, 0.861656, 0.455923,
		0.965482, -0.259780, 0.018951,
		31.670910, 37.674416, 33.879959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.447674, 38.381584, 33.434757>,  <30.995073, 37.856262, 33.866695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.447674, 38.381584, 33.434757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.683760, 38.058910, 33.446850>,  <31.825411, 37.865307, 33.454105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.683760, 38.058910, 33.446850>,  <31.447674, 38.381584, 33.434757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.683760, 38.058910, 33.446850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297199, 0.182328, -0.937246,
		0.750547, 0.562159, 0.347357,
		0.590214, -0.806681, 0.030227,
		31.860825, 37.816906, 33.455917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.120445, 38.480915, 33.093376>,  <31.447674, 38.381584, 33.434757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.120445, 38.480915, 33.093376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.068592, 38.084476, 33.105469>,  <32.037479, 37.846611, 33.112724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.068592, 38.084476, 33.105469>,  <32.120445, 38.480915, 33.093376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.068592, 38.084476, 33.105469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410537, -0.081397, -0.908204,
		0.902582, -0.105326, 0.417435,
		-0.129635, -0.991101, 0.030227,
		32.029701, 37.787148, 33.114536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.630932, 38.219685, 32.713959>,  <32.120445, 38.480915, 33.093376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.630932, 38.219685, 32.713959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.384735, 37.904800, 32.698650>,  <32.237015, 37.715870, 32.689465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.384735, 37.904800, 32.698650>,  <32.630932, 38.219685, 32.713959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.384735, 37.904800, 32.698650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461289, -0.320441, -0.827363,
		0.639044, -0.526895, 0.560362,
		-0.615496, -0.787210, -0.038275,
		32.200085, 37.668636, 32.687168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.999180, 37.550980, 32.816761>,  <32.630932, 38.219685, 32.713959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.999180, 37.550980, 32.816761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.663883, 37.470055, 32.614208>,  <32.462708, 37.421501, 32.492676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.663883, 37.470055, 32.614208>,  <32.999180, 37.550980, 32.816761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.663883, 37.470055, 32.614208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539949, -0.437770, -0.718897,
		-0.076239, -0.876029, 0.476193,
		-0.838238, -0.202312, -0.506386,
		32.412411, 37.409363, 32.462292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.929497, 36.837490, 32.748295>,  <32.999180, 37.550980, 32.816761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.929497, 36.837490, 32.748295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.736389, 37.003613, 32.439892>,  <32.620525, 37.103287, 32.254848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.736389, 37.003613, 32.439892>,  <32.929497, 36.837490, 32.748295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.736389, 37.003613, 32.439892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450325, -0.637361, -0.625282,
		-0.751095, -0.649072, 0.120676,
		-0.482768, 0.415303, -0.771012,
		32.591560, 37.128204, 32.208588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.595505, 36.349796, 32.387756>,  <32.929497, 36.837490, 32.748295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.595505, 36.349796, 32.387756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.600468, 36.641796, 32.114426>,  <32.603447, 36.816998, 31.950426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.600468, 36.641796, 32.114426>,  <32.595505, 36.349796, 32.387756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.600468, 36.641796, 32.114426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298498, -0.654927, -0.694240,
		-0.954330, -0.195359, -0.226031,
		0.012408, 0.730004, -0.683330,
		32.604191, 36.860798, 31.909426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.248722, 36.025803, 31.869942>,  <32.595505, 36.349796, 32.387756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.248722, 36.025803, 31.869942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.470432, 36.321384, 31.716719>,  <32.603458, 36.498734, 31.624784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.470432, 36.321384, 31.716719>,  <32.248722, 36.025803, 31.869942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.470432, 36.321384, 31.716719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446014, -0.652255, -0.612891,
		-0.702748, 0.168859, -0.691109,
		0.554271, 0.738952, -0.383057,
		32.636715, 36.543072, 31.601801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.068230, 36.215034, 31.150820>,  <32.248722, 36.025803, 31.869942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.068230, 36.215034, 31.150820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.447922, 36.323750, 31.214176>,  <32.675739, 36.388977, 31.252190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.447922, 36.323750, 31.214176>,  <32.068230, 36.215034, 31.150820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.447922, 36.323750, 31.214176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276722, -0.481977, -0.831338,
		-0.149607, 0.832964, -0.532718,
		0.949233, 0.271788, 0.158392,
		32.732693, 36.405285, 31.261694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.372978, 35.933708, 30.632957>,  <32.068230, 36.215034, 31.150820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.372978, 35.933708, 30.632957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.710320, 36.074284, 30.795561>,  <32.912724, 36.158630, 30.893122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.710320, 36.074284, 30.795561>,  <32.372978, 35.933708, 30.632957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.710320, 36.074284, 30.795561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523313, -0.365282, -0.769878,
		-0.122078, 0.862008, -0.491976,
		0.843351, 0.351442, 0.406507,
		32.963326, 36.179718, 30.917513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.676701, 36.230076, 30.039822>,  <32.372978, 35.933708, 30.632957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.676701, 36.230076, 30.039822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.951656, 36.182175, 30.326363>,  <33.116631, 36.153435, 30.498287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.951656, 36.182175, 30.326363>,  <32.676701, 36.230076, 30.039822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.951656, 36.182175, 30.326363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648278, -0.343543, -0.679495,
		0.327471, 0.931470, -0.158512,
		0.687385, -0.119755, 0.716352,
		33.157871, 36.146248, 30.541267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.202087, 36.523449, 29.736675>,  <32.676701, 36.230076, 30.039822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.202087, 36.523449, 29.736675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.355320, 36.285530, 30.019365>,  <33.447258, 36.142776, 30.188980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.355320, 36.285530, 30.019365>,  <33.202087, 36.523449, 29.736675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.355320, 36.285530, 30.019365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638220, -0.382671, -0.668010,
		0.667778, 0.706947, 0.233022,
		0.383077, -0.594802, 0.706727,
		33.470242, 36.107090, 30.231384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.870823, 36.278782, 29.479282>,  <33.202087, 36.523449, 29.736675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.870823, 36.278782, 29.479282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.827644, 36.028660, 29.788433>,  <33.801739, 35.878586, 29.973923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.827644, 36.028660, 29.788433>,  <33.870823, 36.278782, 29.479282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.827644, 36.028660, 29.788433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506704, -0.703468, -0.498381,
		0.855335, 0.337822, 0.392782,
		-0.107946, -0.625307, 0.772877,
		33.795261, 35.841068, 30.020296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.584606, 36.011467, 29.720348>,  <33.870823, 36.278782, 29.479282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.584606, 36.011467, 29.720348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.307606, 35.752399, 29.847454>,  <34.141407, 35.596958, 29.923717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.307606, 35.752399, 29.847454>,  <34.584606, 36.011467, 29.720348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.307606, 35.752399, 29.847454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521989, -0.753878, -0.398992,
		0.497970, -0.110431, 0.860134,
		-0.692497, -0.647667, 0.317765,
		34.099857, 35.558098, 29.942783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.936340, 35.461330, 29.956528>,  <34.584606, 36.011467, 29.720348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.936340, 35.461330, 29.956528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.586395, 35.271095, 29.919825>,  <34.376427, 35.156952, 29.897802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.586395, 35.271095, 29.919825>,  <34.936340, 35.461330, 29.956528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.586395, 35.271095, 29.919825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476958, -0.812894, -0.334237,
		0.084370, -0.336179, 0.938011,
		-0.874867, -0.475592, -0.091760,
		34.323936, 35.128418, 29.892296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.233421, 34.822201, 30.154514>,  <34.936340, 35.461330, 29.956528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.233421, 34.822201, 30.154514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.877426, 34.810631, 29.972488>,  <34.663830, 34.803688, 29.863274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.877426, 34.810631, 29.972488>,  <35.233421, 34.822201, 30.154514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.877426, 34.810631, 29.972488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334479, -0.719692, -0.608413,
		-0.309908, -0.693690, 0.650193,
		-0.889989, -0.028924, -0.455063,
		34.610428, 34.801952, 29.835970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.989716, 34.148445, 30.111109>,  <35.233421, 34.822201, 30.154514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.989716, 34.148445, 30.111109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.806194, 34.329430, 29.805225>,  <34.696079, 34.438019, 29.621696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.806194, 34.329430, 29.805225>,  <34.989716, 34.148445, 30.111109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.806194, 34.329430, 29.805225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195838, -0.787978, -0.583728,
		-0.866686, -0.417577, 0.272920,
		-0.458806, 0.452460, -0.764707,
		34.668552, 34.465168, 29.575813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.694431, 33.642757, 29.720179>,  <34.989716, 34.148445, 30.111109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.694431, 33.642757, 29.720179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.705879, 33.956360, 29.472139>,  <34.712749, 34.144520, 29.323317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.705879, 33.956360, 29.472139>,  <34.694431, 33.642757, 29.720179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.705879, 33.956360, 29.472139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431646, -0.569225, -0.699761,
		-0.901589, -0.247636, -0.354702,
		0.028619, 0.784002, -0.620098,
		34.714466, 34.191559, 29.286110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.492310, 33.333839, 29.061504>,  <34.694431, 33.642757, 29.720179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.492310, 33.333839, 29.061504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.659924, 33.685291, 28.969915>,  <34.760490, 33.896160, 28.914963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.659924, 33.685291, 28.969915>,  <34.492310, 33.333839, 29.061504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.659924, 33.685291, 28.969915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327477, -0.381453, -0.864437,
		-0.846858, 0.287246, -0.447572,
		0.419034, 0.878626, -0.228970,
		34.785633, 33.948879, 28.901224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.242073, 33.574318, 28.448174>,  <34.492310, 33.333839, 29.061504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.242073, 33.574318, 28.448174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.605694, 33.736095, 28.488276>,  <34.823868, 33.833160, 28.512337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.605694, 33.736095, 28.488276>,  <34.242073, 33.574318, 28.448174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.605694, 33.736095, 28.488276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273453, -0.397505, -0.875907,
		-0.314404, 0.823660, -0.471948,
		0.909051, 0.404444, 0.100255,
		34.878410, 33.857430, 28.518353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.450676, 33.822140, 27.808895>,  <34.242073, 33.574318, 28.448174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.450676, 33.822140, 27.808895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.806080, 33.799408, 27.991022>,  <35.019321, 33.785767, 28.100298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.806080, 33.799408, 27.991022>,  <34.450676, 33.822140, 27.808895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.806080, 33.799408, 27.991022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388624, -0.434370, -0.812585,
		0.243958, 0.898940, -0.363857,
		0.888513, -0.056833, 0.455318,
		35.072636, 33.782356, 28.127617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.895542, 34.046932, 27.331360>,  <34.450676, 33.822140, 27.808895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.895542, 34.046932, 27.331360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.110111, 33.837410, 27.596050>,  <35.238853, 33.711697, 27.754864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.110111, 33.837410, 27.596050>,  <34.895542, 34.046932, 27.331360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.110111, 33.837410, 27.596050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457662, -0.478234, -0.749558,
		0.709079, 0.704928, -0.016813,
		0.536425, -0.523802, 0.661725,
		35.271038, 33.680271, 27.794567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.570145, 34.172497, 27.119373>,  <34.895542, 34.046932, 27.331360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.570145, 34.172497, 27.119373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.580517, 33.829567, 27.325026>,  <35.586739, 33.623810, 27.448416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.580517, 33.829567, 27.325026>,  <35.570145, 34.172497, 27.119373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.580517, 33.829567, 27.325026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471926, -0.442887, -0.762324,
		0.881257, 0.262398, 0.393107,
		0.025930, -0.857320, 0.514129,
		35.588295, 33.572372, 27.479265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.275639, 33.912220, 27.024719>,  <35.570145, 34.172497, 27.119373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.275639, 33.912220, 27.024719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.084827, 33.583672, 27.149805>,  <35.970341, 33.386543, 27.224857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.084827, 33.583672, 27.149805>,  <36.275639, 33.912220, 27.024719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.084827, 33.583672, 27.149805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374066, -0.511716, -0.773448,
		0.795308, -0.251983, 0.551352,
		-0.477032, -0.821371, 0.312714,
		35.941719, 33.337261, 27.243620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.697037, 33.471279, 26.939430>,  <36.275639, 33.912220, 27.024719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.697037, 33.471279, 26.939430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.362652, 33.252007, 26.949715>,  <36.162022, 33.120441, 26.955885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.362652, 33.252007, 26.949715>,  <36.697037, 33.471279, 26.939430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.362652, 33.252007, 26.949715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267090, -0.447338, -0.853552,
		0.479407, -0.706670, 0.520372,
		-0.835962, -0.548185, 0.025712,
		36.111862, 33.087551, 26.957428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.872673, 32.774223, 26.709814>,  <36.697037, 33.471279, 26.939430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.872673, 32.774223, 26.709814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.476326, 32.798695, 26.661743>,  <36.238518, 32.813377, 26.632900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.476326, 32.798695, 26.661743>,  <36.872673, 32.774223, 26.709814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.476326, 32.798695, 26.661743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084688, -0.411232, -0.907588,
		-0.104947, -0.909475, 0.402294,
		-0.990865, 0.061179, -0.120179,
		36.179066, 32.817047, 26.625689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.710583, 32.196095, 26.460333>,  <36.872673, 32.774223, 26.709814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.710583, 32.196095, 26.460333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.395241, 32.415195, 26.348295>,  <36.206036, 32.546658, 26.281073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.395241, 32.415195, 26.348295>,  <36.710583, 32.196095, 26.460333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.395241, 32.415195, 26.348295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002337, -0.457945, -0.888977,
		-0.615211, -0.700179, 0.362305,
		-0.788359, 0.547755, -0.280097,
		36.158733, 32.579521, 26.264267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.202312, 31.752645, 26.212614>,  <36.710583, 32.196095, 26.460333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.202312, 31.752645, 26.212614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.101906, 32.109829, 26.063154>,  <36.041660, 32.324139, 25.973478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.101906, 32.109829, 26.063154>,  <36.202312, 31.752645, 26.212614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.101906, 32.109829, 26.063154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022547, -0.380512, -0.924501,
		-0.967719, -0.240493, 0.075382,
		-0.251020, 0.892958, -0.373651,
		36.026600, 32.377716, 25.951059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.703117, 31.546896, 25.771902>,  <36.202312, 31.752645, 26.212614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.703117, 31.546896, 25.771902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.836773, 31.906528, 25.658758>,  <35.916965, 32.122307, 25.590872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.836773, 31.906528, 25.658758>,  <35.703117, 31.546896, 25.771902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.836773, 31.906528, 25.658758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083334, -0.327116, -0.941303,
		-0.938834, 0.290950, -0.184225,
		0.334135, 0.899079, -0.282861,
		35.937012, 32.176250, 25.573900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.255577, 31.747154, 25.086943>,  <35.703117, 31.546896, 25.771902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.255577, 31.747154, 25.086943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.606071, 31.939884, 25.083822>,  <35.816368, 32.055523, 25.081951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.606071, 31.939884, 25.083822>,  <35.255577, 31.747154, 25.086943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.606071, 31.939884, 25.083822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009016, 0.000208, -0.999959,
		-0.481803, 0.876268, 0.004526,
		0.876233, 0.481824, -0.007800,
		35.868942, 32.084431, 25.081482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.183247, 32.376774, 24.643806>,  <35.255577, 31.747154, 25.086943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.183247, 32.376774, 24.643806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.570942, 32.288021, 24.686405>,  <35.803558, 32.234768, 24.711964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.570942, 32.288021, 24.686405>,  <35.183247, 32.376774, 24.643806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.570942, 32.288021, 24.686405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106759, -0.010850, -0.994226,
		0.221755, 0.975014, 0.013171,
		0.969241, -0.221880, 0.106497,
		35.861713, 32.221458, 24.718355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.425110, 32.848724, 24.195118>,  <35.183247, 32.376774, 24.643806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.425110, 32.848724, 24.195118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.730957, 32.596222, 24.247082>,  <35.914463, 32.444721, 24.278259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.730957, 32.596222, 24.247082>,  <35.425110, 32.848724, 24.195118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.730957, 32.596222, 24.247082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196590, 0.036482, -0.979807,
		0.613774, 0.774713, 0.151994,
		0.764614, -0.631260, 0.129909,
		35.960342, 32.406845, 24.286055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.060268, 33.113274, 23.753147>,  <35.425110, 32.848724, 24.195118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.060268, 33.113274, 23.753147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.145042, 32.727898, 23.818714>,  <36.195908, 32.496674, 23.858053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.145042, 32.727898, 23.818714>,  <36.060268, 33.113274, 23.753147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.145042, 32.727898, 23.818714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259710, -0.106173, -0.959832,
		0.942144, 0.245989, 0.227714,
		0.211931, -0.963440, 0.163916,
		36.208622, 32.438866, 23.867889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.681633, 33.019840, 23.442713>,  <36.060268, 33.113274, 23.753147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.681633, 33.019840, 23.442713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.533192, 32.648445, 23.448221>,  <36.444126, 32.425606, 23.451527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.533192, 32.648445, 23.448221>,  <36.681633, 33.019840, 23.442713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.533192, 32.648445, 23.448221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350427, -0.153763, -0.923882,
		0.859932, -0.338030, 0.382430,
		-0.371103, -0.928490, 0.013771,
		36.421860, 32.369900, 23.452353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.159817, 32.520306, 23.244741>,  <36.681633, 33.019840, 23.442713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.159817, 32.520306, 23.244741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.817524, 32.320869, 23.189404>,  <36.612148, 32.201206, 23.156200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.817524, 32.320869, 23.189404>,  <37.159817, 32.520306, 23.244741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.817524, 32.320869, 23.189404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326788, -0.313473, -0.891596,
		0.401174, -0.808173, 0.431181,
		-0.855728, -0.498589, -0.138344,
		36.560806, 32.171291, 23.147900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.363098, 31.814613, 23.124071>,  <37.159817, 32.520306, 23.244741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.363098, 31.814613, 23.124071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.987991, 31.837589, 22.987078>,  <36.762928, 31.851374, 22.904882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.987991, 31.837589, 22.987078>,  <37.363098, 31.814613, 23.124071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.987991, 31.837589, 22.987078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329157, -0.167299, -0.929337,
		-0.110674, -0.984232, 0.137982,
		-0.937767, 0.057436, -0.342482,
		36.706661, 31.854820, 22.884333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.159843, 31.198116, 22.687412>,  <37.363098, 31.814613, 23.124071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.159843, 31.198116, 22.687412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.931957, 31.499397, 22.555895>,  <36.795223, 31.680166, 22.476984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.931957, 31.499397, 22.555895>,  <37.159843, 31.198116, 22.687412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.931957, 31.499397, 22.555895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251392, -0.221176, -0.942275,
		-0.782447, -0.619488, -0.063341,
		-0.569718, 0.753204, -0.328793,
		36.761044, 31.725359, 22.457256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.116734, 31.125767, 21.910563>,  <37.159843, 31.198116, 22.687412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.116734, 31.125767, 21.910563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.918678, 31.472923, 21.926580>,  <36.799847, 31.681217, 21.936192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.918678, 31.472923, 21.926580>,  <37.116734, 31.125767, 21.910563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.918678, 31.472923, 21.926580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444084, 0.292428, -0.846921,
		-0.746746, -0.401558, -0.530209,
		-0.495136, 0.867892, 0.040044,
		36.770138, 31.733292, 21.938593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.633892, 31.199186, 21.381483>,  <37.116734, 31.125767, 21.910563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.633892, 31.199186, 21.381483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.746311, 31.567358, 21.490162>,  <36.813763, 31.788261, 21.555370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.746311, 31.567358, 21.490162>,  <36.633892, 31.199186, 21.381483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.746311, 31.567358, 21.490162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199090, 0.221033, -0.954729,
		-0.938816, 0.322417, -0.121127,
		0.281048, 0.920430, 0.271699,
		36.830627, 31.843487, 21.571672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.390030, 31.570601, 20.745600>,  <36.633892, 31.199186, 21.381483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.390030, 31.570601, 20.745600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.660419, 31.763248, 20.968706>,  <36.822655, 31.878838, 21.102570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.660419, 31.763248, 20.968706>,  <36.390030, 31.570601, 20.745600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.660419, 31.763248, 20.968706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474360, 0.294850, -0.829485,
		-0.563953, 0.825292, -0.029149,
		0.675973, 0.481618, 0.557767,
		36.863213, 31.907734, 21.136036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.406502, 32.361172, 20.618937>,  <36.390030, 31.570601, 20.745600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.406502, 32.361172, 20.618937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.765011, 32.296741, 20.784224>,  <36.980118, 32.258083, 20.883396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.765011, 32.296741, 20.784224>,  <36.406502, 32.361172, 20.618937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.765011, 32.296741, 20.784224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442007, 0.400898, -0.802440,
		-0.036405, 0.901851, 0.430511,
		0.896273, -0.161076, 0.413219,
		37.033894, 32.248417, 20.908190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.739681, 32.960644, 20.343880>,  <36.406502, 32.361172, 20.618937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.739681, 32.960644, 20.343880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.014828, 32.712395, 20.494434>,  <37.179916, 32.563446, 20.584768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.014828, 32.712395, 20.494434>,  <36.739681, 32.960644, 20.343880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.014828, 32.712395, 20.494434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692553, 0.405954, -0.596298,
		0.217280, 0.670842, 0.709056,
		0.687866, -0.620623, 0.376388,
		37.221188, 32.526207, 20.607351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.268723, 33.369209, 20.436304>,  <36.739681, 32.960644, 20.343880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.268723, 33.369209, 20.436304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.442139, 33.008881, 20.426762>,  <37.546188, 32.792683, 20.421036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.442139, 33.008881, 20.426762>,  <37.268723, 33.369209, 20.436304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.442139, 33.008881, 20.426762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685989, 0.347081, -0.639495,
		0.584351, 0.260878, 0.768425,
		0.433536, -0.900820, -0.023858,
		37.572201, 32.738636, 20.419605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.948048, 33.540565, 20.376604>,  <37.268723, 33.369209, 20.436304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.948048, 33.540565, 20.376604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.929138, 33.170609, 20.225697>,  <37.917793, 32.948635, 20.135151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.929138, 33.170609, 20.225697>,  <37.948048, 33.540565, 20.376604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.929138, 33.170609, 20.225697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755875, 0.213789, -0.618827,
		0.653007, -0.314424, 0.688999,
		-0.047273, -0.924896, -0.377271,
		37.914955, 32.893139, 20.112514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.644638, 33.386013, 20.092848>,  <37.948048, 33.540565, 20.376604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.644638, 33.386013, 20.092848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.422672, 33.090504, 19.939854>,  <38.289494, 32.913200, 19.848057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.422672, 33.090504, 19.939854>,  <38.644638, 33.386013, 20.092848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.422672, 33.090504, 19.939854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492629, 0.078678, -0.866675,
		0.670366, -0.669351, 0.320280,
		-0.554911, -0.738769, -0.382485,
		38.256199, 32.868874, 19.825108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.123787, 32.966595, 19.800652>,  <38.644638, 33.386013, 20.092848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.123787, 32.966595, 19.800652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.770500, 32.926239, 19.617456>,  <38.558529, 32.902027, 19.507540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.770500, 32.926239, 19.617456>,  <39.123787, 32.966595, 19.800652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.770500, 32.926239, 19.617456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427187, 0.229869, -0.874455,
		0.193494, -0.967978, -0.159929,
		-0.883216, -0.100882, -0.457986,
		38.505535, 32.895973, 19.480061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.313301, 32.751030, 19.179991>,  <39.123787, 32.966595, 19.800652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.313301, 32.751030, 19.179991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.940155, 32.874615, 19.105906>,  <38.716267, 32.948765, 19.061455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.940155, 32.874615, 19.105906>,  <39.313301, 32.751030, 19.179991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.940155, 32.874615, 19.105906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268962, 0.255380, -0.928677,
		-0.239626, -0.916146, -0.321334,
		-0.932866, 0.308962, -0.185213,
		38.660294, 32.967304, 19.050343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.169785, 32.538544, 18.421827>,  <39.313301, 32.751030, 19.179991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.169785, 32.538544, 18.421827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.911316, 32.823467, 18.531429>,  <38.756233, 32.994423, 18.597191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.911316, 32.823467, 18.531429>,  <39.169785, 32.538544, 18.421827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.911316, 32.823467, 18.531429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344469, 0.592579, -0.728142,
		-0.681031, -0.376119, -0.628276,
		-0.646172, 0.712309, 0.274003,
		38.717464, 33.037159, 18.613630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.704029, 32.677116, 17.881191>,  <39.169785, 32.538544, 18.421827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.704029, 32.677116, 17.881191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.734772, 32.998562, 18.117256>,  <38.753216, 33.191429, 18.258896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.734772, 32.998562, 18.117256>,  <38.704029, 32.677116, 17.881191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.734772, 32.998562, 18.117256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415345, 0.512302, -0.751688,
		-0.906411, 0.302893, -0.294405,
		0.076857, 0.803618, 0.590162,
		38.757828, 33.239647, 18.294304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.422646, 33.326721, 17.532948>,  <38.704029, 32.677116, 17.881191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.422646, 33.326721, 17.532948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.685822, 33.444725, 17.810101>,  <38.843727, 33.515530, 17.976393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.685822, 33.444725, 17.810101>,  <38.422646, 33.326721, 17.532948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.685822, 33.444725, 17.810101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411386, 0.629860, -0.658816,
		-0.630778, 0.718502, 0.293044,
		0.657937, 0.295012, 0.692883,
		38.883202, 33.533230, 18.017965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.414700, 34.099064, 17.488747>,  <38.422646, 33.326721, 17.532948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.414700, 34.099064, 17.488747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.754704, 33.972939, 17.657537>,  <38.958706, 33.897263, 17.758812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.754704, 33.972939, 17.657537>,  <38.414700, 34.099064, 17.488747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.754704, 33.972939, 17.657537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522503, 0.606413, -0.599378,
		-0.066900, 0.729960, 0.680208,
		0.850009, -0.315312, 0.421975,
		39.009705, 33.878345, 17.784130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.998032, 33.798737, 17.122486>,  <38.414700, 34.099064, 17.488747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.998032, 33.798737, 17.122486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.073120, 33.537727, 16.828827>,  <39.118172, 33.381123, 16.652632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.073120, 33.537727, 16.828827>,  <38.998032, 33.798737, 17.122486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.073120, 33.537727, 16.828827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871896, -0.454870, 0.181356,
		-0.452279, 0.606049, -0.654330,
		0.187724, -0.652532, -0.734140,
		39.129436, 33.341969, 16.608583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.381691, 33.846107, 16.588547>,  <38.998032, 33.798737, 17.122486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.381691, 33.846107, 16.588547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.577209, 33.497646, 16.607149>,  <38.694519, 33.288570, 16.618311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.577209, 33.497646, 16.607149>,  <38.381691, 33.846107, 16.588547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.577209, 33.497646, 16.607149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848957, -0.487262, -0.204568,
		0.200872, 0.060511, -0.977747,
		0.488797, -0.871157, 0.046506,
		38.723850, 33.236298, 16.621101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.215427, 33.448956, 15.986549>,  <38.381691, 33.846107, 16.588547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.215427, 33.448956, 15.986549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.316219, 33.201965, 16.284605>,  <38.376694, 33.053772, 16.463438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.316219, 33.201965, 16.284605>,  <38.215427, 33.448956, 15.986549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.316219, 33.201965, 16.284605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769302, -0.594939, -0.232855,
		0.587095, -0.514563, -0.624936,
		0.251980, -0.617472, 0.745140,
		38.391815, 33.016724, 16.508146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.444263, 34.032242, 15.617043>,  <38.215427, 33.448956, 15.986549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.444263, 34.032242, 15.617043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.681293, 34.330387, 15.494874>,  <38.823513, 34.509274, 15.421573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.681293, 34.330387, 15.494874>,  <38.444263, 34.032242, 15.617043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.681293, 34.330387, 15.494874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587507, 0.659325, 0.469176,
		0.551082, -0.098584, 0.828607,
		0.592575, 0.745367, -0.305423,
		38.859066, 34.553997, 15.403247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.825878, 34.580730, 16.091080>,  <38.444263, 34.032242, 15.617043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.825878, 34.580730, 16.091080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.733734, 34.752678, 15.741877>,  <38.678448, 34.855846, 15.532354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.733734, 34.752678, 15.741877>,  <38.825878, 34.580730, 16.091080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.733734, 34.752678, 15.741877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226364, 0.848854, 0.477709,
		0.946410, 0.307665, -0.098238,
		-0.230364, 0.429871, -0.873008,
		38.664623, 34.881638, 15.479974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.131729, 35.177261, 15.897621>,  <38.825878, 34.580730, 16.091080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.131729, 35.177261, 15.897621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.787567, 35.220699, 15.698461>,  <38.581070, 35.246761, 15.578964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.787567, 35.220699, 15.698461>,  <39.131729, 35.177261, 15.897621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.787567, 35.220699, 15.698461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134093, 0.894354, 0.426791,
		0.491648, 0.433979, -0.754947,
		-0.860408, 0.108598, -0.497901,
		38.529446, 35.253281, 15.549090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.724163, 35.260498, 16.294960>,  <39.131729, 35.177261, 15.897621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.724163, 35.260498, 16.294960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.687187, 35.609680, 16.103378>,  <39.665001, 35.819191, 15.988429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.687187, 35.609680, 16.103378>,  <39.724163, 35.260498, 16.294960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.687187, 35.609680, 16.103378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995570, 0.072726, -0.059602,
		-0.017197, -0.482343, -0.875814,
		-0.092443, 0.872958, -0.478955,
		39.659454, 35.871567, 15.959692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.522961, 35.217773, 17.116508>,  <39.724163, 35.260498, 16.294960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.522961, 35.217773, 17.116508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.223133, 34.956898, 17.161768>,  <39.043236, 34.800373, 17.188923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.223133, 34.956898, 17.161768>,  <39.522961, 35.217773, 17.116508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.223133, 34.956898, 17.161768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455422, 0.632173, 0.626856,
		-0.480356, 0.418340, -0.770876,
		-0.749566, -0.652188, 0.113147,
		38.998264, 34.761242, 17.195713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.646004, 35.420296, 17.071384>,  <39.522961, 35.217773, 17.116508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.646004, 35.420296, 17.071384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.766525, 35.153072, 17.343534>,  <38.838840, 34.992737, 17.506824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.766525, 35.153072, 17.343534>,  <38.646004, 35.420296, 17.071384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.766525, 35.153072, 17.343534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528040, 0.477232, 0.702441,
		-0.793969, -0.570916, -0.208969,
		0.301308, -0.668061, 0.680374,
		38.856918, 34.952656, 17.547647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.108376, 35.406937, 17.519848>,  <38.646004, 35.420296, 17.071384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.108376, 35.406937, 17.519848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.406658, 35.251614, 17.736416>,  <38.585629, 35.158421, 17.866356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.406658, 35.251614, 17.736416>,  <38.108376, 35.406937, 17.519848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.406658, 35.251614, 17.736416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422052, 0.353482, 0.834819,
		-0.515550, -0.851038, 0.099708,
		0.745708, -0.388309, 0.541420,
		38.630371, 35.135120, 17.898842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.692020, 35.007015, 18.001844>,  <38.108376, 35.406937, 17.519848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.692020, 35.007015, 18.001844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.048531, 35.100941, 18.157019>,  <38.262436, 35.157295, 18.250124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.048531, 35.100941, 18.157019>,  <37.692020, 35.007015, 18.001844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.048531, 35.100941, 18.157019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450261, 0.356730, 0.818540,
		0.053812, -0.904217, 0.423670,
		0.891274, 0.234810, 0.387937,
		38.315914, 35.171383, 18.273399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.535393, 34.986214, 18.680279>,  <37.692020, 35.007015, 18.001844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.535393, 34.986214, 18.680279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.897369, 35.151657, 18.720303>,  <38.114555, 35.250923, 18.744316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.897369, 35.151657, 18.720303>,  <37.535393, 34.986214, 18.680279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.897369, 35.151657, 18.720303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282600, 0.408332, 0.867987,
		0.318144, -0.813756, 0.486401,
		0.904943, 0.413602, 0.100059,
		38.168854, 35.275738, 18.750320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.786274, 34.794842, 19.381107>,  <37.535393, 34.986214, 18.680279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.786274, 34.794842, 19.381107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.964531, 35.125198, 19.242949>,  <38.071484, 35.323414, 19.160053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.964531, 35.125198, 19.242949>,  <37.786274, 34.794842, 19.381107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.964531, 35.125198, 19.242949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235650, 0.480445, 0.844773,
		0.863638, -0.295075, 0.408729,
		0.445643, 0.825896, -0.345396,
		38.098225, 35.372967, 19.139330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.967621, 35.064957, 19.940992>,  <37.786274, 34.794842, 19.381107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.967621, 35.064957, 19.940992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.033413, 35.366009, 19.685966>,  <38.072887, 35.546642, 19.532951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.033413, 35.366009, 19.685966>,  <37.967621, 35.064957, 19.940992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.033413, 35.366009, 19.685966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347135, 0.649187, 0.676797,
		0.923279, 0.110002, 0.368043,
		0.164480, 0.752633, -0.637566,
		38.082756, 35.591797, 19.494698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.420185, 35.638573, 20.277916>,  <37.967621, 35.064957, 19.940992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.420185, 35.638573, 20.277916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.194008, 35.807449, 19.994501>,  <38.058300, 35.908775, 19.824451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.194008, 35.807449, 19.994501>,  <38.420185, 35.638573, 20.277916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.194008, 35.807449, 19.994501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496986, 0.511184, 0.701210,
		0.658238, 0.748630, -0.079224,
		-0.565445, 0.422190, -0.708539,
		38.024376, 35.934105, 19.781939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.616486, 36.297585, 20.313349>,  <38.420185, 35.638573, 20.277916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.616486, 36.297585, 20.313349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.263607, 36.279537, 20.125862>,  <38.051880, 36.268707, 20.013371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.263607, 36.279537, 20.125862>,  <38.616486, 36.297585, 20.313349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.263607, 36.279537, 20.125862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379433, 0.657591, 0.650849,
		0.278855, 0.752022, -0.597246,
		-0.882197, -0.045122, -0.468715,
		37.998947, 36.265999, 19.985249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.361813, 36.979134, 20.072416>,  <38.616486, 36.297585, 20.313349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.361813, 36.979134, 20.072416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.074615, 36.711784, 20.150146>,  <37.902298, 36.551373, 20.196785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.074615, 36.711784, 20.150146>,  <38.361813, 36.979134, 20.072416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.074615, 36.711784, 20.150146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425451, 0.642371, 0.637456,
		-0.550891, 0.375011, -0.745578,
		-0.717991, -0.668375, 0.194328,
		37.859219, 36.511272, 20.208445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.962631, 37.292423, 20.441465>,  <38.361813, 36.979134, 20.072416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.962631, 37.292423, 20.441465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.774464, 36.944252, 20.499510>,  <37.661564, 36.735348, 20.534336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.774464, 36.944252, 20.499510>,  <37.962631, 37.292423, 20.441465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.774464, 36.944252, 20.499510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435198, 0.371894, 0.819938,
		-0.767666, 0.322559, -0.553755,
		-0.470416, -0.870431, 0.145113,
		37.633339, 36.683121, 20.543043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.389202, 37.479473, 20.785742>,  <37.962631, 37.292423, 20.441465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.389202, 37.479473, 20.785742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.383141, 37.080582, 20.814857>,  <37.379501, 36.841248, 20.832327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.383141, 37.080582, 20.814857>,  <37.389202, 37.479473, 20.785742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.383141, 37.080582, 20.814857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453359, 0.071738, 0.888436,
		-0.891199, -0.019532, -0.453192,
		-0.015158, -0.997232, 0.072788,
		37.378593, 36.781410, 20.836693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.670647, 37.310978, 20.985416>,  <37.389202, 37.479473, 20.785742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.670647, 37.310978, 20.985416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.894245, 36.998283, 21.095987>,  <37.028404, 36.810665, 21.162331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.894245, 36.998283, 21.095987>,  <36.670647, 37.310978, 20.985416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.894245, 36.998283, 21.095987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362132, 0.069736, 0.929515,
		-0.745913, -0.619697, -0.244110,
		0.558994, -0.781737, 0.276429,
		37.061943, 36.763763, 21.178917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.238487, 36.860428, 21.189259>,  <36.670647, 37.310978, 20.985416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.238487, 36.860428, 21.189259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.585789, 36.769775, 21.365791>,  <36.794170, 36.715385, 21.471712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.585789, 36.769775, 21.365791>,  <36.238487, 36.860428, 21.189259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.585789, 36.769775, 21.365791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466690, -0.071257, 0.881546,
		-0.168339, -0.971370, -0.167636,
		0.868253, -0.226632, 0.441334,
		36.846264, 36.701786, 21.498192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.121574, 36.182808, 21.424812>,  <36.238487, 36.860428, 21.189259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.121574, 36.182808, 21.424812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.418854, 36.347729, 21.635588>,  <36.597221, 36.446682, 21.762053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.418854, 36.347729, 21.635588>,  <36.121574, 36.182808, 21.424812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.418854, 36.347729, 21.635588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582961, 0.012533, 0.812403,
		0.328353, -0.910960, 0.249671,
		0.743196, 0.412304, 0.526939,
		36.641811, 36.471420, 21.793669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.182625, 35.903408, 22.008173>,  <36.121574, 36.182808, 21.424812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.182625, 35.903408, 22.008173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.355110, 36.250031, 22.108681>,  <36.458599, 36.458004, 22.168985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.355110, 36.250031, 22.108681>,  <36.182625, 35.903408, 22.008173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.355110, 36.250031, 22.108681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556443, 0.036195, 0.830097,
		0.710231, -0.497765, 0.497797,
		0.431211, 0.866556, 0.251271,
		36.484474, 36.509998, 22.184063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.461769, 35.662708, 22.616774>,  <36.182625, 35.903408, 22.008173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.461769, 35.662708, 22.616774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.425690, 36.060993, 22.608599>,  <36.404041, 36.299965, 22.603693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.425690, 36.060993, 22.608599>,  <36.461769, 35.662708, 22.616774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.425690, 36.060993, 22.608599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512035, -0.028763, 0.858483,
		0.854215, 0.087903, 0.512434,
		-0.090202, 0.995714, -0.020440,
		36.398628, 36.359707, 22.602467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.411312, 35.758827, 23.319016>,  <36.461769, 35.662708, 22.616774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.411312, 35.758827, 23.319016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.277390, 36.102318, 23.163845>,  <36.197037, 36.308414, 23.070742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.277390, 36.102318, 23.163845>,  <36.411312, 35.758827, 23.319016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.277390, 36.102318, 23.163845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549312, 0.156629, 0.820807,
		0.765612, 0.487904, 0.419271,
		-0.334805, 0.858730, -0.387928,
		36.176949, 36.359936, 23.047466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.530659, 36.358421, 23.806173>,  <36.411312, 35.758827, 23.319016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.530659, 36.358421, 23.806173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.221226, 36.435955, 23.564844>,  <36.035564, 36.482475, 23.420048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.221226, 36.435955, 23.564844>,  <36.530659, 36.358421, 23.806173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.221226, 36.435955, 23.564844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561956, 0.230177, 0.794496,
		0.292875, 0.953648, -0.069133,
		-0.773583, 0.193838, -0.603321,
		35.989151, 36.494106, 23.383848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.330460, 37.065617, 23.931719>,  <36.530659, 36.358421, 23.806173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.330460, 37.065617, 23.931719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.998035, 36.914124, 23.768795>,  <35.798580, 36.823227, 23.671041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.998035, 36.914124, 23.768795>,  <36.330460, 37.065617, 23.931719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.998035, 36.914124, 23.768795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550037, 0.451110, 0.702822,
		-0.082439, 0.808123, -0.583216,
		-0.831062, -0.378730, -0.407308,
		35.748718, 36.800503, 23.646603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.913063, 37.585487, 23.975134>,  <36.330460, 37.065617, 23.931719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.913063, 37.585487, 23.975134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.658691, 37.279110, 23.937349>,  <35.506069, 37.095284, 23.914679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.658691, 37.279110, 23.937349>,  <35.913063, 37.585487, 23.975134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.658691, 37.279110, 23.937349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688105, 0.507315, 0.518789,
		-0.349443, 0.394911, -0.849667,
		-0.635925, -0.765948, -0.094463,
		35.467915, 37.049324, 23.909010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.297188, 37.920559, 23.831926>,  <35.913063, 37.585487, 23.975134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.297188, 37.920559, 23.831926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.206074, 37.537567, 23.902752>,  <35.151405, 37.307774, 23.945248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.206074, 37.537567, 23.902752>,  <35.297188, 37.920559, 23.831926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.206074, 37.537567, 23.902752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637818, 0.284120, 0.715866,
		-0.735733, 0.050129, -0.675415,
		-0.227784, -0.957477, 0.177064,
		35.137737, 37.250324, 23.955872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.596611, 37.893970, 23.750408>,  <35.297188, 37.920559, 23.831926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.596611, 37.893970, 23.750408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.729641, 37.604225, 23.991964>,  <34.809460, 37.430378, 24.136898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.729641, 37.604225, 23.991964>,  <34.596611, 37.893970, 23.750408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.729641, 37.604225, 23.991964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624939, 0.310287, 0.716361,
		-0.706288, -0.615641, -0.349490,
		0.332579, -0.724367, 0.603890,
		34.829414, 37.386913, 24.173132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.950912, 37.754814, 24.054258>,  <34.596611, 37.893970, 23.750408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.950912, 37.754814, 24.054258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.229050, 37.615349, 24.305632>,  <34.395931, 37.531670, 24.456455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.229050, 37.615349, 24.305632>,  <33.950912, 37.754814, 24.054258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.229050, 37.615349, 24.305632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595867, 0.209176, 0.775363,
		-0.401796, -0.913607, -0.062309,
		0.695343, -0.348666, 0.628434,
		34.437653, 37.510750, 24.494162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.598541, 37.220509, 24.576357>,  <33.950912, 37.754814, 24.054258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.598541, 37.220509, 24.576357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.939007, 37.348473, 24.742813>,  <34.143288, 37.425251, 24.842688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.939007, 37.348473, 24.742813>,  <33.598541, 37.220509, 24.576357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.939007, 37.348473, 24.742813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446646, 0.024974, 0.894362,
		0.275719, -0.947120, 0.164141,
		0.851167, 0.319905, 0.416142,
		34.194359, 37.444443, 24.867655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.683895, 36.873806, 25.278225>,  <33.598541, 37.220509, 24.576357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.683895, 36.873806, 25.278225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.922699, 37.194698, 25.277016>,  <34.065979, 37.387234, 25.276291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.922699, 37.194698, 25.277016>,  <33.683895, 36.873806, 25.278225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.922699, 37.194698, 25.277016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373298, 0.281132, 0.884089,
		0.710092, -0.526680, 0.467309,
		0.597007, 0.802230, -0.003021,
		34.101803, 37.435368, 25.276110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.014961, 36.840572, 25.900484>,  <33.683895, 36.873806, 25.278225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.014961, 36.840572, 25.900484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.017403, 37.222664, 25.782156>,  <34.018867, 37.451920, 25.711159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.017403, 37.222664, 25.782156>,  <34.014961, 36.840572, 25.900484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.017403, 37.222664, 25.782156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421568, 0.270710, 0.865446,
		0.906776, 0.119427, 0.404344,
		0.006103, 0.955224, -0.295820,
		34.019234, 37.509232, 25.693411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.267700, 37.208035, 26.447811>,  <34.014961, 36.840572, 25.900484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.267700, 37.208035, 26.447811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.089924, 37.497868, 26.237116>,  <33.983257, 37.671768, 26.110699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.089924, 37.497868, 26.237116>,  <34.267700, 37.208035, 26.447811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.089924, 37.497868, 26.237116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313929, 0.424732, 0.849148,
		0.838998, 0.542756, 0.038698,
		-0.444444, 0.724582, -0.526736,
		33.956593, 37.715240, 26.079096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.328781, 37.806942, 26.895813>,  <34.267700, 37.208035, 26.447811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.328781, 37.806942, 26.895813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.045368, 37.903423, 26.630543>,  <33.875320, 37.961311, 26.471380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.045368, 37.903423, 26.630543>,  <34.328781, 37.806942, 26.895813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.045368, 37.903423, 26.630543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542198, 0.415427, 0.730371,
		0.451667, 0.877065, -0.163565,
		-0.708532, 0.241200, -0.663178,
		33.832809, 37.975784, 26.431589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.205505, 38.483231, 26.943253>,  <34.328781, 37.806942, 26.895813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.205505, 38.483231, 26.943253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.869637, 38.344822, 26.775814>,  <33.668114, 38.261776, 26.675352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.869637, 38.344822, 26.775814>,  <34.205505, 38.483231, 26.943253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.869637, 38.344822, 26.775814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533944, 0.385065, 0.752748,
		-0.099281, 0.855567, -0.508084,
		-0.839671, -0.346022, -0.418595,
		33.617737, 38.241016, 26.650236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.720356, 38.976849, 26.927887>,  <34.205505, 38.483231, 26.943253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.720356, 38.976849, 26.927887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.494907, 38.646446, 26.930393>,  <33.359638, 38.448204, 26.931896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.494907, 38.646446, 26.930393>,  <33.720356, 38.976849, 26.927887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.494907, 38.646446, 26.930393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482541, 0.335394, 0.809114,
		-0.670437, 0.453010, -0.587619,
		-0.563621, -0.826010, 0.006264,
		33.325821, 38.398643, 26.932272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.002617, 39.239525, 27.081350>,  <33.720356, 38.976849, 26.927887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.002617, 39.239525, 27.081350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.958839, 38.847061, 27.145031>,  <32.932571, 38.611584, 27.183239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.958839, 38.847061, 27.145031>,  <33.002617, 39.239525, 27.081350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.958839, 38.847061, 27.145031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534483, 0.193132, 0.822817,
		-0.838063, 0.004963, -0.545551,
		-0.109447, -0.981160, 0.159204,
		32.926006, 38.552711, 27.192793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.267818, 39.087948, 27.318060>,  <33.002617, 39.239525, 27.081350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.267818, 39.087948, 27.318060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.487740, 38.784622, 27.458162>,  <32.619690, 38.602627, 27.542223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.487740, 38.784622, 27.458162>,  <32.267818, 39.087948, 27.318060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.487740, 38.784622, 27.458162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392407, 0.135685, 0.909729,
		-0.737385, -0.637612, -0.222968,
		0.549801, -0.758314, 0.350255,
		32.652679, 38.557129, 27.563238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.861210, 38.834225, 27.857983>,  <32.267818, 39.087948, 27.318060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.861210, 38.834225, 27.857983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.204498, 38.634735, 27.906527>,  <32.410473, 38.515041, 27.935654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.204498, 38.634735, 27.906527>,  <31.861210, 38.834225, 27.857983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.204498, 38.634735, 27.906527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256489, -0.211895, 0.943034,
		-0.444601, -0.840460, -0.309771,
		0.858222, -0.498726, 0.121359,
		32.461964, 38.485119, 27.942934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.752182, 38.171837, 28.213123>,  <31.861210, 38.834225, 27.857983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.752182, 38.171837, 28.213123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.132114, 38.261101, 28.300777>,  <32.360073, 38.314659, 28.353369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.132114, 38.261101, 28.300777>,  <31.752182, 38.171837, 28.213123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.132114, 38.261101, 28.300777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165670, -0.235285, 0.957703,
		0.265279, -0.945960, -0.186510,
		0.949832, 0.223159, 0.219134,
		32.417065, 38.328049, 28.366518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.992121, 37.615051, 28.588728>,  <31.752182, 38.171837, 28.213123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.992121, 37.615051, 28.588728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.189880, 37.951283, 28.677271>,  <32.308537, 38.153019, 28.730396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.189880, 37.951283, 28.677271>,  <31.992121, 37.615051, 28.588728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.189880, 37.951283, 28.677271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116798, -0.188107, 0.975179,
		0.861351, -0.507983, 0.005177,
		0.494401, 0.840576, 0.221358,
		32.338200, 38.203457, 28.743679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.339802, 37.523006, 29.174591>,  <31.992121, 37.615051, 28.588728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.339802, 37.523006, 29.174591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.386402, 37.919884, 29.192369>,  <32.414364, 38.158012, 29.203035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.386402, 37.919884, 29.192369>,  <32.339802, 37.523006, 29.174591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.386402, 37.919884, 29.192369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134244, -0.060070, 0.989126,
		0.984076, -0.109268, -0.140194,
		0.116501, 0.992196, 0.044445,
		32.421352, 38.217541, 29.205704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.864273, 37.554531, 29.641361>,  <32.339802, 37.523006, 29.174591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.864273, 37.554531, 29.641361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.723141, 37.928680, 29.631693>,  <32.638462, 38.153172, 29.625891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.723141, 37.928680, 29.631693>,  <32.864273, 37.554531, 29.641361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.723141, 37.928680, 29.631693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141798, 0.078988, 0.986739,
		0.924880, 0.344726, -0.160503,
		-0.352832, 0.935374, -0.024173,
		32.617290, 38.209293, 29.624441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.360363, 38.003574, 30.023680>,  <32.864273, 37.554531, 29.641361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.360363, 38.003574, 30.023680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.018742, 38.211636, 30.021717>,  <32.813766, 38.336472, 30.020540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.018742, 38.211636, 30.021717>,  <33.360363, 38.003574, 30.023680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.018742, 38.211636, 30.021717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135305, 0.231248, 0.963440,
		0.502274, 0.822169, -0.267878,
		-0.854057, 0.520156, -0.004907,
		32.762524, 38.367683, 30.020245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.487465, 38.614586, 30.335176>,  <33.360363, 38.003574, 30.023680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.487465, 38.614586, 30.335176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.087986, 38.602341, 30.351463>,  <32.848297, 38.594994, 30.361235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.087986, 38.602341, 30.351463>,  <33.487465, 38.614586, 30.335176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.087986, 38.602341, 30.351463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026098, 0.378962, 0.925044,
		-0.043749, 0.924906, -0.377671,
		-0.998702, -0.030613, 0.040717,
		32.788376, 38.593155, 30.363678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.951576, 39.263573, 30.436752>,  <33.487465, 38.614586, 30.335176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.951576, 39.263573, 30.436752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.276466, 39.457920, 30.565884>,  <34.471401, 39.574528, 30.643362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.276466, 39.457920, 30.565884>,  <33.951576, 39.263573, 30.436752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.276466, 39.457920, 30.565884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338169, 0.058756, -0.939249,
		-0.475316, 0.872057, -0.116581,
		0.812229, 0.485864, 0.322831,
		34.520134, 39.603680, 30.662733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.061462, 39.956474, 30.106190>,  <33.951576, 39.263573, 30.436752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.061462, 39.956474, 30.106190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.412415, 39.812229, 30.232784>,  <34.622986, 39.725681, 30.308741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.412415, 39.812229, 30.232784>,  <34.061462, 39.956474, 30.106190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.412415, 39.812229, 30.232784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348777, 0.026379, -0.936834,
		0.329486, 0.932342, 0.148918,
		0.877379, -0.360613, 0.316488,
		34.675629, 39.704044, 30.327730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.498558, 40.286873, 29.648291>,  <34.061462, 39.956474, 30.106190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.498558, 40.286873, 29.648291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.740414, 39.999001, 29.784803>,  <34.885529, 39.826279, 29.866711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.740414, 39.999001, 29.784803>,  <34.498558, 40.286873, 29.648291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.740414, 39.999001, 29.784803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479484, -0.013258, -0.877450,
		0.636009, 0.694178, 0.337059,
		0.604638, -0.719681, 0.341280,
		34.921806, 39.783096, 29.887188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.173630, 40.474895, 29.520269>,  <34.498558, 40.286873, 29.648291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.173630, 40.474895, 29.520269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.242844, 40.085770, 29.581841>,  <35.284370, 39.852295, 29.618784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.242844, 40.085770, 29.581841>,  <35.173630, 40.474895, 29.520269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.242844, 40.085770, 29.581841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462825, -0.057642, -0.884573,
		0.869397, 0.224304, 0.440268,
		0.173036, -0.972813, 0.153928,
		35.294754, 39.793926, 29.628019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.871014, 40.334553, 29.377239>,  <35.173630, 40.474895, 29.520269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.871014, 40.334553, 29.377239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.719902, 39.965534, 29.345766>,  <35.629234, 39.744122, 29.326883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.719902, 39.965534, 29.345766>,  <35.871014, 40.334553, 29.377239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.719902, 39.965534, 29.345766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684250, -0.220922, -0.694979,
		0.623769, -0.316385, 0.714712,
		-0.377777, -0.922548, -0.078682,
		35.606567, 39.688770, 29.322161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.424549, 39.846066, 29.481665>,  <35.871014, 40.334553, 29.377239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.424549, 39.846066, 29.481665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.134354, 39.665924, 29.273493>,  <35.960236, 39.557838, 29.148590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.134354, 39.665924, 29.273493>,  <36.424549, 39.846066, 29.481665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.134354, 39.665924, 29.273493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685058, -0.400020, -0.608834,
		0.066007, -0.798228, 0.598728,
		-0.725491, -0.450350, -0.520429,
		35.916706, 39.530819, 29.117365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.679161, 39.252827, 29.317238>,  <36.424549, 39.846066, 29.481665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.679161, 39.252827, 29.317238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.370285, 39.253197, 29.063082>,  <36.184959, 39.253418, 28.910587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.370285, 39.253197, 29.063082>,  <36.679161, 39.252827, 29.317238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.370285, 39.253197, 29.063082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616389, -0.241634, -0.749451,
		-0.154225, -0.970367, 0.186017,
		-0.772191, 0.000926, -0.635390,
		36.138626, 39.253475, 28.872465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.656792, 38.561737, 28.964890>,  <36.679161, 39.252827, 29.317238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.656792, 38.561737, 28.964890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.479980, 38.808140, 28.704077>,  <36.373894, 38.955982, 28.547588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.479980, 38.808140, 28.704077>,  <36.656792, 38.561737, 28.964890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.479980, 38.808140, 28.704077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619460, -0.316097, -0.718576,
		-0.648754, -0.721538, -0.241870,
		-0.442026, 0.616008, -0.652033,
		36.347374, 38.992943, 28.508467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.567329, 38.198486, 28.424377>,  <36.656792, 38.561737, 28.964890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.567329, 38.198486, 28.424377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.516098, 38.564243, 28.270765>,  <36.485359, 38.783699, 28.178598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.516098, 38.564243, 28.270765>,  <36.567329, 38.198486, 28.424377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.516098, 38.564243, 28.270765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565774, -0.250665, -0.785536,
		-0.814553, -0.317884, -0.485236,
		-0.128077, 0.914395, -0.384030,
		36.477676, 38.838562, 28.155556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.468666, 38.201004, 27.692343>,  <36.567329, 38.198486, 28.424377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.468666, 38.201004, 27.692343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.566719, 38.588486, 27.707985>,  <36.625553, 38.820972, 27.717371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.566719, 38.588486, 27.707985>,  <36.468666, 38.201004, 27.692343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.566719, 38.588486, 27.707985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548360, -0.105276, -0.829589,
		-0.799505, 0.224807, -0.557004,
		0.245137, 0.968700, 0.039106,
		36.640259, 38.879097, 27.719717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.233757, 38.458599, 27.011919>,  <36.468666, 38.201004, 27.692343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.233757, 38.458599, 27.011919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.518379, 38.691845, 27.168720>,  <36.689152, 38.831795, 27.262800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.518379, 38.691845, 27.168720>,  <36.233757, 38.458599, 27.011919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.518379, 38.691845, 27.168720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541180, -0.099012, -0.835057,
		-0.448123, 0.806333, -0.386023,
		0.711555, 0.583116, 0.392002,
		36.731846, 38.866779, 27.286322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.371731, 38.937733, 26.508190>,  <36.233757, 38.458599, 27.011919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.371731, 38.937733, 26.508190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.686409, 38.906158, 26.753101>,  <36.875214, 38.887215, 26.900047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.686409, 38.906158, 26.753101>,  <36.371731, 38.937733, 26.508190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.686409, 38.906158, 26.753101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617261, 0.116972, -0.778014,
		-0.010207, 0.989993, 0.140744,
		0.786692, -0.078934, 0.612278,
		36.922417, 38.882477, 26.936785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.761257, 39.516827, 26.395294>,  <36.371731, 38.937733, 26.508190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.761257, 39.516827, 26.395294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.989372, 39.234875, 26.564014>,  <37.126240, 39.065704, 26.665247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.989372, 39.234875, 26.564014>,  <36.761257, 39.516827, 26.395294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.989372, 39.234875, 26.564014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543560, -0.061175, -0.837138,
		0.615889, 0.706680, 0.348260,
		0.570284, -0.704884, 0.421800,
		37.160458, 39.023411, 26.690554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.382694, 39.783821, 26.170092>,  <36.761257, 39.516827, 26.395294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.382694, 39.783821, 26.170092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.464573, 39.409050, 26.283411>,  <37.513702, 39.184185, 26.351402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.464573, 39.409050, 26.283411>,  <37.382694, 39.783821, 26.170092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.464573, 39.409050, 26.283411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562650, -0.124204, -0.817312,
		0.800952, 0.326702, 0.501739,
		0.204699, -0.936931, 0.283301,
		37.525982, 39.127972, 26.368401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.087120, 39.760254, 26.237896>,  <37.382694, 39.783821, 26.170092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.087120, 39.760254, 26.237896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.971352, 39.378845, 26.204334>,  <37.901890, 39.150002, 26.184196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.971352, 39.378845, 26.204334>,  <38.087120, 39.760254, 26.237896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.971352, 39.378845, 26.204334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633575, -0.125125, -0.763497,
		0.717508, -0.274133, 0.640338,
		-0.289422, -0.953517, -0.083905,
		37.884525, 39.092789, 26.179163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.743118, 39.439304, 26.170160>,  <38.087120, 39.760254, 26.237896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.743118, 39.439304, 26.170160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.439785, 39.206863, 26.052010>,  <38.257786, 39.067398, 25.981119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.439785, 39.206863, 26.052010>,  <38.743118, 39.439304, 26.170160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.439785, 39.206863, 26.052010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534384, -0.294684, -0.792208,
		0.373313, -0.758603, 0.534002,
		-0.758334, -0.581104, -0.295376,
		38.212284, 39.032532, 25.963396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.122517, 39.088367, 25.724176>,  <38.743118, 39.439304, 26.170160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.122517, 39.088367, 25.724176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.752277, 38.986305, 25.612349>,  <38.530132, 38.925068, 25.545252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.752277, 38.986305, 25.612349>,  <39.122517, 39.088367, 25.724176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.752277, 38.986305, 25.612349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320819, -0.136926, -0.937191,
		0.200851, -0.957155, 0.208598,
		-0.925599, -0.255158, -0.279572,
		38.474598, 38.909760, 25.528477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.236092, 38.512348, 25.340746>,  <39.122517, 39.088367, 25.724176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.236092, 38.512348, 25.340746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.884293, 38.661934, 25.223013>,  <38.673214, 38.751686, 25.152374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.884293, 38.661934, 25.223013>,  <39.236092, 38.512348, 25.340746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.884293, 38.661934, 25.223013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232201, -0.202648, -0.951324,
		-0.415408, -0.905032, 0.091393,
		-0.879499, 0.373965, -0.294331,
		38.620441, 38.774124, 25.134714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.039181, 38.055058, 24.866369>,  <39.236092, 38.512348, 25.340746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.039181, 38.055058, 24.866369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.819382, 38.381470, 24.794651>,  <38.687504, 38.577316, 24.751621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.819382, 38.381470, 24.794651>,  <39.039181, 38.055058, 24.866369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.819382, 38.381470, 24.794651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212216, -0.071236, -0.974623,
		-0.808095, -0.573601, -0.134031,
		-0.549497, 0.816031, -0.179293,
		38.654533, 38.626278, 24.740864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.477913, 37.797180, 24.407217>,  <39.039181, 38.055058, 24.866369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.477913, 37.797180, 24.407217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.526402, 38.186859, 24.331072>,  <38.555492, 38.420666, 24.285385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.526402, 38.186859, 24.331072>,  <38.477913, 37.797180, 24.407217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.526402, 38.186859, 24.331072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064214, -0.183679, -0.980887,
		-0.990547, 0.131125, 0.040292,
		0.121218, 0.974201, -0.190362,
		38.562767, 38.479118, 24.273964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.900040, 38.017849, 23.878853>,  <38.477913, 37.797180, 24.407217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.900040, 38.017849, 23.878853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.200394, 38.281265, 23.858879>,  <38.380608, 38.439316, 23.846895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.200394, 38.281265, 23.858879>,  <37.900040, 38.017849, 23.878853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.200394, 38.281265, 23.858879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047695, -0.129482, -0.990434,
		-0.658704, 0.741324, -0.128635,
		0.750889, 0.658538, -0.049933,
		38.425659, 38.478828, 23.843899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.688148, 38.484592, 23.311535>,  <37.900040, 38.017849, 23.878853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.688148, 38.484592, 23.311535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.080292, 38.461281, 23.386894>,  <38.315578, 38.447292, 23.432110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.080292, 38.461281, 23.386894>,  <37.688148, 38.484592, 23.311535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.080292, 38.461281, 23.386894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156915, -0.348102, -0.924231,
		0.119449, 0.935643, -0.332120,
		0.980362, -0.058284, 0.188396,
		38.374401, 38.443794, 23.443413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.049145, 38.507679, 22.634518>,  <37.688148, 38.484592, 23.311535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.049145, 38.507679, 22.634518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.316471, 38.366436, 22.896412>,  <38.476868, 38.281693, 23.053549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.316471, 38.366436, 22.896412>,  <38.049145, 38.507679, 22.634518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.316471, 38.366436, 22.896412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394717, -0.577704, -0.714463,
		0.630522, 0.735919, -0.246711,
		0.668312, -0.353103, 0.654734,
		38.516964, 38.260506, 23.092833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.595631, 38.426487, 22.222347>,  <38.049145, 38.507679, 22.634518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.595631, 38.426487, 22.222347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.671135, 38.192215, 22.537651>,  <38.716438, 38.051651, 22.726833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.671135, 38.192215, 22.537651>,  <38.595631, 38.426487, 22.222347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.671135, 38.192215, 22.537651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487499, -0.640911, -0.592939,
		0.852474, 0.496201, 0.164535,
		0.188765, -0.585676, 0.788258,
		38.727764, 38.016514, 22.774128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.260056, 38.234921, 22.127800>,  <38.595631, 38.426487, 22.222347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.260056, 38.234921, 22.127800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.100983, 37.972229, 22.384096>,  <39.005539, 37.814613, 22.537874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.100983, 37.972229, 22.384096>,  <39.260056, 38.234921, 22.127800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.100983, 37.972229, 22.384096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479545, -0.744139, -0.465074,
		0.782229, 0.122311, 0.610866,
		-0.397685, -0.656732, 0.640741,
		38.981678, 37.775208, 22.576319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.848087, 37.969673, 22.439545>,  <39.260056, 38.234921, 22.127800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.848087, 37.969673, 22.439545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.528549, 37.732758, 22.481575>,  <39.336826, 37.590611, 22.506792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.528549, 37.732758, 22.481575>,  <39.848087, 37.969673, 22.439545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.528549, 37.732758, 22.481575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500254, -0.751138, -0.430741,
		0.334047, -0.291533, 0.896338,
		-0.798848, -0.592284, 0.105074,
		39.288895, 37.555073, 22.513098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.103230, 37.286304, 22.659571>,  <39.848087, 37.969673, 22.439545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.103230, 37.286304, 22.659571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.737926, 37.228619, 22.507172>,  <39.518745, 37.194008, 22.415733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.737926, 37.228619, 22.507172>,  <40.103230, 37.286304, 22.659571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.737926, 37.228619, 22.507172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330415, -0.809287, -0.485675,
		-0.238292, -0.569434, 0.786741,
		-0.913259, -0.144219, -0.380996,
		39.463947, 37.185352, 22.392872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.953011, 36.602097, 22.777750>,  <40.103230, 37.286304, 22.659571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.953011, 36.602097, 22.777750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.724068, 36.720814, 22.471987>,  <39.586700, 36.792046, 22.288528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.724068, 36.720814, 22.471987>,  <39.953011, 36.602097, 22.777750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.724068, 36.720814, 22.471987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411597, -0.702276, -0.580859,
		-0.709229, -0.647083, 0.279782,
		-0.572348, 0.296805, -0.764411,
		39.552361, 36.809853, 22.242664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.801765, 35.961830, 22.435009>,  <39.953011, 36.602097, 22.777750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.801765, 35.961830, 22.435009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.696579, 36.248943, 22.177130>,  <39.633465, 36.421211, 22.022402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.696579, 36.248943, 22.177130>,  <39.801765, 35.961830, 22.435009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.696579, 36.248943, 22.177130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424225, -0.514131, -0.745454,
		-0.866533, -0.469530, -0.169300,
		-0.262971, 0.717782, -0.644698,
		39.617687, 36.464279, 21.983721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.526493, 35.583965, 21.867006>,  <39.801765, 35.961830, 22.435009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.526493, 35.583965, 21.867006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.639717, 35.945011, 21.737286>,  <39.707649, 36.161636, 21.659454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.639717, 35.945011, 21.737286>,  <39.526493, 35.583965, 21.867006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.639717, 35.945011, 21.737286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407001, -0.419215, -0.811547,
		-0.868464, 0.097724, -0.486026,
		0.283057, 0.902612, -0.324300,
		39.724636, 36.215794, 21.639996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.258015, 35.602207, 21.204247>,  <39.526493, 35.583965, 21.867006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.258015, 35.602207, 21.204247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.540009, 35.885674, 21.215464>,  <39.709206, 36.055752, 21.222193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.540009, 35.885674, 21.215464>,  <39.258015, 35.602207, 21.204247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.540009, 35.885674, 21.215464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449435, -0.415820, -0.790634,
		-0.548634, 0.569990, -0.611647,
		0.704989, 0.708664, 0.028041,
		39.751507, 36.098274, 21.223875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.364994, 35.721382, 20.543085>,  <39.258015, 35.602207, 21.204247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.364994, 35.721382, 20.543085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.693893, 35.865971, 20.718920>,  <39.891235, 35.952724, 20.824421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.693893, 35.865971, 20.718920>,  <39.364994, 35.721382, 20.543085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.693893, 35.865971, 20.718920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568590, -0.488368, -0.661968,
		-0.024605, 0.794250, -0.607093,
		0.822253, 0.361475, 0.439586,
		39.940571, 35.974415, 20.850796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.716965, 36.082447, 20.087910>,  <39.364994, 35.721382, 20.543085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.716965, 36.082447, 20.087910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.981163, 35.944366, 20.354618>,  <40.139683, 35.861519, 20.514643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.981163, 35.944366, 20.354618>,  <39.716965, 36.082447, 20.087910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.981163, 35.944366, 20.354618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544209, -0.391718, -0.741885,
		0.517284, 0.852875, -0.070868,
		0.660495, -0.345198, 0.666772,
		40.179310, 35.840809, 20.554649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.331402, 36.258850, 19.708838>,  <39.716965, 36.082447, 20.087910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.331402, 36.258850, 19.708838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.392937, 35.985916, 19.994707>,  <40.429859, 35.822155, 20.166229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.392937, 35.985916, 19.994707>,  <40.331402, 36.258850, 19.708838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.392937, 35.985916, 19.994707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612570, -0.501658, -0.610817,
		0.775301, 0.531753, 0.340802,
		0.153838, -0.682332, 0.714672,
		40.439087, 35.781216, 20.209108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.993034, 36.214073, 19.744867>,  <40.331402, 36.258850, 19.708838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.993034, 36.214073, 19.744867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.881958, 35.871552, 19.919058>,  <40.815311, 35.666039, 20.023571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.881958, 35.871552, 19.919058>,  <40.993034, 36.214073, 19.744867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.881958, 35.871552, 19.919058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713758, -0.487304, -0.503075,
		0.642992, 0.171125, 0.746510,
		-0.277689, -0.856300, 0.435474,
		40.798653, 35.614662, 20.049700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.610466, 35.940235, 19.795845>,  <40.993034, 36.214073, 19.744867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.610466, 35.940235, 19.795845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.378941, 35.626266, 19.884274>,  <41.240025, 35.437885, 19.937330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.378941, 35.626266, 19.884274>,  <41.610466, 35.940235, 19.795845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.378941, 35.626266, 19.884274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568975, -0.582938, -0.580044,
		0.584162, -0.209951, 0.784013,
		-0.578811, -0.784923, 0.221073,
		41.205296, 35.390789, 19.950596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.013668, 35.397331, 20.154625>,  <41.610466, 35.940235, 19.795845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.013668, 35.397331, 20.154625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.683636, 35.223465, 20.010233>,  <41.485615, 35.119144, 19.923597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.683636, 35.223465, 20.010233>,  <42.013668, 35.397331, 20.154625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.683636, 35.223465, 20.010233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558858, -0.721888, -0.408111,
		-0.083193, -0.538460, 0.838534,
		-0.825080, -0.434670, -0.360979,
		41.436111, 35.093063, 19.901939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.234241, 34.693069, 20.078169>,  <42.013668, 35.397331, 20.154625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.234241, 34.693069, 20.078169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.912445, 34.717964, 19.841890>,  <41.719368, 34.732903, 19.700123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.912445, 34.717964, 19.841890>,  <42.234241, 34.693069, 20.078169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.912445, 34.717964, 19.841890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522257, -0.399584, -0.753379,
		-0.282918, -0.914582, 0.288959,
		-0.804490, 0.062234, -0.590696,
		41.671097, 34.736633, 19.664680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.297379, 34.071003, 19.634693>,  <42.234241, 34.693069, 20.078169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.297379, 34.071003, 19.634693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.306252, 33.685677, 19.741669>,  <42.311577, 33.454479, 19.805855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.306252, 33.685677, 19.741669>,  <42.297379, 34.071003, 19.634693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.306252, 33.685677, 19.741669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190701, 0.258517, 0.946996,
		-0.981397, -0.072010, -0.177971,
		0.022185, -0.963319, 0.267440,
		42.312908, 33.396683, 19.821901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.540680, 33.774170, 19.979355>,  <42.297379, 34.071003, 19.634693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.540680, 33.774170, 19.979355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.862289, 33.566978, 20.096134>,  <42.055256, 33.442661, 20.166203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.862289, 33.566978, 20.096134>,  <41.540680, 33.774170, 19.979355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.862289, 33.566978, 20.096134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339531, 0.003110, 0.940590,
		-0.488117, -0.855386, -0.173371,
		0.804028, -0.517982, 0.291948,
		42.103497, 33.411583, 20.183720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.290836, 33.500324, 20.555428>,  <41.540680, 33.774170, 19.979355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.290836, 33.500324, 20.555428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.685162, 33.447197, 20.596464>,  <41.921757, 33.415321, 20.621086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.685162, 33.447197, 20.596464>,  <41.290836, 33.500324, 20.555428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.685162, 33.447197, 20.596464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079385, 0.169536, 0.982322,
		-0.147862, -0.976533, 0.156588,
		0.985817, -0.132818, 0.102590,
		41.980907, 33.407352, 20.627241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.290482, 33.184006, 21.190681>,  <41.290836, 33.500324, 20.555428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.290482, 33.184006, 21.190681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.661854, 33.320843, 21.132740>,  <41.884678, 33.402946, 21.097975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.661854, 33.320843, 21.132740>,  <41.290482, 33.184006, 21.190681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.661854, 33.320843, 21.132740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002248, 0.384741, 0.923022,
		0.371485, -0.857293, 0.356438,
		0.928436, 0.342088, -0.144853,
		41.940384, 33.423470, 21.089283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.625263, 33.019638, 21.791620>,  <41.290482, 33.184006, 21.190681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.625263, 33.019638, 21.791620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.849586, 33.307827, 21.628448>,  <41.984180, 33.480740, 21.530546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.849586, 33.307827, 21.628448>,  <41.625263, 33.019638, 21.791620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.849586, 33.307827, 21.628448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083913, 0.539625, 0.837713,
		0.823682, -0.435567, 0.363084,
		0.560809, 0.720476, -0.407930,
		42.017830, 33.523972, 21.506069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.212204, 33.097794, 22.190542>,  <41.625263, 33.019638, 21.791620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.212204, 33.097794, 22.190542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.122303, 33.445484, 22.014393>,  <42.068363, 33.654099, 21.908703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.122303, 33.445484, 22.014393>,  <42.212204, 33.097794, 22.190542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.122303, 33.445484, 22.014393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028680, 0.445837, 0.894655,
		0.973993, 0.213707, -0.075274,
		-0.224754, 0.869229, -0.440371,
		42.054878, 33.706253, 21.882282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.534203, 33.523224, 22.632912>,  <42.212204, 33.097794, 22.190542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.534203, 33.523224, 22.632912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.284679, 33.772804, 22.444635>,  <42.134964, 33.922554, 22.331669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.284679, 33.772804, 22.444635>,  <42.534203, 33.523224, 22.632912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.284679, 33.772804, 22.444635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333476, 0.332183, 0.882297,
		0.706866, 0.707347, 0.000855,
		-0.623806, 0.623950, -0.470692,
		42.097538, 33.959988, 22.303429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.614235, 34.125774, 23.034531>,  <42.534203, 33.523224, 22.632912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.614235, 34.125774, 23.034531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.285194, 34.182827, 22.814352>,  <42.087772, 34.217060, 22.682245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.285194, 34.182827, 22.814352>,  <42.614235, 34.125774, 23.034531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.285194, 34.182827, 22.814352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457895, 0.407794, 0.789960,
		0.337144, 0.901865, -0.270138,
		-0.822597, 0.142635, -0.550445,
		42.038414, 34.225616, 22.649220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.421925, 34.772556, 23.153749>,  <42.614235, 34.125774, 23.034531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.421925, 34.772556, 23.153749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.083252, 34.596901, 23.033554>,  <41.880051, 34.491508, 22.961437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.083252, 34.596901, 23.033554>,  <42.421925, 34.772556, 23.153749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.083252, 34.596901, 23.033554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499650, 0.461919, 0.732790,
		-0.182995, 0.770576, -0.610512,
		-0.846677, -0.439139, -0.300490,
		41.829250, 34.465160, 22.943407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.869705, 35.315090, 23.245811>,  <42.421925, 34.772556, 23.153749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.869705, 35.315090, 23.245811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.679871, 34.963734, 23.223175>,  <41.565971, 34.752922, 23.209593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.679871, 34.963734, 23.223175>,  <41.869705, 35.315090, 23.245811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.679871, 34.963734, 23.223175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692642, 0.333007, 0.639807,
		-0.543155, 0.342838, -0.766449,
		-0.474583, -0.878390, -0.056590,
		41.537495, 34.700218, 23.206198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.161732, 35.567162, 23.232870>,  <41.869705, 35.315090, 23.245811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.161732, 35.567162, 23.232870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.127693, 35.179386, 23.324903>,  <41.107269, 34.946720, 23.380123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.127693, 35.179386, 23.324903>,  <41.161732, 35.567162, 23.232870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.127693, 35.179386, 23.324903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471620, 0.242607, 0.847772,
		-0.877686, -0.036369, -0.477854,
		-0.085098, -0.969443, 0.230085,
		41.102165, 34.888554, 23.393929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.384254, 35.401409, 23.300661>,  <41.161732, 35.567162, 23.232870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.384254, 35.401409, 23.300661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.605885, 35.136311, 23.502165>,  <40.738861, 34.977253, 23.623066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.605885, 35.136311, 23.502165>,  <40.384254, 35.401409, 23.300661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.605885, 35.136311, 23.502165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379236, 0.337748, 0.861456,
		-0.741067, -0.668355, -0.064197,
		0.554076, -0.662742, 0.503759,
		40.772106, 34.937489, 23.653292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.109100, 34.888462, 23.793976>,  <40.384254, 35.401409, 23.300661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.109100, 34.888462, 23.793976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.479897, 34.974644, 23.916788>,  <40.702374, 35.026352, 23.990477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.479897, 34.974644, 23.916788>,  <40.109100, 34.888462, 23.793976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.479897, 34.974644, 23.916788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334825, 0.106374, 0.936257,
		0.169062, -0.970703, 0.170747,
		0.926990, 0.215456, 0.307031,
		40.757996, 35.039280, 24.008898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.336872, 34.454453, 24.422241>,  <40.109100, 34.888462, 23.793976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.336872, 34.454453, 24.422241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.560093, 34.785950, 24.405451>,  <40.694027, 34.984848, 24.395376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.560093, 34.785950, 24.405451>,  <40.336872, 34.454453, 24.422241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.560093, 34.785950, 24.405451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237779, 0.208170, 0.948750,
		0.795009, -0.519471, 0.313227,
		0.558052, 0.828743, -0.041977,
		40.727509, 35.034573, 24.392859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.549026, 34.589127, 25.139910>,  <40.336872, 34.454453, 24.422241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.549026, 34.589127, 25.139910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.594959, 34.954815, 24.984470>,  <40.622517, 35.174229, 24.891207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.594959, 34.954815, 24.984470>,  <40.549026, 34.589127, 25.139910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.594959, 34.954815, 24.984470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261747, 0.405209, 0.875953,
		0.958281, 0.001129, 0.285826,
		0.114830, 0.914223, -0.388599,
		40.629410, 35.229080, 24.867891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.893429, 34.999424, 25.636791>,  <40.549026, 34.589127, 25.139910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.893429, 34.999424, 25.636791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.703915, 35.250351, 25.389566>,  <40.590206, 35.400906, 25.241232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.703915, 35.250351, 25.389566>,  <40.893429, 34.999424, 25.636791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.703915, 35.250351, 25.389566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366192, 0.497936, 0.786106,
		0.800892, 0.598777, -0.006198,
		-0.473789, 0.627316, -0.618061,
		40.561779, 35.438545, 25.204147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.911057, 35.650421, 25.914066>,  <40.893429, 34.999424, 25.636791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.911057, 35.650421, 25.914066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.613728, 35.715275, 25.654472>,  <40.435329, 35.754185, 25.498716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.613728, 35.715275, 25.654472>,  <40.911057, 35.650421, 25.914066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.613728, 35.715275, 25.654472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449347, 0.597675, 0.663982,
		0.495533, 0.785174, -0.371415,
		-0.743326, 0.162130, -0.648983,
		40.390728, 35.763912, 25.459778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.748413, 36.407871, 25.892956>,  <40.911057, 35.650421, 25.914066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.748413, 36.407871, 25.892956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.426151, 36.211292, 25.760656>,  <40.232796, 36.093346, 25.681276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.426151, 36.211292, 25.760656>,  <40.748413, 36.407871, 25.892956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.426151, 36.211292, 25.760656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580427, 0.543270, 0.606599,
		-0.118428, 0.680685, -0.722940,
		-0.805655, -0.491452, -0.330749,
		40.184456, 36.063858, 25.661432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.240990, 36.962608, 25.683706>,  <40.748413, 36.407871, 25.892956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.240990, 36.962608, 25.683706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.029461, 36.624565, 25.715044>,  <39.902546, 36.421738, 25.733847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.029461, 36.624565, 25.715044>,  <40.240990, 36.962608, 25.683706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.029461, 36.624565, 25.715044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682188, 0.478153, 0.553164,
		-0.504946, 0.239076, -0.829381,
		-0.528819, -0.845111, 0.078346,
		39.870815, 36.371033, 25.738548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.578022, 37.116268, 25.531593>,  <40.240990, 36.962608, 25.683706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.578022, 37.116268, 25.531593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.549603, 36.788288, 25.758799>,  <39.532551, 36.591499, 25.895123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.549603, 36.788288, 25.758799>,  <39.578022, 37.116268, 25.531593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.549603, 36.788288, 25.758799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623200, 0.481117, 0.616562,
		-0.778829, -0.310183, -0.545171,
		-0.071044, -0.819947, 0.568014,
		39.528290, 36.542305, 25.929203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.007122, 37.211830, 25.706810>,  <39.578022, 37.116268, 25.531593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.007122, 37.211830, 25.706810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.099033, 36.917027, 25.961061>,  <39.154182, 36.740147, 26.113611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.099033, 36.917027, 25.961061>,  <39.007122, 37.211830, 25.706810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.099033, 36.917027, 25.961061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649317, 0.370409, 0.664217,
		-0.724975, -0.565348, -0.393438,
		0.229780, -0.737007, 0.635627,
		39.167969, 36.695923, 26.151751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.392914, 37.045696, 26.080849>,  <39.007122, 37.211830, 25.706810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.392914, 37.045696, 26.080849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.696083, 36.898029, 26.295982>,  <38.877987, 36.809429, 26.425062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.696083, 36.898029, 26.295982>,  <38.392914, 37.045696, 26.080849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.696083, 36.898029, 26.295982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368422, 0.438157, 0.819929,
		-0.538344, -0.819596, 0.196082,
		0.757926, -0.369164, 0.537836,
		38.923462, 36.787281, 26.457333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.105274, 36.634483, 26.764555>,  <38.392914, 37.045696, 26.080849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.105274, 36.634483, 26.764555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.485195, 36.723095, 26.852913>,  <38.713150, 36.776260, 26.905928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.485195, 36.723095, 26.852913>,  <38.105274, 36.634483, 26.764555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.485195, 36.723095, 26.852913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276114, 0.261674, 0.924818,
		0.147065, -0.939391, 0.309705,
		0.949807, 0.221522, 0.220895,
		38.770138, 36.789551, 26.919182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.165684, 36.551872, 27.507879>,  <38.105274, 36.634483, 26.764555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.165684, 36.551872, 27.507879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.508240, 36.746990, 27.440180>,  <38.713776, 36.864063, 27.399559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.508240, 36.746990, 27.440180>,  <38.165684, 36.551872, 27.507879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.508240, 36.746990, 27.440180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023579, 0.290506, 0.956583,
		0.515787, -0.823201, 0.237285,
		0.856393, 0.487798, -0.169250,
		38.765156, 36.893330, 27.389404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.540958, 36.477139, 28.138332>,  <38.165684, 36.551872, 27.507879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.540958, 36.477139, 28.138332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.715328, 36.780437, 27.944412>,  <38.819950, 36.962418, 27.828060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.715328, 36.780437, 27.944412>,  <38.540958, 36.477139, 28.138332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.715328, 36.780437, 27.944412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292395, 0.390131, 0.873100,
		0.851161, -0.522358, -0.051640,
		0.435924, 0.758248, -0.484799,
		38.846107, 37.007912, 27.798973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.192589, 36.541553, 28.420460>,  <38.540958, 36.477139, 28.138332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.192589, 36.541553, 28.420460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.151497, 36.901508, 28.250917>,  <39.126842, 37.117481, 28.149193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.151497, 36.901508, 28.250917>,  <39.192589, 36.541553, 28.420460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.151497, 36.901508, 28.250917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327547, 0.432946, 0.839804,
		0.939234, -0.052562, -0.339230,
		-0.102726, 0.899886, -0.423854,
		39.120678, 37.171474, 28.123760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.850880, 37.038136, 28.547207>,  <39.192589, 36.541553, 28.420460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.850880, 37.038136, 28.547207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.505882, 37.236969, 28.509235>,  <39.298885, 37.356270, 28.486452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.505882, 37.236969, 28.509235>,  <39.850880, 37.038136, 28.547207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.505882, 37.236969, 28.509235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205160, 0.514921, 0.832326,
		0.462616, 0.698401, -0.546098,
		-0.862494, 0.497084, -0.094927,
		39.247135, 37.386093, 28.480757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.028130, 37.765499, 28.644766>,  <39.850880, 37.038136, 28.547207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.028130, 37.765499, 28.644766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.632843, 37.761749, 28.705879>,  <39.395672, 37.759499, 28.742546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.632843, 37.761749, 28.705879>,  <40.028130, 37.765499, 28.644766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.632843, 37.761749, 28.705879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140900, 0.334308, 0.931872,
		-0.059810, 0.942417, -0.329048,
		-0.988216, -0.009372, 0.152781,
		39.336380, 37.758938, 28.751713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.873825, 38.385818, 28.819519>,  <40.028130, 37.765499, 28.644766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.873825, 38.385818, 28.819519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.588005, 38.141743, 28.956398>,  <39.416515, 37.995296, 29.038525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.588005, 38.141743, 28.956398>,  <39.873825, 38.385818, 28.819519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.588005, 38.141743, 28.956398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037205, 0.455304, 0.889558,
		-0.698599, 0.648361, -0.302634,
		-0.714545, -0.610185, 0.342197,
		39.373642, 37.958687, 29.059057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.659554, 38.759090, 29.324587>,  <39.873825, 38.385818, 28.819519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.659554, 38.759090, 29.324587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.494797, 38.401772, 29.396551>,  <39.395943, 38.187382, 29.439730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.494797, 38.401772, 29.396551>,  <39.659554, 38.759090, 29.324587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.494797, 38.401772, 29.396551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060018, 0.223602, 0.972831,
		-0.909254, 0.389903, -0.145714,
		-0.411892, -0.893296, 0.179910,
		39.371227, 38.133781, 29.450523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.282162, 38.968365, 29.850046>,  <39.659554, 38.759090, 29.324587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.282162, 38.968365, 29.850046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.296265, 38.568916, 29.865606>,  <39.304726, 38.329247, 29.874943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.296265, 38.568916, 29.865606>,  <39.282162, 38.968365, 29.850046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.296265, 38.568916, 29.865606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108480, 0.042521, 0.993189,
		-0.993473, -0.030800, 0.109829,
		0.035260, -0.998621, 0.038903,
		39.306843, 38.269329, 29.877277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.814743, 38.749950, 30.314095>,  <39.282162, 38.968365, 29.850046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.814743, 38.749950, 30.314095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.052620, 38.428650, 30.300688>,  <39.195347, 38.235870, 30.292643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.052620, 38.428650, 30.300688>,  <38.814743, 38.749950, 30.314095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.052620, 38.428650, 30.300688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110282, -0.122803, 0.986285,
		-0.796354, -0.582839, -0.161614,
		0.594692, -0.803255, -0.033518,
		39.231026, 38.187672, 30.290632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.488865, 38.248508, 30.763765>,  <38.814743, 38.749950, 30.314095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.488865, 38.248508, 30.763765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.870113, 38.129635, 30.741028>,  <39.098862, 38.058311, 30.727385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.870113, 38.129635, 30.741028>,  <38.488865, 38.248508, 30.763765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.870113, 38.129635, 30.741028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037606, -0.070061, 0.996834,
		-0.300231, -0.952245, -0.055601,
		0.953125, -0.297189, -0.056845,
		39.156052, 38.040478, 30.723974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.553314, 37.897049, 31.430346>,  <38.488865, 38.248508, 30.763765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.553314, 37.897049, 31.430346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.935043, 37.940224, 31.318907>,  <39.164082, 37.966129, 31.252045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.935043, 37.940224, 31.318907>,  <38.553314, 37.897049, 31.430346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.935043, 37.940224, 31.318907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294922, -0.191055, 0.936226,
		0.047828, -0.975627, -0.214162,
		0.954324, 0.107939, -0.278596,
		39.221340, 37.972607, 31.235329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.015358, 37.382473, 31.859434>,  <38.553314, 37.897049, 31.430346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.015358, 37.382473, 31.859434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.251339, 37.677456, 31.727907>,  <39.392929, 37.854446, 31.648991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.251339, 37.677456, 31.727907>,  <39.015358, 37.382473, 31.859434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.251339, 37.677456, 31.727907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398604, 0.088156, 0.912876,
		0.702190, -0.669621, -0.241944,
		0.589952, 0.737453, -0.328816,
		39.428326, 37.898693, 31.629263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.715546, 37.130390, 31.767305>,  <39.015358, 37.382473, 31.859434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.715546, 37.130390, 31.767305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.731030, 37.521881, 31.847889>,  <39.740322, 37.756775, 31.896238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.731030, 37.521881, 31.847889>,  <39.715546, 37.130390, 31.767305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.731030, 37.521881, 31.847889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523719, -0.191574, 0.830071,
		0.851011, 0.073373, -0.519997,
		0.038713, 0.978732, 0.201459,
		39.742645, 37.815502, 31.908327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.326252, 37.222763, 32.083817>,  <39.715546, 37.130390, 31.767305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.326252, 37.222763, 32.083817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.188255, 37.584450, 32.184509>,  <40.105457, 37.801464, 32.244926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.188255, 37.584450, 32.184509>,  <40.326252, 37.222763, 32.083817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.188255, 37.584450, 32.184509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481346, -0.059804, 0.874488,
		0.805784, 0.422860, -0.414611,
		-0.344990, 0.904220, 0.251731,
		40.084759, 37.855717, 32.260029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.832634, 37.512840, 32.447144>,  <40.326252, 37.222763, 32.083817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.832634, 37.512840, 32.447144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.506668, 37.720284, 32.550652>,  <40.311089, 37.844749, 32.612759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.506668, 37.720284, 32.550652>,  <40.832634, 37.512840, 32.447144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.506668, 37.720284, 32.550652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388701, 0.157841, 0.907743,
		0.429915, 0.840318, -0.330210,
		-0.814914, 0.518605, 0.258774,
		40.262196, 37.875866, 32.628284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.081081, 38.104832, 32.993046>,  <40.832634, 37.512840, 32.447144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.081081, 38.104832, 32.993046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.684647, 38.091057, 33.044529>,  <40.446785, 38.082790, 33.075417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.684647, 38.091057, 33.044529>,  <41.081081, 38.104832, 32.993046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.684647, 38.091057, 33.044529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132726, -0.171064, 0.976279,
		-0.011606, 0.984658, 0.174110,
		-0.991085, -0.034439, 0.128704,
		40.387321, 38.080727, 33.083141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.886002, 38.307972, 33.623184>,  <41.081081, 38.104832, 32.993046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.886002, 38.307972, 33.623184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.617970, 38.037727, 33.500195>,  <40.457150, 37.875580, 33.426399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.617970, 38.037727, 33.500195>,  <40.886002, 38.307972, 33.623184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.617970, 38.037727, 33.500195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018555, -0.429342, 0.902951,
		-0.742055, 0.599346, 0.300230,
		-0.670082, -0.675610, -0.307475,
		40.416946, 37.835045, 33.407951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.125820, 38.652676, 34.239227>,  <40.886002, 38.307972, 33.623184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.125820, 38.652676, 34.239227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.476345, 38.717457, 34.420708>,  <41.686661, 38.756325, 34.529598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.476345, 38.717457, 34.420708>,  <41.125820, 38.652676, 34.239227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.476345, 38.717457, 34.420708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450725, 0.056846, -0.890851,
		-0.170066, 0.985160, -0.023182,
		0.876313, 0.161952, 0.453704,
		41.739239, 38.766041, 34.556820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.414913, 39.211975, 33.882511>,  <41.125820, 38.652676, 34.239227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.414913, 39.211975, 33.882511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.715794, 39.025593, 34.068874>,  <41.896320, 38.913761, 34.180695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.715794, 39.025593, 34.068874>,  <41.414913, 39.211975, 33.882511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.715794, 39.025593, 34.068874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595618, 0.178383, -0.783210,
		0.281834, 0.866637, 0.411714,
		0.752202, -0.465960, 0.465911,
		41.941456, 38.885803, 34.208649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.040699, 39.689140, 33.964783>,  <41.414913, 39.211975, 33.882511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.040699, 39.689140, 33.964783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.184185, 39.316063, 33.979816>,  <42.270275, 39.092216, 33.988834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.184185, 39.316063, 33.979816>,  <42.040699, 39.689140, 33.964783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.184185, 39.316063, 33.979816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607177, 0.202560, -0.768314,
		0.708987, 0.298422, 0.638969,
		0.358711, -0.932692, 0.037582,
		42.291798, 39.036255, 33.991093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.493938, 39.765945, 33.464478>,  <42.040699, 39.689140, 33.964783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.493938, 39.765945, 33.464478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.561550, 39.372974, 33.496151>,  <42.602119, 39.137192, 33.515156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.561550, 39.372974, 33.496151>,  <42.493938, 39.765945, 33.464478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.561550, 39.372974, 33.496151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490100, 0.014081, -0.871553,
		0.855120, 0.186128, 0.483866,
		0.169034, -0.982424, 0.079181,
		42.612259, 39.078247, 33.519905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.231960, 39.625210, 33.449230>,  <42.493938, 39.765945, 33.464478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.231960, 39.625210, 33.449230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.028950, 39.310036, 33.309757>,  <42.907143, 39.120930, 33.226074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.028950, 39.310036, 33.309757>,  <43.231960, 39.625210, 33.449230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.028950, 39.310036, 33.309757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541806, 0.022819, -0.840193,
		0.669976, -0.615333, 0.415328,
		-0.507522, -0.787937, -0.348679,
		42.876694, 39.073654, 33.205154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.730579, 39.331123, 33.154144>,  <43.231960, 39.625210, 33.449230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.730579, 39.331123, 33.154144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.432156, 39.104809, 33.013699>,  <43.253101, 38.969021, 32.929432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.432156, 39.104809, 33.013699>,  <43.730579, 39.331123, 33.154144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.432156, 39.104809, 33.013699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553792, -0.234407, -0.798979,
		0.369750, -0.790528, 0.488211,
		-0.746056, -0.565790, -0.351117,
		43.208340, 38.935070, 32.908363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.943222, 38.663727, 32.938076>,  <43.730579, 39.331123, 33.154144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.943222, 38.663727, 32.938076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.600559, 38.732361, 32.743469>,  <43.394962, 38.773540, 32.626705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.600559, 38.732361, 32.743469>,  <43.943222, 38.663727, 32.938076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.600559, 38.732361, 32.743469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486940, -0.042538, -0.872399,
		-0.170389, -0.984250, -0.047114,
		-0.856655, 0.171589, -0.486518,
		43.343563, 38.783836, 32.597515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.900696, 38.162720, 32.476898>,  <43.943222, 38.663727, 32.938076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.900696, 38.162720, 32.476898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.670761, 38.453857, 32.327335>,  <43.532799, 38.628540, 32.237598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.670761, 38.453857, 32.327335>,  <43.900696, 38.162720, 32.476898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.670761, 38.453857, 32.327335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526134, -0.021202, -0.850138,
		-0.626695, -0.685414, -0.370756,
		-0.574836, 0.727844, -0.373907,
		43.498310, 38.672211, 32.215164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.705750, 37.848522, 31.835323>,  <43.900696, 38.162720, 32.476898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.705750, 37.848522, 31.835323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.668812, 38.246586, 31.821901>,  <43.646648, 38.485424, 31.813848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.668812, 38.246586, 31.821901>,  <43.705750, 37.848522, 31.835323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.668812, 38.246586, 31.821901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274097, -0.006992, -0.961677,
		-0.957258, -0.098000, -0.272125,
		-0.092342, 0.995162, -0.033555,
		43.641109, 38.545135, 31.811834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.384102, 38.077965, 31.212360>,  <43.705750, 37.848522, 31.835323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.384102, 38.077965, 31.212360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.605915, 38.379707, 31.352898>,  <43.739002, 38.560753, 31.437220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.605915, 38.379707, 31.352898>,  <43.384102, 38.077965, 31.212360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.605915, 38.379707, 31.352898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469623, 0.064863, -0.880481,
		-0.686983, 0.653257, -0.318293,
		0.554535, 0.754353, 0.351344,
		43.772274, 38.606014, 31.458302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.454979, 38.626190, 30.731022>,  <43.384102, 38.077965, 31.212360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.454979, 38.626190, 30.731022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.795319, 38.656223, 30.939032>,  <43.999523, 38.674244, 31.063837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.795319, 38.656223, 30.939032>,  <43.454979, 38.626190, 30.731022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.795319, 38.656223, 30.939032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524897, -0.165387, -0.834943,
		0.023318, 0.983367, -0.180128,
		0.850846, 0.075079, 0.520022,
		44.050571, 38.678745, 31.095037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.871857, 39.111576, 30.325768>,  <43.454979, 38.626190, 30.731022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.871857, 39.111576, 30.325768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.144562, 38.877350, 30.501177>,  <44.308186, 38.736813, 30.606422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.144562, 38.877350, 30.501177>,  <43.871857, 39.111576, 30.325768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.144562, 38.877350, 30.501177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477653, -0.097730, -0.873096,
		0.554116, 0.804709, 0.213070,
		0.681765, -0.585570, 0.438525,
		44.349091, 38.701679, 30.632734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.942020, 39.865967, 30.295147>,  <43.871857, 39.111576, 30.325768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.942020, 39.865967, 30.295147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.241302, 39.635086, 30.426004>,  <44.420872, 39.496555, 30.504519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.241302, 39.635086, 30.426004>,  <43.942020, 39.865967, 30.295147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.241302, 39.635086, 30.426004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475529, 0.122690, -0.871102,
		0.462668, 0.807330, 0.366275,
		0.748205, -0.577206, 0.327145,
		44.465763, 39.461926, 30.524147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.600758, 40.218151, 30.242048>,  <43.942020, 39.865967, 30.295147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.600758, 40.218151, 30.242048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.650368, 39.822113, 30.215746>,  <44.680134, 39.584488, 30.199965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.650368, 39.822113, 30.215746>,  <44.600758, 40.218151, 30.242048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.650368, 39.822113, 30.215746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433810, 0.113702, -0.893801,
		0.892428, 0.082325, 0.443616,
		0.124022, -0.990098, -0.065757,
		44.687572, 39.525085, 30.196018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.228962, 40.181580, 30.027222>,  <44.600758, 40.218151, 30.242048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.228962, 40.181580, 30.027222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.056061, 39.828888, 29.951633>,  <44.952320, 39.617271, 29.906281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.056061, 39.828888, 29.951633>,  <45.228962, 40.181580, 30.027222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.056061, 39.828888, 29.951633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405439, -0.002851, -0.914118,
		0.805465, -0.471748, 0.358720,
		-0.432256, -0.881729, -0.188969,
		44.926384, 39.564369, 29.894943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.599243, 39.864212, 29.536015>,  <45.228962, 40.181580, 30.027222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.599243, 39.864212, 29.536015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.298306, 39.604790, 29.489801>,  <45.117741, 39.449135, 29.462074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.298306, 39.604790, 29.489801>,  <45.599243, 39.864212, 29.536015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.298306, 39.604790, 29.489801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266170, -0.138843, -0.953874,
		0.602601, -0.748396, 0.277084,
		-0.752347, -0.648557, -0.115533,
		45.072601, 39.410221, 29.455141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.848354, 39.244846, 29.167198>,  <45.599243, 39.864212, 29.536015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.848354, 39.244846, 29.167198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.452671, 39.277065, 29.118246>,  <45.215260, 39.296398, 29.088875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.452671, 39.277065, 29.118246>,  <45.848354, 39.244846, 29.167198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.452671, 39.277065, 29.118246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104398, -0.198533, -0.974518,
		-0.102788, -0.976779, 0.187982,
		-0.989210, 0.080544, -0.122380,
		45.155907, 39.301228, 29.081532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.763565, 38.741535, 28.818419>,  <45.848354, 39.244846, 29.167198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.763565, 38.741535, 28.818419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.448959, 38.978867, 28.749874>,  <45.260197, 39.121265, 28.708748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.448959, 38.978867, 28.749874>,  <45.763565, 38.741535, 28.818419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.448959, 38.978867, 28.749874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020690, -0.252005, -0.967505,
		-0.617229, -0.764499, 0.185929,
		-0.786511, 0.593325, -0.171362,
		45.213005, 39.156864, 28.698465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.204468, 38.359524, 28.570137>,  <45.763565, 38.741535, 28.818419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.204468, 38.359524, 28.570137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.108570, 38.726902, 28.444292>,  <45.051029, 38.947330, 28.368786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.108570, 38.726902, 28.444292>,  <45.204468, 38.359524, 28.570137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.108570, 38.726902, 28.444292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187119, -0.274270, -0.943272,
		-0.952632, -0.285015, -0.106104,
		-0.239746, 0.918446, -0.314611,
		45.036648, 39.002434, 28.349909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.722481, 38.335743, 27.978338>,  <45.204468, 38.359524, 28.570137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.722481, 38.335743, 27.978338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.893139, 38.692753, 27.919870>,  <44.995533, 38.906960, 27.884789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.893139, 38.692753, 27.919870>,  <44.722481, 38.335743, 27.978338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.893139, 38.692753, 27.919870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062690, -0.190415, -0.979700,
		-0.902243, 0.408822, -0.137193,
		0.426646, 0.892528, -0.146171,
		45.021133, 38.960510, 27.876019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.380852, 38.531975, 27.332310>,  <44.722481, 38.335743, 27.978338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.380852, 38.531975, 27.332310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.730286, 38.692410, 27.442572>,  <44.939945, 38.788670, 27.508728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.730286, 38.692410, 27.442572>,  <44.380852, 38.531975, 27.332310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.730286, 38.692410, 27.442572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349377, -0.122525, -0.928937,
		-0.338808, 0.907810, -0.247166,
		0.873582, 0.401085, 0.275655,
		44.992359, 38.812737, 27.525269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.827778, 38.477009, 26.795336>,  <44.380852, 38.531975, 27.332310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.827778, 38.477009, 26.795336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.059452, 38.684090, 27.047216>,  <45.198456, 38.808338, 27.198345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.059452, 38.684090, 27.047216>,  <44.827778, 38.477009, 26.795336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.059452, 38.684090, 27.047216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734490, 0.003701, -0.678609,
		-0.353651, 0.855550, -0.378107,
		0.579185, 0.517707, 0.629702,
		45.233208, 38.839401, 27.236128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.557987, 38.446545, 27.018593>,  <44.827778, 38.477009, 26.795336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.557987, 38.446545, 27.018593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.493061, 38.821327, 26.894810>,  <45.454105, 39.046196, 26.820539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.493061, 38.821327, 26.894810>,  <45.557987, 38.446545, 27.018593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.493061, 38.821327, 26.894810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397776, 0.224873, 0.889498,
		0.903011, 0.267470, 0.336200,
		-0.162311, 0.936959, -0.309456,
		45.444366, 39.102413, 26.801973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.855545, 38.902866, 27.450399>,  <45.557987, 38.446545, 27.018593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.855545, 38.902866, 27.450399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.577785, 39.128704, 27.271940>,  <45.411129, 39.264206, 27.164865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.577785, 39.128704, 27.271940>,  <45.855545, 38.902866, 27.450399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.577785, 39.128704, 27.271940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301455, 0.334731, 0.892793,
		0.653408, 0.754444, -0.062235,
		-0.694394, 0.564597, -0.446147,
		45.369469, 39.298084, 27.138096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.854115, 39.604900, 27.574446>,  <45.855545, 38.902866, 27.450399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.854115, 39.604900, 27.574446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.479137, 39.492641, 27.492050>,  <45.254150, 39.425285, 27.442614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.479137, 39.492641, 27.492050>,  <45.854115, 39.604900, 27.574446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.479137, 39.492641, 27.492050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286951, 0.287896, 0.913660,
		-0.197115, 0.915616, -0.350419,
		-0.937446, -0.280649, -0.205989,
		45.197903, 39.408447, 27.430254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.425087, 40.140224, 27.808090>,  <45.854115, 39.604900, 27.574446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.425087, 40.140224, 27.808090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.242821, 39.784168, 27.809744>,  <45.133461, 39.570534, 27.810736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.242821, 39.784168, 27.809744>,  <45.425087, 40.140224, 27.808090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.242821, 39.784168, 27.809744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401893, 0.209867, 0.891313,
		-0.794262, 0.404478, -0.453371,
		-0.455664, -0.890142, 0.004133,
		45.106121, 39.517124, 27.810984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.761383, 40.195316, 27.969833>,  <45.425087, 40.140224, 27.808090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.761383, 40.195316, 27.969833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.840855, 39.819344, 28.080866>,  <44.888538, 39.593758, 28.147486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.840855, 39.819344, 28.080866>,  <44.761383, 40.195316, 27.969833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.840855, 39.819344, 28.080866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374661, 0.188871, 0.907720,
		-0.905624, -0.284344, -0.314632,
		0.198680, -0.939934, 0.277579,
		44.900459, 39.537365, 28.164139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.199196, 39.869183, 28.460083>,  <44.761383, 40.195316, 27.969833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.199196, 39.869183, 28.460083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.515644, 39.635666, 28.533094>,  <44.705513, 39.495556, 28.576900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.515644, 39.635666, 28.533094>,  <44.199196, 39.869183, 28.460083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.515644, 39.635666, 28.533094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320589, -0.141618, 0.936572,
		-0.520912, -0.799459, -0.299194,
		0.791122, -0.583789, 0.182527,
		44.752979, 39.460529, 28.587852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.926376, 39.280140, 28.712410>,  <44.199196, 39.869183, 28.460083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.926376, 39.280140, 28.712410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.307232, 39.288563, 28.834391>,  <44.535744, 39.293617, 28.907579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.307232, 39.288563, 28.834391>,  <43.926376, 39.280140, 28.712410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.307232, 39.288563, 28.834391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290249, -0.250662, 0.923539,
		0.095886, -0.967846, -0.232553,
		0.952135, 0.021056, 0.304951,
		44.592873, 39.294880, 28.925877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.928337, 38.845547, 29.172680>,  <43.926376, 39.280140, 28.712410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.928337, 38.845547, 29.172680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.268478, 39.028759, 29.276304>,  <44.472561, 39.138687, 29.338480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.268478, 39.028759, 29.276304>,  <43.928337, 38.845547, 29.172680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.268478, 39.028759, 29.276304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158275, -0.246888, 0.956031,
		0.501853, -0.853963, -0.137446,
		0.850349, 0.458032, 0.259062,
		44.523582, 39.166168, 29.354023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.208752, 38.419144, 29.644749>,  <43.928337, 38.845547, 29.172680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.208752, 38.419144, 29.644749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.394848, 38.764519, 29.722748>,  <44.506504, 38.971745, 29.769548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.394848, 38.764519, 29.722748>,  <44.208752, 38.419144, 29.644749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.394848, 38.764519, 29.722748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018463, -0.210779, 0.977359,
		0.884993, -0.458304, -0.082120,
		0.465237, 0.863441, 0.195000,
		44.534420, 39.023552, 29.781248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.659836, 38.230854, 30.128502>,  <44.208752, 38.419144, 29.644749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.659836, 38.230854, 30.128502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.636559, 38.629181, 30.156700>,  <44.622593, 38.868176, 30.173618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.636559, 38.629181, 30.156700>,  <44.659836, 38.230854, 30.128502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.636559, 38.629181, 30.156700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214927, -0.081458, 0.973227,
		0.974895, 0.041488, 0.218767,
		-0.058197, 0.995813, 0.070496,
		44.619099, 38.927925, 30.177849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.921799, 38.330940, 30.747732>,  <44.659836, 38.230854, 30.128502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.921799, 38.330940, 30.747732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.704613, 38.650131, 30.643108>,  <44.574299, 38.841648, 30.580334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.704613, 38.650131, 30.643108>,  <44.921799, 38.330940, 30.747732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.704613, 38.650131, 30.643108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158863, 0.208239, 0.965090,
		0.824590, 0.565564, 0.013703,
		-0.542967, 0.797981, -0.261559,
		44.541721, 38.889526, 30.564640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.089756, 38.841171, 31.172388>,  <44.921799, 38.330940, 30.747732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.089756, 38.841171, 31.172388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.712700, 38.917973, 31.063166>,  <44.486465, 38.964054, 30.997631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.712700, 38.917973, 31.063166>,  <45.089756, 38.841171, 31.172388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.712700, 38.917973, 31.063166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259880, 0.091256, 0.961319,
		0.209499, 0.977142, -0.036123,
		-0.942641, 0.192007, -0.273057,
		44.429909, 38.975574, 30.981249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.909351, 39.167706, 31.705780>,  <45.089756, 38.841171, 31.172388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.909351, 39.167706, 31.705780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.565857, 39.128502, 31.504597>,  <44.359760, 39.104980, 31.383886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.565857, 39.128502, 31.504597>,  <44.909351, 39.167706, 31.705780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.565857, 39.128502, 31.504597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502919, -0.026915, 0.863914,
		-0.098206, 0.994822, -0.026177,
		-0.858736, -0.098006, -0.502958,
		44.308235, 39.099098, 31.353710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.412594, 39.673450, 31.882296>,  <44.909351, 39.167706, 31.705780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.412594, 39.673450, 31.882296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.225494, 39.343864, 31.754362>,  <44.113235, 39.146114, 31.677601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.225494, 39.343864, 31.754362>,  <44.412594, 39.673450, 31.882296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.225494, 39.343864, 31.754362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558432, -0.004985, 0.829535,
		-0.685101, 0.566622, -0.457796,
		-0.467750, -0.823963, -0.319835,
		44.085171, 39.096676, 31.658411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.823498, 39.840397, 31.890280>,  <44.412594, 39.673450, 31.882296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.823498, 39.840397, 31.890280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.772732, 39.443630, 31.890062>,  <43.742271, 39.205570, 31.889933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.772732, 39.443630, 31.890062>,  <43.823498, 39.840397, 31.890280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.772732, 39.443630, 31.890062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555757, 0.070658, 0.828337,
		-0.821600, 0.105432, -0.560230,
		-0.126918, -0.991913, -0.000542,
		43.734657, 39.146057, 31.889900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.041069, 39.730938, 32.028687>,  <43.823498, 39.840397, 31.890280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.041069, 39.730938, 32.028687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.274178, 39.416893, 32.112564>,  <43.414043, 39.228466, 32.162891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.274178, 39.416893, 32.112564>,  <43.041069, 39.730938, 32.028687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.274178, 39.416893, 32.112564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457484, -0.103706, 0.883150,
		-0.671625, -0.610610, -0.419614,
		0.582776, -0.785112, 0.209692,
		43.449009, 39.181358, 32.175472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.478046, 39.378994, 31.689318>,  <43.041069, 39.730938, 32.028687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.478046, 39.378994, 31.689318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.778099, 39.167667, 31.848408>,  <42.958130, 39.040871, 31.943861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.778099, 39.167667, 31.848408>,  <42.478046, 39.378994, 31.689318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.778099, 39.167667, 31.848408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585887, -0.252059, 0.770197,
		-0.306656, -0.810772, -0.498609,
		0.750133, -0.528314, 0.397725,
		43.003139, 39.009174, 31.967726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.213535, 38.820801, 31.985176>,  <42.478046, 39.378994, 31.689318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.213535, 38.820801, 31.985176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.572594, 38.799656, 32.160194>,  <42.788029, 38.786968, 32.265205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.572594, 38.799656, 32.160194>,  <42.213535, 38.820801, 31.985176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.572594, 38.799656, 32.160194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428806, -0.334074, 0.839357,
		0.101804, -0.941064, -0.322545,
		0.897642, -0.052860, 0.437544,
		42.841885, 38.783798, 32.291458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.072330, 38.368984, 32.546200>,  <42.213535, 38.820801, 31.985176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.072330, 38.368984, 32.546200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.428169, 38.512821, 32.658848>,  <42.641674, 38.599125, 32.726437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.428169, 38.512821, 32.658848>,  <42.072330, 38.368984, 32.546200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.428169, 38.512821, 32.658848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244844, -0.145070, 0.958648,
		0.385579, -0.921763, -0.041009,
		0.889596, 0.359594, 0.281624,
		42.695049, 38.620701, 32.743336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.475502, 37.873062, 32.990181>,  <42.072330, 38.368984, 32.546200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.475502, 37.873062, 32.990181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.573055, 38.254406, 33.061321>,  <42.631588, 38.483212, 33.104004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.573055, 38.254406, 33.061321>,  <42.475502, 37.873062, 32.990181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.573055, 38.254406, 33.061321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194689, -0.131526, 0.972007,
		0.950061, -0.271686, 0.153531,
		0.243887, 0.953356, 0.177852,
		42.646221, 38.540413, 33.114677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.325344, 37.877449, 33.609367>,  <42.475502, 37.873062, 32.990181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.325344, 37.877449, 33.609367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.484322, 38.244259, 33.596039>,  <42.579708, 38.464344, 33.588043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.484322, 38.244259, 33.596039>,  <42.325344, 37.877449, 33.609367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.484322, 38.244259, 33.596039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128963, 0.091770, 0.987394,
		0.908521, -0.388133, 0.154734,
		0.397440, 0.917023, -0.033320,
		42.603554, 38.519367, 33.586044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.869156, 37.905788, 34.198586>,  <42.325344, 37.877449, 33.609367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.869156, 37.905788, 34.198586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.678204, 38.245506, 34.108425>,  <42.563633, 38.449337, 34.054329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.678204, 38.245506, 34.108425>,  <42.869156, 37.905788, 34.198586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.678204, 38.245506, 34.108425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263457, 0.106369, 0.958789,
		0.838272, 0.517088, 0.172975,
		-0.477379, 0.849297, -0.225397,
		42.534988, 38.500294, 34.040806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.913235, 38.274040, 34.841610>,  <42.869156, 37.905788, 34.198586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.913235, 38.274040, 34.841610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.620533, 38.456635, 34.639164>,  <42.444912, 38.566193, 34.517696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.620533, 38.456635, 34.639164>,  <42.913235, 38.274040, 34.841610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.620533, 38.456635, 34.639164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501157, 0.142902, 0.853476,
		0.461925, 0.878179, 0.124202,
		-0.731756, 0.456487, -0.506116,
		42.401005, 38.593582, 34.487328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.871300, 38.929325, 35.138458>,  <42.913235, 38.274040, 34.841610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.871300, 38.929325, 35.138458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.520390, 38.821156, 34.979836>,  <42.309845, 38.756256, 34.884663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.520390, 38.821156, 34.979836>,  <42.871300, 38.929325, 35.138458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.520390, 38.821156, 34.979836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418967, 0.028287, 0.907561,
		-0.234204, 0.962327, -0.138113,
		-0.877277, -0.270419, -0.396559,
		42.257206, 38.740028, 34.860867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.321033, 39.289326, 35.485592>,  <42.871300, 38.929325, 35.138458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.321033, 39.289326, 35.485592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.106167, 39.001171, 35.310097>,  <41.977249, 38.828278, 35.204800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.106167, 39.001171, 35.310097>,  <42.321033, 39.289326, 35.485592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.106167, 39.001171, 35.310097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558779, -0.085719, 0.824875,
		-0.631841, 0.688251, -0.356494,
		-0.537162, -0.720391, -0.438740,
		41.945019, 38.785053, 35.178474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.616074, 39.429749, 35.738991>,  <42.321033, 39.289326, 35.485592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.616074, 39.429749, 35.738991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.683090, 39.064880, 35.589390>,  <41.723301, 38.845959, 35.499630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.683090, 39.064880, 35.589390>,  <41.616074, 39.429749, 35.738991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.683090, 39.064880, 35.589390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354228, -0.409729, 0.840621,
		-0.920029, -0.008356, -0.391762,
		0.167541, -0.912169, -0.374003,
		41.733353, 38.791229, 35.477188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.965248, 39.093441, 35.640480>,  <41.616074, 39.429749, 35.738991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.965248, 39.093441, 35.640480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.258900, 38.824947, 35.681477>,  <41.435089, 38.663853, 35.706074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.258900, 38.824947, 35.681477>,  <40.965248, 39.093441, 35.640480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.258900, 38.824947, 35.681477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462830, -0.384216, 0.798853,
		-0.496835, -0.633898, -0.592730,
		0.734128, -0.671231, 0.102495,
		41.479137, 38.623577, 35.712227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.555916, 38.504734, 35.853531>,  <40.965248, 39.093441, 35.640480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.555916, 38.504734, 35.853531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.927010, 38.481216, 36.000965>,  <41.149666, 38.467106, 36.089428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.927010, 38.481216, 36.000965>,  <40.555916, 38.504734, 35.853531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.927010, 38.481216, 36.000965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371432, -0.242782, 0.896156,
		0.036795, -0.968297, -0.247076,
		0.927730, -0.058798, 0.368590,
		41.205330, 38.463577, 36.111542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.747299, 37.896629, 36.295315>,  <40.555916, 38.504734, 35.853531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.747299, 37.896629, 36.295315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.976162, 38.205944, 36.404617>,  <41.113480, 38.391533, 36.470200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.976162, 38.205944, 36.404617>,  <40.747299, 37.896629, 36.295315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.976162, 38.205944, 36.404617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469746, 0.035869, 0.882072,
		0.672293, -0.633042, 0.383771,
		0.572155, 0.773286, 0.273254,
		41.147808, 38.437931, 36.486595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.850773, 37.707390, 36.940411>,  <40.747299, 37.896629, 36.295315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.850773, 37.707390, 36.940411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.932556, 38.094051, 36.878738>,  <40.981625, 38.326050, 36.841736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.932556, 38.094051, 36.878738>,  <40.850773, 37.707390, 36.940411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.932556, 38.094051, 36.878738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304985, 0.212573, 0.928330,
		0.930151, -0.142782, 0.338278,
		0.204458, 0.966657, -0.154179,
		40.993893, 38.384048, 36.832485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.566170, 37.395966, 37.065357>,  <40.850773, 37.707390, 36.940411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.566170, 37.395966, 37.065357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.681759, 37.457588, 36.687412>,  <41.751114, 37.494564, 36.460648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.681759, 37.457588, 36.687412>,  <41.566170, 37.395966, 37.065357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.681759, 37.457588, 36.687412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476771, -0.879024, 0.002491,
		-0.830170, -0.451201, -0.327467,
		0.288976, 0.154059, -0.944859,
		41.768452, 37.503807, 36.403954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.264095, 36.826996, 36.570827>,  <41.566170, 37.395966, 37.065357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.264095, 36.826996, 36.570827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.624981, 36.976963, 36.485550>,  <41.841511, 37.066944, 36.434383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.624981, 36.976963, 36.485550>,  <41.264095, 36.826996, 36.570827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.624981, 36.976963, 36.485550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416672, -0.885315, 0.206405,
		-0.111357, -0.275052, -0.954959,
		0.902211, 0.374919, -0.213192,
		41.895645, 37.089439, 36.421593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.464069, 36.413261, 35.911636>,  <41.264095, 36.826996, 36.570827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.464069, 36.413261, 35.911636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.743961, 36.542942, 36.166279>,  <41.911896, 36.620750, 36.319065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.743961, 36.542942, 36.166279>,  <41.464069, 36.413261, 35.911636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.743961, 36.542942, 36.166279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364483, -0.928409, 0.072176,
		0.614430, 0.181528, -0.767804,
		0.699734, 0.324199, 0.636606,
		41.953880, 36.640202, 36.357262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.039574, 36.349655, 35.574593>,  <41.464069, 36.413261, 35.911636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.039574, 36.349655, 35.574593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.088837, 36.332653, 35.971184>,  <42.118393, 36.322453, 36.209137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.088837, 36.332653, 35.971184>,  <42.039574, 36.349655, 35.574593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.088837, 36.332653, 35.971184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517315, -0.849851, -0.100692,
		0.846887, 0.525306, -0.082674,
		0.123155, -0.042507, 0.991477,
		42.125782, 36.319901, 36.268627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.835892, 36.204460, 35.300739>,  <42.039574, 36.349655, 35.574593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.835892, 36.204460, 35.300739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.908386, 36.568531, 35.151756>,  <42.951885, 36.786976, 35.062366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.908386, 36.568531, 35.151756>,  <42.835892, 36.204460, 35.300739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.908386, 36.568531, 35.151756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141448, -0.398913, -0.906014,
		-0.973214, 0.111522, -0.201043,
		0.181239, 0.910182, -0.372453,
		42.962757, 36.841587, 35.040020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.336582, 36.485325, 34.794876>,  <42.835892, 36.204460, 35.300739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.336582, 36.485325, 34.794876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.553490, 36.160587, 34.881451>,  <43.683636, 35.965744, 34.933395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.553490, 36.160587, 34.881451>,  <43.336582, 36.485325, 34.794876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.553490, 36.160587, 34.881451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836952, 0.499302, -0.224075,
		0.073846, 0.302660, 0.950233,
		0.542272, -0.811846, 0.216441,
		43.716171, 35.917034, 34.946384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.973408, 36.644402, 35.270397>,  <43.336582, 36.485325, 34.794876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.973408, 36.644402, 35.270397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.046543, 36.304417, 35.072758>,  <44.090424, 36.100426, 34.954174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.046543, 36.304417, 35.072758>,  <43.973408, 36.644402, 35.270397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.046543, 36.304417, 35.072758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949810, 0.282468, -0.134436,
		0.253834, -0.444724, 0.858947,
		0.182838, -0.849960, -0.494103,
		44.101395, 36.049427, 34.924526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.562561, 36.203316, 35.494835>,  <43.973408, 36.644402, 35.270397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.562561, 36.203316, 35.494835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.493401, 36.155094, 35.103821>,  <44.451904, 36.126160, 34.869213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.493401, 36.155094, 35.103821>,  <44.562561, 36.203316, 35.494835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.493401, 36.155094, 35.103821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951181, 0.237171, -0.197495,
		0.255652, -0.963958, 0.073664,
		-0.172906, -0.120558, -0.977532,
		44.441528, 36.118927, 34.810562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.166023, 36.430466, 35.183517>,  <44.562561, 36.203316, 35.494835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.166023, 36.430466, 35.183517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.373512, 36.642960, 35.451462>,  <45.498005, 36.770458, 35.612228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.373512, 36.642960, 35.451462>,  <45.166023, 36.430466, 35.183517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.373512, 36.642960, 35.451462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838864, -0.165023, -0.518723,
		-0.165023, 0.830995, -0.531238,
		0.518723, 0.531238, 0.669860,
		45.529129, 36.802330, 35.652420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.557476, 35.898464, 34.867626>,  <45.166023, 36.430466, 35.183517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.557476, 35.898464, 34.867626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.771362, 35.910233, 34.529819>,  <45.899693, 35.917294, 34.327133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.771362, 35.910233, 34.529819>,  <45.557476, 35.898464, 34.867626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.771362, 35.910233, 34.529819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612143, -0.702448, 0.363108,
		-0.582547, -0.711126, -0.393622,
		0.534714, 0.029425, -0.844520,
		45.931778, 35.919060, 34.276463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.718861, 35.170002, 34.589939>,  <45.557476, 35.898464, 34.867626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.718861, 35.170002, 34.589939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.003086, 35.403667, 34.433044>,  <46.173622, 35.543865, 34.338909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.003086, 35.403667, 34.433044>,  <45.718861, 35.170002, 34.589939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.003086, 35.403667, 34.433044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700847, -0.637106, 0.320794,
		-0.062500, -0.502844, -0.862115,
		0.710568, 0.584161, -0.392236,
		46.216255, 35.578915, 34.315372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.228245, 34.804642, 34.002373>,  <45.718861, 35.170002, 34.589939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.228245, 34.804642, 34.002373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.373318, 35.097244, 34.233322>,  <46.460361, 35.272804, 34.371891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.373318, 35.097244, 34.233322>,  <46.228245, 34.804642, 34.002373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.373318, 35.097244, 34.233322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807275, -0.556146, 0.197506,
		0.465581, 0.394466, -0.792232,
		0.362687, 0.731504, 0.577374,
		46.482124, 35.316696, 34.406536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.958584, 34.873821, 33.882351>,  <46.228245, 34.804642, 34.002373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.958584, 34.873821, 33.882351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.943920, 35.019035, 34.254772>,  <46.935123, 35.106163, 34.478226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.943920, 35.019035, 34.254772>,  <46.958584, 34.873821, 33.882351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.943920, 35.019035, 34.254772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874572, -0.439124, 0.205656,
		0.483509, 0.821811, -0.301407,
		-0.036655, 0.363038, 0.931053,
		46.932922, 35.127945, 34.534088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.606445, 34.919174, 34.043457>,  <46.958584, 34.873821, 33.882351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.606445, 34.919174, 34.043457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.423531, 34.940388, 34.398552>,  <47.313782, 34.953117, 34.611610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.423531, 34.940388, 34.398552>,  <47.606445, 34.919174, 34.043457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.423531, 34.940388, 34.398552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749815, -0.513755, 0.416934,
		0.478191, 0.856296, 0.195168,
		-0.457287, 0.053034, 0.887736,
		47.286343, 34.956299, 34.664871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.123013, 35.102917, 34.619511>,  <47.606445, 34.919174, 34.043457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.123013, 35.102917, 34.619511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.816879, 34.917686, 34.798325>,  <47.633202, 34.806549, 34.905613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.816879, 34.917686, 34.798325>,  <48.123013, 35.102917, 34.619511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.816879, 34.917686, 34.798325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643110, -0.578340, 0.501929,
		0.026107, 0.671632, 0.740425,
		-0.765329, -0.463071, 0.447032,
		47.587280, 34.778767, 34.932434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<39.562641, 32.295647, 26.915739> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.222519, 32.372849, 26.719887>,  <39.018448, 32.419170, 26.602375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.222519, 32.372849, 26.719887>,  <39.562641, 32.295647, 26.915739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.222519, 32.372849, 26.719887> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399583, 0.368733, 0.839267,
		0.342523, 0.909278, -0.236413,
		-0.850301, 0.193002, -0.489631,
		38.967430, 32.430748, 26.572998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.413822, 32.923000, 27.128019>,  <39.562641, 32.295647, 26.915739>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.413822, 32.923000, 27.128019> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.056175, 32.812782, 26.986811>,  <38.841587, 32.746651, 26.902086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.056175, 32.812782, 26.986811>,  <39.413822, 32.923000, 27.128019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.056175, 32.812782, 26.986811> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440501, 0.399125, 0.804151,
		-0.080682, 0.874513, -0.478244,
		-0.894119, -0.275547, -0.353022,
		38.787941, 32.730118, 26.880905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.056137, 33.476559, 27.332443>,  <39.413822, 32.923000, 27.128019>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.056137, 33.476559, 27.332443> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.807552, 33.173164, 27.253967>,  <38.658401, 32.991127, 27.206882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.807552, 33.173164, 27.253967>,  <39.056137, 33.476559, 27.332443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.807552, 33.173164, 27.253967> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464269, 0.154829, 0.872056,
		-0.631064, 0.633034, -0.448360,
		-0.621461, -0.758483, -0.196191,
		38.621113, 32.945618, 27.195110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.446445, 33.773743, 27.471426>,  <39.056137, 33.476559, 27.332443>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.446445, 33.773743, 27.471426> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.366745, 33.382587, 27.496845>,  <38.318924, 33.147896, 27.512096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.366745, 33.382587, 27.496845>,  <38.446445, 33.773743, 27.471426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.366745, 33.382587, 27.496845> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566428, 0.167848, 0.806837,
		-0.799661, 0.124768, -0.587346,
		-0.199252, -0.977885, 0.063549,
		38.306969, 33.089222, 27.515909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.679871, 33.660038, 27.518198>,  <38.446445, 33.773743, 27.471426>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.679871, 33.660038, 27.518198> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.836609, 33.325089, 27.670652>,  <37.930653, 33.124119, 27.762125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.836609, 33.325089, 27.670652>,  <37.679871, 33.660038, 27.518198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.836609, 33.325089, 27.670652> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608245, 0.075035, 0.790194,
		-0.690283, -0.541463, -0.479924,
		0.391850, -0.837369, 0.381138,
		37.954163, 33.073879, 27.784994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.083168, 33.251850, 27.664486>,  <37.679871, 33.660038, 27.518198>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.083168, 33.251850, 27.664486> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.395641, 33.152897, 27.893766>,  <37.583126, 33.093525, 28.031336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.395641, 33.152897, 27.893766>,  <37.083168, 33.251850, 27.664486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.395641, 33.152897, 27.893766> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567950, 0.099617, 0.817013,
		-0.259216, -0.963783, -0.062683,
		0.781178, -0.247384, 0.573203,
		37.629993, 33.078682, 28.065727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.774387, 32.891041, 28.243296>,  <37.083168, 33.251850, 27.664486>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.774387, 32.891041, 28.243296> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.151821, 32.937866, 28.367191>,  <37.378281, 32.965961, 28.441528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.151821, 32.937866, 28.367191>,  <36.774387, 32.891041, 28.243296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.151821, 32.937866, 28.367191> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330137, 0.260405, 0.907303,
		0.025554, -0.958376, 0.284362,
		0.943587, 0.117064, 0.309741,
		37.434898, 32.972984, 28.460114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.845612, 32.398079, 28.923069>,  <36.774387, 32.891041, 28.243296>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.845612, 32.398079, 28.923069> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.121067, 32.688110, 28.925573>,  <37.286339, 32.862129, 28.927076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.121067, 32.688110, 28.925573>,  <36.845612, 32.398079, 28.923069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.121067, 32.688110, 28.925573> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308432, 0.285095, 0.907519,
		0.656236, -0.626884, 0.419965,
		0.688639, 0.725078, 0.006261,
		37.327660, 32.905632, 28.927452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.295719, 32.384491, 29.605736>,  <36.845612, 32.398079, 28.923069>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.295719, 32.384491, 29.605736> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.331055, 32.750984, 29.449421>,  <37.352257, 32.970879, 29.355633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.331055, 32.750984, 29.449421>,  <37.295719, 32.384491, 29.605736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.331055, 32.750984, 29.449421> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257836, 0.399984, 0.879508,
		0.962142, 0.023062, 0.271573,
		0.088341, 0.916232, -0.390787,
		37.357555, 33.025852, 29.332186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.637531, 32.848873, 30.137453>,  <37.295719, 32.384491, 29.605736>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.637531, 32.848873, 30.137453> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.493088, 33.143738, 29.908998>,  <37.406422, 33.320656, 29.771925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.493088, 33.143738, 29.908998>,  <37.637531, 32.848873, 30.137453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.493088, 33.143738, 29.908998> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167330, 0.551302, 0.817353,
		0.917389, 0.390719, -0.075729,
		-0.361106, 0.737160, -0.571138,
		37.384754, 33.364887, 29.737658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.951427, 33.390892, 30.434652>,  <37.637531, 32.848873, 30.137453>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.951427, 33.390892, 30.434652> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.630039, 33.536854, 30.246489>,  <37.437206, 33.624432, 30.133591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.630039, 33.536854, 30.246489>,  <37.951427, 33.390892, 30.434652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.630039, 33.536854, 30.246489> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127934, 0.665856, 0.735029,
		0.581439, 0.650755, -0.488311,
		-0.803469, 0.364903, -0.470408,
		37.389000, 33.646324, 30.105366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.155895, 34.083519, 30.318939>,  <37.951427, 33.390892, 30.434652>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.155895, 34.083519, 30.318939> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.757481, 34.054958, 30.297716>,  <37.518433, 34.037823, 30.284983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.757481, 34.054958, 30.297716>,  <38.155895, 34.083519, 30.318939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.757481, 34.054958, 30.297716> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088956, 0.800695, 0.592430,
		0.000184, 0.594802, -0.803872,
		-0.996035, -0.071400, -0.053059,
		37.458672, 34.033539, 30.281799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.906761, 34.769550, 30.388126>,  <38.155895, 34.083519, 30.318939>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.906761, 34.769550, 30.388126> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.595978, 34.536736, 30.484100>,  <37.409508, 34.397049, 30.541685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.595978, 34.536736, 30.484100>,  <37.906761, 34.769550, 30.388126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.595978, 34.536736, 30.484100> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302312, 0.679243, 0.668757,
		-0.552211, 0.447064, -0.703702,
		-0.776963, -0.582033, 0.239933,
		37.362888, 34.362125, 30.556080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.447472, 35.223484, 30.496483>,  <37.906761, 34.769550, 30.388126>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.447472, 35.223484, 30.496483> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.273178, 34.897793, 30.649935>,  <37.168602, 34.702377, 30.742006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.273178, 34.897793, 30.649935>,  <37.447472, 35.223484, 30.496483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.273178, 34.897793, 30.649935> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372992, 0.551243, 0.746330,
		-0.819156, 0.182107, -0.543894,
		-0.435730, -0.814228, 0.383629,
		37.142460, 34.653522, 30.765024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.727554, 35.439896, 30.600254>,  <37.447472, 35.223484, 30.496483>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.727554, 35.439896, 30.600254> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.814888, 35.130207, 30.837883>,  <36.867287, 34.944393, 30.980459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.814888, 35.130207, 30.837883>,  <36.727554, 35.439896, 30.600254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.814888, 35.130207, 30.837883> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350886, 0.505763, 0.788088,
		-0.910610, -0.380514, -0.161239,
		0.218330, -0.774217, 0.594070,
		36.880386, 34.897942, 31.016104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.162659, 35.366901, 31.011217>,  <36.727554, 35.439896, 30.600254>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.162659, 35.366901, 31.011217> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.468609, 35.189312, 31.197918>,  <36.652180, 35.082760, 31.309938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.468609, 35.189312, 31.197918>,  <36.162659, 35.366901, 31.011217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.468609, 35.189312, 31.197918> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158611, 0.572462, 0.804444,
		-0.624349, -0.689330, 0.367442,
		0.764874, -0.443973, 0.466751,
		36.698071, 35.056122, 31.337944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.957771, 35.260296, 31.549824>,  <36.162659, 35.366901, 31.011217>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.957771, 35.260296, 31.549824> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.344204, 35.233418, 31.649567>,  <36.576061, 35.217289, 31.709412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.344204, 35.233418, 31.649567>,  <35.957771, 35.260296, 31.549824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.344204, 35.233418, 31.649567> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149296, 0.642540, 0.751567,
		-0.210724, -0.763300, 0.610711,
		0.966078, -0.067196, 0.249356,
		36.634026, 35.213257, 31.724373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.975502, 35.089008, 32.231064>,  <35.957771, 35.260296, 31.549824>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.975502, 35.089008, 32.231064> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.334961, 35.253571, 32.170170>,  <36.550636, 35.352306, 32.133633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.334961, 35.253571, 32.170170>,  <35.975502, 35.089008, 32.231064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.334961, 35.253571, 32.170170> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114512, 0.555009, 0.823925,
		0.423458, -0.722987, 0.545869,
		0.898649, 0.411406, -0.152232,
		36.604557, 35.376991, 32.124500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.386696, 35.066605, 32.889881>,  <35.975502, 35.089008, 32.231064>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.386696, 35.066605, 32.889881> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.566326, 35.342728, 32.662971>,  <36.674103, 35.508404, 32.526825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.566326, 35.342728, 32.662971>,  <36.386696, 35.066605, 32.889881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.566326, 35.342728, 32.662971> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054298, 0.612639, 0.788496,
		0.891844, -0.384894, 0.237637,
		0.449073, 0.690312, -0.567277,
		36.701050, 35.549820, 32.492790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.995258, 35.394119, 33.284637>,  <36.386696, 35.066605, 32.889881>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.995258, 35.394119, 33.284637> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.892998, 35.658298, 33.002232>,  <36.831642, 35.816807, 32.832790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.892998, 35.658298, 33.002232>,  <36.995258, 35.394119, 33.284637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.892998, 35.658298, 33.002232> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091832, 0.743569, 0.662324,
		0.962397, 0.104493, -0.250748,
		-0.255656, 0.660445, -0.706012,
		36.816299, 35.856430, 32.790428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.426201, 35.920353, 33.403694>,  <36.995258, 35.394119, 33.284637>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.426201, 35.920353, 33.403694> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.118923, 36.069145, 33.195267>,  <36.934559, 36.158421, 33.070210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.118923, 36.069145, 33.195267>,  <37.426201, 35.920353, 33.403694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.118923, 36.069145, 33.195267> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057345, 0.850598, 0.522681,
		0.637646, 0.371639, -0.674753,
		-0.768192, 0.371979, -0.521069,
		36.888466, 36.180740, 33.038944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.863827, 35.387325, 33.623474>,  <37.426201, 35.920353, 33.403694>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.863827, 35.387325, 33.623474> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.186584, 35.603851, 33.718044>,  <38.380238, 35.733768, 33.774784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.186584, 35.603851, 33.718044>,  <37.863827, 35.387325, 33.623474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.186584, 35.603851, 33.718044> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454056, -0.312387, -0.834415,
		-0.377828, 0.780634, -0.497852,
		0.806895, 0.541318, 0.236423,
		38.428654, 35.766247, 33.788971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.025467, 35.715912, 33.036709>,  <37.863827, 35.387325, 33.623474>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.025467, 35.715912, 33.036709> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.359646, 35.717251, 33.256531>,  <38.560154, 35.718056, 33.388424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.359646, 35.717251, 33.256531>,  <38.025467, 35.715912, 33.036709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.359646, 35.717251, 33.256531> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529442, -0.273038, -0.803207,
		0.147358, 0.961997, -0.229884,
		0.835450, 0.003352, 0.549556,
		38.610279, 35.718258, 33.421398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.519279, 36.016155, 32.598225>,  <38.025467, 35.715912, 33.036709>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.519279, 36.016155, 32.598225> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.722401, 35.815479, 32.878353>,  <38.844273, 35.695076, 33.046429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.722401, 35.815479, 32.878353>,  <38.519279, 36.016155, 32.598225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.722401, 35.815479, 32.878353> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577851, -0.404564, -0.708813,
		0.638927, 0.764617, 0.084463,
		0.507800, -0.501686, 0.700322,
		38.874741, 35.664974, 33.088451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.207073, 36.157894, 32.562927>,  <38.519279, 36.016155, 32.598225>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.207073, 36.157894, 32.562927> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.196575, 35.805729, 32.752316>,  <39.190277, 35.594429, 32.865948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.196575, 35.805729, 32.752316>,  <39.207073, 36.157894, 32.562927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.196575, 35.805729, 32.752316> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537927, -0.411654, -0.735647,
		0.842583, 0.235387, 0.484404,
		-0.026245, -0.880417, 0.473473,
		39.188702, 35.541603, 32.894356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.929142, 35.914074, 32.638901>,  <39.207073, 36.157894, 32.562927>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.929142, 35.914074, 32.638901> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.727650, 35.570190, 32.672749>,  <39.606754, 35.363861, 32.693058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.727650, 35.570190, 32.672749>,  <39.929142, 35.914074, 32.638901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.727650, 35.570190, 32.672749> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687416, -0.458241, -0.563449,
		0.523178, -0.225655, 0.821806,
		-0.503730, -0.859707, 0.084622,
		39.576530, 35.312279, 32.698135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.438938, 35.373341, 32.700832>,  <39.929142, 35.914074, 32.638901>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.438938, 35.373341, 32.700832> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.106602, 35.186420, 32.579945>,  <39.907200, 35.074268, 32.507412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.106602, 35.186420, 32.579945>,  <40.438938, 35.373341, 32.700832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.106602, 35.186420, 32.579945> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528836, -0.493828, -0.690266,
		0.173318, -0.733324, 0.657417,
		-0.830839, -0.467301, -0.302219,
		39.857349, 35.046230, 32.489281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.644485, 34.711166, 32.574673>,  <40.438938, 35.373341, 32.700832>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.644485, 34.711166, 32.574673> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.303398, 34.708912, 32.365738>,  <40.098743, 34.707561, 32.240379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.303398, 34.708912, 32.365738>,  <40.644485, 34.711166, 32.574673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.303398, 34.708912, 32.365738> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455894, -0.496159, -0.738910,
		-0.254997, -0.868214, 0.425654,
		-0.852723, -0.005633, -0.522332,
		40.047581, 34.707222, 32.209038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.607548, 34.133118, 32.246056>,  <40.644485, 34.711166, 32.574673>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.607548, 34.133118, 32.246056> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.328934, 34.312275, 32.021832>,  <40.161766, 34.419769, 31.887297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.328934, 34.312275, 32.021832>,  <40.607548, 34.133118, 32.246056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.328934, 34.312275, 32.021832> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328322, -0.495707, -0.804039,
		-0.638000, -0.744086, 0.198223,
		-0.696535, 0.447896, -0.560561,
		40.119972, 34.446644, 31.853662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.324753, 33.601196, 31.881832>,  <40.607548, 34.133118, 32.246056>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.324753, 33.601196, 31.881832> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.208637, 33.925648, 31.678736>,  <40.138969, 34.120319, 31.556879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.208637, 33.925648, 31.678736>,  <40.324753, 33.601196, 31.881832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.208637, 33.925648, 31.678736> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199473, -0.467642, -0.861117,
		-0.935919, -0.351250, -0.026049,
		-0.290286, 0.811132, -0.507740,
		40.121552, 34.168987, 31.526413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.876949, 33.361794, 31.330574>,  <40.324753, 33.601196, 31.881832>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.876949, 33.361794, 31.330574> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.017216, 33.723484, 31.233078>,  <40.101376, 33.940498, 31.174580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.017216, 33.723484, 31.233078>,  <39.876949, 33.361794, 31.330574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.017216, 33.723484, 31.233078> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163745, -0.315460, -0.934705,
		-0.922074, 0.287858, -0.258683,
		0.350667, 0.904225, -0.243742,
		40.122417, 33.994751, 31.159956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.635963, 33.483696, 30.715000>,  <39.876949, 33.361794, 31.330574>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.635963, 33.483696, 30.715000> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.944878, 33.735359, 30.750179>,  <40.130226, 33.886356, 30.771286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.944878, 33.735359, 30.750179>,  <39.635963, 33.483696, 30.715000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.944878, 33.735359, 30.750179> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314993, -0.259015, -0.913067,
		-0.551685, 0.732850, -0.398214,
		0.772284, 0.629160, 0.087948,
		40.176563, 33.924107, 30.776564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.779980, 33.859203, 30.135115>,  <39.635963, 33.483696, 30.715000>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.779980, 33.859203, 30.135115> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.141666, 33.915283, 30.296476>,  <40.358677, 33.948933, 30.393293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.141666, 33.915283, 30.296476>,  <39.779980, 33.859203, 30.135115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.141666, 33.915283, 30.296476> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424139, -0.184223, -0.886661,
		-0.049994, 0.972834, -0.226042,
		0.904216, 0.140201, 0.403407,
		40.412930, 33.957344, 30.417498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.094593, 34.311077, 29.750893>,  <39.779980, 33.859203, 30.135115>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.094593, 34.311077, 29.750893> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.405231, 34.140209, 29.936121>,  <40.591614, 34.037689, 30.047258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.405231, 34.140209, 29.936121>,  <40.094593, 34.311077, 29.750893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.405231, 34.140209, 29.936121> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411758, -0.212161, -0.886252,
		0.476823, 0.878929, 0.011126,
		0.776592, -0.427167, 0.463069,
		40.638210, 34.012058, 30.075041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.745895, 34.619530, 29.572760>,  <40.094593, 34.311077, 29.750893>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.745895, 34.619530, 29.572760> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.852779, 34.267326, 29.729376>,  <40.916908, 34.056004, 29.823345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.852779, 34.267326, 29.729376>,  <40.745895, 34.619530, 29.572760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.852779, 34.267326, 29.729376> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619861, -0.154041, -0.769444,
		0.737815, 0.448305, 0.504631,
		0.267211, -0.880508, 0.391540,
		40.932941, 34.003174, 29.846838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.394753, 34.502594, 29.252619>,  <40.745895, 34.619530, 29.572760>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.394753, 34.502594, 29.252619> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.271332, 34.142506, 29.375515>,  <41.197281, 33.926453, 29.449253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.271332, 34.142506, 29.375515>,  <41.394753, 34.502594, 29.252619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.271332, 34.142506, 29.375515> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504802, -0.428731, -0.749243,
		0.806208, -0.076085, 0.586720,
		-0.308551, -0.900223, 0.307238,
		41.178768, 33.872440, 29.467686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.018185, 34.096207, 29.215334>,  <41.394753, 34.502594, 29.252619>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.018185, 34.096207, 29.215334> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.696449, 33.859203, 29.197556>,  <41.503407, 33.717003, 29.186888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.696449, 33.859203, 29.197556>,  <42.018185, 34.096207, 29.215334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.696449, 33.859203, 29.197556> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367305, -0.437036, -0.821028,
		0.467039, -0.676711, 0.569155,
		-0.804340, -0.592505, -0.044446,
		41.455147, 33.681454, 29.184221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.292797, 33.462421, 29.085661>,  <42.018185, 34.096207, 29.215334>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.292797, 33.462421, 29.085661> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.912285, 33.427540, 28.967371>,  <41.683975, 33.406609, 28.896397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.912285, 33.427540, 28.967371>,  <42.292797, 33.462421, 29.085661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.912285, 33.427540, 28.967371> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301542, -0.463114, -0.833425,
		-0.064272, -0.881998, 0.466850,
		-0.951284, -0.087209, -0.295725,
		41.626900, 33.401379, 28.878653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.144791, 32.796738, 28.950031>,  <42.292797, 33.462421, 29.085661>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.144791, 32.796738, 28.950031> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.848000, 32.947956, 28.728563>,  <41.669926, 33.038689, 28.595682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.848000, 32.947956, 28.728563>,  <42.144791, 32.796738, 28.950031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.848000, 32.947956, 28.728563> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163166, -0.699191, -0.696067,
		-0.650264, -0.606807, 0.457101,
		-0.741980, 0.378044, -0.553669,
		41.625404, 33.061371, 28.562462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.773548, 32.212261, 28.576670>,  <42.144791, 32.796738, 28.950031>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.773548, 32.212261, 28.576670> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.704178, 32.553238, 28.379379>,  <41.662556, 32.757824, 28.261005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.704178, 32.553238, 28.379379>,  <41.773548, 32.212261, 28.576670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.704178, 32.553238, 28.379379> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176904, -0.465703, -0.867079,
		-0.968828, -0.237629, -0.070034,
		-0.173428, 0.852439, -0.493224,
		41.652149, 32.808971, 28.231413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<41.261253, 31.993420, 28.005323> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.400101, 32.347519, 27.881489>,  <41.483410, 32.559978, 27.807188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.400101, 32.347519, 27.881489>,  <41.261253, 31.993420, 28.005323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.400101, 32.347519, 27.881489> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214810, -0.396387, -0.892599,
		-0.912889, 0.243333, -0.327753,
		0.347116, 0.885249, -0.309587,
		41.504234, 32.613094, 27.788612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.852806, 32.177982, 27.367170>,  <41.261253, 31.993420, 28.005323>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.852806, 32.177982, 27.367170> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.166668, 32.423801, 27.334545>,  <41.354984, 32.571293, 27.314970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.166668, 32.423801, 27.334545>,  <40.852806, 32.177982, 27.367170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.166668, 32.423801, 27.334545> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139491, -0.303212, -0.942658,
		-0.604036, 0.728284, -0.323640,
		0.784654, 0.614545, -0.081562,
		41.402065, 32.608166, 27.310076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.714737, 32.582008, 26.879784>,  <40.852806, 32.177982, 27.367170>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.714737, 32.582008, 26.879784> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.114655, 32.580853, 26.887806>,  <41.354607, 32.580158, 26.892620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.114655, 32.580853, 26.887806>,  <40.714737, 32.582008, 26.879784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.114655, 32.580853, 26.887806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019847, -0.059639, -0.998023,
		0.004077, 0.998216, -0.059570,
		0.999795, -0.002887, 0.020055,
		41.414593, 32.579987, 26.893822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.908329, 33.099499, 26.423538>,  <40.714737, 32.582008, 26.879784>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.908329, 33.099499, 26.423538> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.218407, 32.848598, 26.453550>,  <41.404453, 32.698059, 26.471558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.218407, 32.848598, 26.453550>,  <40.908329, 33.099499, 26.423538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.218407, 32.848598, 26.453550> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072712, -0.029383, -0.996920,
		0.627524, 0.778263, 0.022831,
		0.775195, -0.627251, 0.075028,
		41.450966, 32.660423, 26.476059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.476143, 33.391228, 25.964712>,  <40.908329, 33.099499, 26.423538>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.476143, 33.391228, 25.964712> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.614056, 33.018288, 26.008270>,  <41.696804, 32.794525, 26.034405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.614056, 33.018288, 26.008270>,  <41.476143, 33.391228, 25.964712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.614056, 33.018288, 26.008270> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263699, -0.015137, -0.964486,
		0.900884, 0.361249, 0.240640,
		0.344777, -0.932346, 0.108898,
		41.717487, 32.738583, 26.040939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.931835, 33.417850, 25.486927>,  <41.476143, 33.391228, 25.964712>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.931835, 33.417850, 25.486927> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.879498, 33.022820, 25.521740>,  <41.848095, 32.785801, 25.542627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.879498, 33.022820, 25.521740>,  <41.931835, 33.417850, 25.486927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.879498, 33.022820, 25.521740> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062686, -0.079372, -0.994872,
		0.989419, -0.135627, -0.051522,
		-0.130842, -0.987575, 0.087034,
		41.840244, 32.726547, 25.547850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.451653, 33.099014, 25.044210>,  <41.931835, 33.417850, 25.486927>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.451653, 33.099014, 25.044210> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.157745, 32.834343, 25.103945>,  <41.981400, 32.675541, 25.139786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.157745, 32.834343, 25.103945>,  <42.451653, 33.099014, 25.044210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.157745, 32.834343, 25.103945> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056961, -0.159191, -0.985603,
		0.675921, -0.732697, 0.079279,
		-0.734769, -0.661674, 0.149336,
		41.937313, 32.635841, 25.148745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.598106, 32.662804, 24.518488>,  <42.451653, 33.099014, 25.044210>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.598106, 32.662804, 24.518488> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.252132, 32.515953, 24.655376>,  <42.044548, 32.427845, 24.737509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.252132, 32.515953, 24.655376>,  <42.598106, 32.662804, 24.518488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.252132, 32.515953, 24.655376> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126788, -0.499919, -0.856742,
		0.485612, -0.784412, 0.385848,
		-0.864931, -0.367123, 0.342221,
		41.992653, 32.405815, 24.758043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.577152, 32.000290, 24.355263>,  <42.598106, 32.662804, 24.518488>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.577152, 32.000290, 24.355263> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.194031, 32.109158, 24.392227>,  <41.964157, 32.174477, 24.414406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.194031, 32.109158, 24.392227>,  <42.577152, 32.000290, 24.355263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.194031, 32.109158, 24.392227> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198601, -0.394236, -0.897293,
		-0.207781, -0.877783, 0.431653,
		-0.957802, 0.272167, 0.092414,
		41.906689, 32.190807, 24.419950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.237724, 31.415783, 24.265301>,  <42.577152, 32.000290, 24.355263>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.237724, 31.415783, 24.265301> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.995533, 31.717936, 24.165064>,  <41.850220, 31.899227, 24.104921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.995533, 31.717936, 24.165064>,  <42.237724, 31.415783, 24.265301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.995533, 31.717936, 24.165064> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116340, -0.395495, -0.911070,
		-0.787316, -0.522475, 0.327343,
		-0.605474, 0.755383, -0.250595,
		41.813892, 31.944550, 24.089886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.679810, 31.075220, 24.005161>,  <42.237724, 31.415783, 24.265301>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.679810, 31.075220, 24.005161> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.631443, 31.449144, 23.871588>,  <41.602425, 31.673498, 23.791443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.631443, 31.449144, 23.871588>,  <41.679810, 31.075220, 24.005161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.631443, 31.449144, 23.871588> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020515, -0.333977, -0.942358,
		-0.992451, -0.120794, 0.021204,
		-0.120913, 0.934809, -0.333934,
		41.595169, 31.729588, 23.771408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.157600, 30.994505, 23.537144>,  <41.679810, 31.075220, 24.005161>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.157600, 30.994505, 23.537144> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.354061, 31.330879, 23.446280>,  <41.471935, 31.532703, 23.391760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.354061, 31.330879, 23.446280>,  <41.157600, 30.994505, 23.537144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.354061, 31.330879, 23.446280> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118133, -0.322677, -0.939108,
		-0.863029, 0.434405, -0.257824,
		0.491147, 0.840935, -0.227162,
		41.501404, 31.583160, 23.378132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.823959, 31.205114, 22.929853>,  <41.157600, 30.994505, 23.537144>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.823959, 31.205114, 22.929853> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.186432, 31.374239, 22.926615>,  <41.403915, 31.475714, 22.924671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.186432, 31.374239, 22.926615>,  <40.823959, 31.205114, 22.929853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.186432, 31.374239, 22.926615> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120203, -0.275888, -0.953644,
		-0.405444, 0.863202, -0.300828,
		0.906182, 0.422810, -0.008097,
		41.458286, 31.501081, 22.924185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.836342, 31.480350, 22.245939>,  <40.823959, 31.205114, 22.929853>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.836342, 31.480350, 22.245939> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.217457, 31.483471, 22.367350>,  <41.446125, 31.485344, 22.440197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.217457, 31.483471, 22.367350>,  <40.836342, 31.480350, 22.245939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.217457, 31.483471, 22.367350> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294862, -0.262249, -0.918848,
		0.072432, 0.964969, -0.252168,
		0.952791, 0.007801, 0.303528,
		41.503296, 31.485811, 22.458408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.337395, 31.866308, 21.772198>,  <40.836342, 31.480350, 22.245939>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.337395, 31.866308, 21.772198> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.586407, 31.615391, 21.959372>,  <41.735813, 31.464840, 22.071676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.586407, 31.615391, 21.959372>,  <41.337395, 31.866308, 21.772198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.586407, 31.615391, 21.959372> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385370, -0.274693, -0.880928,
		0.681139, 0.728729, 0.070737,
		0.622527, -0.627294, 0.467935,
		41.773163, 31.427202, 22.099752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.940723, 31.900545, 21.392050>,  <41.337395, 31.866308, 21.772198>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.940723, 31.900545, 21.392050> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.957748, 31.541336, 21.567205>,  <41.967964, 31.325811, 21.672298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.957748, 31.541336, 21.567205>,  <41.940723, 31.900545, 21.392050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.957748, 31.541336, 21.567205> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221202, -0.418941, -0.880658,
		0.974299, 0.134343, 0.180814,
		0.042559, -0.898020, 0.437891,
		41.970516, 31.271931, 21.698572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.521717, 31.660864, 21.173138>,  <41.940723, 31.900545, 21.392050>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.521717, 31.660864, 21.173138> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.300476, 31.351282, 21.296471>,  <42.167732, 31.165533, 21.370470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.300476, 31.351282, 21.296471>,  <42.521717, 31.660864, 21.173138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.300476, 31.351282, 21.296471> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136133, -0.449084, -0.883058,
		0.821913, -0.446451, 0.353752,
		-0.553106, -0.773954, 0.308332,
		42.134544, 31.119097, 21.388969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.783096, 31.111303, 20.722088>,  <42.521717, 31.660864, 21.173138>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.783096, 31.111303, 20.722088> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.434708, 30.985281, 20.872902>,  <42.225674, 30.909668, 20.963390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.434708, 30.985281, 20.872902>,  <42.783096, 31.111303, 20.722088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.434708, 30.985281, 20.872902> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163243, -0.538224, -0.826842,
		0.463429, -0.781701, 0.417345,
		-0.870968, -0.315054, 0.377036,
		42.173416, 30.890764, 20.986013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.798763, 30.377995, 20.652790>,  <42.783096, 31.111303, 20.722088>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.798763, 30.377995, 20.652790> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.420807, 30.502808, 20.692429>,  <42.194035, 30.577696, 20.716211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.420807, 30.502808, 20.692429>,  <42.798763, 30.377995, 20.652790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.420807, 30.502808, 20.692429> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229046, -0.413764, -0.881100,
		-0.233929, -0.855240, 0.462431,
		-0.944889, 0.312033, 0.099098,
		42.137341, 30.596418, 20.722158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.409725, 29.806980, 20.490562>,  <42.798763, 30.377995, 20.652790>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.409725, 29.806980, 20.490562> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.150471, 30.105045, 20.427763>,  <41.994919, 30.283884, 20.390083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.150471, 30.105045, 20.427763>,  <42.409725, 29.806980, 20.490562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.150471, 30.105045, 20.427763> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414271, -0.518008, -0.748363,
		-0.638980, -0.420002, 0.644440,
		-0.648139, 0.745162, -0.157002,
		41.956028, 30.328594, 20.380663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.821186, 29.486435, 20.447262>,  <42.409725, 29.806980, 20.490562>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.821186, 29.486435, 20.447262> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.728256, 29.833300, 20.271055>,  <41.672497, 30.041418, 20.165331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.728256, 29.833300, 20.271055>,  <41.821186, 29.486435, 20.447262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.728256, 29.833300, 20.271055> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551942, -0.490461, -0.674394,
		-0.800865, 0.086461, 0.592570,
		-0.232324, 0.867163, -0.440515,
		41.658558, 30.093449, 20.138901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.127281, 29.489204, 20.315434>,  <41.821186, 29.486435, 20.447262>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.127281, 29.489204, 20.315434> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.288246, 29.747862, 20.056229>,  <41.384823, 29.903055, 19.900705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.288246, 29.747862, 20.056229>,  <41.127281, 29.489204, 20.315434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.288246, 29.747862, 20.056229> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512814, -0.427146, -0.744694,
		-0.758346, 0.631982, 0.159720,
		0.402410, 0.646641, -0.648013,
		41.408970, 29.941854, 19.861824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.645004, 29.386549, 19.785898>,  <41.127281, 29.489204, 20.315434>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.645004, 29.386549, 19.785898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.951935, 29.587915, 19.627014>,  <41.136093, 29.708735, 19.531683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.951935, 29.587915, 19.627014>,  <40.645004, 29.386549, 19.785898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.951935, 29.587915, 19.627014> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319053, -0.237599, -0.917470,
		-0.556245, 0.830735, -0.021701,
		0.767331, 0.503414, -0.397212,
		41.182133, 29.738939, 19.507851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.558529, 29.185144, 19.143805>,  <40.645004, 29.386549, 19.785898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.558529, 29.185144, 19.143805> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.248592, 29.428654, 19.075668>,  <40.062630, 29.574759, 19.034786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.248592, 29.428654, 19.075668>,  <40.558529, 29.185144, 19.143805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.248592, 29.428654, 19.075668> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115991, 0.401798, 0.908352,
		0.621423, 0.684071, -0.381942,
		-0.774841, 0.608773, -0.170340,
		40.016140, 29.611286, 19.024567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.700932, 29.891447, 19.247255>,  <40.558529, 29.185144, 19.143805>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.700932, 29.891447, 19.247255> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.307285, 29.856329, 19.308968>,  <40.071098, 29.835258, 19.345995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.307285, 29.856329, 19.308968>,  <40.700932, 29.891447, 19.247255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.307285, 29.856329, 19.308968> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097443, 0.459278, 0.882932,
		-0.148374, 0.883943, -0.443429,
		-0.984119, -0.087795, 0.154280,
		40.012051, 29.829990, 19.355251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.423393, 30.439621, 19.649223>,  <40.700932, 29.891447, 19.247255>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.423393, 30.439621, 19.649223> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.119305, 30.183887, 19.695374>,  <39.936852, 30.030447, 19.723063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.119305, 30.183887, 19.695374>,  <40.423393, 30.439621, 19.649223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.119305, 30.183887, 19.695374> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274790, 0.477366, 0.834633,
		-0.588686, 0.602804, -0.538588,
		-0.760223, -0.639335, 0.115374,
		39.891239, 29.992086, 19.729986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.812832, 30.780428, 19.915115>,  <40.423393, 30.439621, 19.649223>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.812832, 30.780428, 19.915115> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.735203, 30.394424, 19.985651>,  <39.688625, 30.162823, 20.027973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.735203, 30.394424, 19.985651>,  <39.812832, 30.780428, 19.915115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.735203, 30.394424, 19.985651> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446531, 0.246956, 0.860013,
		-0.873467, 0.088165, -0.478834,
		-0.194074, -0.965008, 0.176340,
		39.676979, 30.104921, 20.038553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.173256, 30.844345, 20.144903>,  <39.812832, 30.780428, 19.915115>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.173256, 30.844345, 20.144903> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.337952, 30.500973, 20.267260>,  <39.436768, 30.294949, 20.340673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.337952, 30.500973, 20.267260>,  <39.173256, 30.844345, 20.144903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.337952, 30.500973, 20.267260> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312421, 0.182357, 0.932276,
		-0.856077, -0.479418, -0.193109,
		0.411735, -0.858431, 0.305892,
		39.461472, 30.243443, 20.359028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.632923, 30.462776, 20.483240>,  <39.173256, 30.844345, 20.144903>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.632923, 30.462776, 20.483240> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.980003, 30.308685, 20.608908>,  <39.188251, 30.216230, 20.684309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.980003, 30.308685, 20.608908>,  <38.632923, 30.462776, 20.483240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.980003, 30.308685, 20.608908> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296493, 0.106210, 0.949111,
		-0.398991, -0.916689, -0.022059,
		0.867697, -0.385228, 0.314169,
		39.240311, 30.193117, 20.703157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.374821, 29.984049, 20.919426>,  <38.632923, 30.462776, 20.483240>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.374821, 29.984049, 20.919426> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.751713, 30.101965, 20.983059>,  <38.977848, 30.172714, 21.021238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.751713, 30.101965, 20.983059>,  <38.374821, 29.984049, 20.919426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.751713, 30.101965, 20.983059> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269407, 0.384659, 0.882869,
		0.199065, -0.874722, 0.441854,
		0.942227, 0.294787, 0.159084,
		39.034382, 30.190401, 21.030785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.499271, 29.774853, 21.642298>,  <38.374821, 29.984049, 20.919426>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.499271, 29.774853, 21.642298> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.800091, 30.032686, 21.587250>,  <38.980583, 30.187386, 21.554220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.800091, 30.032686, 21.587250>,  <38.499271, 29.774853, 21.642298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.800091, 30.032686, 21.587250> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096283, 0.313997, 0.944529,
		0.652039, -0.697079, 0.298203,
		0.752047, 0.644582, -0.137622,
		39.025703, 30.226061, 21.545963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.830238, 29.843218, 22.294477>,  <38.499271, 29.774853, 21.642298>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.830238, 29.843218, 22.294477> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.969215, 30.166874, 22.104919>,  <39.052601, 30.361067, 21.991184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.969215, 30.166874, 22.104919>,  <38.830238, 29.843218, 22.294477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.969215, 30.166874, 22.104919> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051008, 0.520940, 0.852068,
		0.936313, -0.271872, 0.222270,
		0.347442, 0.809140, -0.473895,
		39.073448, 30.409616, 21.962751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.325859, 30.169922, 22.773895>,  <38.830238, 29.843218, 22.294477>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.325859, 30.169922, 22.773895> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.246658, 30.453310, 22.502937>,  <39.199139, 30.623343, 22.340363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.246658, 30.453310, 22.502937>,  <39.325859, 30.169922, 22.773895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.246658, 30.453310, 22.502937> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137376, 0.664199, 0.734825,
		0.970527, 0.238554, -0.034186,
		-0.198002, 0.708471, -0.677395,
		39.187260, 30.665852, 22.299719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.750935, 30.674747, 22.917242>,  <39.325859, 30.169922, 22.773895>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.750935, 30.674747, 22.917242> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.454876, 30.848822, 22.712191>,  <39.277241, 30.953266, 22.589159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.454876, 30.848822, 22.712191>,  <39.750935, 30.674747, 22.917242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.454876, 30.848822, 22.712191> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094557, 0.687410, 0.720088,
		0.665760, 0.581446, -0.467636,
		-0.740150, 0.435187, -0.512630,
		39.232830, 30.979378, 22.558401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.913391, 31.383762, 22.820774>,  <39.750935, 30.674747, 22.917242>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.913391, 31.383762, 22.820774> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.518044, 31.416718, 22.769630>,  <39.280834, 31.436491, 22.738945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.518044, 31.416718, 22.769630>,  <39.913391, 31.383762, 22.820774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.518044, 31.416718, 22.769630> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013670, 0.789079, 0.614140,
		0.151488, 0.608742, -0.778771,
		-0.988365, 0.082389, -0.127858,
		39.221535, 31.441435, 22.731274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.765400, 32.105484, 22.791567>,  <39.913391, 31.383762, 22.820774>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.765400, 32.105484, 22.791567> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.447994, 31.891714, 22.907999>,  <39.257549, 31.763453, 22.977858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.447994, 31.891714, 22.907999>,  <39.765400, 32.105484, 22.791567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.447994, 31.891714, 22.907999> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026033, 0.448068, 0.893621,
		-0.607993, 0.716679, -0.341636,
		-0.793515, -0.534421, 0.291079,
		39.209938, 31.731388, 22.995323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.317837, 32.627037, 22.958027>,  <39.765400, 32.105484, 22.791567>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.317837, 32.627037, 22.958027> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.207264, 32.283318, 23.130159>,  <39.140919, 32.077084, 23.233438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.207264, 32.283318, 23.130159>,  <39.317837, 32.627037, 22.958027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.207264, 32.283318, 23.130159> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083318, 0.424664, 0.901509,
		-0.957414, 0.285063, -0.045796,
		-0.276434, -0.859302, 0.430330,
		39.124332, 32.025528, 23.259258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.904514, 32.865299, 23.409866>,  <39.317837, 32.627037, 22.958027>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.904514, 32.865299, 23.409866> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.972805, 32.496437, 23.548706>,  <39.013779, 32.275120, 23.632010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.972805, 32.496437, 23.548706>,  <38.904514, 32.865299, 23.409866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.972805, 32.496437, 23.548706> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075446, 0.339002, 0.937756,
		-0.982426, -0.186286, -0.011697,
		0.170726, -0.922158, 0.347099,
		39.024021, 32.219791, 23.652836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.416630, 32.729000, 23.953648>,  <38.904514, 32.865299, 23.409866>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.416630, 32.729000, 23.953648> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.712990, 32.464539, 24.000872>,  <38.890808, 32.305862, 24.029205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.712990, 32.464539, 24.000872>,  <38.416630, 32.729000, 23.953648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.712990, 32.464539, 24.000872> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022794, 0.150929, 0.988282,
		-0.671227, -0.734911, 0.096753,
		0.740901, -0.661155, 0.118059,
		38.935261, 32.266193, 24.036289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.138802, 32.320244, 24.475208>,  <38.416630, 32.729000, 23.953648>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.138802, 32.320244, 24.475208> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.530941, 32.241341, 24.475063>,  <38.766224, 32.194000, 24.474976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.530941, 32.241341, 24.475063>,  <38.138802, 32.320244, 24.475208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.530941, 32.241341, 24.475063> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023302, 0.113981, 0.993210,
		-0.195877, -0.973703, 0.116338,
		0.980351, -0.197258, -0.000363,
		38.825047, 32.182163, 24.474955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.192097, 31.822550, 24.960388>,  <38.138802, 32.320244, 24.475208>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.192097, 31.822550, 24.960388> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.560783, 31.973942, 24.926470>,  <38.781994, 32.064777, 24.906118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.560783, 31.973942, 24.926470>,  <38.192097, 31.822550, 24.960388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.560783, 31.973942, 24.926470> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071346, 0.049444, 0.996225,
		0.381245, -0.924287, 0.018570,
		0.921717, 0.378481, -0.084795,
		38.837299, 32.087486, 24.901031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.531559, 31.481310, 25.490026>,  <38.192097, 31.822550, 24.960388>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.531559, 31.481310, 25.490026> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.731758, 31.817114, 25.405432>,  <38.851879, 32.018597, 25.354675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.731758, 31.817114, 25.405432>,  <38.531559, 31.481310, 25.490026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.731758, 31.817114, 25.405432> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083983, 0.196051, 0.976991,
		0.861655, -0.506742, 0.027619,
		0.500497, 0.839510, -0.211486,
		38.881908, 32.068966, 25.341986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.110912, 31.417690, 25.934349>,  <38.531559, 31.481310, 25.490026>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.110912, 31.417690, 25.934349> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.079006, 31.804745, 25.838587>,  <39.059864, 32.036980, 25.781130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.079006, 31.804745, 25.838587>,  <39.110912, 31.417690, 25.934349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.079006, 31.804745, 25.838587> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032445, 0.242562, 0.969593,
		0.996285, 0.069573, -0.050744,
		-0.079766, 0.967638, -0.239404,
		39.055077, 32.095036, 25.766766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.662052, 31.801922, 26.313480>,  <39.110912, 31.417690, 25.934349>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.662052, 31.801922, 26.313480> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.377434, 32.068012, 26.222994>,  <39.206661, 32.227669, 26.168701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.377434, 32.068012, 26.222994>,  <39.662052, 31.801922, 26.313480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.377434, 32.068012, 26.222994> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212591, 0.103040, 0.971693,
		0.669707, 0.739496, 0.068104,
		-0.711546, 0.665228, -0.226217,
		39.163971, 32.267582, 26.155128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.540287, 33.294559, 30.666361> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.258106, 33.510269, 30.482395>,  <41.088799, 33.639694, 30.372015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.258106, 33.510269, 30.482395>,  <41.540287, 33.294559, 30.666361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.258106, 33.510269, 30.482395> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102474, 0.564476, 0.819064,
		0.701313, 0.624938, -0.342948,
		-0.705450, 0.539277, -0.459914,
		41.046471, 33.672050, 30.344421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.678242, 34.042885, 30.805807>,  <41.540287, 33.294559, 30.666361>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.678242, 34.042885, 30.805807> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.296169, 34.013103, 30.691204>,  <41.066925, 33.995235, 30.622442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.296169, 34.013103, 30.691204>,  <41.678242, 34.042885, 30.805807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.296169, 34.013103, 30.691204> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289638, 0.434956, 0.852598,
		0.061141, 0.897369, -0.437026,
		-0.955182, -0.074451, -0.286505,
		41.009613, 33.990768, 30.605253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.254513, 34.719780, 30.935156>,  <41.678242, 34.042885, 30.805807>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.254513, 34.719780, 30.935156> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.935223, 34.485138, 30.880407>,  <40.743649, 34.344353, 30.847557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.935223, 34.485138, 30.880407>,  <41.254513, 34.719780, 30.935156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.935223, 34.485138, 30.880407> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487946, 0.496458, 0.717940,
		-0.353193, 0.639865, -0.682516,
		-0.798225, -0.586602, -0.136874,
		40.695755, 34.309158, 30.839346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.648487, 35.151142, 30.765648>,  <41.254513, 34.719780, 30.935156>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.648487, 35.151142, 30.765648> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.504200, 34.799599, 30.890549>,  <40.417629, 34.588673, 30.965488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.504200, 34.799599, 30.890549>,  <40.648487, 35.151142, 30.765648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.504200, 34.799599, 30.890549> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617058, 0.475921, 0.626689,
		-0.699374, 0.033379, -0.713976,
		-0.360714, -0.878854, 0.312250,
		40.395985, 34.535942, 30.984224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.913914, 35.231335, 30.834038>,  <40.648487, 35.151142, 30.765648>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.913914, 35.231335, 30.834038> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.989288, 34.896721, 31.039835>,  <40.034512, 34.695953, 31.163313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.989288, 34.896721, 31.039835>,  <39.913914, 35.231335, 30.834038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.989288, 34.896721, 31.039835> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563852, 0.336777, 0.754090,
		-0.804092, -0.432195, -0.408221,
		0.188434, -0.836534, 0.514493,
		40.045818, 34.645760, 31.194183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.235783, 35.123993, 31.185051>,  <39.913914, 35.231335, 30.834038>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.235783, 35.123993, 31.185051> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.496338, 34.885899, 31.373260>,  <39.652672, 34.743042, 31.486187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.496338, 34.885899, 31.373260>,  <39.235783, 35.123993, 31.185051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.496338, 34.885899, 31.373260> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407277, 0.248925, 0.878727,
		-0.640175, -0.764023, -0.080280,
		0.651384, -0.595236, 0.470524,
		39.691753, 34.707329, 31.514418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.881721, 34.792091, 31.632761>,  <39.235783, 35.123993, 31.185051>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.881721, 34.792091, 31.632761> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.244267, 34.760132, 31.798716>,  <39.461792, 34.740955, 31.898289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.244267, 34.760132, 31.798716>,  <38.881721, 34.792091, 31.632761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.244267, 34.760132, 31.798716> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394385, 0.192272, 0.898606,
		-0.151572, -0.978083, 0.142755,
		0.906359, -0.079903, 0.414884,
		39.516174, 34.736160, 31.923182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.790455, 34.357750, 32.214916>,  <38.881721, 34.792091, 31.632761>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.790455, 34.357750, 32.214916> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.119663, 34.577103, 32.274120>,  <39.317188, 34.708714, 32.309643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.119663, 34.577103, 32.274120>,  <38.790455, 34.357750, 32.214916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.119663, 34.577103, 32.274120> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336301, 0.260449, 0.905024,
		0.457753, -0.794631, 0.398778,
		0.823021, 0.548386, 0.148014,
		39.366570, 34.741619, 32.318523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.890968, 34.269497, 32.904808>,  <38.790455, 34.357750, 32.214916>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.890968, 34.269497, 32.904808> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.109020, 34.597591, 32.835480>,  <39.239853, 34.794449, 32.793880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.109020, 34.597591, 32.835480>,  <38.890968, 34.269497, 32.904808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.109020, 34.597591, 32.835480> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311731, 0.390239, 0.866335,
		0.778241, -0.418233, 0.468425,
		0.545128, 0.820240, -0.173324,
		39.272560, 34.843662, 32.783482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.152889, 34.454388, 33.609070>,  <38.890968, 34.269497, 32.904808>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.152889, 34.454388, 33.609070> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.184364, 34.788410, 33.391266>,  <39.203247, 34.988823, 33.260582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.184364, 34.788410, 33.391266>,  <39.152889, 34.454388, 33.609070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.184364, 34.788410, 33.391266> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296453, 0.541096, 0.786975,
		0.951800, 0.099500, 0.290130,
		0.078684, 0.835054, -0.544513,
		39.207970, 35.038925, 33.227913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.606739, 34.997959, 33.948360>,  <39.152889, 34.454388, 33.609070>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.606739, 34.997959, 33.948360> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.364784, 35.189827, 33.694107>,  <39.219612, 35.304947, 33.541557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.364784, 35.189827, 33.694107>,  <39.606739, 34.997959, 33.948360>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.364784, 35.189827, 33.694107> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277494, 0.621213, 0.732865,
		0.746396, 0.619685, -0.242659,
		-0.604888, 0.479671, -0.635630,
		39.183319, 35.333729, 33.503418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.542847, 35.682159, 34.318382>,  <39.606739, 34.997959, 33.948360>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.542847, 35.682159, 34.318382> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.263332, 35.688004, 34.032310>,  <39.095623, 35.691509, 33.860668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.263332, 35.688004, 34.032310>,  <39.542847, 35.682159, 34.318382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.263332, 35.688004, 34.032310> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515731, 0.682533, 0.517851,
		0.495703, 0.730709, -0.469407,
		-0.698784, 0.014612, -0.715183,
		39.053696, 35.692387, 33.817757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.531151, 36.345722, 34.143280>,  <39.542847, 35.682159, 34.318382>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.531151, 36.345722, 34.143280> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.186321, 36.163269, 34.054943>,  <38.979424, 36.053799, 34.001942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.186321, 36.163269, 34.054943>,  <39.531151, 36.345722, 34.143280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.186321, 36.163269, 34.054943> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506516, 0.789519, 0.346557,
		0.016283, 0.410617, -0.911662,
		-0.862077, -0.456128, -0.220840,
		38.927696, 36.026432, 33.988689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.212894, 36.943333, 34.056858>,  <39.531151, 36.345722, 34.143280>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.212894, 36.943333, 34.056858> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.983017, 36.639256, 34.178070>,  <38.845089, 36.456810, 34.250797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.983017, 36.639256, 34.178070>,  <39.212894, 36.943333, 34.056858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.983017, 36.639256, 34.178070> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570382, 0.637609, 0.517802,
		-0.586846, 0.124735, -0.800033,
		-0.574696, -0.760194, 0.303032,
		38.810608, 36.411198, 34.268978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.467648, 37.371838, 33.561211>,  <39.212894, 36.943333, 34.056858>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.467648, 37.371838, 33.561211> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.665585, 37.719276, 33.571575>,  <39.784348, 37.927738, 33.577793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.665585, 37.719276, 33.571575>,  <39.467648, 37.371838, 33.561211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.665585, 37.719276, 33.571575> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070366, 0.069775, -0.995078,
		-0.866130, 0.490582, 0.095647,
		0.494841, 0.868597, 0.025914,
		39.814037, 37.979855, 33.579350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.125107, 37.957615, 33.264992>,  <39.467648, 37.371838, 33.561211>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.125107, 37.957615, 33.264992> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.518394, 38.009865, 33.214062>,  <39.754368, 38.041214, 33.183502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.518394, 38.009865, 33.214062>,  <39.125107, 37.957615, 33.264992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.518394, 38.009865, 33.214062> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154939, 0.229616, -0.960870,
		-0.096277, 0.964476, 0.246002,
		0.983222, 0.130625, -0.127328,
		39.813362, 38.049053, 33.175861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.234325, 38.571514, 32.906830>,  <39.125107, 37.957615, 33.264992>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.234325, 38.571514, 32.906830> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.568237, 38.360508, 32.843742>,  <39.768585, 38.233902, 32.805889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.568237, 38.360508, 32.843742>,  <39.234325, 38.571514, 32.906830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.568237, 38.360508, 32.843742> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113828, 0.114915, -0.986832,
		0.538696, 0.841736, 0.035882,
		0.834775, -0.527518, -0.157718,
		39.818668, 38.202251, 32.796429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.631779, 39.007202, 32.500790>,  <39.234325, 38.571514, 32.906830>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.631779, 39.007202, 32.500790> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.760105, 38.636719, 32.421585>,  <39.837101, 38.414429, 32.374062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.760105, 38.636719, 32.421585>,  <39.631779, 39.007202, 32.500790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.760105, 38.636719, 32.421585> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167470, 0.150298, -0.974353,
		0.932219, 0.345746, -0.106895,
		0.320812, -0.926213, -0.198013,
		39.856350, 38.358856, 32.362183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.642059, 39.123325, 31.782234>,  <39.631779, 39.007202, 32.500790>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.642059, 39.123325, 31.782234> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.705994, 38.733246, 31.843475>,  <39.744354, 38.499199, 31.880220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.705994, 38.733246, 31.843475>,  <39.642059, 39.123325, 31.782234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.705994, 38.733246, 31.843475> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016939, -0.157783, -0.987328,
		0.986998, 0.155218, -0.041738,
		0.159837, -0.975198, 0.153103,
		39.753944, 38.440685, 31.889406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.052635, 38.918289, 31.204929>,  <39.642059, 39.123325, 31.782234>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.052635, 38.918289, 31.204929> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.879341, 38.581127, 31.332563>,  <39.775364, 38.378830, 31.409143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.879341, 38.581127, 31.332563>,  <40.052635, 38.918289, 31.204929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.879341, 38.581127, 31.332563> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023450, -0.343375, -0.938906,
		0.900976, -0.414250, 0.128996,
		-0.433235, -0.842906, 0.319087,
		39.749371, 38.328255, 31.428289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.484818, 38.290600, 30.921753>,  <40.052635, 38.918289, 31.204929>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.484818, 38.290600, 30.921753> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.101341, 38.207069, 30.999001>,  <39.871254, 38.156952, 31.045349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.101341, 38.207069, 30.999001>,  <40.484818, 38.290600, 30.921753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.101341, 38.207069, 30.999001> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096297, -0.400556, -0.911198,
		0.267640, -0.892157, 0.363901,
		-0.958695, -0.208830, 0.193117,
		39.813732, 38.144421, 31.056936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.420006, 37.791161, 30.540163>,  <40.484818, 38.290600, 30.921753>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.420006, 37.791161, 30.540163> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.032169, 37.860752, 30.609001>,  <39.799465, 37.902508, 30.650305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.032169, 37.860752, 30.609001>,  <40.420006, 37.791161, 30.540163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.032169, 37.860752, 30.609001> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218132, -0.295681, -0.930049,
		-0.110920, -0.939311, 0.324640,
		-0.969595, 0.173975, 0.172097,
		39.741291, 37.912945, 30.660629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.068901, 37.225430, 30.242964>,  <40.420006, 37.791161, 30.540163>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.068901, 37.225430, 30.242964> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.791893, 37.512890, 30.268131>,  <39.625687, 37.685368, 30.283232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.791893, 37.512890, 30.268131>,  <40.068901, 37.225430, 30.242964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.791893, 37.512890, 30.268131> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229207, -0.136492, -0.963760,
		-0.684019, -0.681844, 0.259243,
		-0.692519, 0.718651, 0.062921,
		39.584137, 37.728485, 30.287008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.444706, 36.901875, 29.981205>,  <40.068901, 37.225430, 30.242964>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.444706, 36.901875, 29.981205> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.423126, 37.299908, 29.947983>,  <39.410179, 37.538727, 29.928049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.423126, 37.299908, 29.947983>,  <39.444706, 36.901875, 29.981205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.423126, 37.299908, 29.947983> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371624, -0.097214, -0.923279,
		-0.926814, -0.018948, 0.375042,
		-0.053954, 0.995083, -0.083058,
		39.406940, 37.598434, 29.923065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.835064, 37.014137, 29.711424>,  <39.444706, 36.901875, 29.981205>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.835064, 37.014137, 29.711424> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.006935, 37.364449, 29.623432>,  <39.110058, 37.574635, 29.570637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.006935, 37.364449, 29.623432>,  <38.835064, 37.014137, 29.711424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.006935, 37.364449, 29.623432> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447472, -0.005085, -0.894284,
		-0.784310, 0.482692, 0.389700,
		0.429682, 0.875775, -0.219979,
		39.135841, 37.627182, 29.557438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.351791, 37.249191, 29.348080>,  <38.835064, 37.014137, 29.711424>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.351791, 37.249191, 29.348080> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.648911, 37.503292, 29.263510>,  <38.827183, 37.655754, 29.212769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.648911, 37.503292, 29.263510>,  <38.351791, 37.249191, 29.348080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.648911, 37.503292, 29.263510> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210723, -0.077914, -0.974436,
		-0.635485, 0.768365, 0.075987,
		0.742802, 0.635252, -0.211425,
		38.871750, 37.693867, 29.200083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.054653, 37.608727, 28.828827>,  <38.351791, 37.249191, 29.348080>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.054653, 37.608727, 28.828827> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.448627, 37.673065, 28.803432>,  <38.685013, 37.711666, 28.788197>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.448627, 37.673065, 28.803432>,  <38.054653, 37.608727, 28.828827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.448627, 37.673065, 28.803432> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032170, -0.190292, -0.981200,
		-0.169899, 0.968462, -0.182251,
		0.984936, 0.160842, -0.063486,
		38.744110, 37.721317, 28.784388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.226856, 38.169647, 28.249880>,  <38.054653, 37.608727, 28.828827>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.226856, 38.169647, 28.249880> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.530670, 37.916187, 28.308657>,  <38.712959, 37.764111, 28.343924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.530670, 37.916187, 28.308657>,  <38.226856, 38.169647, 28.249880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.530670, 37.916187, 28.308657> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097024, -0.333741, -0.937659,
		0.643192, 0.697926, -0.314967,
		0.759533, -0.633654, 0.146944,
		38.758530, 37.726089, 28.352739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.934380, 38.756325, 27.743107>,  <38.226856, 38.169647, 28.249880>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.934380, 38.756325, 27.743107> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.625885, 38.799404, 27.492159>,  <37.440788, 38.825253, 27.341591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.625885, 38.799404, 27.492159>,  <37.934380, 38.756325, 27.743107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.625885, 38.799404, 27.492159> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557639, 0.360980, 0.747484,
		0.306971, 0.926334, -0.218345,
		-0.771238, 0.107698, -0.627370,
		37.394512, 38.831715, 27.303947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.688049, 39.500145, 27.811598>,  <37.934380, 38.756325, 27.743107>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.688049, 39.500145, 27.811598> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.378098, 39.331734, 27.623005>,  <37.192127, 39.230686, 27.509850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.378098, 39.331734, 27.623005>,  <37.688049, 39.500145, 27.811598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.378098, 39.331734, 27.623005> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632070, 0.524315, 0.570597,
		0.006967, 0.740154, -0.672402,
		-0.774880, -0.421030, -0.471482,
		37.145634, 39.205425, 27.481560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.198196, 39.994072, 27.592340>,  <37.688049, 39.500145, 27.811598>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.198196, 39.994072, 27.592340> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.011379, 39.646999, 27.660463>,  <36.899288, 39.438755, 27.701338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.011379, 39.646999, 27.660463>,  <37.198196, 39.994072, 27.592340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.011379, 39.646999, 27.660463> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681994, 0.476067, 0.555197,
		-0.562811, 0.143150, -0.814095,
		-0.467041, -0.867680, 0.170309,
		36.871265, 39.386696, 27.711555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.367561, 40.085831, 27.721544>,  <37.198196, 39.994072, 27.592340>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.367561, 40.085831, 27.721544> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.409721, 39.712093, 27.857718>,  <36.435017, 39.487850, 27.939423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.409721, 39.712093, 27.857718>,  <36.367561, 40.085831, 27.721544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.409721, 39.712093, 27.857718> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.846733, 0.095200, 0.523431,
		-0.521473, -0.343426, -0.781104,
		0.105399, -0.934342, 0.340435,
		36.441341, 39.431789, 27.959848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.635952, 39.798450, 27.707226>,  <36.367561, 40.085831, 27.721544>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.635952, 39.798450, 27.707226> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.850353, 39.556740, 27.943039>,  <35.978996, 39.411713, 28.084526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.850353, 39.556740, 27.943039>,  <35.635952, 39.798450, 27.707226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.850353, 39.556740, 27.943039> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748624, -0.017455, 0.662764,
		-0.390202, -0.796584, -0.461732,
		0.536007, -0.604276, 0.589531,
		36.011154, 39.375458, 28.119898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.226761, 39.202465, 27.928356>,  <35.635952, 39.798450, 27.707226>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.226761, 39.202465, 27.928356> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.500748, 39.232746, 28.218210>,  <35.665138, 39.250916, 28.392122>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.500748, 39.232746, 28.218210>,  <35.226761, 39.202465, 27.928356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.500748, 39.232746, 28.218210> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727114, 0.134048, 0.673303,
		-0.046168, -0.988079, 0.146860,
		0.684963, 0.075699, 0.724635,
		35.706238, 39.255455, 28.435600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.942657, 38.909069, 28.448330>,  <35.226761, 39.202465, 27.928356>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.942657, 38.909069, 28.448330> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.231800, 39.096062, 28.651875>,  <35.405285, 39.208260, 28.774002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.231800, 39.096062, 28.651875>,  <34.942657, 38.909069, 28.448330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.231800, 39.096062, 28.651875> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650047, 0.210297, 0.730215,
		0.234348, -0.858625, 0.455898,
		0.722855, 0.467480, 0.508864,
		35.448658, 39.236305, 28.804533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.869289, 38.598118, 29.229548>,  <34.942657, 38.909069, 28.448330>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.869289, 38.598118, 29.229548> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.133739, 38.896603, 29.260733>,  <35.292408, 39.075695, 29.279444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.133739, 38.896603, 29.260733>,  <34.869289, 38.598118, 29.229548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.133739, 38.896603, 29.260733> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377939, 0.241463, 0.893788,
		0.648134, -0.620369, 0.441661,
		0.661124, 0.746215, 0.077961,
		35.332077, 39.120468, 29.284121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.146835, 38.496220, 29.851925>,  <34.869289, 38.598118, 29.229548>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.146835, 38.496220, 29.851925> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.216560, 38.884716, 29.787050>,  <35.258396, 39.117813, 29.748125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.216560, 38.884716, 29.787050>,  <35.146835, 38.496220, 29.851925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.216560, 38.884716, 29.787050> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302880, 0.209605, 0.929693,
		0.936953, -0.112930, 0.330706,
		0.174308, 0.971243, -0.162186,
		35.268852, 39.176090, 29.738394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.701061, 38.845184, 30.387611>,  <35.146835, 38.496220, 29.851925>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.701061, 38.845184, 30.387611> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.452801, 39.119698, 30.235928>,  <35.303844, 39.284409, 30.144917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.452801, 39.119698, 30.235928>,  <35.701061, 38.845184, 30.387611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.452801, 39.119698, 30.235928> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105208, 0.406370, 0.907631,
		0.776996, 0.603218, -0.180011,
		-0.620651, 0.686288, -0.379211,
		35.266605, 39.325584, 30.122164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.832512, 39.490334, 30.880880>,  <35.701061, 38.845184, 30.387611>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.832512, 39.490334, 30.880880> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.479713, 39.562298, 30.706659>,  <35.268032, 39.605476, 30.602127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.479713, 39.562298, 30.706659>,  <35.832512, 39.490334, 30.880880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.479713, 39.562298, 30.706659> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295417, 0.509014, 0.808476,
		0.367158, 0.841746, -0.395801,
		-0.882000, 0.179912, -0.435554,
		35.215115, 39.616272, 30.575993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.596096, 40.260941, 30.943729>,  <35.832512, 39.490334, 30.880880>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.596096, 40.260941, 30.943729> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.282310, 40.021156, 30.880138>,  <35.094040, 39.877285, 30.841984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.282310, 40.021156, 30.880138>,  <35.596096, 40.260941, 30.943729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.282310, 40.021156, 30.880138> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445202, 0.365854, 0.817280,
		-0.431761, 0.711901, -0.553877,
		-0.784460, -0.599457, -0.158978,
		35.046974, 39.841320, 30.832445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.396965, 39.309433, 23.803339> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.088139, 39.055302, 23.796726>,  <38.902843, 38.902824, 23.792759>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.088139, 39.055302, 23.796726>,  <39.396965, 39.309433, 23.803339>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.088139, 39.055302, 23.796726> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348535, 0.401511, 0.846943,
		-0.531444, 0.659661, -0.531427,
		-0.772069, -0.635324, -0.016534,
		38.856518, 38.864704, 23.791765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.750343, 39.717056, 23.976908>,  <39.396965, 39.309433, 23.803339>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.750343, 39.717056, 23.976908> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.681145, 39.330326, 24.052076>,  <38.639626, 39.098286, 24.097178>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.681145, 39.330326, 24.052076>,  <38.750343, 39.717056, 23.976908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.681145, 39.330326, 24.052076> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390037, 0.242445, 0.888308,
		-0.904403, 0.080375, -0.419041,
		-0.172992, -0.966830, 0.187919,
		38.629246, 39.040276, 24.108452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.131020, 39.740734, 24.317213>,  <38.750343, 39.717056, 23.976908>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.131020, 39.740734, 24.317213> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.279232, 39.394810, 24.452745>,  <38.368160, 39.187256, 24.534065>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.279232, 39.394810, 24.452745>,  <38.131020, 39.740734, 24.317213>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.279232, 39.394810, 24.452745> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569671, 0.076532, 0.818302,
		-0.733611, -0.496224, -0.464302,
		0.370527, -0.864815, 0.338829,
		38.390388, 39.135365, 24.554394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.533569, 39.255959, 24.615908>,  <38.131020, 39.740734, 24.317213>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.533569, 39.255959, 24.615908> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.871731, 39.134892, 24.791950>,  <38.074627, 39.062252, 24.897575>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.871731, 39.134892, 24.791950>,  <37.533569, 39.255959, 24.615908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.871731, 39.134892, 24.791950> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464358, -0.009282, 0.885599,
		-0.263954, -0.953052, -0.148392,
		0.845400, -0.302664, 0.440107,
		38.125351, 39.044094, 24.923983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.324192, 38.702713, 24.996513>,  <37.533569, 39.255959, 24.615908>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.324192, 38.702713, 24.996513> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.659595, 38.847874, 25.159098>,  <37.860836, 38.934971, 25.256649>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.659595, 38.847874, 25.159098>,  <37.324192, 38.702713, 24.996513>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.659595, 38.847874, 25.159098> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359840, -0.191359, 0.913180,
		0.409174, -0.911967, -0.029869,
		0.838506, 0.362901, 0.406461,
		37.911148, 38.956745, 25.281036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.254227, 38.363106, 25.547443>,  <37.324192, 38.702713, 24.996513>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.254227, 38.363106, 25.547443> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.573013, 38.575382, 25.662827>,  <37.764286, 38.702747, 25.732056>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.573013, 38.575382, 25.662827>,  <37.254227, 38.363106, 25.547443>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.573013, 38.575382, 25.662827> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187274, -0.236928, 0.953307,
		0.574254, -0.813777, -0.089439,
		0.796970, 0.530690, 0.288456,
		37.812103, 38.734589, 25.749363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.528297, 37.891418, 26.021833>,  <37.254227, 38.363106, 25.547443>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.528297, 37.891418, 26.021833> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.657116, 38.262314, 26.098278>,  <37.734406, 38.484852, 26.144146>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.657116, 38.262314, 26.098278>,  <37.528297, 37.891418, 26.021833>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.657116, 38.262314, 26.098278> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362047, -0.065904, 0.929827,
		0.874763, -0.368635, 0.314479,
		0.322042, 0.927235, 0.191114,
		37.753727, 38.540485, 26.155613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.771236, 37.895115, 26.687668>,  <37.528297, 37.891418, 26.021833>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.771236, 37.895115, 26.687668> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.701210, 38.280556, 26.606853>,  <37.659195, 38.511822, 26.558365>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.701210, 38.280556, 26.606853>,  <37.771236, 37.895115, 26.687668>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.701210, 38.280556, 26.606853> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407219, 0.115962, 0.905939,
		0.896395, 0.240872, 0.372097,
		-0.175066, 0.963604, -0.202035,
		37.648689, 38.569637, 26.546244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.085911, 38.301319, 27.195087>,  <37.771236, 37.895115, 26.687668>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.085911, 38.301319, 27.195087> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.797512, 38.535084, 27.046160>,  <37.624474, 38.675343, 26.956804>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.797512, 38.535084, 27.046160>,  <38.085911, 38.301319, 27.195087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.797512, 38.535084, 27.046160> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388846, 0.103503, 0.915470,
		0.573548, 0.804829, 0.152620,
		-0.721001, 0.584411, -0.372318,
		37.581211, 38.710407, 26.934464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.636551, 38.268906, 27.668041>,  <38.085911, 38.301319, 27.195087>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.636551, 38.268906, 27.668041> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.805458, 37.930798, 27.799015>,  <38.906803, 37.727932, 27.877600>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.805458, 37.930798, 27.799015>,  <38.636551, 38.268906, 27.668041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.805458, 37.930798, 27.799015> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101072, -0.315063, -0.943674,
		0.900819, 0.431576, -0.047607,
		0.422266, -0.845268, 0.327435,
		38.932137, 37.677216, 27.897245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.243027, 38.135342, 27.196325>,  <38.636551, 38.268906, 27.668041>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.243027, 38.135342, 27.196325> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.134594, 37.795006, 27.376368>,  <39.069534, 37.590805, 27.484394>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.134594, 37.795006, 27.376368>,  <39.243027, 38.135342, 27.196325>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.134594, 37.795006, 27.376368> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301368, -0.519126, -0.799803,
		0.914163, -0.081161, 0.397138,
		-0.271078, -0.850835, 0.450107,
		39.053272, 37.539757, 27.511400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.765015, 37.656563, 27.055441>,  <39.243027, 38.135342, 27.196325>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.765015, 37.656563, 27.055441> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.461796, 37.421646, 27.168901>,  <39.279865, 37.280697, 27.236979>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.461796, 37.421646, 27.168901>,  <39.765015, 37.656563, 27.055441>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.461796, 37.421646, 27.168901> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232083, -0.649348, -0.724213,
		0.609510, -0.483157, 0.628536,
		-0.758047, -0.587288, 0.283651,
		39.234383, 37.245461, 27.253996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.994320, 36.983059, 27.309912>,  <39.765015, 37.656563, 27.055441>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.994320, 36.983059, 27.309912> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.621864, 36.945583, 27.168940>,  <39.398392, 36.923100, 27.084356>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.621864, 36.945583, 27.168940>,  <39.994320, 36.983059, 27.309912>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.621864, 36.945583, 27.168940> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308603, -0.717333, -0.624658,
		-0.194288, -0.690404, 0.696847,
		-0.931137, -0.093685, -0.352429,
		39.342522, 36.917477, 27.063211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.897762, 36.302311, 27.284130>,  <39.994320, 36.983059, 27.309912>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.897762, 36.302311, 27.284130> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.612061, 36.439304, 27.039984>,  <39.440639, 36.521500, 26.893496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.612061, 36.439304, 27.039984>,  <39.897762, 36.302311, 27.284130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.612061, 36.439304, 27.039984> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167159, -0.763376, -0.623951,
		-0.679633, -0.547688, 0.487994,
		-0.714253, 0.342485, -0.610366,
		39.397785, 36.542049, 26.856873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.475708, 35.768974, 26.996943>,  <39.897762, 36.302311, 27.284130>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.475708, 35.768974, 26.996943> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.403980, 36.052044, 26.723581>,  <39.360943, 36.221886, 26.559565>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.403980, 36.052044, 26.723581>,  <39.475708, 35.768974, 26.996943>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.403980, 36.052044, 26.723581> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296816, -0.623374, -0.723398,
		-0.937946, -0.332567, -0.098263,
		-0.179324, 0.707675, -0.683403,
		39.350182, 36.264347, 26.518560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.463192, 35.375446, 26.521162>,  <39.475708, 35.768974, 26.996943>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.463192, 35.375446, 26.521162> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.469517, 35.732140, 26.340248>,  <39.473312, 35.946156, 26.231699>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.469517, 35.732140, 26.340248>,  <39.463192, 35.375446, 26.521162>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.469517, 35.732140, 26.340248> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341327, -0.429983, -0.835829,
		-0.939812, -0.141163, -0.311170,
		0.015810, 0.891733, -0.452286,
		39.474258, 35.999660, 26.204563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.110325, 35.300743, 25.871702>,  <39.463192, 35.375446, 26.521162>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.110325, 35.300743, 25.871702> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.356739, 35.614025, 25.838015>,  <39.504589, 35.801994, 25.817802>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.356739, 35.614025, 25.838015>,  <39.110325, 35.300743, 25.871702>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.356739, 35.614025, 25.838015> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352843, -0.369949, -0.859441,
		-0.704274, 0.499730, -0.504250,
		0.616035, 0.783203, -0.084220,
		39.541550, 35.848988, 25.812748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.219360, 35.449448, 25.090956>,  <39.110325, 35.300743, 25.871702>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.219360, 35.449448, 25.090956> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.517361, 35.661747, 25.252586>,  <39.696159, 35.789127, 25.349566>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.517361, 35.661747, 25.252586>,  <39.219360, 35.449448, 25.090956>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.517361, 35.661747, 25.252586> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557494, -0.162759, -0.814070,
		-0.366301, 0.831753, -0.417146,
		0.745000, 0.530751, 0.404078,
		39.740860, 35.820972, 25.373810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.422760, 35.989510, 24.601908>,  <39.219360, 35.449448, 25.090956>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.422760, 35.989510, 24.601908> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.725735, 35.915733, 24.852436>,  <39.907520, 35.871468, 25.002752>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.725735, 35.915733, 24.852436>,  <39.422760, 35.989510, 24.601908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.725735, 35.915733, 24.852436> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574906, -0.266298, -0.773672,
		0.309482, 0.946081, -0.095669,
		0.757433, -0.184437, 0.626321,
		39.952965, 35.860401, 25.040333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.075581, 36.344826, 24.295246>,  <39.422760, 35.989510, 24.601908>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.075581, 36.344826, 24.295246> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.188793, 36.074238, 24.567209>,  <40.256721, 35.911884, 24.730387>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.188793, 36.074238, 24.567209>,  <40.075581, 36.344826, 24.295246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.188793, 36.074238, 24.567209> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644063, -0.391230, -0.657359,
		0.710688, 0.623956, 0.324963,
		0.283028, -0.676474, 0.679910,
		40.273701, 35.871296, 24.771183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.718674, 36.481491, 24.413740>,  <40.075581, 36.344826, 24.295246>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.718674, 36.481491, 24.413740> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.682350, 36.100342, 24.529528>,  <40.660557, 35.871655, 24.599001>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.682350, 36.100342, 24.529528>,  <40.718674, 36.481491, 24.413740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.682350, 36.100342, 24.529528> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701151, -0.267593, -0.660894,
		0.707206, 0.142947, 0.692406,
		-0.090810, -0.952869, 0.289471,
		40.655106, 35.814480, 24.616369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.391182, 36.210018, 24.349634>,  <40.718674, 36.481491, 24.413740>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.391182, 36.210018, 24.349634> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.195351, 35.861866, 24.370653>,  <41.077854, 35.652977, 24.383265>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.195351, 35.861866, 24.370653>,  <41.391182, 36.210018, 24.349634>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.195351, 35.861866, 24.370653> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551074, -0.355550, -0.754918,
		0.675747, -0.340631, 0.653710,
		-0.489575, -0.870376, 0.052549,
		41.048477, 35.600754, 24.386417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.874592, 35.515812, 24.310209>,  <41.391182, 36.210018, 24.349634>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.874592, 35.515812, 24.310209> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.505432, 35.459095, 24.167017>,  <41.283936, 35.425064, 24.081102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.505432, 35.459095, 24.167017>,  <41.874592, 35.515812, 24.310209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.505432, 35.459095, 24.167017> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384929, -0.361782, -0.849084,
		-0.009118, -0.921417, 0.388468,
		-0.922901, -0.141790, -0.357979,
		41.228561, 35.416557, 24.059624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.801243, 31.210155, 23.676775> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.016308, 31.539835, 23.605659>,  <36.145348, 31.737642, 23.562990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.016308, 31.539835, 23.605659>,  <35.801243, 31.210155, 23.676775>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.016308, 31.539835, 23.605659> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089684, 0.265571, 0.959911,
		0.838374, -0.500167, 0.216706,
		0.537667, 0.824200, -0.177791,
		36.177608, 31.787094, 23.552322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.442402, 31.177967, 24.111940>,  <35.801243, 31.210155, 23.676775>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.442402, 31.177967, 24.111940> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.364979, 31.562954, 24.035843>,  <36.318523, 31.793945, 23.990185>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.364979, 31.562954, 24.035843>,  <36.442402, 31.177967, 24.111940>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.364979, 31.562954, 24.035843> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058056, 0.204807, 0.977079,
		0.979369, 0.178081, -0.095520,
		-0.193562, 0.962466, -0.190242,
		36.306911, 31.851694, 23.978769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.985916, 31.587948, 24.433661>,  <36.442402, 31.177967, 24.111940>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.985916, 31.587948, 24.433661> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.659912, 31.815821, 24.391277>,  <36.464310, 31.952545, 24.365847>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.659912, 31.815821, 24.391277>,  <36.985916, 31.587948, 24.433661>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.659912, 31.815821, 24.391277> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140581, 0.371793, 0.917610,
		0.562140, 0.732962, -0.383100,
		-0.815006, 0.569682, -0.105960,
		36.415409, 31.986725, 24.359489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.133984, 32.169834, 24.722502>,  <36.985916, 31.587948, 24.433661>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.133984, 32.169834, 24.722502> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.734020, 32.174854, 24.724537>,  <36.494041, 32.177868, 24.725758>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.734020, 32.174854, 24.724537>,  <37.133984, 32.169834, 24.722502>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.734020, 32.174854, 24.724537> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009486, 0.380767, 0.924622,
		0.009669, 0.924586, -0.380851,
		-0.999908, 0.012553, 0.005089,
		36.434048, 32.178619, 24.726063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.953079, 32.842617, 25.074112>,  <37.133984, 32.169834, 24.722502>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.953079, 32.842617, 25.074112> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.630314, 32.606834, 25.089230>,  <36.436653, 32.465366, 25.098301>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.630314, 32.606834, 25.089230>,  <36.953079, 32.842617, 25.074112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.630314, 32.606834, 25.089230> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199965, 0.332825, 0.921543,
		-0.555790, 0.736049, -0.386432,
		-0.806915, -0.589457, 0.037796,
		36.388241, 32.429996, 25.100569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.393726, 33.279629, 25.220293>,  <36.953079, 32.842617, 25.074112>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.393726, 33.279629, 25.220293> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.278351, 32.914288, 25.335245>,  <36.209126, 32.695084, 25.404217>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.278351, 32.914288, 25.335245>,  <36.393726, 33.279629, 25.220293>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.278351, 32.914288, 25.335245> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244442, 0.360433, 0.900187,
		-0.925770, 0.189403, -0.327226,
		-0.288441, -0.913354, 0.287379,
		36.191818, 32.640282, 25.421459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.686821, 33.486534, 25.406706>,  <36.393726, 33.279629, 25.220293>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.686821, 33.486534, 25.406706> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.811401, 33.144562, 25.572645>,  <35.886150, 32.939381, 25.672209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.811401, 33.144562, 25.572645>,  <35.686821, 33.486534, 25.406706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.811401, 33.144562, 25.572645> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324098, 0.314818, 0.892104,
		-0.893286, -0.412297, -0.179030,
		0.311450, -0.854927, 0.414847,
		35.904835, 32.888084, 25.697100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.189220, 33.350861, 25.930897>,  <35.686821, 33.486534, 25.406706>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.189220, 33.350861, 25.930897> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.498940, 33.113651, 26.019243>,  <35.684772, 32.971325, 26.072252>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.498940, 33.113651, 26.019243>,  <35.189220, 33.350861, 25.930897>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.498940, 33.113651, 26.019243> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188163, 0.117483, 0.975086,
		-0.604201, -0.796565, -0.020619,
		0.774297, -0.593028, 0.220868,
		35.731228, 32.935741, 26.085505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.954376, 32.802437, 26.439360>,  <35.189220, 33.350861, 25.930897>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.954376, 32.802437, 26.439360> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.346436, 32.875454, 26.470320>,  <35.581673, 32.919266, 26.488895>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.346436, 32.875454, 26.470320>,  <34.954376, 32.802437, 26.439360>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.346436, 32.875454, 26.470320> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127164, 0.279250, 0.951761,
		0.152121, -0.942708, 0.296918,
		0.980147, 0.182540, 0.077399,
		35.640480, 32.930218, 26.493540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.015839, 32.429157, 27.010286>,  <34.954376, 32.802437, 26.439360>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.015839, 32.429157, 27.010286> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.353874, 32.642429, 26.994585>,  <35.556698, 32.770393, 26.985165>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.353874, 32.642429, 26.994585>,  <35.015839, 32.429157, 27.010286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.353874, 32.642429, 26.994585> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111934, 0.248254, 0.962206,
		0.522775, -0.808757, 0.269478,
		0.845090, 0.533181, -0.039254,
		35.607403, 32.802383, 26.982809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.219627, 32.424488, 27.705118>,  <35.015839, 32.429157, 27.010286>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.219627, 32.424488, 27.705118> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.463593, 32.700481, 27.549206>,  <35.609970, 32.866077, 27.455658>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.463593, 32.700481, 27.549206>,  <35.219627, 32.424488, 27.705118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.463593, 32.700481, 27.549206> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030257, 0.471223, 0.881495,
		0.791891, -0.549428, 0.266528,
		0.609912, 0.689984, -0.389781,
		35.646564, 32.907478, 27.432272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.682987, 32.485687, 28.199469>,  <35.219627, 32.424488, 27.705118>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.682987, 32.485687, 28.199469> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.659668, 32.812428, 27.969912>,  <35.645676, 33.008472, 27.832178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.659668, 32.812428, 27.969912>,  <35.682987, 32.485687, 28.199469>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.659668, 32.812428, 27.969912> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238704, 0.546787, 0.802524,
		0.969341, 0.183774, 0.163110,
		-0.058297, 0.816854, -0.573891,
		35.642178, 33.057484, 27.797745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.931911, 32.981834, 28.646194>,  <35.682987, 32.485687, 28.199469>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.931911, 32.981834, 28.646194> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.730206, 33.210915, 28.387665>,  <35.609180, 33.348362, 28.232548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.730206, 33.210915, 28.387665>,  <35.931911, 32.981834, 28.646194>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.730206, 33.210915, 28.387665> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345989, 0.551760, 0.758849,
		0.791205, 0.606284, -0.080088,
		-0.504267, 0.572696, -0.646323,
		35.578926, 33.382725, 28.193768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.161251, 33.704712, 28.833483>,  <35.931911, 32.981834, 28.646194>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.161251, 33.704712, 28.833483> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.814018, 33.703747, 28.634916>,  <35.605679, 33.703167, 28.515776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.814018, 33.703747, 28.634916>,  <36.161251, 33.704712, 28.833483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.814018, 33.703747, 28.634916> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422963, 0.527101, 0.737066,
		0.259881, 0.849799, -0.458589,
		-0.868081, -0.002417, -0.496417,
		35.553593, 33.703022, 28.485991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.858944, 34.129311, 28.877918>,  <36.161251, 33.704712, 28.833483>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.858944, 34.129311, 28.877918> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.048038, 33.900890, 29.146372>,  <37.161495, 33.763836, 29.307444>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.048038, 33.900890, 29.146372>,  <36.858944, 34.129311, 28.877918>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.048038, 33.900890, 29.146372> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561734, -0.391522, -0.728811,
		0.678954, 0.721531, 0.135696,
		0.472732, -0.571055, 0.671134,
		37.189857, 33.729572, 29.347712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.601665, 34.208828, 28.891523>,  <36.858944, 34.129311, 28.877918>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.601665, 34.208828, 28.891523> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.513103, 33.842323, 29.025059>,  <37.459969, 33.622421, 29.105181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.513103, 33.842323, 29.025059>,  <37.601665, 34.208828, 28.891523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.513103, 33.842323, 29.025059> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562928, -0.399620, -0.723475,
		0.796300, 0.027749, 0.604265,
		-0.221401, -0.916261, 0.333838,
		37.446682, 33.567444, 29.125210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.312927, 33.774395, 28.925228>,  <37.601665, 34.208828, 28.891523>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.312927, 33.774395, 28.925228> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.996166, 33.531311, 28.901287>,  <37.806110, 33.385460, 28.886923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.996166, 33.531311, 28.901287>,  <38.312927, 33.774395, 28.925228>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.996166, 33.531311, 28.901287> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503684, -0.594621, -0.626680,
		0.345252, -0.526414, 0.776974,
		-0.791899, -0.607712, -0.059852,
		37.758598, 33.348999, 28.883331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.650070, 33.176464, 28.990490>,  <38.312927, 33.774395, 28.925228>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.650070, 33.176464, 28.990490> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.295200, 33.119858, 28.814810>,  <38.082279, 33.085896, 28.709402>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.295200, 33.119858, 28.814810>,  <38.650070, 33.176464, 28.990490>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.295200, 33.119858, 28.814810> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430210, -0.597854, -0.676381,
		-0.166862, -0.789015, 0.591280,
		-0.887174, -0.141512, -0.439201,
		38.029049, 33.077404, 28.683050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.656540, 32.515549, 28.679716>,  <38.650070, 33.176464, 28.990490>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.656540, 32.515549, 28.679716> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.352032, 32.693771, 28.491274>,  <38.169327, 32.800705, 28.378208>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.352032, 32.693771, 28.491274>,  <38.656540, 32.515549, 28.679716>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.352032, 32.693771, 28.491274> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337129, -0.348654, -0.874520,
		-0.553902, -0.824572, 0.115210,
		-0.761273, 0.445557, -0.471107,
		38.123650, 32.827438, 28.349941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.390625, 31.966621, 28.192896>,  <38.656540, 32.515549, 28.679716>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.390625, 31.966621, 28.192896> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.280113, 32.330849, 28.069912>,  <38.213806, 32.549385, 27.996122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.280113, 32.330849, 28.069912>,  <38.390625, 31.966621, 28.192896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.280113, 32.330849, 28.069912> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224998, -0.249739, -0.941810,
		-0.934369, -0.329382, -0.135878,
		-0.276281, 0.910570, -0.307459,
		38.197227, 32.604019, 27.977674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.117844, 31.795828, 27.674120>,  <38.390625, 31.966621, 28.192896>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.117844, 31.795828, 27.674120> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.171482, 32.188293, 27.618498>,  <38.203667, 32.423771, 27.585125>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.171482, 32.188293, 27.618498>,  <38.117844, 31.795828, 27.674120>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.171482, 32.188293, 27.618498> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394968, -0.181613, -0.900565,
		-0.908855, 0.065841, -0.411882,
		0.134097, 0.981163, -0.139055,
		38.211712, 32.482643, 27.576782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.811932, 31.929993, 27.102844>,  <38.117844, 31.795828, 27.674120>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.811932, 31.929993, 27.102844> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.051849, 32.248707, 27.132185>,  <38.195801, 32.439934, 27.149790>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.051849, 32.248707, 27.132185>,  <37.811932, 31.929993, 27.102844>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.051849, 32.248707, 27.132185> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281185, -0.124063, -0.951601,
		-0.749119, 0.591393, -0.298456,
		0.599797, 0.796783, 0.073353,
		38.231789, 32.487743, 27.154190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.661366, 32.365620, 26.383795>,  <37.811932, 31.929993, 27.102844>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.661366, 32.365620, 26.383795> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.014450, 32.463718, 26.544128>,  <38.226303, 32.522579, 26.640327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.014450, 32.463718, 26.544128>,  <37.661366, 32.365620, 26.383795>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.014450, 32.463718, 26.544128> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397675, 0.064544, -0.915253,
		-0.250338, 0.967309, -0.040556,
		0.882715, 0.245251, 0.400832,
		38.279266, 32.537292, 26.664377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.855782, 32.725975, 25.888277>,  <37.661366, 32.365620, 26.383795>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.855782, 32.725975, 25.888277> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.191181, 32.644211, 26.090322>,  <38.392422, 32.595154, 26.211550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.191181, 32.644211, 26.090322>,  <37.855782, 32.725975, 25.888277>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.191181, 32.644211, 26.090322> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507917, -0.042506, -0.860357,
		0.197335, 0.977962, 0.068182,
		0.838498, -0.204409, 0.505112,
		38.442730, 32.582890, 26.241856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.367031, 33.290169, 25.804317>,  <37.855782, 32.725975, 25.888277>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.367031, 33.290169, 25.804317> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.566780, 32.957096, 25.900043>,  <38.686630, 32.757252, 25.957479>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.566780, 32.957096, 25.900043>,  <38.367031, 33.290169, 25.804317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.566780, 32.957096, 25.900043> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373650, -0.042224, -0.926608,
		0.781673, 0.552142, 0.290046,
		0.499372, -0.832680, 0.239313,
		38.716591, 32.707291, 25.971838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.979168, 33.376701, 25.418718>,  <38.367031, 33.290169, 25.804317>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.979168, 33.376701, 25.418718> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.970284, 32.987770, 25.511745>,  <38.964951, 32.754414, 25.567562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.970284, 32.987770, 25.511745>,  <38.979168, 33.376701, 25.418718>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.970284, 32.987770, 25.511745> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372078, -0.223957, -0.900778,
		0.927936, 0.066523, 0.366756,
		-0.022216, -0.972326, 0.232570,
		38.963619, 32.696072, 25.581516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.669582, 33.099476, 25.100716>,  <38.979168, 33.376701, 25.418718>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.669582, 33.099476, 25.100716> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.412891, 32.804050, 25.183378>,  <39.258877, 32.626797, 25.232975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.412891, 32.804050, 25.183378>,  <39.669582, 33.099476, 25.100716>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.412891, 32.804050, 25.183378> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209456, -0.427996, -0.879174,
		0.737773, -0.520908, 0.429355,
		-0.641731, -0.738562, 0.206657,
		39.220371, 32.582481, 25.245375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.093430, 32.396420, 25.056187>,  <39.669582, 33.099476, 25.100716>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.093430, 32.396420, 25.056187> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.707191, 32.344868, 24.965843>,  <39.475449, 32.313938, 24.911636>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.707191, 32.344868, 24.965843>,  <40.093430, 32.396420, 25.056187>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.707191, 32.344868, 24.965843> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258655, -0.386372, -0.885333,
		0.026837, -0.913294, 0.406415,
		-0.965597, -0.128881, -0.225859,
		39.417511, 32.306202, 24.898085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.744041, 32.141205, 25.000683>,  <40.093430, 32.396420, 25.056187>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.744041, 32.141205, 25.000683> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.125603, 32.216290, 24.907011>,  <41.354538, 32.261341, 24.850807>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.125603, 32.216290, 24.907011>,  <40.744041, 32.141205, 25.000683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.125603, 32.216290, 24.907011> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202565, 0.173075, 0.963853,
		0.221460, -0.966855, 0.127072,
		0.953898, 0.187714, -0.234180,
		41.411774, 32.272602, 24.836758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.069195, 31.698048, 25.395374>,  <40.744041, 32.141205, 25.000683>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.069195, 31.698048, 25.395374> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.349636, 31.961802, 25.286806>,  <41.517899, 32.120052, 25.221664>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.349636, 31.961802, 25.286806>,  <41.069195, 31.698048, 25.395374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.349636, 31.961802, 25.286806> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311172, 0.059563, 0.948485,
		0.641584, -0.749442, -0.163423,
		0.701100, 0.659386, -0.271420,
		41.559967, 32.159618, 25.205379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.726562, 31.455917, 25.649582>,  <41.069195, 31.698048, 25.395374>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.726562, 31.455917, 25.649582> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.750107, 31.854311, 25.622585>,  <41.764233, 32.093346, 25.606386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.750107, 31.854311, 25.622585>,  <41.726562, 31.455917, 25.649582>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.750107, 31.854311, 25.622585> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116357, 0.060304, 0.991375,
		0.991462, -0.066203, -0.112340,
		0.058858, 0.995982, -0.067493,
		41.767765, 32.153107, 25.602337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.184238, 31.540615, 26.217876>,  <41.726562, 31.455917, 25.649582>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.184238, 31.540615, 26.217876> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.024357, 31.904266, 26.171022>,  <41.928429, 32.122456, 26.142910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.024357, 31.904266, 26.171022>,  <42.184238, 31.540615, 26.217876>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.024357, 31.904266, 26.171022> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060049, 0.153485, 0.986325,
		0.914673, 0.387208, -0.115941,
		-0.399708, 0.909127, -0.117137,
		41.904446, 32.177006, 26.135881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.579098, 32.060432, 26.544863>,  <42.184238, 31.540615, 26.217876>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.579098, 32.060432, 26.544863> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.223499, 32.241673, 26.518366>,  <42.010139, 32.350414, 26.502468>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.223499, 32.241673, 26.518366>,  <42.579098, 32.060432, 26.544863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.223499, 32.241673, 26.518366> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066765, 0.271369, 0.960157,
		0.453022, 0.849153, -0.271497,
		-0.888996, 0.453099, -0.066243,
		41.956802, 32.377602, 26.498493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.695408, 32.664875, 26.870321>,  <42.579098, 32.060432, 26.544863>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.695408, 32.664875, 26.870321> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.296333, 32.637840, 26.867458>,  <42.056889, 32.621620, 26.865740>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.296333, 32.637840, 26.867458>,  <42.695408, 32.664875, 26.870321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.296333, 32.637840, 26.867458> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019145, 0.178419, 0.983768,
		-0.065211, 0.981631, -0.179301,
		-0.997688, -0.067585, -0.007158,
		41.997028, 32.617565, 26.865311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.451481, 33.324940, 27.175957>,  <42.695408, 32.664875, 26.870321>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.451481, 33.324940, 27.175957> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.134361, 33.083401, 27.209063>,  <41.944092, 32.938477, 27.228926>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.134361, 33.083401, 27.209063>,  <42.451481, 33.324940, 27.175957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.134361, 33.083401, 27.209063> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219380, 0.409405, 0.885585,
		-0.568637, 0.683931, -0.457045,
		-0.792795, -0.603843, 0.082763,
		41.896523, 32.902248, 27.233891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.838116, 33.797428, 27.313059>,  <42.451481, 33.324940, 27.175957>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.838116, 33.797428, 27.313059> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.761585, 33.440441, 27.476467>,  <41.715668, 33.226250, 27.574512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.761585, 33.440441, 27.476467>,  <41.838116, 33.797428, 27.313059>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.761585, 33.440441, 27.476467> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243254, 0.446340, 0.861166,
		-0.950907, 0.065385, -0.302492,
		-0.191322, -0.892471, 0.408522,
		41.704189, 33.172699, 27.599024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.188354, 33.821556, 27.566887>,  <41.838116, 33.797428, 27.313059>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.188354, 33.821556, 27.566887> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.335133, 33.517109, 27.780821>,  <41.423199, 33.334442, 27.909182>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.335133, 33.517109, 27.780821>,  <41.188354, 33.821556, 27.566887>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.335133, 33.517109, 27.780821> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435033, 0.367793, 0.821873,
		-0.822250, -0.534257, -0.196149,
		0.366949, -0.761116, 0.534837,
		41.445217, 33.288773, 27.941273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.657475, 33.395378, 27.878052>,  <41.188354, 33.821556, 27.566887>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.657475, 33.395378, 27.878052> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.981159, 33.337223, 28.105753>,  <41.175369, 33.302330, 28.242373>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.981159, 33.337223, 28.105753>,  <40.657475, 33.395378, 27.878052>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.981159, 33.337223, 28.105753> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561136, 0.095864, 0.822154,
		-0.174100, -0.984720, -0.004008,
		0.809207, -0.145386, 0.569251,
		41.223923, 33.293610, 28.276527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.447094, 33.069283, 28.502016>,  <40.657475, 33.395378, 27.878052>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.447094, 33.069283, 28.502016> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.804817, 33.195107, 28.629301>,  <41.019451, 33.270599, 28.705673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.804817, 33.195107, 28.629301>,  <40.447094, 33.069283, 28.502016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.804817, 33.195107, 28.629301> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381654, 0.165050, 0.909450,
		0.233563, -0.934776, 0.267662,
		0.894309, 0.314568, 0.318212,
		41.073109, 33.289474, 28.724766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.403046, 32.917961, 29.163050>,  <40.447094, 33.069283, 28.502016>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.403046, 32.917961, 29.163050> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.724247, 33.156242, 29.155851>,  <40.916965, 33.299213, 29.151531>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.724247, 33.156242, 29.155851>,  <40.403046, 32.917961, 29.163050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.724247, 33.156242, 29.155851> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157254, 0.240910, 0.957723,
		0.574859, -0.766221, 0.287128,
		0.802999, 0.595708, -0.017998,
		40.965145, 33.334953, 29.150452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.785381, 32.683598, 29.783684>,  <40.403046, 32.917961, 29.163050>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.785381, 32.683598, 29.783684> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.899994, 33.055939, 29.692978>,  <40.968761, 33.279343, 29.638554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.899994, 33.055939, 29.692978>,  <40.785381, 32.683598, 29.783684>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.899994, 33.055939, 29.692978> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066728, 0.255502, 0.964503,
		0.955745, -0.261225, 0.135323,
		0.286528, 0.930849, -0.226764,
		40.985950, 33.335194, 29.624949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.139183, 32.816261, 30.303001>,  <40.785381, 32.683598, 29.783684>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.139183, 32.816261, 30.303001> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.076336, 33.181141, 30.151632>,  <41.038628, 33.400070, 30.060810>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.076336, 33.181141, 30.151632>,  <41.139183, 32.816261, 30.303001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.076336, 33.181141, 30.151632> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008175, 0.381967, 0.924140,
		0.987545, 0.148296, -0.052558,
		-0.157122, 0.912200, -0.378422,
		41.029198, 33.454800, 30.038105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<41.461430, 34.022919, 24.245794> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.247654, 34.314281, 24.074303>,  <41.119389, 34.489098, 23.971409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.247654, 34.314281, 24.074303>,  <41.461430, 34.022919, 24.245794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.247654, 34.314281, 24.074303> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045992, -0.481431, -0.875277,
		-0.843957, -0.487497, 0.223793,
		-0.534436, 0.728403, -0.428728,
		41.087322, 34.532803, 23.945684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.987873, 33.650562, 23.888666>,  <41.461430, 34.022919, 24.245794>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.987873, 33.650562, 23.888666> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.055244, 34.005096, 23.716133>,  <41.095669, 34.217815, 23.612614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.055244, 34.005096, 23.716133>,  <40.987873, 33.650562, 23.888666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.055244, 34.005096, 23.716133> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408797, -0.460988, -0.787639,
		-0.896949, -0.043666, -0.439973,
		0.168429, 0.886331, -0.431333,
		41.105774, 34.270996, 23.586733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.885509, 33.587914, 23.119005>,  <40.987873, 33.650562, 23.888666>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.885509, 33.587914, 23.119005> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.081619, 33.935009, 23.151632>,  <41.199287, 34.143269, 23.171209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.081619, 33.935009, 23.151632>,  <40.885509, 33.587914, 23.119005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.081619, 33.935009, 23.151632> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421344, -0.154048, -0.893722,
		-0.762954, 0.472540, -0.441144,
		0.490277, 0.867741, 0.081570,
		41.228703, 34.195332, 23.176104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.655792, 34.035210, 22.553114>,  <40.885509, 33.587914, 23.119005>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.655792, 34.035210, 22.553114> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.015392, 34.152973, 22.682800>,  <41.231152, 34.223633, 22.760612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.015392, 34.152973, 22.682800>,  <40.655792, 34.035210, 22.553114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.015392, 34.152973, 22.682800> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392395, -0.212762, -0.894851,
		-0.194474, 0.931694, -0.306800,
		0.899003, 0.294412, 0.324215,
		41.285091, 34.241299, 22.780066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.876625, 34.430721, 22.041002>,  <40.655792, 34.035210, 22.553114>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.876625, 34.430721, 22.041002> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.233475, 34.396824, 22.218513>,  <41.447582, 34.376484, 22.325020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.233475, 34.396824, 22.218513>,  <40.876625, 34.430721, 22.041002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.233475, 34.396824, 22.218513> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426055, -0.169021, -0.888768,
		0.150328, 0.981962, -0.114680,
		0.892120, -0.084747, 0.443778,
		41.501110, 34.371399, 22.351646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.385471, 34.834484, 21.701773>,  <40.876625, 34.430721, 22.041002>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.385471, 34.834484, 21.701773> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.614285, 34.561176, 21.883287>,  <41.751572, 34.397194, 21.992195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.614285, 34.561176, 21.883287>,  <41.385471, 34.834484, 21.701773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.614285, 34.561176, 21.883287> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511250, -0.135611, -0.848665,
		0.641403, 0.717466, 0.271746,
		0.572036, -0.683266, 0.453786,
		41.785896, 34.356197, 22.019423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.068676, 34.869465, 21.347651>,  <41.385471, 34.834484, 21.701773>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.068676, 34.869465, 21.347651> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.070171, 34.501842, 21.505297>,  <42.071068, 34.281269, 21.599884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.070171, 34.501842, 21.505297>,  <42.068676, 34.869465, 21.347651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.070171, 34.501842, 21.505297> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249993, -0.380746, -0.890245,
		0.968240, 0.101858, 0.228332,
		0.003742, -0.919052, 0.394118,
		42.071293, 34.226128, 21.623531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.663895, 34.530956, 21.006287>,  <42.068676, 34.869465, 21.347651>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.663895, 34.530956, 21.006287> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.485176, 34.222229, 21.187250>,  <42.377945, 34.036995, 21.295828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.485176, 34.222229, 21.187250>,  <42.663895, 34.530956, 21.006287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.485176, 34.222229, 21.187250> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248543, -0.592872, -0.765982,
		0.859417, -0.229795, 0.456723,
		-0.446797, -0.771814, 0.452411,
		42.351135, 33.990685, 21.322973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.155468, 33.971096, 21.023588>,  <42.663895, 34.530956, 21.006287>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.155468, 33.971096, 21.023588> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.802021, 33.784557, 21.040226>,  <42.589951, 33.672634, 21.050209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.802021, 33.784557, 21.040226>,  <43.155468, 33.971096, 21.023588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.802021, 33.784557, 21.040226> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185086, -0.429524, -0.883885,
		0.430066, -0.773321, 0.465851,
		-0.883621, -0.466352, 0.041593,
		42.536934, 33.644653, 21.052704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.273464, 33.243706, 20.807343>,  <43.155468, 33.971096, 21.023588>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.273464, 33.243706, 20.807343> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.881107, 33.306553, 20.761436>,  <42.645695, 33.344261, 20.733892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.881107, 33.306553, 20.761436>,  <43.273464, 33.243706, 20.807343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.881107, 33.306553, 20.761436> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002561, -0.600221, -0.799830,
		-0.194554, -0.784250, 0.589152,
		-0.980888, 0.157119, -0.114767,
		42.586842, 33.353687, 20.727007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.053093, 32.584496, 20.500055>,  <43.273464, 33.243706, 20.807343>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.053093, 32.584496, 20.500055> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.766651, 32.845051, 20.399750>,  <42.594784, 33.001385, 20.339565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.766651, 32.845051, 20.399750>,  <43.053093, 32.584496, 20.500055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.766651, 32.845051, 20.399750> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105763, -0.456383, -0.883475,
		-0.689931, -0.606142, 0.395712,
		-0.716108, 0.651389, -0.250765,
		42.551819, 33.040466, 20.324520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.621841, 32.169743, 20.041897>,  <43.053093, 32.584496, 20.500055>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.621841, 32.169743, 20.041897> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.553329, 32.558632, 19.978088>,  <42.512222, 32.791965, 19.939802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.553329, 32.558632, 19.978088>,  <42.621841, 32.169743, 20.041897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.553329, 32.558632, 19.978088> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152139, -0.186074, -0.970685,
		-0.973404, -0.141991, 0.179784,
		-0.171282, 0.972222, -0.159523,
		42.501945, 32.850300, 19.930231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.123104, 31.958664, 19.491617>,  <42.621841, 32.169743, 20.041897>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.123104, 31.958664, 19.491617> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.456539, 32.165565, 19.414068>,  <42.656601, 32.289707, 19.367538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.456539, 32.165565, 19.414068>,  <42.123104, 31.958664, 19.491617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.456539, 32.165565, 19.414068> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485883, 0.519608, -0.702798,
		-0.262786, 0.680041, 0.684462,
		0.833583, 0.517254, -0.193875,
		42.706615, 32.320740, 19.355906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.633549, 31.653572, 19.041298>,  <42.123104, 31.958664, 19.491617>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.633549, 31.653572, 19.041298> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.465408, 32.002678, 19.140566>,  <41.364525, 32.212143, 19.200127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.465408, 32.002678, 19.140566>,  <41.633549, 31.653572, 19.041298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.465408, 32.002678, 19.140566> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294761, 0.127329, -0.947050,
		-0.858152, -0.471240, 0.203735,
		-0.420346, 0.872766, 0.248170,
		41.339306, 32.264507, 19.215017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.797451, 30.806175, 19.053432>,  <41.633549, 31.653572, 19.041298>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.797451, 30.806175, 19.053432> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.650871, 30.544718, 19.318298>,  <41.562923, 30.387844, 19.477219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.650871, 30.544718, 19.318298>,  <41.797451, 30.806175, 19.053432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.650871, 30.544718, 19.318298> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403662, 0.529520, 0.746100,
		-0.838313, 0.540701, 0.069807,
		-0.366453, -0.653644, 0.662164,
		41.540936, 30.348625, 19.516947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.481152, 31.233047, 19.672504>,  <41.797451, 30.806175, 19.053432>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.481152, 31.233047, 19.672504> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.502213, 30.858797, 19.812120>,  <41.514851, 30.634247, 19.895891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.502213, 30.858797, 19.812120>,  <41.481152, 31.233047, 19.672504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.502213, 30.858797, 19.812120> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233623, 0.351368, 0.906620,
		-0.970900, 0.033806, 0.237086,
		0.052655, -0.935627, 0.349042,
		41.518009, 30.578110, 19.916832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.079079, 31.210093, 20.232412>,  <41.481152, 31.233047, 19.672504>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.079079, 31.210093, 20.232412> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.341843, 30.916615, 20.301876>,  <41.499500, 30.740528, 20.343554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.341843, 30.916615, 20.301876>,  <41.079079, 31.210093, 20.232412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.341843, 30.916615, 20.301876> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181636, 0.377546, 0.908002,
		-0.731759, -0.564937, 0.381281,
		0.656915, -0.733693, 0.173660,
		41.538918, 30.696507, 20.353973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.937042, 30.918299, 20.869354>,  <41.079079, 31.210093, 20.232412>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.937042, 30.918299, 20.869354> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.318966, 30.806175, 20.829836>,  <41.548122, 30.738901, 20.806126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.318966, 30.806175, 20.829836>,  <40.937042, 30.918299, 20.869354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.318966, 30.806175, 20.829836> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141016, 0.134651, 0.980808,
		-0.261627, -0.950419, 0.168095,
		0.954812, -0.280310, -0.098796,
		41.605408, 30.722082, 20.800198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.040821, 30.448153, 21.448011>,  <40.937042, 30.918299, 20.869354>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.040821, 30.448153, 21.448011> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.398228, 30.579241, 21.325232>,  <41.612671, 30.657894, 21.251564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.398228, 30.579241, 21.325232>,  <41.040821, 30.448153, 21.448011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.398228, 30.579241, 21.325232> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266983, 0.161879, 0.950008,
		0.361029, -0.930802, 0.057146,
		0.893520, 0.327723, -0.306952,
		41.666283, 30.677557, 21.233147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.586212, 30.031164, 21.746847>,  <41.040821, 30.448153, 21.448011>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.586212, 30.031164, 21.746847> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.767471, 30.377880, 21.663584>,  <41.876225, 30.585911, 21.613625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.767471, 30.377880, 21.663584>,  <41.586212, 30.031164, 21.746847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.767471, 30.377880, 21.663584> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187976, 0.135348, 0.972803,
		0.871392, -0.479950, -0.101604,
		0.453145, 0.866792, -0.208161,
		41.903416, 30.637918, 21.601135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.016727, 30.266859, 22.418207>,  <41.586212, 30.031164, 21.746847>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.016727, 30.266859, 22.418207> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.034470, 30.591240, 22.184837>,  <42.045116, 30.785870, 22.044815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.034470, 30.591240, 22.184837>,  <42.016727, 30.266859, 22.418207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.034470, 30.591240, 22.184837> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196071, 0.579710, 0.790881,
		0.979586, 0.079310, 0.184720,
		0.044360, 0.810954, -0.583426,
		42.047779, 30.834526, 22.009809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.634846, 30.724165, 22.660982>,  <42.016727, 30.266859, 22.418207>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.634846, 30.724165, 22.660982> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.334473, 30.932480, 22.498562>,  <42.154247, 31.057468, 22.401110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.334473, 30.932480, 22.498562>,  <42.634846, 30.724165, 22.660982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.334473, 30.932480, 22.498562> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059099, 0.559413, 0.826780,
		0.657727, 0.644855, -0.389304,
		-0.750934, 0.520788, -0.406051,
		42.109192, 31.088717, 22.376747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.775928, 31.392498, 22.853838>,  <42.634846, 30.724165, 22.660982>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.775928, 31.392498, 22.853838> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.396828, 31.425020, 22.730446>,  <42.169369, 31.444532, 22.656410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.396828, 31.425020, 22.730446>,  <42.775928, 31.392498, 22.853838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.396828, 31.425020, 22.730446> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201793, 0.596159, 0.777094,
		0.247085, 0.798739, -0.548602,
		-0.947749, 0.081304, -0.308482,
		42.112503, 31.449411, 22.637901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.596577, 32.093899, 22.877781>,  <42.775928, 31.392498, 22.853838>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.596577, 32.093899, 22.877781> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.252068, 31.894835, 22.918856>,  <42.045364, 31.775396, 22.943501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.252068, 31.894835, 22.918856>,  <42.596577, 32.093899, 22.877781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.252068, 31.894835, 22.918856> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229003, 0.560532, 0.795840,
		-0.453619, 0.661919, -0.596736,
		-0.861271, -0.497663, 0.102687,
		41.993687, 31.745535, 22.949661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.138180, 32.648354, 23.066624>,  <42.596577, 32.093899, 22.877781>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.138180, 32.648354, 23.066624> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.930706, 32.315273, 23.144165>,  <41.806221, 32.115425, 23.190689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.930706, 32.315273, 23.144165>,  <42.138180, 32.648354, 23.066624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.930706, 32.315273, 23.144165> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438585, 0.453777, 0.775712,
		-0.733902, 0.317327, -0.600576,
		-0.518682, -0.832700, 0.193853,
		41.775101, 32.065464, 23.202320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.568073, 32.969418, 23.309029>,  <42.138180, 32.648354, 23.066624>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.568073, 32.969418, 23.309029> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.565205, 32.595829, 23.451942>,  <41.563484, 32.371677, 23.537691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.565205, 32.595829, 23.451942>,  <41.568073, 32.969418, 23.309029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.565205, 32.595829, 23.451942> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151397, 0.354191, 0.922837,
		-0.988447, -0.047474, -0.143940,
		-0.007172, -0.933967, 0.357287,
		41.563053, 32.315639, 23.559128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.943447, 32.844193, 23.793795>,  <41.568073, 32.969418, 23.309029>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.943447, 32.844193, 23.793795> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.220058, 32.569275, 23.882715>,  <41.386024, 32.404324, 23.936068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.220058, 32.569275, 23.882715>,  <40.943447, 32.844193, 23.793795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.220058, 32.569275, 23.882715> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107134, 0.206758, 0.972509,
		-0.714364, -0.696330, 0.069346,
		0.691525, -0.687296, 0.222301,
		41.427517, 32.363087, 23.949406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.636719, 32.453751, 24.368460>,  <40.943447, 32.844193, 23.793795>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.636719, 32.453751, 24.368460> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.029999, 32.381458, 24.378662>,  <41.265968, 32.338081, 24.384783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.029999, 32.381458, 24.378662>,  <40.636719, 32.453751, 24.368460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.029999, 32.381458, 24.378662> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018724, 0.039123, 0.999059,
		-0.181562, -0.982753, 0.035082,
		0.983201, -0.180734, 0.025504,
		41.324959, 32.327236, 24.386312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.126961, 31.955547, 24.488741>,  <40.636719, 32.453751, 24.368460>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.126961, 31.955547, 24.488741> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.733768, 32.029034, 24.489098>,  <39.497852, 32.073124, 24.489311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.733768, 32.029034, 24.489098>,  <40.126961, 31.955547, 24.488741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.733768, 32.029034, 24.489098> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082110, -0.434974, -0.896692,
		-0.164345, -0.881503, 0.442655,
		-0.982979, 0.183713, 0.000894,
		39.438873, 32.084148, 24.489367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.768265, 31.324532, 24.316881>,  <40.126961, 31.955547, 24.488741>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.768265, 31.324532, 24.316881> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.522137, 31.626745, 24.226954>,  <39.374458, 31.808073, 24.172997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.522137, 31.626745, 24.226954>,  <39.768265, 31.324532, 24.316881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.522137, 31.626745, 24.226954> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267950, -0.468695, -0.841741,
		-0.741338, -0.457701, 0.490844,
		-0.615322, 0.755536, -0.224820,
		39.337540, 31.853407, 24.159508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.191383, 30.980471, 24.063810>,  <39.768265, 31.324532, 24.316881>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.191383, 30.980471, 24.063810> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.130348, 31.356581, 23.942093>,  <39.093727, 31.582247, 23.869062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.130348, 31.356581, 23.942093>,  <39.191383, 30.980471, 24.063810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.130348, 31.356581, 23.942093> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392210, -0.340230, -0.854643,
		-0.907132, -0.011061, 0.420701,
		-0.152588, 0.940277, -0.304295,
		39.084572, 31.638664, 23.850805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.442894, 31.073265, 23.862087>,  <39.191383, 30.980471, 24.063810>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.442894, 31.073265, 23.862087> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.679146, 31.336319, 23.675035>,  <38.820896, 31.494152, 23.562805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.679146, 31.336319, 23.675035>,  <38.442894, 31.073265, 23.862087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.679146, 31.336319, 23.675035> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415785, -0.248640, -0.874815,
		-0.691579, 0.711123, 0.126581,
		0.590628, 0.657634, -0.467628,
		38.856335, 31.533609, 23.534746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.195610, 31.073009, 23.292349>,  <38.442894, 31.073265, 23.862087>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.195610, 31.073009, 23.292349> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.531239, 31.273117, 23.206844>,  <38.732616, 31.393181, 23.155542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.531239, 31.273117, 23.206844>,  <38.195610, 31.073009, 23.292349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.531239, 31.273117, 23.206844> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199671, -0.082309, -0.976400,
		-0.506056, 0.861950, 0.030826,
		0.839070, 0.500268, -0.213759,
		38.782959, 31.423197, 23.142717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.958282, 31.453718, 22.739933>,  <38.195610, 31.073009, 23.292349>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.958282, 31.453718, 22.739933> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.357300, 31.425962, 22.736109>,  <38.596710, 31.409309, 22.733814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.357300, 31.425962, 22.736109>,  <37.958282, 31.453718, 22.739933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.357300, 31.425962, 22.736109> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028741, -0.281036, -0.959267,
		0.063875, 0.957185, -0.282340,
		0.997544, -0.069388, -0.009560,
		38.656563, 31.405146, 22.733240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.234211, 31.539883, 22.011793>,  <37.958282, 31.453718, 22.739933>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.234211, 31.539883, 22.011793> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.563797, 31.374725, 22.167021>,  <38.761551, 31.275631, 22.260157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.563797, 31.374725, 22.167021>,  <38.234211, 31.539883, 22.011793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.563797, 31.374725, 22.167021> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137460, -0.518754, -0.843800,
		0.549712, 0.748607, -0.370680,
		0.823967, -0.412893, 0.388069,
		38.810986, 31.250858, 22.283442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.092644, 32.174934, 21.548849>,  <38.234211, 31.539883, 22.011793>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.092644, 32.174934, 21.548849> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.751518, 32.216797, 21.344204>,  <37.546841, 32.241913, 21.221416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.751518, 32.216797, 21.344204>,  <38.092644, 32.174934, 21.548849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.751518, 32.216797, 21.344204> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511658, 0.028469, 0.858717,
		0.104433, 0.994101, 0.029268,
		-0.852818, 0.104654, -0.511613,
		37.495674, 32.248192, 21.190720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.631161, 32.728298, 21.910759>,  <38.092644, 32.174934, 21.548849>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.631161, 32.728298, 21.910759> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.401405, 32.494671, 21.681345>,  <37.263554, 32.354496, 21.543695>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.401405, 32.494671, 21.681345>,  <37.631161, 32.728298, 21.910759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.401405, 32.494671, 21.681345> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692581, -0.026746, 0.720845,
		-0.436361, 0.811265, -0.389151,
		-0.574388, -0.584067, -0.573537,
		37.229088, 32.319450, 21.509283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.982113, 33.104515, 21.829922>,  <37.631161, 32.728298, 21.910759>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.982113, 33.104515, 21.829922> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.931004, 32.713783, 21.761250>,  <36.900337, 32.479343, 21.720045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.931004, 32.713783, 21.761250>,  <36.982113, 33.104515, 21.829922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.931004, 32.713783, 21.761250> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596785, -0.062535, 0.799961,
		-0.792163, 0.204670, -0.574968,
		-0.127772, -0.976831, -0.171682,
		36.892673, 32.420734, 21.709745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.334011, 32.973606, 22.049133>,  <36.982113, 33.104515, 21.829922>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.334011, 32.973606, 22.049133> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.489468, 32.605183, 22.039284>,  <36.582741, 32.384129, 22.033375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.489468, 32.605183, 22.039284>,  <36.334011, 32.973606, 22.049133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.489468, 32.605183, 22.039284> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557287, -0.256261, 0.789786,
		-0.733751, -0.293220, -0.612888,
		0.388641, -0.921061, -0.024624,
		36.606060, 32.328865, 22.031897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.813011, 32.553951, 22.080997>,  <36.334011, 32.973606, 22.049133>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.813011, 32.553951, 22.080997> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.106068, 32.311298, 22.204443>,  <36.281902, 32.165707, 22.278511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.106068, 32.311298, 22.204443>,  <35.813011, 32.553951, 22.080997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.106068, 32.311298, 22.204443> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550701, -0.261894, 0.792553,
		-0.399964, -0.750606, -0.525946,
		0.732637, -0.606632, 0.308612,
		36.325859, 32.129311, 22.297028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.478340, 31.942114, 22.532925>,  <35.813011, 32.553951, 22.080997>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.478340, 31.942114, 22.532925> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.868198, 31.909800, 22.616385>,  <36.102116, 31.890411, 22.666460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.868198, 31.909800, 22.616385>,  <35.478340, 31.942114, 22.532925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.868198, 31.909800, 22.616385> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207652, 0.020625, 0.977985,
		-0.083313, -0.996518, 0.003326,
		0.974648, -0.080788, 0.208647,
		36.160591, 31.885565, 22.678978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.545013, 31.392317, 23.012850>,  <35.478340, 31.942114, 22.532925>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.545013, 31.392317, 23.012850> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.853741, 31.641668, 23.062962>,  <36.038979, 31.791279, 23.093029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.853741, 31.641668, 23.062962>,  <35.545013, 31.392317, 23.012850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.853741, 31.641668, 23.062962> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116166, -0.055470, 0.991680,
		0.625142, -0.779950, 0.029603,
		0.771818, 0.623379, 0.125280,
		36.085285, 31.828682, 23.100546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<40.686035, 34.913986, 18.877424> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.972622, 34.817348, 19.139206>,  <41.144573, 34.759365, 19.296276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.972622, 34.817348, 19.139206>,  <40.686035, 34.913986, 18.877424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.972622, 34.817348, 19.139206> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632164, 0.171917, 0.755522,
		-0.295043, -0.955027, -0.029557,
		0.716462, -0.241596, 0.654456,
		41.187561, 34.744869, 19.335543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.438705, 34.366867, 19.322020>,  <40.686035, 34.913986, 18.877424>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.438705, 34.366867, 19.322020> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.713741, 34.599163, 19.496355>,  <40.878765, 34.738541, 19.600956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.713741, 34.599163, 19.496355>,  <40.438705, 34.366867, 19.322020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.713741, 34.599163, 19.496355> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659368, 0.248042, 0.709725,
		0.304061, -0.775379, 0.553475,
		0.687591, 0.580742, 0.435840,
		40.920017, 34.773384, 19.627108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.338726, 34.373840, 20.016727>,  <40.438705, 34.366867, 19.322020>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.338726, 34.373840, 20.016727> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.587116, 34.686005, 19.987446>,  <40.736149, 34.873302, 19.969877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.587116, 34.686005, 19.987446>,  <40.338726, 34.373840, 20.016727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.587116, 34.686005, 19.987446> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398561, 0.394785, 0.827825,
		0.674941, -0.484879, 0.556190,
		0.620970, 0.780408, -0.073202,
		40.773407, 34.920128, 19.965485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.409653, 34.539814, 20.738138>,  <40.338726, 34.373840, 20.016727>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.409653, 34.539814, 20.738138> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.540634, 34.853352, 20.527096>,  <40.619221, 35.041473, 20.400471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.540634, 34.853352, 20.527096>,  <40.409653, 34.539814, 20.738138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.540634, 34.853352, 20.527096> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312367, 0.616802, 0.722483,
		0.891741, -0.071771, 0.446819,
		0.327452, 0.783840, -0.527609,
		40.638870, 35.088505, 20.368813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.818291, 34.972317, 21.168921>,  <40.409653, 34.539814, 20.738138>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.818291, 34.972317, 21.168921> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.684612, 35.210461, 20.876657>,  <40.604404, 35.353348, 20.701300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.684612, 35.210461, 20.876657>,  <40.818291, 34.972317, 21.168921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.684612, 35.210461, 20.876657> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381677, 0.623330, 0.682482,
		0.861764, 0.506956, 0.018923,
		-0.334193, 0.595361, -0.730657,
		40.584354, 35.389069, 20.657461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.035316, 35.630665, 21.462557>,  <40.818291, 34.972317, 21.168921>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.035316, 35.630665, 21.462557> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.782307, 35.720585, 21.166077>,  <40.630501, 35.774536, 20.988188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.782307, 35.720585, 21.166077>,  <41.035316, 35.630665, 21.462557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.782307, 35.720585, 21.166077> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420062, 0.704436, 0.572117,
		0.650741, 0.673228, -0.351142,
		-0.632522, 0.224799, -0.741202,
		40.592548, 35.788025, 20.943716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.006001, 36.314732, 21.496090>,  <41.035316, 35.630665, 21.462557>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.006001, 36.314732, 21.496090> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.672604, 36.197247, 21.308887>,  <40.472565, 36.126755, 21.196566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.672604, 36.197247, 21.308887>,  <41.006001, 36.314732, 21.496090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.672604, 36.197247, 21.308887> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511655, 0.730023, 0.453074,
		0.208584, 0.617090, -0.758744,
		-0.833488, -0.293711, -0.468008,
		40.422558, 36.109135, 21.168486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.729004, 36.927853, 21.289257>,  <41.006001, 36.314732, 21.496090>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.729004, 36.927853, 21.289257> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.429951, 36.662365, 21.280201>,  <40.250519, 36.503071, 21.274767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.429951, 36.662365, 21.280201>,  <40.729004, 36.927853, 21.289257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.429951, 36.662365, 21.280201> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589415, 0.647456, 0.483105,
		-0.305989, 0.374532, -0.875270,
		-0.747637, -0.663722, -0.022640,
		40.205658, 36.463249, 21.273409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.117580, 37.307472, 21.005796>,  <40.729004, 36.927853, 21.289257>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.117580, 37.307472, 21.005796> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.010086, 36.991055, 21.225622>,  <39.945591, 36.801205, 21.357517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.010086, 36.991055, 21.225622>,  <40.117580, 37.307472, 21.005796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.010086, 36.991055, 21.225622> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747094, 0.531312, 0.399448,
		-0.607973, -0.303231, -0.733771,
		-0.268736, -0.791049, 0.549566,
		39.929466, 36.753738, 21.390491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.382030, 37.299091, 21.015789>,  <40.117580, 37.307472, 21.005796>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.382030, 37.299091, 21.015789> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.468571, 37.054722, 21.320412>,  <39.520493, 36.908100, 21.503185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.468571, 37.054722, 21.320412>,  <39.382030, 37.299091, 21.015789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.468571, 37.054722, 21.320412> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634075, 0.505211, 0.585415,
		-0.742390, -0.609536, -0.278071,
		0.216347, -0.610924, 0.761555,
		39.533474, 36.871445, 21.548878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.718891, 37.208363, 21.320717>,  <39.382030, 37.299091, 21.015789>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.718891, 37.208363, 21.320717> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.979946, 37.091061, 21.600164>,  <39.136578, 37.020679, 21.767834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.979946, 37.091061, 21.600164>,  <38.718891, 37.208363, 21.320717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.979946, 37.091061, 21.600164> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482483, 0.550081, 0.681631,
		-0.584191, -0.781928, 0.217510,
		0.652634, -0.293257, 0.698619,
		39.175735, 37.003082, 21.809750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285072, 36.969440, 21.902300>,  <38.718891, 37.208363, 21.320717>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.285072, 36.969440, 21.902300> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.650246, 37.010853, 22.060204>,  <38.869350, 37.035702, 22.154945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.650246, 37.010853, 22.060204>,  <38.285072, 36.969440, 21.902300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.650246, 37.010853, 22.060204> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398602, 0.433805, 0.808041,
		-0.087590, -0.895039, 0.437303,
		0.912932, 0.103533, 0.394761,
		38.924126, 37.041912, 22.178633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.897850, 36.389885, 22.142609>,  <38.285072, 36.969440, 21.902300>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.897850, 36.389885, 22.142609> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.565773, 36.471996, 21.935286>,  <37.366528, 36.521263, 21.810892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.565773, 36.471996, 21.935286>,  <37.897850, 36.389885, 22.142609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.565773, 36.471996, 21.935286> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443305, -0.320660, -0.837053,
		-0.338032, -0.924682, 0.175207,
		-0.830190, 0.205280, -0.518310,
		37.316715, 36.533581, 21.779793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.853905, 35.830299, 21.630632>,  <37.897850, 36.389885, 22.142609>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.853905, 35.830299, 21.630632> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.612873, 36.123615, 21.504660>,  <37.468254, 36.299606, 21.429075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.612873, 36.123615, 21.504660>,  <37.853905, 35.830299, 21.630632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.612873, 36.123615, 21.504660> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272287, -0.182036, -0.944840,
		-0.750171, -0.655095, -0.089973,
		-0.602581, 0.733290, -0.314932,
		37.432098, 36.343601, 21.410181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.533634, 35.535484, 21.008947>,  <37.853905, 35.830299, 21.630632>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.533634, 35.535484, 21.008947> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.481236, 35.928997, 20.959936>,  <37.449799, 36.165104, 20.930529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.481236, 35.928997, 20.959936>,  <37.533634, 35.535484, 21.008947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.481236, 35.928997, 20.959936> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091194, -0.111114, -0.989615,
		-0.987180, -0.140807, -0.075160,
		-0.130993, 0.983782, -0.122530,
		37.441936, 36.224133, 20.923178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.949810, 35.651695, 20.662636>,  <37.533634, 35.535484, 21.008947>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.949810, 35.651695, 20.662636> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.191441, 35.965088, 20.604340>,  <37.336418, 36.153126, 20.569363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.191441, 35.965088, 20.604340>,  <36.949810, 35.651695, 20.662636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.191441, 35.965088, 20.604340> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002037, -0.184396, -0.982850,
		-0.796923, 0.593421, -0.112985,
		0.604078, 0.783486, -0.145741,
		37.372665, 36.200134, 20.560617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.704220, 35.975143, 19.999527>,  <36.949810, 35.651695, 20.662636>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.704220, 35.975143, 19.999527> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.069004, 36.114803, 20.085714>,  <37.287876, 36.198597, 20.137426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.069004, 36.114803, 20.085714>,  <36.704220, 35.975143, 19.999527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.069004, 36.114803, 20.085714> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274590, -0.129196, -0.952842,
		-0.304846, 0.928119, -0.213694,
		0.911959, 0.349148, 0.215468,
		37.342590, 36.219547, 20.150354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.901318, 36.290810, 19.393963>,  <36.704220, 35.975143, 19.999527>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.901318, 36.290810, 19.393963> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.247772, 36.252136, 19.590111>,  <37.455647, 36.228931, 19.707800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.247772, 36.252136, 19.590111>,  <36.901318, 36.290810, 19.393963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.247772, 36.252136, 19.590111> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445312, -0.296218, -0.844957,
		0.226945, 0.950215, -0.213513,
		0.866137, -0.096679, 0.490368,
		37.507614, 36.223133, 19.737221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.397980, 36.566368, 18.855099>,  <36.901318, 36.290810, 19.393963>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.397980, 36.566368, 18.855099> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.604191, 36.371498, 19.137062>,  <37.727917, 36.254578, 19.306240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.604191, 36.371498, 19.137062>,  <37.397980, 36.566368, 18.855099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.604191, 36.371498, 19.137062> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602140, -0.379320, -0.702527,
		0.609635, 0.786626, 0.097793,
		0.515531, -0.487170, 0.704906,
		37.758850, 36.225346, 19.348534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.092724, 36.695290, 18.714783>,  <37.397980, 36.566368, 18.855099>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.092724, 36.695290, 18.714783> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.078964, 36.359142, 18.931150>,  <38.070709, 36.157455, 19.060972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.078964, 36.359142, 18.931150>,  <38.092724, 36.695290, 18.714783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.078964, 36.359142, 18.931150> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605823, -0.447997, -0.657478,
		0.794856, 0.305086, 0.524525,
		-0.034398, -0.840370, 0.540921,
		38.068645, 36.107033, 19.093428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.759830, 36.475967, 18.697586>,  <38.092724, 36.695290, 18.714783>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.759830, 36.475967, 18.697586> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.552135, 36.154194, 18.813015>,  <38.427517, 35.961128, 18.882273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.552135, 36.154194, 18.813015>,  <38.759830, 36.475967, 18.697586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.552135, 36.154194, 18.813015> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491141, -0.557202, -0.669556,
		0.699410, -0.205928, 0.684412,
		-0.519236, -0.804437, 0.288573,
		38.396366, 35.912861, 18.899588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.246513, 35.990417, 18.823080>,  <38.759830, 36.475967, 18.697586>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.246513, 35.990417, 18.823080> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.922970, 35.755856, 18.805729>,  <38.728844, 35.615120, 18.795319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.922970, 35.755856, 18.805729>,  <39.246513, 35.990417, 18.823080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.922970, 35.755856, 18.805729> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479913, -0.615740, -0.624939,
		0.339757, -0.526303, 0.779468,
		-0.808856, -0.586404, -0.043378,
		38.680313, 35.579933, 18.792715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.526108, 35.312771, 18.834606>,  <39.246513, 35.990417, 18.823080>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.526108, 35.312771, 18.834606> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.163059, 35.269211, 18.672436>,  <38.945232, 35.243073, 18.575134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.163059, 35.269211, 18.672436>,  <39.526108, 35.312771, 18.834606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.163059, 35.269211, 18.672436> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349986, -0.729604, -0.587526,
		-0.231815, -0.675143, 0.700318,
		-0.907619, -0.108904, -0.405424,
		38.890774, 35.236538, 18.550808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.652214, 34.768421, 18.527456>,  <39.526108, 35.312771, 18.834606>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.652214, 34.768421, 18.527456> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.300949, 34.840416, 18.350172>,  <39.090191, 34.883614, 18.243801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.300949, 34.840416, 18.350172>,  <39.652214, 34.768421, 18.527456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.300949, 34.840416, 18.350172> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216551, -0.676571, -0.703817,
		-0.426542, -0.714042, 0.555162,
		-0.878161, 0.179986, -0.443213,
		39.037502, 34.894413, 18.217209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.276054, 34.106678, 18.432011>,  <39.652214, 34.768421, 18.527456>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.276054, 34.106678, 18.432011> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.179775, 34.372272, 18.148832>,  <39.122009, 34.531631, 17.978926>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.179775, 34.372272, 18.148832>,  <39.276054, 34.106678, 18.432011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.179775, 34.372272, 18.148832> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070958, -0.715397, -0.695106,
		-0.968003, -0.217543, 0.125077,
		-0.240696, 0.663989, -0.707943,
		39.107567, 34.571468, 17.936449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.736687, 34.131435, 19.041243>,  <39.276054, 34.106678, 18.432011>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.736687, 34.131435, 19.041243> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.638004, 33.888485, 18.739187>,  <38.578796, 33.742714, 18.557955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.638004, 33.888485, 18.739187>,  <38.736687, 34.131435, 19.041243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.638004, 33.888485, 18.739187> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332540, -0.678851, 0.654659,
		-0.910249, 0.412621, -0.034501,
		-0.246705, -0.607376, -0.755136,
		38.563992, 33.706272, 18.512646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.979610, 33.967907, 19.067148>,  <38.736687, 34.131435, 19.041243>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.979610, 33.967907, 19.067148> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.205006, 33.682293, 18.900951>,  <38.340244, 33.510925, 18.801233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.205006, 33.682293, 18.900951>,  <37.979610, 33.967907, 19.067148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.205006, 33.682293, 18.900951> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289876, -0.641858, 0.709923,
		-0.773596, -0.279594, -0.568662,
		0.563490, -0.714035, -0.415491,
		38.374054, 33.468082, 18.776304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.465485, 33.415886, 18.858952>,  <37.979610, 33.967907, 19.067148>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.465485, 33.415886, 18.858952> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.832066, 33.274349, 18.933695>,  <38.052013, 33.189426, 18.978540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.832066, 33.274349, 18.933695>,  <37.465485, 33.415886, 18.858952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.832066, 33.274349, 18.933695> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396314, -0.738124, 0.545993,
		-0.055268, -0.574431, -0.816685,
		0.916450, -0.353840, 0.186860,
		38.107002, 33.168198, 18.989752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.364532, 32.659290, 18.892542>,  <37.465485, 33.415886, 18.858952>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.364532, 32.659290, 18.892542> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.713314, 32.726185, 19.076597>,  <37.922585, 32.766323, 19.187031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.713314, 32.726185, 19.076597>,  <37.364532, 32.659290, 18.892542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.713314, 32.726185, 19.076597> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284675, -0.591450, 0.754418,
		0.398315, -0.788808, -0.468110,
		0.871955, 0.167237, 0.460138,
		37.974899, 32.776356, 19.214638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.497078, 32.020824, 19.262247>,  <37.364532, 32.659290, 18.892542>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.497078, 32.020824, 19.262247> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.731461, 32.292080, 19.439686>,  <37.872089, 32.454834, 19.546148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.731461, 32.292080, 19.439686>,  <37.497078, 32.020824, 19.262247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.731461, 32.292080, 19.439686> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312856, -0.315657, 0.895813,
		0.747512, -0.663692, 0.027198,
		0.585958, 0.678140, 0.443598,
		37.907249, 32.495522, 19.572765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.894981, 31.689423, 19.592472>,  <37.497078, 32.020824, 19.262247>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.894981, 31.689423, 19.592472> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.892193, 32.044857, 19.775936>,  <37.890518, 32.258118, 19.886015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.892193, 32.044857, 19.775936>,  <37.894981, 31.689423, 19.592472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.892193, 32.044857, 19.775936> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369634, -0.428475, 0.824488,
		0.929151, -0.163785, 0.331440,
		-0.006975, 0.888585, 0.458658,
		37.890099, 32.311432, 19.913534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.982571, 31.536358, 20.281328>,  <37.894981, 31.689423, 19.592472>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.982571, 31.536358, 20.281328> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.870209, 31.914124, 20.349648>,  <37.802792, 32.140785, 20.390638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.870209, 31.914124, 20.349648>,  <37.982571, 31.536358, 20.281328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.870209, 31.914124, 20.349648> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453189, -0.287398, 0.843814,
		0.845999, 0.159626, 0.508729,
		-0.280903, 0.944416, 0.170798,
		37.785938, 32.197449, 20.400887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.183132, 31.745258, 20.950344>,  <37.982571, 31.536358, 20.281328>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.183132, 31.745258, 20.950344> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.873669, 31.979719, 20.854111>,  <37.687992, 32.120396, 20.796371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.873669, 31.979719, 20.854111>,  <38.183132, 31.745258, 20.950344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.873669, 31.979719, 20.854111> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463295, -0.264318, 0.845869,
		0.432216, 0.765875, 0.476052,
		-0.773658, 0.586150, -0.240584,
		37.641571, 32.155563, 20.781935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.686306, 31.526386, 21.455235>,  <38.183132, 31.745258, 20.950344>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.686306, 31.526386, 21.455235> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.852470, 31.278122, 21.721231>,  <38.952171, 31.129164, 21.880829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.852470, 31.278122, 21.721231>,  <38.686306, 31.526386, 21.455235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.852470, 31.278122, 21.721231> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357970, -0.560521, -0.746776,
		0.836235, 0.548267, -0.010669,
		0.415413, -0.620661, 0.664990,
		38.977093, 31.091923, 21.920729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.462425, 31.456102, 21.276976>,  <38.686306, 31.526386, 21.455235>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.462425, 31.456102, 21.276976> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.350437, 31.142414, 21.498466>,  <39.283245, 30.954201, 21.631361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.350437, 31.142414, 21.498466>,  <39.462425, 31.456102, 21.276976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.350437, 31.142414, 21.498466> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435587, -0.617774, -0.654690,
		0.855500, 0.057902, 0.514556,
		-0.279972, -0.784221, 0.553727,
		39.266445, 30.907148, 21.664585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.077904, 30.974073, 21.398781>,  <39.462425, 31.456102, 21.276976>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.077904, 30.974073, 21.398781> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.741417, 30.759901, 21.428885>,  <39.539524, 30.631397, 21.446947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.741417, 30.759901, 21.428885>,  <40.077904, 30.974073, 21.398781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.741417, 30.759901, 21.428885> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325151, -0.612160, -0.720789,
		0.432002, -0.581872, 0.689057,
		-0.841220, -0.535430, 0.075258,
		39.489052, 30.599272, 21.451462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.302505, 30.419779, 21.137312>,  <40.077904, 30.974073, 21.398781>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.302505, 30.419779, 21.137312> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.909882, 30.343321, 21.137796>,  <39.674305, 30.297447, 21.138086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.909882, 30.343321, 21.137796>,  <40.302505, 30.419779, 21.137312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.909882, 30.343321, 21.137796> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106512, -0.552201, -0.826879,
		0.158721, -0.811504, 0.562378,
		-0.981562, -0.191143, 0.001211,
		39.615414, 30.285978, 21.138159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.289253, 29.673700, 21.149870>,  <40.302505, 30.419779, 21.137312>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.289253, 29.673700, 21.149870> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.955173, 29.838171, 21.003784>,  <39.754726, 29.936853, 20.916134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.955173, 29.838171, 21.003784>,  <40.289253, 29.673700, 21.149870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.955173, 29.838171, 21.003784> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162310, -0.450205, -0.878049,
		-0.525457, -0.792620, 0.309270,
		-0.835194, 0.411180, -0.365214,
		39.704613, 29.961525, 20.894220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.943027, 29.111435, 20.867865>,  <40.289253, 29.673700, 21.149870>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.943027, 29.111435, 20.867865> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.780514, 29.442213, 20.712383>,  <39.683006, 29.640680, 20.619095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.780514, 29.442213, 20.712383>,  <39.943027, 29.111435, 20.867865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.780514, 29.442213, 20.712383> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073039, -0.394643, -0.915927,
		-0.910823, -0.400518, 0.099938,
		-0.406285, 0.826948, -0.388704,
		39.658627, 29.690298, 20.595772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.428196, 28.885021, 20.363443>,  <39.943027, 29.111435, 20.867865>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.428196, 28.885021, 20.363443> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.497932, 29.268986, 20.275646>,  <39.539776, 29.499365, 20.222969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.497932, 29.268986, 20.275646>,  <39.428196, 28.885021, 20.363443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.497932, 29.268986, 20.275646> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064065, -0.233490, -0.970246,
		-0.982599, 0.155093, -0.102204,
		0.174342, 0.959910, -0.219491,
		39.550236, 29.556959, 20.209799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.059280, 28.988018, 19.854689>,  <39.428196, 28.885021, 20.363443>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.059280, 28.988018, 19.854689> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.307926, 29.300144, 19.827261>,  <39.457115, 29.487419, 19.810804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.307926, 29.300144, 19.827261>,  <39.059280, 28.988018, 19.854689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.307926, 29.300144, 19.827261> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047755, -0.125123, -0.990991,
		-0.781864, 0.612743, -0.115043,
		0.621618, 0.780314, -0.068568,
		39.494411, 29.534239, 19.806690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.729183, 29.424801, 19.439001>,  <39.059280, 28.988018, 19.854689>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.729183, 29.424801, 19.439001> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.116062, 29.526316, 19.434525>,  <39.348190, 29.587225, 19.431839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.116062, 29.526316, 19.434525>,  <38.729183, 29.424801, 19.439001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.116062, 29.526316, 19.434525> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022325, -0.128804, -0.991419,
		-0.253049, 0.958646, -0.130244,
		0.967196, 0.253786, -0.011192,
		39.406219, 29.602451, 19.431168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.856499, 36.669895, 33.097992> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.243996, 36.739849, 33.027615>,  <36.476494, 36.781822, 32.985390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.243996, 36.739849, 33.027615>,  <35.856499, 36.669895, 33.097992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.243996, 36.739849, 33.027615> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034339, -0.796942, -0.603079,
		-0.245682, 0.578186, -0.778037,
		0.968742, 0.174882, -0.175940,
		36.534618, 36.792313, 32.974834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.939125, 36.793705, 32.377594>,  <35.856499, 36.669895, 33.097992>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.939125, 36.793705, 32.377594> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.258961, 36.636780, 32.559467>,  <36.450863, 36.542625, 32.668594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.258961, 36.636780, 32.559467>,  <35.939125, 36.793705, 32.377594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.258961, 36.636780, 32.559467> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036714, -0.723778, -0.689056,
		0.599420, 0.567657, -0.564323,
		0.799592, -0.392316, 0.454688,
		36.498837, 36.519085, 32.695873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.371906, 36.658070, 31.879383>,  <35.939125, 36.793705, 32.377594>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.371906, 36.658070, 31.879383> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.506149, 36.414753, 32.167091>,  <36.586697, 36.268764, 32.339718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.506149, 36.414753, 32.167091>,  <36.371906, 36.658070, 31.879383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.506149, 36.414753, 32.167091> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214483, -0.694158, -0.687126,
		0.917259, 0.384876, -0.102497,
		0.335607, -0.608289, 0.719272,
		36.606831, 36.232265, 32.382874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.162228, 36.487400, 31.766899>,  <36.371906, 36.658070, 31.879383>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.162228, 36.487400, 31.766899> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.051262, 36.185574, 32.004780>,  <36.984680, 36.004478, 32.147511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.051262, 36.185574, 32.004780>,  <37.162228, 36.487400, 31.766899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.051262, 36.185574, 32.004780> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199027, -0.650708, -0.732781,
		0.939909, -0.084923, 0.330695,
		-0.277416, -0.754564, 0.594704,
		36.968037, 35.959206, 32.183189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.749382, 35.948627, 31.842875>,  <37.162228, 36.487400, 31.766899>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.749382, 35.948627, 31.842875> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.403934, 35.762680, 31.920914>,  <37.196667, 35.651112, 31.967737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.403934, 35.762680, 31.920914>,  <37.749382, 35.948627, 31.842875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.403934, 35.762680, 31.920914> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257758, -0.739723, -0.621588,
		0.433277, -0.486525, 0.758660,
		-0.863616, -0.464870, 0.195100,
		37.144852, 35.623219, 31.979445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.858582, 35.216122, 31.720711>,  <37.749382, 35.948627, 31.842875>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.858582, 35.216122, 31.720711> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.463638, 35.194057, 31.780148>,  <37.226673, 35.180817, 31.815809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.463638, 35.194057, 31.780148>,  <37.858582, 35.216122, 31.720711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.463638, 35.194057, 31.780148> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061195, -0.732128, -0.678413,
		0.146214, -0.678930, 0.719497,
		-0.987358, -0.055164, 0.148595,
		37.167431, 35.177509, 31.824726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.641693, 34.528732, 32.014622>,  <37.858582, 35.216122, 31.720711>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.641693, 34.528732, 32.014622> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.345963, 34.699417, 31.806269>,  <37.168526, 34.801826, 31.681255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.345963, 34.699417, 31.806269>,  <37.641693, 34.528732, 32.014622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.345963, 34.699417, 31.806269> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061048, -0.727910, -0.682950,
		-0.670577, -0.536719, 0.512111,
		-0.739323, 0.426708, -0.520885,
		37.124165, 34.827431, 31.650003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.171955, 34.006302, 31.896589>,  <37.641693, 34.528732, 32.014622>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.171955, 34.006302, 31.896589> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.095345, 34.273212, 31.608685>,  <37.049377, 34.433357, 31.435942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.095345, 34.273212, 31.608685>,  <37.171955, 34.006302, 31.896589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.095345, 34.273212, 31.608685> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093503, -0.717599, -0.690151,
		-0.977023, -0.199484, 0.075049,
		-0.191530, 0.667276, -0.719763,
		37.037884, 34.473396, 31.392756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.703201, 33.671856, 31.469748>,  <37.171955, 34.006302, 31.896589>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.703201, 33.671856, 31.469748> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.851376, 33.964291, 31.240562>,  <36.940281, 34.139751, 31.103052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.851376, 33.964291, 31.240562>,  <36.703201, 33.671856, 31.469748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.851376, 33.964291, 31.240562> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009843, -0.619903, -0.784617,
		-0.928804, 0.285014, -0.236833,
		0.370440, 0.731087, -0.572963,
		36.962509, 34.183617, 31.068674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.354450, 33.620098, 30.789980>,  <36.703201, 33.671856, 31.469748>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.354450, 33.620098, 30.789980> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.665302, 33.858917, 30.710384>,  <36.851814, 34.002209, 30.662626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.665302, 33.858917, 30.710384>,  <36.354450, 33.620098, 30.789980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.665302, 33.858917, 30.710384> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112020, -0.442372, -0.889808,
		-0.619286, 0.669209, -0.410663,
		0.777133, 0.597048, -0.198990,
		36.898441, 34.038033, 30.650688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.182255, 34.025166, 30.137403>,  <36.354450, 33.620098, 30.789980>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.182255, 34.025166, 30.137403> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.579082, 34.035133, 30.186695>,  <36.817177, 34.041115, 30.216270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.579082, 34.035133, 30.186695>,  <36.182255, 34.025166, 30.137403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.579082, 34.035133, 30.186695> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124764, -0.316188, -0.940457,
		0.015525, 0.948369, -0.316789,
		0.992065, 0.024923, 0.123231,
		36.876701, 34.042610, 30.223663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.417976, 34.177391, 29.464558>,  <36.182255, 34.025166, 30.137403>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.417976, 34.177391, 29.464558> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.735970, 34.017216, 29.646832>,  <36.926765, 33.921112, 29.756195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.735970, 34.017216, 29.646832>,  <36.417976, 34.177391, 29.464558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.735970, 34.017216, 29.646832> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302950, -0.388729, -0.870121,
		0.525564, 0.829785, -0.187724,
		0.794987, -0.400434, 0.455685,
		36.974464, 33.897087, 29.783537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.955967, 34.517338, 28.851439>,  <36.417976, 34.177391, 29.464558>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.955967, 34.517338, 28.851439> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.627953, 34.314251, 28.745789>,  <35.431145, 34.192398, 28.682398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.627953, 34.314251, 28.745789>,  <35.955967, 34.517338, 28.851439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.627953, 34.314251, 28.745789> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543186, 0.545123, 0.638585,
		-0.180237, 0.667134, -0.722805,
		-0.820039, -0.507714, -0.264126,
		35.381943, 34.161938, 28.666552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.478943, 35.008698, 28.680466>,  <35.955967, 34.517338, 28.851439>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.478943, 35.008698, 28.680466> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.248600, 34.686131, 28.734255>,  <35.110394, 34.492592, 28.766529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.248600, 34.686131, 28.734255>,  <35.478943, 35.008698, 28.680466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.248600, 34.686131, 28.734255> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682487, 0.564738, 0.463986,
		-0.450107, 0.175413, -0.875576,
		-0.575860, -0.806412, 0.134475,
		35.075844, 34.444206, 28.774597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.841370, 35.275856, 28.505159>,  <35.478943, 35.008698, 28.680466>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.841370, 35.275856, 28.505159> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.786911, 34.950371, 28.731201>,  <34.754234, 34.755081, 28.866827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.786911, 34.950371, 28.731201>,  <34.841370, 35.275856, 28.505159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.786911, 34.950371, 28.731201> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587347, 0.525653, 0.615396,
		-0.797802, -0.248127, -0.549496,
		-0.136147, -0.813709, 0.565104,
		34.746067, 34.706257, 28.900732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.156681, 35.225620, 28.653637>,  <34.841370, 35.275856, 28.505159>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.156681, 35.225620, 28.653637> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.304588, 35.000271, 28.949173>,  <34.393333, 34.865063, 29.126495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.304588, 35.000271, 28.949173>,  <34.156681, 35.225620, 28.653637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.304588, 35.000271, 28.949173> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645671, 0.416008, 0.640349,
		-0.668116, -0.713829, -0.209925,
		0.369770, -0.563370, 0.738840,
		34.415520, 34.831261, 29.170826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.538921, 34.929890, 29.053911>,  <34.156681, 35.225620, 28.653637>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.538921, 34.929890, 29.053911> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.856323, 34.900475, 29.295553>,  <34.046764, 34.882824, 29.440538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.856323, 34.900475, 29.295553>,  <33.538921, 34.929890, 29.053911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.856323, 34.900475, 29.295553> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521519, 0.429429, 0.737298,
		-0.313644, -0.900101, 0.302400,
		0.793502, -0.073542, 0.604107,
		34.094376, 34.878410, 29.476786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.115204, 34.703651, 29.713545>,  <33.538921, 34.929890, 29.053911>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.115204, 34.703651, 29.713545> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.486897, 34.843800, 29.760473>,  <33.709911, 34.927891, 29.788630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.486897, 34.843800, 29.760473>,  <33.115204, 34.703651, 29.713545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.486897, 34.843800, 29.760473> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313632, 0.580065, 0.751770,
		0.195346, -0.735366, 0.648905,
		0.929233, 0.350373, 0.117321,
		33.765667, 34.948914, 29.795670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.145645, 34.735771, 30.345585>,  <33.115204, 34.703651, 29.713545>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.145645, 34.735771, 30.345585> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.438690, 34.964043, 30.197205>,  <33.614517, 35.101006, 30.108177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.438690, 34.964043, 30.197205>,  <33.145645, 34.735771, 30.345585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.438690, 34.964043, 30.197205> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235405, 0.723807, 0.648604,
		0.638638, -0.387855, 0.664613,
		0.732615, 0.570677, -0.370948,
		33.658474, 35.135246, 30.085920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.603504, 34.901737, 30.919304>,  <33.145645, 34.735771, 30.345585>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.603504, 34.901737, 30.919304> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.656898, 35.198170, 30.656099>,  <33.688934, 35.376030, 30.498177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.656898, 35.198170, 30.656099>,  <33.603504, 34.901737, 30.919304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.656898, 35.198170, 30.656099> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248975, 0.667735, 0.701528,
		0.959267, 0.070188, 0.273641,
		0.133481, 0.741083, -0.658011,
		33.696941, 35.420494, 30.458696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.067886, 35.421013, 31.209555>,  <33.603504, 34.901737, 30.919304>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.067886, 35.421013, 31.209555> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.857437, 35.612488, 30.928400>,  <33.731167, 35.727371, 30.759706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.857437, 35.612488, 30.928400>,  <34.067886, 35.421013, 31.209555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.857437, 35.612488, 30.928400> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324481, 0.650999, 0.686231,
		0.786069, 0.589116, -0.187181,
		-0.526124, 0.478688, -0.702887,
		33.699600, 35.756096, 30.717533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.016594, 36.002449, 31.524961>,  <34.067886, 35.421013, 31.209555>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.016594, 36.002449, 31.524961> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.758797, 36.012436, 31.219282>,  <33.604118, 36.018429, 31.035873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.758797, 36.012436, 31.219282>,  <34.016594, 36.002449, 31.524961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.758797, 36.012436, 31.219282> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453743, 0.791964, 0.408546,
		0.615420, 0.610057, -0.499088,
		-0.644496, 0.024969, -0.764200,
		33.565449, 36.019928, 30.990023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.009762, 36.623333, 31.514687>,  <34.016594, 36.002449, 31.524961>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.009762, 36.623333, 31.514687> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.682121, 36.477261, 31.337727>,  <33.485538, 36.389618, 31.231550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.682121, 36.477261, 31.337727>,  <34.009762, 36.623333, 31.514687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.682121, 36.477261, 31.337727> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551484, 0.713584, 0.432045,
		0.157918, 0.597866, -0.785887,
		-0.819101, -0.365176, -0.442402,
		33.436390, 36.367706, 31.205006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.736385, 37.172798, 31.423191>,  <34.009762, 36.623333, 31.514687>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.736385, 37.172798, 31.423191> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.443573, 36.904621, 31.374792>,  <33.267887, 36.743713, 31.345753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.443573, 36.904621, 31.374792>,  <33.736385, 37.172798, 31.423191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.443573, 36.904621, 31.374792> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652472, 0.638841, 0.407631,
		-0.195995, 0.377345, -0.905095,
		-0.732029, -0.670442, -0.120997,
		33.223965, 36.703487, 31.338493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.203419, 37.548302, 31.010073>,  <33.736385, 37.172798, 31.423191>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.203419, 37.548302, 31.010073> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.052723, 37.247421, 31.226318>,  <32.962307, 37.066895, 31.356066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.052723, 37.247421, 31.226318>,  <33.203419, 37.548302, 31.010073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.052723, 37.247421, 31.226318> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698162, 0.614141, 0.367968,
		-0.608798, -0.238809, -0.756528,
		-0.376741, -0.752198, 0.540615,
		32.939701, 37.021763, 31.388502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.512379, 37.670727, 30.965002>,  <33.203419, 37.548302, 31.010073>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.512379, 37.670727, 30.965002> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.568405, 37.438015, 31.285480>,  <32.602020, 37.298389, 31.477768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.568405, 37.438015, 31.285480>,  <32.512379, 37.670727, 30.965002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.568405, 37.438015, 31.285480> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515384, 0.648078, 0.560691,
		-0.845435, -0.491459, -0.209064,
		0.140067, -0.581776, 0.801197,
		32.610424, 37.263481, 31.525839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.850437, 37.541645, 31.269438>,  <32.512379, 37.670727, 30.965002>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.850437, 37.541645, 31.269438> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.135712, 37.489265, 31.544891>,  <32.306877, 37.457836, 31.710163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.135712, 37.489265, 31.544891>,  <31.850437, 37.541645, 31.269438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.135712, 37.489265, 31.544891> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533861, 0.535168, 0.654667,
		-0.454264, -0.834534, 0.311765,
		0.713188, -0.130953, 0.688632,
		32.349667, 37.449982, 31.751480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.861340, 37.905872, 30.633148>,  <31.850437, 37.541645, 31.269438>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.861340, 37.905872, 30.633148> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.029938, 38.262711, 30.698280>,  <32.131096, 38.476814, 30.737360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.029938, 38.262711, 30.698280>,  <31.861340, 37.905872, 30.633148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.029938, 38.262711, 30.698280> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211597, 0.077854, -0.974251,
		-0.881799, 0.445096, -0.155949,
		0.421494, 0.892092, 0.162832,
		32.156387, 38.530338, 30.747129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.488873, 38.424454, 30.467491>,  <31.861340, 37.905872, 30.633148>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.488873, 38.424454, 30.467491> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.882399, 38.480370, 30.422655>,  <32.118515, 38.513920, 30.395754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.882399, 38.480370, 30.422655>,  <31.488873, 38.424454, 30.467491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.882399, 38.480370, 30.422655> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102031, -0.077173, -0.991783,
		-0.147296, 0.987169, -0.061661,
		0.983816, 0.139794, -0.112089,
		32.177544, 38.522308, 30.389029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.583651, 38.935432, 29.943758>,  <31.488873, 38.424454, 30.467491>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.583651, 38.935432, 29.943758> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.952116, 38.782181, 29.971090>,  <32.173195, 38.690231, 29.987490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.952116, 38.782181, 29.971090>,  <31.583651, 38.935432, 29.943758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.952116, 38.782181, 29.971090> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086613, 0.030646, -0.995771,
		0.379415, 0.923186, 0.061414,
		0.921164, -0.383130, 0.068333,
		32.228466, 38.667240, 29.991590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.040062, 39.400261, 29.566689>,  <31.583651, 38.935432, 29.943758>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.040062, 39.400261, 29.566689> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.208706, 39.038887, 29.597805>,  <32.309891, 38.822063, 29.616476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.208706, 39.038887, 29.597805>,  <32.040062, 39.400261, 29.566689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.208706, 39.038887, 29.597805> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184324, 0.001386, -0.982865,
		0.887846, 0.428723, 0.167109,
		0.421609, -0.903435, 0.077793,
		32.335190, 38.767857, 29.621143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.606056, 39.486328, 29.187489>,  <32.040062, 39.400261, 29.566689>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.606056, 39.486328, 29.187489> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.544476, 39.091274, 29.199280>,  <32.507526, 38.854240, 29.206354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.544476, 39.091274, 29.199280>,  <32.606056, 39.486328, 29.187489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.544476, 39.091274, 29.199280> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174901, -0.056600, -0.982958,
		0.972476, -0.146171, 0.181453,
		-0.153950, -0.987639, 0.029477,
		32.498291, 38.794983, 29.208122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.236515, 39.193447, 28.915722>,  <32.606056, 39.486328, 29.187489>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.236515, 39.193447, 28.915722> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.981087, 38.887005, 28.886568>,  <32.827831, 38.703140, 28.869076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.981087, 38.887005, 28.886568>,  <33.236515, 39.193447, 28.915722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.981087, 38.887005, 28.886568> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280781, -0.143761, -0.948944,
		0.716514, -0.626430, 0.306910,
		-0.638569, -0.766106, -0.072883,
		32.789516, 38.657173, 28.864704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.606804, 38.662422, 28.652853>,  <33.236515, 39.193447, 28.915722>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.606804, 38.662422, 28.652853> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.228374, 38.561192, 28.571955>,  <33.001316, 38.500454, 28.523417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.228374, 38.561192, 28.571955>,  <33.606804, 38.662422, 28.652853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.228374, 38.561192, 28.571955> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239732, -0.127008, -0.962495,
		0.217902, -0.959072, 0.180830,
		-0.946069, -0.253081, -0.202245,
		32.944553, 38.485268, 28.511282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.779839, 38.273911, 28.079971>,  <33.606804, 38.662422, 28.652853>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.779839, 38.273911, 28.079971> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.381859, 38.311298, 28.065323>,  <33.143070, 38.333733, 28.056534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.381859, 38.311298, 28.065323>,  <33.779839, 38.273911, 28.079971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.381859, 38.311298, 28.065323> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013633, -0.235617, -0.971750,
		-0.099457, -0.967341, 0.233153,
		-0.994948, 0.093469, -0.036621,
		33.083374, 38.339340, 28.054337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.393604, 37.580402, 27.910896>,  <33.779839, 38.273911, 28.079971>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.393604, 37.580402, 27.910896> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.148777, 37.875385, 27.796682>,  <33.001881, 38.052376, 27.728153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.148777, 37.875385, 27.796682>,  <33.393604, 37.580402, 27.910896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.148777, 37.875385, 27.796682> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160251, -0.237914, -0.957975,
		-0.774397, -0.632105, 0.027442,
		-0.612070, 0.737455, -0.285535,
		32.965157, 38.096622, 27.711021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.933056, 37.300911, 27.468487>,  <33.393604, 37.580402, 27.910896>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.933056, 37.300911, 27.468487> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.917431, 37.690357, 27.378559>,  <32.908054, 37.924026, 27.324602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.917431, 37.690357, 27.378559>,  <32.933056, 37.300911, 27.468487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.917431, 37.690357, 27.378559> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076918, -0.221394, -0.972146,
		-0.996272, -0.055271, -0.066239,
		-0.039067, 0.973617, -0.224820,
		32.905712, 37.982441, 27.311113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.621777, 37.344864, 26.781761>,  <32.933056, 37.300911, 27.468487>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.621777, 37.344864, 26.781761> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.813282, 37.690689, 26.842850>,  <32.928185, 37.898182, 26.879503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.813282, 37.690689, 26.842850>,  <32.621777, 37.344864, 26.781761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.813282, 37.690689, 26.842850> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345443, -0.025584, -0.938091,
		-0.807130, 0.501877, -0.310905,
		0.478760, 0.864561, 0.152720,
		32.956909, 37.950058, 26.888666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.534409, 37.786964, 26.154341>,  <32.621777, 37.344864, 26.781761>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.534409, 37.786964, 26.154341> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.875454, 37.913101, 26.321005>,  <33.080082, 37.988781, 26.421003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.875454, 37.913101, 26.321005>,  <32.534409, 37.786964, 26.154341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.875454, 37.913101, 26.321005> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431271, 0.025565, -0.901860,
		-0.295045, 0.948634, -0.114200,
		0.852616, 0.315340, 0.416661,
		33.131237, 38.007702, 26.446003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.824139, 38.472782, 25.782812>,  <32.534409, 37.786964, 26.154341>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.824139, 38.472782, 25.782812> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.135075, 38.286793, 25.952299>,  <33.321636, 38.175198, 26.053991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.135075, 38.286793, 25.952299>,  <32.824139, 38.472782, 25.782812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.135075, 38.286793, 25.952299> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515870, 0.085692, -0.852371,
		0.360021, 0.881168, 0.306478,
		0.777344, -0.464974, 0.423717,
		33.368279, 38.147301, 26.079414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.450298, 38.733818, 25.544678>,  <32.824139, 38.472782, 25.782812>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.450298, 38.733818, 25.544678> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.585930, 38.378521, 25.668652>,  <33.667309, 38.165344, 25.743036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.585930, 38.378521, 25.668652>,  <33.450298, 38.733818, 25.544678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.585930, 38.378521, 25.668652> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640453, -0.023367, -0.767642,
		0.689092, 0.458786, 0.560952,
		0.339076, -0.888240, 0.309933,
		33.687653, 38.112049, 25.761631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.160072, 38.741062, 25.413237>,  <33.450298, 38.733818, 25.544678>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.160072, 38.741062, 25.413237> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.113365, 38.351070, 25.488907>,  <34.085342, 38.117077, 25.534309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.113365, 38.351070, 25.488907>,  <34.160072, 38.741062, 25.413237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.113365, 38.351070, 25.488907> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736089, -0.212832, -0.642555,
		0.666738, 0.064220, 0.742521,
		-0.116767, -0.974976, 0.189174,
		34.078335, 38.058578, 25.545660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.824280, 38.460571, 25.327982>,  <34.160072, 38.741062, 25.413237>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.824280, 38.460571, 25.327982> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.595921, 38.132408, 25.315254>,  <34.458904, 37.935513, 25.307617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.595921, 38.132408, 25.315254>,  <34.824280, 38.460571, 25.327982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.595921, 38.132408, 25.315254> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721674, -0.482955, -0.495924,
		0.391491, -0.306085, 0.867782,
		-0.570895, -0.820406, -0.031821,
		34.424652, 37.886288, 25.305708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.260983, 37.888157, 25.447033>,  <34.824280, 38.460571, 25.327982>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.260983, 37.888157, 25.447033> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.939323, 37.765682, 25.243231>,  <34.746330, 37.692196, 25.120949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.939323, 37.765682, 25.243231>,  <35.260983, 37.888157, 25.447033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.939323, 37.765682, 25.243231> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578667, -0.599322, -0.553134,
		-0.135995, -0.739635, 0.659124,
		-0.804146, -0.306190, -0.509507,
		34.698078, 37.673824, 25.090378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.298641, 37.108826, 25.358862>,  <35.260983, 37.888157, 25.447033>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.298641, 37.108826, 25.358862> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.044342, 37.229164, 25.074516>,  <34.891762, 37.301365, 24.903910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.044342, 37.229164, 25.074516>,  <35.298641, 37.108826, 25.358862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.044342, 37.229164, 25.074516> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531381, -0.497399, -0.685732,
		-0.559879, -0.813688, 0.156356,
		-0.635743, 0.300842, -0.710862,
		34.853619, 37.319416, 24.861258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.053017, 36.411667, 25.020922>,  <35.298641, 37.108826, 25.358862>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.053017, 36.411667, 25.020922> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.012543, 36.707520, 24.754778>,  <34.988258, 36.885033, 24.595093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.012543, 36.707520, 24.754778>,  <35.053017, 36.411667, 25.020922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.012543, 36.707520, 24.754778> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349878, -0.599611, -0.719758,
		-0.931315, -0.305622, -0.198111,
		-0.101184, 0.739636, -0.665357,
		34.982189, 36.929409, 24.555170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.832439, 36.040783, 24.438526>,  <35.053017, 36.411667, 25.020922>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.832439, 36.040783, 24.438526> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.959377, 36.395081, 24.303022>,  <35.035542, 36.607658, 24.221720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.959377, 36.395081, 24.303022>,  <34.832439, 36.040783, 24.438526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.959377, 36.395081, 24.303022> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208870, -0.413734, -0.886114,
		-0.925022, 0.210446, -0.316300,
		0.317343, 0.885741, -0.338758,
		35.054581, 36.660801, 24.201395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.713108, 36.018604, 23.646109>,  <34.832439, 36.040783, 24.438526>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.713108, 36.018604, 23.646109> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.960461, 36.316650, 23.746035>,  <35.108871, 36.495476, 23.805990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.960461, 36.316650, 23.746035>,  <34.713108, 36.018604, 23.646109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.960461, 36.316650, 23.746035> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411796, -0.036478, -0.910546,
		-0.669347, 0.665939, -0.329392,
		0.618384, 0.745113, 0.249814,
		35.145977, 36.540184, 23.820978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.752907, 36.309616, 22.972773>,  <34.713108, 36.018604, 23.646109>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.752907, 36.309616, 22.972773> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.054401, 36.460434, 23.188072>,  <35.235298, 36.550926, 23.317251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.054401, 36.460434, 23.188072>,  <34.752907, 36.309616, 22.972773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.054401, 36.460434, 23.188072> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580083, 0.003175, -0.814551,
		-0.308833, 0.926189, -0.216326,
		0.753741, 0.377047, 0.538247,
		35.280525, 36.573547, 23.349546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.121029, 36.822300, 22.498425>,  <34.752907, 36.309616, 22.972773>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.121029, 36.822300, 22.498425> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.382706, 36.776566, 22.797480>,  <35.539711, 36.749126, 22.976913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.382706, 36.776566, 22.797480>,  <35.121029, 36.822300, 22.498425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.382706, 36.776566, 22.797480> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748484, 0.239868, -0.618251,
		-0.108648, 0.964050, 0.242496,
		0.654192, -0.114333, 0.747637,
		35.578964, 36.742268, 23.021770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.661060, 37.411800, 22.544291>,  <35.121029, 36.822300, 22.498425>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.661060, 37.411800, 22.544291> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.827114, 37.081081, 22.696117>,  <35.926746, 36.882652, 22.787214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.827114, 37.081081, 22.696117>,  <35.661060, 37.411800, 22.544291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.827114, 37.081081, 22.696117> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816903, 0.155139, -0.555519,
		0.400414, 0.540688, 0.739815,
		0.415137, -0.826794, 0.379569,
		35.951656, 36.833042, 22.809988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.428375, 37.641090, 22.699167>,  <35.661060, 37.411800, 22.544291>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.428375, 37.641090, 22.699167> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.414753, 37.241585, 22.684729>,  <36.406578, 37.001881, 22.676065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.414753, 37.241585, 22.684729>,  <36.428375, 37.641090, 22.699167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.414753, 37.241585, 22.684729> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878464, -0.012691, -0.477640,
		0.476593, -0.047978, 0.877814,
		-0.034057, -0.998768, -0.036098,
		36.404537, 36.941956, 22.673899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.092953, 37.438740, 22.665966>,  <36.428375, 37.641090, 22.699167>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.092953, 37.438740, 22.665966> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.934177, 37.095352, 22.536057>,  <36.838913, 36.889320, 22.458111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.934177, 37.095352, 22.536057>,  <37.092953, 37.438740, 22.665966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.934177, 37.095352, 22.536057> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751577, -0.100892, -0.651884,
		0.526853, -0.502850, 0.685251,
		-0.396936, -0.858465, -0.324775,
		36.815098, 36.837814, 22.438623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.624020, 37.026455, 22.451073>,  <37.092953, 37.438740, 22.665966>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.624020, 37.026455, 22.451073> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.316811, 36.854317, 22.261356>,  <37.132484, 36.751034, 22.147526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.316811, 36.854317, 22.261356>,  <37.624020, 37.026455, 22.451073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.316811, 36.854317, 22.261356> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570923, -0.124524, -0.811505,
		0.290164, -0.894036, 0.341328,
		-0.768018, -0.430342, -0.474293,
		37.086407, 36.725216, 22.119068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.227852, 36.738808, 22.749197>,  <37.624020, 37.026455, 22.451073>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.227852, 36.738808, 22.749197> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.551777, 36.959290, 22.668829>,  <38.746132, 37.091579, 22.620609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.551777, 36.959290, 22.668829>,  <38.227852, 36.738808, 22.749197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.551777, 36.959290, 22.668829> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316283, 0.698611, 0.641801,
		0.494129, -0.456193, 0.740084,
		0.809816, 0.551208, -0.200918,
		38.794720, 37.124653, 22.608553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469662, 36.867649, 23.344866>,  <38.227852, 36.738808, 22.749197>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.469662, 36.867649, 23.344866> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.602352, 37.154415, 23.099596>,  <38.681969, 37.326477, 22.952435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.602352, 37.154415, 23.099596>,  <38.469662, 36.867649, 23.344866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.602352, 37.154415, 23.099596> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259203, 0.694232, 0.671458,
		0.907066, -0.063806, 0.416125,
		0.331730, 0.716918, -0.613175,
		38.701870, 37.369492, 22.915644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.060417, 37.214802, 23.742861>,  <38.469662, 36.867649, 23.344866>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.060417, 37.214802, 23.742861> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.949062, 37.454151, 23.442341>,  <38.882252, 37.597763, 23.262030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.949062, 37.454151, 23.442341>,  <39.060417, 37.214802, 23.742861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.949062, 37.454151, 23.442341> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059161, 0.770052, 0.635233,
		0.958646, 0.221287, -0.178970,
		-0.278385, 0.598375, -0.751298,
		38.865547, 37.633663, 23.216951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.464634, 37.724808, 23.760252>,  <39.060417, 37.214802, 23.742861>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.464634, 37.724808, 23.760252> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.150936, 37.891136, 23.576054>,  <38.962719, 37.990932, 23.465534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.150936, 37.891136, 23.576054>,  <39.464634, 37.724808, 23.760252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.150936, 37.891136, 23.576054> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046199, 0.700997, 0.711666,
		0.618733, 0.579393, -0.530540,
		-0.784241, 0.415821, -0.460498,
		38.915665, 38.015884, 23.437904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.639610, 38.471100, 23.712175>,  <39.464634, 37.724808, 23.760252>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.639610, 38.471100, 23.712175> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.246864, 38.439564, 23.643202>,  <39.011219, 38.420643, 23.601818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.246864, 38.439564, 23.643202>,  <39.639610, 38.471100, 23.712175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.246864, 38.439564, 23.643202> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180593, 0.665890, 0.723862,
		0.057752, 0.741873, -0.668049,
		-0.981861, -0.078840, -0.172434,
		38.952305, 38.415913, 23.591473>
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
