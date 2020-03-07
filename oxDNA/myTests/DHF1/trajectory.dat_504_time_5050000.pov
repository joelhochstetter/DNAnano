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
	<1.976082, 2.333216, 2.138979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.233246, 2.360256, 1.833797>,  <2.387544, 2.376480, 1.650689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.233246, 2.360256, 1.833797>,  <1.976082, 2.333216, 2.138979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.233246, 2.360256, 1.833797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053507, -0.989700, -0.132779,
		-0.764071, 0.126188, -0.632671,
		0.642910, 0.067601, -0.762953,
		2.426119, 2.380536, 1.604911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.671744, 2.144952, 1.364145>,  <1.976082, 2.333216, 2.138979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.671744, 2.144952, 1.364145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.066552, 2.083088, 1.381447>,  <2.303437, 2.045969, 1.391828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.066552, 2.083088, 1.381447>,  <1.671744, 2.144952, 1.364145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.066552, 2.083088, 1.381447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142313, -0.967139, -0.210689,
		0.074418, 0.201799, -0.976596,
		0.987020, -0.154661, 0.043254,
		2.362659, 2.036690, 1.394423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.775505, 1.661767, 0.863383>,  <1.671744, 2.144952, 1.364145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.775505, 1.661767, 0.863383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.100804, 1.654305, 1.096031>,  <2.295983, 1.649827, 1.235620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.100804, 1.654305, 1.096031>,  <1.775505, 1.661767, 0.863383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.100804, 1.654305, 1.096031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107096, -0.977615, -0.181104,
		0.571979, 0.209572, -0.793044,
		0.813247, -0.018656, 0.581620,
		2.344778, 1.648708, 1.270517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.407698, 1.406114, 0.427939>,  <1.775505, 1.661767, 0.863383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.407698, 1.406114, 0.427939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.449740, 1.326229, 0.817619>,  <2.474966, 1.278298, 1.051428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.449740, 1.326229, 0.817619>,  <2.407698, 1.406114, 0.427939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.449740, 1.326229, 0.817619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273198, -0.936137, -0.221383,
		0.956199, 0.289418, -0.043834,
		0.105107, -0.199711, 0.974201,
		2.481272, 1.266316, 1.109880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.948080, 0.860118, 0.476956>,  <2.407698, 1.406114, 0.427939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.948080, 0.860118, 0.476956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.759522, 0.841820, 0.829250>,  <2.646387, 0.830841, 1.040627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.759522, 0.841820, 0.829250>,  <2.948080, 0.860118, 0.476956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.759522, 0.841820, 0.829250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183638, -0.981856, 0.047290,
		0.862591, 0.184029, 0.471243,
		-0.471395, -0.045747, 0.880735,
		2.618103, 0.828096, 1.093471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.416766, 0.520164, 0.788484>,  <2.948080, 0.860118, 0.476956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.416766, 0.520164, 0.788484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.051237, 0.490215, 0.948143>,  <2.831919, 0.472246, 1.043939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.051237, 0.490215, 0.948143>,  <3.416766, 0.520164, 0.788484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.051237, 0.490215, 0.948143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075384, -0.997050, -0.014442,
		0.399052, 0.016892, 0.916773,
		-0.913824, -0.074873, 0.399148,
		2.777089, 0.467753, 1.067887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.412739, -0.141700, 1.240074>,  <3.416766, 0.520164, 0.788484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.412739, -0.141700, 1.240074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.022976, -0.060143, 1.202217>,  <2.789118, -0.011208, 1.179503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.022976, -0.060143, 1.202217>,  <3.412739, -0.141700, 1.240074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.022976, -0.060143, 1.202217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213742, -0.970762, 0.109250,
		-0.069599, 0.126683, 0.989498,
		-0.974408, 0.203894, -0.094642,
		2.730654, 0.001026, 1.173825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.056934, -0.442466, 1.821897>,  <3.412739, -0.141700, 1.240074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.056934, -0.442466, 1.821897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.810059, -0.420334, 1.507950>,  <2.661934, -0.407055, 1.319581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.810059, -0.420334, 1.507950>,  <3.056934, -0.442466, 1.821897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.810059, -0.420334, 1.507950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139557, -0.989406, 0.039992,
		-0.774341, 0.134217, 0.618370,
		-0.617187, 0.055330, -0.784869,
		2.624903, -0.403735, 1.272489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.776522, 3.358936, 0.425936> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.388718, 3.456497, 0.435410>,  <2.156035, 3.515034, 0.441094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.388718, 3.456497, 0.435410>,  <2.776522, 3.358936, 0.425936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.388718, 3.456497, 0.435410> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226765, 0.856335, 0.463970,
		0.092881, 0.455195, -0.885534,
		-0.969510, 0.243902, 0.023685,
		2.097864, 3.529668, 0.442515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.601280, 4.077038, 0.142483>,  <2.776522, 3.358936, 0.425936>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.601280, 4.077038, 0.142483> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.325680, 4.010223, 0.424583>,  <2.160320, 3.970135, 0.593844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.325680, 4.010223, 0.424583>,  <2.601280, 4.077038, 0.142483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.325680, 4.010223, 0.424583> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061882, 0.955968, 0.286873,
		-0.722115, 0.241297, -0.648325,
		-0.689000, -0.167035, 0.705251,
		2.118980, 3.960113, 0.636159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.149880, 4.603201, 0.164999>,  <2.601280, 4.077038, 0.142483>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.149880, 4.603201, 0.164999> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.131580, 4.462837, 0.539116>,  <2.120601, 4.378619, 0.763586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.131580, 4.462837, 0.539116>,  <2.149880, 4.603201, 0.164999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.131580, 4.462837, 0.539116> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101300, 0.929816, 0.353809,
		-0.993803, 0.110931, -0.006990,
		-0.045748, -0.350909, 0.935291,
		2.117856, 4.357564, 0.819703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.583577, 4.894475, 0.513738>,  <2.149880, 4.603201, 0.164999>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.583577, 4.894475, 0.513738> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.867321, 4.791191, 0.776077>,  <2.037567, 4.729221, 0.933481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.867321, 4.791191, 0.776077>,  <1.583577, 4.894475, 0.513738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.867321, 4.791191, 0.776077> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099555, 0.957859, 0.269434,
		-0.697781, -0.125832, 0.705172,
		0.709359, -0.258210, 0.655849,
		2.080129, 4.713728, 0.972832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.502516, 5.385722, 0.972845>,  <1.583577, 4.894475, 0.513738>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.502516, 5.385722, 0.972845> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.871040, 5.264496, 1.070282>,  <2.092155, 5.191761, 1.128744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.871040, 5.264496, 1.070282>,  <1.502516, 5.385722, 0.972845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.871040, 5.264496, 1.070282> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192766, 0.900083, 0.390758,
		-0.337678, -0.313053, 0.887677,
		0.921311, -0.303064, 0.243592,
		2.147434, 5.173576, 1.143360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.599182, 5.553092, 1.690699>,  <1.502516, 5.385722, 0.972845>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.599182, 5.553092, 1.690699> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.955013, 5.510735, 1.512962>,  <2.168512, 5.485321, 1.406321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.955013, 5.510735, 1.512962>,  <1.599182, 5.553092, 1.690699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.955013, 5.510735, 1.512962> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280589, 0.894275, 0.348627,
		0.360446, -0.434808, 0.825239,
		0.889578, -0.105892, -0.444340,
		2.221887, 5.478967, 1.379660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.038093, 5.631922, 2.211591>,  <1.599182, 5.553092, 1.690699>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.038093, 5.631922, 2.211591> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.190884, 5.742233, 1.858765>,  <2.282558, 5.808420, 1.647069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.190884, 5.742233, 1.858765>,  <2.038093, 5.631922, 2.211591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.190884, 5.742233, 1.858765> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278759, 0.875605, 0.394474,
		0.881133, -0.396560, 0.257574,
		0.381966, 0.275783, -0.882069,
		2.305476, 5.824967, 1.594145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.620772, 5.982965, 2.406352>,  <2.038093, 5.631922, 2.211591>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.620772, 5.982965, 2.406352> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.575527, 6.066402, 2.017776>,  <2.548380, 6.116465, 1.784631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.575527, 6.066402, 2.017776>,  <2.620772, 5.982965, 2.406352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.575527, 6.066402, 2.017776> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423595, 0.894532, 0.142758,
		0.898762, -0.395350, -0.189541,
		-0.113112, 0.208594, -0.971439,
		2.541594, 6.128981, 1.726345>
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
