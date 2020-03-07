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
	<4.229882, 5.108107, 5.456028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.344358, 5.085846, 5.073406>,  <4.413044, 5.072489, 4.843833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.344358, 5.085846, 5.073406>,  <4.229882, 5.108107, 5.456028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.344358, 5.085846, 5.073406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.952233, 0.094465, -0.290394,
		0.106523, 0.993971, -0.025960,
		0.286191, -0.055653, -0.956555,
		4.430216, 5.069150, 4.786440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.803581, 5.543457, 4.982876>,  <4.229882, 5.108107, 5.456028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.803581, 5.543457, 4.982876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.946216, 5.235451, 4.771245>,  <4.031797, 5.050647, 4.644267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.946216, 5.235451, 4.771245>,  <3.803581, 5.543457, 4.982876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.946216, 5.235451, 4.771245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.907256, -0.150227, -0.392833,
		0.223006, 0.620087, -0.752170,
		0.356587, -0.770015, -0.529077,
		4.053192, 5.004446, 4.612522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.676408, 5.624061, 4.206348>,  <3.803581, 5.543457, 4.982876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.676408, 5.624061, 4.206348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.696902, 5.229179, 4.266753>,  <3.709199, 4.992250, 4.302996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.696902, 5.229179, 4.266753>,  <3.676408, 5.624061, 4.206348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.696902, 5.229179, 4.266753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861444, -0.120187, -0.493425,
		0.505261, -0.104808, -0.856578,
		0.051235, -0.987203, 0.151013,
		3.712273, 4.933018, 4.312057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.607492, 5.373719, 3.513026>,  <3.676408, 5.624061, 4.206348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.607492, 5.373719, 3.513026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.510070, 5.082077, 3.768866>,  <3.451616, 4.907092, 3.922369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.510070, 5.082077, 3.768866>,  <3.607492, 5.373719, 3.513026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.510070, 5.082077, 3.768866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874095, -0.120757, -0.470506,
		0.420284, -0.673665, -0.607895,
		-0.243556, -0.729104, 0.639600,
		3.437003, 4.863346, 3.960746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.433248, 4.818860, 3.108896>,  <3.607492, 5.373719, 3.513026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.433248, 4.818860, 3.108896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.247358, 4.798645, 3.462501>,  <3.135824, 4.786516, 3.674663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.247358, 4.798645, 3.462501>,  <3.433248, 4.818860, 3.108896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.247358, 4.798645, 3.462501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.884924, -0.008074, -0.465666,
		0.030680, -0.998689, -0.040987,
		-0.464724, -0.050557, 0.884011,
		3.107941, 4.783484, 3.727704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.820429, 4.449549, 2.956038>,  <3.433248, 4.818860, 3.108896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.820429, 4.449549, 2.956038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.719887, 4.590256, 3.316722>,  <2.659561, 4.674680, 3.533132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.719887, 4.590256, 3.316722>,  <2.820429, 4.449549, 2.956038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.719887, 4.590256, 3.316722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.950740, 0.084892, -0.298140,
		-0.181425, -0.932230, 0.313102,
		-0.251355, 0.351769, 0.901709,
		2.644480, 4.695786, 3.587235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.211106, 4.156398, 3.152596>,  <2.820429, 4.449549, 2.956038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.211106, 4.156398, 3.152596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.221937, 4.499619, 3.357736>,  <2.228436, 4.705551, 3.480819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.221937, 4.499619, 3.357736>,  <2.211106, 4.156398, 3.152596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.221937, 4.499619, 3.357736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.950047, 0.181668, -0.253788,
		-0.310932, -0.480358, 0.820108,
		0.027078, 0.858051, 0.512849,
		2.230061, 4.757034, 3.511590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.627707, 4.222280, 3.604735>,  <2.211106, 4.156398, 3.152596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.627707, 4.222280, 3.604735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.742775, 4.581772, 3.472354>,  <1.811816, 4.797467, 3.392925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.742775, 4.581772, 3.472354>,  <1.627707, 4.222280, 3.604735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.742775, 4.581772, 3.472354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.933962, 0.186742, -0.304699,
		-0.212039, 0.396750, 0.893101,
		0.287669, 0.898731, -0.330952,
		1.829076, 4.851391, 3.373068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.166455, -0.291124, 2.660670> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.161133, 0.100464, 2.742098>,  <0.157939, 0.335417, 2.790955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.161133, 0.100464, 2.742098>,  <0.166455, -0.291124, 2.660670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.161133, 0.100464, 2.742098> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937794, -0.058421, 0.342243,
		0.346938, 0.195462, -0.917294,
		-0.013306, 0.978970, 0.203571,
		0.157141, 0.394155, 2.803169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.787087, 0.149060, 2.290583>,  <0.166455, -0.291124, 2.660670>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.787087, 0.149060, 2.290583> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.686756, 0.287613, 2.652159>,  <0.626558, 0.370744, 2.869104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.686756, 0.287613, 2.652159>,  <0.787087, 0.149060, 2.290583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.686756, 0.287613, 2.652159> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963953, 0.003737, 0.266047,
		0.088776, 0.938086, -0.334833,
		-0.250827, 0.346382, 0.903939,
		0.611508, 0.391527, 2.923341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.306709, 0.668014, 2.537542>,  <0.787087, 0.149060, 2.290583>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.306709, 0.668014, 2.537542> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.166824, 0.549683, 2.893112>,  <1.082894, 0.478684, 3.106454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.166824, 0.549683, 2.893112>,  <1.306709, 0.668014, 2.537542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.166824, 0.549683, 2.893112> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934043, -0.036599, 0.355281,
		-0.072568, 0.954539, 0.289117,
		-0.349711, -0.295830, 0.888925,
		1.061911, 0.460934, 3.159790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.532774, 1.118332, 3.092660>,  <1.306709, 0.668014, 2.537542>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.532774, 1.118332, 3.092660> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.453339, 0.767860, 3.268330>,  <1.405677, 0.557578, 3.373732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.453339, 0.767860, 3.268330>,  <1.532774, 1.118332, 3.092660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.453339, 0.767860, 3.268330> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905907, 0.006908, 0.423421,
		-0.374025, 0.481938, 0.792364,
		-0.198589, -0.876178, 0.439175,
		1.393762, 0.505007, 3.400082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.062678, 1.035832, 3.452479>,  <1.532774, 1.118332, 3.092660>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.062678, 1.035832, 3.452479> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.929115, 0.681786, 3.582140>,  <1.848977, 0.469358, 3.659936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.929115, 0.681786, 3.582140>,  <2.062678, 1.035832, 3.452479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.929115, 0.681786, 3.582140> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888070, -0.180127, 0.422950,
		-0.315972, 0.429096, 0.846191,
		-0.333908, -0.885117, 0.324152,
		1.828943, 0.416251, 3.679385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.223571, 0.836481, 4.197395>,  <2.062678, 1.035832, 3.452479>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.223571, 0.836481, 4.197395> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.222706, 0.489861, 3.997763>,  <2.222187, 0.281888, 3.877983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.222706, 0.489861, 3.997763>,  <2.223571, 0.836481, 4.197395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.222706, 0.489861, 3.997763> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852728, -0.262296, 0.451726,
		-0.522351, -0.424603, 0.739501,
		-0.002164, -0.866552, -0.499081,
		2.222057, 0.229895, 3.848038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.272604, 0.296661, 4.723092>,  <2.223571, 0.836481, 4.197395>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.272604, 0.296661, 4.723092> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.391365, 0.131355, 4.378752>,  <2.462621, 0.032172, 4.172148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.391365, 0.131355, 4.378752>,  <2.272604, 0.296661, 4.723092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.391365, 0.131355, 4.378752> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824884, -0.343154, 0.449234,
		-0.481057, -0.843479, 0.239012,
		0.296902, -0.413265, -0.860849,
		2.480436, 0.007376, 4.120497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.519440, -0.322300, 4.896941>,  <2.272604, 0.296661, 4.723092>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.519440, -0.322300, 4.896941> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.679249, -0.275467, 4.533255>,  <2.775134, -0.247367, 4.315043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.679249, -0.275467, 4.533255>,  <2.519440, -0.322300, 4.896941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.679249, -0.275467, 4.533255> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832033, -0.462677, 0.306026,
		-0.384843, -0.878761, -0.282267,
		0.399522, 0.117083, -0.909216,
		2.799105, -0.240342, 4.260490>
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
