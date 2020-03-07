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
	<2.508316, 2.031538, 0.029222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.702057, 1.724915, 0.197884>,  <2.818301, 1.540941, 0.299081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.702057, 1.724915, 0.197884>,  <2.508316, 2.031538, 0.029222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.702057, 1.724915, 0.197884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135325, 0.410516, 0.901756,
		-0.864344, -0.493828, 0.095100,
		0.484352, -0.766558, 0.421654,
		2.847363, 1.494947, 0.324380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.229486, 1.909901, 0.769517>,  <2.508316, 2.031538, 0.029222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.229486, 1.909901, 0.769517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.588028, 1.736584, 0.731991>,  <2.803154, 1.632593, 0.709475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.588028, 1.736584, 0.731991>,  <2.229486, 1.909901, 0.769517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.588028, 1.736584, 0.731991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258072, 0.337901, 0.905109,
		-0.360478, -0.835511, 0.414701,
		0.896356, -0.433294, -0.093816,
		2.856935, 1.606595, 0.703846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.629538, 2.007149, 1.364608>,  <2.229486, 1.909901, 0.769517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.629538, 2.007149, 1.364608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.958092, 1.834339, 1.215649>,  <3.155224, 1.730653, 1.126273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.958092, 1.834339, 1.215649>,  <2.629538, 2.007149, 1.364608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.958092, 1.834339, 1.215649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535072, 0.357520, 0.765426,
		-0.197544, -0.827969, 0.524827,
		0.821385, -0.432025, -0.372398,
		3.204507, 1.704732, 1.103929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.031445, 1.576455, 1.868147>,  <2.629538, 2.007149, 1.364608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.031445, 1.576455, 1.868147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.276054, 1.739964, 1.597164>,  <3.422820, 1.838068, 1.434575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.276054, 1.739964, 1.597164>,  <3.031445, 1.576455, 1.868147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.276054, 1.739964, 1.597164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553902, 0.390241, 0.735462,
		0.565006, -0.824996, 0.012222,
		0.611522, 0.408771, -0.677456,
		3.459511, 1.862595, 1.393927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.715277, 1.493646, 2.119324>,  <3.031445, 1.576455, 1.868147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.715277, 1.493646, 2.119324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.721451, 1.809639, 1.874149>,  <3.725155, 1.999235, 1.727045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.721451, 1.809639, 1.874149>,  <3.715277, 1.493646, 2.119324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.721451, 1.809639, 1.874149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488654, 0.528858, 0.693922,
		0.872341, -0.310223, -0.377866,
		0.015433, 0.789982, -0.612936,
		3.726081, 2.046633, 1.690269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.480554, 1.708981, 1.948504>,  <3.715277, 1.493646, 2.119324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.480554, 1.708981, 1.948504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.226761, 2.017780, 1.963726>,  <4.074485, 2.203060, 1.972859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.226761, 2.017780, 1.963726>,  <4.480554, 1.708981, 1.948504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.226761, 2.017780, 1.963726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565480, 0.430061, 0.703761,
		0.526938, 0.468044, -0.709417,
		-0.634483, 0.771999, 0.038054,
		4.036416, 2.249380, 1.975142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.868399, 2.206675, 2.120412>,  <4.480554, 1.708981, 1.948504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.868399, 2.206675, 2.120412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.500465, 2.317719, 2.231293>,  <4.279706, 2.384345, 2.297821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.500465, 2.317719, 2.231293>,  <4.868399, 2.206675, 2.120412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.500465, 2.317719, 2.231293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378254, 0.440120, 0.814382,
		0.104078, 0.853948, -0.509844,
		-0.919833, 0.277609, 0.277202,
		4.224515, 2.401001, 2.314453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.009102, 2.892541, 2.245832>,  <4.868399, 2.206675, 2.120412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.009102, 2.892541, 2.245832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.673107, 2.818409, 2.449821>,  <4.471510, 2.773930, 2.572215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.673107, 2.818409, 2.449821>,  <5.009102, 2.892541, 2.245832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.673107, 2.818409, 2.449821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398382, 0.427456, 0.811525,
		-0.368391, 0.884836, -0.285226,
		-0.839988, -0.185330, 0.509974,
		4.421111, 2.762810, 2.602814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<5.447739, 3.051327, 3.693580> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.130467, 3.003731, 3.932480>,  <4.940104, 2.975173, 4.075820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.130467, 3.003731, 3.932480>,  <5.447739, 3.051327, 3.693580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.130467, 3.003731, 3.932480> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565261, -0.221064, -0.794739,
		0.226598, -0.967973, 0.108083,
		-0.793179, -0.118991, 0.597250,
		4.892513, 2.968034, 4.111655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.127145, 2.346104, 3.590972>,  <5.447739, 3.051327, 3.693580>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.127145, 2.346104, 3.590972> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.847639, 2.599586, 3.723724>,  <4.679935, 2.751676, 3.803376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.847639, 2.599586, 3.723724>,  <5.127145, 2.346104, 3.590972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.847639, 2.599586, 3.723724> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607033, -0.279825, -0.743780,
		-0.378468, -0.721190, 0.580212,
		-0.698765, 0.633706, 0.331881,
		4.638010, 2.789698, 3.823289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.442387, 2.019005, 3.626093>,  <5.127145, 2.346104, 3.590972>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.442387, 2.019005, 3.626093> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.390279, 2.413727, 3.587631>,  <4.359015, 2.650560, 3.564554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.390279, 2.413727, 3.587631>,  <4.442387, 2.019005, 3.626093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.390279, 2.413727, 3.587631> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530050, -0.151272, -0.834364,
		-0.837901, -0.057725, 0.542762,
		-0.130269, 0.986805, -0.096153,
		4.351199, 2.709768, 3.558785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.790465, 2.072315, 3.493851>,  <4.442387, 2.019005, 3.626093>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.790465, 2.072315, 3.493851> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.974506, 2.403122, 3.364639>,  <4.084931, 2.601606, 3.287112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.974506, 2.403122, 3.364639>,  <3.790465, 2.072315, 3.493851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.974506, 2.403122, 3.364639> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463180, -0.086821, -0.882002,
		-0.757475, 0.555433, 0.343111,
		0.460104, 0.827017, -0.323030,
		4.112537, 2.651227, 3.267730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.252483, 2.523214, 3.225674>,  <3.790465, 2.072315, 3.493851>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.252483, 2.523214, 3.225674> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.602160, 2.606972, 3.050430>,  <3.811967, 2.657226, 2.945284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.602160, 2.606972, 3.050430>,  <3.252483, 2.523214, 3.225674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.602160, 2.606972, 3.050430> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419136, -0.130159, -0.898545,
		-0.245174, 0.969130, -0.026020,
		0.874194, 0.209394, -0.438109,
		3.864419, 2.669790, 2.918998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.081143, 2.836997, 2.670866>,  <3.252483, 2.523214, 3.225674>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.081143, 2.836997, 2.670866> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.448988, 2.723587, 2.562111>,  <3.669696, 2.655541, 2.496858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.448988, 2.723587, 2.562111>,  <3.081143, 2.836997, 2.670866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.448988, 2.723587, 2.562111> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330316, -0.183528, -0.925856,
		0.212604, 0.941239, -0.262428,
		0.919615, -0.283525, -0.271888,
		3.724873, 2.638530, 2.480545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.269729, 3.269755, 2.097996>,  <3.081143, 2.836997, 2.670866>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.269729, 3.269755, 2.097996> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.473624, 2.928764, 2.051598>,  <3.595960, 2.724170, 2.023759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.473624, 2.928764, 2.051598>,  <3.269729, 3.269755, 2.097996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.473624, 2.928764, 2.051598> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378051, -0.100834, -0.920277,
		0.772817, 0.512950, -0.373678,
		0.509736, -0.852476, -0.115995,
		3.626544, 2.673022, 2.016799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.635697, 3.261440, 1.447491>,  <3.269729, 3.269755, 2.097996>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.635697, 3.261440, 1.447491> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.571857, 2.883965, 1.563408>,  <3.533553, 2.657479, 1.632958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.571857, 2.883965, 1.563408>,  <3.635697, 3.261440, 1.447491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.571857, 2.883965, 1.563408> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432047, -0.197176, -0.880032,
		0.887616, -0.265659, -0.376249,
		-0.159601, -0.943688, 0.289793,
		3.523977, 2.600858, 1.650346>
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
