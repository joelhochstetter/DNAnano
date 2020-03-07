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
	location <2.5, 2.5, 11.1562>
	look_at <2.5, 2.5, 2.5>
	direction <0, 0, -8.6562>
	angle 67.0682
}


# declare cpy_camera_pos = <2.5, 2.5, 11.1562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 4
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
	<1.193687, 2.811802, 3.800608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.081717, 3.103264, 4.050633>,  <1.014534, 3.278141, 4.200648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.081717, 3.103264, 4.050633>,  <1.193687, 2.811802, 3.800608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.081717, 3.103264, 4.050633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663561, 0.617378, -0.422529,
		-0.693778, 0.296490, -0.656327,
		-0.279926, 0.728655, 0.625063,
		0.997739, 3.321860, 4.238152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.831209, 3.297213, 3.529459>,  <1.193687, 2.811802, 3.800608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.831209, 3.297213, 3.529459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.042345, 3.463194, 3.825891>,  <1.169026, 3.562783, 4.003751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.042345, 3.463194, 3.825891>,  <0.831209, 3.297213, 3.529459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.042345, 3.463194, 3.825891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443643, 0.609343, -0.657178,
		-0.724270, 0.675659, 0.137544,
		0.527839, 0.414953, 0.741080,
		1.200697, 3.587680, 4.048215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.698609, 4.047119, 3.566132>,  <0.831209, 3.297213, 3.529459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.698609, 4.047119, 3.566132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.068962, 3.939100, 3.671822>,  <1.291174, 3.874289, 3.735235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.068962, 3.939100, 3.671822>,  <0.698609, 4.047119, 3.566132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.068962, 3.939100, 3.671822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375654, 0.583425, -0.720069,
		0.040298, 0.765957, 0.641628,
		0.925883, -0.270047, 0.264224,
		1.346727, 3.858086, 3.751089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.132657, 4.634442, 3.693630>,  <0.698609, 4.047119, 3.566132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.132657, 4.634442, 3.693630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.361073, 4.327084, 3.578058>,  <1.498122, 4.142668, 3.508715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.361073, 4.327084, 3.578058>,  <1.132657, 4.634442, 3.693630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.361073, 4.327084, 3.578058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454129, 0.588882, -0.668569,
		0.683872, 0.250568, 0.685226,
		0.571039, -0.768397, -0.288930,
		1.532384, 4.096564, 3.491379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.867972, 4.776032, 3.754299>,  <1.132657, 4.634442, 3.693630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.867972, 4.776032, 3.754299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.870995, 4.472836, 3.493410>,  <1.872808, 4.290918, 3.336877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.870995, 4.472836, 3.493410>,  <1.867972, 4.776032, 3.754299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.870995, 4.472836, 3.493410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487182, 0.572386, -0.659566,
		0.873268, -0.312767, 0.373604,
		0.007555, -0.757991, -0.652221,
		1.873261, 4.245438, 3.297744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.494428, 4.745481, 3.563259>,  <1.867972, 4.776032, 3.754299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.494428, 4.745481, 3.563259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.319376, 4.541779, 3.266844>,  <2.214345, 4.419557, 3.088995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.319376, 4.541779, 3.266844>,  <2.494428, 4.745481, 3.563259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.319376, 4.541779, 3.266844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592449, 0.456638, -0.663692,
		0.676376, -0.729478, 0.101871,
		-0.437630, -0.509258, -0.741037,
		2.188087, 4.389001, 3.044533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.031582, 4.409208, 3.208894>,  <2.494428, 4.745481, 3.563259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.031582, 4.409208, 3.208894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.733044, 4.424175, 2.943091>,  <2.553921, 4.433156, 2.783610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.733044, 4.424175, 2.943091>,  <3.031582, 4.409208, 3.208894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.733044, 4.424175, 2.943091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612408, 0.429575, -0.663643,
		0.260623, -0.902256, -0.343526,
		-0.746346, 0.037418, -0.664506,
		2.509140, 4.435400, 2.743740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.117749, 3.959175, 2.647820>,  <3.031582, 4.409208, 3.208894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.117749, 3.959175, 2.647820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.925615, 4.297571, 2.555233>,  <2.810335, 4.500609, 2.499681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.925615, 4.297571, 2.555233>,  <3.117749, 3.959175, 2.647820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.925615, 4.297571, 2.555233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645955, 0.162696, -0.745837,
		-0.593313, -0.507769, -0.624621,
		-0.480335, 0.845991, -0.231466,
		2.781515, 4.551369, 2.485793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.679482, 4.967627, 1.922775> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.428848, 5.124780, 1.653543>,  <3.278468, 5.219072, 1.492004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.428848, 5.124780, 1.653543>,  <3.679482, 4.967627, 1.922775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.428848, 5.124780, 1.653543> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712638, -0.638449, 0.290742,
		-0.315499, 0.661836, 0.680025,
		-0.626585, 0.392883, -0.673078,
		3.240873, 5.242645, 1.451620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.147771, 5.429594, 2.234366>,  <3.679482, 4.967627, 1.922775>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.147771, 5.429594, 2.234366> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.003647, 5.240529, 1.912679>,  <2.917172, 5.127090, 1.719666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.003647, 5.240529, 1.912679>,  <3.147771, 5.429594, 2.234366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.003647, 5.240529, 1.912679> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686524, -0.449321, 0.571660,
		-0.631554, 0.758090, -0.162599,
		-0.360311, -0.472663, -0.804218,
		2.895554, 5.098730, 1.671413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.444198, 5.559258, 2.046383>,  <3.147771, 5.429594, 2.234366>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.444198, 5.559258, 2.046383> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.560467, 5.186975, 1.957570>,  <2.630228, 4.963606, 1.904281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.560467, 5.186975, 1.957570>,  <2.444198, 5.559258, 2.046383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.560467, 5.186975, 1.957570> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690167, -0.364664, 0.625052,
		-0.662706, -0.028444, -0.748339,
		0.290671, -0.930705, -0.222034,
		2.647668, 4.907764, 1.890960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.784333, 5.193372, 1.978125>,  <2.444198, 5.559258, 2.046383>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.784333, 5.193372, 1.978125> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.075935, 4.937388, 2.075285>,  <2.250897, 4.783797, 2.133581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.075935, 4.937388, 2.075285>,  <1.784333, 5.193372, 1.978125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.075935, 4.937388, 2.075285> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657282, -0.555374, 0.509450,
		-0.191128, -0.531046, -0.825506,
		0.729006, -0.639961, 0.242900,
		2.294637, 4.745399, 2.148155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.570417, 4.566388, 1.781882>,  <1.784333, 5.193372, 1.978125>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.570417, 4.566388, 1.781882> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.847229, 4.537203, 2.069151>,  <2.013316, 4.519692, 2.241512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.847229, 4.537203, 2.069151>,  <1.570417, 4.566388, 1.781882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.847229, 4.537203, 2.069151> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602940, -0.605476, 0.519482,
		0.396933, -0.792512, -0.462999,
		0.692031, -0.072961, 0.718171,
		2.054838, 4.515315, 2.284602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.737955, 3.884686, 1.999524>,  <1.570417, 4.566388, 1.781882>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.737955, 3.884686, 1.999524> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.846760, 4.049436, 2.347402>,  <1.912042, 4.148286, 2.556129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.846760, 4.049436, 2.347402>,  <1.737955, 3.884686, 1.999524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.846760, 4.049436, 2.347402> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509830, -0.704824, 0.493252,
		0.816140, -0.577566, 0.018266,
		0.272011, 0.411875, 0.869695,
		1.928363, 4.172998, 2.608310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.687237, 3.299433, 2.415310>,  <1.737955, 3.884686, 1.999524>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.687237, 3.299433, 2.415310> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.749512, 3.598764, 2.673229>,  <1.786877, 3.778363, 2.827980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.749512, 3.598764, 2.673229>,  <1.687237, 3.299433, 2.415310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.749512, 3.598764, 2.673229> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364828, -0.563045, 0.741539,
		0.917966, -0.350688, 0.185353,
		0.155687, 0.748330, 0.644798,
		1.796218, 3.823263, 2.866668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.125074, 3.143350, 2.862854>,  <1.687237, 3.299433, 2.415310>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.125074, 3.143350, 2.862854> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.946434, 3.430154, 3.076936>,  <1.839250, 3.602236, 3.205386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.946434, 3.430154, 3.076936>,  <2.125074, 3.143350, 2.862854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.946434, 3.430154, 3.076936> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100650, -0.634636, 0.766229,
		0.889054, 0.288330, 0.355596,
		-0.446601, 0.717010, 0.535206,
		1.812454, 3.645257, 3.237498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
