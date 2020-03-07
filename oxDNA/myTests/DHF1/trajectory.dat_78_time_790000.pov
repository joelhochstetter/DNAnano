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
	<4.959649, 4.598906, 3.787156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.967309, 4.718224, 3.405443>,  <4.971906, 4.789814, 3.176415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.967309, 4.718224, 3.405443>,  <4.959649, 4.598906, 3.787156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.967309, 4.718224, 3.405443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058696, -0.953146, -0.296760,
		-0.998092, -0.050329, -0.035763,
		0.019152, 0.298294, -0.954282,
		4.973055, 4.807712, 3.119159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.354895, 4.407148, 3.363863>,  <4.959649, 4.598906, 3.787156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.354895, 4.407148, 3.363863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.668767, 4.430500, 3.117006>,  <4.857091, 4.444511, 2.968892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.668767, 4.430500, 3.117006>,  <4.354895, 4.407148, 3.363863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.668767, 4.430500, 3.117006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141124, -0.952590, -0.269548,
		-0.603620, 0.298603, -0.739242,
		0.784683, 0.058380, -0.617143,
		4.904172, 4.448014, 2.931864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.096152, 4.219948, 2.593435>,  <4.354895, 4.407148, 3.363863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.096152, 4.219948, 2.593435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.465870, 4.145855, 2.726921>,  <4.687701, 4.101399, 2.807013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.465870, 4.145855, 2.726921>,  <4.096152, 4.219948, 2.593435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.465870, 4.145855, 2.726921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167283, -0.982491, -0.082019,
		0.343066, 0.019985, -0.939099,
		0.924296, -0.185233, 0.333716,
		4.743159, 4.090285, 2.827036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.551087, 3.918719, 2.141463>,  <4.096152, 4.219948, 2.593435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.551087, 3.918719, 2.141463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.646016, 3.806213, 2.513391>,  <4.702973, 3.738710, 2.736549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.646016, 3.806213, 2.513391>,  <4.551087, 3.918719, 2.141463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.646016, 3.806213, 2.513391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318054, -0.926908, -0.199205,
		0.917889, -0.248458, -0.309433,
		0.237321, -0.281265, 0.929822,
		4.717213, 3.721834, 2.792338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.056220, 3.367730, 2.261833>,  <4.551087, 3.918719, 2.141463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.056220, 3.367730, 2.261833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.793842, 3.354214, 2.563454>,  <4.636415, 3.346104, 2.744426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.793842, 3.354214, 2.563454>,  <5.056220, 3.367730, 2.261833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.793842, 3.354214, 2.563454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154003, -0.971992, -0.177522,
		0.738931, -0.232571, 0.632370,
		-0.655945, -0.033790, 0.754052,
		4.597059, 3.344077, 2.789669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.140341, 2.698372, 2.661145>,  <5.056220, 3.367730, 2.261833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.140341, 2.698372, 2.661145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.768661, 2.827877, 2.732439>,  <4.545654, 2.905580, 2.775216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.768661, 2.827877, 2.732439>,  <5.140341, 2.698372, 2.661145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.768661, 2.827877, 2.732439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356805, -0.911566, -0.204298,
		0.096330, -0.253429, 0.962546,
		-0.929199, 0.323761, 0.178236,
		4.489902, 2.925005, 2.785910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.795836, 2.105536, 3.034521>,  <5.140341, 2.698372, 2.661145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.795836, 2.105536, 3.034521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.517195, 2.345573, 2.877228>,  <4.350011, 2.489596, 2.782852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.517195, 2.345573, 2.877228>,  <4.795836, 2.105536, 3.034521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.517195, 2.345573, 2.877228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448184, -0.791966, -0.414634,
		-0.560247, -0.112594, 0.820638,
		-0.696602, 0.600094, -0.393234,
		4.308215, 2.525602, 2.759258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.195192, 1.717915, 3.228823>,  <4.795836, 2.105536, 3.034521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.195192, 1.717915, 3.228823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.072732, 1.981609, 2.954107>,  <3.999257, 2.139826, 2.789278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.072732, 1.981609, 2.954107>,  <4.195192, 1.717915, 3.228823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.072732, 1.981609, 2.954107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204901, -0.750153, -0.628718,
		-0.929671, -0.051758, 0.364736,
		-0.306149, 0.659236, -0.686790,
		3.980888, 2.179380, 2.748070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.339273, 3.361576, -0.029787> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.630299, 3.087181, -0.026344>,  <2.804914, 2.922544, -0.024279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.630299, 3.087181, -0.026344>,  <2.339273, 3.361576, -0.029787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.630299, 3.087181, -0.026344> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434640, 0.470615, 0.767861,
		-0.530793, -0.554926, 0.640559,
		0.727563, -0.685987, 0.008606,
		2.848567, 2.881385, -0.023762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.330414, 2.992255, 0.621521>,  <2.339273, 3.361576, -0.029787>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.330414, 2.992255, 0.621521> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.696884, 3.001091, 0.461452>,  <2.916766, 3.006393, 0.365412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.696884, 3.001091, 0.461452>,  <2.330414, 2.992255, 0.621521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.696884, 3.001091, 0.461452> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360045, 0.393227, 0.846015,
		0.176046, -0.919176, 0.352311,
		0.916175, 0.022090, -0.400170,
		2.971736, 3.007718, 0.341401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.843071, 2.587498, 1.077594>,  <2.330414, 2.992255, 0.621521>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.843071, 2.587498, 1.077594> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.996376, 2.899216, 0.879276>,  <3.088359, 3.086246, 0.760286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.996376, 2.899216, 0.879276>,  <2.843071, 2.587498, 1.077594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.996376, 2.899216, 0.879276> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160134, 0.472590, 0.866611,
		0.909653, -0.411532, 0.056334,
		0.383261, 0.779294, -0.495793,
		3.111355, 3.133004, 0.730538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.554162, 2.661907, 1.335330>,  <2.843071, 2.587498, 1.077594>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.554162, 2.661907, 1.335330> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.331799, 2.980774, 1.241104>,  <3.198381, 3.172094, 1.184569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.331799, 2.980774, 1.241104>,  <3.554162, 2.661907, 1.335330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.331799, 2.980774, 1.241104> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077718, 0.232302, 0.969534,
		0.827603, 0.557279, -0.067184,
		-0.555907, 0.797168, -0.235564,
		3.165026, 3.219924, 1.170435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.745561, 3.174944, 1.852628>,  <3.554162, 2.661907, 1.335330>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.745561, 3.174944, 1.852628> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.817276, 2.862808, 2.092270>,  <3.860305, 2.675527, 2.236055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.817276, 2.862808, 2.092270>,  <3.745561, 3.174944, 1.852628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.817276, 2.862808, 2.092270> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041233, 0.614396, 0.787920,
		-0.982932, -0.116562, 0.142330,
		0.179288, -0.780340, 0.599103,
		3.871063, 2.628706, 2.272001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.275949, 3.236571, 2.354708>,  <3.745561, 3.174944, 1.852628>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.275949, 3.236571, 2.354708> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.593487, 3.031502, 2.485538>,  <3.784009, 2.908460, 2.564037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.593487, 3.031502, 2.485538>,  <3.275949, 3.236571, 2.354708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.593487, 3.031502, 2.485538> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184251, 0.715335, 0.674053,
		-0.579538, -0.474829, 0.662324,
		0.793843, -0.512673, 0.327076,
		3.831640, 2.877700, 2.583661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.325059, 3.406693, 3.059250>,  <3.275949, 3.236571, 2.354708>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.325059, 3.406693, 3.059250> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.686546, 3.258545, 2.973347>,  <3.903439, 3.169656, 2.921805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.686546, 3.258545, 2.973347>,  <3.325059, 3.406693, 3.059250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.686546, 3.258545, 2.973347> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428090, 0.774996, 0.464888,
		-0.005743, -0.512063, 0.858929,
		0.903718, -0.370369, -0.214758,
		3.957662, 3.147434, 2.908919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.687431, 3.308782, 3.688484>,  <3.325059, 3.406693, 3.059250>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.687431, 3.308782, 3.688484> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.946777, 3.338074, 3.385365>,  <4.102386, 3.355649, 3.203493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.946777, 3.338074, 3.385365>,  <3.687431, 3.308782, 3.688484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.946777, 3.338074, 3.385365> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263004, 0.912540, 0.313209,
		0.714457, -0.402378, 0.572401,
		0.648367, 0.073230, -0.757798,
		4.141287, 3.360043, 3.158025>
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
