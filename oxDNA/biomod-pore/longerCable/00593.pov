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
	<24.097776, 35.531815, 35.156746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.303913, 35.216320, 35.022694>,  <24.427595, 35.027023, 34.942261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.303913, 35.216320, 35.022694>,  <24.097776, 35.531815, 35.156746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.303913, 35.216320, 35.022694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584342, 0.609461, -0.535818,
		0.626870, 0.080299, 0.774975,
		0.515343, -0.788739, -0.335130,
		24.458515, 34.979698, 34.922153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.829355, 35.517025, 35.380497>,  <24.097776, 35.531815, 35.156746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.829355, 35.517025, 35.380497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.760149, 35.354774, 35.021492>,  <24.718626, 35.257423, 34.806087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.760149, 35.354774, 35.021492>,  <24.829355, 35.517025, 35.380497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.760149, 35.354774, 35.021492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622074, 0.661492, -0.418871,
		0.763603, -0.630793, 0.137880,
		-0.173014, -0.405623, -0.897517,
		24.708244, 35.233089, 34.752235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.479561, 35.364571, 35.026028>,  <24.829355, 35.517025, 35.380497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.479561, 35.364571, 35.026028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.161545, 35.457188, 34.801777>,  <24.970736, 35.512756, 34.667225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.161545, 35.457188, 34.801777>,  <25.479561, 35.364571, 35.026028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.161545, 35.457188, 34.801777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541191, 0.688166, -0.483259,
		0.273908, -0.687615, -0.672428,
		-0.795039, 0.231544, -0.560626,
		24.923033, 35.526649, 34.633591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.871832, 34.854481, 35.413532>,  <25.479561, 35.364571, 35.026028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.871832, 34.854481, 35.413532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.733154, 35.148460, 35.646652>,  <25.649948, 35.324848, 35.786522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.733154, 35.148460, 35.646652>,  <25.871832, 34.854481, 35.413532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.733154, 35.148460, 35.646652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921568, 0.151183, 0.357570,
		0.174688, 0.661053, -0.729721,
		-0.346694, 0.734951, 0.582795,
		25.629147, 35.368946, 35.821491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.560421, 34.854485, 35.021122>,  <25.871832, 34.854481, 35.413532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.560421, 34.854485, 35.021122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.223370, 34.808079, 34.810783>,  <26.021139, 34.780235, 34.684578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.223370, 34.808079, 34.810783>,  <26.560421, 34.854485, 35.021122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.223370, 34.808079, 34.810783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427368, -0.738180, -0.521965,
		-0.327618, -0.664554, 0.671591,
		-0.842629, -0.116011, -0.525850,
		25.970581, 34.773277, 34.653027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.365822, 34.123817, 34.998714>,  <26.560421, 34.854485, 35.021122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.365822, 34.123817, 34.998714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.201307, 34.328869, 34.697235>,  <26.102598, 34.451900, 34.516346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.201307, 34.328869, 34.697235>,  <26.365822, 34.123817, 34.998714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.201307, 34.328869, 34.697235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414536, -0.631221, -0.655530,
		-0.811791, -0.582045, 0.047110,
		-0.411285, 0.512624, -0.753698,
		26.077921, 34.482655, 34.471127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.074539, 33.620358, 34.496292>,  <26.365822, 34.123817, 34.998714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.074539, 33.620358, 34.496292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.212181, 33.965797, 34.348896>,  <26.294765, 34.173061, 34.260460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.212181, 33.965797, 34.348896>,  <26.074539, 33.620358, 34.496292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.212181, 33.965797, 34.348896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386324, -0.487918, -0.782745,
		-0.855772, 0.126990, -0.501525,
		0.344104, 0.863603, -0.368487,
		26.315413, 34.224876, 34.238350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.764029, 33.729706, 33.822491>,  <26.074539, 33.620358, 34.496292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.764029, 33.729706, 33.822491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.081593, 33.972633, 33.834251>,  <26.272131, 34.118389, 33.841309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.081593, 33.972633, 33.834251>,  <25.764029, 33.729706, 33.822491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.081593, 33.972633, 33.834251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301288, -0.350929, -0.886609,
		-0.528137, 0.712749, -0.461585,
		0.793912, 0.607321, 0.029404,
		26.319767, 34.154831, 33.843071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.900518, 34.052364, 33.104340>,  <25.764029, 33.729706, 33.822491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.900518, 34.052364, 33.104340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.228111, 34.012943, 33.330456>,  <26.424667, 33.989288, 33.466125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.228111, 34.012943, 33.330456>,  <25.900518, 34.052364, 33.104340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.228111, 34.012943, 33.330456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470792, -0.447811, -0.760145,
		0.328059, 0.888680, -0.320350,
		0.818983, -0.098554, 0.565292,
		26.473806, 33.983376, 33.500042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.594357, 34.393532, 32.892143>,  <25.900518, 34.052364, 33.104340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.594357, 34.393532, 32.892143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.675154, 34.056519, 33.091877>,  <26.723633, 33.854309, 33.211716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.675154, 34.056519, 33.091877>,  <26.594357, 34.393532, 32.892143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.675154, 34.056519, 33.091877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608319, -0.291641, -0.738169,
		0.767559, 0.452860, 0.453620,
		0.201993, -0.842534, 0.499335,
		26.735752, 33.803757, 33.241676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.641413, 35.136734, 32.640202>,  <26.594357, 34.393532, 32.892143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.641413, 35.136734, 32.640202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.963108, 35.096340, 32.874466>,  <27.156126, 35.072102, 33.015026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.963108, 35.096340, 32.874466>,  <26.641413, 35.136734, 32.640202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.963108, 35.096340, 32.874466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585370, -0.035640, -0.809982,
		0.102672, 0.994249, 0.030453,
		0.804239, -0.100989, 0.585663,
		27.204380, 35.066044, 33.050163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.182943, 35.327244, 32.233021>,  <26.641413, 35.136734, 32.640202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.182943, 35.327244, 32.233021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.414124, 35.178505, 32.523594>,  <27.552832, 35.089260, 32.697937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.414124, 35.178505, 32.523594>,  <27.182943, 35.327244, 32.233021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.414124, 35.178505, 32.523594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762915, -0.069822, -0.642717,
		0.289713, 0.925665, 0.243333,
		0.577951, -0.371846, 0.726432,
		27.587509, 35.066952, 32.741524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.260174, 35.957764, 31.722767>,  <27.182943, 35.327244, 32.233021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.260174, 35.957764, 31.722767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.397156, 36.184105, 32.022778>,  <27.479345, 36.319908, 32.202785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.397156, 36.184105, 32.022778>,  <27.260174, 35.957764, 31.722767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.397156, 36.184105, 32.022778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568979, -0.760164, 0.313709,
		0.747655, 0.319319, -0.582278,
		0.342453, 0.565850, 0.750026,
		27.499891, 36.353859, 32.247784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.920523, 35.788620, 31.793455>,  <27.260174, 35.957764, 31.722767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.920523, 35.788620, 31.793455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.773491, 35.916012, 32.142960>,  <27.685272, 35.992447, 32.352661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.773491, 35.916012, 32.142960>,  <27.920523, 35.788620, 31.793455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.773491, 35.916012, 32.142960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548375, -0.684593, 0.480226,
		0.751113, 0.655668, 0.076993,
		-0.367578, 0.318483, 0.873759,
		27.663218, 36.011559, 32.405087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.530933, 35.665054, 31.489183>,  <27.920523, 35.788620, 31.793455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.530933, 35.665054, 31.489183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.447186, 35.761845, 31.868153>,  <28.396936, 35.819920, 32.095535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.447186, 35.761845, 31.868153>,  <28.530933, 35.665054, 31.489183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.447186, 35.761845, 31.868153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913838, -0.296341, 0.277635,
		0.347942, 0.923920, -0.159086,
		-0.209369, 0.241980, 0.947423,
		28.384375, 35.834438, 32.152378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.897938, 35.283138, 32.119652>,  <28.530933, 35.665054, 31.489183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.897938, 35.283138, 32.119652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.776905, 35.575294, 32.364594>,  <28.704287, 35.750587, 32.511559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.776905, 35.575294, 32.364594>,  <28.897938, 35.283138, 32.119652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.776905, 35.575294, 32.364594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802461, -0.151455, 0.577164,
		0.514297, 0.666030, -0.540280,
		-0.302580, 0.730387, 0.612356,
		28.686131, 35.794411, 32.548302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.465189, 35.834412, 32.121384>,  <28.897938, 35.283138, 32.119652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.465189, 35.834412, 32.121384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.231970, 35.782768, 32.442230>,  <29.092037, 35.751781, 32.634739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.231970, 35.782768, 32.442230>,  <29.465189, 35.834412, 32.121384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.231970, 35.782768, 32.442230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717250, -0.545511, 0.433556,
		0.381584, 0.828099, 0.410665,
		-0.583050, -0.129111, 0.802112,
		29.057055, 35.744034, 32.682865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.823385, 35.984062, 32.649044>,  <29.465189, 35.834412, 32.121384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.823385, 35.984062, 32.649044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.542187, 35.735832, 32.788002>,  <29.373468, 35.586895, 32.871376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.542187, 35.735832, 32.788002>,  <29.823385, 35.984062, 32.649044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.542187, 35.735832, 32.788002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677355, -0.435352, 0.593008,
		-0.216765, 0.652193, 0.726400,
		-0.702996, -0.620574, 0.347397,
		29.331287, 35.549660, 32.892220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.191725, 35.752228, 33.273914>,  <29.823385, 35.984062, 32.649044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.191725, 35.752228, 33.273914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.879797, 35.517330, 33.187176>,  <29.692640, 35.376392, 33.135132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.879797, 35.517330, 33.187176>,  <30.191725, 35.752228, 33.273914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.879797, 35.517330, 33.187176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423642, -0.750089, 0.507832,
		-0.460876, 0.304154, 0.833717,
		-0.779821, -0.587245, -0.216846,
		29.645851, 35.341156, 33.122124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.129204, 36.495129, 33.294094>,  <30.191725, 35.752228, 33.273914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.129204, 36.495129, 33.294094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.390343, 36.769760, 33.166096>,  <30.547026, 36.934540, 33.089294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.390343, 36.769760, 33.166096>,  <30.129204, 36.495129, 33.294094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.390343, 36.769760, 33.166096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628065, -0.254467, 0.735378,
		0.423464, -0.681072, -0.597343,
		0.652849, 0.686577, -0.320000,
		30.586197, 36.975735, 33.070095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.761608, 36.109074, 33.071144>,  <30.129204, 36.495129, 33.294094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.761608, 36.109074, 33.071144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.803288, 36.490829, 33.183060>,  <30.828295, 36.719883, 33.250210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.803288, 36.490829, 33.183060>,  <30.761608, 36.109074, 33.071144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.803288, 36.490829, 33.183060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647606, -0.278614, 0.709211,
		0.754817, 0.107292, -0.647101,
		0.104199, 0.954391, 0.279785,
		30.834547, 36.777145, 33.266994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.479906, 36.177578, 33.390438>,  <30.761608, 36.109074, 33.071144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.479906, 36.177578, 33.390438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.230247, 36.466152, 33.510418>,  <31.080452, 36.639297, 33.582405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.230247, 36.466152, 33.510418>,  <31.479906, 36.177578, 33.390438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.230247, 36.466152, 33.510418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364052, -0.071147, 0.928657,
		0.691308, 0.688815, -0.218235,
		-0.624147, 0.721437, 0.299949,
		31.043003, 36.682583, 33.600403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.830477, 36.599606, 33.704567>,  <31.479906, 36.177578, 33.390438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.830477, 36.599606, 33.704567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.461908, 36.676918, 33.839401>,  <31.240767, 36.723305, 33.920303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.461908, 36.676918, 33.839401>,  <31.830477, 36.599606, 33.704567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.461908, 36.676918, 33.839401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314013, -0.140575, 0.938954,
		0.228868, 0.971021, 0.068836,
		-0.921420, 0.193281, 0.337086,
		31.185482, 36.734901, 33.940529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.739044, 37.395344, 33.903404>,  <31.830477, 36.599606, 33.704567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.739044, 37.395344, 33.903404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.586756, 37.057716, 34.054455>,  <31.495382, 36.855141, 34.145084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.586756, 37.057716, 34.054455>,  <31.739044, 37.395344, 33.903404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.586756, 37.057716, 34.054455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432699, 0.198294, 0.879461,
		-0.817204, 0.498231, 0.289731,
		-0.380723, -0.844065, 0.377630,
		31.472538, 36.804497, 34.167744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.523802, 37.565430, 34.606731>,  <31.739044, 37.395344, 33.903404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.523802, 37.565430, 34.606731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.571655, 37.169525, 34.575611>,  <31.600367, 36.931980, 34.556938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.571655, 37.169525, 34.575611>,  <31.523802, 37.565430, 34.606731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.571655, 37.169525, 34.575611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416268, -0.021138, 0.908996,
		-0.901337, -0.141131, 0.409479,
		0.119632, -0.989765, -0.077801,
		31.607544, 36.872597, 34.552273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.436781, 37.080013, 35.191250>,  <31.523802, 37.565430, 34.606731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.436781, 37.080013, 35.191250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.707050, 36.869156, 34.985111>,  <31.869213, 36.742641, 34.861427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.707050, 36.869156, 34.985111>,  <31.436781, 37.080013, 35.191250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.707050, 36.869156, 34.985111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520447, -0.153996, 0.839893,
		-0.522109, -0.835703, 0.170302,
		0.675675, -0.527149, -0.515342,
		31.909754, 36.711010, 34.830509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.506804, 36.444733, 35.410423>,  <31.436781, 37.080013, 35.191250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.506804, 36.444733, 35.410423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.866617, 36.518501, 35.252018>,  <32.082504, 36.562763, 35.156975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.866617, 36.518501, 35.252018>,  <31.506804, 36.444733, 35.410423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.866617, 36.518501, 35.252018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435327, -0.302686, 0.847863,
		0.036498, -0.935077, -0.352561,
		0.899532, 0.184425, -0.396016,
		32.136478, 36.573830, 35.133213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.791552, 35.855843, 35.325851>,  <31.506804, 36.444733, 35.410423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.791552, 35.855843, 35.325851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.066761, 36.144104, 35.359997>,  <32.231888, 36.317059, 35.380486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.066761, 36.144104, 35.359997>,  <31.791552, 35.855843, 35.325851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.066761, 36.144104, 35.359997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364772, -0.445130, 0.817802,
		0.627346, -0.531530, -0.569133,
		0.688025, 0.720649, 0.085363,
		32.273170, 36.360298, 35.385605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.528896, 35.608448, 35.315807>,  <31.791552, 35.855843, 35.325851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.528896, 35.608448, 35.315807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.478588, 35.938202, 35.536556>,  <32.448402, 36.136055, 35.669006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.478588, 35.938202, 35.536556>,  <32.528896, 35.608448, 35.315807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.478588, 35.938202, 35.536556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318596, -0.493262, 0.809437,
		0.939510, 0.277626, -0.200611,
		-0.125767, 0.824388, 0.551875,
		32.440857, 36.185520, 35.702118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.154919, 35.820911, 35.634193>,  <32.528896, 35.608448, 35.315807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.154919, 35.820911, 35.634193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.825874, 35.911461, 35.842834>,  <32.628448, 35.965790, 35.968018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.825874, 35.911461, 35.842834>,  <33.154919, 35.820911, 35.634193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.825874, 35.911461, 35.842834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363871, -0.495326, 0.788828,
		0.436928, 0.838695, 0.325092,
		-0.822613, 0.226370, 0.521599,
		32.579090, 35.979370, 35.999313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.239998, 36.303429, 36.170464>,  <33.154919, 35.820911, 35.634193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.239998, 36.303429, 36.170464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.971222, 36.012554, 36.226589>,  <32.809956, 35.838028, 36.260265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.971222, 36.012554, 36.226589>,  <33.239998, 36.303429, 36.170464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.971222, 36.012554, 36.226589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637768, -0.471848, 0.608779,
		-0.376492, 0.498551, 0.780833,
		-0.671942, -0.727191, 0.140313,
		32.769638, 35.794395, 36.268684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.344650, 36.267479, 36.936161>,  <33.239998, 36.303429, 36.170464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.344650, 36.267479, 36.936161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.198910, 35.940262, 36.758148>,  <33.111465, 35.743931, 36.651340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.198910, 35.940262, 36.758148>,  <33.344650, 36.267479, 36.936161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.198910, 35.940262, 36.758148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589263, -0.572567, 0.570032,
		-0.721120, -0.054546, 0.690660,
		-0.364356, -0.818042, -0.445031,
		33.089603, 35.694851, 36.624638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.165497, 35.777668, 37.501217>,  <33.344650, 36.267479, 36.936161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.165497, 35.777668, 37.501217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.229290, 35.602283, 37.147423>,  <33.267567, 35.497051, 36.935146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.229290, 35.602283, 37.147423>,  <33.165497, 35.777668, 37.501217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.229290, 35.602283, 37.147423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688864, -0.592340, 0.417852,
		-0.707129, -0.675931, 0.207572,
		0.159485, -0.438464, -0.884485,
		33.277134, 35.470745, 36.882076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.290192, 35.101681, 37.654171>,  <33.165497, 35.777668, 37.501217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.290192, 35.101681, 37.654171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.439499, 35.148312, 37.286022>,  <33.529083, 35.176292, 37.065132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.439499, 35.148312, 37.286022>,  <33.290192, 35.101681, 37.654171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.439499, 35.148312, 37.286022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759352, -0.608329, 0.230911,
		-0.532968, -0.785076, -0.315595,
		0.373268, 0.116580, -0.920370,
		33.551479, 35.183285, 37.009911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.012573, 34.976006, 37.601276>,  <33.290192, 35.101681, 37.654171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.012573, 34.976006, 37.601276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.275230, 34.795834, 37.359306>,  <34.432823, 34.687729, 37.214123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.275230, 34.795834, 37.359306>,  <34.012573, 34.976006, 37.601276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.275230, 34.795834, 37.359306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537553, -0.842106, 0.043533,
		-0.529018, 0.296593, -0.795093,
		0.656641, -0.450434, -0.604924,
		34.472221, 34.660702, 37.177830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.675781, 34.632233, 36.877609>,  <34.012573, 34.976006, 37.601276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.675781, 34.632233, 36.877609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.993282, 34.427876, 37.009632>,  <34.183784, 34.305260, 37.088848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.993282, 34.427876, 37.009632>,  <33.675781, 34.632233, 36.877609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.993282, 34.427876, 37.009632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571797, -0.811782, 0.118564,
		0.207363, -0.282839, -0.936484,
		0.793756, -0.510893, 0.330060,
		34.231407, 34.274609, 37.108650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.863163, 34.070080, 36.450874>,  <33.675781, 34.632233, 36.877609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.863163, 34.070080, 36.450874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.002682, 33.976601, 36.813911>,  <34.086395, 33.920513, 37.031734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.002682, 33.976601, 36.813911>,  <33.863163, 34.070080, 36.450874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.002682, 33.976601, 36.813911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695327, -0.713836, 0.083416,
		0.628379, -0.660169, -0.411482,
		0.348799, -0.233697, 0.907593,
		34.107323, 33.906490, 37.086189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.552460, 33.667007, 35.955982>,  <33.863163, 34.070080, 36.450874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.552460, 33.667007, 35.955982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.699421, 33.442398, 35.659412>,  <33.787598, 33.307632, 35.481472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.699421, 33.442398, 35.659412>,  <33.552460, 33.667007, 35.955982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.699421, 33.442398, 35.659412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449998, -0.590329, 0.670084,
		-0.813952, -0.579828, 0.035797,
		0.367402, -0.561525, -0.741421,
		33.809643, 33.273941, 35.436985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.833382, 33.071236, 36.289749>,  <33.552460, 33.667007, 35.955982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.833382, 33.071236, 36.289749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.867313, 32.967857, 35.904831>,  <33.887672, 32.905830, 35.673882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.867313, 32.967857, 35.904831>,  <33.833382, 33.071236, 36.289749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.867313, 32.967857, 35.904831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660803, -0.708241, 0.248464,
		-0.745750, -0.656963, 0.110705,
		0.084826, -0.258446, -0.962294,
		33.892761, 32.890324, 35.616142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.011173, 32.377804, 36.371460>,  <33.833382, 33.071236, 36.289749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.011173, 32.377804, 36.371460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.136890, 32.490726, 36.008907>,  <34.212322, 32.558479, 35.791378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.136890, 32.490726, 36.008907>,  <34.011173, 32.377804, 36.371460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.136890, 32.490726, 36.008907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748065, -0.661475, 0.053375,
		-0.584479, -0.694806, -0.419081,
		0.314297, 0.282304, -0.906379,
		34.231178, 32.575417, 35.736992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.733345, 31.856428, 35.971771>,  <34.011173, 32.377804, 36.371460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.733345, 31.856428, 35.971771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.071964, 32.061886, 35.915878>,  <34.275135, 32.185162, 35.882343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.071964, 32.061886, 35.915878>,  <33.733345, 31.856428, 35.971771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.071964, 32.061886, 35.915878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529883, -0.788085, 0.313282,
		0.050795, -0.339249, -0.939324,
		0.846548, 0.513645, -0.139731,
		34.325928, 32.215981, 35.873959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.220238, 31.334396, 35.687866>,  <33.733345, 31.856428, 35.971771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.220238, 31.334396, 35.687866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.415382, 31.639593, 35.857494>,  <34.532471, 31.822712, 35.959270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.415382, 31.639593, 35.857494>,  <34.220238, 31.334396, 35.687866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.415382, 31.639593, 35.857494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673653, -0.638033, 0.372968,
		0.555141, 0.103717, -0.825264,
		0.487863, 0.762992, 0.424068,
		34.561741, 31.868490, 35.984715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.968914, 31.300924, 35.598640>,  <34.220238, 31.334396, 35.687866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.968914, 31.300924, 35.598640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.921688, 31.531723, 35.921906>,  <34.893353, 31.670202, 36.115864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.921688, 31.531723, 35.921906>,  <34.968914, 31.300924, 35.598640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.921688, 31.531723, 35.921906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710549, -0.519437, 0.474664,
		0.693672, 0.630284, -0.348657,
		-0.118068, 0.576999, 0.808166,
		34.886269, 31.704823, 36.164356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.709793, 31.172098, 35.435303>,  <34.968914, 31.300924, 35.598640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.709793, 31.172098, 35.435303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.719772, 30.791872, 35.311497>,  <35.725761, 30.563736, 35.237213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.719772, 30.791872, 35.311497>,  <35.709793, 31.172098, 35.435303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.719772, 30.791872, 35.311497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969090, 0.099012, -0.225966,
		0.245442, -0.294309, 0.923656,
		0.024949, -0.950568, -0.309514,
		35.727257, 30.506702, 35.218643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.234245, 30.753813, 35.706631>,  <35.709793, 31.172098, 35.435303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.234245, 30.753813, 35.706631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.153362, 30.626863, 35.336033>,  <36.104832, 30.550694, 35.113674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.153362, 30.626863, 35.336033>,  <36.234245, 30.753813, 35.706631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.153362, 30.626863, 35.336033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942688, 0.193321, -0.271967,
		0.265425, -0.928387, 0.260092,
		-0.202210, -0.317373, -0.926491,
		36.092701, 30.531652, 35.058086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.659389, 30.143438, 35.424324>,  <36.234245, 30.753813, 35.706631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.659389, 30.143438, 35.424324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.576160, 30.415936, 35.143578>,  <36.526222, 30.579433, 34.975128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.576160, 30.415936, 35.143578>,  <36.659389, 30.143438, 35.424324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.576160, 30.415936, 35.143578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957814, 0.287344, -0.005048,
		0.198239, -0.673308, -0.712291,
		-0.208071, 0.681241, -0.701866,
		36.513741, 30.620308, 34.933018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.919998, 29.994164, 34.678288>,  <36.659389, 30.143438, 35.424324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.919998, 29.994164, 34.678288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.933712, 30.376896, 34.793732>,  <36.941940, 30.606535, 34.862999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.933712, 30.376896, 34.793732>,  <36.919998, 29.994164, 34.678288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.933712, 30.376896, 34.793732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991517, 0.003666, -0.129928,
		-0.125377, 0.290617, -0.948590,
		0.034282, 0.956832, 0.288611,
		36.943996, 30.663946, 34.880314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.175163, 30.394089, 34.058392>,  <36.919998, 29.994164, 34.678288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.175163, 30.394089, 34.058392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.281487, 30.502821, 34.428352>,  <37.345280, 30.568060, 34.650330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.281487, 30.502821, 34.428352>,  <37.175163, 30.394089, 34.058392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.281487, 30.502821, 34.428352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940047, -0.285740, -0.186183,
		0.213672, 0.918945, -0.331488,
		0.265811, 0.271832, 0.924906,
		37.361229, 30.584372, 34.705826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.404041, 30.375483, 33.273170>,  <37.175163, 30.394089, 34.058392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.404041, 30.375483, 33.273170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.422108, 30.649677, 32.982498>,  <37.432949, 30.814194, 32.808094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.422108, 30.649677, 32.982498>,  <37.404041, 30.375483, 33.273170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.422108, 30.649677, 32.982498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442923, -0.665759, -0.600486,
		-0.895421, -0.294743, -0.333688,
		0.045167, 0.685486, -0.726683,
		37.435658, 30.855324, 32.764492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.264034, 30.007126, 32.710499>,  <37.404041, 30.375483, 33.273170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.264034, 30.007126, 32.710499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.464802, 30.318117, 32.558918>,  <37.585262, 30.504711, 32.467968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.464802, 30.318117, 32.558918>,  <37.264034, 30.007126, 32.710499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.464802, 30.318117, 32.558918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475914, -0.614108, -0.629585,
		-0.722205, 0.135654, -0.678246,
		0.501922, 0.777476, -0.378952,
		37.615379, 30.551359, 32.445232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.211380, 29.844748, 32.003464>,  <37.264034, 30.007126, 32.710499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.211380, 29.844748, 32.003464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.522121, 30.078718, 32.096722>,  <37.708565, 30.219101, 32.152676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.522121, 30.078718, 32.096722>,  <37.211380, 29.844748, 32.003464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.522121, 30.078718, 32.096722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591801, -0.551738, -0.587671,
		-0.215108, 0.594512, -0.774780,
		0.776853, 0.584928, 0.233149,
		37.755177, 30.254196, 32.166668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.435028, 29.867374, 31.408478>,  <37.211380, 29.844748, 32.003464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.435028, 29.867374, 31.408478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.736488, 29.997538, 31.636906>,  <37.917366, 30.075636, 31.773962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.736488, 29.997538, 31.636906>,  <37.435028, 29.867374, 31.408478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.736488, 29.997538, 31.636906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647929, -0.513825, -0.562292,
		0.110454, 0.793784, -0.598086,
		0.753650, 0.325410, 0.571070,
		37.962582, 30.095161, 31.808226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.020576, 30.196089, 31.044813>,  <37.435028, 29.867374, 31.408478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.020576, 30.196089, 31.044813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.159218, 30.030161, 31.381334>,  <38.242401, 29.930605, 31.583248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.159218, 30.030161, 31.381334>,  <38.020576, 30.196089, 31.044813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.159218, 30.030161, 31.381334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673343, -0.514400, -0.531039,
		0.653051, 0.750545, 0.101022,
		0.346603, -0.414818, 0.841304,
		38.263199, 29.905716, 31.633726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.697544, 30.324150, 31.139664>,  <38.020576, 30.196089, 31.044813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.697544, 30.324150, 31.139664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.633511, 29.975269, 31.324549>,  <38.595089, 29.765942, 31.435480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.633511, 29.975269, 31.324549>,  <38.697544, 30.324150, 31.139664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.633511, 29.975269, 31.324549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879450, -0.338665, -0.334475,
		0.448264, 0.352949, 0.821271,
		-0.160084, -0.872200, 0.462212,
		38.585487, 29.713610, 31.463213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.334473, 30.188669, 31.499773>,  <38.697544, 30.324150, 31.139664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.334473, 30.188669, 31.499773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.153732, 29.833530, 31.464998>,  <39.045288, 29.620447, 31.444134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.153732, 29.833530, 31.464998>,  <39.334473, 30.188669, 31.499773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.153732, 29.833530, 31.464998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876021, -0.423184, -0.231305,
		0.168573, -0.180675, 0.968989,
		-0.451851, -0.887847, -0.086938,
		39.018177, 29.567177, 31.438917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.660137, 29.892550, 31.970570>,  <39.334473, 30.188669, 31.499773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.660137, 29.892550, 31.970570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.521770, 29.603786, 31.730839>,  <39.438751, 29.430529, 31.587000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.521770, 29.603786, 31.730839>,  <39.660137, 29.892550, 31.970570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.521770, 29.603786, 31.730839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938251, -0.262595, -0.225229,
		0.005215, -0.640228, 0.768167,
		-0.345915, -0.721908, -0.599326,
		39.417995, 29.387215, 31.551041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.006130, 29.264177, 32.107086>,  <39.660137, 29.892550, 31.970570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.006130, 29.264177, 32.107086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.868073, 29.212635, 31.735224>,  <39.785236, 29.181709, 31.512106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.868073, 29.212635, 31.735224>,  <40.006130, 29.264177, 32.107086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.868073, 29.212635, 31.735224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920080, -0.241984, -0.308052,
		-0.185269, -0.961686, 0.202078,
		-0.345149, -0.128855, -0.929661,
		39.764526, 29.173979, 31.456326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.271549, 28.564650, 31.969296>,  <40.006130, 29.264177, 32.107086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.271549, 28.564650, 31.969296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.189781, 28.747257, 31.622932>,  <40.140720, 28.856823, 31.415113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.189781, 28.747257, 31.622932>,  <40.271549, 28.564650, 31.969296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.189781, 28.747257, 31.622932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867028, -0.326180, -0.376654,
		-0.454394, -0.827765, -0.329139,
		-0.204423, 0.456522, -0.865909,
		40.128456, 28.884214, 31.363159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.282063, 28.094702, 31.354403>,  <40.271549, 28.564650, 31.969296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.282063, 28.094702, 31.354403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.366436, 28.468702, 31.240360>,  <40.417061, 28.693102, 31.171936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.366436, 28.468702, 31.240360>,  <40.282063, 28.094702, 31.354403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.366436, 28.468702, 31.240360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859833, -0.316211, -0.400871,
		-0.464967, -0.160585, -0.870642,
		0.210932, 0.934999, -0.285104,
		40.429714, 28.749203, 31.154829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.536755, 28.036631, 30.668640>,  <40.282063, 28.094702, 31.354403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.536755, 28.036631, 30.668640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.652081, 28.419333, 30.684086>,  <40.721275, 28.648954, 30.693354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.652081, 28.419333, 30.684086>,  <40.536755, 28.036631, 30.668640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.652081, 28.419333, 30.684086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910245, -0.261339, -0.321179,
		-0.297199, 0.127749, -0.946231,
		0.288317, 0.956756, 0.038614,
		40.738575, 28.706360, 30.695669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.835335, 28.271866, 29.971270>,  <40.536755, 28.036631, 30.668640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.835335, 28.271866, 29.971270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.950420, 28.516218, 30.266306>,  <41.019474, 28.662830, 30.443329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.950420, 28.516218, 30.266306>,  <40.835335, 28.271866, 29.971270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.950420, 28.516218, 30.266306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956729, -0.218282, -0.192412,
		0.043462, 0.761036, -0.647252,
		0.287716, 0.610882, 0.737592,
		41.036736, 28.699484, 30.487583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.372589, 28.023760, 29.341848>,  <40.835335, 28.271866, 29.971270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.372589, 28.023760, 29.341848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.645969, 28.193563, 29.104300>,  <40.809998, 28.295446, 28.961771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.645969, 28.193563, 29.104300>,  <40.372589, 28.023760, 29.341848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.645969, 28.193563, 29.104300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719745, -0.256013, 0.645310,
		0.121903, -0.868474, -0.480512,
		0.683453, 0.424511, -0.593871,
		40.851006, 28.320917, 28.926138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.966625, 27.565453, 29.149809>,  <40.372589, 28.023760, 29.341848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.966625, 27.565453, 29.149809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.053848, 27.955105, 29.173546>,  <41.106182, 28.188896, 29.187788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.053848, 27.955105, 29.173546>,  <40.966625, 27.565453, 29.149809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.053848, 27.955105, 29.173546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587654, -0.179606, 0.788927,
		0.779175, -0.137160, -0.611615,
		0.218059, 0.974130, 0.059342,
		41.119267, 28.247343, 29.191349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.658421, 27.352459, 28.957577>,  <40.966625, 27.565453, 29.149809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.658421, 27.352459, 28.957577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.769382, 27.274237, 28.581320>,  <41.835960, 27.227303, 28.355566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.769382, 27.274237, 28.581320>,  <41.658421, 27.352459, 28.957577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.769382, 27.274237, 28.581320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755327, 0.560666, -0.339315,
		0.593740, 0.804619, 0.007823,
		0.277406, -0.195556, -0.940640,
		41.852604, 27.215570, 28.299128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.661644, 28.032274, 28.631668>,  <41.658421, 27.352459, 28.957577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.661644, 28.032274, 28.631668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.622223, 27.726776, 28.376490>,  <41.598572, 27.543476, 28.223383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.622223, 27.726776, 28.376490>,  <41.661644, 28.032274, 28.631668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.622223, 27.726776, 28.376490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653767, 0.533007, -0.537115,
		0.750251, 0.364135, -0.551842,
		-0.098553, -0.763747, -0.637948,
		41.592655, 27.497652, 28.185104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.593769, 28.343121, 28.007853>,  <41.661644, 28.032274, 28.631668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.593769, 28.343121, 28.007853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.424091, 27.982880, 27.969955>,  <41.322285, 27.766735, 27.947218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.424091, 27.982880, 27.969955>,  <41.593769, 28.343121, 28.007853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.424091, 27.982880, 27.969955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625256, 0.366962, -0.688763,
		0.655067, -0.232934, -0.718769,
		-0.424197, -0.900601, -0.094741,
		41.296833, 27.712700, 27.941534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.480446, 28.156176, 27.391455>,  <41.593769, 28.343121, 28.007853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.480446, 28.156176, 27.391455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.199512, 27.937208, 27.573469>,  <41.030952, 27.805828, 27.682678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.199512, 27.937208, 27.573469>,  <41.480446, 28.156176, 27.391455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.199512, 27.937208, 27.573469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690786, 0.369775, -0.621354,
		0.171878, -0.750734, -0.637854,
		-0.702334, -0.547417, 0.455040,
		40.988811, 27.772982, 27.709980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.225769, 27.519138, 27.010271>,  <41.480446, 28.156176, 27.391455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.225769, 27.519138, 27.010271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.961613, 27.687790, 27.258823>,  <40.803120, 27.788980, 27.407955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.961613, 27.687790, 27.258823>,  <41.225769, 27.519138, 27.010271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.961613, 27.687790, 27.258823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587361, 0.225531, -0.777266,
		-0.467858, -0.878274, 0.098709,
		-0.660391, 0.421629, 0.621380,
		40.763496, 27.814278, 27.445238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.588261, 27.310900, 26.718157>,  <41.225769, 27.519138, 27.010271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.588261, 27.310900, 26.718157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.547554, 27.644531, 26.935028>,  <40.523129, 27.844709, 27.065151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.547554, 27.644531, 26.935028>,  <40.588261, 27.310900, 26.718157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.547554, 27.644531, 26.935028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489128, 0.432625, -0.757357,
		-0.866255, -0.342270, 0.363943,
		-0.101769, 0.834079, 0.542177,
		40.517025, 27.894754, 27.097681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.808674, 27.437618, 26.836321>,  <40.588261, 27.310900, 26.718157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.808674, 27.437618, 26.836321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.961105, 27.795088, 26.931082>,  <40.052563, 28.009569, 26.987938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.961105, 27.795088, 26.931082>,  <39.808674, 27.437618, 26.836321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.961105, 27.795088, 26.931082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574671, 0.429685, -0.696508,
		-0.724245, 0.129285, 0.677314,
		0.381080, 0.893675, 0.236901,
		40.075428, 28.063190, 27.002151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.261196, 27.975555, 26.825249>,  <39.808674, 27.437618, 26.836321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.261196, 27.975555, 26.825249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.592117, 28.192003, 26.764912>,  <39.790672, 28.321873, 26.728710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.592117, 28.192003, 26.764912>,  <39.261196, 27.975555, 26.825249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.592117, 28.192003, 26.764912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384706, 0.350088, -0.854072,
		-0.409348, 0.764609, 0.497802,
		0.827306, 0.541120, -0.150842,
		39.840309, 28.354340, 26.719660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.982471, 28.695051, 26.792166>,  <39.261196, 27.975555, 26.825249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.982471, 28.695051, 26.792166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.326427, 28.610094, 26.606489>,  <39.532803, 28.559120, 26.495083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.326427, 28.610094, 26.606489>,  <38.982471, 28.695051, 26.792166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.326427, 28.610094, 26.606489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327110, 0.468841, -0.820480,
		0.391895, 0.857367, 0.333678,
		0.859894, -0.212393, -0.464189,
		39.584396, 28.546377, 26.467232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.093102, 29.297586, 26.335640>,  <38.982471, 28.695051, 26.792166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.093102, 29.297586, 26.335640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.335754, 29.025703, 26.170715>,  <39.481346, 28.862574, 26.071760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.335754, 29.025703, 26.170715>,  <39.093102, 29.297586, 26.335640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.335754, 29.025703, 26.170715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293743, 0.290295, -0.910738,
		0.738726, 0.673594, -0.023558,
		0.606629, -0.679706, -0.412312,
		39.517742, 28.821793, 26.047022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.451710, 29.604057, 25.796455>,  <39.093102, 29.297586, 26.335640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.451710, 29.604057, 25.796455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.478188, 29.220854, 25.684856>,  <39.494076, 28.990932, 25.617897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.478188, 29.220854, 25.684856>,  <39.451710, 29.604057, 25.796455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.478188, 29.220854, 25.684856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348964, 0.239727, -0.905955,
		0.934795, 0.157335, -0.318440,
		0.066199, -0.958007, -0.279000,
		39.498047, 28.933453, 25.601156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.624714, 29.680899, 25.121614>,  <39.451710, 29.604057, 25.796455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.624714, 29.680899, 25.121614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.470577, 29.313637, 25.158504>,  <39.378098, 29.093279, 25.180637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.470577, 29.313637, 25.158504>,  <39.624714, 29.680899, 25.121614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.470577, 29.313637, 25.158504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410008, 0.080822, -0.908494,
		0.826685, -0.387890, -0.407594,
		-0.385338, -0.918155, 0.092224,
		39.354977, 29.038191, 25.186172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.874142, 29.292189, 24.440128>,  <39.624714, 29.680899, 25.121614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.874142, 29.292189, 24.440128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.551182, 29.122290, 24.603931>,  <39.357407, 29.020350, 24.702213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.551182, 29.122290, 24.603931>,  <39.874142, 29.292189, 24.440128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.551182, 29.122290, 24.603931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451018, -0.003156, -0.892509,
		0.380384, -0.905306, -0.189021,
		-0.807398, -0.424748, 0.409510,
		39.308964, 28.994865, 24.726784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.655254, 28.809706, 23.894211>,  <39.874142, 29.292189, 24.440128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.655254, 28.809706, 23.894211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.345970, 28.871128, 24.140324>,  <39.160400, 28.907982, 24.287991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.345970, 28.871128, 24.140324>,  <39.655254, 28.809706, 23.894211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.345970, 28.871128, 24.140324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610584, 0.081795, -0.787716,
		-0.171286, -0.984748, 0.030515,
		-0.773206, 0.153557, 0.615282,
		39.114010, 28.917194, 24.324909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.987614, 28.525284, 23.563164>,  <39.655254, 28.809706, 23.894211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.987614, 28.525284, 23.563164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.854721, 28.779963, 23.841513>,  <38.774986, 28.932770, 24.008522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.854721, 28.779963, 23.841513>,  <38.987614, 28.525284, 23.563164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.854721, 28.779963, 23.841513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598296, 0.428090, -0.677333,
		-0.729153, -0.641369, 0.238709,
		-0.332231, 0.636699, 0.695872,
		38.755051, 28.970972, 24.050274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.262981, 28.495672, 23.469168>,  <38.987614, 28.525284, 23.563164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.262981, 28.495672, 23.469168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.305241, 28.835558, 23.675787>,  <38.330597, 29.039490, 23.799759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.305241, 28.835558, 23.675787>,  <38.262981, 28.495672, 23.469168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.305241, 28.835558, 23.675787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713518, 0.426589, -0.555800,
		-0.692626, -0.309848, 0.651355,
		0.105648, 0.849715, 0.516549,
		38.336933, 29.090473, 23.830751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.592609, 28.789930, 23.329037>,  <38.262981, 28.495672, 23.469168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.592609, 28.789930, 23.329037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.796059, 29.092117, 23.494238>,  <37.918129, 29.273430, 23.593359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.796059, 29.092117, 23.494238>,  <37.592609, 28.789930, 23.329037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.796059, 29.092117, 23.494238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559436, 0.654608, -0.508448,
		-0.654470, 0.027561, 0.755585,
		0.508625, 0.755466, 0.413003,
		37.948647, 29.318758, 23.618139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.096241, 29.154804, 23.647242>,  <37.592609, 28.789930, 23.329037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.096241, 29.154804, 23.647242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.409000, 29.398718, 23.595392>,  <37.596657, 29.545067, 23.564283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.409000, 29.398718, 23.595392>,  <37.096241, 29.154804, 23.647242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.409000, 29.398718, 23.595392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590386, 0.657518, -0.468097,
		-0.200209, 0.442531, 0.874118,
		0.781896, 0.609784, -0.129623,
		37.643570, 29.581654, 23.556505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.781147, 29.812897, 23.770222>,  <37.096241, 29.154804, 23.647242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.781147, 29.812897, 23.770222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.123192, 29.867777, 23.570240>,  <37.328419, 29.900705, 23.450251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.123192, 29.867777, 23.570240>,  <36.781147, 29.812897, 23.770222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.123192, 29.867777, 23.570240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464039, 0.632588, -0.620081,
		0.231190, 0.762239, 0.604602,
		0.855114, 0.137202, -0.499956,
		37.379726, 29.908937, 23.420254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.875805, 30.517626, 23.710814>,  <36.781147, 29.812897, 23.770222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.875805, 30.517626, 23.710814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.073193, 30.345716, 23.408348>,  <37.191624, 30.242571, 23.226870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.073193, 30.345716, 23.408348>,  <36.875805, 30.517626, 23.710814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.073193, 30.345716, 23.408348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623169, 0.431787, -0.652089,
		0.606753, 0.793003, -0.054748,
		0.493469, -0.429774, -0.756163,
		37.221233, 30.216784, 23.181499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.115223, 31.063042, 23.269426>,  <36.875805, 30.517626, 23.710814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.115223, 31.063042, 23.269426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.127422, 30.735397, 23.040297>,  <37.134743, 30.538811, 22.902819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.127422, 30.735397, 23.040297>,  <37.115223, 31.063042, 23.269426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.127422, 30.735397, 23.040297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556574, 0.462103, -0.690424,
		0.830238, 0.339878, -0.441801,
		0.030502, -0.819111, -0.572823,
		37.136574, 30.489664, 22.868450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.170242, 31.381357, 22.631126>,  <37.115223, 31.063042, 23.269426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.170242, 31.381357, 22.631126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.065273, 31.004347, 22.548393>,  <37.002293, 30.778141, 22.498753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.065273, 31.004347, 22.548393>,  <37.170242, 31.381357, 22.631126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.065273, 31.004347, 22.548393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774997, 0.333565, -0.536762,
		0.574905, 0.019439, -0.817989,
		-0.262419, -0.942526, -0.206834,
		36.986549, 30.721588, 22.486343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.927029, 31.322010, 21.963078>,  <37.170242, 31.381357, 22.631126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.927029, 31.322010, 21.963078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.765179, 30.983467, 22.101618>,  <36.668068, 30.780342, 22.184742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.765179, 30.983467, 22.101618>,  <36.927029, 31.322010, 21.963078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.765179, 30.983467, 22.101618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.877198, 0.252182, -0.408568,
		0.258456, -0.469123, -0.844467,
		-0.404628, -0.846362, 0.346336,
		36.643791, 30.729561, 22.205523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.461418, 31.146719, 21.508024>,  <36.927029, 31.322010, 21.963078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.461418, 31.146719, 21.508024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.324303, 30.921143, 21.808548>,  <36.242035, 30.785797, 21.988863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.324303, 30.921143, 21.808548>,  <36.461418, 31.146719, 21.508024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.324303, 30.921143, 21.808548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.927203, 0.074584, -0.367058,
		0.150964, -0.822438, -0.548457,
		-0.342788, -0.563944, 0.751307,
		36.221466, 30.751961, 22.033941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.046631, 30.592607, 21.207478>,  <36.461418, 31.146719, 21.508024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.046631, 30.592607, 21.207478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.924412, 30.675327, 21.579258>,  <35.851082, 30.724960, 21.802326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.924412, 30.675327, 21.579258>,  <36.046631, 30.592607, 21.207478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.924412, 30.675327, 21.579258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.940432, 0.087309, -0.328581,
		-0.149101, -0.974479, 0.167810,
		-0.305544, 0.206806, 0.929448,
		35.832748, 30.737368, 21.858093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.369968, 30.260401, 21.274731>,  <36.046631, 30.592607, 21.207478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.369968, 30.260401, 21.274731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.348866, 30.534727, 21.565075>,  <35.336205, 30.699324, 21.739281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.348866, 30.534727, 21.565075>,  <35.369968, 30.260401, 21.274731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.348866, 30.534727, 21.565075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.928920, 0.233067, -0.287727,
		-0.366502, -0.689446, 0.624772,
		-0.052759, 0.685816, 0.725860,
		35.333038, 30.740473, 21.782833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.687164, 30.200586, 21.530033>,  <35.369968, 30.260401, 21.274731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.687164, 30.200586, 21.530033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.814037, 30.558489, 21.655767>,  <34.890160, 30.773232, 21.731207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.814037, 30.558489, 21.655767>,  <34.687164, 30.200586, 21.530033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.814037, 30.558489, 21.655767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.878128, 0.402267, -0.258984,
		-0.358175, -0.193881, 0.913302,
		0.317179, 0.894758, 0.314335,
		34.909191, 30.826916, 21.750069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.177467, 30.486351, 22.020231>,  <34.687164, 30.200586, 21.530033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.177467, 30.486351, 22.020231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.371281, 30.800833, 21.866812>,  <34.487568, 30.989523, 21.774761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.371281, 30.800833, 21.866812>,  <34.177467, 30.486351, 22.020231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.371281, 30.800833, 21.866812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.866948, 0.490095, -0.090598,
		0.116746, 0.376412, 0.919067,
		0.484533, 0.786206, -0.383546,
		34.516640, 31.036695, 21.751747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.012936, 31.085131, 22.459496>,  <34.177467, 30.486351, 22.020231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.012936, 31.085131, 22.459496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.131004, 31.211411, 22.098783>,  <34.201847, 31.287178, 21.882357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.131004, 31.211411, 22.098783>,  <34.012936, 31.085131, 22.459496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.131004, 31.211411, 22.098783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828592, 0.554519, -0.077089,
		0.475716, 0.769962, 0.425268,
		0.295175, 0.315702, -0.901778,
		34.219559, 31.306122, 21.828251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.802834, 31.849899, 22.316442>,  <34.012936, 31.085131, 22.459496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.802834, 31.849899, 22.316442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.891018, 31.807997, 21.928541>,  <33.943928, 31.782856, 21.695801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.891018, 31.807997, 21.928541>,  <33.802834, 31.849899, 22.316442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.891018, 31.807997, 21.928541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741781, 0.627585, -0.236428,
		0.633370, 0.771469, 0.060654,
		0.220462, -0.104755, -0.969754,
		33.957157, 31.776571, 21.637615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.891266, 32.508251, 21.968073>,  <33.802834, 31.849899, 22.316442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.891266, 32.508251, 21.968073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.802441, 32.293579, 21.642456>,  <33.749146, 32.164776, 21.447086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.802441, 32.293579, 21.642456>,  <33.891266, 32.508251, 21.968073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.802441, 32.293579, 21.642456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576871, 0.745402, -0.334060,
		0.786072, 0.395417, -0.475118,
		-0.222061, -0.536677, -0.814044,
		33.735821, 32.132576, 21.398243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.053333, 32.973961, 21.454815>,  <33.891266, 32.508251, 21.968073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.053333, 32.973961, 21.454815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.810780, 32.698067, 21.296537>,  <33.665249, 32.532532, 21.201571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.810780, 32.698067, 21.296537>,  <34.053333, 32.973961, 21.454815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.810780, 32.698067, 21.296537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531760, 0.721714, -0.443125,
		0.591214, -0.058289, -0.804405,
		-0.606380, -0.689732, -0.395692,
		33.628864, 32.491146, 21.177830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.786026, 33.302387, 20.875189>,  <34.053333, 32.973961, 21.454815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.786026, 33.302387, 20.875189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.509735, 33.017872, 20.927294>,  <33.343960, 32.847164, 20.958557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.509735, 33.017872, 20.927294>,  <33.786026, 33.302387, 20.875189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.509735, 33.017872, 20.927294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634452, 0.509691, -0.581108,
		0.346940, -0.484033, -0.803334,
		-0.690727, -0.711286, 0.130263,
		33.302517, 32.804485, 20.966373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.570980, 33.237274, 20.172304>,  <33.786026, 33.302387, 20.875189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.570980, 33.237274, 20.172304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.270237, 33.115715, 20.406349>,  <33.089790, 33.042778, 20.546776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.270237, 33.115715, 20.406349>,  <33.570980, 33.237274, 20.172304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.270237, 33.115715, 20.406349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613788, 0.646697, -0.452821,
		-0.240780, -0.699592, -0.672752,
		-0.751857, -0.303897, 0.585114,
		33.044682, 33.024548, 20.581882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.015045, 33.379723, 19.811716>,  <33.570980, 33.237274, 20.172304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.015045, 33.379723, 19.811716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.836239, 33.312813, 20.163216>,  <32.728954, 33.272667, 20.374115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.836239, 33.312813, 20.163216>,  <33.015045, 33.379723, 19.811716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.836239, 33.312813, 20.163216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737051, 0.625535, -0.255857,
		-0.506890, -0.762054, -0.402911,
		-0.447011, -0.167274, 0.878749,
		32.702137, 33.262630, 20.426840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.273445, 33.373665, 19.616240>,  <33.015045, 33.379723, 19.811716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.273445, 33.373665, 19.616240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.289154, 33.441132, 20.010197>,  <32.298580, 33.481609, 20.246571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.289154, 33.441132, 20.010197>,  <32.273445, 33.373665, 19.616240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.289154, 33.441132, 20.010197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732173, 0.675603, -0.086503,
		-0.679985, -0.717714, 0.150025,
		0.039273, 0.168665, 0.984891,
		32.300938, 33.491730, 20.305664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.575863, 33.627205, 19.765358>,  <32.273445, 33.373665, 19.616240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.575863, 33.627205, 19.765358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.794767, 33.697052, 20.092775>,  <31.926109, 33.738960, 20.289227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.794767, 33.697052, 20.092775>,  <31.575863, 33.627205, 19.765358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.794767, 33.697052, 20.092775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580570, 0.783649, 0.220980,
		-0.602863, -0.596156, 0.530240,
		0.547261, 0.174621, 0.818543,
		31.958946, 33.749439, 20.338339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.093653, 33.765633, 20.293060>,  <31.575863, 33.627205, 19.765358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.093653, 33.765633, 20.293060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.438463, 33.947319, 20.383038>,  <31.645350, 34.056332, 20.437025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.438463, 33.947319, 20.383038>,  <31.093653, 33.765633, 20.293060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.438463, 33.947319, 20.383038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504823, 0.809172, 0.300657,
		-0.045456, -0.372731, 0.926825,
		0.862025, 0.454216, 0.224945,
		31.697071, 34.083584, 20.450521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.888550, 34.059505, 20.984118>,  <31.093653, 33.765633, 20.293060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.888550, 34.059505, 20.984118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.211710, 34.254471, 20.851618>,  <31.405605, 34.371449, 20.772118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.211710, 34.254471, 20.851618>,  <30.888550, 34.059505, 20.984118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.211710, 34.254471, 20.851618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481004, 0.870138, 0.107214,
		0.340489, 0.072713, 0.937433,
		0.807900, 0.487414, -0.331248,
		31.454081, 34.400696, 20.752243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.130896, 34.523819, 21.469664>,  <30.888550, 34.059505, 20.984118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.130896, 34.523819, 21.469664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.264593, 34.661766, 21.118813>,  <31.344810, 34.744534, 20.908302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.264593, 34.661766, 21.118813>,  <31.130896, 34.523819, 21.469664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.264593, 34.661766, 21.118813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634029, 0.770862, 0.061479,
		0.697345, 0.535574, 0.476310,
		0.334242, 0.344866, -0.877126,
		31.364866, 34.765224, 20.855675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.181650, 35.310276, 21.552542>,  <31.130896, 34.523819, 21.469664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.181650, 35.310276, 21.552542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.140575, 35.224854, 21.163935>,  <31.115931, 35.173599, 20.930771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.140575, 35.224854, 21.163935>,  <31.181650, 35.310276, 21.552542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.140575, 35.224854, 21.163935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676309, 0.731191, -0.089245,
		0.729425, 0.647883, -0.219515,
		-0.102687, -0.213558, -0.971519,
		31.109770, 35.160786, 20.872478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.094219, 35.989166, 21.246075>,  <31.181650, 35.310276, 21.552542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.094219, 35.989166, 21.246075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.962975, 35.734756, 20.966702>,  <30.884228, 35.582111, 20.799078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.962975, 35.734756, 20.966702>,  <31.094219, 35.989166, 21.246075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.962975, 35.734756, 20.966702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784678, 0.595169, -0.173361,
		0.525949, 0.491164, -0.694360,
		-0.328112, -0.636028, -0.698434,
		30.864540, 35.543949, 20.757172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.958456, 36.441059, 20.695383>,  <31.094219, 35.989166, 21.246075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.958456, 36.441059, 20.695383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.749960, 36.110409, 20.610529>,  <30.624863, 35.912018, 20.559616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.749960, 36.110409, 20.610529>,  <30.958456, 36.441059, 20.695383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.749960, 36.110409, 20.610529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698572, 0.556060, -0.450327,
		0.490210, -0.086539, -0.867298,
		-0.521240, -0.826625, -0.212132,
		30.593588, 35.862423, 20.546888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.847551, 36.482121, 19.988482>,  <30.958456, 36.441059, 20.695383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.847551, 36.482121, 19.988482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.558685, 36.242805, 20.127350>,  <30.385366, 36.099216, 20.210670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.558685, 36.242805, 20.127350>,  <30.847551, 36.482121, 19.988482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.558685, 36.242805, 20.127350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679326, 0.518836, -0.518965,
		0.130366, -0.610621, -0.781119,
		-0.722164, -0.598290, 0.347172,
		30.342035, 36.063316, 20.231501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.474295, 36.298759, 19.350805>,  <30.847551, 36.482121, 19.988482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.474295, 36.298759, 19.350805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.256090, 36.203892, 19.672344>,  <30.125168, 36.146973, 19.865267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.256090, 36.203892, 19.672344>,  <30.474295, 36.298759, 19.350805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.256090, 36.203892, 19.672344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811200, 0.390482, -0.435291,
		-0.210649, -0.889536, -0.405404,
		-0.545510, -0.237170, 0.803847,
		30.092438, 36.132740, 19.913498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.860727, 35.925518, 19.171179>,  <30.474295, 36.298759, 19.350805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.860727, 35.925518, 19.171179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.789936, 36.114391, 19.516600>,  <29.747461, 36.227715, 19.723852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.789936, 36.114391, 19.516600>,  <29.860727, 35.925518, 19.171179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.789936, 36.114391, 19.516600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759062, 0.493027, -0.425145,
		-0.626501, -0.730733, 0.271158,
		-0.176979, 0.472180, 0.863554,
		29.736843, 36.256046, 19.775665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.182148, 36.230473, 19.023811>,  <29.860727, 35.925518, 19.171179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.182148, 36.230473, 19.023811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.238852, 36.369713, 19.394484>,  <29.272873, 36.453255, 19.616886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.238852, 36.369713, 19.394484>,  <29.182148, 36.230473, 19.023811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.238852, 36.369713, 19.394484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743065, 0.655926, -0.132721,
		-0.654032, -0.669768, 0.351642,
		0.141758, 0.348097, 0.926679,
		29.281380, 36.474140, 19.672487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.575003, 36.143143, 19.602007>,  <29.182148, 36.230473, 19.023811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.575003, 36.143143, 19.602007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.789335, 36.476639, 19.655325>,  <28.917934, 36.676735, 19.687317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.789335, 36.476639, 19.655325>,  <28.575003, 36.143143, 19.602007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.789335, 36.476639, 19.655325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816564, 0.551864, -0.169323,
		-0.214732, -0.018117, 0.976505,
		0.535830, 0.833737, 0.133297,
		28.950085, 36.726761, 19.695314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.344316, 36.674908, 20.158831>,  <28.575003, 36.143143, 19.602007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.344316, 36.674908, 20.158831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.525099, 36.828144, 19.836594>,  <28.633568, 36.920086, 19.643251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.525099, 36.828144, 19.836594>,  <28.344316, 36.674908, 20.158831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.525099, 36.828144, 19.836594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810236, 0.554085, -0.191069,
		0.373169, 0.739073, 0.560817,
		0.451955, 0.383093, -0.805591,
		28.660685, 36.943073, 19.594917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.190819, 37.339233, 20.229763>,  <28.344316, 36.674908, 20.158831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.190819, 37.339233, 20.229763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.261950, 37.300293, 19.838070>,  <28.304628, 37.276928, 19.603054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.261950, 37.300293, 19.838070>,  <28.190819, 37.339233, 20.229763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.261950, 37.300293, 19.838070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724153, 0.660843, -0.197202,
		0.666319, 0.744183, 0.047019,
		0.177826, -0.097351, -0.979235,
		28.315298, 37.271088, 19.544300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.316381, 37.967560, 20.013556>,  <28.190819, 37.339233, 20.229763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.316381, 37.967560, 20.013556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.149973, 37.722691, 19.744581>,  <28.050127, 37.575771, 19.583197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.149973, 37.722691, 19.744581>,  <28.316381, 37.967560, 20.013556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.149973, 37.722691, 19.744581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687579, 0.695694, -0.207953,
		0.595114, 0.375841, -0.710340,
		-0.416022, -0.612171, -0.672438,
		28.025166, 37.539040, 19.542850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.092712, 37.782333, 20.068192>,  <28.316381, 37.967560, 20.013556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.092712, 37.782333, 20.068192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.308493, 38.052330, 20.269541>,  <29.437960, 38.214329, 20.390350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.308493, 38.052330, 20.269541>,  <29.092712, 37.782333, 20.068192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.308493, 38.052330, 20.269541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007961, -0.601881, 0.798546,
		0.841981, -0.426767, -0.330058,
		0.539448, 0.674988, 0.503375,
		29.470327, 38.254826, 20.420553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.712196, 37.534126, 20.366718>,  <29.092712, 37.782333, 20.068192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.712196, 37.534126, 20.366718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.611980, 37.837257, 20.607691>,  <29.551851, 38.019138, 20.752274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.611980, 37.837257, 20.607691>,  <29.712196, 37.534126, 20.366718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.611980, 37.837257, 20.607691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105488, -0.597201, 0.795125,
		0.962342, 0.262761, 0.069681,
		-0.250541, 0.757831, 0.602429,
		29.536818, 38.064606, 20.788420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.113754, 37.408360, 20.891897>,  <29.712196, 37.534126, 20.366718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.113754, 37.408360, 20.891897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.839874, 37.672352, 21.015585>,  <29.675547, 37.830746, 21.089798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.839874, 37.672352, 21.015585>,  <30.113754, 37.408360, 20.891897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.839874, 37.672352, 21.015585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082067, -0.351755, 0.932488,
		0.724190, 0.663851, 0.186684,
		-0.684700, 0.659978, 0.309218,
		29.634464, 37.870346, 21.108351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.331219, 37.590149, 21.569048>,  <30.113754, 37.408360, 20.891897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.331219, 37.590149, 21.569048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.944508, 37.685497, 21.532137>,  <29.712481, 37.742706, 21.509991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.944508, 37.685497, 21.532137>,  <30.331219, 37.590149, 21.569048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.944508, 37.685497, 21.532137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166208, -0.311972, 0.935440,
		0.194195, 0.919702, 0.341228,
		-0.966780, 0.238373, -0.092279,
		29.654474, 37.757008, 21.504454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.142864, 38.196259, 22.024448>,  <30.331219, 37.590149, 21.569048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.142864, 38.196259, 22.024448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.876598, 37.907063, 21.950499>,  <29.716839, 37.733547, 21.906130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.876598, 37.907063, 21.950499>,  <30.142864, 38.196259, 22.024448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.876598, 37.907063, 21.950499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022610, -0.267162, 0.963386,
		-0.745908, 0.637113, 0.194187,
		-0.665666, -0.722988, -0.184873,
		29.676899, 37.690166, 21.895037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.627548, 38.104137, 22.709429>,  <30.142864, 38.196259, 22.024448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.627548, 38.104137, 22.709429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.659328, 37.787594, 22.466963>,  <29.678396, 37.597668, 22.321484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.659328, 37.787594, 22.466963>,  <29.627548, 38.104137, 22.709429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.659328, 37.787594, 22.466963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223806, -0.578402, 0.784450,
		-0.971390, -0.197988, 0.131157,
		0.079450, -0.791360, -0.606165,
		29.683163, 37.550186, 22.285112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.292894, 37.528671, 23.061121>,  <29.627548, 38.104137, 22.709429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.292894, 37.528671, 23.061121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.556973, 37.404823, 22.787397>,  <29.715420, 37.330517, 22.623163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.556973, 37.404823, 22.787397>,  <29.292894, 37.528671, 23.061121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.556973, 37.404823, 22.787397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380648, -0.647495, 0.660195,
		-0.647495, -0.696339, -0.309617,
		-0.660195, 0.309617, 0.684310,
		29.755032, 37.311939, 22.582104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.412998, 36.902107, 23.369101>,  <29.292894, 37.528671, 23.061121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.412998, 36.902107, 23.369101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.697601, 36.924274, 23.088905>,  <29.868362, 36.937576, 22.920788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.697601, 36.924274, 23.088905>,  <29.412998, 36.902107, 23.369101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.697601, 36.924274, 23.088905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582332, -0.604406, 0.543675,
		-0.393251, -0.794747, -0.462312,
		0.711508, 0.055419, -0.700490,
		29.911053, 36.940899, 22.878757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.617859, 36.235432, 23.169474>,  <29.412998, 36.902107, 23.369101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.617859, 36.235432, 23.169474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.929426, 36.476421, 23.099831>,  <30.116365, 36.621014, 23.058044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.929426, 36.476421, 23.099831>,  <29.617859, 36.235432, 23.169474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.929426, 36.476421, 23.099831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587522, -0.603942, 0.538584,
		0.219332, -0.521804, -0.824387,
		0.778917, 0.602474, -0.174107,
		30.163101, 36.657166, 23.047598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.235235, 35.799957, 23.110701>,  <29.617859, 36.235432, 23.169474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.235235, 35.799957, 23.110701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.392393, 36.167030, 23.134365>,  <30.486687, 36.387272, 23.148563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.392393, 36.167030, 23.134365>,  <30.235235, 35.799957, 23.110701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.392393, 36.167030, 23.134365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755579, -0.358822, 0.548039,
		0.524152, -0.170620, -0.834358,
		0.392893, 0.917679, 0.059160,
		30.510262, 36.442333, 23.152113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.909838, 35.748325, 22.986586>,  <30.235235, 35.799957, 23.110701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.909838, 35.748325, 22.986586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.912409, 36.093651, 23.188437>,  <30.913952, 36.300846, 23.309547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.912409, 36.093651, 23.188437>,  <30.909838, 35.748325, 22.986586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.912409, 36.093651, 23.188437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824961, -0.289783, 0.485248,
		0.565154, 0.413178, -0.714062,
		0.006429, 0.863313, 0.504628,
		30.914337, 36.352646, 23.339825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.626743, 35.907715, 22.995848>,  <30.909838, 35.748325, 22.986586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.626743, 35.907715, 22.995848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.458317, 36.124714, 23.286612>,  <31.357262, 36.254913, 23.461069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.458317, 36.124714, 23.286612>,  <31.626743, 35.907715, 22.995848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.458317, 36.124714, 23.286612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784952, -0.183615, 0.591722,
		0.454481, 0.819743, -0.348523,
		-0.421066, 0.542501, 0.726909,
		31.331997, 36.287464, 23.504684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.209160, 36.314533, 23.302389>,  <31.626743, 35.907715, 22.995848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.209160, 36.314533, 23.302389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.916740, 36.274734, 23.572399>,  <31.741287, 36.250854, 23.734406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.916740, 36.274734, 23.572399>,  <32.209160, 36.314533, 23.302389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.916740, 36.274734, 23.572399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681941, -0.139534, 0.717974,
		0.022754, 0.985206, 0.169858,
		-0.731053, -0.099496, 0.675027,
		31.697424, 36.244884, 23.774908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.432247, 36.795944, 23.796803>,  <32.209160, 36.314533, 23.302389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.432247, 36.795944, 23.796803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.165524, 36.562561, 23.982250>,  <32.005489, 36.422531, 24.093519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.165524, 36.562561, 23.982250>,  <32.432247, 36.795944, 23.796803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.165524, 36.562561, 23.982250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529221, 0.067261, 0.845814,
		-0.524678, 0.809355, 0.263927,
		-0.666811, -0.583456, 0.463618,
		31.965481, 36.387524, 24.121336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.320496, 37.025005, 24.552641>,  <32.432247, 36.795944, 23.796803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.320496, 37.025005, 24.552641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.151623, 36.662605, 24.564770>,  <32.050301, 36.445164, 24.572048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.151623, 36.662605, 24.564770>,  <32.320496, 37.025005, 24.552641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.151623, 36.662605, 24.564770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431138, -0.171254, 0.885885,
		-0.797422, 0.387079, 0.462913,
		-0.422183, -0.906003, 0.030323,
		32.024967, 36.390804, 24.573866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.996685, 36.957123, 25.244833>,  <32.320496, 37.025005, 24.552641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.996685, 36.957123, 25.244833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.044907, 36.584099, 25.108713>,  <32.073841, 36.360287, 25.027042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.044907, 36.584099, 25.108713>,  <31.996685, 36.957123, 25.244833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.044907, 36.584099, 25.108713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685950, -0.169543, 0.707621,
		-0.717593, -0.318734, 0.619249,
		0.120553, -0.932558, -0.340298,
		32.081074, 36.304333, 25.006624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.989529, 36.452431, 25.839409>,  <31.996685, 36.957123, 25.244833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.989529, 36.452431, 25.839409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.147099, 36.248398, 25.533564>,  <32.241642, 36.125977, 25.350056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.147099, 36.248398, 25.533564>,  <31.989529, 36.452431, 25.839409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.147099, 36.248398, 25.533564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630766, -0.455052, 0.628539,
		-0.668548, -0.729890, 0.142488,
		0.393925, -0.510086, -0.764614,
		32.265278, 36.095371, 25.304180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.865288, 35.705971, 25.967270>,  <31.989529, 36.452431, 25.839409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.865288, 35.705971, 25.967270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.192497, 35.761593, 25.744020>,  <32.388824, 35.794968, 25.610071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.192497, 35.761593, 25.744020>,  <31.865288, 35.705971, 25.967270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.192497, 35.761593, 25.744020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524554, -0.578435, 0.624705,
		-0.235966, -0.803788, -0.546118,
		0.818024, 0.139059, -0.558121,
		32.437904, 35.803310, 25.576584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.200939, 35.028088, 25.905922>,  <31.865288, 35.705971, 25.967270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.200939, 35.028088, 25.905922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.493290, 35.279869, 25.800392>,  <32.668701, 35.430939, 25.737074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.493290, 35.279869, 25.800392>,  <32.200939, 35.028088, 25.905922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.493290, 35.279869, 25.800392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673991, -0.604768, 0.424256,
		0.107499, -0.487893, -0.866259,
		0.730877, 0.629458, -0.263823,
		32.712551, 35.468708, 25.721245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.660500, 34.717751, 25.428780>,  <32.200939, 35.028088, 25.905922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.660500, 34.717751, 25.428780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.882137, 34.991711, 25.618046>,  <33.015121, 35.156086, 25.731606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.882137, 34.991711, 25.618046>,  <32.660500, 34.717751, 25.428780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.882137, 34.991711, 25.618046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709544, -0.685829, 0.161820,
		0.435342, 0.246069, -0.865984,
		0.554098, 0.684900, 0.473167,
		33.048367, 35.197182, 25.759996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.298374, 34.529961, 25.298765>,  <32.660500, 34.717751, 25.428780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.298374, 34.529961, 25.298765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.388165, 34.789768, 25.589344>,  <33.442039, 34.945652, 25.763691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.388165, 34.789768, 25.589344>,  <33.298374, 34.529961, 25.298765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.388165, 34.789768, 25.589344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803622, -0.545043, 0.238999,
		0.551181, 0.530140, -0.644322,
		0.224480, 0.649523, 0.726449,
		33.455509, 34.984627, 25.807280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.063438, 34.610870, 25.236700>,  <33.298374, 34.529961, 25.298765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.063438, 34.610870, 25.236700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.929684, 34.681461, 25.607006>,  <33.849430, 34.723816, 25.829189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.929684, 34.681461, 25.607006>,  <34.063438, 34.610870, 25.236700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.929684, 34.681461, 25.607006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750313, -0.544550, 0.374826,
		0.570274, 0.819951, 0.049677,
		-0.334391, 0.176480, 0.925763,
		33.829365, 34.734406, 25.884735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.634842, 34.558136, 25.720276>,  <34.063438, 34.610870, 25.236700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.634842, 34.558136, 25.720276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.338200, 34.560665, 25.988598>,  <34.160213, 34.562183, 26.149591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.338200, 34.560665, 25.988598>,  <34.634842, 34.558136, 25.720276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.338200, 34.560665, 25.988598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558644, -0.547791, 0.622770,
		0.371396, 0.836591, 0.402715,
		-0.741608, 0.006320, 0.670804,
		34.115719, 34.562561, 26.189838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.934044, 34.765446, 26.441010>,  <34.634842, 34.558136, 25.720276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.934044, 34.765446, 26.441010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.595028, 34.563770, 26.507320>,  <34.391621, 34.442764, 26.547108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.595028, 34.563770, 26.507320>,  <34.934044, 34.765446, 26.441010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.595028, 34.563770, 26.507320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404402, -0.411192, 0.816933,
		-0.343719, 0.759421, 0.552393,
		-0.847535, -0.504185, 0.165777,
		34.340767, 34.412514, 26.557053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.859489, 34.661720, 27.201822>,  <34.934044, 34.765446, 26.441010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.859489, 34.661720, 27.201822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.605076, 34.387249, 27.060617>,  <34.452427, 34.222565, 26.975895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.605076, 34.387249, 27.060617>,  <34.859489, 34.661720, 27.201822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.605076, 34.387249, 27.060617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380423, -0.676839, 0.630212,
		-0.671372, 0.266541, 0.691531,
		-0.636033, -0.686181, -0.353013,
		34.414265, 34.181396, 26.954714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.688690, 34.245861, 27.741989>,  <34.859489, 34.661720, 27.201822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.688690, 34.245861, 27.741989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.574039, 34.008808, 27.440889>,  <34.505249, 33.866577, 27.260229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.574039, 34.008808, 27.440889>,  <34.688690, 34.245861, 27.741989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.574039, 34.008808, 27.440889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347299, -0.796544, 0.494875,
		-0.892878, -0.119586, 0.434129,
		-0.286622, -0.592635, -0.752749,
		34.488052, 33.831017, 27.215065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.368282, 33.621445, 28.129169>,  <34.688690, 34.245861, 27.741989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.368282, 33.621445, 28.129169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.494720, 33.518318, 27.763960>,  <34.570583, 33.456444, 27.544834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.494720, 33.518318, 27.763960>,  <34.368282, 33.621445, 28.129169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.494720, 33.518318, 27.763960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340688, -0.867330, 0.362864,
		-0.885445, -0.425757, -0.186326,
		0.316099, -0.257817, -0.913024,
		34.589550, 33.440971, 27.490053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.058151, 32.991646, 27.885618>,  <34.368282, 33.621445, 28.129169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.058151, 32.991646, 27.885618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.391918, 33.003498, 27.665485>,  <34.592178, 33.010609, 27.533405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.391918, 33.003498, 27.665485>,  <34.058151, 32.991646, 27.885618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.391918, 33.003498, 27.665485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200801, -0.946262, 0.253510,
		-0.513244, -0.322041, -0.795531,
		0.834422, 0.029631, -0.550330,
		34.642246, 33.012386, 27.500387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.092979, 32.258419, 27.625854>,  <34.058151, 32.991646, 27.885618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.092979, 32.258419, 27.625854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.457962, 32.399345, 27.542629>,  <34.676952, 32.483902, 27.492695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.457962, 32.399345, 27.542629>,  <34.092979, 32.258419, 27.625854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.457962, 32.399345, 27.542629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375324, -0.923196, 0.082714,
		-0.162941, -0.153564, -0.974612,
		0.912459, 0.352318, -0.208062,
		34.731701, 32.505039, 27.480211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.337231, 31.857437, 27.020727>,  <34.092979, 32.258419, 27.625854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.337231, 31.857437, 27.020727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.633442, 32.012405, 27.240372>,  <34.811169, 32.105385, 27.372158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.633442, 32.012405, 27.240372>,  <34.337231, 31.857437, 27.020727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.633442, 32.012405, 27.240372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392426, -0.912609, 0.114662,
		0.545547, 0.130576, -0.827846,
		0.740527, 0.387422, 0.549112,
		34.855598, 32.128632, 27.405106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.919067, 31.439495, 26.888512>,  <34.337231, 31.857437, 27.020727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.919067, 31.439495, 26.888512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.086872, 31.645882, 27.187252>,  <35.187557, 31.769714, 27.366497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.086872, 31.645882, 27.187252>,  <34.919067, 31.439495, 26.888512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.086872, 31.645882, 27.187252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555825, -0.796487, 0.238048,
		0.717682, 0.315254, -0.620925,
		0.419514, 0.515968, 0.746850,
		35.212727, 31.800673, 27.411306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.596874, 31.500906, 26.723606>,  <34.919067, 31.439495, 26.888512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.596874, 31.500906, 26.723606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.572834, 31.542965, 27.120663>,  <35.558411, 31.568199, 27.358896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.572834, 31.542965, 27.120663>,  <35.596874, 31.500906, 26.723606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.572834, 31.542965, 27.120663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676018, -0.727380, 0.117978,
		0.734430, 0.678132, -0.027366,
		-0.060099, 0.105146, 0.992639,
		35.554806, 31.574509, 27.418455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.230148, 31.537672, 27.007856>,  <35.596874, 31.500906, 26.723606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.230148, 31.537672, 27.007856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.998417, 31.406029, 27.306135>,  <35.859379, 31.327044, 27.485104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.998417, 31.406029, 27.306135>,  <36.230148, 31.537672, 27.007856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.998417, 31.406029, 27.306135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680209, -0.699278, 0.219831,
		0.449103, 0.634585, 0.628974,
		-0.579329, -0.329107, 0.745699,
		35.824619, 31.307297, 27.529844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.611618, 31.663675, 27.731098>,  <36.230148, 31.537672, 27.007856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.611618, 31.663675, 27.731098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.339031, 31.376888, 27.789825>,  <36.175480, 31.204817, 27.825062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.339031, 31.376888, 27.789825>,  <36.611618, 31.663675, 27.731098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.339031, 31.376888, 27.789825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711789, -0.602677, 0.360744,
		-0.170156, 0.350341, 0.921036,
		-0.681471, -0.716966, 0.146820,
		36.134590, 31.161798, 27.833872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.659111, 31.429436, 28.436535>,  <36.611618, 31.663675, 27.731098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.659111, 31.429436, 28.436535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.495445, 31.133150, 28.223394>,  <36.397247, 30.955378, 28.095510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.495445, 31.133150, 28.223394>,  <36.659111, 31.429436, 28.436535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.495445, 31.133150, 28.223394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682220, -0.636133, 0.360432,
		-0.605941, -0.216046, 0.765611,
		-0.409160, -0.740716, -0.532849,
		36.372696, 30.910936, 28.063540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.808071, 30.926613, 28.818651>,  <36.659111, 31.429436, 28.436535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.808071, 30.926613, 28.818651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.692192, 30.693718, 28.514790>,  <36.622665, 30.553982, 28.332472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.692192, 30.693718, 28.514790>,  <36.808071, 30.926613, 28.818651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.692192, 30.693718, 28.514790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643158, -0.706209, 0.296002,
		-0.708818, -0.402828, 0.579057,
		-0.289697, -0.582237, -0.759655,
		36.605282, 30.519047, 28.286894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.541676, 30.358511, 29.100496>,  <36.808071, 30.926613, 28.818651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.541676, 30.358511, 29.100496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.641678, 30.254435, 28.727446>,  <36.701679, 30.191988, 28.503614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.641678, 30.254435, 28.727446>,  <36.541676, 30.358511, 29.100496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.641678, 30.254435, 28.727446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499892, -0.790227, 0.354469,
		-0.829218, -0.554834, -0.067496,
		0.250009, -0.260192, -0.932629,
		36.716682, 30.176376, 28.447657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.497303, 29.607149, 29.118265>,  <36.541676, 30.358511, 29.100496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.497303, 29.607149, 29.118265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.704384, 29.694542, 28.787386>,  <36.828632, 29.746977, 28.588860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.704384, 29.694542, 28.787386>,  <36.497303, 29.607149, 29.118265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.704384, 29.694542, 28.787386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490883, -0.867723, 0.078034,
		-0.700729, -0.446455, -0.556468,
		0.517699, 0.218480, -0.827196,
		36.859695, 29.760086, 28.539227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.602047, 28.941898, 28.716593>,  <36.497303, 29.607149, 29.118265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.602047, 28.941898, 28.716593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.891178, 29.188581, 28.591894>,  <37.064655, 29.336592, 28.517075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.891178, 29.188581, 28.591894>,  <36.602047, 28.941898, 28.716593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.891178, 29.188581, 28.591894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634002, -0.771315, -0.055821,
		-0.274881, -0.157299, -0.948524,
		0.722829, 0.616710, -0.311748,
		37.108028, 29.373594, 28.498369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.993355, 28.527733, 28.169558>,  <36.602047, 28.941898, 28.716593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.993355, 28.527733, 28.169558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.246639, 28.816118, 28.282169>,  <37.398609, 28.989149, 28.349735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.246639, 28.816118, 28.282169>,  <36.993355, 28.527733, 28.169558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.246639, 28.816118, 28.282169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738246, -0.671850, 0.060095,
		0.232471, 0.169784, -0.957670,
		0.633207, 0.720966, 0.281527,
		37.436600, 29.032408, 28.366627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.548988, 28.299686, 27.907021>,  <36.993355, 28.527733, 28.169558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.548988, 28.299686, 27.907021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.689735, 28.585934, 28.148376>,  <37.774185, 28.757681, 28.293190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.689735, 28.585934, 28.148376>,  <37.548988, 28.299686, 27.907021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.689735, 28.585934, 28.148376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822352, -0.544250, 0.165918,
		0.447130, 0.437819, -0.779994,
		0.351869, 0.715616, 0.603392,
		37.795296, 28.800619, 28.329393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.221836, 28.479006, 27.751648>,  <37.548988, 28.299686, 27.907021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.221836, 28.479006, 27.751648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.186855, 28.582821, 28.136354>,  <38.165867, 28.645109, 28.367178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.186855, 28.582821, 28.136354>,  <38.221836, 28.479006, 27.751648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.186855, 28.582821, 28.136354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877886, -0.436226, 0.197545,
		0.470817, 0.861596, -0.189694,
		-0.087454, 0.259537, 0.961765,
		38.160618, 28.660683, 28.424885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.890877, 28.826794, 27.864361>,  <38.221836, 28.479006, 27.751648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.890877, 28.826794, 27.864361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.739758, 28.735065, 28.223177>,  <38.649086, 28.680029, 28.438467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.739758, 28.735065, 28.223177>,  <38.890877, 28.826794, 27.864361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.739758, 28.735065, 28.223177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857873, -0.451171, 0.245964,
		0.348314, 0.862471, 0.367179,
		-0.377798, -0.229320, 0.897040,
		38.626419, 28.666269, 28.492289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.301548, 29.183193, 28.413748>,  <38.890877, 28.826794, 27.864361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.301548, 29.183193, 28.413748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.143368, 28.853785, 28.576439>,  <39.048458, 28.656139, 28.674053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.143368, 28.853785, 28.576439>,  <39.301548, 29.183193, 28.413748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.143368, 28.853785, 28.576439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915826, -0.319860, 0.242800,
		-0.069856, 0.468508, 0.880693,
		-0.395452, -0.823523, 0.406728,
		39.024731, 28.606728, 28.698458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.610012, 29.088583, 29.031668>,  <39.301548, 29.183193, 28.413748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.610012, 29.088583, 29.031668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.464111, 28.730776, 28.928289>,  <39.376572, 28.516090, 28.866262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.464111, 28.730776, 28.928289>,  <39.610012, 29.088583, 29.031668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.464111, 28.730776, 28.928289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858310, -0.430611, 0.279066,
		-0.360920, -0.120039, 0.924839,
		-0.364747, -0.894519, -0.258446,
		39.354687, 28.462420, 28.850756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.428238, 29.854027, 29.133121>,  <39.610012, 29.088583, 29.031668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.428238, 29.854027, 29.133121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.602623, 30.191118, 29.259453>,  <39.707253, 30.393373, 29.335253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.602623, 30.191118, 29.259453>,  <39.428238, 29.854027, 29.133121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.602623, 30.191118, 29.259453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764954, 0.531870, -0.363263,
		-0.474111, -0.083226, 0.876523,
		0.435963, 0.842726, 0.315829,
		39.733414, 30.443935, 29.354202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.812515, 30.262369, 29.266157>,  <39.428238, 29.854027, 29.133121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.812515, 30.262369, 29.266157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.107010, 30.533056, 29.267708>,  <39.283707, 30.695469, 29.268639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.107010, 30.533056, 29.267708>,  <38.812515, 30.262369, 29.266157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.107010, 30.533056, 29.267708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674466, 0.734230, -0.077475,
		-0.055274, 0.054426, 0.996987,
		0.736234, 0.676716, 0.003875,
		39.327881, 30.736071, 29.268869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.696186, 30.770689, 29.777317>,  <38.812515, 30.262369, 29.266157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.696186, 30.770689, 29.777317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.955372, 30.969627, 29.546566>,  <39.110882, 31.088991, 29.408115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.955372, 30.969627, 29.546566>,  <38.696186, 30.770689, 29.777317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.955372, 30.969627, 29.546566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542599, 0.832936, 0.108642,
		0.534537, 0.242619, 0.809572,
		0.647963, 0.497346, -0.576880,
		39.149761, 31.118832, 29.373503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.670975, 31.410101, 30.043774>,  <38.696186, 30.770689, 29.777317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.670975, 31.410101, 30.043774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.812019, 31.470114, 29.674309>,  <38.896645, 31.506121, 29.452629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.812019, 31.470114, 29.674309>,  <38.670975, 31.410101, 30.043774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.812019, 31.470114, 29.674309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571427, 0.816180, -0.085571,
		0.741037, 0.557980, 0.373528,
		0.352613, 0.150032, -0.923663,
		38.917805, 31.515123, 29.397209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.856567, 32.080864, 30.007549>,  <38.670975, 31.410101, 30.043774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.856567, 32.080864, 30.007549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.810352, 31.973793, 29.624926>,  <38.782623, 31.909552, 29.395351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.810352, 31.973793, 29.624926>,  <38.856567, 32.080864, 30.007549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.810352, 31.973793, 29.624926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704015, 0.701418, -0.111247,
		0.700724, 0.660577, -0.269489,
		-0.115537, -0.267677, -0.956556,
		38.775692, 31.893490, 29.337959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.911839, 32.658615, 29.683275>,  <38.856567, 32.080864, 30.007549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.911839, 32.658615, 29.683275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.749916, 32.420181, 29.405912>,  <38.652763, 32.277119, 29.239494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.749916, 32.420181, 29.405912>,  <38.911839, 32.658615, 29.683275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.749916, 32.420181, 29.405912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488974, 0.781900, -0.386701,
		0.772683, 0.182521, -0.607986,
		-0.404803, -0.596086, -0.693409,
		38.628475, 32.241356, 29.197889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.920338, 33.056190, 28.979675>,  <38.911839, 32.658615, 29.683275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.920338, 33.056190, 28.979675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.631081, 32.781063, 28.954473>,  <38.457527, 32.615986, 28.939352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.631081, 32.781063, 28.954473>,  <38.920338, 33.056190, 28.979675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.631081, 32.781063, 28.954473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586521, 0.659691, -0.469896,
		0.364765, -0.302850, -0.880471,
		-0.723146, -0.687816, -0.063004,
		38.414135, 32.574718, 28.935572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.524899, 33.400005, 28.528324>,  <38.920338, 33.056190, 28.979675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.524899, 33.400005, 28.528324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.294529, 33.089687, 28.631437>,  <38.156307, 32.903496, 28.693306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.294529, 33.089687, 28.631437>,  <38.524899, 33.400005, 28.528324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.294529, 33.089687, 28.631437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816706, 0.532051, -0.223413,
		0.036170, -0.339201, -0.940018,
		-0.575919, -0.775799, 0.257783,
		38.121754, 32.856949, 28.708773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.063889, 33.306355, 27.893671>,  <38.524899, 33.400005, 28.528324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.063889, 33.306355, 27.893671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.906631, 33.174248, 28.236916>,  <37.812275, 33.094982, 28.442863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.906631, 33.174248, 28.236916>,  <38.063889, 33.306355, 27.893671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.906631, 33.174248, 28.236916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653822, 0.756602, -0.008353,
		-0.646492, -0.564338, -0.513391,
		-0.393147, -0.330266, 0.858114,
		37.788689, 33.075169, 28.494350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.387676, 33.456894, 27.893192>,  <38.063889, 33.306355, 27.893671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.387676, 33.456894, 27.893192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.439629, 33.418194, 28.287910>,  <37.470798, 33.394974, 28.524742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.439629, 33.418194, 28.287910>,  <37.387676, 33.456894, 27.893192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.439629, 33.418194, 28.287910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710608, 0.684993, 0.160691,
		-0.691497, -0.722097, 0.020213,
		0.129880, -0.096754, 0.986798,
		37.478592, 33.389168, 28.583950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.810356, 33.269672, 28.214853>,  <37.387676, 33.456894, 27.893192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.810356, 33.269672, 28.214853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.018291, 33.470978, 28.490965>,  <37.143055, 33.591763, 28.656631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.018291, 33.470978, 28.490965>,  <36.810356, 33.269672, 28.214853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.018291, 33.470978, 28.490965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699099, 0.715006, 0.005191,
		-0.490943, -0.485273, 0.723522,
		0.519842, 0.503265, 0.690281,
		37.174244, 33.621956, 28.698050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.226593, 33.539127, 28.448893>,  <36.810356, 33.269672, 28.214853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.226593, 33.539127, 28.448893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.509518, 33.719257, 28.666853>,  <36.679272, 33.827335, 28.797628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.509518, 33.719257, 28.666853>,  <36.226593, 33.539127, 28.448893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.509518, 33.719257, 28.666853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578876, 0.811397, 0.080856,
		-0.405719, -0.372620, 0.834594,
		0.707315, 0.450321, 0.544900,
		36.721714, 33.854355, 28.830322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.863010, 33.825752, 28.968731>,  <36.226593, 33.539127, 28.448893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.863010, 33.825752, 28.968731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.203335, 34.035885, 28.963856>,  <36.407528, 34.161964, 28.960930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.203335, 34.035885, 28.963856>,  <35.863010, 33.825752, 28.968731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.203335, 34.035885, 28.963856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524992, 0.850791, 0.023200,
		0.022558, -0.013339, 0.999657,
		0.850808, 0.525335, -0.012189,
		36.458576, 34.193485, 28.960199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.695324, 34.369648, 29.350559>,  <35.863010, 33.825752, 28.968731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.695324, 34.369648, 29.350559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.024059, 34.517754, 29.177357>,  <36.221298, 34.606617, 29.073435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.024059, 34.517754, 29.177357>,  <35.695324, 34.369648, 29.350559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.024059, 34.517754, 29.177357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392793, 0.918752, 0.040112,
		0.412675, 0.137115, 0.900499,
		0.821835, 0.370263, -0.433004,
		36.270611, 34.628834, 29.047455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.957005, 34.905178, 29.679325>,  <35.695324, 34.369648, 29.350559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.957005, 34.905178, 29.679325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.074055, 34.963638, 29.301329>,  <36.144283, 34.998714, 29.074530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.074055, 34.963638, 29.301329>,  <35.957005, 34.905178, 29.679325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.074055, 34.963638, 29.301329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444888, 0.895586, 0.000751,
		0.846432, 0.420197, 0.327090,
		0.292622, 0.146154, -0.944993,
		36.161842, 35.007484, 29.017830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.042004, 35.606083, 29.642433>,  <35.957005, 34.905178, 29.679325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.042004, 35.606083, 29.642433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.002502, 35.498447, 29.259216>,  <35.978802, 35.433865, 29.029287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.002502, 35.498447, 29.259216>,  <36.042004, 35.606083, 29.642433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.002502, 35.498447, 29.259216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553821, 0.814730, -0.171751,
		0.826760, 0.513622, -0.229478,
		-0.098747, -0.269087, -0.958040,
		35.972878, 35.417721, 28.971804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.218166, 36.166237, 29.188864>,  <36.042004, 35.606083, 29.642433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.218166, 36.166237, 29.188864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.991192, 35.936012, 28.953323>,  <35.855007, 35.797878, 28.811998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.991192, 35.936012, 28.953323>,  <36.218166, 36.166237, 29.188864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.991192, 35.936012, 28.953323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436602, 0.816632, -0.377479,
		0.698139, 0.042900, -0.714676,
		-0.567433, -0.575562, -0.588853,
		35.820961, 35.763344, 28.776667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.313728, 36.498463, 28.452505>,  <36.218166, 36.166237, 29.188864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.313728, 36.498463, 28.452505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.983929, 36.272266, 28.460701>,  <35.786049, 36.136547, 28.465618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.983929, 36.272266, 28.460701>,  <36.313728, 36.498463, 28.452505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.983929, 36.272266, 28.460701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503157, 0.716078, -0.483802,
		0.258914, -0.409204, -0.874937,
		-0.824497, -0.565494, 0.020491,
		35.736580, 36.102619, 28.466848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.111946, 36.555546, 27.745872>,  <36.313728, 36.498463, 28.452505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.111946, 36.555546, 27.745872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.817528, 36.435219, 27.988440>,  <35.640877, 36.363022, 28.133980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.817528, 36.435219, 27.988440>,  <36.111946, 36.555546, 27.745872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.817528, 36.435219, 27.988440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638207, 0.607014, -0.473525,
		-0.225660, -0.735558, -0.638774,
		-0.736049, -0.300814, 0.606417,
		35.596714, 36.344975, 28.170364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.570610, 36.476646, 27.291143>,  <36.111946, 36.555546, 27.745872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.570610, 36.476646, 27.291143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.388294, 36.496693, 27.646612>,  <35.278904, 36.508720, 27.859894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.388294, 36.496693, 27.646612>,  <35.570610, 36.476646, 27.291143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.388294, 36.496693, 27.646612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531964, 0.785142, -0.317121,
		-0.713629, -0.617284, -0.331201,
		-0.455793, 0.050120, 0.888673,
		35.251556, 36.511730, 27.913214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.929703, 36.174519, 27.107857>,  <35.570610, 36.476646, 27.291143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.929703, 36.174519, 27.107857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.905956, 36.406509, 27.432842>,  <34.891708, 36.545704, 27.627834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.905956, 36.406509, 27.432842>,  <34.929703, 36.174519, 27.107857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.905956, 36.406509, 27.432842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674478, 0.576705, -0.460967,
		-0.735904, -0.575355, 0.356946,
		-0.059367, 0.579980, 0.812465,
		34.888145, 36.580502, 27.676582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.200459, 36.211487, 27.312370>,  <34.929703, 36.174519, 27.107857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.200459, 36.211487, 27.312370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.416332, 36.528202, 27.426783>,  <34.545856, 36.718231, 27.495430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.416332, 36.528202, 27.426783>,  <34.200459, 36.211487, 27.312370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.416332, 36.528202, 27.426783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691322, 0.610702, -0.386157,
		-0.480433, 0.010664, 0.876966,
		0.539683, 0.791789, 0.286030,
		34.578236, 36.765739, 27.512592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.765865, 36.725727, 27.697624>,  <34.200459, 36.211487, 27.312370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.765865, 36.725727, 27.697624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.088589, 36.898174, 27.536032>,  <34.282223, 37.001640, 27.439075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.088589, 36.898174, 27.536032>,  <33.765865, 36.725727, 27.697624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.088589, 36.898174, 27.536032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581457, 0.700605, -0.413594,
		0.104726, 0.568589, 0.815928,
		0.806808, 0.431113, -0.403982,
		34.330631, 37.027508, 27.414837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.383083, 37.336212, 27.457380>,  <33.765865, 36.725727, 27.697624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.383083, 37.336212, 27.457380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.753693, 37.368378, 27.310362>,  <33.976059, 37.387676, 27.222151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.753693, 37.368378, 27.310362>,  <33.383083, 37.336212, 27.457380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.753693, 37.368378, 27.310362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322529, 0.672772, -0.665848,
		0.193730, 0.735467, 0.649274,
		0.926522, 0.080415, -0.367546,
		34.031651, 37.392502, 27.200098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.539227, 38.041443, 27.347549>,  <33.383083, 37.336212, 27.457380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.539227, 38.041443, 27.347549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.760712, 37.825905, 27.093607>,  <33.893604, 37.696583, 26.941242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.760712, 37.825905, 27.093607>,  <33.539227, 38.041443, 27.347549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.760712, 37.825905, 27.093607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435870, 0.462061, -0.772345,
		0.709518, 0.704376, 0.020984,
		0.553717, -0.538846, -0.634857,
		33.926826, 37.664249, 26.903151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.782673, 38.549473, 26.888300>,  <33.539227, 38.041443, 27.347549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.782673, 38.549473, 26.888300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.830467, 38.215141, 26.673971>,  <33.859142, 38.014542, 26.545374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.830467, 38.215141, 26.673971>,  <33.782673, 38.549473, 26.888300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.830467, 38.215141, 26.673971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496809, 0.416928, -0.761151,
		0.859595, 0.357149, -0.365432,
		0.119486, -0.835832, -0.535824,
		33.866314, 37.964390, 26.513224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.983570, 38.780811, 26.208258>,  <33.782673, 38.549473, 26.888300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.983570, 38.780811, 26.208258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.878796, 38.398674, 26.153536>,  <33.815933, 38.169392, 26.120703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.878796, 38.398674, 26.153536>,  <33.983570, 38.780811, 26.208258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.878796, 38.398674, 26.153536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331875, 0.222273, -0.916763,
		0.906229, -0.194727, -0.375274,
		-0.261932, -0.955341, -0.136806,
		33.800217, 38.112072, 26.112494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.264786, 38.677826, 25.475178>,  <33.983570, 38.780811, 26.208258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.264786, 38.677826, 25.475178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.993526, 38.403347, 25.580437>,  <33.830772, 38.238659, 25.643593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.993526, 38.403347, 25.580437>,  <34.264786, 38.677826, 25.475178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.993526, 38.403347, 25.580437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490436, 0.155867, -0.857425,
		0.547350, -0.710517, -0.442238,
		-0.678145, -0.686201, 0.263149,
		33.790081, 38.197487, 25.659382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.033058, 38.247093, 24.819044>,  <34.264786, 38.677826, 25.475178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.033058, 38.247093, 24.819044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.734344, 38.242950, 25.085039>,  <33.555119, 38.240463, 25.244637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.734344, 38.242950, 25.085039>,  <34.033058, 38.247093, 24.819044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.734344, 38.242950, 25.085039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644863, 0.255881, -0.720192,
		-0.162697, -0.966653, -0.197767,
		-0.746780, -0.010360, 0.664990,
		33.510311, 38.239841, 25.284536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.549419, 37.775959, 24.568548>,  <34.033058, 38.247093, 24.819044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.549419, 37.775959, 24.568548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.339909, 38.005955, 24.819960>,  <33.214203, 38.143951, 24.970806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.339909, 38.005955, 24.819960>,  <33.549419, 37.775959, 24.568548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.339909, 38.005955, 24.819960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623279, 0.244276, -0.742868,
		-0.580676, -0.780843, 0.230434,
		-0.523774, 0.574990, 0.628528,
		33.182777, 38.178452, 25.008518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.836189, 37.597294, 24.436546>,  <33.549419, 37.775959, 24.568548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.836189, 37.597294, 24.436546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.826420, 37.946331, 24.631683>,  <32.820557, 38.155754, 24.748766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.826420, 37.946331, 24.631683>,  <32.836189, 37.597294, 24.436546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.826420, 37.946331, 24.631683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619444, 0.369809, -0.692481,
		-0.784661, -0.319103, 0.531489,
		-0.024423, 0.872590, 0.487841,
		32.819092, 38.208107, 24.778036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.114471, 37.725193, 24.692455>,  <32.836189, 37.597294, 24.436546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.114471, 37.725193, 24.692455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.294842, 38.079056, 24.645056>,  <32.403065, 38.291374, 24.616615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.294842, 38.079056, 24.645056>,  <32.114471, 37.725193, 24.692455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.294842, 38.079056, 24.645056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730145, 0.289243, -0.619053,
		-0.513377, 0.365669, 0.776357,
		0.450924, 0.884661, -0.118501,
		32.430119, 38.344456, 24.609505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.584436, 38.211075, 24.658285>,  <32.114471, 37.725193, 24.692455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.584436, 38.211075, 24.658285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.908598, 38.388214, 24.504854>,  <32.103096, 38.494499, 24.412796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.908598, 38.388214, 24.504854>,  <31.584436, 38.211075, 24.658285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.908598, 38.388214, 24.504854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548514, 0.343451, -0.762348,
		-0.205866, 0.828206, 0.521243,
		0.810402, 0.442850, -0.383578,
		32.151718, 38.521069, 24.389780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.306818, 38.850586, 24.482977>,  <31.584436, 38.211075, 24.658285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.306818, 38.850586, 24.482977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.645922, 38.830906, 24.271740>,  <31.849384, 38.819096, 24.144999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.645922, 38.830906, 24.271740>,  <31.306818, 38.850586, 24.482977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.645922, 38.830906, 24.271740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478288, 0.359404, -0.801293,
		0.229225, 0.931884, 0.281155,
		0.847760, -0.049203, -0.528093,
		31.900249, 38.816147, 24.113312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.304016, 39.450638, 24.067898>,  <31.306818, 38.850586, 24.482977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.304016, 39.450638, 24.067898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.580215, 39.216404, 23.898048>,  <31.745935, 39.075863, 23.796139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.580215, 39.216404, 23.898048>,  <31.304016, 39.450638, 24.067898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.580215, 39.216404, 23.898048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281942, 0.322722, -0.903526,
		0.666124, 0.743603, 0.057739,
		0.690498, -0.585581, -0.424625,
		31.787365, 39.040730, 23.770660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.719620, 39.966648, 23.649986>,  <31.304016, 39.450638, 24.067898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.719620, 39.966648, 23.649986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.770226, 39.604362, 23.488161>,  <31.800589, 39.386990, 23.391066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.770226, 39.604362, 23.488161>,  <31.719620, 39.966648, 23.649986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.770226, 39.604362, 23.488161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204310, 0.375306, -0.904104,
		0.970696, 0.197038, -0.137566,
		0.126513, -0.905716, -0.404565,
		31.808180, 39.332649, 23.366791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.092846, 40.068008, 22.967886>,  <31.719620, 39.966648, 23.649986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.092846, 40.068008, 22.967886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.933441, 39.704102, 22.921396>,  <31.837799, 39.485756, 22.893503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.933441, 39.704102, 22.921396>,  <32.092846, 40.068008, 22.967886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.933441, 39.704102, 22.921396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036221, 0.142232, -0.989170,
		0.916449, -0.389984, -0.089633,
		-0.398509, -0.909771, -0.116223,
		31.813889, 39.431171, 22.886530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.310837, 39.707764, 22.361023>,  <32.092846, 40.068008, 22.967886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.310837, 39.707764, 22.361023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.986406, 39.481941, 22.422266>,  <31.791748, 39.346447, 22.459011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.986406, 39.481941, 22.422266>,  <32.310837, 39.707764, 22.361023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.986406, 39.481941, 22.422266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275273, 0.137430, -0.951492,
		0.516126, -0.813876, -0.266872,
		-0.811073, -0.564552, 0.153107,
		31.743084, 39.312576, 22.468199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.652462, 40.199509, 21.912825>,  <32.310837, 39.707764, 22.361023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.652462, 40.199509, 21.912825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.937614, 40.331203, 21.665146>,  <33.108704, 40.410221, 21.516539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.937614, 40.331203, 21.665146>,  <32.652462, 40.199509, 21.912825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.937614, 40.331203, 21.665146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637037, -0.673215, 0.375453,
		-0.293238, -0.662104, -0.689659,
		0.712878, 0.329242, -0.619197,
		33.151478, 40.429977, 21.479387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.921913, 39.521648, 21.640490>,  <32.652462, 40.199509, 21.912825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.921913, 39.521648, 21.640490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.180290, 39.822796, 21.589983>,  <33.335316, 40.003487, 21.559679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.180290, 39.822796, 21.589983>,  <32.921913, 39.521648, 21.640490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.180290, 39.822796, 21.589983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763056, -0.631895, 0.135843,
		0.022484, -0.184096, -0.982651,
		0.645941, 0.752872, -0.126269,
		33.374073, 40.048656, 21.552103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.578827, 39.275471, 21.132597>,  <32.921913, 39.521648, 21.640490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.578827, 39.275471, 21.132597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.681683, 39.585232, 21.363831>,  <33.743397, 39.771088, 21.502571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.681683, 39.585232, 21.363831>,  <33.578827, 39.275471, 21.132597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.681683, 39.585232, 21.363831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712264, -0.556164, 0.428207,
		0.653114, 0.301640, -0.694590,
		0.257142, 0.774399, 0.578086,
		33.758823, 39.817551, 21.537256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.342812, 39.302155, 21.181309>,  <33.578827, 39.275471, 21.132597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.342812, 39.302155, 21.181309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.236622, 39.499317, 21.512747>,  <34.172909, 39.617615, 21.711609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.236622, 39.499317, 21.512747>,  <34.342812, 39.302155, 21.181309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.236622, 39.499317, 21.512747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812170, -0.348776, 0.467692,
		0.519521, 0.797121, -0.307729,
		-0.265478, 0.492903, 0.828594,
		34.156979, 39.647186, 21.761326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.908119, 39.360176, 21.513002>,  <34.342812, 39.302155, 21.181309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.908119, 39.360176, 21.513002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.668571, 39.452625, 21.819712>,  <34.524845, 39.508095, 22.003738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.668571, 39.452625, 21.819712>,  <34.908119, 39.360176, 21.513002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.668571, 39.452625, 21.819712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662852, -0.394266, 0.636539,
		0.449430, 0.889459, 0.082913,
		-0.598865, 0.231121, 0.766775,
		34.488911, 39.521961, 22.049744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.323662, 39.687115, 21.960964>,  <34.908119, 39.360176, 21.513002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.323662, 39.687115, 21.960964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.023090, 39.568069, 22.196518>,  <34.842747, 39.496643, 22.337851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.023090, 39.568069, 22.196518>,  <35.323662, 39.687115, 21.960964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.023090, 39.568069, 22.196518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658781, -0.388436, 0.644302,
		0.036989, 0.872090, 0.487945,
		-0.751425, -0.297616, 0.588884,
		34.797665, 39.478786, 22.373182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.308388, 39.998566, 22.657240>,  <35.323662, 39.687115, 21.960964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.308388, 39.998566, 22.657240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.101871, 39.659885, 22.708694>,  <34.977962, 39.456676, 22.739567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.101871, 39.659885, 22.708694>,  <35.308388, 39.998566, 22.657240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.101871, 39.659885, 22.708694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709108, -0.338413, 0.618581,
		-0.480220, 0.410582, 0.775120,
		-0.516289, -0.846699, 0.128634,
		34.946983, 39.405876, 22.747284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.323235, 39.942955, 23.441294>,  <35.308388, 39.998566, 22.657240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.323235, 39.942955, 23.441294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.201332, 39.583382, 23.315413>,  <35.128193, 39.367638, 23.239883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.201332, 39.583382, 23.315413>,  <35.323235, 39.942955, 23.441294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.201332, 39.583382, 23.315413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507220, -0.432850, 0.745231,
		-0.806135, 0.067487, 0.587871,
		-0.304754, -0.898936, -0.314704,
		35.109905, 39.313702, 23.221001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.343681, 39.511333, 24.025974>,  <35.323235, 39.942955, 23.441294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.343681, 39.511333, 24.025974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.292564, 39.220390, 23.756275>,  <35.261894, 39.045822, 23.594456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.292564, 39.220390, 23.756275>,  <35.343681, 39.511333, 24.025974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.292564, 39.220390, 23.756275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407995, -0.658192, 0.632711,
		-0.903996, -0.194236, 0.380872,
		-0.127792, -0.727362, -0.674250,
		35.254227, 39.002182, 23.554001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.980057, 38.965614, 24.394817>,  <35.343681, 39.511333, 24.025974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.980057, 38.965614, 24.394817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.190727, 38.807034, 24.094034>,  <35.317127, 38.711884, 23.913565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.190727, 38.807034, 24.094034>,  <34.980057, 38.965614, 24.394817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.190727, 38.807034, 24.094034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325424, -0.723167, 0.609203,
		-0.785312, -0.565556, -0.251856,
		0.526672, -0.396455, -0.751958,
		35.348728, 38.688099, 23.868446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.936424, 38.324375, 24.603529>,  <34.980057, 38.965614, 24.394817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.936424, 38.324375, 24.603529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.230839, 38.341164, 24.333273>,  <35.407486, 38.351238, 24.171120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.230839, 38.341164, 24.333273>,  <34.936424, 38.324375, 24.603529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.230839, 38.341164, 24.333273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552270, -0.614416, 0.563464,
		-0.391475, -0.787865, -0.475412,
		0.736034, 0.041974, -0.675642,
		35.451649, 38.353756, 24.130581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.136669, 37.620991, 24.607594>,  <34.936424, 38.324375, 24.603529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.136669, 37.620991, 24.607594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.431179, 37.855583, 24.472574>,  <35.607883, 37.996338, 24.391562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.431179, 37.855583, 24.472574>,  <35.136669, 37.620991, 24.607594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.431179, 37.855583, 24.472574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653970, -0.488550, 0.577618,
		0.173853, -0.646033, -0.743248,
		0.736274, 0.586482, -0.337550,
		35.652061, 38.031528, 24.371309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.562119, 37.148430, 24.423401>,  <35.136669, 37.620991, 24.607594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.562119, 37.148430, 24.423401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.769894, 37.486179, 24.475887>,  <35.894558, 37.688828, 24.507380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.769894, 37.486179, 24.475887>,  <35.562119, 37.148430, 24.423401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.769894, 37.486179, 24.475887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682342, -0.502301, 0.531134,
		0.514383, -0.186360, -0.837066,
		0.519442, 0.844371, 0.131214,
		35.925728, 37.739491, 24.515251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.348942, 37.018078, 24.231358>,  <35.562119, 37.148430, 24.423401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.348942, 37.018078, 24.231358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.342232, 37.336159, 24.473804>,  <36.338203, 37.527008, 24.619272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.342232, 37.336159, 24.473804>,  <36.348942, 37.018078, 24.231358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.342232, 37.336159, 24.473804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819081, -0.336735, 0.464452,
		0.573432, 0.504252, -0.645682,
		-0.016777, 0.795198, 0.606118,
		36.337200, 37.574718, 24.655640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.059223, 37.184875, 24.288054>,  <36.348942, 37.018078, 24.231358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.059223, 37.184875, 24.288054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.863983, 37.392731, 24.568548>,  <36.746838, 37.517445, 24.736845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.863983, 37.392731, 24.568548>,  <37.059223, 37.184875, 24.288054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.863983, 37.392731, 24.568548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642737, -0.329543, 0.691586,
		0.590464, 0.788273, -0.173143,
		-0.488100, 0.519642, 0.701235,
		36.717552, 37.548622, 24.778919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.479378, 37.630493, 24.678673>,  <37.059223, 37.184875, 24.288054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.479378, 37.630493, 24.678673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.185047, 37.532867, 24.931335>,  <37.008450, 37.474293, 25.082933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.185047, 37.532867, 24.931335>,  <37.479378, 37.630493, 24.678673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.185047, 37.532867, 24.931335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676428, -0.221295, 0.702476,
		-0.031666, 0.944172, 0.327926,
		-0.735827, -0.244064, 0.631658,
		36.964298, 37.459648, 25.120832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.672539, 37.828873, 25.353239>,  <37.479378, 37.630493, 24.678673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.672539, 37.828873, 25.353239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.385197, 37.561527, 25.430452>,  <37.212791, 37.401119, 25.476780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.385197, 37.561527, 25.430452>,  <37.672539, 37.828873, 25.353239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.385197, 37.561527, 25.430452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510703, -0.318232, 0.798693,
		-0.472385, 0.672328, 0.569937,
		-0.718356, -0.668359, 0.193032,
		37.169689, 37.361019, 25.488361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.418591, 37.906658, 26.069603>,  <37.672539, 37.828873, 25.353239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.418591, 37.906658, 26.069603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.298023, 37.540752, 25.962008>,  <37.225685, 37.321209, 25.897451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.298023, 37.540752, 25.962008>,  <37.418591, 37.906658, 26.069603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.298023, 37.540752, 25.962008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350952, -0.368738, 0.860735,
		-0.886557, 0.165036, 0.432181,
		-0.301414, -0.914765, -0.268987,
		37.207600, 37.266323, 25.881311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.284470, 37.585125, 26.713423>,  <37.418591, 37.906658, 26.069603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.284470, 37.585125, 26.713423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.261147, 37.242527, 26.508284>,  <37.247150, 37.036968, 26.385201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.261147, 37.242527, 26.508284>,  <37.284470, 37.585125, 26.713423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.261147, 37.242527, 26.508284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385888, -0.493126, 0.779690,
		-0.920701, -0.152438, 0.359267,
		-0.058310, -0.856498, -0.512846,
		37.243652, 36.985577, 26.354429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.052368, 37.023277, 27.125584>,  <37.284470, 37.585125, 26.713423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.052368, 37.023277, 27.125584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.203781, 36.823654, 26.813776>,  <37.294628, 36.703880, 26.626692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.203781, 36.823654, 26.813776>,  <37.052368, 37.023277, 27.125584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.203781, 36.823654, 26.813776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416764, -0.660084, 0.624977,
		-0.826450, -0.561451, -0.041874,
		0.378534, -0.499061, -0.779519,
		37.317341, 36.673935, 26.579920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.766922, 36.325249, 27.169970>,  <37.052368, 37.023277, 27.125584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.766922, 36.325249, 27.169970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.105618, 36.308262, 26.957844>,  <37.308834, 36.298069, 26.830568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.105618, 36.308262, 26.957844>,  <36.766922, 36.325249, 27.169970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.105618, 36.308262, 26.957844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367428, -0.674214, 0.640651,
		-0.384754, -0.737314, -0.555276,
		0.846736, -0.042469, -0.530316,
		37.359638, 36.295521, 26.798748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.940075, 35.630852, 27.079165>,  <36.766922, 36.325249, 27.169970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.940075, 35.630852, 27.079165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.282383, 35.825737, 27.009558>,  <37.487766, 35.942669, 26.967793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.282383, 35.825737, 27.009558>,  <36.940075, 35.630852, 27.079165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.282383, 35.825737, 27.009558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468734, -0.587807, 0.659372,
		0.218965, -0.645839, -0.731400,
		0.855770, 0.487211, -0.174018,
		37.539116, 35.971901, 26.957352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.381119, 35.052731, 27.149080>,  <36.940075, 35.630852, 27.079165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.381119, 35.052731, 27.149080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.616264, 35.374981, 27.178429>,  <37.757351, 35.568333, 27.196037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.616264, 35.374981, 27.178429>,  <37.381119, 35.052731, 27.149080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.616264, 35.374981, 27.178429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640560, -0.518961, 0.566006,
		0.494067, -0.285733, -0.821130,
		0.587860, 0.805628, 0.073372,
		37.792622, 35.616669, 27.200439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.058922, 34.764709, 27.161736>,  <37.381119, 35.052731, 27.149080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.058922, 34.764709, 27.161736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.071854, 35.132286, 27.318960>,  <38.079613, 35.352833, 27.413296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.071854, 35.132286, 27.318960>,  <38.058922, 34.764709, 27.161736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.071854, 35.132286, 27.318960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718547, -0.294730, 0.629940,
		0.694726, 0.262066, -0.669834,
		0.032334, 0.918943, 0.393063,
		38.081554, 35.407970, 27.436878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.716251, 34.829056, 27.370012>,  <38.058922, 34.764709, 27.161736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.716251, 34.829056, 27.370012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.597652, 35.164497, 27.552803>,  <38.526493, 35.365761, 27.662477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.597652, 35.164497, 27.552803>,  <38.716251, 34.829056, 27.370012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.597652, 35.164497, 27.552803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730541, -0.109045, 0.674106,
		0.615139, 0.533715, -0.580303,
		-0.296502, 0.838604, 0.456979,
		38.508701, 35.416080, 27.689896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.229744, 35.374756, 27.437675>,  <38.716251, 34.829056, 27.370012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.229744, 35.374756, 27.437675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.984993, 35.424366, 27.750143>,  <38.838142, 35.454132, 27.937624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.984993, 35.424366, 27.750143>,  <39.229744, 35.374756, 27.437675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.984993, 35.424366, 27.750143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780985, -0.061554, 0.621510,
		0.125165, 0.990368, -0.059196,
		-0.611880, 0.124022, 0.781167,
		38.801430, 35.461575, 27.984493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.522522, 35.924187, 27.923044>,  <39.229744, 35.374756, 27.437675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.522522, 35.924187, 27.923044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.276321, 35.687759, 28.131582>,  <39.128601, 35.545902, 28.256704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.276321, 35.687759, 28.131582>,  <39.522522, 35.924187, 27.923044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.276321, 35.687759, 28.131582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724999, -0.165197, 0.668645,
		-0.309089, 0.789525, 0.530201,
		-0.615500, -0.591067, 0.521344,
		39.091671, 35.510441, 28.287985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.883499, 35.910728, 28.480589>,  <39.522522, 35.924187, 27.923044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.883499, 35.910728, 28.480589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.627205, 35.610954, 28.547277>,  <39.473427, 35.431087, 28.587292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.627205, 35.610954, 28.547277>,  <39.883499, 35.910728, 28.480589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.627205, 35.610954, 28.547277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744826, -0.554089, 0.371779,
		-0.186245, 0.362394, 0.913227,
		-0.640740, -0.749437, 0.166724,
		39.434982, 35.386124, 28.597294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.830009, 35.738621, 29.148571>,  <39.883499, 35.910728, 28.480589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.830009, 35.738621, 29.148571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.739391, 35.385578, 28.983803>,  <39.685020, 35.173752, 28.884941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.739391, 35.385578, 28.983803>,  <39.830009, 35.738621, 29.148571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.739391, 35.385578, 28.983803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724843, -0.435266, 0.533992,
		-0.650601, -0.177607, 0.738359,
		-0.226541, -0.882610, -0.411922,
		39.671429, 35.120796, 28.860226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.981976, 35.275127, 29.661097>,  <39.830009, 35.738621, 29.148571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.981976, 35.275127, 29.661097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.927837, 35.016739, 29.360588>,  <39.895355, 34.861706, 29.180283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.927837, 35.016739, 29.360588>,  <39.981976, 35.275127, 29.661097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.927837, 35.016739, 29.360588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656932, -0.626124, 0.420010,
		-0.741701, -0.436685, 0.509103,
		-0.135349, -0.645968, -0.751269,
		39.887234, 34.822948, 29.135208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.859112, 34.613617, 30.027103>,  <39.981976, 35.275127, 29.661097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.859112, 34.613617, 30.027103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.000927, 34.556656, 29.657450>,  <40.086014, 34.522480, 29.435658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.000927, 34.556656, 29.657450>,  <39.859112, 34.613617, 30.027103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.000927, 34.556656, 29.657450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581197, -0.740657, 0.337102,
		-0.732471, -0.656619, -0.179828,
		0.354538, -0.142402, -0.924135,
		40.107288, 34.513935, 29.380209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.934315, 33.843258, 29.929729>,  <39.859112, 34.613617, 30.027103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.934315, 33.843258, 29.929729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.140255, 33.990932, 29.620243>,  <40.263821, 34.079536, 29.434551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.140255, 33.990932, 29.620243>,  <39.934315, 33.843258, 29.929729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.140255, 33.990932, 29.620243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748608, -0.633407, 0.195910,
		-0.417750, -0.680073, -0.602482,
		0.514850, 0.369182, -0.773715,
		40.294708, 34.101688, 29.388128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.180817, 33.269176, 29.425596>,  <39.934315, 33.843258, 29.929729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.180817, 33.269176, 29.425596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.435635, 33.571182, 29.363461>,  <40.588524, 33.752384, 29.326180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.435635, 33.571182, 29.363461>,  <40.180817, 33.269176, 29.425596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.435635, 33.571182, 29.363461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767118, -0.640717, 0.031808,
		-0.075514, -0.139427, -0.987349,
		0.637046, 0.755011, -0.155340,
		40.626747, 33.797684, 29.316858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.748219, 33.037586, 28.992893>,  <40.180817, 33.269176, 29.425596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.748219, 33.037586, 28.992893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.904358, 33.382736, 29.121317>,  <40.998039, 33.589825, 29.198370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.904358, 33.382736, 29.121317>,  <40.748219, 33.037586, 28.992893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.904358, 33.382736, 29.121317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920361, -0.374729, -0.111868,
		0.023781, 0.339156, -0.940430,
		0.390347, 0.862874, 0.321057,
		41.021461, 33.641598, 29.217634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.318501, 33.324265, 28.509861>,  <40.748219, 33.037586, 28.992893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.318501, 33.324265, 28.509861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.379894, 33.450924, 28.884277>,  <41.416733, 33.526920, 29.108927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.379894, 33.450924, 28.884277>,  <41.318501, 33.324265, 28.509861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.379894, 33.450924, 28.884277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973024, -0.213544, -0.087312,
		0.172238, 0.924192, -0.340887,
		0.153487, 0.316653, 0.936041,
		41.425941, 33.545921, 29.165091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.963722, 33.518730, 28.427074>,  <41.318501, 33.324265, 28.509861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.963722, 33.518730, 28.427074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.914131, 33.508171, 28.823849>,  <41.884377, 33.501835, 29.061913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.914131, 33.508171, 28.823849>,  <41.963722, 33.518730, 28.427074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.914131, 33.508171, 28.823849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915170, -0.389416, 0.104016,
		0.383530, 0.920684, 0.072436,
		-0.123974, -0.026398, 0.991934,
		41.876938, 33.500252, 29.121429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.685017, 33.700222, 28.718273>,  <41.963722, 33.518730, 28.427074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.685017, 33.700222, 28.718273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.476421, 33.505783, 28.998775>,  <42.351265, 33.389118, 29.167076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.476421, 33.505783, 28.998775>,  <42.685017, 33.700222, 28.718273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.476421, 33.505783, 28.998775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838337, -0.444932, 0.315004,
		0.158887, 0.752159, 0.639540,
		-0.521485, -0.486100, 0.701256,
		42.319977, 33.359955, 29.209152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.131779, 33.701611, 29.256382>,  <42.685017, 33.700222, 28.718273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.131779, 33.701611, 29.256382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.858849, 33.421062, 29.338865>,  <42.695091, 33.252735, 29.388355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.858849, 33.421062, 29.338865>,  <43.131779, 33.701611, 29.256382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.858849, 33.421062, 29.338865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711224, -0.571609, 0.409174,
		-0.169112, 0.425847, 0.888850,
		-0.682321, -0.701368, 0.206207,
		42.654152, 33.210651, 29.400728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.258953, 33.510433, 29.893265>,  <43.131779, 33.701611, 29.256382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.258953, 33.510433, 29.893265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.070702, 33.198784, 29.727627>,  <42.957752, 33.011795, 29.628244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.070702, 33.198784, 29.727627>,  <43.258953, 33.510433, 29.893265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.070702, 33.198784, 29.727627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561544, -0.626486, 0.540540,
		-0.680573, 0.021860, 0.732354,
		-0.470626, -0.779126, -0.414094,
		42.929512, 32.965046, 29.603399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.114944, 33.085522, 30.491032>,  <43.258953, 33.510433, 29.893265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.114944, 33.085522, 30.491032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.110306, 32.861546, 30.159651>,  <43.107521, 32.727161, 29.960821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.110306, 32.861546, 30.159651>,  <43.114944, 33.085522, 30.491032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.110306, 32.861546, 30.159651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527282, -0.707383, 0.470725,
		-0.849611, -0.431369, 0.303450,
		-0.011599, -0.559937, -0.828454,
		43.106827, 32.693565, 29.911114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.815613, 32.349140, 30.585302>,  <43.114944, 33.085522, 30.491032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.815613, 32.349140, 30.585302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.081951, 32.389519, 30.289610>,  <43.241753, 32.413746, 30.112194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.081951, 32.389519, 30.289610>,  <42.815613, 32.349140, 30.585302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.081951, 32.389519, 30.289610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622843, -0.620689, 0.476248,
		-0.410758, -0.777532, -0.476154,
		0.665842, 0.100946, -0.739233,
		43.281704, 32.419804, 30.067841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.005478, 31.642258, 30.265396>,  <42.815613, 32.349140, 30.585302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.005478, 31.642258, 30.265396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.281551, 31.931501, 30.276382>,  <43.447197, 32.105049, 30.282974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.281551, 31.931501, 30.276382>,  <43.005478, 31.642258, 30.265396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.281551, 31.931501, 30.276382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600382, -0.593409, 0.536104,
		0.403961, -0.353521, -0.843705,
		0.690186, 0.723111, 0.027466,
		43.488605, 32.148434, 30.284622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.620266, 31.271862, 30.165825>,  <43.005478, 31.642258, 30.265396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.620266, 31.271862, 30.165825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.706993, 31.625904, 30.330544>,  <43.759029, 31.838329, 30.429375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.706993, 31.625904, 30.330544>,  <43.620266, 31.271862, 30.165825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.706993, 31.625904, 30.330544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822837, -0.392681, 0.410782,
		0.525290, 0.249775, -0.813439,
		0.216819, 0.885107, 0.411795,
		43.772038, 31.891436, 30.454082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.853806, 30.612492, 30.157385>,  <43.620266, 31.271862, 30.165825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.853806, 30.612492, 30.157385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.849228, 30.319763, 29.884825>,  <43.846481, 30.144125, 29.721289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.849228, 30.319763, 29.884825>,  <43.853806, 30.612492, 30.157385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.849228, 30.319763, 29.884825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432755, -0.617945, 0.656404,
		-0.901439, -0.287364, 0.323774,
		-0.011447, -0.731823, -0.681398,
		43.845795, 30.100216, 29.680405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.543430, 29.989931, 30.504202>,  <43.853806, 30.612492, 30.157385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.543430, 29.989931, 30.504202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.795109, 29.898663, 30.207003>,  <43.946117, 29.843903, 30.028683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.795109, 29.898663, 30.207003>,  <43.543430, 29.989931, 30.504202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.795109, 29.898663, 30.207003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565185, -0.521902, 0.638893,
		-0.533550, -0.821922, -0.199421,
		0.629199, -0.228172, -0.742999,
		43.983868, 29.830212, 29.984102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.702408, 29.248871, 30.193001>,  <43.543430, 29.989931, 30.504202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.702408, 29.248871, 30.193001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.029514, 29.477627, 30.167084>,  <44.225777, 29.614882, 30.151533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.029514, 29.477627, 30.167084>,  <43.702408, 29.248871, 30.193001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.029514, 29.477627, 30.167084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426964, -0.527301, 0.734613,
		0.385954, -0.628405, -0.675386,
		0.817766, 0.571892, -0.064792,
		44.274845, 29.649195, 30.147646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.274597, 28.824217, 30.436136>,  <43.702408, 29.248871, 30.193001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.274597, 28.824217, 30.436136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.431988, 29.191292, 30.458126>,  <44.526424, 29.411537, 30.471319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.431988, 29.191292, 30.458126>,  <44.274597, 28.824217, 30.436136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.431988, 29.191292, 30.458126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717501, -0.343930, 0.605726,
		0.574774, -0.198898, -0.793772,
		0.393480, 0.917688, 0.054973,
		44.550034, 29.466599, 30.474617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.892292, 28.774027, 30.332693>,  <44.274597, 28.824217, 30.436136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.892292, 28.774027, 30.332693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.790356, 29.065147, 30.587364>,  <44.729195, 29.239820, 30.740168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.790356, 29.065147, 30.587364>,  <44.892292, 28.774027, 30.332693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.790356, 29.065147, 30.587364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561798, -0.424461, 0.710082,
		0.787044, 0.538644, -0.300707,
		-0.254842, 0.727802, 0.636678,
		44.713902, 29.283487, 30.778368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.537239, 29.261093, 30.621334>,  <44.892292, 28.774027, 30.332693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.537239, 29.261093, 30.621334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.234459, 29.206400, 30.876936>,  <45.052792, 29.173584, 31.030296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.234459, 29.206400, 30.876936>,  <45.537239, 29.261093, 30.621334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.234459, 29.206400, 30.876936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624129, -0.440997, 0.644969,
		0.193612, 0.887032, 0.419152,
		-0.756953, -0.136731, 0.639005,
		45.007374, 29.165380, 31.068638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.672752, 29.450377, 31.391628>,  <45.537239, 29.261093, 30.621334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.672752, 29.450377, 31.391628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.377224, 29.180826, 31.394014>,  <45.199909, 29.019096, 31.395445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.377224, 29.180826, 31.394014>,  <45.672752, 29.450377, 31.391628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.377224, 29.180826, 31.394014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487962, -0.528840, 0.694422,
		-0.464801, 0.515962, 0.719544,
		-0.738819, -0.673877, 0.005964,
		45.155579, 28.978662, 31.395803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.260887, 29.354874, 32.042053>,  <45.672752, 29.450377, 31.391628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.260887, 29.354874, 32.042053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.379177, 29.059315, 31.799871>,  <45.450150, 28.881979, 31.654562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.379177, 29.059315, 31.799871>,  <45.260887, 29.354874, 32.042053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.379177, 29.059315, 31.799871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341749, -0.510025, 0.789356,
		-0.892052, -0.440343, 0.101692,
		0.295722, -0.738899, -0.605455,
		45.467896, 28.837645, 31.618235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.018002, 28.645630, 32.226940>,  <45.260887, 29.354874, 32.042053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.018002, 28.645630, 32.226940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.371906, 28.639204, 32.040634>,  <45.584248, 28.635349, 31.928850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.371906, 28.639204, 32.040634>,  <45.018002, 28.645630, 32.226940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.371906, 28.639204, 32.040634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376574, -0.564166, 0.734785,
		-0.274575, -0.825505, -0.493102,
		0.884760, -0.016064, -0.465769,
		45.637333, 28.634384, 31.900904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.731075, 28.325914, 31.569862>,  <45.018002, 28.645630, 32.226940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.731075, 28.325914, 31.569862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.606358, 28.671183, 31.728718>,  <44.531525, 28.878344, 31.824032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.606358, 28.671183, 31.728718>,  <44.731075, 28.325914, 31.569862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.606358, 28.671183, 31.728718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495897, -0.504367, 0.706895,
		0.810475, 0.023467, 0.585303,
		-0.311796, 0.863170, 0.397140,
		44.512817, 28.930134, 31.847860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.030285, 28.036966, 31.330511>,  <44.731075, 28.325914, 31.569862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.030285, 28.036966, 31.330511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.852215, 27.733309, 31.140556>,  <43.745373, 27.551113, 31.026585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.852215, 27.733309, 31.140556>,  <44.030285, 28.036966, 31.330511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.852215, 27.733309, 31.140556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854049, 0.519350, -0.029604,
		0.269105, 0.392396, -0.879550,
		-0.445177, -0.759145, -0.474885,
		43.718662, 27.505566, 30.998091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.863838, 28.182932, 30.645456>,  <44.030285, 28.036966, 31.330511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.863838, 28.182932, 30.645456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.597824, 27.927742, 30.800747>,  <43.438217, 27.774628, 30.893921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.597824, 27.927742, 30.800747>,  <43.863838, 28.182932, 30.645456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.597824, 27.927742, 30.800747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705897, 0.706694, -0.047888,
		-0.243805, -0.305894, -0.920319,
		-0.665033, -0.637975, 0.388225,
		43.398315, 27.736349, 30.917215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.314747, 28.021788, 30.193039>,  <43.863838, 28.182932, 30.645456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.314747, 28.021788, 30.193039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.193962, 28.001978, 30.573853>,  <43.121490, 27.990093, 30.802340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.193962, 28.001978, 30.573853>,  <43.314747, 28.021788, 30.193039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.193962, 28.001978, 30.573853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708931, 0.679338, -0.189517,
		-0.637367, -0.732152, -0.240242,
		-0.301961, -0.049523, 0.952033,
		43.103374, 27.987122, 30.859463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.582134, 27.962048, 30.253984>,  <43.314747, 28.021788, 30.193039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.582134, 27.962048, 30.253984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.672169, 28.136517, 30.602488>,  <42.726189, 28.241198, 30.811590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.672169, 28.136517, 30.602488>,  <42.582134, 27.962048, 30.253984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.672169, 28.136517, 30.602488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798073, 0.595505, -0.091940,
		-0.558940, -0.674632, 0.482138,
		0.225090, 0.436171, 0.871257,
		42.739697, 28.267368, 30.863865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.994179, 27.858162, 30.676859>,  <42.582134, 27.962048, 30.253984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.994179, 27.858162, 30.676859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.179794, 28.198509, 30.775400>,  <42.291164, 28.402718, 30.834524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.179794, 28.198509, 30.775400>,  <41.994179, 27.858162, 30.676859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.179794, 28.198509, 30.775400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883227, 0.465672, 0.055317,
		-0.067652, -0.243256, 0.967600,
		0.464041, 0.850868, 0.246354,
		42.319008, 28.453770, 30.849306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.594830, 28.270985, 31.281639>,  <41.994179, 27.858162, 30.676859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.594830, 28.270985, 31.281639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.793884, 28.511765, 31.031836>,  <41.913319, 28.656233, 30.881954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.793884, 28.511765, 31.031836>,  <41.594830, 28.270985, 31.281639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.793884, 28.511765, 31.031836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837476, 0.520879, -0.165282,
		0.225801, 0.605261, 0.763330,
		0.497642, 0.601950, -0.624507,
		41.943176, 28.692350, 30.844484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.694336, 29.013010, 31.564117>,  <41.594830, 28.270985, 31.281639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.694336, 29.013010, 31.564117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.644127, 28.964802, 31.170221>,  <41.614002, 28.935877, 30.933884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.644127, 28.964802, 31.170221>,  <41.694336, 29.013010, 31.564117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.644127, 28.964802, 31.170221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829146, 0.557778, 0.037426,
		0.544757, 0.821193, -0.169946,
		-0.125526, -0.120522, -0.984743,
		41.606468, 28.928646, 30.874798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.552261, 29.664190, 31.234579>,  <41.694336, 29.013010, 31.564117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.552261, 29.664190, 31.234579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.383591, 29.365559, 31.028740>,  <41.282387, 29.186380, 30.905235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.383591, 29.365559, 31.028740>,  <41.552261, 29.664190, 31.234579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.383591, 29.365559, 31.028740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835929, 0.539950, -0.098375,
		0.351302, 0.388686, -0.851769,
		-0.421675, -0.746577, -0.514600,
		41.257088, 29.141586, 30.874359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.058945, 30.009806, 30.742001>,  <41.552261, 29.664190, 31.234579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.058945, 30.009806, 30.742001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.968845, 29.620094, 30.739395>,  <40.914787, 29.386267, 30.737831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.968845, 29.620094, 30.739395>,  <41.058945, 30.009806, 30.742001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.968845, 29.620094, 30.739395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.974216, 0.225309, -0.011761,
		0.012926, 0.003696, -0.999910,
		-0.225245, -0.974281, -0.006514,
		40.901272, 29.327810, 30.737440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.439137, 29.821589, 30.360533>,  <41.058945, 30.009806, 30.742001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.439137, 29.821589, 30.360533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.458111, 29.464905, 30.540579>,  <40.469494, 29.250895, 30.648605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.458111, 29.464905, 30.540579>,  <40.439137, 29.821589, 30.360533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.458111, 29.464905, 30.540579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.985419, 0.031937, 0.167121,
		-0.163399, -0.451478, -0.877194,
		0.047436, -0.891711, 0.450113,
		40.472343, 29.197392, 30.675613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.839436, 29.474640, 30.193171>,  <40.439137, 29.821589, 30.360533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.839436, 29.474640, 30.193171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.940632, 29.303360, 30.540192>,  <40.001350, 29.200592, 30.748404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.940632, 29.303360, 30.540192>,  <39.839436, 29.474640, 30.193171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.940632, 29.303360, 30.540192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.943396, 0.089610, 0.319333,
		-0.214479, -0.899231, -0.381290,
		0.252987, -0.428198, 0.867550,
		40.016529, 29.174900, 30.800457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.243408, 29.100874, 30.279467>,  <39.839436, 29.474640, 30.193171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.243408, 29.100874, 30.279467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.409801, 29.125504, 30.642382>,  <39.509636, 29.140282, 30.860130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.409801, 29.125504, 30.642382>,  <39.243408, 29.100874, 30.279467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.409801, 29.125504, 30.642382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882828, 0.266650, 0.386668,
		-0.218120, -0.961824, 0.165280,
		0.415979, 0.061574, 0.907287,
		39.534595, 29.143976, 30.914568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.798939, 28.666241, 30.717226>,  <39.243408, 29.100874, 30.279467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.798939, 28.666241, 30.717226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.990356, 28.901585, 30.977940>,  <39.105209, 29.042791, 31.134367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.990356, 28.901585, 30.977940>,  <38.798939, 28.666241, 30.717226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.990356, 28.901585, 30.977940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844204, 0.104158, 0.525804,
		0.241475, -0.801860, 0.546543,
		0.478548, 0.588363, 0.651782,
		39.133923, 29.078093, 31.173475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.411484, 28.500135, 31.262365>,  <38.798939, 28.666241, 30.717226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.411484, 28.500135, 31.262365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.603668, 28.847979, 31.307861>,  <38.718979, 29.056684, 31.335159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.603668, 28.847979, 31.307861>,  <38.411484, 28.500135, 31.262365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.603668, 28.847979, 31.307861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776299, 0.361353, 0.516511,
		0.408064, -0.336457, 0.848693,
		0.480462, 0.869609, 0.113736,
		38.747807, 29.108862, 31.341982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.302380, 28.570326, 31.957689>,  <38.411484, 28.500135, 31.262365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.302380, 28.570326, 31.957689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.395939, 28.930168, 31.810177>,  <38.452076, 29.146072, 31.721668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.395939, 28.930168, 31.810177>,  <38.302380, 28.570326, 31.957689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.395939, 28.930168, 31.810177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728624, 0.413329, 0.546138,
		0.643737, 0.140962, 0.752152,
		0.233902, 0.899605, -0.368784,
		38.466110, 29.200050, 31.699541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.678848, 29.188837, 32.201183>,  <38.302380, 28.570326, 31.957689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.678848, 29.188837, 32.201183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.802441, 29.501240, 31.984089>,  <38.876595, 29.688681, 31.853832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.802441, 29.501240, 31.984089>,  <38.678848, 29.188837, 32.201183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.802441, 29.501240, 31.984089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736860, 0.557377, 0.382581,
		0.601306, 0.281710, 0.747710,
		0.308980, 0.781006, -0.542735,
		38.895134, 29.735542, 31.821268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.693039, 29.805307, 32.695377>,  <38.678848, 29.188837, 32.201183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.693039, 29.805307, 32.695377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.656815, 29.931421, 32.317513>,  <38.635078, 30.007090, 32.090794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.656815, 29.931421, 32.317513>,  <38.693039, 29.805307, 32.695377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.656815, 29.931421, 32.317513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645792, 0.703503, 0.296707,
		0.758123, 0.636928, 0.139899,
		-0.090562, 0.315286, -0.944666,
		38.629646, 30.026007, 32.034111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.947922, 30.514849, 32.525791>,  <38.693039, 29.805307, 32.695377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.947922, 30.514849, 32.525791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.643162, 30.395050, 32.296074>,  <38.460308, 30.323170, 32.158245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.643162, 30.395050, 32.296074>,  <38.947922, 30.514849, 32.525791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.643162, 30.395050, 32.296074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552882, 0.762606, 0.335788,
		0.337390, 0.573352, -0.746615,
		-0.761898, -0.299499, -0.574292,
		38.414593, 30.305201, 32.123787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.658657, 31.167017, 32.335686>,  <38.947922, 30.514849, 32.525791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.658657, 31.167017, 32.335686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.378292, 30.898335, 32.239742>,  <38.210072, 30.737125, 32.182178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.378292, 30.898335, 32.239742>,  <38.658657, 31.167017, 32.335686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.378292, 30.898335, 32.239742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704539, 0.599646, 0.379537,
		-0.111109, 0.435011, -0.893543,
		-0.700913, -0.671707, -0.239856,
		38.168018, 30.696823, 32.167786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.222984, 31.573444, 31.860437>,  <38.658657, 31.167017, 32.335686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.222984, 31.573444, 31.860437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.052647, 31.265869, 32.051178>,  <37.950443, 31.081324, 32.165623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.052647, 31.265869, 32.051178>,  <38.222984, 31.573444, 31.860437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.052647, 31.265869, 32.051178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645017, 0.627591, 0.435984,
		-0.634513, -0.121914, -0.763237,
		-0.425848, -0.768938, 0.476851,
		37.924892, 31.035187, 32.194233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.463860, 31.743956, 31.853456>,  <38.222984, 31.573444, 31.860437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.463860, 31.743956, 31.853456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.503853, 31.483927, 32.154762>,  <37.527851, 31.327909, 32.335545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.503853, 31.483927, 32.154762>,  <37.463860, 31.743956, 31.853456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.503853, 31.483927, 32.154762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740109, 0.457396, 0.492979,
		-0.665012, -0.606789, -0.435391,
		0.099988, -0.650074, 0.753264,
		37.533848, 31.288904, 32.380741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.793987, 31.489185, 32.127045>,  <37.463860, 31.743956, 31.853456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.793987, 31.489185, 32.127045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.070145, 31.509876, 32.415676>,  <37.235840, 31.522291, 32.588856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.070145, 31.509876, 32.415676>,  <36.793987, 31.489185, 32.127045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.070145, 31.509876, 32.415676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605519, 0.587112, 0.537259,
		-0.395859, -0.807852, 0.436660,
		0.690393, 0.051727, 0.721583,
		37.277264, 31.525394, 32.632153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.516251, 31.226475, 32.778843>,  <36.793987, 31.489185, 32.127045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.516251, 31.226475, 32.778843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.791393, 31.504097, 32.863831>,  <36.956478, 31.670671, 32.914822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.791393, 31.504097, 32.863831>,  <36.516251, 31.226475, 32.778843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.791393, 31.504097, 32.863831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694550, 0.544332, 0.470428,
		0.210850, -0.471155, 0.856478,
		0.687854, 0.694057, 0.212469,
		36.997749, 31.712315, 32.927570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.451485, 31.422987, 33.512859>,  <36.516251, 31.226475, 32.778843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.451485, 31.422987, 33.512859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.583363, 31.759991, 33.342457>,  <36.662491, 31.962193, 33.240215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.583363, 31.759991, 33.342457>,  <36.451485, 31.422987, 33.512859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.583363, 31.759991, 33.342457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561453, 0.537744, 0.628968,
		0.758994, 0.031816, 0.650320,
		0.329694, 0.842507, -0.426008,
		36.682270, 32.012741, 33.214653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.908947, 31.952938, 33.903496>,  <36.451485, 31.422987, 33.512859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.908947, 31.952938, 33.903496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.669159, 32.143272, 33.646057>,  <36.525288, 32.257473, 33.491592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.669159, 32.143272, 33.646057>,  <36.908947, 31.952938, 33.903496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.669159, 32.143272, 33.646057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355001, 0.562612, 0.746621,
		0.717365, 0.676053, -0.168345,
		-0.599468, 0.475837, -0.643597,
		36.489319, 32.286022, 33.452976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.630554, 32.054401, 34.271576>,  <36.908947, 31.952938, 33.903496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.630554, 32.054401, 34.271576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.970139, 32.024330, 34.480812>,  <38.173889, 32.006287, 34.606354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.970139, 32.024330, 34.480812>,  <37.630554, 32.054401, 34.271576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.970139, 32.024330, 34.480812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461567, -0.376540, -0.803227,
		0.257349, 0.923345, -0.284966,
		0.848956, -0.075179, 0.523088,
		38.224827, 32.001778, 34.637737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.167713, 32.489239, 34.058289>,  <37.630554, 32.054401, 34.271576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.167713, 32.489239, 34.058289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.343372, 32.163902, 34.210930>,  <38.448769, 31.968700, 34.302517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.343372, 32.163902, 34.210930>,  <38.167713, 32.489239, 34.058289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.343372, 32.163902, 34.210930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454241, -0.165455, -0.875380,
		0.775119, 0.557767, 0.296792,
		0.439153, -0.813339, 0.381608,
		38.475117, 31.919901, 34.325413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.853039, 32.496975, 33.786144>,  <38.167713, 32.489239, 34.058289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.853039, 32.496975, 33.786144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.743443, 32.132393, 33.908894>,  <38.677685, 31.913643, 33.982544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.743443, 32.132393, 33.908894>,  <38.853039, 32.496975, 33.786144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.743443, 32.132393, 33.908894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472252, -0.405476, -0.782667,
		0.837799, -0.069521, 0.541534,
		-0.273991, -0.911458, 0.306876,
		38.661243, 31.858955, 34.000957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.380516, 32.071323, 34.148365>,  <38.853039, 32.496975, 33.786144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.380516, 32.071323, 34.148365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.119640, 31.831354, 33.963005>,  <38.963116, 31.687372, 33.851788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.119640, 31.831354, 33.963005>,  <39.380516, 32.071323, 34.148365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.119640, 31.831354, 33.963005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756211, -0.472228, -0.452930,
		0.052893, -0.645824, 0.761652,
		-0.652186, -0.599927, -0.463401,
		38.923985, 31.651377, 33.823986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.965717, 31.951591, 34.667870>,  <39.380516, 32.071323, 34.148365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.965717, 31.951591, 34.667870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.290905, 31.832117, 34.467922>,  <40.486019, 31.760431, 34.347954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.290905, 31.832117, 34.467922>,  <39.965717, 31.951591, 34.667870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.290905, 31.832117, 34.467922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343622, -0.446950, 0.825930,
		-0.470116, -0.843218, -0.260718,
		0.812967, -0.298694, -0.499867,
		40.534798, 31.742510, 34.317963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.091156, 31.258512, 34.784119>,  <39.965717, 31.951591, 34.667870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.091156, 31.258512, 34.784119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.445862, 31.419054, 34.692413>,  <40.658688, 31.515379, 34.637390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.445862, 31.419054, 34.692413>,  <40.091156, 31.258512, 34.784119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.445862, 31.419054, 34.692413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293413, -0.105535, 0.950143,
		0.357148, -0.909823, -0.211347,
		0.886766, 0.401354, -0.229263,
		40.711891, 31.539459, 34.623634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.644981, 30.856318, 35.114876>,  <40.091156, 31.258512, 34.784119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.644981, 30.856318, 35.114876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.807785, 31.210636, 35.025696>,  <40.905468, 31.423227, 34.972187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.807785, 31.210636, 35.025696>,  <40.644981, 30.856318, 35.114876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.807785, 31.210636, 35.025696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484154, -0.002229, 0.874980,
		0.774557, -0.464070, -0.429769,
		0.407010, 0.885796, -0.222954,
		40.929890, 31.476376, 34.958809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.341801, 30.734385, 35.155392>,  <40.644981, 30.856318, 35.114876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.341801, 30.734385, 35.155392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.242043, 31.115324, 35.225636>,  <41.182190, 31.343887, 35.267780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.242043, 31.115324, 35.225636>,  <41.341801, 30.734385, 35.155392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.242043, 31.115324, 35.225636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586316, 0.004164, 0.810072,
		0.770738, 0.304988, -0.559415,
		-0.249392, 0.952347, 0.175610,
		41.167225, 31.401028, 35.278320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.007221, 31.234690, 35.222874>,  <41.341801, 30.734385, 35.155392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.007221, 31.234690, 35.222874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.686565, 31.366236, 35.422562>,  <41.494171, 31.445164, 35.542374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.686565, 31.366236, 35.422562>,  <42.007221, 31.234690, 35.222874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.686565, 31.366236, 35.422562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592914, 0.330790, 0.734188,
		0.076314, 0.884548, -0.460164,
		-0.801642, 0.328867, 0.499217,
		41.446072, 31.464895, 35.572327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.292728, 31.589264, 35.633057>,  <42.007221, 31.234690, 35.222874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.292728, 31.589264, 35.633057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.927952, 31.631124, 35.791759>,  <41.709087, 31.656240, 35.886982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.927952, 31.631124, 35.791759>,  <42.292728, 31.589264, 35.633057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.927952, 31.631124, 35.791759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407129, 0.351175, 0.843162,
		-0.051092, 0.930443, -0.362857,
		-0.911941, 0.104651, 0.396753,
		41.654369, 31.662519, 35.910786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.114655, 32.338833, 35.849056>,  <42.292728, 31.589264, 35.633057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.114655, 32.338833, 35.849056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.951210, 32.062393, 36.087524>,  <41.853146, 31.896528, 36.230606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.951210, 32.062393, 36.087524>,  <42.114655, 32.338833, 35.849056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.951210, 32.062393, 36.087524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610007, 0.279087, 0.741621,
		-0.678919, 0.666699, 0.307541,
		-0.408607, -0.691103, 0.596168,
		41.828629, 31.855062, 36.266376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.817574, 32.101704, 36.075340>,  <42.114655, 32.338833, 35.849056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.817574, 32.101704, 36.075340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.869999, 32.262783, 36.437698>,  <42.901455, 32.359432, 36.655113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.869999, 32.262783, 36.437698>,  <42.817574, 32.101704, 36.075340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.869999, 32.262783, 36.437698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778318, 0.524181, -0.345624,
		-0.614038, 0.750378, -0.244726,
		0.131068, 0.402701, 0.905899,
		42.909321, 32.383595, 36.709469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.785210, 32.803894, 36.162861>,  <42.817574, 32.101704, 36.075340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.785210, 32.803894, 36.162861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.046844, 32.645309, 36.420540>,  <43.203827, 32.550159, 36.575146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.046844, 32.645309, 36.420540>,  <42.785210, 32.803894, 36.162861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.046844, 32.645309, 36.420540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750385, 0.447424, -0.486554,
		-0.095330, 0.801644, 0.590152,
		0.654091, -0.396458, 0.644195,
		43.243073, 32.526371, 36.613800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.269318, 33.331879, 36.412640>,  <42.785210, 32.803894, 36.162861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.269318, 33.331879, 36.412640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.437988, 32.969181, 36.412315>,  <43.539188, 32.751560, 36.412121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.437988, 32.969181, 36.412315>,  <43.269318, 33.331879, 36.412640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.437988, 32.969181, 36.412315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785767, 0.365858, -0.498715,
		0.452505, 0.209659, 0.866765,
		0.421674, -0.906747, -0.000810,
		43.564491, 32.697155, 36.412071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.939537, 33.460167, 36.592899>,  <43.269318, 33.331879, 36.412640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.939537, 33.460167, 36.592899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.929127, 33.106499, 36.406326>,  <43.922882, 32.894299, 36.294380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.929127, 33.106499, 36.406326>,  <43.939537, 33.460167, 36.592899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.929127, 33.106499, 36.406326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744788, 0.294077, -0.599008,
		0.666794, -0.362986, 0.650867,
		-0.026026, -0.884172, -0.466436,
		43.921318, 32.841248, 36.266396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.618946, 33.230644, 36.491829>,  <43.939537, 33.460167, 36.592899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.618946, 33.230644, 36.491829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.386921, 33.056496, 36.216446>,  <44.247704, 32.952007, 36.051216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.386921, 33.056496, 36.216446>,  <44.618946, 33.230644, 36.491829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.386921, 33.056496, 36.216446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637553, 0.283394, -0.716390,
		0.507001, -0.854482, 0.113185,
		-0.580066, -0.435372, -0.688459,
		44.212902, 32.925884, 36.009907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.963310, 32.955559, 35.938213>,  <44.618946, 33.230644, 36.491829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.963310, 32.955559, 35.938213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.356693, 32.988483, 35.873669>,  <45.592724, 33.008240, 35.834942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.356693, 32.988483, 35.873669>,  <44.963310, 32.955559, 35.938213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.356693, 32.988483, 35.873669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145978, -0.167260, -0.975046,
		-0.107246, 0.982471, -0.152477,
		0.983458, 0.082312, -0.161357,
		45.651730, 33.013176, 35.825260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.090004, 33.435219, 35.416809>,  <44.963310, 32.955559, 35.938213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.090004, 33.435219, 35.416809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.418243, 33.206642, 35.420452>,  <45.615185, 33.069496, 35.422638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.418243, 33.206642, 35.420452>,  <45.090004, 33.435219, 35.416809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.418243, 33.206642, 35.420452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098481, -0.157077, -0.982664,
		0.562961, 0.805473, -0.185172,
		0.820595, -0.571437, 0.009104,
		45.664421, 33.035210, 35.423183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.613186, 33.526882, 34.781879>,  <45.090004, 33.435219, 35.416809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.613186, 33.526882, 34.781879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.625572, 33.146255, 34.904224>,  <45.633003, 32.917877, 34.977631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.625572, 33.146255, 34.904224>,  <45.613186, 33.526882, 34.781879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.625572, 33.146255, 34.904224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219753, -0.305007, -0.926649,
		0.975064, -0.038517, -0.218557,
		0.030970, -0.951571, 0.305865,
		45.634865, 32.860783, 34.995983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.993717, 33.032787, 34.314709>,  <45.613186, 33.526882, 34.781879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.993717, 33.032787, 34.314709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.681545, 32.859657, 34.495193>,  <45.494244, 32.755779, 34.603485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.681545, 32.859657, 34.495193>,  <45.993717, 33.032787, 34.314709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.681545, 32.859657, 34.495193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369980, -0.262069, -0.891311,
		0.504030, -0.862545, 0.044390,
		-0.780429, -0.432824, 0.451214,
		45.447418, 32.729809, 34.630558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.781200, 32.418892, 33.978851>,  <45.993717, 33.032787, 34.314709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.781200, 32.418892, 33.978851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.127075, 32.500416, 34.162495>,  <46.334599, 32.549332, 34.272682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.127075, 32.500416, 34.162495>,  <45.781200, 32.418892, 33.978851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.127075, 32.500416, 34.162495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461263, -0.039715, 0.886374,
		0.198885, -0.978205, 0.059669,
		0.864685, 0.203810, 0.459108,
		46.386482, 32.561558, 34.300228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.948063, 31.860031, 34.528934>,  <45.781200, 32.418892, 33.978851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.948063, 31.860031, 34.528934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.099014, 32.220936, 34.612377>,  <46.189583, 32.437477, 34.662441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.099014, 32.220936, 34.612377>,  <45.948063, 31.860031, 34.528934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.099014, 32.220936, 34.612377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397236, -0.045767, 0.916574,
		0.836535, -0.428757, 0.341139,
		0.377375, 0.902259, 0.208603,
		46.212227, 32.491615, 34.674957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.262207, 31.886417, 35.182018>,  <45.948063, 31.860031, 34.528934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.262207, 31.886417, 35.182018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.218304, 32.277168, 35.108631>,  <46.191959, 32.511620, 35.064598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.218304, 32.277168, 35.108631>,  <46.262207, 31.886417, 35.182018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.218304, 32.277168, 35.108631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049331, 0.189705, 0.980601,
		0.992733, 0.098582, -0.069012,
		-0.109761, 0.976880, -0.183463,
		46.185375, 32.570232, 35.053593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.727036, 32.292988, 35.465954>,  <46.262207, 31.886417, 35.182018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.727036, 32.292988, 35.465954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.409248, 32.534634, 35.441071>,  <46.218578, 32.679623, 35.426140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.409248, 32.534634, 35.441071>,  <46.727036, 32.292988, 35.465954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.409248, 32.534634, 35.441071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106763, 0.239774, 0.964941,
		0.597852, 0.759969, -0.254989,
		-0.794465, 0.604115, -0.062212,
		46.170910, 32.715870, 35.422405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.830811, 32.943535, 35.674900>,  <46.727036, 32.292988, 35.465954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.830811, 32.943535, 35.674900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.439034, 32.893402, 35.738125>,  <46.203968, 32.863323, 35.776062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.439034, 32.893402, 35.738125>,  <46.830811, 32.943535, 35.674900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.439034, 32.893402, 35.738125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106926, 0.341875, 0.933643,
		-0.171058, 0.931350, -0.321445,
		-0.979442, -0.125336, 0.158066,
		46.145203, 32.855801, 35.785545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.049118, 33.693111, 35.760689>,  <46.830811, 32.943535, 35.674900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.049118, 33.693111, 35.760689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.052975, 34.088387, 35.821857>,  <47.055286, 34.325554, 35.858559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.052975, 34.088387, 35.821857>,  <47.049118, 33.693111, 35.760689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.052975, 34.088387, 35.821857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650504, 0.109952, -0.751502,
		-0.759442, 0.106720, -0.641762,
		0.009638, 0.988191, 0.152924,
		47.055866, 34.384846, 35.867733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.815788, 33.979092, 35.153896>,  <47.049118, 33.693111, 35.760689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.815788, 33.979092, 35.153896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.066780, 34.207161, 35.365997>,  <47.217377, 34.344002, 35.493256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.066780, 34.207161, 35.365997>,  <46.815788, 33.979092, 35.153896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.066780, 34.207161, 35.365997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550592, 0.156606, -0.819953,
		-0.550557, 0.806458, -0.215666,
		0.627483, 0.570175, 0.530250,
		47.255024, 34.378212, 35.525074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.009632, 34.744946, 34.891178>,  <46.815788, 33.979092, 35.153896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.009632, 34.744946, 34.891178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.304058, 34.569065, 35.097042>,  <47.480713, 34.463535, 35.220562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.304058, 34.569065, 35.097042>,  <47.009632, 34.744946, 34.891178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.304058, 34.569065, 35.097042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624321, 0.147146, -0.767184,
		0.261601, 0.886009, 0.382822,
		0.736062, -0.439700, 0.514661,
		47.524876, 34.437157, 35.251442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.635887, 35.163647, 35.078434>,  <47.009632, 34.744946, 34.891178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.635887, 35.163647, 35.078434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.734535, 34.782448, 35.008038>,  <47.793724, 34.553730, 34.965801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.734535, 34.782448, 35.008038>,  <47.635887, 35.163647, 35.078434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.734535, 34.782448, 35.008038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418532, 0.268532, -0.867595,
		0.874075, 0.140312, 0.465086,
		0.246624, -0.952997, -0.175992,
		47.808521, 34.496548, 34.955238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.404091, 33.828609, 20.732424> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.165131, 33.507843, 20.734755>,  <37.021755, 33.315384, 20.736153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.165131, 33.507843, 20.734755>,  <37.404091, 33.828609, 20.732424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.165131, 33.507843, 20.734755> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764796, -0.567531, 0.304951,
		-0.241238, 0.186637, 0.952350,
		-0.597403, -0.801920, 0.005829,
		36.985909, 33.267265, 20.736504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.404751, 33.541958, 21.346252>,  <37.404091, 33.828609, 20.732424>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.404751, 33.541958, 21.346252> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.320881, 33.240074, 21.097591>,  <37.270561, 33.058945, 20.948395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.320881, 33.240074, 21.097591>,  <37.404751, 33.541958, 21.346252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.320881, 33.240074, 21.097591> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761312, -0.524963, 0.380549,
		-0.613549, -0.393481, 0.684639,
		-0.209671, -0.754709, -0.621653,
		37.257980, 33.013660, 20.911095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.489552, 32.904816, 21.720898>,  <37.404751, 33.541958, 21.346252>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.489552, 32.904816, 21.720898> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.504082, 32.789745, 21.338083>,  <37.512802, 32.720703, 21.108395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.504082, 32.789745, 21.338083>,  <37.489552, 32.904816, 21.720898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.504082, 32.789745, 21.338083> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723120, -0.653439, 0.223866,
		-0.689767, -0.700186, 0.184287,
		0.036328, -0.287677, -0.957038,
		37.514980, 32.703442, 21.050972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.212574, 32.136971, 21.687151>,  <37.489552, 32.904816, 21.720898>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.212574, 32.136971, 21.687151> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.463444, 32.249985, 21.396820>,  <37.613964, 32.317795, 21.222622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.463444, 32.249985, 21.396820>,  <37.212574, 32.136971, 21.687151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.463444, 32.249985, 21.396820> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703242, -0.606009, 0.371757,
		-0.334823, -0.743589, -0.578766,
		0.627172, 0.282540, -0.725828,
		37.651596, 32.334747, 21.179071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.653641, 31.572441, 21.660650>,  <37.212574, 32.136971, 21.687151>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.653641, 31.572441, 21.660650> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.863617, 31.848501, 21.461399>,  <37.989601, 32.014137, 21.341848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.863617, 31.848501, 21.461399>,  <37.653641, 31.572441, 21.660650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.863617, 31.848501, 21.461399> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850670, -0.444846, 0.280129,
		-0.028258, -0.570792, -0.820608,
		0.524940, 0.690151, -0.498127,
		38.021099, 32.055546, 21.311960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.032928, 31.119812, 21.236258>,  <37.653641, 31.572441, 21.660650>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.032928, 31.119812, 21.236258> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.228981, 31.468439, 21.241003>,  <38.346615, 31.677614, 21.243851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.228981, 31.468439, 21.241003>,  <38.032928, 31.119812, 21.236258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.228981, 31.468439, 21.241003> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861519, -0.486465, 0.145389,
		0.132488, -0.061040, -0.989303,
		0.490136, 0.871565, 0.011864,
		38.376022, 31.729908, 21.244562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.627323, 30.980965, 21.014488>,  <38.032928, 31.119812, 21.236258>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.627323, 30.980965, 21.014488> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.689274, 31.325121, 21.208702>,  <38.726444, 31.531614, 21.325232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.689274, 31.325121, 21.208702>,  <38.627323, 30.980965, 21.014488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.689274, 31.325121, 21.208702> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792866, -0.401449, 0.458479,
		0.589388, 0.313959, -0.744347,
		0.154874, 0.860389, 0.485536,
		38.735737, 31.583237, 21.354362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.372047, 31.071825, 20.957474>,  <38.627323, 30.980965, 21.014488>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.372047, 31.071825, 20.957474> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.249233, 31.305265, 21.258177>,  <39.175545, 31.445330, 21.438599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.249233, 31.305265, 21.258177>,  <39.372047, 31.071825, 20.957474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.249233, 31.305265, 21.258177> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804200, -0.263302, 0.532855,
		0.508914, 0.768169, -0.388489,
		-0.307033, 0.583600, 0.751759,
		39.157124, 31.480345, 21.483706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.050869, 31.384527, 21.251518>,  <39.372047, 31.071825, 20.957474>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.050869, 31.384527, 21.251518> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.740982, 31.382898, 21.504435>,  <39.555050, 31.381922, 21.656185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.740982, 31.382898, 21.504435>,  <40.050869, 31.384527, 21.251518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.740982, 31.382898, 21.504435> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599691, -0.321734, 0.732706,
		0.200446, 0.946821, 0.251696,
		-0.774720, -0.004072, 0.632291,
		39.508568, 31.381678, 21.694122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.447094, 31.690590, 21.881300>,  <40.050869, 31.384527, 21.251518>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.447094, 31.690590, 21.881300> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.104538, 31.532532, 22.014236>,  <39.899002, 31.437696, 22.093998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.104538, 31.532532, 22.014236>,  <40.447094, 31.690590, 21.881300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.104538, 31.532532, 22.014236> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444490, -0.236709, 0.863943,
		-0.262714, 0.887598, 0.378354,
		-0.856393, -0.395145, 0.332342,
		39.847618, 31.413988, 22.113939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.153412, 32.153599, 22.437576>,  <40.447094, 31.690590, 21.881300>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.153412, 32.153599, 22.437576> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.058445, 31.773174, 22.516697>,  <40.001465, 31.544920, 22.564169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.058445, 31.773174, 22.516697>,  <40.153412, 32.153599, 22.437576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.058445, 31.773174, 22.516697> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414992, 0.084809, 0.905864,
		-0.878303, 0.297151, 0.374546,
		-0.237414, -0.951057, 0.197803,
		39.987221, 31.487858, 22.576038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.125443, 32.055656, 23.233347>,  <40.153412, 32.153599, 22.437576>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.125443, 32.055656, 23.233347> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.073864, 31.673290, 23.127819>,  <40.042919, 31.443871, 23.064503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.073864, 31.673290, 23.127819>,  <40.125443, 32.055656, 23.233347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.073864, 31.673290, 23.127819> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559633, -0.289773, 0.776430,
		-0.818649, -0.047528, 0.572325,
		-0.128942, -0.955915, -0.263820,
		40.035183, 31.386517, 23.048674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.758598, 31.804213, 23.774988>,  <40.125443, 32.055656, 23.233347>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.758598, 31.804213, 23.774988> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.964798, 31.523907, 23.577732>,  <40.088516, 31.355722, 23.459379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.964798, 31.523907, 23.577732>,  <39.758598, 31.804213, 23.774988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.964798, 31.523907, 23.577732> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343151, -0.358514, 0.868168,
		-0.785181, -0.616760, 0.055655,
		0.515498, -0.700767, -0.493140,
		40.119446, 31.313677, 23.429790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.634960, 31.324308, 24.239109>,  <39.758598, 31.804213, 23.774988>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.634960, 31.324308, 24.239109> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.959171, 31.211683, 24.033678>,  <40.153698, 31.144108, 23.910419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.959171, 31.211683, 24.033678>,  <39.634960, 31.324308, 24.239109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.959171, 31.211683, 24.033678> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428427, -0.312875, 0.847679,
		-0.399363, -0.907099, -0.132965,
		0.810531, -0.281566, -0.513577,
		40.202332, 31.127214, 23.879604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.733128, 30.733429, 24.459358>,  <39.634960, 31.324308, 24.239109>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.733128, 30.733429, 24.459358> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.089634, 30.815578, 24.297632>,  <40.303535, 30.864868, 24.200596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.089634, 30.815578, 24.297632>,  <39.733128, 30.733429, 24.459358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.089634, 30.815578, 24.297632> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453446, -0.391964, 0.800469,
		0.005919, -0.896764, -0.442470,
		0.891264, 0.205374, -0.404314,
		40.357014, 30.877190, 24.176338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.174694, 30.149549, 24.344208>,  <39.733128, 30.733429, 24.459358>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.174694, 30.149549, 24.344208> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.476120, 30.412491, 24.346230>,  <40.656975, 30.570255, 24.347443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.476120, 30.412491, 24.346230>,  <40.174694, 30.149549, 24.344208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.476120, 30.412491, 24.346230> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461690, -0.534704, 0.707767,
		0.467955, -0.531015, -0.706428,
		0.753565, 0.657354, 0.005053,
		40.702190, 30.609697, 24.347746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.738964, 29.699730, 24.323233>,  <40.174694, 30.149549, 24.344208>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.738964, 29.699730, 24.323233> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.877186, 30.050541, 24.456749>,  <40.960121, 30.261026, 24.536858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.877186, 30.050541, 24.456749>,  <40.738964, 29.699730, 24.323233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.877186, 30.050541, 24.456749> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571401, -0.478808, 0.666516,
		0.744373, -0.039592, -0.666589,
		0.345557, 0.877026, 0.333789,
		40.980854, 30.313648, 24.556885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.426300, 29.550133, 24.367399>,  <40.738964, 29.699730, 24.323233>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.426300, 29.550133, 24.367399> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.384483, 29.891392, 24.571833>,  <41.359394, 30.096148, 24.694492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.384483, 29.891392, 24.571833>,  <41.426300, 29.550133, 24.367399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.384483, 29.891392, 24.571833> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739851, -0.276702, 0.613234,
		0.664599, 0.442235, -0.602277,
		-0.104542, 0.853150, 0.511084,
		41.353119, 30.147337, 24.725159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.127262, 29.794918, 24.559008>,  <41.426300, 29.550133, 24.367399>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.127262, 29.794918, 24.559008> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.871655, 29.956612, 24.820772>,  <41.718292, 30.053627, 24.977831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.871655, 29.956612, 24.820772>,  <42.127262, 29.794918, 24.559008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.871655, 29.956612, 24.820772> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613624, -0.245108, 0.750592,
		0.463816, 0.881202, -0.091420,
		-0.639015, 0.404234, 0.654411,
		41.679951, 30.077883, 25.017096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.637115, 30.021076, 25.106932>,  <42.127262, 29.794918, 24.559008>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.637115, 30.021076, 25.106932> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.270832, 30.042213, 25.266273>,  <42.051064, 30.054895, 25.361879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.270832, 30.042213, 25.266273>,  <42.637115, 30.021076, 25.106932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.270832, 30.042213, 25.266273> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362352, -0.319979, 0.875394,
		0.173721, 0.945950, 0.273860,
		-0.915709, 0.052841, 0.398354,
		41.996120, 30.058065, 25.385780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.674034, 30.510988, 25.731756>,  <42.637115, 30.021076, 25.106932>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.674034, 30.510988, 25.731756> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.350533, 30.278149, 25.765404>,  <42.156429, 30.138445, 25.785593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.350533, 30.278149, 25.765404>,  <42.674034, 30.510988, 25.731756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.350533, 30.278149, 25.765404> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256953, -0.221050, 0.940804,
		-0.529045, 0.782496, 0.328347,
		-0.808756, -0.582097, 0.084119,
		42.107906, 30.103519, 25.790640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.732658, 30.379833, 26.520855>,  <42.674034, 30.510988, 25.731756>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.732658, 30.379833, 26.520855> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.912495, 30.618750, 26.786520>,  <43.020397, 30.762100, 26.945919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.912495, 30.618750, 26.786520>,  <42.732658, 30.379833, 26.520855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.912495, 30.618750, 26.786520> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727090, 0.676618, -0.116309,
		-0.518856, -0.430616, 0.738484,
		0.449587, 0.597292, 0.664164,
		43.047371, 30.797937, 26.985769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.190639, 30.733383, 26.836769>,  <42.732658, 30.379833, 26.520855>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.190639, 30.733383, 26.836769> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.492477, 30.976215, 26.936403>,  <42.673580, 31.121914, 26.996183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.492477, 30.976215, 26.936403>,  <42.190639, 30.733383, 26.836769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.492477, 30.976215, 26.936403> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571035, 0.794526, -0.206512,
		-0.323275, 0.013595, 0.946207,
		0.754594, 0.607078, 0.249087,
		42.718857, 31.158339, 27.011129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.858360, 31.438684, 27.006554>,  <42.190639, 30.733383, 26.836769>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.858360, 31.438684, 27.006554> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.243546, 31.532640, 26.953587>,  <42.474655, 31.589014, 26.921806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.243546, 31.532640, 26.953587>,  <41.858360, 31.438684, 27.006554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.243546, 31.532640, 26.953587> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265261, 0.913383, -0.308816,
		0.048410, 0.332503, 0.941859,
		0.962961, 0.234888, -0.132417,
		42.532433, 31.603107, 26.913862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.856976, 32.126770, 27.180861>,  <41.858360, 31.438684, 27.006554>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.856976, 32.126770, 27.180861> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.184624, 32.073887, 26.957588>,  <42.381210, 32.042156, 26.823626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.184624, 32.073887, 26.957588>,  <41.856976, 32.126770, 27.180861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.184624, 32.073887, 26.957588> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189856, 0.855750, -0.481297,
		0.541294, 0.500213, 0.675861,
		0.819119, -0.132207, -0.558181,
		42.430359, 32.034225, 26.790134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.180660, 32.839836, 27.144674>,  <41.856976, 32.126770, 27.180861>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.180660, 32.839836, 27.144674> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.275764, 32.622032, 26.822935>,  <42.332825, 32.491348, 26.629890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.275764, 32.622032, 26.822935>,  <42.180660, 32.839836, 27.144674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.275764, 32.622032, 26.822935> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343878, 0.727276, -0.593984,
		0.908415, 0.417823, -0.014330,
		0.237758, -0.544512, -0.804349,
		42.347092, 32.458679, 26.581631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.577423, 33.356274, 26.697056>,  <42.180660, 32.839836, 27.144674>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.577423, 33.356274, 26.697056> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.460304, 33.065876, 26.448153>,  <42.390034, 32.891636, 26.298811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.460304, 33.065876, 26.448153>,  <42.577423, 33.356274, 26.697056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.460304, 33.065876, 26.448153> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352835, 0.686884, -0.635373,
		0.888695, 0.033519, -0.457272,
		-0.292796, -0.725994, -0.622257,
		42.372467, 32.848080, 26.261475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.623547, 33.748901, 26.035915>,  <42.577423, 33.356274, 26.697056>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.623547, 33.748901, 26.035915> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.456047, 33.408623, 25.908817>,  <42.355549, 33.204456, 25.832560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.456047, 33.408623, 25.908817>,  <42.623547, 33.748901, 26.035915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.456047, 33.408623, 25.908817> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177899, 0.419965, -0.889933,
		0.890508, -0.316128, -0.327197,
		-0.418744, -0.850701, -0.317743,
		42.330425, 33.153412, 25.813494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.959476, 33.519245, 25.511255>,  <42.623547, 33.748901, 26.035915>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.959476, 33.519245, 25.511255> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.579456, 33.402821, 25.466209>,  <42.351444, 33.332966, 25.439182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.579456, 33.402821, 25.466209>,  <42.959476, 33.519245, 25.511255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.579456, 33.402821, 25.466209> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091513, 0.604784, -0.791114,
		0.298372, -0.741295, -0.601213,
		-0.950052, -0.291065, -0.112613,
		42.294441, 33.315502, 25.432426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.800797, 33.504894, 24.828588>,  <42.959476, 33.519245, 25.511255>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.800797, 33.504894, 24.828588> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.431541, 33.490749, 24.981724>,  <42.209988, 33.482262, 25.073605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.431541, 33.490749, 24.981724>,  <42.800797, 33.504894, 24.828588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.431541, 33.490749, 24.981724> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355103, 0.460105, -0.813760,
		-0.147374, -0.887160, -0.437296,
		-0.923137, -0.035359, 0.382841,
		42.154602, 33.480141, 25.096577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.450436, 33.288391, 24.204081>,  <42.800797, 33.504894, 24.828588>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.450436, 33.288391, 24.204081> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.182182, 33.441746, 24.458096>,  <42.021233, 33.533760, 24.610504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.182182, 33.441746, 24.458096>,  <42.450436, 33.288391, 24.204081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.182182, 33.441746, 24.458096> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382021, 0.555325, -0.738697,
		-0.635859, -0.737989, -0.225956,
		-0.670629, 0.383388, 0.635036,
		41.980995, 33.556763, 24.648605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.888393, 33.213997, 23.780869>,  <42.450436, 33.288391, 24.204081>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.888393, 33.213997, 23.780869> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.776878, 33.462837, 24.073517>,  <41.709969, 33.612141, 24.249105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.776878, 33.462837, 24.073517>,  <41.888393, 33.213997, 23.780869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.776878, 33.462837, 24.073517> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614924, 0.469531, -0.633568,
		-0.737662, -0.626522, 0.251645,
		-0.278789, 0.622102, 0.731619,
		41.693241, 33.649467, 24.293003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.163361, 33.153282, 23.813623>,  <41.888393, 33.213997, 23.780869>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.163361, 33.153282, 23.813623> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.262623, 33.507133, 23.971535>,  <41.322178, 33.719444, 24.066282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.262623, 33.507133, 23.971535>,  <41.163361, 33.153282, 23.813623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.262623, 33.507133, 23.971535> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652872, 0.453797, -0.606487,
		-0.715666, -0.107239, 0.690161,
		0.248154, 0.884629, 0.394781,
		41.337070, 33.772522, 24.089970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.558533, 33.486557, 23.858807>,  <41.163361, 33.153282, 23.813623>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.558533, 33.486557, 23.858807> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.815250, 33.792347, 23.883083>,  <40.969280, 33.975819, 23.897650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.815250, 33.792347, 23.883083>,  <40.558533, 33.486557, 23.858807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.815250, 33.792347, 23.883083> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582012, 0.537090, -0.610571,
		-0.499361, 0.356537, 0.789633,
		0.641795, 0.764471, 0.060693,
		41.007790, 34.021687, 23.901291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.348583, 34.093929, 24.377253>,  <40.558533, 33.486557, 23.858807>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.348583, 34.093929, 24.377253> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.580360, 34.250431, 24.091267>,  <40.719425, 34.344330, 23.919676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.580360, 34.250431, 24.091267>,  <40.348583, 34.093929, 24.377253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.580360, 34.250431, 24.091267> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763904, 0.566485, -0.309103,
		0.284079, 0.725270, 0.627123,
		0.579439, 0.391252, -0.714963,
		40.754192, 34.367805, 23.876778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.262943, 34.760712, 24.352211>,  <40.348583, 34.093929, 24.377253>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.262943, 34.760712, 24.352211> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.413742, 34.714428, 23.984627>,  <40.504223, 34.686657, 23.764076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.413742, 34.714428, 23.984627>,  <40.262943, 34.760712, 24.352211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.413742, 34.714428, 23.984627> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737776, 0.562322, -0.373471,
		0.559965, 0.818782, 0.126626,
		0.376996, -0.115709, -0.918959,
		40.526840, 34.679714, 23.708939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.300713, 35.467239, 23.953888>,  <40.262943, 34.760712, 24.352211>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.300713, 35.467239, 23.953888> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.302265, 35.190506, 23.665070>,  <40.303196, 35.024467, 23.491777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.302265, 35.190506, 23.665070>,  <40.300713, 35.467239, 23.953888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.302265, 35.190506, 23.665070> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564499, 0.594490, -0.572646,
		0.825425, 0.409817, -0.388232,
		0.003880, -0.691832, -0.722048,
		40.303429, 34.982956, 23.448456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.380066, 35.862274, 23.281673>,  <40.300713, 35.467239, 23.953888>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.380066, 35.862274, 23.281673> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.239197, 35.509567, 23.156158>,  <40.154675, 35.297943, 23.080851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.239197, 35.509567, 23.156158>,  <40.380066, 35.862274, 23.281673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.239197, 35.509567, 23.156158> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706670, 0.470339, -0.528583,
		0.613673, 0.035593, -0.788757,
		-0.352169, -0.881768, -0.313787,
		40.133545, 35.245037, 23.062023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.156174, 35.993267, 22.563148>,  <40.380066, 35.862274, 23.281673>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.156174, 35.993267, 22.563148> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.970158, 35.654362, 22.665817>,  <39.858547, 35.451019, 22.727419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.970158, 35.654362, 22.665817>,  <40.156174, 35.993267, 22.563148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.970158, 35.654362, 22.665817> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692864, 0.167855, -0.701259,
		0.551068, -0.503954, -0.665098,
		-0.465042, -0.847264, 0.256672,
		39.830647, 35.400185, 22.742819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.011078, 35.548985, 22.015686>,  <40.156174, 35.993267, 22.563148>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.011078, 35.548985, 22.015686> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.719654, 35.515625, 22.287642>,  <39.544800, 35.495609, 22.450815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.719654, 35.515625, 22.287642>,  <40.011078, 35.548985, 22.015686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.719654, 35.515625, 22.287642> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679342, -0.039156, -0.732776,
		0.087737, -0.995746, -0.028131,
		-0.728558, -0.083402, 0.679888,
		39.501087, 35.490604, 22.491608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.451443, 34.357422, 21.337713> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.332756, 34.592094, 21.639112>,  <39.261543, 34.732899, 21.819952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.332756, 34.592094, 21.639112>,  <39.451443, 34.357422, 21.337713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.332756, 34.592094, 21.639112> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855184, 0.187901, -0.483068,
		-0.424991, -0.787714, 0.445969,
		-0.296721, 0.586685, 0.753497,
		39.243740, 34.768101, 21.865162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.839401, 34.108688, 21.684984>,  <39.451443, 34.357422, 21.337713>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.839401, 34.108688, 21.684984> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.812992, 34.490208, 21.802225>,  <38.797146, 34.719120, 21.872570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.812992, 34.490208, 21.802225>,  <38.839401, 34.108688, 21.684984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.812992, 34.490208, 21.802225> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826278, 0.112413, -0.551931,
		-0.559380, -0.278624, 0.780681,
		-0.066023, 0.953799, 0.293102,
		38.793186, 34.776348, 21.890156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.131641, 34.162472, 21.725592>,  <38.839401, 34.108688, 21.684984>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.131641, 34.162472, 21.725592> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.253098, 34.543064, 21.705643>,  <38.325970, 34.771420, 21.693674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.253098, 34.543064, 21.705643>,  <38.131641, 34.162472, 21.725592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.253098, 34.543064, 21.705643> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.890538, 0.264801, -0.369896,
		-0.338743, 0.156726, 0.927734,
		0.303637, 0.951482, -0.049871,
		38.344189, 34.828510, 21.690681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.603355, 34.592651, 21.890310>,  <38.131641, 34.162472, 21.725592>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.603355, 34.592651, 21.890310> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.840248, 34.837654, 21.680891>,  <37.982384, 34.984657, 21.555241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.840248, 34.837654, 21.680891>,  <37.603355, 34.592651, 21.890310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.840248, 34.837654, 21.680891> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793338, 0.329539, -0.511878,
		-0.140999, 0.718498, 0.681087,
		0.592228, 0.612507, -0.523547,
		38.017918, 35.021404, 21.523827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.320770, 35.297249, 21.977915>,  <37.603355, 34.592651, 21.890310>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.320770, 35.297249, 21.977915> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.530830, 35.312969, 21.637873>,  <37.656864, 35.322403, 21.433847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.530830, 35.312969, 21.637873>,  <37.320770, 35.297249, 21.977915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.530830, 35.312969, 21.637873> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740649, 0.513078, -0.433810,
		0.419119, 0.857442, 0.298551,
		0.525146, 0.039303, -0.850104,
		37.688374, 35.324760, 21.382841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.381706, 36.114201, 21.717937>,  <37.320770, 35.297249, 21.977915>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.381706, 36.114201, 21.717937> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.443180, 35.865841, 21.410467>,  <37.480064, 35.716824, 21.225985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.443180, 35.865841, 21.410467>,  <37.381706, 36.114201, 21.717937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.443180, 35.865841, 21.410467> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719676, 0.462712, -0.517651,
		0.677086, 0.632753, -0.375737,
		0.153688, -0.620903, -0.768674,
		37.489285, 35.679569, 21.179865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.310162, 36.576866, 21.157011>,  <37.381706, 36.114201, 21.717937>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.310162, 36.576866, 21.157011> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.294521, 36.232437, 20.954218>,  <37.285137, 36.025780, 20.832542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.294521, 36.232437, 20.954218>,  <37.310162, 36.576866, 21.157011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.294521, 36.232437, 20.954218> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595055, 0.427661, -0.680453,
		0.802733, 0.275073, -0.529107,
		-0.039104, -0.861070, -0.506981,
		37.282791, 35.974117, 20.802124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.511852, 36.684940, 20.490858>,  <37.310162, 36.576866, 21.157011>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.511852, 36.684940, 20.490858> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.274647, 36.363548, 20.469898>,  <37.132324, 36.170712, 20.457323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.274647, 36.363548, 20.469898>,  <37.511852, 36.684940, 20.490858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.274647, 36.363548, 20.469898> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614563, 0.493707, -0.615278,
		0.520239, -0.332662, -0.786567,
		-0.593012, -0.803486, -0.052404,
		37.096741, 36.122501, 20.454178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.298813, 36.511955, 19.779564>,  <37.511852, 36.684940, 20.490858>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.298813, 36.511955, 19.779564> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.010548, 36.365284, 20.014919>,  <36.837589, 36.277283, 20.156132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.010548, 36.365284, 20.014919>,  <37.298813, 36.511955, 19.779564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.010548, 36.365284, 20.014919> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685349, 0.504869, -0.524790,
		-0.104631, -0.781445, -0.615139,
		-0.720658, -0.366676, 0.588388,
		36.794350, 36.255280, 20.191435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.757912, 36.480137, 19.293865>,  <37.298813, 36.511955, 19.779564>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.757912, 36.480137, 19.293865> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.595886, 36.427177, 19.655725>,  <36.498669, 36.395401, 19.872841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.595886, 36.427177, 19.655725>,  <36.757912, 36.480137, 19.293865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.595886, 36.427177, 19.655725> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834609, 0.457531, -0.306746,
		-0.373292, -0.879282, -0.295832,
		-0.405068, -0.132398, 0.904649,
		36.474365, 36.387459, 19.927120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.003391, 36.384544, 19.122076>,  <36.757912, 36.480137, 19.293865>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.003391, 36.384544, 19.122076> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.989601, 36.468307, 19.512964>,  <35.981327, 36.518566, 19.747498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.989601, 36.468307, 19.512964>,  <36.003391, 36.384544, 19.122076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.989601, 36.468307, 19.512964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872829, 0.469973, -0.131507,
		-0.486806, -0.857481, 0.166575,
		-0.034479, 0.209410, 0.977220,
		35.979256, 36.531132, 19.806129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.282871, 36.308540, 19.296171>,  <36.003391, 36.384544, 19.122076>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.282871, 36.308540, 19.296171> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.452782, 36.546555, 19.569080>,  <35.554729, 36.689362, 19.732826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.452782, 36.546555, 19.569080>,  <35.282871, 36.308540, 19.296171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.452782, 36.546555, 19.569080> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752639, 0.650931, -0.099115,
		-0.503090, -0.471403, 0.724348,
		0.424777, 0.595036, 0.682273,
		35.580215, 36.725067, 19.773762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.729076, 36.490101, 19.729090>,  <35.282871, 36.308540, 19.296171>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.729076, 36.490101, 19.729090> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.995796, 36.776707, 19.811054>,  <35.155827, 36.948669, 19.860233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.995796, 36.776707, 19.811054>,  <34.729076, 36.490101, 19.729090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.995796, 36.776707, 19.811054> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730594, 0.682740, -0.009944,
		-0.147027, -0.143077, 0.978730,
		0.666795, 0.716516, 0.204913,
		35.195835, 36.991661, 19.872528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.451405, 36.939739, 20.333275>,  <34.729076, 36.490101, 19.729090>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.451405, 36.939739, 20.333275> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.716625, 37.172943, 20.145464>,  <34.875759, 37.312866, 20.032778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.716625, 37.172943, 20.145464>,  <34.451405, 36.939739, 20.333275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.716625, 37.172943, 20.145464> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665518, 0.746265, -0.013184,
		0.342707, 0.321221, 0.882819,
		0.663052, 0.583014, -0.469529,
		34.915543, 37.347847, 20.004606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.250465, 37.519531, 20.559967>,  <34.451405, 36.939739, 20.333275>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.250465, 37.519531, 20.559967> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.472599, 37.624119, 20.244186>,  <34.605881, 37.686871, 20.054718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.472599, 37.624119, 20.244186>,  <34.250465, 37.519531, 20.559967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.472599, 37.624119, 20.244186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575362, 0.806222, -0.137713,
		0.600467, 0.530698, 0.598164,
		0.555336, 0.261469, -0.789453,
		34.639198, 37.702560, 20.007351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.460453, 38.152355, 20.774565>,  <34.250465, 37.519531, 20.559967>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.460453, 38.152355, 20.774565> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.477505, 38.145954, 20.374979>,  <34.487736, 38.142113, 20.135227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.477505, 38.145954, 20.374979>,  <34.460453, 38.152355, 20.774565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.477505, 38.145954, 20.374979> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668716, 0.742418, -0.040433,
		0.742295, 0.669746, 0.020949,
		0.042633, -0.016004, -0.998963,
		34.490295, 38.141151, 20.075291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.349308, 38.932026, 20.548758>,  <34.460453, 38.152355, 20.774565>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.349308, 38.932026, 20.548758> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.253056, 38.730328, 20.217016>,  <34.195305, 38.609306, 20.017971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.253056, 38.730328, 20.217016>,  <34.349308, 38.932026, 20.548758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.253056, 38.730328, 20.217016> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700428, 0.681736, -0.211272,
		0.671934, 0.530064, -0.517240,
		-0.240633, -0.504250, -0.829353,
		34.180866, 38.579052, 19.968210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.306049, 39.432346, 20.029417>,  <34.349308, 38.932026, 20.548758>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.306049, 39.432346, 20.029417> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.121750, 39.116093, 19.868116>,  <34.011169, 38.926342, 19.771336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.121750, 39.116093, 19.868116>,  <34.306049, 39.432346, 20.029417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.121750, 39.116093, 19.868116> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764306, 0.584422, -0.272554,
		0.451160, 0.182629, -0.873557,
		-0.460750, -0.790631, -0.403252,
		33.983524, 38.878902, 19.747141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.090069, 39.745369, 19.404696>,  <34.306049, 39.432346, 20.029417>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.090069, 39.745369, 19.404696> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.872314, 39.410561, 19.426714>,  <33.741661, 39.209675, 19.439924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.872314, 39.410561, 19.426714>,  <34.090069, 39.745369, 19.404696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.872314, 39.410561, 19.426714> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771057, 0.473485, -0.425774,
		0.330321, -0.274229, -0.903154,
		-0.544389, -0.837025, 0.055044,
		33.708996, 39.159454, 19.443228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.799976, 39.549774, 18.729752>,  <34.090069, 39.745369, 19.404696>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.799976, 39.549774, 18.729752> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.553371, 39.394329, 19.003656>,  <33.405407, 39.301064, 19.167999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.553371, 39.394329, 19.003656>,  <33.799976, 39.549774, 18.729752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.553371, 39.394329, 19.003656> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785379, 0.364968, -0.499978,
		-0.055620, -0.846039, -0.530212,
		-0.616512, -0.388608, 0.684761,
		33.368420, 39.277748, 19.209084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.256237, 39.109112, 18.457222>,  <33.799976, 39.549774, 18.729752>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.256237, 39.109112, 18.457222> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.095085, 39.198631, 18.812210>,  <32.998394, 39.252342, 19.025204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.095085, 39.198631, 18.812210>,  <33.256237, 39.109112, 18.457222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.095085, 39.198631, 18.812210> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806270, 0.372107, -0.459854,
		-0.433149, -0.900805, 0.030530,
		-0.402878, 0.223800, 0.887470,
		32.974220, 39.265770, 19.078451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.626366, 38.838696, 18.395800>,  <33.256237, 39.109112, 18.457222>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.626366, 38.838696, 18.395800> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.620853, 39.117695, 18.682381>,  <32.617546, 39.285095, 18.854328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.620853, 39.117695, 18.682381>,  <32.626366, 38.838696, 18.395800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.620853, 39.117695, 18.682381> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838519, 0.382264, -0.388278,
		-0.544697, -0.606108, 0.579602,
		-0.013777, 0.697502, 0.716451,
		32.616722, 39.326946, 18.897316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.989807, 38.902416, 18.794359>,  <32.626366, 38.838696, 18.395800>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.989807, 38.902416, 18.794359> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.153694, 39.264835, 18.752026>,  <32.252026, 39.482288, 18.726625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.153694, 39.264835, 18.752026>,  <31.989807, 38.902416, 18.794359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.153694, 39.264835, 18.752026> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.902002, 0.385086, -0.195195,
		-0.136101, 0.175437, 0.975038,
		0.409718, 0.906052, -0.105834,
		32.276611, 39.536652, 18.720276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.816212, 38.394234, 18.379564>,  <31.989807, 38.902416, 18.794359>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.816212, 38.394234, 18.379564> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.595737, 38.599571, 18.642675>,  <31.463453, 38.722775, 18.800543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.595737, 38.599571, 18.642675>,  <31.816212, 38.394234, 18.379564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.595737, 38.599571, 18.642675> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829306, -0.250223, -0.499641,
		-0.091894, -0.820896, 0.563635,
		-0.551187, 0.513340, 0.657780,
		31.430382, 38.753574, 18.840010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.002811, 38.458824, 18.257130>,  <31.816212, 38.394234, 18.379564>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.002811, 38.458824, 18.257130> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.853605, 38.140465, 18.066383>,  <30.764082, 37.949448, 17.951937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.853605, 38.140465, 18.066383>,  <31.002811, 38.458824, 18.257130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.853605, 38.140465, 18.066383> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413982, -0.602732, 0.682153,
		-0.830349, 0.057040, 0.554317,
		-0.373014, -0.795902, -0.476864,
		30.741701, 37.901695, 17.923325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.814104, 38.023693, 18.716700>,  <31.002811, 38.458824, 18.257130>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.814104, 38.023693, 18.716700> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.866327, 37.784595, 18.400305>,  <30.897661, 37.641136, 18.210468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.866327, 37.784595, 18.400305>,  <30.814104, 38.023693, 18.716700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.866327, 37.784595, 18.400305> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507545, -0.645051, 0.571234,
		-0.851677, -0.476038, 0.219167,
		0.130556, -0.597744, -0.790985,
		30.905495, 37.605274, 18.163010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.836525, 37.345215, 18.961903>,  <30.814104, 38.023693, 18.716700>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.836525, 37.345215, 18.961903> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.035152, 37.329048, 18.615080>,  <31.154329, 37.319347, 18.406986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.035152, 37.329048, 18.615080>,  <30.836525, 37.345215, 18.961903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.035152, 37.329048, 18.615080> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590879, -0.715991, 0.371779,
		-0.635831, -0.696939, -0.331656,
		0.496570, -0.040420, -0.867055,
		31.184124, 37.316921, 18.354963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.801798, 36.696888, 18.785763>,  <30.836525, 37.345215, 18.961903>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.801798, 36.696888, 18.785763> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.118116, 36.835163, 18.583717>,  <31.307907, 36.918129, 18.462490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.118116, 36.835163, 18.583717>,  <30.801798, 36.696888, 18.785763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.118116, 36.835163, 18.583717> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573292, -0.707423, 0.413387,
		-0.214423, -0.616482, -0.757610,
		0.790796, 0.345692, -0.505112,
		31.355354, 36.938869, 18.432184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.125647, 36.126480, 18.518686>,  <30.801798, 36.696888, 18.785763>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.125647, 36.126480, 18.518686> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.410519, 36.405849, 18.490400>,  <31.581442, 36.573471, 18.473429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.410519, 36.405849, 18.490400>,  <31.125647, 36.126480, 18.518686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.410519, 36.405849, 18.490400> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653278, -0.622512, 0.430937,
		0.256955, -0.353103, -0.899607,
		0.712181, 0.698424, -0.070717,
		31.624172, 36.615376, 18.469185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.743055, 35.776733, 18.141043>,  <31.125647, 36.126480, 18.518686>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.743055, 35.776733, 18.141043> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.869377, 36.092598, 18.351450>,  <31.945169, 36.282116, 18.477695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.869377, 36.092598, 18.351450>,  <31.743055, 35.776733, 18.141043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.869377, 36.092598, 18.351450> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797112, -0.521519, 0.304353,
		0.514666, 0.323180, -0.794149,
		0.315803, 0.789666, 0.526019,
		31.964119, 36.329498, 18.509256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.420151, 35.781887, 17.893944>,  <31.743055, 35.776733, 18.141043>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.420151, 35.781887, 17.893944> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.423008, 35.974560, 18.244471>,  <32.424721, 36.090164, 18.454786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.423008, 35.974560, 18.244471>,  <32.420151, 35.781887, 17.893944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.423008, 35.974560, 18.244471> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744597, -0.587513, 0.316866,
		0.667476, 0.650239, -0.362856,
		0.007144, 0.481682, 0.876317,
		32.425152, 36.119064, 18.507366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.170124, 36.003792, 18.027803>,  <32.420151, 35.781887, 17.893944>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.170124, 36.003792, 18.027803> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.016621, 36.018410, 18.396887>,  <32.924519, 36.027180, 18.618338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.016621, 36.018410, 18.396887>,  <33.170124, 36.003792, 18.027803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.016621, 36.018410, 18.396887> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762277, -0.551450, 0.338877,
		0.521211, 0.833407, 0.183769,
		-0.383762, 0.036543, 0.922709,
		32.901493, 36.029373, 18.673700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.834259, 35.900440, 18.401464>,  <33.170124, 36.003792, 18.027803>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.834259, 35.900440, 18.401464> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.550240, 35.863522, 18.680695>,  <33.379826, 35.841370, 18.848232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.550240, 35.863522, 18.680695>,  <33.834259, 35.900440, 18.401464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.550240, 35.863522, 18.680695> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635214, -0.511758, 0.578453,
		0.303858, 0.854158, 0.422001,
		-0.710052, -0.092293, 0.698074,
		33.337223, 35.835835, 18.890118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.073990, 36.114796, 19.085857>,  <33.834259, 35.900440, 18.401464>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.073990, 36.114796, 19.085857> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.790970, 35.835140, 19.126987>,  <33.621159, 35.667347, 19.151667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.790970, 35.835140, 19.126987>,  <34.073990, 36.114796, 19.085857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.790970, 35.835140, 19.126987> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636205, -0.566885, 0.523339,
		-0.307597, 0.435707, 0.845898,
		-0.707550, -0.699142, 0.102827,
		33.578705, 35.625397, 19.157835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.093060, 35.863617, 19.761068>,  <34.073990, 36.114796, 19.085857>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.093060, 35.863617, 19.761068> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.914867, 35.555977, 19.577751>,  <33.807953, 35.371391, 19.467760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.914867, 35.555977, 19.577751>,  <34.093060, 35.863617, 19.761068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.914867, 35.555977, 19.577751> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576635, -0.638058, 0.510269,
		-0.684867, -0.036957, 0.727730,
		-0.445476, -0.769101, -0.458295,
		33.781223, 35.325245, 19.440262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.874077, 35.416595, 20.282007>,  <34.093060, 35.863617, 19.761068>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.874077, 35.416595, 20.282007> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.884781, 35.193840, 19.949945>,  <33.891205, 35.060184, 19.750708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.884781, 35.193840, 19.949945>,  <33.874077, 35.416595, 20.282007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.884781, 35.193840, 19.949945> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668187, -0.607707, 0.429207,
		-0.743512, -0.566184, 0.355844,
		0.026761, -0.556891, -0.830154,
		33.892811, 35.026772, 19.700899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.873669, 34.739796, 20.481371>,  <33.874077, 35.416595, 20.282007>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.873669, 34.739796, 20.481371> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.029587, 34.705406, 20.114618>,  <34.123138, 34.684772, 19.894567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.029587, 34.705406, 20.114618>,  <33.873669, 34.739796, 20.481371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.029587, 34.705406, 20.114618> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642619, -0.687756, 0.337686,
		-0.659621, -0.720833, -0.212836,
		0.389795, -0.085972, -0.916880,
		34.146526, 34.679615, 19.839554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.106781, 34.006763, 20.539118>,  <33.873669, 34.739796, 20.481371>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.106781, 34.006763, 20.539118> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.290604, 34.163036, 20.220076>,  <34.400898, 34.256802, 20.028650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.290604, 34.163036, 20.220076>,  <34.106781, 34.006763, 20.539118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.290604, 34.163036, 20.220076> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827902, -0.513558, 0.225467,
		-0.321531, -0.763954, -0.559457,
		0.459560, 0.390681, -0.797604,
		34.428471, 34.280239, 19.980795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.475571, 33.462215, 20.271984>,  <34.106781, 34.006763, 20.539118>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.475571, 33.462215, 20.271984> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.661888, 33.762669, 20.084862>,  <34.773678, 33.942940, 19.972588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.661888, 33.762669, 20.084862>,  <34.475571, 33.462215, 20.271984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.661888, 33.762669, 20.084862> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879241, -0.452523, 0.148858,
		-0.099881, -0.480650, -0.871206,
		0.465789, 0.751131, -0.467805,
		34.801624, 33.988007, 19.944521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.961769, 33.138016, 19.786911>,  <34.475571, 33.462215, 20.271984>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.961769, 33.138016, 19.786911> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.104862, 33.510460, 19.815369>,  <35.190720, 33.733925, 19.832443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.104862, 33.510460, 19.815369>,  <34.961769, 33.138016, 19.786911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.104862, 33.510460, 19.815369> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932062, -0.360700, 0.033987,
		0.057308, 0.054152, -0.996887,
		0.357737, 0.931108, 0.071144,
		35.212185, 33.789791, 19.836712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.475948, 33.244297, 19.282696>,  <34.961769, 33.138016, 19.786911>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.475948, 33.244297, 19.282696> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.538528, 33.497368, 19.586075>,  <35.576077, 33.649212, 19.768103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.538528, 33.497368, 19.586075>,  <35.475948, 33.244297, 19.282696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.538528, 33.497368, 19.586075> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908636, -0.393215, 0.140581,
		0.387175, 0.667159, -0.636392,
		0.156449, 0.632678, 0.758447,
		35.585464, 33.687172, 19.813608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.143257, 33.153183, 19.346563>,  <35.475948, 33.244297, 19.282696>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.143257, 33.153183, 19.346563> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.097717, 33.374325, 19.676750>,  <36.070393, 33.507008, 19.874863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.097717, 33.374325, 19.676750>,  <36.143257, 33.153183, 19.346563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.097717, 33.374325, 19.676750> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839296, -0.391078, 0.377678,
		0.531622, 0.735807, -0.419484,
		-0.113847, 0.552853, 0.825465,
		36.063564, 33.540180, 19.924389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.777443, 33.504742, 19.537672>,  <36.143257, 33.153183, 19.346563>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.777443, 33.504742, 19.537672> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.573837, 33.483879, 19.881342>,  <36.451675, 33.471359, 20.087543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.573837, 33.483879, 19.881342>,  <36.777443, 33.504742, 19.537672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.573837, 33.483879, 19.881342> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825835, -0.311029, 0.470380,
		0.242695, 0.948968, 0.201393,
		-0.509014, -0.052159, 0.859176,
		36.421131, 33.468231, 20.139095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.100853, 33.856262, 20.063971>,  <36.777443, 33.504742, 19.537672>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.100853, 33.856262, 20.063971> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.867577, 33.586761, 20.245493>,  <36.727612, 33.425060, 20.354406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.867577, 33.586761, 20.245493>,  <37.100853, 33.856262, 20.063971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.867577, 33.586761, 20.245493> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787746, -0.332664, 0.518450,
		-0.198343, 0.659841, 0.724755,
		-0.583194, -0.673754, 0.453806,
		36.692619, 33.384636, 20.381636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.714294, 35.114040, 23.824781> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.503868, 34.777576, 23.874899>,  <41.377613, 34.575699, 23.904968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.503868, 34.777576, 23.874899>,  <41.714294, 35.114040, 23.824781>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.503868, 34.777576, 23.874899> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492121, -0.180941, 0.851515,
		-0.693591, 0.509615, 0.509141,
		-0.526070, -0.841161, 0.125293,
		41.346046, 34.525227, 23.912487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.495850, 34.996990, 24.503923>,  <41.714294, 35.114040, 23.824781>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.495850, 34.996990, 24.503923> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.461914, 34.616711, 24.384607>,  <41.441551, 34.388542, 24.313017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.461914, 34.616711, 24.384607>,  <41.495850, 34.996990, 24.503923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.461914, 34.616711, 24.384607> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368480, -0.308084, 0.877101,
		-0.925756, -0.035501, 0.376451,
		-0.084841, -0.950697, -0.298292,
		41.436462, 34.331501, 24.295120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.316792, 34.623737, 25.061850>,  <41.495850, 34.996990, 24.503923>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.316792, 34.623737, 25.061850> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.439888, 34.309376, 24.847315>,  <41.513744, 34.120758, 24.718594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.439888, 34.309376, 24.847315>,  <41.316792, 34.623737, 25.061850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.439888, 34.309376, 24.847315> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296084, -0.456605, 0.838955,
		-0.904230, -0.416980, 0.092177,
		0.307739, -0.785900, -0.536337,
		41.532211, 34.073605, 24.686413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.199966, 34.083954, 25.516666>,  <41.316792, 34.623737, 25.061850>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.199966, 34.083954, 25.516666> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.422718, 33.908539, 25.234510>,  <41.556370, 33.803291, 25.065216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.422718, 33.908539, 25.234510>,  <41.199966, 34.083954, 25.516666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.422718, 33.908539, 25.234510> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375715, -0.624408, 0.684801,
		-0.740761, -0.646375, -0.182954,
		0.556876, -0.438536, -0.705390,
		41.589783, 33.776978, 25.022894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.949421, 33.453465, 25.504797>,  <41.199966, 34.083954, 25.516666>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.949421, 33.453465, 25.504797> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.327484, 33.443504, 25.374535>,  <41.554321, 33.437527, 25.296377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.327484, 33.443504, 25.374535>,  <40.949421, 33.453465, 25.504797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.327484, 33.443504, 25.374535> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200973, -0.741631, 0.639995,
		-0.257450, -0.670346, -0.695957,
		0.945161, -0.024899, -0.325654,
		41.611031, 33.436035, 25.276838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.118549, 32.790409, 25.450197>,  <40.949421, 33.453465, 25.504797>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.118549, 32.790409, 25.450197> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.483761, 32.953426, 25.457092>,  <41.702888, 33.051235, 25.461229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.483761, 32.953426, 25.457092>,  <41.118549, 32.790409, 25.450197>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.483761, 32.953426, 25.457092> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360553, -0.826074, 0.433132,
		0.190757, -0.389245, -0.901166,
		0.913024, 0.407541, 0.017236,
		41.757668, 33.075687, 25.462263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.541622, 32.163799, 25.476288>,  <41.118549, 32.790409, 25.450197>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.541622, 32.163799, 25.476288> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.788967, 32.462231, 25.575079>,  <41.937374, 32.641289, 25.634354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.788967, 32.462231, 25.575079>,  <41.541622, 32.163799, 25.476288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.788967, 32.462231, 25.575079> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474371, -0.604895, 0.639590,
		0.626579, -0.278338, -0.727960,
		0.618361, 0.746077, 0.246979,
		41.974476, 32.686054, 25.649172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.177589, 32.035824, 25.293695>,  <41.541622, 32.163799, 25.476288>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.177589, 32.035824, 25.293695> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.222759, 32.292912, 25.596788>,  <42.249863, 32.447166, 25.778645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.222759, 32.292912, 25.596788>,  <42.177589, 32.035824, 25.293695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.222759, 32.292912, 25.596788> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594132, -0.654932, 0.466981,
		0.796401, 0.397456, -0.455822,
		0.112928, 0.642722, 0.757730,
		42.256638, 32.485729, 25.824108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.713280, 31.724886, 25.596581>,  <42.177589, 32.035824, 25.293695>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.713280, 31.724886, 25.596581> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.623886, 31.974911, 25.895741>,  <42.570251, 32.124924, 26.075237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.623886, 31.974911, 25.895741>,  <42.713280, 31.724886, 25.596581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.623886, 31.974911, 25.895741> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424688, -0.628200, 0.651923,
		0.877323, 0.463317, -0.125066,
		-0.223480, 0.625062, 0.747900,
		42.556843, 32.162430, 26.120110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.333328, 31.975227, 25.894403>,  <42.713280, 31.724886, 25.596581>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.333328, 31.975227, 25.894403> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.046146, 31.967808, 26.172743>,  <42.873837, 31.963356, 26.339746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.046146, 31.967808, 26.172743>,  <43.333328, 31.975227, 25.894403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.046146, 31.967808, 26.172743> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446736, -0.778897, 0.440166,
		0.533829, 0.626878, 0.567495,
		-0.717951, -0.018547, 0.695847,
		42.830761, 31.962244, 26.381496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.764877, 31.799345, 26.569004>,  <43.333328, 31.975227, 25.894403>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.764877, 31.799345, 26.569004> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.386112, 31.763041, 26.692371>,  <43.158855, 31.741259, 26.766392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.386112, 31.763041, 26.692371>,  <43.764877, 31.799345, 26.569004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.386112, 31.763041, 26.692371> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306051, -0.548260, 0.778295,
		0.098455, 0.831368, 0.546931,
		-0.946910, -0.090761, 0.308420,
		43.102039, 31.735811, 26.784897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.683277, 31.906372, 27.319807>,  <43.764877, 31.799345, 26.569004>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.683277, 31.906372, 27.319807> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.405651, 31.657860, 27.174326>,  <43.239075, 31.508753, 27.087038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.405651, 31.657860, 27.174326>,  <43.683277, 31.906372, 27.319807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.405651, 31.657860, 27.174326> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228341, -0.669104, 0.707220,
		-0.682738, 0.407810, 0.606267,
		-0.694067, -0.621282, -0.363703,
		43.197430, 31.471476, 27.065214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.729794, 31.445913, 27.897034>,  <43.683277, 31.906372, 27.319807>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.729794, 31.445913, 27.897034> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.506840, 31.251879, 27.627512>,  <43.373066, 31.135458, 27.465799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.506840, 31.251879, 27.627512>,  <43.729794, 31.445913, 27.897034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.506840, 31.251879, 27.627512> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248704, -0.871848, 0.421932,
		-0.792128, 0.067601, 0.606600,
		-0.557386, -0.485088, -0.673803,
		43.339622, 31.106352, 27.425371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.581829, 31.913445, 28.501173>,  <43.729794, 31.445913, 27.897034>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.581829, 31.913445, 28.501173> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.523624, 32.121662, 28.164635>,  <43.488701, 32.246593, 27.962711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.523624, 32.121662, 28.164635>,  <43.581829, 31.913445, 28.501173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.523624, 32.121662, 28.164635> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151969, 0.852064, 0.500892,
		0.977615, -0.054971, -0.203094,
		-0.145515, 0.520544, -0.841344,
		43.479969, 32.277824, 27.912231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.890022, 32.037930, 28.834818>,  <43.581829, 31.913445, 28.501173>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.890022, 32.037930, 28.834818> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.945034, 32.183517, 29.203299>,  <42.978043, 32.270870, 29.424387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.945034, 32.183517, 29.203299>,  <42.890022, 32.037930, 28.834818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.945034, 32.183517, 29.203299> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809863, 0.576782, -0.106977,
		-0.570268, -0.731334, 0.374093,
		0.137534, 0.363970, 0.921201,
		42.986294, 32.292709, 29.479658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.289791, 31.916714, 29.249903>,  <42.890022, 32.037930, 28.834818>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.289791, 31.916714, 29.249903> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.479328, 32.252434, 29.356524>,  <42.593052, 32.453865, 29.420496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.479328, 32.252434, 29.356524>,  <42.289791, 31.916714, 29.249903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.479328, 32.252434, 29.356524> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862556, 0.503332, -0.051511,
		-0.177397, -0.205507, 0.962444,
		0.473843, 0.839299, 0.266551,
		42.621483, 32.504223, 29.436489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.779819, 32.291264, 29.699678>,  <42.289791, 31.916714, 29.249903>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.779819, 32.291264, 29.699678> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.057629, 32.566463, 29.615499>,  <42.224316, 32.731583, 29.564993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.057629, 32.566463, 29.615499>,  <41.779819, 32.291264, 29.699678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.057629, 32.566463, 29.615499> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711055, 0.700984, -0.054974,
		0.109697, 0.187819, 0.976059,
		0.694526, 0.688001, -0.210446,
		42.265987, 32.772865, 29.552366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.585773, 32.758949, 30.074963>,  <41.779819, 32.291264, 29.699678>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.585773, 32.758949, 30.074963> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.830017, 32.951443, 29.823383>,  <41.976562, 33.066940, 29.672436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.830017, 32.951443, 29.823383>,  <41.585773, 32.758949, 30.074963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.830017, 32.951443, 29.823383> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667782, 0.739798, -0.082262,
		0.425706, 0.470228, 0.773085,
		0.610609, 0.481232, -0.628946,
		42.013199, 33.095814, 29.634699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.577442, 33.402763, 30.387814>,  <41.585773, 32.758949, 30.074963>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.577442, 33.402763, 30.387814> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.695595, 33.444927, 30.007996>,  <41.766487, 33.470226, 29.780104>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.695595, 33.444927, 30.007996>,  <41.577442, 33.402763, 30.387814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.695595, 33.444927, 30.007996> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585371, 0.805451, -0.092683,
		0.755043, 0.583214, 0.299620,
		0.295383, 0.105409, -0.949546,
		41.784210, 33.476551, 29.723131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.724613, 34.208118, 30.247559>,  <41.577442, 33.402763, 30.387814>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.724613, 34.208118, 30.247559> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.606869, 33.996178, 29.929411>,  <41.536224, 33.869015, 29.738522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.606869, 33.996178, 29.929411>,  <41.724613, 34.208118, 30.247559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.606869, 33.996178, 29.929411> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736991, 0.655693, -0.164049,
		0.608439, 0.537890, -0.583503,
		-0.294358, -0.529850, -0.795369,
		41.518562, 33.837223, 29.690800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.615829, 34.693878, 29.650274>,  <41.724613, 34.208118, 30.247559>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.615829, 34.693878, 29.650274> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.433414, 34.360893, 29.524393>,  <41.323963, 34.161102, 29.448864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.433414, 34.360893, 29.524393>,  <41.615829, 34.693878, 29.650274>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.433414, 34.360893, 29.524393> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805621, 0.536408, -0.251479,
		0.378154, 0.138846, -0.915271,
		-0.456042, -0.832459, -0.314702,
		41.296600, 34.111156, 29.429983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.296314, 34.940731, 29.159006>,  <41.615829, 34.693878, 29.650274>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.296314, 34.940731, 29.159006> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.105064, 34.592381, 29.204575>,  <40.990314, 34.383369, 29.231916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.105064, 34.592381, 29.204575>,  <41.296314, 34.940731, 29.159006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.105064, 34.592381, 29.204575> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803045, 0.380934, -0.458267,
		0.355691, -0.310600, -0.881483,
		-0.478125, -0.870871, 0.113931,
		40.961628, 34.331120, 29.238752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.081612, 34.792118, 28.575144>,  <41.296314, 34.940731, 29.159006>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.081612, 34.792118, 28.575144> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.842991, 34.558952, 28.795811>,  <40.699818, 34.419052, 28.928211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.842991, 34.558952, 28.795811>,  <41.081612, 34.792118, 28.575144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.842991, 34.558952, 28.795811> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802496, 0.423383, -0.420414,
		0.011500, -0.693508, -0.720357,
		-0.596547, -0.582919, 0.551668,
		40.664028, 34.384075, 28.961311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.533550, 34.516636, 28.154278>,  <41.081612, 34.792118, 28.575144>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.533550, 34.516636, 28.154278> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.402542, 34.513893, 28.532206>,  <40.323936, 34.512249, 28.758963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.402542, 34.513893, 28.532206>,  <40.533550, 34.516636, 28.154278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.402542, 34.513893, 28.532206> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.897061, 0.316232, -0.308673,
		-0.296666, -0.948657, -0.109723,
		-0.327522, -0.006855, 0.944818,
		40.304287, 34.511837, 28.815651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.866596, 34.129353, 28.086758>,  <40.533550, 34.516636, 28.154278>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.866596, 34.129353, 28.086758> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.887669, 34.350094, 28.419666>,  <39.900311, 34.482540, 28.619411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.887669, 34.350094, 28.419666>,  <39.866596, 34.129353, 28.086758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.887669, 34.350094, 28.419666> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.931561, 0.327400, -0.158126,
		-0.359749, -0.766983, 0.531335,
		0.052679, 0.551857, 0.832273,
		39.903473, 34.515652, 28.669348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.237907, 33.960476, 28.356232>,  <39.866596, 34.129353, 28.086758>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.237907, 33.960476, 28.356232> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.359249, 34.315094, 28.495956>,  <39.432053, 34.527866, 28.579790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.359249, 34.315094, 28.495956>,  <39.237907, 33.960476, 28.356232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.359249, 34.315094, 28.495956> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.916689, 0.371583, -0.146997,
		-0.260117, -0.275617, 0.925405,
		0.303349, 0.886544, 0.349311,
		39.450253, 34.581059, 28.600750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.744404, 34.298473, 28.660831>,  <39.237907, 33.960476, 28.356232>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.744404, 34.298473, 28.660831> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.948391, 34.642040, 28.642107>,  <39.070782, 34.848183, 28.630873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.948391, 34.642040, 28.642107>,  <38.744404, 34.298473, 28.660831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.948391, 34.642040, 28.642107> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844526, 0.489597, -0.216958,
		-0.163430, 0.150176, 0.975058,
		0.509968, 0.858919, -0.046812,
		39.101379, 34.899715, 28.628063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.302994, 34.826588, 29.009348>,  <38.744404, 34.298473, 28.660831>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.302994, 34.826588, 29.009348> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.547455, 35.048779, 28.783804>,  <38.694130, 35.182095, 28.648478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.547455, 35.048779, 28.783804>,  <38.302994, 34.826588, 29.009348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.547455, 35.048779, 28.783804> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790592, 0.394045, -0.468714,
		-0.038172, 0.732240, 0.679976,
		0.611152, 0.555476, -0.563862,
		38.730801, 35.215420, 28.614645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.701687, 34.589104, 29.324863>,  <38.302994, 34.826588, 29.009348>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.701687, 34.589104, 29.324863> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.396767, 34.354923, 29.214487>,  <37.213814, 34.214417, 29.148262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.396767, 34.354923, 29.214487>,  <37.701687, 34.589104, 29.324863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.396767, 34.354923, 29.214487> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598940, -0.799689, 0.042052,
		-0.245285, -0.133215, 0.960255,
		-0.762303, -0.585449, -0.275940,
		37.168076, 34.179287, 29.131704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.615120, 34.038715, 29.804733>,  <37.701687, 34.589104, 29.324863>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.615120, 34.038715, 29.804733> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.470890, 33.912281, 29.453718>,  <37.384354, 33.836422, 29.243109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.470890, 33.912281, 29.453718>,  <37.615120, 34.038715, 29.804733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.470890, 33.912281, 29.453718> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517755, -0.850397, 0.093565,
		-0.775832, -0.420613, 0.470287,
		-0.360576, -0.316085, -0.877539,
		37.362717, 33.817455, 29.190456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.645599, 33.380116, 29.895247>,  <37.615120, 34.038715, 29.804733>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.645599, 33.380116, 29.895247> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.582230, 33.378853, 29.500299>,  <37.544209, 33.378098, 29.263332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.582230, 33.378853, 29.500299>,  <37.645599, 33.380116, 29.895247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.582230, 33.378853, 29.500299> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330260, -0.942566, -0.049980,
		-0.930500, -0.334005, 0.150369,
		-0.158426, -0.003155, -0.987366,
		37.534702, 33.377907, 29.204090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.340084, 32.759361, 29.705475>,  <37.645599, 33.380116, 29.895247>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.340084, 32.759361, 29.705475> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.482891, 32.861610, 29.346100>,  <37.568577, 32.922958, 29.130474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.482891, 32.861610, 29.346100>,  <37.340084, 32.759361, 29.705475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.482891, 32.861610, 29.346100> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379927, -0.918413, -0.110329,
		-0.853342, -0.301951, -0.425010,
		0.357021, 0.255621, -0.898440,
		37.589996, 32.938297, 29.076569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.207077, 32.102318, 29.166248>,  <37.340084, 32.759361, 29.705475>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.207077, 32.102318, 29.166248> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.498798, 32.333939, 29.020477>,  <37.673832, 32.472912, 28.933014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.498798, 32.333939, 29.020477>,  <37.207077, 32.102318, 29.166248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.498798, 32.333939, 29.020477> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546129, -0.813540, -0.199738,
		-0.412136, -0.053355, -0.909559,
		0.729305, 0.579056, -0.364428,
		37.717590, 32.507656, 28.911148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.518967, 31.772905, 28.606510>,  <37.207077, 32.102318, 29.166248>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.518967, 31.772905, 28.606510> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.814800, 32.019382, 28.714823>,  <37.992298, 32.167271, 28.779810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.814800, 32.019382, 28.714823>,  <37.518967, 31.772905, 28.606510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.814800, 32.019382, 28.714823> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650196, -0.758066, -0.050802,
		0.173966, 0.213633, -0.961299,
		0.739582, 0.616195, 0.270781,
		38.036674, 32.204243, 28.796057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.106617, 31.552696, 28.251095>,  <37.518967, 31.772905, 28.606510>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.106617, 31.552696, 28.251095> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.244926, 31.765726, 28.560106>,  <38.327911, 31.893545, 28.745514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.244926, 31.765726, 28.560106>,  <38.106617, 31.552696, 28.251095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.244926, 31.765726, 28.560106> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766097, -0.635622, 0.095294,
		0.541787, 0.558881, -0.627788,
		0.345778, 0.532576, 0.772529,
		38.348660, 31.925499, 28.791864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.772213, 31.681797, 28.033106>,  <38.106617, 31.552696, 28.251095>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.772213, 31.681797, 28.033106> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.760345, 31.737337, 28.429052>,  <38.753223, 31.770662, 28.666620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.760345, 31.737337, 28.429052>,  <38.772213, 31.681797, 28.033106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.760345, 31.737337, 28.429052> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752323, -0.648930, 0.113580,
		0.658126, 0.748071, -0.085206,
		-0.029673, 0.138852, 0.989869,
		38.751442, 31.778994, 28.726013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.414333, 31.779478, 28.252720>,  <38.772213, 31.681797, 28.033106>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.414333, 31.779478, 28.252720> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.257225, 31.689594, 28.609423>,  <39.162960, 31.635664, 28.823444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.257225, 31.689594, 28.609423>,  <39.414333, 31.779478, 28.252720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.257225, 31.689594, 28.609423> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824345, -0.515873, 0.233090,
		0.407657, 0.826669, 0.387859,
		-0.392774, -0.224709, 0.891759,
		39.139393, 31.622181, 28.876951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.990150, 31.759842, 28.666311>,  <39.414333, 31.779478, 28.252720>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.990150, 31.759842, 28.666311> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.719284, 31.551670, 28.874386>,  <39.556763, 31.426767, 28.999231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.719284, 31.551670, 28.874386>,  <39.990150, 31.759842, 28.666311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.719284, 31.551670, 28.874386> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704902, -0.661609, 0.255709,
		0.211081, 0.539838, 0.814874,
		-0.677169, -0.520431, 0.520186,
		39.516132, 31.395540, 29.030441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.357029, 31.586796, 29.214001>,  <39.990150, 31.759842, 28.666311>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.357029, 31.586796, 29.214001> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.039612, 31.345638, 29.247013>,  <39.849163, 31.200945, 29.266821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.039612, 31.345638, 29.247013>,  <40.357029, 31.586796, 29.214001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.039612, 31.345638, 29.247013> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562332, -0.674714, 0.478061,
		-0.232535, 0.425772, 0.874440,
		-0.793543, -0.602892, 0.082530,
		39.801548, 31.164770, 29.271772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.315258, 31.408646, 29.974926>,  <40.357029, 31.586796, 29.214001>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.315258, 31.408646, 29.974926> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.136669, 31.128883, 29.751678>,  <40.029514, 30.961025, 29.617731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.136669, 31.128883, 29.751678>,  <40.315258, 31.408646, 29.974926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.136669, 31.128883, 29.751678> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622843, -0.690740, 0.367350,
		-0.642440, -0.183607, 0.744016,
		-0.446473, -0.699405, -0.558117,
		40.002728, 30.919062, 29.584244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<34.767437, 37.334915, 28.790081> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.806801, 37.119411, 28.455404>,  <34.830418, 36.990108, 28.254599>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.806801, 37.119411, 28.455404>,  <34.767437, 37.334915, 28.790081>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.806801, 37.119411, 28.455404> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217952, -0.808692, 0.546365,
		-0.970986, -0.236124, 0.037843,
		0.098406, -0.538760, -0.836692,
		34.836323, 36.957783, 28.204397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.422935, 36.657639, 28.904848>,  <34.767437, 37.334915, 28.790081>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.422935, 36.657639, 28.904848> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.700203, 36.618454, 28.619215>,  <34.866566, 36.594944, 28.447834>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.700203, 36.618454, 28.619215>,  <34.422935, 36.657639, 28.904848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.700203, 36.618454, 28.619215> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310164, -0.853760, 0.418201,
		-0.650623, -0.511369, -0.561420,
		0.693173, -0.097959, -0.714084,
		34.908154, 36.589066, 28.404989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.643154, 35.948704, 28.924458>,  <34.422935, 36.657639, 28.904848>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.643154, 35.948704, 28.924458> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.929737, 36.074615, 28.675425>,  <35.101685, 36.150162, 28.526005>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.929737, 36.074615, 28.675425>,  <34.643154, 35.948704, 28.924458>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.929737, 36.074615, 28.675425> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457032, -0.886027, 0.077964,
		-0.527081, -0.340397, -0.778662,
		0.716454, 0.314780, -0.622581,
		35.144672, 36.169048, 28.488651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.722485, 35.337692, 28.500610>,  <34.643154, 35.948704, 28.924458>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.722485, 35.337692, 28.500610> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.039078, 35.581585, 28.483692>,  <35.229034, 35.727921, 28.473541>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.039078, 35.581585, 28.483692>,  <34.722485, 35.337692, 28.500610>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.039078, 35.581585, 28.483692> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604672, -0.771066, 0.199573,
		0.089075, -0.183532, -0.978970,
		0.791478, 0.609732, -0.042294,
		35.276520, 35.764503, 28.471004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.130146, 35.011795, 28.065197>,  <34.722485, 35.337692, 28.500610>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.130146, 35.011795, 28.065197> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.348980, 35.259865, 28.290085>,  <35.480278, 35.408707, 28.425018>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.348980, 35.259865, 28.290085>,  <35.130146, 35.011795, 28.065197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.348980, 35.259865, 28.290085> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726392, -0.685508, 0.049333,
		0.416002, 0.381403, -0.825514,
		0.547081, 0.620170, 0.562221,
		35.513103, 35.445915, 28.458752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.865044, 35.153591, 27.656376>,  <35.130146, 35.011795, 28.065197>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.865044, 35.153591, 27.656376> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.897072, 35.231991, 28.047308>,  <35.916290, 35.279030, 28.281868>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.897072, 35.231991, 28.047308>,  <35.865044, 35.153591, 27.656376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.897072, 35.231991, 28.047308> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821262, -0.568632, 0.046753,
		0.564905, 0.798901, -0.206496,
		0.080069, 0.195998, 0.977330,
		35.921093, 35.290791, 28.340508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.613747, 35.281975, 27.825502>,  <35.865044, 35.153591, 27.656376>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.613747, 35.281975, 27.825502> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.455509, 35.151077, 28.168760>,  <36.360565, 35.072536, 28.374716>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.455509, 35.151077, 28.168760>,  <36.613747, 35.281975, 27.825502>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.455509, 35.151077, 28.168760> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750124, -0.654248, 0.096304,
		0.529926, 0.681814, 0.504291,
		-0.395592, -0.327246, 0.858147,
		36.336830, 35.052902, 28.426205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.196472, 34.850651, 28.085138>,  <36.613747, 35.281975, 27.825502>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.196472, 34.850651, 28.085138> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.941151, 34.805168, 28.389675>,  <36.787956, 34.777878, 28.572397>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.941151, 34.805168, 28.389675>,  <37.196472, 34.850651, 28.085138>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.941151, 34.805168, 28.389675> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558986, -0.748452, 0.356867,
		0.529248, 0.653368, 0.541301,
		-0.638303, -0.113708, 0.761340,
		36.749660, 34.771057, 28.618076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.567829, 34.900581, 28.683399>,  <37.196472, 34.850651, 28.085138>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.567829, 34.900581, 28.683399> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.246532, 34.690250, 28.795330>,  <37.053753, 34.564053, 28.862488>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.246532, 34.690250, 28.795330>,  <37.567829, 34.900581, 28.683399>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.246532, 34.690250, 28.795330> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593621, -0.745417, 0.303260,
		0.049125, 0.409703, 0.910895,
		-0.803244, -0.525829, 0.279827,
		37.005558, 34.532501, 28.879278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.953766, 35.440144, 28.949331>,  <37.567829, 34.900581, 28.683399>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.953766, 35.440144, 28.949331> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.226009, 35.462517, 28.657125>,  <38.389355, 35.475941, 28.481802>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.226009, 35.462517, 28.657125>,  <37.953766, 35.440144, 28.949331>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.226009, 35.462517, 28.657125> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645187, 0.518200, -0.561430,
		0.347149, 0.853429, 0.388777,
		0.680604, 0.055934, -0.730513,
		38.430191, 35.479298, 28.437971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.795311, 36.063606, 28.509604>,  <37.953766, 35.440144, 28.949331>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.795311, 36.063606, 28.509604> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.038849, 35.867542, 28.260107>,  <38.184971, 35.749905, 28.110409>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.038849, 35.867542, 28.260107>,  <37.795311, 36.063606, 28.509604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.038849, 35.867542, 28.260107> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375991, 0.514043, -0.770967,
		0.698524, 0.703922, 0.128679,
		0.608847, -0.490157, -0.623740,
		38.221504, 35.720493, 28.072985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.200237, 36.549202, 28.109573>,  <37.795311, 36.063606, 28.509604>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.200237, 36.549202, 28.109573> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.162827, 36.212429, 27.897007>,  <38.140381, 36.010365, 27.769468>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.162827, 36.212429, 27.897007>,  <38.200237, 36.549202, 28.109573>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.162827, 36.212429, 27.897007> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185345, 0.539146, -0.821565,
		0.978213, 0.021659, -0.206471,
		-0.093524, -0.841934, -0.531414,
		38.134769, 35.959850, 27.737583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.378567, 36.723080, 27.514460>,  <38.200237, 36.549202, 28.109573>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.378567, 36.723080, 27.514460> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.208679, 36.378582, 27.402840>,  <38.106747, 36.171883, 27.335867>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.208679, 36.378582, 27.402840>,  <38.378567, 36.723080, 27.514460>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.208679, 36.378582, 27.402840> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402196, 0.455643, -0.794121,
		0.811080, -0.225047, -0.539911,
		-0.424721, -0.861245, -0.279050,
		38.081264, 36.120209, 27.319124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.617950, 36.578690, 26.813711>,  <38.378567, 36.723080, 27.514460>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.617950, 36.578690, 26.813711> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.262802, 36.407608, 26.881544>,  <38.049713, 36.304958, 26.922243>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.262802, 36.407608, 26.881544>,  <38.617950, 36.578690, 26.813711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.262802, 36.407608, 26.881544> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376990, 0.464977, -0.801046,
		0.263760, -0.775154, -0.574079,
		-0.887868, -0.427706, 0.169583,
		37.996441, 36.279297, 26.932419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.445396, 36.435764, 26.154148>,  <38.617950, 36.578690, 26.813711>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.445396, 36.435764, 26.154148> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.101727, 36.353935, 26.341747>,  <37.895523, 36.304836, 26.454308>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.101727, 36.353935, 26.341747>,  <38.445396, 36.435764, 26.154148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.101727, 36.353935, 26.341747> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506550, 0.469486, -0.723180,
		-0.072243, -0.858913, -0.507000,
		-0.859178, -0.204576, 0.469000,
		37.843971, 36.292561, 26.482447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.023182, 36.063862, 25.750324>,  <38.445396, 36.435764, 26.154148>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.023182, 36.063862, 25.750324> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.793056, 36.264339, 26.008881>,  <37.654980, 36.384624, 26.164015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.793056, 36.264339, 26.008881>,  <38.023182, 36.063862, 25.750324>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.793056, 36.264339, 26.008881> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444296, 0.472029, -0.761439,
		-0.686742, -0.725255, -0.048887,
		-0.575314, 0.501192, 0.646390,
		37.620461, 36.414696, 26.202797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.326336, 35.936245, 25.563824>,  <38.023182, 36.063862, 25.750324>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.326336, 35.936245, 25.563824> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.316109, 36.270718, 25.782969>,  <37.309971, 36.471401, 25.914455>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.316109, 36.270718, 25.782969>,  <37.326336, 35.936245, 25.563824>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.316109, 36.270718, 25.782969> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502910, 0.462879, -0.729948,
		-0.863960, -0.294192, 0.408686,
		-0.025573, 0.836178, 0.547862,
		37.308437, 36.521572, 25.947327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.646824, 36.096405, 25.625534>,  <37.326336, 35.936245, 25.563824>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.646824, 36.096405, 25.625534> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.841873, 36.440353, 25.685987>,  <36.958904, 36.646721, 25.722260>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.841873, 36.440353, 25.685987>,  <36.646824, 36.096405, 25.625534>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.841873, 36.440353, 25.685987> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642355, 0.470597, -0.604912,
		-0.591270, 0.197890, 0.781818,
		0.487627, 0.859871, 0.151134,
		36.988163, 36.698315, 25.731327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.104424, 36.595703, 25.798651>,  <36.646824, 36.096405, 25.625534>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.104424, 36.595703, 25.798651> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.420368, 36.795830, 25.656776>,  <36.609936, 36.915905, 25.571651>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.420368, 36.795830, 25.656776>,  <36.104424, 36.595703, 25.798651>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.420368, 36.795830, 25.656776> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610596, 0.587449, -0.531109,
		-0.057362, 0.636072, 0.769494,
		0.789862, 0.500315, -0.354686,
		36.657326, 36.945923, 25.550371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.976215, 37.377522, 25.927420>,  <36.104424, 36.595703, 25.798651>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.976215, 37.377522, 25.927420> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.274269, 37.399647, 25.661572>,  <36.453102, 37.412922, 25.502064>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.274269, 37.399647, 25.661572>,  <35.976215, 37.377522, 25.927420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.274269, 37.399647, 25.661572> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571054, 0.567683, -0.592986,
		0.344492, 0.821387, 0.454587,
		0.745132, 0.055315, -0.664619,
		36.497810, 37.416241, 25.462185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.979095, 38.006912, 25.759031>,  <35.976215, 37.377522, 25.927420>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.979095, 38.006912, 25.759031> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.206223, 37.864082, 25.462360>,  <36.342499, 37.778385, 25.284359>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.206223, 37.864082, 25.462360>,  <35.979095, 38.006912, 25.759031>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.206223, 37.864082, 25.462360> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427925, 0.641649, -0.636527,
		0.703181, 0.678814, 0.211540,
		0.567818, -0.357070, -0.741676,
		36.376568, 37.756962, 25.239857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.266842, 38.625465, 25.444281>,  <35.979095, 38.006912, 25.759031>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.266842, 38.625465, 25.444281> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.290222, 38.318817, 25.188505>,  <36.304249, 38.134830, 25.035040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.290222, 38.318817, 25.188505>,  <36.266842, 38.625465, 25.444281>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.290222, 38.318817, 25.188505> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525443, 0.521003, -0.672656,
		0.848819, 0.375302, -0.372364,
		0.058447, -0.766619, -0.639437,
		36.307755, 38.088833, 24.996674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.488522, 38.884640, 24.812550>,  <36.266842, 38.625465, 25.444281>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.488522, 38.884640, 24.812550> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.340149, 38.523739, 24.724590>,  <36.251125, 38.307198, 24.671816>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.340149, 38.523739, 24.724590>,  <36.488522, 38.884640, 24.812550>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.340149, 38.523739, 24.724590> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483540, 0.389806, -0.783735,
		0.792841, -0.184386, -0.580866,
		-0.370934, -0.902249, -0.219896,
		36.228870, 38.253063, 24.658621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<32.953922, 31.565271, 20.643936> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.149567, 31.863678, 20.824705>,  <33.266953, 32.042721, 20.933167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.149567, 31.863678, 20.824705>,  <32.953922, 31.565271, 20.643936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.149567, 31.863678, 20.824705> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770260, -0.612530, 0.177502,
		0.409235, 0.261279, -0.874219,
		0.489108, 0.746016, 0.451922,
		33.296299, 32.087482, 20.960281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.600639, 31.210344, 20.531773>,  <32.953922, 31.565271, 20.643936>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.600639, 31.210344, 20.531773> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.654041, 31.512526, 20.788355>,  <33.686081, 31.693834, 20.942305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.654041, 31.512526, 20.788355>,  <33.600639, 31.210344, 20.531773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.654041, 31.512526, 20.788355> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734582, -0.509906, 0.447643,
		0.665256, 0.411443, -0.623016,
		0.133500, 0.755454, 0.641457,
		33.694092, 31.739162, 20.980793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.265804, 31.412920, 20.457647>,  <33.600639, 31.210344, 20.531773>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.265804, 31.412920, 20.457647> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.175301, 31.564592, 20.816542>,  <34.120998, 31.655596, 21.031878>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.175301, 31.564592, 20.816542>,  <34.265804, 31.412920, 20.457647>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.175301, 31.564592, 20.816542> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876241, -0.323094, 0.357507,
		0.425451, 0.867082, -0.259152,
		-0.226257, 0.379182, 0.897234,
		34.107422, 31.678347, 21.085712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.763630, 31.843620, 20.736576>,  <34.265804, 31.412920, 20.457647>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.763630, 31.843620, 20.736576> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.596611, 31.696564, 21.068958>,  <34.496399, 31.608330, 21.268389>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.596611, 31.696564, 21.068958>,  <34.763630, 31.843620, 20.736576>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.596611, 31.696564, 21.068958> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896598, -0.315170, 0.311094,
		0.147522, 0.874932, 0.461227,
		-0.417552, -0.367642, 0.830957,
		34.471344, 31.586271, 21.318245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.148941, 32.093018, 21.439569>,  <34.763630, 31.843620, 20.736576>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.148941, 32.093018, 21.439569> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.954910, 31.764217, 21.558907>,  <34.838490, 31.566936, 21.630508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.954910, 31.764217, 21.558907>,  <35.148941, 32.093018, 21.439569>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.954910, 31.764217, 21.558907> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838863, -0.341043, 0.424262,
		-0.246997, 0.456070, 0.854981,
		-0.485079, -0.822003, 0.298344,
		34.809387, 31.517616, 21.648409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.325436, 31.949060, 22.187683>,  <35.148941, 32.093018, 21.439569>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.325436, 31.949060, 22.187683> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.176216, 31.592499, 22.084742>,  <35.086685, 31.378561, 22.022976>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.176216, 31.592499, 22.084742>,  <35.325436, 31.949060, 22.187683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.176216, 31.592499, 22.084742> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798471, -0.449710, 0.400257,
		-0.472526, -0.056176, 0.879524,
		-0.373046, -0.891406, -0.257355,
		35.064301, 31.325077, 22.007536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.220039, 31.553461, 22.792164>,  <35.325436, 31.949060, 22.187683>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.220039, 31.553461, 22.792164> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.265270, 31.298471, 22.487312>,  <35.292408, 31.145477, 22.304401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.265270, 31.298471, 22.487312>,  <35.220039, 31.553461, 22.792164>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.265270, 31.298471, 22.487312> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750465, -0.447902, 0.485990,
		-0.651165, -0.626905, 0.427755,
		0.113077, -0.637475, -0.762128,
		35.299194, 31.107229, 22.258675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.492130, 30.851740, 23.085003>,  <35.220039, 31.553461, 22.792164>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.492130, 30.851740, 23.085003> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.590843, 30.835447, 22.697718>,  <35.650070, 30.825672, 22.465345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.590843, 30.835447, 22.697718>,  <35.492130, 30.851740, 23.085003>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.590843, 30.835447, 22.697718> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825772, -0.514034, 0.232099,
		-0.507148, -0.856803, -0.093222,
		0.246782, -0.040729, -0.968215,
		35.664879, 30.823227, 22.407253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.671940, 30.115459, 23.027485>,  <35.492130, 30.851740, 23.085003>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.671940, 30.115459, 23.027485> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.837154, 30.311272, 22.720303>,  <35.936283, 30.428759, 22.535994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.837154, 30.311272, 22.720303>,  <35.671940, 30.115459, 23.027485>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.837154, 30.311272, 22.720303> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863765, -0.477824, 0.159983,
		-0.288631, -0.729414, -0.620199,
		0.413040, 0.489530, -0.767957,
		35.961067, 30.458130, 22.489916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.122311, 29.629282, 22.659180>,  <35.671940, 30.115459, 23.027485>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.122311, 29.629282, 22.659180> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.271885, 29.982939, 22.547131>,  <36.361629, 30.195133, 22.479900>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.271885, 29.982939, 22.547131>,  <36.122311, 29.629282, 22.659180>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.271885, 29.982939, 22.547131> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927334, -0.351544, 0.128327,
		0.014983, -0.307755, -0.951348,
		0.373933, 0.884140, -0.280125,
		36.384064, 30.248180, 22.463093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.610348, 29.478048, 22.168409>,  <36.122311, 29.629282, 22.659180>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.610348, 29.478048, 22.168409> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.734482, 29.844179, 22.271067>,  <36.808964, 30.063858, 22.332661>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.734482, 29.844179, 22.271067>,  <36.610348, 29.478048, 22.168409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.734482, 29.844179, 22.271067> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824118, -0.393612, 0.407307,
		0.473838, 0.085102, -0.876491,
		0.310334, 0.915329, 0.256642,
		36.827583, 30.118778, 22.348059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.309196, 29.447979, 22.043514>,  <36.610348, 29.478048, 22.168409>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.309196, 29.447979, 22.043514> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.256344, 29.770615, 22.273977>,  <37.224632, 29.964195, 22.412254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.256344, 29.770615, 22.273977>,  <37.309196, 29.447979, 22.043514>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.256344, 29.770615, 22.273977> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731209, -0.313124, 0.606042,
		0.669235, 0.501365, -0.548413,
		-0.132127, 0.806590, 0.576156,
		37.216705, 30.012592, 22.446823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.983044, 29.724855, 22.213839>,  <37.309196, 29.447979, 22.043514>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.983044, 29.724855, 22.213839> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.738655, 29.869247, 22.495663>,  <37.592022, 29.955883, 22.664757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.738655, 29.869247, 22.495663>,  <37.983044, 29.724855, 22.213839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.738655, 29.869247, 22.495663> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662251, -0.254570, 0.704711,
		0.433748, 0.897155, -0.083526,
		-0.610972, 0.360982, 0.704561,
		37.555363, 29.977543, 22.707031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.461014, 30.075285, 22.636463>,  <37.983044, 29.724855, 22.213839>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.461014, 30.075285, 22.636463> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.129704, 29.990475, 22.843927>,  <37.930916, 29.939589, 22.968405>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.129704, 29.990475, 22.843927>,  <38.461014, 30.075285, 22.636463>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.129704, 29.990475, 22.843927> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559944, -0.347226, 0.752261,
		0.020593, 0.913498, 0.406321,
		-0.828274, -0.212026, 0.518659,
		37.881222, 29.926867, 22.999525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.730732, 30.859318, 22.688459>,  <38.461014, 30.075285, 22.636463>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.730732, 30.859318, 22.688459> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.042561, 31.038536, 22.513409>,  <39.229660, 31.146067, 22.408379>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.042561, 31.038536, 22.513409>,  <38.730732, 30.859318, 22.688459>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.042561, 31.038536, 22.513409> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624261, 0.499402, -0.600746,
		-0.050610, 0.741520, 0.669019,
		0.779575, 0.448046, -0.437627,
		39.276432, 31.172951, 22.382120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.577465, 31.529314, 22.625549>,  <38.730732, 30.859318, 22.688459>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.577465, 31.529314, 22.625549> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.866634, 31.507534, 22.350037>,  <39.040134, 31.494465, 22.184729>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.866634, 31.507534, 22.350037>,  <38.577465, 31.529314, 22.625549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.866634, 31.507534, 22.350037> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530935, 0.594160, -0.604220,
		0.442148, 0.802502, 0.400620,
		0.722920, -0.054451, -0.688783,
		39.083511, 31.491199, 22.143402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.802910, 32.131649, 22.594198>,  <38.577465, 31.529314, 22.625549>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.802910, 32.131649, 22.594198> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.874779, 31.941326, 22.249798>,  <38.917900, 31.827131, 22.043158>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.874779, 31.941326, 22.249798>,  <38.802910, 32.131649, 22.594198>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.874779, 31.941326, 22.249798> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601002, 0.639813, -0.478995,
		0.778790, 0.603525, -0.171006,
		0.179674, -0.475812, -0.861000,
		38.928680, 31.798582, 21.991497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.882854, 32.655033, 22.072697>,  <38.802910, 32.131649, 22.594198>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.882854, 32.655033, 22.072697> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.845741, 32.323196, 21.852453>,  <38.823475, 32.124096, 21.720306>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.845741, 32.323196, 21.852453>,  <38.882854, 32.655033, 22.072697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.845741, 32.323196, 21.852453> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563569, 0.499644, -0.657834,
		0.820842, 0.249270, -0.513890,
		-0.092784, -0.829590, -0.550610,
		38.817905, 32.074318, 21.687271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.920620, 32.856892, 21.407179>,  <38.882854, 32.655033, 22.072697>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.920620, 32.856892, 21.407179> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.751324, 32.496700, 21.367157>,  <38.649746, 32.280586, 21.343143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.751324, 32.496700, 21.367157>,  <38.920620, 32.856892, 21.407179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.751324, 32.496700, 21.367157> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723038, 0.402242, -0.561621,
		0.545974, -0.165354, -0.821323,
		-0.423237, -0.900477, -0.100057,
		38.624352, 32.226559, 21.337141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.733704, 32.906639, 20.627642>,  <38.920620, 32.856892, 21.407179>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.733704, 32.906639, 20.627642> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.513062, 32.622585, 20.802656>,  <38.380676, 32.452152, 20.907665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.513062, 32.622585, 20.802656>,  <38.733704, 32.906639, 20.627642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.513062, 32.622585, 20.802656> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779388, 0.251950, -0.573651,
		0.297138, -0.657434, -0.692452,
		-0.551601, -0.710142, 0.437532,
		38.347580, 32.409542, 20.933916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.348442, 32.463825, 20.056704>,  <38.733704, 32.906639, 20.627642>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.348442, 32.463825, 20.056704> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.149277, 32.445019, 20.403086>,  <38.029778, 32.433735, 20.610914>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.149277, 32.445019, 20.403086>,  <38.348442, 32.463825, 20.056704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.149277, 32.445019, 20.403086> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788425, 0.440436, -0.429420,
		-0.361208, -0.896552, -0.256365,
		-0.497910, -0.047014, 0.865954,
		37.999905, 32.430916, 20.662872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.656094, 32.275963, 19.835730>,  <38.348442, 32.463825, 20.056704>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.656094, 32.275963, 19.835730> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.609779, 32.406788, 20.210882>,  <37.581993, 32.485283, 20.435974>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.609779, 32.406788, 20.210882>,  <37.656094, 32.275963, 19.835730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.609779, 32.406788, 20.210882> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889718, 0.385631, -0.244315,
		-0.441583, -0.862739, 0.246346,
		-0.115782, 0.327064, 0.937883,
		37.575047, 32.504906, 20.492247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.927330, 32.150917, 20.039484>,  <37.656094, 32.275963, 19.835730>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.927330, 32.150917, 20.039484> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.024109, 32.425312, 20.313967>,  <37.082176, 32.589951, 20.478657>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.024109, 32.425312, 20.313967>,  <36.927330, 32.150917, 20.039484>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.024109, 32.425312, 20.313967> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.893760, 0.432857, -0.117590,
		-0.377695, -0.584855, 0.717837,
		0.241948, 0.685988, 0.686209,
		37.096695, 32.631107, 20.519829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.329094, 32.157261, 20.622192>,  <36.927330, 32.150917, 20.039484>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.329094, 32.157261, 20.622192> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.542797, 32.495220, 20.632893>,  <36.671017, 32.697998, 20.639313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.542797, 32.495220, 20.632893>,  <36.329094, 32.157261, 20.622192>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.542797, 32.495220, 20.632893> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844372, 0.531883, 0.064321,
		0.040115, -0.056953, 0.997571,
		0.534254, 0.844901, 0.026753,
		36.703072, 32.748692, 20.640919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.914646, 32.590256, 21.037142>,  <36.329094, 32.157261, 20.622192>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.914646, 32.590256, 21.037142> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.165585, 32.846317, 20.859766>,  <36.316147, 32.999954, 20.753340>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.165585, 32.846317, 20.859766>,  <35.914646, 32.590256, 21.037142>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.165585, 32.846317, 20.859766> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752179, 0.645567, -0.132173,
		0.201659, 0.416465, 0.886505,
		0.627344, 0.640157, -0.443440,
		36.353786, 33.038364, 20.726734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.931702, 33.269028, 21.365114>,  <35.914646, 32.590256, 21.037142>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.931702, 33.269028, 21.365114> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.056541, 33.363194, 20.996946>,  <36.131447, 33.419693, 20.776045>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.056541, 33.363194, 20.996946>,  <35.931702, 33.269028, 21.365114>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.056541, 33.363194, 20.996946> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782851, 0.612630, -0.108763,
		0.538272, 0.754497, 0.375497,
		0.312102, 0.235415, -0.920420,
		36.150173, 33.433819, 20.720819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.605762, 33.959778, 21.081171>,  <35.931702, 33.269028, 21.365114>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.605762, 33.959778, 21.081171> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.771328, 33.838814, 20.737724>,  <35.870667, 33.766235, 20.531656>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.771328, 33.838814, 20.737724>,  <35.605762, 33.959778, 21.081171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.771328, 33.838814, 20.737724> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692917, 0.507039, -0.512619,
		0.590373, 0.807131, 0.000326,
		0.413915, -0.302410, -0.858616,
		35.895504, 33.748093, 20.480139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.810040, 34.573273, 20.756483>,  <35.605762, 33.959778, 21.081171>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.810040, 34.573273, 20.756483> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.724579, 34.299530, 20.477627>,  <35.673302, 34.135284, 20.310314>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.724579, 34.299530, 20.477627>,  <35.810040, 34.573273, 20.756483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.724579, 34.299530, 20.477627> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742928, 0.577212, -0.338945,
		0.634358, 0.445509, -0.631753,
		-0.213652, -0.684360, -0.697140,
		35.660484, 34.094223, 20.268484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.335350, 35.064285, 20.469048>,  <35.810040, 34.573273, 20.756483>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.335350, 35.064285, 20.469048> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.551861, 35.400421, 20.457399>,  <36.681767, 35.602100, 20.450411>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.551861, 35.400421, 20.457399>,  <36.335350, 35.064285, 20.469048>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.551861, 35.400421, 20.457399> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796473, -0.501310, 0.338111,
		0.269529, -0.206207, -0.940656,
		0.541281, 0.840337, -0.029120,
		36.714245, 35.652523, 20.448664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.033863, 34.851376, 20.223804>,  <36.335350, 35.064285, 20.469048>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.033863, 34.851376, 20.223804> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.118378, 35.198528, 20.403643>,  <37.169086, 35.406822, 20.511545>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.118378, 35.198528, 20.403643>,  <37.033863, 34.851376, 20.223804>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.118378, 35.198528, 20.403643> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845981, -0.392768, 0.360624,
		0.489566, 0.304153, -0.817200,
		0.211285, 0.867885, 0.449593,
		37.181763, 35.458893, 20.538521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.833794, 35.067219, 20.078377>,  <37.033863, 34.851376, 20.223804>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.833794, 35.067219, 20.078377> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.720921, 35.237591, 20.422228>,  <37.653198, 35.339813, 20.628538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.720921, 35.237591, 20.422228>,  <37.833794, 35.067219, 20.078377>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.720921, 35.237591, 20.422228> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870421, -0.263120, 0.416094,
		0.403413, 0.865650, -0.296493,
		-0.282178, 0.425932, 0.859626,
		37.636269, 35.365372, 20.680117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.410828, 35.405018, 20.294641>,  <37.833794, 35.067219, 20.078377>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.410828, 35.405018, 20.294641> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.177879, 35.381386, 20.618952>,  <38.038113, 35.367207, 20.813538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.177879, 35.381386, 20.618952>,  <38.410828, 35.405018, 20.294641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.177879, 35.381386, 20.618952> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737089, -0.459011, 0.495993,
		0.342851, 0.886464, 0.310862,
		-0.582369, -0.059082, 0.810775,
		38.003170, 35.363663, 20.862185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.808990, 35.690987, 20.697529>,  <38.410828, 35.405018, 20.294641>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.808990, 35.690987, 20.697529> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.572563, 35.481548, 20.942961>,  <38.430706, 35.355885, 21.090219>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.572563, 35.481548, 20.942961>,  <38.808990, 35.690987, 20.697529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.572563, 35.481548, 20.942961> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787407, -0.209496, 0.579743,
		-0.175011, 0.825806, 0.536112,
		-0.591068, -0.523600, 0.613581,
		38.395241, 35.324467, 21.127035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.841965, 36.023972, 21.458689>,  <38.808990, 35.690987, 20.697529>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.841965, 36.023972, 21.458689> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.751492, 35.634529, 21.470886>,  <38.697208, 35.400864, 21.478205>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.751492, 35.634529, 21.470886>,  <38.841965, 36.023972, 21.458689>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.751492, 35.634529, 21.470886> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653507, -0.128453, 0.745941,
		-0.722336, 0.188647, 0.665314,
		-0.226181, -0.973608, 0.030496,
		38.683636, 35.342445, 21.480036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.740414, 36.010689, 22.203581>,  <38.841965, 36.023972, 21.458689>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.740414, 36.010689, 22.203581> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.769699, 35.631123, 22.080816>,  <38.787270, 35.403381, 22.007158>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.769699, 35.631123, 22.080816>,  <38.740414, 36.010689, 22.203581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.769699, 35.631123, 22.080816> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537771, -0.221605, 0.813446,
		-0.839907, -0.224600, 0.494077,
		0.073210, -0.948919, -0.306910,
		38.791660, 35.346447, 21.988743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.788322, 35.671799, 22.765844>,  <38.740414, 36.010689, 22.203581>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.788322, 35.671799, 22.765844> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.932621, 35.403152, 22.506987>,  <39.019199, 35.241962, 22.351671>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.932621, 35.403152, 22.506987>,  <38.788322, 35.671799, 22.765844>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.932621, 35.403152, 22.506987> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681526, -0.283856, 0.674499,
		-0.636701, -0.684365, 0.355326,
		0.360742, -0.671618, -0.647144,
		39.040844, 35.201668, 22.312843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.836617, 34.941570, 23.066204>,  <38.788322, 35.671799, 22.765844>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.836617, 34.941570, 23.066204> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.125641, 34.996304, 22.795151>,  <39.299053, 35.029144, 22.632519>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.125641, 34.996304, 22.795151>,  <38.836617, 34.941570, 23.066204>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.125641, 34.996304, 22.795151> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681241, -0.307621, 0.664290,
		-0.117557, -0.941619, -0.315490,
		0.722559, 0.136833, -0.677632,
		39.342407, 35.037354, 22.591862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.111023, 34.351139, 23.023928>,  <38.836617, 34.941570, 23.066204>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.111023, 34.351139, 23.023928> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.367054, 34.634312, 22.904512>,  <39.520672, 34.804214, 22.832863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.367054, 34.634312, 22.904512>,  <39.111023, 34.351139, 23.023928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.367054, 34.634312, 22.904512> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684672, -0.349279, 0.639709,
		0.348598, -0.613868, -0.708269,
		0.640081, 0.707933, -0.298540,
		39.559078, 34.846691, 22.814951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.766335, 34.046146, 22.751354>,  <39.111023, 34.351139, 23.023928>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.766335, 34.046146, 22.751354> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.865341, 34.423943, 22.837763>,  <39.924744, 34.650620, 22.889608>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.865341, 34.423943, 22.837763>,  <39.766335, 34.046146, 22.751354>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.865341, 34.423943, 22.837763> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816328, -0.323386, 0.478572,
		0.521866, 0.057889, -0.851061,
		0.247517, 0.944495, 0.216020,
		39.939598, 34.707291, 22.902569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.398365, 34.079285, 22.573772>,  <39.766335, 34.046146, 22.751354>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.398365, 34.079285, 22.573772> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.345943, 34.374996, 22.837980>,  <40.314491, 34.552425, 22.996506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.345943, 34.374996, 22.837980>,  <40.398365, 34.079285, 22.573772>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.345943, 34.374996, 22.837980> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868953, -0.235066, 0.435505,
		0.477227, 0.631034, -0.611596,
		-0.131053, 0.739283, 0.660519,
		40.306629, 34.596783, 23.036137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.001644, 34.531364, 22.498962>,  <40.398365, 34.079285, 22.573772>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.001644, 34.531364, 22.498962> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.835609, 34.561123, 22.861656>,  <40.735989, 34.578979, 23.079273>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.835609, 34.561123, 22.861656>,  <41.001644, 34.531364, 22.498962>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.835609, 34.561123, 22.861656> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894965, -0.145755, 0.421656,
		0.163532, 0.986519, -0.006085,
		-0.415085, 0.074400, 0.906735,
		40.711082, 34.583443, 23.133677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.483822, 34.840263, 22.831268>,  <41.001644, 34.531364, 22.498962>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.483822, 34.840263, 22.831268> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.292332, 34.743267, 23.168793>,  <41.177437, 34.685070, 23.371307>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.292332, 34.743267, 23.168793>,  <41.483822, 34.840263, 22.831268>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.292332, 34.743267, 23.168793> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846392, -0.382888, 0.370158,
		0.233326, 0.891401, 0.388539,
		-0.478726, -0.242489, 0.843813,
		41.148712, 34.670521, 23.421936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<36.648987, 38.757385, 24.023922> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.333824, 38.530975, 24.120935>,  <36.144726, 38.395130, 24.179144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.333824, 38.530975, 24.120935>,  <36.648987, 38.757385, 24.023922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.333824, 38.530975, 24.120935> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479461, 0.316730, -0.818413,
		0.386426, -0.761115, -0.520940,
		-0.787903, -0.566027, 0.242533,
		36.097454, 38.361168, 24.193695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.517544, 38.332703, 23.368790>,  <36.648987, 38.757385, 24.023922>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.517544, 38.332703, 23.368790> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.187191, 38.339672, 23.594217>,  <35.988979, 38.343853, 23.729473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.187191, 38.339672, 23.594217>,  <36.517544, 38.332703, 23.368790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.187191, 38.339672, 23.594217> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534939, 0.291666, -0.792951,
		-0.178192, -0.956361, -0.231561,
		-0.825886, 0.017427, 0.563568,
		35.939426, 38.344898, 23.763287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.022831, 37.932983, 23.044035>,  <36.517544, 38.332703, 23.368790>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.022831, 37.932983, 23.044035> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.807617, 38.176273, 23.277473>,  <35.678490, 38.322247, 23.417536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.807617, 38.176273, 23.277473>,  <36.022831, 37.932983, 23.044035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.807617, 38.176273, 23.277473> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409325, 0.416712, -0.811668,
		-0.736867, -0.675584, 0.024757,
		-0.538033, 0.608225, 0.583595,
		35.646206, 38.358742, 23.452553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.354954, 38.086243, 22.629448>,  <36.022831, 37.932983, 23.044035>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.354954, 38.086243, 22.629448> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.315044, 38.361000, 22.917398>,  <35.291100, 38.525856, 23.090168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.315044, 38.361000, 22.917398>,  <35.354954, 38.086243, 22.629448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.315044, 38.361000, 22.917398> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614783, 0.526310, -0.587401,
		-0.782361, -0.501173, 0.369780,
		-0.099770, 0.686894, 0.719877,
		35.285114, 38.567070, 23.133362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.648815, 38.111721, 22.765963>,  <35.354954, 38.086243, 22.629448>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.648815, 38.111721, 22.765963> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.785385, 38.460602, 22.906069>,  <34.867329, 38.669930, 22.990131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.785385, 38.460602, 22.906069>,  <34.648815, 38.111721, 22.765963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.785385, 38.460602, 22.906069> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759198, 0.475615, -0.444306,
		-0.554117, -0.114222, 0.824565,
		0.341426, 0.872206, 0.350264,
		34.887814, 38.722263, 23.011148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.035240, 38.440861, 22.909382>,  <34.648815, 38.111721, 22.765963>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.035240, 38.440861, 22.909382> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.310402, 38.731075, 22.901552>,  <34.475498, 38.905205, 22.896854>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.310402, 38.731075, 22.901552>,  <34.035240, 38.440861, 22.909382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.310402, 38.731075, 22.901552> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612914, 0.566263, -0.551074,
		-0.388739, 0.391084, 0.834227,
		0.687908, 0.725534, -0.019573,
		34.516773, 38.948734, 22.895679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.690876, 39.095303, 23.050045>,  <34.035240, 38.440861, 22.909382>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.690876, 39.095303, 23.050045> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.026165, 39.183643, 22.850603>,  <34.227337, 39.236649, 22.730938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.026165, 39.183643, 22.850603>,  <33.690876, 39.095303, 23.050045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.026165, 39.183643, 22.850603> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514026, 0.625310, -0.587166,
		0.182104, 0.748472, 0.637674,
		0.838221, 0.220856, -0.498606,
		34.277630, 39.249901, 22.701021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.808819, 39.821770, 23.088392>,  <33.690876, 39.095303, 23.050045>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.808819, 39.821770, 23.088392> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.001499, 39.727829, 22.750681>,  <34.117107, 39.671467, 22.548054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.001499, 39.727829, 22.750681>,  <33.808819, 39.821770, 23.088392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.001499, 39.727829, 22.750681> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559867, 0.658699, -0.502657,
		0.674176, 0.714816, 0.185812,
		0.481701, -0.234849, -0.844281,
		34.146011, 39.657375, 22.497396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.806435, 40.417332, 22.760096>,  <33.808819, 39.821770, 23.088392>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.806435, 40.417332, 22.760096> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.899754, 40.167740, 22.461773>,  <33.955746, 40.017986, 22.282780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.899754, 40.167740, 22.461773>,  <33.806435, 40.417332, 22.760096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.899754, 40.167740, 22.461773> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548144, 0.549114, -0.630882,
		0.803188, 0.555990, -0.213924,
		0.233295, -0.623978, -0.745805,
		33.969742, 39.980545, 22.238031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.023964, 40.876541, 22.263889>,  <33.806435, 40.417332, 22.760096>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.023964, 40.876541, 22.263889> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.957233, 40.556343, 22.033628>,  <33.917194, 40.364223, 21.895472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.957233, 40.556343, 22.033628>,  <34.023964, 40.876541, 22.263889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.957233, 40.556343, 22.033628> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574213, 0.553486, -0.603269,
		0.801530, 0.229906, -0.551991,
		-0.166824, -0.800498, -0.575650,
		33.907185, 40.316193, 21.860933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.300980, 41.028942, 21.459982>,  <34.023964, 40.876541, 22.263889>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.300980, 41.028942, 21.459982> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.034519, 40.731201, 21.478685>,  <33.874641, 40.552559, 21.489908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.034519, 40.731201, 21.478685>,  <34.300980, 41.028942, 21.459982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.034519, 40.731201, 21.478685> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606838, 0.504506, -0.614184,
		0.433575, -0.437517, -0.787776,
		-0.666154, -0.744347, 0.046761,
		33.834675, 40.507896, 21.492714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.190140, 40.863731, 20.830269>,  <34.300980, 41.028942, 21.459982>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.190140, 40.863731, 20.830269> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.865803, 40.750271, 21.035044>,  <33.671200, 40.682194, 21.157907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.865803, 40.750271, 21.035044>,  <34.190140, 40.863731, 20.830269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.865803, 40.750271, 21.035044> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554986, 0.650352, -0.518683,
		-0.185812, -0.704687, -0.684756,
		-0.810842, -0.283652, 0.511935,
		33.622551, 40.665176, 21.188623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.497776, 41.054405, 20.521675>,  <34.190140, 40.863731, 20.830269>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.497776, 41.054405, 20.521675> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.330074, 40.942238, 20.867064>,  <33.229454, 40.874935, 21.074297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.330074, 40.942238, 20.867064>,  <33.497776, 41.054405, 20.521675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.330074, 40.942238, 20.867064> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747895, 0.645851, -0.153392,
		-0.514660, -0.710098, -0.480505,
		-0.419259, -0.280423, 0.863473,
		33.204296, 40.858112, 21.126106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.803497, 40.765575, 20.329433>,  <33.497776, 41.054405, 20.521675>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.803497, 40.765575, 20.329433> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.825130, 40.949577, 20.683941>,  <32.838112, 41.059978, 20.896645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.825130, 40.949577, 20.683941>,  <32.803497, 40.765575, 20.329433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.825130, 40.949577, 20.683941> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736971, 0.617270, -0.275412,
		-0.673757, -0.638258, 0.372395,
		0.054085, 0.460006, 0.886267,
		32.841354, 41.087578, 20.949821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.593285, 40.163036, 19.927103>,  <32.803497, 40.765575, 20.329433>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.593285, 40.163036, 19.927103> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.563572, 39.904568, 19.623278>,  <32.545746, 39.749485, 19.440983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.563572, 39.904568, 19.623278>,  <32.593285, 40.163036, 19.927103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.563572, 39.904568, 19.623278> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715045, -0.565430, 0.411096,
		-0.695121, -0.512587, 0.504045,
		-0.074280, -0.646176, -0.759565,
		32.541286, 39.710716, 19.395409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.531017, 39.502464, 20.238768>,  <32.593285, 40.163036, 19.927103>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.531017, 39.502464, 20.238768> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.662266, 39.418377, 19.870390>,  <32.741016, 39.367924, 19.649363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.662266, 39.418377, 19.870390>,  <32.531017, 39.502464, 20.238768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.662266, 39.418377, 19.870390> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702440, -0.597547, 0.386673,
		-0.631595, -0.773786, -0.048403,
		0.328125, -0.210221, -0.920946,
		32.760704, 39.355309, 19.594107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.565758, 38.764744, 20.048752>,  <32.531017, 39.502464, 20.238768>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.565758, 38.764744, 20.048752> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.823154, 38.922878, 19.786568>,  <32.977592, 39.017757, 19.629257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.823154, 38.922878, 19.786568>,  <32.565758, 38.764744, 20.048752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.823154, 38.922878, 19.786568> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707260, -0.634574, 0.311608,
		-0.292750, -0.664099, -0.687947,
		0.643492, 0.395333, -0.655462,
		33.016201, 39.041477, 19.589930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.902153, 38.175240, 19.719568>,  <32.565758, 38.764744, 20.048752>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.902153, 38.175240, 19.719568> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.143806, 38.489674, 19.667282>,  <33.288799, 38.678333, 19.635910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.143806, 38.489674, 19.667282>,  <32.902153, 38.175240, 19.719568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.143806, 38.489674, 19.667282> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796852, -0.597384, 0.090325,
		-0.007085, -0.158731, -0.987297,
		0.604133, 0.786089, -0.130717,
		33.325047, 38.725502, 19.628067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.258648, 37.952328, 19.171732>,  <32.902153, 38.175240, 19.719568>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.258648, 37.952328, 19.171732> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.472065, 38.231873, 19.362274>,  <33.600117, 38.399601, 19.476599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.472065, 38.231873, 19.362274>,  <33.258648, 37.952328, 19.171732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.472065, 38.231873, 19.362274> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805534, -0.591552, -0.034372,
		0.257768, 0.402060, -0.878580,
		0.533545, 0.698866, 0.476356,
		33.632130, 38.441532, 19.505180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.933594, 37.865532, 18.926504>,  <33.258648, 37.952328, 19.171732>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.933594, 37.865532, 18.926504> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.017799, 38.091755, 19.245461>,  <34.068321, 38.227489, 19.436834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.017799, 38.091755, 19.245461>,  <33.933594, 37.865532, 18.926504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.017799, 38.091755, 19.245461> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825000, -0.540368, 0.165460,
		0.524462, 0.623017, -0.580335,
		0.210510, 0.565554, 0.797392,
		34.080952, 38.261421, 19.484678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.683559, 38.024334, 18.815498>,  <33.933594, 37.865532, 18.926504>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.683559, 38.024334, 18.815498> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.621891, 38.060776, 19.209032>,  <34.584888, 38.082642, 19.445152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.621891, 38.060776, 19.209032>,  <34.683559, 38.024334, 18.815498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.621891, 38.060776, 19.209032> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879077, -0.441925, 0.178679,
		0.451059, 0.892414, -0.011950,
		-0.154175, 0.091100, 0.983835,
		34.575638, 38.088104, 19.504183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.315331, 38.269211, 19.080982>,  <34.683559, 38.024334, 18.815498>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.315331, 38.269211, 19.080982> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.119247, 38.081959, 19.375071>,  <35.001598, 37.969608, 19.551523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.119247, 38.081959, 19.375071>,  <35.315331, 38.269211, 19.080982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.119247, 38.081959, 19.375071> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807126, -0.562216, 0.180169,
		0.329011, 0.681736, 0.653443,
		-0.490204, -0.468133, 0.735222,
		34.972187, 37.941521, 19.595636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.811981, 38.121441, 19.458199>,  <35.315331, 38.269211, 19.080982>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.811981, 38.121441, 19.458199> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.533630, 37.875469, 19.606581>,  <35.366619, 37.727886, 19.695610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.533630, 37.875469, 19.606581>,  <35.811981, 38.121441, 19.458199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.533630, 37.875469, 19.606581> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717088, -0.623156, 0.312187,
		0.039190, 0.483253, 0.874603,
		-0.695880, -0.614933, 0.370957,
		35.324867, 37.690990, 19.717867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.127857, 37.902069, 20.067881>,  <35.811981, 38.121441, 19.458199>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.127857, 37.902069, 20.067881> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.852913, 37.620461, 19.996445>,  <35.687946, 37.451496, 19.953583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.852913, 37.620461, 19.996445>,  <36.127857, 37.902069, 20.067881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.852913, 37.620461, 19.996445> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694428, -0.709063, 0.122470,
		-0.212852, -0.039835, 0.976272,
		-0.687360, -0.704019, -0.178588,
		35.646706, 37.409256, 19.942869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.219170, 37.514725, 20.626699>,  <36.127857, 37.902069, 20.067881>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.219170, 37.514725, 20.626699> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.999718, 37.270893, 20.397814>,  <35.868046, 37.124596, 20.260483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.999718, 37.270893, 20.397814>,  <36.219170, 37.514725, 20.626699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.999718, 37.270893, 20.397814> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556808, -0.776942, 0.293814,
		-0.623678, -0.157418, 0.765667,
		-0.548627, -0.609575, -0.572213,
		35.835129, 37.088020, 20.226151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.018898, 36.907585, 21.043938>,  <36.219170, 37.514725, 20.626699>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.018898, 36.907585, 21.043938> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.022789, 36.810692, 20.655870>,  <36.025124, 36.752556, 20.423029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.022789, 36.810692, 20.655870>,  <36.018898, 36.907585, 21.043938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.022789, 36.810692, 20.655870> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655775, -0.730899, 0.189068,
		-0.754894, -0.638052, 0.151739,
		0.009730, -0.242233, -0.970169,
		36.025707, 36.738022, 20.364820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.879234, 36.225311, 21.069647>,  <36.018898, 36.907585, 21.043938>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.879234, 36.225311, 21.069647> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.060070, 36.272171, 20.715948>,  <36.168571, 36.300285, 20.503729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.060070, 36.272171, 20.715948>,  <35.879234, 36.225311, 21.069647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.060070, 36.272171, 20.715948> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663893, -0.706258, 0.245857,
		-0.595705, -0.698195, -0.397063,
		0.452085, 0.117149, -0.884249,
		36.195694, 36.307316, 20.450674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.851856, 35.554623, 20.648592>,  <35.879234, 36.225311, 21.069647>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.851856, 35.554623, 20.648592> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.153938, 35.779488, 20.513746>,  <36.335186, 35.914406, 20.432838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.153938, 35.779488, 20.513746>,  <35.851856, 35.554623, 20.648592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.153938, 35.779488, 20.513746> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638208, -0.747918, 0.182508,
		-0.149536, -0.352979, -0.923604,
		0.755202, 0.562160, -0.337115,
		36.380497, 35.948135, 20.412611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.700108, 34.937359, 20.149954>,  <35.851856, 35.554623, 20.648592>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.700108, 34.937359, 20.149954> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.533443, 34.583782, 20.065069>,  <35.433445, 34.371635, 20.014139>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.533443, 34.583782, 20.065069>,  <35.700108, 34.937359, 20.149954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.533443, 34.583782, 20.065069> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733233, 0.464780, -0.496336,
		0.537366, -0.051203, -0.841794,
		-0.416662, -0.883945, -0.212213,
		35.408443, 34.318600, 20.001406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.566811, 34.862309, 19.390905>,  <35.700108, 34.937359, 20.149954>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.566811, 34.862309, 19.390905> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.315628, 34.598701, 19.556490>,  <35.164921, 34.440536, 19.655840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.315628, 34.598701, 19.556490>,  <35.566811, 34.862309, 19.390905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.315628, 34.598701, 19.556490> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763109, 0.416990, -0.493746,
		0.152771, -0.625949, -0.764755,
		-0.627954, -0.659021, 0.413963,
		35.127243, 34.400993, 19.680679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.001286, 34.808266, 18.840698>,  <35.566811, 34.862309, 19.390905>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.001286, 34.808266, 18.840698> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.874847, 34.660210, 19.190117>,  <34.798985, 34.571377, 19.399767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.874847, 34.660210, 19.190117>,  <35.001286, 34.808266, 18.840698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.874847, 34.660210, 19.190117> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.938084, 0.259467, -0.229511,
		-0.141706, -0.892007, -0.429236,
		-0.316098, -0.370136, 0.873545,
		34.780018, 34.549168, 19.452181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.487049, 34.456139, 18.608826>,  <35.001286, 34.808266, 18.840698>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.487049, 34.456139, 18.608826> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.388649, 34.509995, 18.992775>,  <34.329609, 34.542309, 19.223145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.388649, 34.509995, 18.992775>,  <34.487049, 34.456139, 18.608826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.388649, 34.509995, 18.992775> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785365, 0.552693, -0.278806,
		-0.568053, -0.822437, -0.030222,
		-0.246004, 0.134641, 0.959872,
		34.314846, 34.550388, 19.280737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.723377, 34.360962, 18.575279>,  <34.487049, 34.456139, 18.608826>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.723377, 34.360962, 18.575279> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.784363, 34.539421, 18.928030>,  <33.820953, 34.646496, 19.139681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.784363, 34.539421, 18.928030>,  <33.723377, 34.360962, 18.575279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.784363, 34.539421, 18.928030> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758722, 0.624641, -0.184839,
		-0.633321, -0.640916, 0.433741,
		0.152467, 0.446151, 0.881875,
		33.830101, 34.673267, 19.192593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.074520, 34.399353, 18.996683>,  <33.723377, 34.360962, 18.575279>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.074520, 34.399353, 18.996683> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.328766, 34.691307, 19.097290>,  <33.481316, 34.866478, 19.157654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.328766, 34.691307, 19.097290>,  <33.074520, 34.399353, 18.996683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.328766, 34.691307, 19.097290> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724924, 0.676323, -0.130663,
		-0.265476, -0.099279, 0.958992,
		0.635617, 0.729884, 0.251517,
		33.519451, 34.910271, 19.172745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.603889, 34.828781, 19.495230>,  <33.074520, 34.399353, 18.996683>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.603889, 34.828781, 19.495230> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.912094, 35.057343, 19.382235>,  <33.097019, 35.194481, 19.314438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.912094, 35.057343, 19.382235>,  <32.603889, 34.828781, 19.495230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.912094, 35.057343, 19.382235> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631489, 0.744605, -0.216295,
		0.086749, 0.345047, 0.934568,
		0.770516, 0.571406, -0.282487,
		33.143250, 35.228764, 19.297489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.550068, 34.951458, 20.224701>,  <32.603889, 34.828781, 19.495230>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.550068, 34.951458, 20.224701> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.212990, 34.814758, 20.391109>,  <32.010742, 34.732738, 20.490955>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.212990, 34.814758, 20.391109>,  <32.550068, 34.951458, 20.224701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.212990, 34.814758, 20.391109> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453756, -0.866717, 0.207139,
		0.289784, 0.363327, 0.885448,
		-0.842692, -0.341752, 0.416023,
		31.960182, 34.712234, 20.515917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.741245, 34.666420, 20.893400>,  <32.550068, 34.951458, 20.224701>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.741245, 34.666420, 20.893400> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.404148, 34.493114, 20.765606>,  <32.201889, 34.389130, 20.688929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.404148, 34.493114, 20.765606>,  <32.741245, 34.666420, 20.893400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.404148, 34.493114, 20.765606> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373127, -0.897926, 0.233464,
		-0.388027, 0.077540, 0.918381,
		-0.842741, -0.433263, -0.319487,
		32.151325, 34.363136, 20.669760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.799770, 34.114491, 21.290182>,  <32.741245, 34.666420, 20.893400>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.799770, 34.114491, 21.290182> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.539406, 34.010357, 21.004932>,  <32.383186, 33.947876, 20.833782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.539406, 34.010357, 21.004932>,  <32.799770, 34.114491, 21.290182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.539406, 34.010357, 21.004932> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197410, -0.965091, 0.172132,
		-0.733040, -0.028735, 0.679578,
		-0.650908, -0.260335, -0.713123,
		32.344131, 33.932255, 20.790995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.397976, 33.764996, 21.610809>,  <32.799770, 34.114491, 21.290182>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.397976, 33.764996, 21.610809> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.336014, 33.669315, 21.227396>,  <32.298836, 33.611908, 20.997349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.336014, 33.669315, 21.227396>,  <32.397976, 33.764996, 21.610809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.336014, 33.669315, 21.227396> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205434, -0.956835, 0.205579,
		-0.966333, -0.165070, 0.197362,
		-0.154908, -0.239203, -0.958533,
		32.289543, 33.597553, 20.939837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.237598, 33.100185, 21.601456>,  <32.397976, 33.764996, 21.610809>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.237598, 33.100185, 21.601456> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.355259, 33.141457, 21.221386>,  <32.425854, 33.166222, 20.993345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.355259, 33.141457, 21.221386>,  <32.237598, 33.100185, 21.601456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.355259, 33.141457, 21.221386> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436693, -0.898825, 0.037584,
		-0.850161, -0.425990, -0.309450,
		0.294152, 0.103182, -0.950173,
		32.443504, 33.172413, 20.936335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.972454, 32.533707, 21.143604>,  <32.237598, 33.100185, 21.601456>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.972454, 32.533707, 21.143604> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.315166, 32.668774, 20.987705>,  <32.520794, 32.749813, 20.894165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.315166, 32.668774, 20.987705>,  <31.972454, 32.533707, 21.143604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.315166, 32.668774, 20.987705> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477019, -0.806087, 0.350251,
		-0.195902, -0.486007, -0.851716,
		0.856782, 0.337670, -0.389749,
		32.572201, 32.770073, 20.870781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.365807, 31.948175, 21.110573>,  <31.972454, 32.533707, 21.143604>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.365807, 31.948175, 21.110573> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.660103, 32.209087, 21.037672>,  <32.836681, 32.365635, 20.993931>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.660103, 32.209087, 21.037672>,  <32.365807, 31.948175, 21.110573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.660103, 32.209087, 21.037672> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677262, -0.707992, 0.200159,
		0.001526, -0.270698, -0.962663,
		0.735740, 0.652280, -0.182254,
		32.880825, 32.404770, 20.982996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<30.643223, 38.664753, 22.775305> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.981363, 38.841251, 22.654848>,  <31.184248, 38.947151, 22.582575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.981363, 38.841251, 22.654848>,  <30.643223, 38.664753, 22.775305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.981363, 38.841251, 22.654848> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437718, -0.248955, 0.863958,
		0.306247, -0.862162, -0.403595,
		0.845349, 0.441245, -0.301142,
		31.234968, 38.973625, 22.564505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.239594, 38.245892, 22.914925>,  <30.643223, 38.664753, 22.775305>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.239594, 38.245892, 22.914925> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.398727, 38.612736, 22.904787>,  <31.494207, 38.832840, 22.898705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.398727, 38.612736, 22.904787>,  <31.239594, 38.245892, 22.914925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.398727, 38.612736, 22.904787> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602660, -0.240401, 0.760926,
		0.691758, -0.317997, -0.648343,
		0.397834, 0.917107, -0.025345,
		31.518078, 38.887867, 22.897184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.921106, 38.117939, 22.921785>,  <31.239594, 38.245892, 22.914925>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.921106, 38.117939, 22.921785> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.878984, 38.491409, 23.058701>,  <31.853712, 38.715492, 23.140850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.878984, 38.491409, 23.058701>,  <31.921106, 38.117939, 22.921785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.878984, 38.491409, 23.058701> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569769, -0.225458, 0.790273,
		0.815031, 0.278244, -0.508238,
		-0.105303, 0.933675, 0.342290,
		31.847393, 38.771511, 23.161388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.609295, 38.299755, 23.100222>,  <31.921106, 38.117939, 22.921785>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.609295, 38.299755, 23.100222> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.354336, 38.523975, 23.311695>,  <32.201363, 38.658508, 23.438580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.354336, 38.523975, 23.311695>,  <32.609295, 38.299755, 23.100222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.354336, 38.523975, 23.311695> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560285, -0.133851, 0.817413,
		0.528970, 0.817228, -0.228755,
		-0.637394, 0.560555, 0.528684,
		32.163116, 38.692142, 23.470301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.042912, 38.811356, 23.492008>,  <32.609295, 38.299755, 23.100222>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.042912, 38.811356, 23.492008> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.686016, 38.804806, 23.672516>,  <32.471878, 38.800877, 23.780821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.686016, 38.804806, 23.672516>,  <33.042912, 38.811356, 23.492008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.686016, 38.804806, 23.672516> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450199, -0.109907, 0.886138,
		0.035086, 0.993807, 0.105435,
		-0.892239, -0.016376, 0.451267,
		32.418343, 38.799892, 23.807896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.096092, 39.302643, 23.968109>,  <33.042912, 38.811356, 23.492008>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.096092, 39.302643, 23.968109> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.822727, 39.035175, 24.085293>,  <32.658707, 38.874695, 24.155603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.822727, 39.035175, 24.085293>,  <33.096092, 39.302643, 23.968109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.822727, 39.035175, 24.085293> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489143, -0.121521, 0.863697,
		-0.541929, 0.733560, 0.410125,
		-0.683412, -0.668672, 0.292960,
		32.617702, 38.834576, 24.173182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.873432, 39.501358, 24.710867>,  <33.096092, 39.302643, 23.968109>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.873432, 39.501358, 24.710867> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.784107, 39.112850, 24.677959>,  <32.730511, 38.879745, 24.658215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.784107, 39.112850, 24.677959>,  <32.873432, 39.501358, 24.710867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.784107, 39.112850, 24.677959> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339121, -0.156542, 0.927627,
		-0.913853, 0.179254, 0.364335,
		-0.223314, -0.971269, -0.082268,
		32.717113, 38.821468, 24.653278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.822445, 39.283493, 25.423853>,  <32.873432, 39.501358, 24.710867>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.822445, 39.283493, 25.423853> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.797863, 38.936562, 25.226280>,  <32.783115, 38.728405, 25.107737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.797863, 38.936562, 25.226280>,  <32.822445, 39.283493, 25.423853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.797863, 38.936562, 25.226280> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441669, -0.467410, 0.765804,
		-0.895071, -0.171094, 0.411794,
		-0.061452, -0.867326, -0.493932,
		32.779427, 38.676365, 25.078100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.480385, 38.796719, 25.889105>,  <32.822445, 39.283493, 25.423853>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.480385, 38.796719, 25.889105> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.686054, 38.587112, 25.617508>,  <32.809456, 38.461349, 25.454550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.686054, 38.587112, 25.617508>,  <32.480385, 38.796719, 25.889105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.686054, 38.587112, 25.617508> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466158, -0.493783, 0.734082,
		-0.719949, -0.693961, -0.009612,
		0.514170, -0.524020, -0.678993,
		32.840305, 38.429905, 25.413811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.565701, 38.155918, 26.167027>,  <32.480385, 38.796719, 25.889105>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.565701, 38.155918, 26.167027> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.860092, 38.163723, 25.896336>,  <33.036728, 38.168407, 25.733921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.860092, 38.163723, 25.896336>,  <32.565701, 38.155918, 26.167027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.860092, 38.163723, 25.896336> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615390, -0.435937, 0.656700,
		-0.282196, -0.899766, -0.332847,
		0.735976, 0.019512, -0.676726,
		33.080887, 38.169575, 25.693317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.722759, 37.450802, 25.975939>,  <32.565701, 38.155918, 26.167027>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.722759, 37.450802, 25.975939> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.033268, 37.694214, 25.910101>,  <33.219574, 37.840263, 25.870598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.033268, 37.694214, 25.910101>,  <32.722759, 37.450802, 25.975939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.033268, 37.694214, 25.910101> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511970, -0.456225, 0.727836,
		0.367820, -0.649265, -0.665704,
		0.776270, 0.608533, -0.164596,
		33.266148, 37.876774, 25.860722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.391125, 36.944088, 25.909044>,  <32.722759, 37.450802, 25.975939>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.391125, 36.944088, 25.909044> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.519875, 37.316372, 25.978525>,  <33.597126, 37.539742, 26.020214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.519875, 37.316372, 25.978525>,  <33.391125, 36.944088, 25.909044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.519875, 37.316372, 25.978525> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788633, -0.365075, 0.494752,
		0.523886, -0.022259, -0.851498,
		0.321873, 0.930712, 0.173703,
		33.616436, 37.595585, 26.030636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.564838, 36.412888, 25.412895>,  <33.391125, 36.944088, 25.909044>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.564838, 36.412888, 25.412895> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.321365, 36.107914, 25.500715>,  <33.175282, 35.924931, 25.553408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.321365, 36.107914, 25.500715>,  <33.564838, 36.412888, 25.412895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.321365, 36.107914, 25.500715> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638546, 0.306502, -0.705915,
		0.470920, -0.569871, -0.673410,
		-0.608682, -0.762432, 0.219551,
		33.138760, 35.879185, 25.566580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.494587, 35.934006, 24.868437>,  <33.564838, 36.412888, 25.412895>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.494587, 35.934006, 24.868437> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.157185, 35.886662, 25.078001>,  <32.954742, 35.858253, 25.203739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.157185, 35.886662, 25.078001>,  <33.494587, 35.934006, 24.868437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.157185, 35.886662, 25.078001> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532928, 0.305999, -0.788893,
		-0.066941, -0.944645, -0.321191,
		-0.843509, -0.118363, 0.523911,
		32.904133, 35.851154, 25.235174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.010719, 35.577763, 24.395348>,  <33.494587, 35.934006, 24.868437>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.010719, 35.577763, 24.395348> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.776783, 35.717796, 24.688034>,  <32.636421, 35.801815, 24.863646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.776783, 35.717796, 24.688034>,  <33.010719, 35.577763, 24.395348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.776783, 35.717796, 24.688034> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711364, 0.212108, -0.670053,
		-0.389778, -0.912387, 0.124990,
		-0.584836, 0.350085, 0.731715,
		32.601334, 35.822823, 24.907549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.304989, 35.155758, 24.517939>,  <33.010719, 35.577763, 24.395348>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.304989, 35.155758, 24.517939> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.241337, 35.507267, 24.697910>,  <32.203148, 35.718174, 24.805893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.241337, 35.507267, 24.697910>,  <32.304989, 35.155758, 24.517939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.241337, 35.507267, 24.697910> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864410, 0.096148, -0.493509,
		-0.476942, -0.467454, 0.744320,
		-0.159128, 0.878773, 0.449929,
		32.193600, 35.770901, 24.832890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.561255, 35.206028, 24.654654>,  <32.304989, 35.155758, 24.517939>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.561255, 35.206028, 24.654654> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.697506, 35.581081, 24.626869>,  <31.779257, 35.806114, 24.610199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.697506, 35.581081, 24.626869>,  <31.561255, 35.206028, 24.654654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.697506, 35.581081, 24.626869> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779961, 0.240550, -0.577752,
		-0.525008, 0.250974, 0.813252,
		0.340628, 0.937629, -0.069460,
		31.799694, 35.862370, 24.606031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.069139, 35.625023, 24.695642>,  <31.561255, 35.206028, 24.654654>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.069139, 35.625023, 24.695642> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.347548, 35.844273, 24.510122>,  <31.514593, 35.975822, 24.398809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.347548, 35.844273, 24.510122>,  <31.069139, 35.625023, 24.695642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.347548, 35.844273, 24.510122> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712556, 0.447726, -0.540191,
		-0.088437, 0.706469, 0.702197,
		0.696020, 0.548128, -0.463803,
		31.556353, 36.008713, 24.370981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.704037, 36.137657, 24.595812>,  <31.069139, 35.625023, 24.695642>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.704037, 36.137657, 24.595812> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.022217, 36.203281, 24.362455>,  <31.213125, 36.242657, 24.222443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.022217, 36.203281, 24.362455>,  <30.704037, 36.137657, 24.595812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.022217, 36.203281, 24.362455> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555545, 0.582043, -0.593798,
		0.242137, 0.796435, 0.554131,
		0.795449, 0.164064, -0.583389,
		31.260851, 36.252502, 24.187439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.733753, 36.910934, 24.530052>,  <30.704037, 36.137657, 24.595812>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.733753, 36.910934, 24.530052> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.912701, 36.729111, 24.221966>,  <31.020069, 36.620018, 24.037113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.912701, 36.729111, 24.221966>,  <30.733753, 36.910934, 24.530052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.912701, 36.729111, 24.221966> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445200, 0.633732, -0.632598,
		0.775666, 0.625906, 0.081141,
		0.447369, -0.454561, -0.770218,
		31.046911, 36.592743, 23.990900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.828701, 37.424278, 24.074913>,  <30.733753, 36.910934, 24.530052>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.828701, 37.424278, 24.074913> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.850386, 37.096825, 23.846210>,  <30.863396, 36.900352, 23.708988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.850386, 37.096825, 23.846210>,  <30.828701, 37.424278, 24.074913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.850386, 37.096825, 23.846210> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562062, 0.448255, -0.695092,
		0.825316, 0.359044, -0.435821,
		0.054210, -0.818630, -0.571758,
		30.866648, 36.851234, 23.674683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.976160, 37.633617, 23.387039>,  <30.828701, 37.424278, 24.074913>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.976160, 37.633617, 23.387039> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.844843, 37.264069, 23.308359>,  <30.766052, 37.042339, 23.261152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.844843, 37.264069, 23.308359>,  <30.976160, 37.633617, 23.387039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.844843, 37.264069, 23.308359> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482482, 0.343040, -0.805937,
		0.812055, -0.169681, -0.558368,
		-0.328295, -0.923868, -0.196699,
		30.746355, 36.986908, 23.249350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.181389, 37.461933, 22.713625>,  <30.976160, 37.633617, 23.387039>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.181389, 37.461933, 22.713625> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.876884, 37.214458, 22.791294>,  <30.694181, 37.065971, 22.837894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.876884, 37.214458, 22.791294>,  <31.181389, 37.461933, 22.713625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.876884, 37.214458, 22.791294> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556514, 0.469668, -0.685349,
		0.332821, -0.629791, -0.701850,
		-0.761263, -0.618688, 0.194173,
		30.648506, 37.028851, 22.849546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.906191, 37.145813, 22.070227>,  <31.181389, 37.461933, 22.713625>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.906191, 37.145813, 22.070227> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.597321, 37.081432, 22.316101>,  <30.411999, 37.042805, 22.463625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.597321, 37.081432, 22.316101>,  <30.906191, 37.145813, 22.070227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.597321, 37.081432, 22.316101> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635395, 0.189756, -0.748509,
		0.003832, -0.968549, -0.248792,
		-0.772178, -0.160949, 0.614685,
		30.365667, 37.033146, 22.500505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.497442, 36.639118, 21.752535>,  <30.906191, 37.145813, 22.070227>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.497442, 36.639118, 21.752535> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.272892, 36.858932, 22.000040>,  <30.138163, 36.990822, 22.148542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.272892, 36.858932, 22.000040>,  <30.497442, 36.639118, 21.752535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.272892, 36.858932, 22.000040> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692102, 0.098163, -0.715093,
		-0.453712, -0.829681, 0.325231,
		-0.561374, 0.549539, 0.618762,
		30.104481, 37.023796, 22.185669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.897028, 36.539253, 21.483805>,  <30.497442, 36.639118, 21.752535>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.897028, 36.539253, 21.483805> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.825983, 36.855930, 21.717615>,  <29.783356, 37.045937, 21.857903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.825983, 36.855930, 21.717615>,  <29.897028, 36.539253, 21.483805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.825983, 36.855930, 21.717615> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825054, 0.203968, -0.526956,
		-0.536413, -0.575861, 0.616964,
		-0.177613, 0.791696, 0.584527,
		29.772699, 37.093437, 21.892973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.421873, 36.836105, 20.915422>,  <29.897028, 36.539253, 21.483805>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.421873, 36.836105, 20.915422> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.538132, 36.651245, 20.580294>,  <29.607887, 36.540329, 20.379217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.538132, 36.651245, 20.580294>,  <29.421873, 36.836105, 20.915422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.538132, 36.651245, 20.580294> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567524, -0.621703, 0.539817,
		-0.770351, -0.632379, 0.081584,
		0.290648, -0.462149, -0.837820,
		29.625326, 36.512600, 20.328947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.357710, 36.057850, 21.021809>,  <29.421873, 36.836105, 20.915422>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.357710, 36.057850, 21.021809> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.583405, 36.077610, 20.692154>,  <29.718821, 36.089466, 20.494362>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.583405, 36.077610, 20.692154>,  <29.357710, 36.057850, 21.021809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.583405, 36.077610, 20.692154> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565709, -0.750184, 0.342342,
		-0.601341, -0.659382, -0.451225,
		0.564236, 0.049397, -0.824135,
		29.752676, 36.092430, 20.444914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.483208, 35.297462, 20.761946>,  <29.357710, 36.057850, 21.021809>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.483208, 35.297462, 20.761946> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.758249, 35.538010, 20.599194>,  <29.923275, 35.682339, 20.501541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.758249, 35.538010, 20.599194>,  <29.483208, 35.297462, 20.761946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.758249, 35.538010, 20.599194> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719826, -0.638010, 0.273485,
		-0.095129, -0.480934, -0.871581,
		0.687606, 0.601370, -0.406882,
		29.964531, 35.718422, 20.477129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.880548, 34.854393, 20.414862>,  <29.483208, 35.297462, 20.761946>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.880548, 34.854393, 20.414862> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.114645, 35.178734, 20.416241>,  <30.255104, 35.373337, 20.417068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.114645, 35.178734, 20.416241>,  <29.880548, 34.854393, 20.414862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.114645, 35.178734, 20.416241> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809443, -0.584468, 0.056560,
		0.047877, -0.030311, -0.998393,
		0.585244, 0.810850, 0.003448,
		30.290218, 35.421989, 20.417274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.343950, 34.710518, 19.910082>,  <29.880548, 34.854393, 20.414862>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.343950, 34.710518, 19.910082> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.499886, 34.971428, 20.170103>,  <30.593447, 35.127972, 20.326115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.499886, 34.971428, 20.170103>,  <30.343950, 34.710518, 19.910082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.499886, 34.971428, 20.170103> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838915, -0.542683, 0.041436,
		0.379799, 0.529184, -0.758760,
		0.389840, 0.652272, 0.650051,
		30.616837, 35.167110, 20.365118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.052631, 34.988270, 19.612753>,  <30.343950, 34.710518, 19.910082>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.052631, 34.988270, 19.612753> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.063868, 35.030441, 20.010365>,  <31.070608, 35.055744, 20.248932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.063868, 35.030441, 20.010365>,  <31.052631, 34.988270, 19.612753>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.063868, 35.030441, 20.010365> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807684, -0.588286, 0.039572,
		0.588946, 0.801750, -0.101679,
		0.028090, 0.105430, 0.994030,
		31.072294, 35.062069, 20.308573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.698080, 35.239063, 19.719568>,  <31.052631, 34.988270, 19.612753>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.698080, 35.239063, 19.719568> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.612633, 35.089809, 20.080708>,  <31.561365, 35.000256, 20.297392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.612633, 35.089809, 20.080708>,  <31.698080, 35.239063, 19.719568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.612633, 35.089809, 20.080708> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805256, -0.590507, -0.053522,
		0.553109, 0.715591, 0.426614,
		-0.213618, -0.373137, 0.902849,
		31.548548, 34.977867, 20.351562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.386417, 35.568962, 19.746529>,  <31.698080, 35.239063, 19.719568>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.386417, 35.568962, 19.746529> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.676926, 35.655155, 19.485426>,  <32.851231, 35.706871, 19.328764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.676926, 35.655155, 19.485426>,  <32.386417, 35.568962, 19.746529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.676926, 35.655155, 19.485426> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385661, 0.913797, -0.127440,
		0.569028, 0.344300, 0.746769,
		0.726273, 0.215483, -0.652759,
		32.894806, 35.719799, 19.289598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.654324, 36.204739, 19.907734>,  <32.386417, 35.568962, 19.746529>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.654324, 36.204739, 19.907734> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.669182, 36.128551, 19.515337>,  <32.678097, 36.082840, 19.279900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.669182, 36.128551, 19.515337>,  <32.654324, 36.204739, 19.907734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.669182, 36.128551, 19.515337> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423421, 0.886192, -0.188090,
		0.905171, 0.422359, -0.047730,
		0.037144, -0.190463, -0.980991,
		32.680325, 36.071411, 19.221039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.351532, 36.842731, 19.603645>,  <32.654324, 36.204739, 19.907734>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.351532, 36.842731, 19.603645> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.386166, 36.626354, 19.269009>,  <32.406948, 36.496529, 19.068226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.386166, 36.626354, 19.269009>,  <32.351532, 36.842731, 19.603645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.386166, 36.626354, 19.269009> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573050, 0.659873, -0.485985,
		0.814933, 0.521490, -0.252848,
		0.086589, -0.540940, -0.836593,
		32.412144, 36.464073, 19.018030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.551769, 37.277779, 19.074493>,  <32.351532, 36.842731, 19.603645>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.551769, 37.277779, 19.074493> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.345165, 36.978909, 18.907187>,  <32.221203, 36.799587, 18.806803>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.345165, 36.978909, 18.907187>,  <32.551769, 37.277779, 19.074493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.345165, 36.978909, 18.907187> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513185, 0.661139, -0.547299,
		0.685458, -0.068041, -0.724926,
		-0.516515, -0.747172, -0.418266,
		32.190212, 36.754757, 18.781706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.564354, 37.515301, 18.466482>,  <32.551769, 37.277779, 19.074493>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.564354, 37.515301, 18.466482> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.282150, 37.232147, 18.452852>,  <32.112827, 37.062256, 18.444674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.282150, 37.232147, 18.452852>,  <32.564354, 37.515301, 18.466482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.282150, 37.232147, 18.452852> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540183, 0.568252, -0.620719,
		0.458760, -0.419515, -0.783292,
		-0.705508, -0.707882, -0.034076,
		32.070499, 37.019783, 18.442629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.308643, 37.475048, 17.731674>,  <32.564354, 37.515301, 18.466482>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.308643, 37.475048, 17.731674> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.015446, 37.301403, 17.941158>,  <31.839527, 37.197216, 18.066849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.015446, 37.301403, 17.941158>,  <32.308643, 37.475048, 17.731674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.015446, 37.301403, 17.941158> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671670, 0.583688, -0.456254,
		-0.107621, -0.686191, -0.719416,
		-0.732992, -0.434108, 0.523711,
		31.795547, 37.171169, 18.098272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.784836, 37.367290, 17.212902>,  <32.308643, 37.475048, 17.731674>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.784836, 37.367290, 17.212902> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.608755, 37.325054, 17.569571>,  <31.503107, 37.299713, 17.783571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.608755, 37.325054, 17.569571>,  <31.784836, 37.367290, 17.212902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.608755, 37.325054, 17.569571> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827792, 0.432417, -0.357456,
		-0.347828, -0.895469, -0.277760,
		-0.440200, -0.105594, 0.891669,
		31.476696, 37.293377, 17.837070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.233509, 36.976673, 17.063684>,  <31.784836, 37.367290, 17.212902>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.233509, 36.976673, 17.063684> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.158495, 37.198853, 17.387735>,  <31.113485, 37.332161, 17.582167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.158495, 37.198853, 17.387735>,  <31.233509, 36.976673, 17.063684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.158495, 37.198853, 17.387735> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712925, 0.490386, -0.501258,
		-0.675698, -0.671565, 0.304027,
		-0.187537, 0.555448, 0.810128,
		31.102234, 37.365486, 17.630774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.563709, 36.893433, 17.203251>,  <31.233509, 36.976673, 17.063684>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.563709, 36.893433, 17.203251> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.629936, 37.223824, 17.418787>,  <30.669672, 37.422058, 17.548109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.629936, 37.223824, 17.418787>,  <30.563709, 36.893433, 17.203251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.629936, 37.223824, 17.418787> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779846, 0.444109, -0.441143,
		-0.603678, -0.347173, 0.717665,
		0.165569, 0.825977, 0.538841,
		30.679607, 37.471615, 17.580439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<41.853443, 29.072441, 25.676575> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.929863, 29.371868, 25.930552>,  <41.975716, 29.551523, 26.082937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.929863, 29.371868, 25.930552>,  <41.853443, 29.072441, 25.676575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.929863, 29.371868, 25.930552> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423889, 0.646348, -0.634470,
		-0.885335, -0.147931, 0.440792,
		0.191047, 0.748566, 0.634941,
		41.987179, 29.596437, 26.121035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.120743, 29.345789, 25.832552>,  <41.853443, 29.072441, 25.676575>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.120743, 29.345789, 25.832552> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.429222, 29.599884, 25.849152>,  <41.614311, 29.752340, 25.859112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.429222, 29.599884, 25.849152>,  <41.120743, 29.345789, 25.832552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.429222, 29.599884, 25.849152> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348653, 0.476023, -0.807368,
		-0.532626, 0.608173, 0.588587,
		0.771201, 0.635238, 0.041500,
		41.660583, 29.790455, 25.861601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.827682, 29.951025, 25.924654>,  <41.120743, 29.345789, 25.832552>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.827682, 29.951025, 25.924654> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.187992, 29.979368, 25.753265>,  <41.404179, 29.996374, 25.650433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.187992, 29.979368, 25.753265>,  <40.827682, 29.951025, 25.924654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.187992, 29.979368, 25.753265> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385668, 0.584124, -0.714184,
		0.199674, 0.808565, 0.553491,
		0.900772, 0.070859, -0.428472,
		41.458225, 30.000626, 25.624723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.876686, 30.633621, 25.842983>,  <40.827682, 29.951025, 25.924654>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.876686, 30.633621, 25.842983> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.127419, 30.457090, 25.586138>,  <41.277859, 30.351171, 25.432030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.127419, 30.457090, 25.586138>,  <40.876686, 30.633621, 25.842983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.127419, 30.457090, 25.586138> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283697, 0.638273, -0.715628,
		0.725670, 0.630745, 0.274888,
		0.626833, -0.441325, -0.642116,
		41.315468, 30.324694, 25.393503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.095242, 31.188890, 25.452906>,  <40.876686, 30.633621, 25.842983>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.095242, 31.188890, 25.452906> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.191181, 30.872059, 25.228376>,  <41.248745, 30.681959, 25.093658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.191181, 30.872059, 25.228376>,  <41.095242, 31.188890, 25.452906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.191181, 30.872059, 25.228376> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286754, 0.494598, -0.820454,
		0.927493, 0.357748, -0.108502,
		0.239851, -0.792079, -0.561322,
		41.263138, 30.634436, 25.059980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.445820, 31.527779, 24.907982>,  <41.095242, 31.188890, 25.452906>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.445820, 31.527779, 24.907982> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.317173, 31.166773, 24.793417>,  <41.239986, 30.950171, 24.724678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.317173, 31.166773, 24.793417>,  <41.445820, 31.527779, 24.907982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.317173, 31.166773, 24.793417> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301442, 0.384340, -0.872591,
		0.897605, -0.194304, -0.395666,
		-0.321618, -0.902512, -0.286414,
		41.220688, 30.896019, 24.707493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.554119, 31.583900, 24.235844>,  <41.445820, 31.527779, 24.907982>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.554119, 31.583900, 24.235844> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.283260, 31.293545, 24.284100>,  <41.120743, 31.119331, 24.313053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.283260, 31.293545, 24.284100>,  <41.554119, 31.583900, 24.235844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.283260, 31.293545, 24.284100> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447808, 0.276420, -0.850329,
		0.583896, -0.629825, -0.512236,
		-0.677151, -0.725887, 0.120640,
		41.080116, 31.075779, 24.320292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.492237, 31.203367, 23.581995>,  <41.554119, 31.583900, 24.235844>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.492237, 31.203367, 23.581995> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.171482, 31.063696, 23.775921>,  <40.979027, 30.979893, 23.892277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.171482, 31.063696, 23.775921>,  <41.492237, 31.203367, 23.581995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.171482, 31.063696, 23.775921> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523575, 0.019788, -0.851750,
		0.287819, -0.936847, -0.198689,
		-0.801891, -0.349179, 0.484814,
		40.930916, 30.958942, 23.921366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.202438, 30.603628, 23.201260>,  <41.492237, 31.203367, 23.581995>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.202438, 30.603628, 23.201260> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.902561, 30.767492, 23.409159>,  <40.722633, 30.865810, 23.533899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.902561, 30.767492, 23.409159>,  <41.202438, 30.603628, 23.201260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.902561, 30.767492, 23.409159> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499114, 0.165716, -0.850543,
		-0.434563, -0.897061, 0.080230,
		-0.749693, 0.409659, 0.519750,
		40.677654, 30.890390, 23.565084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.731609, 30.307697, 22.881948>,  <41.202438, 30.603628, 23.201260>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.731609, 30.307697, 22.881948> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.536766, 30.614538, 23.048935>,  <40.419861, 30.798643, 23.149128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.536766, 30.614538, 23.048935>,  <40.731609, 30.307697, 22.881948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.536766, 30.614538, 23.048935> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548298, 0.103455, -0.829859,
		-0.679777, -0.633126, 0.370207,
		-0.487106, 0.767104, 0.417468,
		40.390633, 30.844669, 23.174175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.012177, 30.094267, 22.838512>,  <40.731609, 30.307697, 22.881948>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.012177, 30.094267, 22.838512> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.013966, 30.492102, 22.880043>,  <40.015041, 30.730803, 22.904961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.013966, 30.492102, 22.880043>,  <40.012177, 30.094267, 22.838512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.013966, 30.492102, 22.880043> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648063, 0.081956, -0.757164,
		-0.761574, -0.063896, 0.644921,
		0.004476, 0.994586, 0.103825,
		40.015308, 30.790478, 22.911190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.368847, 30.339037, 22.855677>,  <40.012177, 30.094267, 22.838512>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.368847, 30.339037, 22.855677> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.556755, 30.671026, 22.735373>,  <39.669502, 30.870220, 22.663189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.556755, 30.671026, 22.735373>,  <39.368847, 30.339037, 22.855677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.556755, 30.671026, 22.735373> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715909, 0.158837, -0.679886,
		-0.516516, 0.534710, 0.668802,
		0.469772, 0.829974, -0.300762,
		39.697685, 30.920019, 22.645144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.734383, 30.346252, 23.278440>,  <39.368847, 30.339037, 22.855677>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.734383, 30.346252, 23.278440> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.411045, 30.122116, 23.350657>,  <38.217041, 29.987635, 23.393986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.411045, 30.122116, 23.350657>,  <38.734383, 30.346252, 23.278440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.411045, 30.122116, 23.350657> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412183, -0.319726, 0.853159,
		-0.420338, 0.764062, 0.489413,
		-0.808345, -0.560342, 0.180540,
		38.168541, 29.954014, 23.404819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.638699, 30.369513, 24.033243>,  <38.734383, 30.346252, 23.278440>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.638699, 30.369513, 24.033243> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.433613, 30.046827, 23.915712>,  <38.310562, 29.853216, 23.845194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.433613, 30.046827, 23.915712>,  <38.638699, 30.369513, 24.033243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.433613, 30.046827, 23.915712> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360441, -0.512865, 0.779135,
		-0.779232, 0.293569, 0.553728,
		-0.512718, -0.806713, -0.293827,
		38.279797, 29.804813, 23.827564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.338772, 30.158922, 24.602375>,  <38.638699, 30.369513, 24.033243>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.338772, 30.158922, 24.602375> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.344036, 29.846411, 24.352758>,  <38.347195, 29.658903, 24.202988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.344036, 29.846411, 24.352758>,  <38.338772, 30.158922, 24.602375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.344036, 29.846411, 24.352758> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404243, -0.566663, 0.717969,
		-0.914557, -0.261712, 0.308371,
		0.013159, -0.781281, -0.624041,
		38.347984, 29.612026, 24.165546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.227554, 29.620163, 25.086355>,  <38.338772, 30.158922, 24.602375>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.227554, 29.620163, 25.086355> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.348431, 29.388849, 24.783234>,  <38.420956, 29.250061, 24.601360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.348431, 29.388849, 24.783234>,  <38.227554, 29.620163, 25.086355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.348431, 29.388849, 24.783234> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552503, -0.541566, 0.633598,
		-0.776801, -0.610158, 0.155846,
		0.302194, -0.578285, -0.757803,
		38.439091, 29.215364, 24.555893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.183151, 28.909185, 25.257860>,  <38.227554, 29.620163, 25.086355>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.183151, 28.909185, 25.257860> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.458469, 28.907999, 24.967690>,  <38.623661, 28.907288, 24.793587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.458469, 28.907999, 24.967690>,  <38.183151, 28.909185, 25.257860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.458469, 28.907999, 24.967690> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607204, -0.544808, 0.578349,
		-0.396933, -0.838556, -0.373187,
		0.688293, -0.002965, -0.725427,
		38.664959, 28.907110, 24.750061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.334641, 28.179312, 25.142740>,  <38.183151, 28.909185, 25.257860>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.334641, 28.179312, 25.142740> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.627235, 28.423306, 25.020857>,  <38.802792, 28.569702, 24.947727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.627235, 28.423306, 25.020857>,  <38.334641, 28.179312, 25.142740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.627235, 28.423306, 25.020857> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643650, -0.470223, 0.603825,
		0.225043, -0.637815, -0.736578,
		0.731485, 0.609986, -0.304709,
		38.846680, 28.606300, 24.929443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.939304, 27.811644, 25.212513>,  <38.334641, 28.179312, 25.142740>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.939304, 27.811644, 25.212513> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.106400, 28.174913, 25.201836>,  <39.206657, 28.392876, 25.195429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.106400, 28.174913, 25.201836>,  <38.939304, 27.811644, 25.212513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.106400, 28.174913, 25.201836> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493243, -0.202013, 0.846110,
		0.763024, -0.366619, -0.532339,
		0.417739, 0.908175, -0.026691,
		39.231720, 28.447367, 25.193829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.730152, 27.685453, 25.247953>,  <38.939304, 27.811644, 25.212513>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.730152, 27.685453, 25.247953> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.645561, 28.064974, 25.341806>,  <39.594807, 28.292686, 25.398119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.645561, 28.064974, 25.341806>,  <39.730152, 27.685453, 25.247953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.645561, 28.064974, 25.341806> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620853, -0.055005, 0.781995,
		0.754865, 0.311044, -0.577435,
		-0.211473, 0.948802, 0.234634,
		39.582119, 28.349615, 25.412197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.430607, 28.113199, 25.397707>,  <39.730152, 27.685453, 25.247953>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.430607, 28.113199, 25.397707> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.140411, 28.298836, 25.600994>,  <39.966293, 28.410217, 25.722965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.140411, 28.298836, 25.600994>,  <40.430607, 28.113199, 25.397707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.140411, 28.298836, 25.600994> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540233, -0.073488, 0.838301,
		0.426395, 0.882735, -0.197402,
		-0.725491, 0.464090, 0.508217,
		39.922764, 28.438063, 25.753460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.777493, 28.454056, 25.849964>,  <40.430607, 28.113199, 25.397707>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.777493, 28.454056, 25.849964> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.421242, 28.476780, 26.030434>,  <40.207493, 28.490414, 26.138716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.421242, 28.476780, 26.030434>,  <40.777493, 28.454056, 25.849964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.421242, 28.476780, 26.030434> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451348, -0.010496, 0.892286,
		0.055426, 0.998330, -0.016293,
		-0.890625, 0.056810, 0.451176,
		40.154053, 28.493822, 26.165787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.921040, 29.007778, 26.496733>,  <40.777493, 28.454056, 25.849964>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.921040, 29.007778, 26.496733> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.603226, 28.780851, 26.583321>,  <40.412537, 28.644695, 26.635273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.603226, 28.780851, 26.583321>,  <40.921040, 29.007778, 26.496733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.603226, 28.780851, 26.583321> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278008, -0.022933, 0.960305,
		-0.539835, 0.823179, 0.175940,
		-0.794538, -0.567319, 0.216471,
		40.364864, 28.610657, 26.648262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.726379, 29.187077, 27.112818>,  <40.921040, 29.007778, 26.496733>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.726379, 29.187077, 27.112818> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.533695, 28.839691, 27.065954>,  <40.418083, 28.631260, 27.037836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.533695, 28.839691, 27.065954>,  <40.726379, 29.187077, 27.112818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.533695, 28.839691, 27.065954> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270368, -0.274454, 0.922809,
		-0.833579, 0.412854, 0.367013,
		-0.481713, -0.868462, -0.117157,
		40.389183, 28.579153, 27.030807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.496117, 28.945768, 27.846313>,  <40.726379, 29.187077, 27.112818>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.496117, 28.945768, 27.846313> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.466911, 28.613720, 27.625200>,  <40.449387, 28.414492, 27.492533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.466911, 28.613720, 27.625200>,  <40.496117, 28.945768, 27.846313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.466911, 28.613720, 27.625200> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255029, -0.551375, 0.794321,
		-0.964173, -0.082978, 0.251964,
		-0.073015, -0.830121, -0.552783,
		40.445007, 28.364683, 27.459366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.096695, 28.605227, 28.189051>,  <40.496117, 28.945768, 27.846313>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.096695, 28.605227, 28.189051> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.305588, 28.345293, 27.968147>,  <40.430923, 28.189333, 27.835606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.305588, 28.345293, 27.968147>,  <40.096695, 28.605227, 28.189051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.305588, 28.345293, 27.968147> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259941, -0.495471, 0.828818,
		-0.812222, -0.576390, -0.089832,
		0.522232, -0.649833, -0.552260,
		40.462257, 28.150343, 27.802469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.876884, 27.791046, 28.286020>,  <40.096695, 28.605227, 28.189051>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.876884, 27.791046, 28.286020> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.256947, 27.813971, 28.163431>,  <40.484982, 27.827726, 28.089878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.256947, 27.813971, 28.163431>,  <39.876884, 27.791046, 28.286020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.256947, 27.813971, 28.163431> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285435, -0.555392, 0.781068,
		-0.125448, -0.829612, -0.544066,
		0.950152, 0.057312, -0.306473,
		40.541992, 27.831163, 28.071489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.187351, 27.477678, 28.293795>,  <39.876884, 27.791046, 28.286020>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.187351, 27.477678, 28.293795> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.287704, 27.635590, 28.647339>,  <39.347916, 27.730337, 28.859465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.287704, 27.635590, 28.647339>,  <39.187351, 27.477678, 28.293795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.287704, 27.635590, 28.647339> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875409, 0.482249, 0.033091,
		-0.413176, -0.782040, 0.466583,
		0.250888, 0.394778, 0.883858,
		39.362972, 27.754023, 28.912497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.632263, 27.410126, 28.835402>,  <39.187351, 27.477678, 28.293795>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.632263, 27.410126, 28.835402> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.867569, 27.727360, 28.898594>,  <39.008755, 27.917700, 28.936510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.867569, 27.727360, 28.898594>,  <38.632263, 27.410126, 28.835402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.867569, 27.727360, 28.898594> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808665, 0.577336, 0.112889,
		-0.001679, -0.194164, 0.980968,
		0.588267, 0.793085, 0.157983,
		39.044048, 27.965284, 28.945990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.397648, 27.765495, 29.362438>,  <38.632263, 27.410126, 28.835402>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.397648, 27.765495, 29.362438> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.598961, 28.039564, 29.151819>,  <38.719749, 28.204004, 29.025448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.598961, 28.039564, 29.151819>,  <38.397648, 27.765495, 29.362438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.598961, 28.039564, 29.151819> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757429, 0.643089, 0.112863,
		0.415947, 0.342020, 0.842622,
		0.503279, 0.685171, -0.526546,
		38.749943, 28.245115, 28.993855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.147770, 28.357960, 29.678970>,  <38.397648, 27.765495, 29.362438>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.147770, 28.357960, 29.678970> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.306778, 28.440203, 29.321264>,  <38.402184, 28.489548, 29.106642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.306778, 28.440203, 29.321264>,  <38.147770, 28.357960, 29.678970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.306778, 28.440203, 29.321264> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684025, 0.716007, -0.139439,
		0.611630, 0.667128, 0.425264,
		0.397516, 0.205606, -0.894263,
		38.426033, 28.501884, 29.052986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.934395, 28.995714, 29.621387>,  <38.147770, 28.357960, 29.678970>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.934395, 28.995714, 29.621387> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.037907, 28.907990, 29.245104>,  <38.100014, 28.855354, 29.019333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.037907, 28.907990, 29.245104>,  <37.934395, 28.995714, 29.621387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.037907, 28.907990, 29.245104> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663972, 0.666937, -0.338136,
		0.701552, 0.712107, 0.026971,
		0.258777, -0.219312, -0.940711,
		38.115540, 28.842196, 28.962891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.005718, 29.601051, 29.325241>,  <37.934395, 28.995714, 29.621387>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.005718, 29.601051, 29.325241> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.952797, 29.359409, 29.010904>,  <37.921043, 29.214424, 28.822302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.952797, 29.359409, 29.010904>,  <38.005718, 29.601051, 29.325241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.952797, 29.359409, 29.010904> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618694, 0.669741, -0.410688,
		0.774411, 0.431859, -0.462369,
		-0.132308, -0.604106, -0.785843,
		37.913105, 29.178177, 28.775150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.233398, 29.996023, 28.641619>,  <38.005718, 29.601051, 29.325241>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.233398, 29.996023, 28.641619> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.974667, 29.697485, 28.578911>,  <37.819427, 29.518362, 28.541286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.974667, 29.697485, 28.578911>,  <38.233398, 29.996023, 28.641619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.974667, 29.697485, 28.578911> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645242, 0.645159, -0.409185,
		0.406534, -0.163522, -0.898883,
		-0.646834, -0.746345, -0.156768,
		37.780617, 29.473581, 28.531879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.027859, 30.110556, 27.927814>,  <38.233398, 29.996023, 28.641619>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.027859, 30.110556, 27.927814> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.759148, 29.879616, 28.113451>,  <37.597919, 29.741053, 28.224833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.759148, 29.879616, 28.113451>,  <38.027859, 30.110556, 27.927814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.759148, 29.879616, 28.113451> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737879, 0.576688, -0.350665,
		-0.065182, -0.578014, -0.813420,
		-0.671779, -0.577348, 0.464094,
		37.557613, 29.706411, 28.252680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.590584, 29.950449, 27.472504>,  <38.027859, 30.110556, 27.927814>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.590584, 29.950449, 27.472504> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.372726, 29.869753, 27.798120>,  <37.242012, 29.821335, 27.993490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.372726, 29.869753, 27.798120>,  <37.590584, 29.950449, 27.472504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.372726, 29.869753, 27.798120> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756945, 0.536173, -0.373568,
		-0.361103, -0.819646, -0.444731,
		-0.544646, -0.201741, 0.814040,
		37.209332, 29.809231, 28.042332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.989529, 29.996424, 27.208994>,  <37.590584, 29.950449, 27.472504>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.989529, 29.996424, 27.208994> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.895760, 30.029367, 27.596451>,  <36.839500, 30.049133, 27.828924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.895760, 30.029367, 27.596451>,  <36.989529, 29.996424, 27.208994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.895760, 30.029367, 27.596451> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782917, 0.574663, -0.238333,
		-0.576271, -0.814235, -0.070230,
		-0.234418, 0.082360, 0.968641,
		36.825436, 30.054075, 27.887043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.243195, 29.877823, 27.227461>,  <36.989529, 29.996424, 27.208994>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.243195, 29.877823, 27.227461> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.354187, 30.074556, 27.557577>,  <36.420780, 30.192596, 27.755648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.354187, 30.074556, 27.557577>,  <36.243195, 29.877823, 27.227461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.354187, 30.074556, 27.557577> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.879174, 0.476357, 0.011708,
		-0.387374, -0.728823, 0.564587,
		0.277477, 0.491835, 0.825291,
		36.437431, 30.222107, 27.805164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.683224, 29.926294, 27.625870>,  <36.243195, 29.877823, 27.227461>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.683224, 29.926294, 27.625870> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.908875, 30.233732, 27.746550>,  <36.044266, 30.418194, 27.818958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.908875, 30.233732, 27.746550>,  <35.683224, 29.926294, 27.625870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.908875, 30.233732, 27.746550> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786694, 0.611284, -0.086280,
		-0.250739, -0.188674, 0.949490,
		0.564129, 0.768593, 0.301702,
		36.078114, 30.464310, 27.837061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.163280, 30.366377, 28.062332>,  <35.683224, 29.926294, 27.625870>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.163280, 30.366377, 28.062332> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.474560, 30.599897, 27.969744>,  <35.661327, 30.740009, 27.914190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.474560, 30.599897, 27.969744>,  <35.163280, 30.366377, 28.062332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.474560, 30.599897, 27.969744> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609272, 0.791197, -0.052861,
		0.152281, 0.182167, 0.971404,
		0.778202, 0.583800, -0.231473,
		35.708019, 30.775038, 27.900301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.172749, 30.912374, 28.573389>,  <35.163280, 30.366377, 28.062332>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.172749, 30.912374, 28.573389> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.388153, 31.048557, 28.265079>,  <35.517395, 31.130268, 28.080093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.388153, 31.048557, 28.265079>,  <35.172749, 30.912374, 28.573389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.388153, 31.048557, 28.265079> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492247, 0.869529, 0.040164,
		0.683884, 0.357782, 0.635842,
		0.538512, 0.340459, -0.770774,
		35.549706, 31.150694, 28.033848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.456985, 31.614111, 28.750074>,  <35.172749, 30.912374, 28.573389>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.456985, 31.614111, 28.750074> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.473793, 31.608940, 28.350462>,  <35.483875, 31.605837, 28.110695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.473793, 31.608940, 28.350462>,  <35.456985, 31.614111, 28.750074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.473793, 31.608940, 28.350462> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538986, 0.841646, -0.033558,
		0.841266, 0.539875, 0.028393,
		0.042014, -0.012927, -0.999033,
		35.486397, 31.605062, 28.050753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.554409, 32.334213, 28.552488>,  <35.456985, 31.614111, 28.750074>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.554409, 32.334213, 28.552488> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.478539, 32.178829, 28.191795>,  <35.433018, 32.085598, 27.975380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.478539, 32.178829, 28.191795>,  <35.554409, 32.334213, 28.552488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.478539, 32.178829, 28.191795> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399263, 0.869557, -0.290620,
		0.897002, 0.304905, -0.320031,
		-0.189674, -0.388463, -0.901732,
		35.421635, 32.062290, 27.921276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.812412, 32.823097, 28.085745>,  <35.554409, 32.334213, 28.552488>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.812412, 32.823097, 28.085745> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.541222, 32.603020, 27.890755>,  <35.378506, 32.470974, 27.773760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.541222, 32.603020, 27.890755>,  <35.812412, 32.823097, 28.085745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.541222, 32.603020, 27.890755> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340446, 0.822768, -0.455137,
		0.651494, -0.142612, -0.745128,
		-0.677976, -0.550195, -0.487477,
		35.337830, 32.437962, 27.744513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.890625, 32.952045, 27.234488>,  <35.812412, 32.823097, 28.085745>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.890625, 32.952045, 27.234488> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.525906, 32.807186, 27.311924>,  <35.307076, 32.720272, 27.358385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.525906, 32.807186, 27.311924>,  <35.890625, 32.952045, 27.234488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.525906, 32.807186, 27.311924> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401628, 0.688225, -0.604186,
		0.085570, -0.628646, -0.772969,
		-0.911797, -0.362147, 0.193590,
		35.252365, 32.698544, 27.370001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.492550, 32.814831, 26.545977>,  <35.890625, 32.952045, 27.234488>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.492550, 32.814831, 26.545977> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.246845, 32.906776, 26.847929>,  <35.099422, 32.961945, 27.029100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.246845, 32.906776, 26.847929>,  <35.492550, 32.814831, 26.545977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.246845, 32.906776, 26.847929> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542955, 0.571056, -0.615707,
		-0.572610, -0.788071, -0.225970,
		-0.614262, 0.229868, 0.754879,
		35.062565, 32.975739, 27.074392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.855373, 33.072887, 26.248545>,  <35.492550, 32.814831, 26.545977>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.855373, 33.072887, 26.248545> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.771217, 33.176785, 26.625538>,  <34.720722, 33.239120, 26.851734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.771217, 33.176785, 26.625538>,  <34.855373, 33.072887, 26.248545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.771217, 33.176785, 26.625538> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631825, 0.699539, -0.333830,
		-0.746010, -0.665719, 0.016931,
		-0.210394, 0.259738, 0.942481,
		34.708099, 33.254707, 26.908281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.121178, 33.063591, 26.268511>,  <34.855373, 33.072887, 26.248545>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.121178, 33.063591, 26.268511> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.232868, 33.299244, 26.571814>,  <34.299881, 33.440636, 26.753796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.232868, 33.299244, 26.571814>,  <34.121178, 33.063591, 26.268511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.232868, 33.299244, 26.571814> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604240, 0.721523, -0.338082,
		-0.746276, -0.363768, 0.557446,
		0.279226, 0.589133, 0.758258,
		34.316635, 33.475983, 26.799292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.599869, 33.392979, 26.392170>,  <34.121178, 33.063591, 26.268511>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.599869, 33.392979, 26.392170> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.863239, 33.622028, 26.587547>,  <34.021263, 33.759457, 26.704773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.863239, 33.622028, 26.587547>,  <33.599869, 33.392979, 26.392170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.863239, 33.622028, 26.587547> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479182, 0.819380, -0.314645,
		-0.580392, -0.026881, 0.813893,
		0.658430, 0.572620, 0.488442,
		34.060768, 33.793816, 26.734079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.197777, 33.928478, 26.685678>,  <33.599869, 33.392979, 26.392170>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.197777, 33.928478, 26.685678> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.569714, 34.074493, 26.667175>,  <33.792877, 34.162102, 26.656073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.569714, 34.074493, 26.667175>,  <33.197777, 33.928478, 26.685678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.569714, 34.074493, 26.667175> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355037, 0.857058, -0.373364,
		-0.096646, 0.363593, 0.926531,
		0.929843, 0.365038, -0.046258,
		33.848667, 34.184006, 26.653297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.147697, 34.587074, 27.050373>,  <33.197777, 33.928478, 26.685678>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.147697, 34.587074, 27.050373> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.463924, 34.608528, 26.806364>,  <33.653660, 34.621403, 26.659960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.463924, 34.608528, 26.806364>,  <33.147697, 34.587074, 27.050373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.463924, 34.608528, 26.806364> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328192, 0.878127, -0.348114,
		0.517003, 0.475412, 0.711822,
		0.790568, 0.053638, -0.610021,
		33.701096, 34.624619, 26.623358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.355690, 35.267597, 27.022362>,  <33.147697, 34.587074, 27.050373>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.355690, 35.267597, 27.022362> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.496319, 35.099854, 26.687569>,  <33.580696, 34.999207, 26.486692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.496319, 35.099854, 26.687569>,  <33.355690, 35.267597, 27.022362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.496319, 35.099854, 26.687569> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244623, 0.821844, -0.514522,
		0.903636, 0.385635, 0.186350,
		0.351569, -0.419355, -0.836983,
		33.601788, 34.974049, 26.436474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.626244, 35.834343, 26.723515>,  <33.355690, 35.267597, 27.022362>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.626244, 35.834343, 26.723515> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.586418, 35.565468, 26.430054>,  <33.562523, 35.404140, 26.253977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.586418, 35.565468, 26.430054>,  <33.626244, 35.834343, 26.723515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.586418, 35.565468, 26.430054> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472396, 0.680856, -0.559711,
		0.875745, 0.290850, -0.385327,
		-0.099560, -0.672192, -0.733652,
		33.556549, 35.363811, 26.209957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.778172, 36.231995, 26.169724>,  <33.626244, 35.834343, 26.723515>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.778172, 36.231995, 26.169724> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.553059, 35.926430, 26.043409>,  <33.417992, 35.743092, 25.967621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.553059, 35.926430, 26.043409>,  <33.778172, 36.231995, 26.169724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.553059, 35.926430, 26.043409> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523145, 0.624942, -0.579454,
		0.640002, -0.160899, -0.751338,
		-0.562776, -0.763911, -0.315791,
		33.384224, 35.697258, 25.948675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.136173, 36.779587, 26.010265>,  <33.778172, 36.231995, 26.169724>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.136173, 36.779587, 26.010265> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.051254, 37.146374, 26.145384>,  <34.000305, 37.366444, 26.226456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.051254, 37.146374, 26.145384>,  <34.136173, 36.779587, 26.010265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.051254, 37.146374, 26.145384> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666025, -0.117180, 0.736668,
		0.715082, 0.381370, -0.585846,
		-0.212294, 0.916965, 0.337796,
		33.987568, 37.421463, 26.246723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.740906, 37.032551, 26.090181>,  <34.136173, 36.779587, 26.010265>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.740906, 37.032551, 26.090181> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.487995, 37.226357, 26.331999>,  <34.336250, 37.342640, 26.477089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.487995, 37.226357, 26.331999>,  <34.740906, 37.032551, 26.090181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.487995, 37.226357, 26.331999> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582585, -0.217039, 0.783255,
		0.510709, 0.847430, -0.145044,
		-0.632274, 0.484516, 0.604544,
		34.298313, 37.371712, 26.513363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.183651, 37.480244, 26.581051>,  <34.740906, 37.032551, 26.090181>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.183651, 37.480244, 26.581051> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.829659, 37.445965, 26.764120>,  <34.617264, 37.425400, 26.873962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.829659, 37.445965, 26.764120>,  <35.183651, 37.480244, 26.581051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.829659, 37.445965, 26.764120> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463282, -0.260553, 0.847043,
		0.046662, 0.961649, 0.270285,
		-0.884981, -0.085693, 0.457673,
		34.564163, 37.420258, 26.901423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.366875, 37.825630, 27.229950>,  <35.183651, 37.480244, 26.581051>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.366875, 37.825630, 27.229950> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.042755, 37.594566, 27.269373>,  <34.848282, 37.455929, 27.293028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.042755, 37.594566, 27.269373>,  <35.366875, 37.825630, 27.229950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.042755, 37.594566, 27.269373> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366167, -0.367793, 0.854780,
		-0.457526, 0.728720, 0.509546,
		-0.810303, -0.577664, 0.098558,
		34.799664, 37.421268, 27.298941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.345211, 37.698902, 27.886267>,  <35.366875, 37.825630, 27.229950>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.345211, 37.698902, 27.886267> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.092850, 37.413227, 27.765003>,  <34.941433, 37.241821, 27.692245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.092850, 37.413227, 27.765003>,  <35.345211, 37.698902, 27.886267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.092850, 37.413227, 27.765003> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439437, -0.650945, 0.619003,
		-0.639422, 0.257309, 0.724521,
		-0.630899, -0.714186, -0.303158,
		34.903580, 37.198971, 27.674055>
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
