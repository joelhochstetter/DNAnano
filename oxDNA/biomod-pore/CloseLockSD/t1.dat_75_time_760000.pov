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
	location <25.469, 94.9851, 44.8844>
	look_at <25.469, 29.3977, 32.8955>
	direction <0, -65.5874, -11.9889>
	angle 67.0682
}


# declare cpy_camera_pos = <25.469, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 28
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16351, -0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16351, 0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<4.528857, 14.762159, 15.430297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.360910, 14.681617, 15.076310>,  <4.260142, 14.633291, 14.863918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.360910, 14.681617, 15.076310>,  <4.528857, 14.762159, 15.430297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.360910, 14.681617, 15.076310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231115, 0.919213, -0.318799,
		0.877666, -0.338382, -0.339411,
		-0.419867, -0.201356, -0.884967,
		4.234951, 14.621210, 14.810820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.975068, 15.058985, 14.858896>,  <4.528857, 14.762159, 15.430297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.975068, 15.058985, 14.858896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.596149, 15.031249, 14.733792>,  <4.368797, 15.014607, 14.658730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.596149, 15.031249, 14.733792>,  <4.975068, 15.058985, 14.858896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.596149, 15.031249, 14.733792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066058, 0.913033, -0.402501,
		0.313470, -0.401949, -0.860334,
		-0.947298, -0.069340, -0.312760,
		4.311960, 15.010448, 14.639964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.983335, 15.267784, 14.208766>,  <4.975068, 15.058985, 14.858896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.983335, 15.267784, 14.208766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.634857, 15.346414, 14.388711>,  <4.425770, 15.393591, 14.496678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.634857, 15.346414, 14.388711>,  <4.983335, 15.267784, 14.208766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.634857, 15.346414, 14.388711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073181, 0.958098, -0.276934,
		-0.485451, -0.208342, -0.849077,
		-0.871196, 0.196574, 0.449863,
		4.373498, 15.405386, 14.523670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.540028, 15.620733, 13.804649>,  <4.983335, 15.267784, 14.208766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.540028, 15.620733, 13.804649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.513757, 15.728325, 14.189012>,  <4.497995, 15.792879, 14.419629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.513757, 15.728325, 14.189012>,  <4.540028, 15.620733, 13.804649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.513757, 15.728325, 14.189012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007022, 0.963084, -0.269108,
		-0.997816, -0.010926, -0.065141,
		-0.065676, 0.268978, 0.960904,
		4.494054, 15.809018, 14.477283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.883220, 16.106400, 14.106254>,  <4.540028, 15.620733, 13.804649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.883220, 16.106400, 14.106254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.235820, 16.160622, 14.287177>,  <4.447380, 16.193155, 14.395731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.235820, 16.160622, 14.287177>,  <3.883220, 16.106400, 14.106254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.235820, 16.160622, 14.287177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047970, 0.927242, -0.371377,
		-0.469741, 0.349066, 0.810861,
		0.881500, 0.135554, 0.452309,
		4.500270, 16.201288, 14.422870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.832445, 16.715731, 14.370386>,  <3.883220, 16.106400, 14.106254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.832445, 16.715731, 14.370386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.226286, 16.646662, 14.359489>,  <4.462591, 16.605221, 14.352951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.226286, 16.646662, 14.359489>,  <3.832445, 16.715731, 14.370386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.226286, 16.646662, 14.359489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140782, 0.875646, -0.461978,
		0.103625, 0.451030, 0.886473,
		0.984603, -0.172672, -0.027242,
		4.521667, 16.594860, 14.351317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.053439, 17.303692, 14.658609>,  <3.832445, 16.715731, 14.370386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.053439, 17.303692, 14.658609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.372176, 17.152935, 14.469722>,  <4.563419, 17.062481, 14.356389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.372176, 17.152935, 14.469722>,  <4.053439, 17.303692, 14.658609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.372176, 17.152935, 14.469722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146705, 0.878887, -0.453912,
		0.586103, 0.292420, 0.755628,
		0.796844, -0.376894, -0.472219,
		4.611229, 17.039867, 14.328056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.716474, 17.741405, 14.849710>,  <4.053439, 17.303692, 14.658609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.716474, 17.741405, 14.849710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.763610, 17.562666, 14.494985>,  <4.791892, 17.455423, 14.282149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.763610, 17.562666, 14.494985>,  <4.716474, 17.741405, 14.849710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.763610, 17.562666, 14.494985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217333, 0.882992, -0.416042,
		0.968958, -0.143707, 0.201167,
		0.117841, -0.446848, -0.886815,
		4.798963, 17.428612, 14.228940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.272437, 18.102291, 14.619600>,  <4.716474, 17.741405, 14.849710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.272437, 18.102291, 14.619600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.127956, 17.932650, 14.287416>,  <5.041268, 17.830864, 14.088104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.127956, 17.932650, 14.287416>,  <5.272437, 18.102291, 14.619600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.127956, 17.932650, 14.287416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157937, 0.849897, -0.502724,
		0.919016, -0.312745, -0.240001,
		-0.361200, -0.424106, -0.830463,
		5.019596, 17.805418, 14.038277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.754981, 18.214697, 14.143124>,  <5.272437, 18.102291, 14.619600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.754981, 18.214697, 14.143124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.457938, 18.134104, 13.887644>,  <5.279712, 18.085749, 13.734356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.457938, 18.134104, 13.887644>,  <5.754981, 18.214697, 14.143124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.457938, 18.134104, 13.887644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281135, 0.771798, -0.570343,
		0.607861, -0.603103, -0.516500,
		-0.742609, -0.201483, -0.638699,
		5.235155, 18.073658, 13.696033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.990037, 18.250956, 13.455080>,  <5.754981, 18.214697, 14.143124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.990037, 18.250956, 13.455080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.596645, 18.264359, 13.383925>,  <5.360610, 18.272400, 13.341232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.596645, 18.264359, 13.383925>,  <5.990037, 18.250956, 13.455080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.596645, 18.264359, 13.383925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141572, 0.754766, -0.640535,
		0.112801, -0.655137, -0.747041,
		-0.983480, 0.033507, -0.177887,
		5.301601, 18.274410, 13.330559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.865406, 18.241791, 12.685792>,  <5.990037, 18.250956, 13.455080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.865406, 18.241791, 12.685792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.528413, 18.379072, 12.851895>,  <5.326218, 18.461441, 12.951557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.528413, 18.379072, 12.851895>,  <5.865406, 18.241791, 12.685792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.528413, 18.379072, 12.851895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056930, 0.709780, -0.702120,
		-0.535711, -0.615163, -0.578437,
		-0.842480, 0.343203, 0.415258,
		5.275669, 18.482033, 12.976473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.431405, 18.415405, 12.042327>,  <5.865406, 18.241791, 12.685792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.431405, 18.415405, 12.042327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.287351, 18.621578, 12.353360>,  <5.200919, 18.745281, 12.539980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.287351, 18.621578, 12.353360>,  <5.431405, 18.415405, 12.042327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.287351, 18.621578, 12.353360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285363, 0.732694, -0.617840,
		-0.888184, -0.444399, -0.116782,
		-0.360133, 0.515431, 0.777583,
		5.179311, 18.776207, 12.586635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.885602, 18.772625, 11.758735>,  <5.431405, 18.415405, 12.042327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.885602, 18.772625, 11.758735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.003405, 18.957558, 12.093283>,  <5.074087, 19.068518, 12.294012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.003405, 18.957558, 12.093283>,  <4.885602, 18.772625, 11.758735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.003405, 18.957558, 12.093283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004462, 0.875842, -0.482578,
		-0.955639, 0.138391, 0.260005,
		0.294507, 0.462330, 0.836371,
		5.091757, 19.096256, 12.344194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.458637, 19.328848, 11.830009>,  <4.885602, 18.772625, 11.758735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.458637, 19.328848, 11.830009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.784600, 19.404009, 12.049324>,  <4.980178, 19.449104, 12.180913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.784600, 19.404009, 12.049324>,  <4.458637, 19.328848, 11.830009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.784600, 19.404009, 12.049324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110755, 0.878073, -0.465533,
		-0.568910, 0.440092, 0.694738,
		0.814908, 0.187900, 0.548287,
		5.029073, 19.460379, 12.213810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.377255, 20.053501, 11.888880>,  <4.458637, 19.328848, 11.830009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.377255, 20.053501, 11.888880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.758132, 19.972649, 11.980507>,  <4.986659, 19.924137, 12.035483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.758132, 19.972649, 11.980507>,  <4.377255, 20.053501, 11.888880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.758132, 19.972649, 11.980507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302568, 0.727577, -0.615698,
		-0.042214, 0.655572, 0.753952,
		0.952193, -0.202130, 0.229069,
		5.043790, 19.912010, 12.049228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.740963, 20.670403, 12.235508>,  <4.377255, 20.053501, 11.888880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.740963, 20.670403, 12.235508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.020719, 20.441431, 12.064310>,  <5.188573, 20.304049, 11.961591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.020719, 20.441431, 12.064310>,  <4.740963, 20.670403, 12.235508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.020719, 20.441431, 12.064310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378839, 0.804670, -0.457152,
		0.606081, 0.157586, 0.779636,
		0.699391, -0.572427, -0.427995,
		5.230536, 20.269703, 11.935911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.327697, 21.132412, 12.089606>,  <4.740963, 20.670403, 12.235508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.327697, 21.132412, 12.089606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.389801, 20.815958, 11.852962>,  <5.427063, 20.626085, 11.710977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.389801, 20.815958, 11.852962>,  <5.327697, 21.132412, 12.089606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.389801, 20.815958, 11.852962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426240, 0.593906, -0.682345,
		0.891187, -0.146227, 0.429422,
		0.155259, -0.791134, -0.591609,
		5.436379, 20.578617, 11.675480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.960941, 21.185637, 11.940710>,  <5.327697, 21.132412, 12.089606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.960941, 21.185637, 11.940710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.829508, 20.953844, 11.642385>,  <5.750648, 20.814768, 11.463390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.829508, 20.953844, 11.642385>,  <5.960941, 21.185637, 11.940710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.829508, 20.953844, 11.642385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472332, 0.582996, -0.661073,
		0.817885, -0.569488, 0.082145,
		-0.328583, -0.579481, -0.745811,
		5.730933, 20.779999, 11.418642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.589891, 20.912788, 11.667267>,  <5.960941, 21.185637, 11.940710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.589891, 20.912788, 11.667267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.291150, 20.893181, 11.401995>,  <6.111905, 20.881416, 11.242831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.291150, 20.893181, 11.401995>,  <6.589891, 20.912788, 11.667267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.291150, 20.893181, 11.401995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431613, 0.722940, -0.539507,
		0.505886, -0.689170, -0.518773,
		-0.746853, -0.049020, -0.663179,
		6.067094, 20.878475, 11.203041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.935877, 20.797295, 11.063606>,  <6.589891, 20.912788, 11.667267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.935877, 20.797295, 11.063606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.579363, 20.945633, 10.959234>,  <6.365454, 21.034636, 10.896611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.579363, 20.945633, 10.959234>,  <6.935877, 20.797295, 11.063606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.579363, 20.945633, 10.959234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430821, 0.513079, -0.742391,
		-0.141435, -0.774096, -0.617067,
		-0.891285, 0.370846, -0.260929,
		6.311977, 21.056887, 10.880956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.042395, 20.912785, 10.324895>,  <6.935877, 20.797295, 11.063606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.042395, 20.912785, 10.324895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.700700, 21.108658, 10.394736>,  <6.495683, 21.226183, 10.436642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.700700, 21.108658, 10.394736>,  <7.042395, 20.912785, 10.324895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.700700, 21.108658, 10.394736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216015, 0.639813, -0.737548,
		-0.472881, -0.592324, -0.652331,
		-0.854237, 0.489685, 0.174604,
		6.444428, 21.255564, 10.447118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.761887, 21.077356, 9.692373>,  <7.042395, 20.912785, 10.324895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.761887, 21.077356, 9.692373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.575763, 21.331745, 9.938634>,  <6.464089, 21.484379, 10.086390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.575763, 21.331745, 9.938634>,  <6.761887, 21.077356, 9.692373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.575763, 21.331745, 9.938634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226750, 0.757969, -0.611610,
		-0.855612, -0.144989, -0.496897,
		-0.465310, 0.635972, 0.615651,
		6.436170, 21.522537, 10.123329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.252675, 21.491875, 9.244976>,  <6.761887, 21.077356, 9.692373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.252675, 21.491875, 9.244976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.379584, 21.684422, 9.571809>,  <6.455730, 21.799950, 9.767908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.379584, 21.684422, 9.571809>,  <6.252675, 21.491875, 9.244976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.379584, 21.684422, 9.571809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284581, 0.773561, -0.566231,
		-0.904628, 0.412176, 0.108442,
		0.317273, 0.481368, 0.817082,
		6.474766, 21.828833, 9.816934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.484239, 22.129366, 8.996270>,  <6.252675, 21.491875, 9.244976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.484239, 22.129366, 8.996270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.633255, 22.178532, 9.364206>,  <6.722664, 22.208031, 9.584968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.633255, 22.178532, 9.364206>,  <6.484239, 22.129366, 8.996270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.633255, 22.178532, 9.364206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395871, 0.875435, -0.277309,
		-0.839345, 0.467447, 0.277476,
		0.372539, 0.122913, 0.919841,
		6.745017, 22.215406, 9.640159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.119777, 22.676105, 9.334530>,  <6.484239, 22.129366, 8.996270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.119777, 22.676105, 9.334530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.486272, 22.620394, 9.484789>,  <6.706169, 22.586966, 9.574944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.486272, 22.620394, 9.484789>,  <6.119777, 22.676105, 9.334530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.486272, 22.620394, 9.484789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221091, 0.957706, -0.184166,
		-0.334109, 0.251792, 0.908279,
		0.916237, -0.139280, 0.375648,
		6.761143, 22.578609, 9.597483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.248935, 23.066092, 9.934110>,  <6.119777, 22.676105, 9.334530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.248935, 23.066092, 9.934110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.583072, 22.995567, 9.725834>,  <6.783555, 22.953253, 9.600868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.583072, 22.995567, 9.725834>,  <6.248935, 23.066092, 9.934110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.583072, 22.995567, 9.725834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041396, 0.964658, -0.260233,
		0.548169, 0.195829, 0.813118,
		0.835342, -0.176311, -0.520689,
		6.833675, 22.942675, 9.569627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.840865, 23.494398, 10.119748>,  <6.248935, 23.066092, 9.934110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.840865, 23.494398, 10.119748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.865764, 23.391823, 9.733927>,  <6.880704, 23.330278, 9.502434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.865764, 23.391823, 9.733927>,  <6.840865, 23.494398, 10.119748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.865764, 23.391823, 9.733927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071786, 0.965076, -0.251944,
		0.995476, -0.053558, 0.078483,
		0.062249, -0.256438, -0.964554,
		6.884439, 23.314892, 9.444561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.262310, 24.173252, 9.953212>,  <6.840865, 23.494398, 10.119748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.262310, 24.173252, 9.953212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.408539, 24.545528, 9.947945>,  <7.496277, 24.768894, 9.944784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.408539, 24.545528, 9.947945>,  <7.262310, 24.173252, 9.953212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.408539, 24.545528, 9.947945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.896462, 0.355866, 0.264035,
		0.250420, -0.084721, 0.964423,
		0.365575, 0.930689, -0.013167,
		7.518212, 24.824736, 9.943995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.029979, 24.441153, 10.516054>,  <7.262310, 24.173252, 9.953212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.029979, 24.441153, 10.516054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.129664, 24.752060, 10.284972>,  <7.189475, 24.938604, 10.146323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.129664, 24.752060, 10.284972>,  <7.029979, 24.441153, 10.516054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.129664, 24.752060, 10.284972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845889, 0.465163, 0.260949,
		0.471553, 0.423638, 0.773413,
		0.249216, 0.777273, -0.577700,
		7.204428, 24.985241, 10.111660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.636207, 24.983765, 10.772836>,  <7.029979, 24.441153, 10.516054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.636207, 24.983765, 10.772836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.754940, 25.077532, 10.402552>,  <6.826179, 25.133791, 10.180381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.754940, 25.077532, 10.402552>,  <6.636207, 24.983765, 10.772836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.754940, 25.077532, 10.402552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836955, 0.530612, -0.134006,
		0.459780, 0.814556, 0.353697,
		0.296831, 0.234416, -0.925711,
		6.843989, 25.147856, 10.124839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.095162, 24.798130, 11.283378>,  <6.636207, 24.983765, 10.772836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.095162, 24.798130, 11.283378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.022422, 25.171814, 11.406137>,  <5.978778, 25.396025, 11.479792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.022422, 25.171814, 11.406137>,  <6.095162, 24.798130, 11.283378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.022422, 25.171814, 11.406137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838500, -0.310353, 0.447882,
		0.513662, -0.175886, 0.839772,
		-0.181850, 0.934208, 0.306897,
		5.967867, 25.452076, 11.498205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.137061, 24.694906, 12.044266>,  <6.095162, 24.798130, 11.283378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.137061, 24.694906, 12.044266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.525985, 24.777782, 12.001032>,  <6.759340, 24.827509, 11.975092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.525985, 24.777782, 12.001032>,  <6.137061, 24.694906, 12.044266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.525985, 24.777782, 12.001032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233592, -0.848386, 0.475053,
		0.006730, -0.487148, -0.873294,
		0.972311, 0.207192, -0.108085,
		6.817678, 24.839939, 11.968606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.544568, 24.219395, 11.661255>,  <6.137061, 24.694906, 12.044266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.544568, 24.219395, 11.661255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.782890, 24.364347, 11.947945>,  <6.925884, 24.451319, 12.119959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.782890, 24.364347, 11.947945>,  <6.544568, 24.219395, 11.661255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.782890, 24.364347, 11.947945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126246, -0.923581, 0.362022,
		0.793143, -0.125211, -0.596025,
		0.595807, 0.362381, 0.716725,
		6.961632, 24.473063, 12.162962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.192403, 23.970646, 11.634483>,  <6.544568, 24.219395, 11.661255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.192403, 23.970646, 11.634483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.089361, 24.057701, 12.011051>,  <7.027536, 24.109934, 12.236992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.089361, 24.057701, 12.011051>,  <7.192403, 23.970646, 11.634483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.089361, 24.057701, 12.011051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192449, -0.943226, 0.270716,
		0.946891, 0.250914, 0.201096,
		-0.257606, 0.217638, 0.941421,
		7.012079, 24.122992, 12.293477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.709528, 23.652393, 12.054433>,  <7.192403, 23.970646, 11.634483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.709528, 23.652393, 12.054433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.387210, 23.686596, 12.288829>,  <7.193820, 23.707117, 12.429466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.387210, 23.686596, 12.288829>,  <7.709528, 23.652393, 12.054433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.387210, 23.686596, 12.288829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161371, -0.920371, 0.356198,
		0.569785, 0.381584, 0.727832,
		-0.805794, 0.085505, 0.585990,
		7.145472, 23.712248, 12.464626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.964344, 23.122320, 12.705484>,  <7.709528, 23.652393, 12.054433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.964344, 23.122320, 12.705484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.587716, 23.231283, 12.784719>,  <7.361739, 23.296661, 12.832260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.587716, 23.231283, 12.784719>,  <7.964344, 23.122320, 12.705484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.587716, 23.231283, 12.784719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118011, -0.817654, 0.563484,
		0.315464, 0.507184, 0.802027,
		-0.941571, 0.272407, 0.198087,
		7.305244, 23.313005, 12.844146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.887033, 22.959469, 13.428357>,  <7.964344, 23.122320, 12.705484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.887033, 22.959469, 13.428357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.548625, 22.957670, 13.215103>,  <7.345581, 22.956591, 13.087151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.548625, 22.957670, 13.215103>,  <7.887033, 22.959469, 13.428357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.548625, 22.957670, 13.215103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210615, -0.915813, 0.341948,
		-0.489789, 0.401580, 0.773847,
		-0.846019, -0.004499, -0.533134,
		7.294820, 22.956320, 13.055162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.332390, 22.866873, 13.920700>,  <7.887033, 22.959469, 13.428357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.332390, 22.866873, 13.920700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.252403, 22.740421, 13.549739>,  <7.204412, 22.664551, 13.327162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.252403, 22.740421, 13.549739>,  <7.332390, 22.866873, 13.920700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.252403, 22.740421, 13.549739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142904, -0.926989, 0.346800,
		-0.969325, 0.201878, 0.140191,
		-0.199967, -0.316128, -0.927403,
		7.192413, 22.645582, 13.271518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.682543, 22.509560, 13.966393>,  <7.332390, 22.866873, 13.920700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.682543, 22.509560, 13.966393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.845871, 22.381689, 13.624379>,  <6.943868, 22.304966, 13.419171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.845871, 22.381689, 13.624379>,  <6.682543, 22.509560, 13.966393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.845871, 22.381689, 13.624379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153895, -0.947374, 0.280710,
		-0.899773, 0.016966, -0.436029,
		0.408320, -0.319678, -0.855033,
		6.968367, 22.285786, 13.367869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.237575, 22.013226, 13.731515>,  <6.682543, 22.509560, 13.966393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.237575, 22.013226, 13.731515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.589611, 21.935518, 13.558217>,  <6.800832, 21.888893, 13.454238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.589611, 21.935518, 13.558217>,  <6.237575, 22.013226, 13.731515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.589611, 21.935518, 13.558217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160313, -0.980463, 0.113984,
		-0.446924, -0.030861, -0.894040,
		0.880090, -0.194268, -0.433245,
		6.853638, 21.877237, 13.428244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.056026, 21.447073, 13.354826>,  <6.237575, 22.013226, 13.731515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.056026, 21.447073, 13.354826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.455940, 21.448767, 13.362963>,  <6.695889, 21.449783, 13.367845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.455940, 21.448767, 13.362963>,  <6.056026, 21.447073, 13.354826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.455940, 21.448767, 13.362963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004421, -0.999949, -0.009117,
		0.020302, 0.009205, -0.999751,
		0.999784, 0.004235, 0.020341,
		6.755876, 21.450037, 13.369065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.274816, 20.949173, 12.807669>,  <6.056026, 21.447073, 13.354826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.274816, 20.949173, 12.807669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.582972, 20.986990, 13.059879>,  <6.767865, 21.009680, 13.211205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.582972, 20.986990, 13.059879>,  <6.274816, 20.949173, 12.807669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.582972, 20.986990, 13.059879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073579, -0.995521, 0.059368,
		0.633315, 0.000657, -0.773894,
		0.770388, 0.094541, 0.630527,
		6.814088, 21.015352, 13.249038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.640736, 20.415825, 12.697955>,  <6.274816, 20.949173, 12.807669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.640736, 20.415825, 12.697955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.813533, 20.518192, 13.043877>,  <6.917212, 20.579613, 13.251430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.813533, 20.518192, 13.043877>,  <6.640736, 20.415825, 12.697955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.813533, 20.518192, 13.043877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167405, -0.964985, 0.201940,
		0.886203, 0.057536, -0.459710,
		0.431994, 0.255918, 0.864805,
		6.943131, 20.594967, 13.303318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.175712, 19.985325, 12.747683>,  <6.640736, 20.415825, 12.697955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.175712, 19.985325, 12.747683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.127505, 20.118462, 13.121782>,  <7.098580, 20.198343, 13.346242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.127505, 20.118462, 13.121782>,  <7.175712, 19.985325, 12.747683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.127505, 20.118462, 13.121782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315829, -0.880310, 0.353986,
		0.941131, 0.338041, 0.000972,
		-0.120518, 0.332841, 0.935250,
		7.091350, 20.218313, 13.402357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.746198, 19.680056, 13.087858>,  <7.175712, 19.985325, 12.747683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.746198, 19.680056, 13.087858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.507794, 19.781572, 13.392584>,  <7.364752, 19.842482, 13.575419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.507794, 19.781572, 13.392584>,  <7.746198, 19.680056, 13.087858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.507794, 19.781572, 13.392584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210711, -0.866058, 0.453371,
		0.774837, 0.430736, 0.462702,
		-0.596010, 0.253792, 0.761815,
		7.328991, 19.857710, 13.621128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.050746, 19.496927, 13.696785>,  <7.746198, 19.680056, 13.087858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.050746, 19.496927, 13.696785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.682544, 19.519627, 13.851421>,  <7.461623, 19.533247, 13.944203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.682544, 19.519627, 13.851421>,  <8.050746, 19.496927, 13.696785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.682544, 19.519627, 13.851421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102629, -0.919543, 0.379353,
		0.377014, 0.388872, 0.840618,
		-0.920504, 0.056750, 0.386590,
		7.406393, 19.536652, 13.967399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.069815, 19.323250, 14.496965>,  <8.050746, 19.496927, 13.696785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.069815, 19.323250, 14.496965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.701471, 19.267040, 14.351489>,  <7.480465, 19.233315, 14.264203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.701471, 19.267040, 14.351489>,  <8.069815, 19.323250, 14.496965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.701471, 19.267040, 14.351489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004324, -0.936414, 0.350870,
		-0.389870, 0.321529, 0.862914,
		-0.920860, -0.140525, -0.363690,
		7.425213, 19.224882, 14.242382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.511030, 19.103058, 15.079253>,  <8.069815, 19.323250, 14.496965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.511030, 19.103058, 15.079253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.387720, 18.985449, 14.717365>,  <7.313735, 18.914885, 14.500233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.387720, 18.985449, 14.717365>,  <7.511030, 19.103058, 15.079253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.387720, 18.985449, 14.717365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141578, -0.926266, 0.349265,
		-0.940703, 0.235758, 0.243917,
		-0.308274, -0.294021, -0.904720,
		7.295238, 18.897242, 14.445950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.973423, 18.774935, 15.285708>,  <7.511030, 19.103058, 15.079253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.973423, 18.774935, 15.285708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.034871, 18.637770, 14.915020>,  <7.071739, 18.555470, 14.692607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.034871, 18.637770, 14.915020>,  <6.973423, 18.774935, 15.285708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.034871, 18.637770, 14.915020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202002, -0.928945, 0.310253,
		-0.967262, 0.139539, -0.211973,
		0.153618, -0.342915, -0.926720,
		7.080956, 18.534895, 14.637004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.444620, 18.343973, 15.098717>,  <6.973423, 18.774935, 15.285708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.444620, 18.343973, 15.098717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.721442, 18.236721, 14.830638>,  <6.887536, 18.172369, 14.669790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.721442, 18.236721, 14.830638>,  <6.444620, 18.343973, 15.098717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.721442, 18.236721, 14.830638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209030, -0.963112, 0.169473,
		-0.690917, 0.022807, -0.722574,
		0.692055, -0.268132, -0.670198,
		6.929059, 18.156282, 14.629579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.115663, 17.897167, 14.665532>,  <6.444620, 18.343973, 15.098717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.115663, 17.897167, 14.665532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.509138, 17.827244, 14.648542>,  <6.745222, 17.785290, 14.638349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.509138, 17.827244, 14.648542>,  <6.115663, 17.897167, 14.665532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.509138, 17.827244, 14.648542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159994, -0.958075, 0.237684,
		-0.082242, -0.227011, -0.970413,
		0.983686, -0.174808, -0.042474,
		6.804244, 17.774801, 14.635800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.126266, 17.342867, 14.226089>,  <6.115663, 17.897167, 14.665532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.126266, 17.342867, 14.226089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.478969, 17.330559, 14.414369>,  <6.690590, 17.323174, 14.527336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.478969, 17.330559, 14.414369>,  <6.126266, 17.342867, 14.226089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.478969, 17.330559, 14.414369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113583, -0.982359, 0.148560,
		0.457825, -0.184457, -0.869696,
		0.881757, -0.030768, 0.470699,
		6.743496, 17.321329, 14.555578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.592113, 16.809118, 13.925061>,  <6.126266, 17.342867, 14.226089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.592113, 16.809118, 13.925061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.752861, 16.881954, 14.284025>,  <6.849309, 16.925655, 14.499404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.752861, 16.881954, 14.284025>,  <6.592113, 16.809118, 13.925061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.752861, 16.881954, 14.284025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056820, -0.973182, 0.222911,
		0.913933, -0.140571, -0.380744,
		0.401867, 0.182092, 0.897410,
		6.873421, 16.936583, 14.553248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.078417, 16.255293, 14.029112>,  <6.592113, 16.809118, 13.925061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.078417, 16.255293, 14.029112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.011495, 16.411413, 14.391255>,  <6.971341, 16.505085, 14.608541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.011495, 16.411413, 14.391255>,  <7.078417, 16.255293, 14.029112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.011495, 16.411413, 14.391255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083141, -0.920617, 0.381513,
		0.982393, -0.011443, 0.186476,
		-0.167307, 0.390299, 0.905359,
		6.961303, 16.528503, 14.662863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.548440, 15.799747, 14.553812>,  <7.078417, 16.255293, 14.029112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.548440, 15.799747, 14.553812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.248266, 15.981466, 14.745837>,  <7.068161, 16.090498, 14.861053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.248266, 15.981466, 14.745837>,  <7.548440, 15.799747, 14.553812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.248266, 15.981466, 14.745837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312897, -0.883970, 0.347409,
		0.582189, 0.110497, 0.805510,
		-0.750434, 0.454300, 0.480063,
		7.023136, 16.117756, 14.889856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.767560, 15.789215, 15.143141>,  <7.548440, 15.799747, 14.553812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.767560, 15.789215, 15.143141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.376125, 15.789805, 15.060806>,  <7.141265, 15.790159, 15.011405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.376125, 15.789805, 15.060806>,  <7.767560, 15.789215, 15.143141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.376125, 15.789805, 15.060806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072908, -0.937633, 0.339894,
		-0.192498, 0.347622, 0.917662,
		-0.978585, 0.001476, -0.205837,
		7.082550, 15.790248, 14.999055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.369272, 15.582677, 15.786348>,  <7.767560, 15.789215, 15.143141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.369272, 15.582677, 15.786348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.178780, 15.475079, 15.451483>,  <7.064484, 15.410520, 15.250564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.178780, 15.475079, 15.451483>,  <7.369272, 15.582677, 15.786348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.178780, 15.475079, 15.451483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048262, -0.958620, 0.280568,
		-0.877994, 0.093212, 0.469508,
		-0.476232, -0.268997, -0.837164,
		7.035910, 15.394380, 15.200334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.066092, 15.322549, 15.725797>,  <7.369272, 15.582677, 15.786348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.066092, 15.322549, 15.725797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.193710, 15.402924, 15.355319>,  <8.270281, 15.451149, 15.133033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.193710, 15.402924, 15.355319>,  <8.066092, 15.322549, 15.725797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.193710, 15.402924, 15.355319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944420, -0.149138, 0.292966,
		-0.079262, -0.968185, -0.237351,
		0.319043, 0.200938, -0.926194,
		8.289423, 15.463205, 15.077461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.885236, 15.195439, 15.716715>,  <8.066092, 15.322549, 15.725797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.885236, 15.195439, 15.716715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.280179, 15.182872, 15.778856>,  <9.517145, 15.175331, 15.816141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.280179, 15.182872, 15.778856>,  <8.885236, 15.195439, 15.716715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.280179, 15.182872, 15.778856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043995, -0.995968, 0.078181,
		0.152272, -0.084028, -0.984760,
		0.987359, -0.031420, 0.155355,
		9.576386, 15.173446, 15.825462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.180164, 14.628891, 15.346132>,  <8.885236, 15.195439, 15.716715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.180164, 14.628891, 15.346132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.398870, 14.719340, 15.668602>,  <9.530094, 14.773610, 15.862083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.398870, 14.719340, 15.668602>,  <9.180164, 14.628891, 15.346132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.398870, 14.719340, 15.668602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112897, -0.973959, 0.196616,
		0.829640, -0.016488, -0.558055,
		0.546764, 0.226123, 0.806175,
		9.562900, 14.787177, 15.910455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.624611, 14.237111, 15.348263>,  <9.180164, 14.628891, 15.346132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.624611, 14.237111, 15.348263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.657674, 14.342711, 15.732653>,  <9.677511, 14.406072, 15.963286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.657674, 14.342711, 15.732653>,  <9.624611, 14.237111, 15.348263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.657674, 14.342711, 15.732653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201761, -0.948738, 0.243286,
		0.975941, 0.173778, -0.131684,
		0.082656, 0.264001, 0.960974,
		9.682470, 14.421912, 16.020945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.301446, 14.055477, 15.467618>,  <9.624611, 14.237111, 15.348263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.301446, 14.055477, 15.467618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.030707, 14.055478, 15.762068>,  <9.868264, 14.055478, 15.938738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.030707, 14.055478, 15.762068>,  <10.301446, 14.055477, 15.467618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.030707, 14.055478, 15.762068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198189, -0.963075, 0.182232,
		0.708942, 0.269235, 0.651854,
		-0.676847, 0.000002, 0.736124,
		9.827653, 14.055479, 15.982904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.613737, 13.902479, 16.078695>,  <10.301446, 14.055477, 15.467618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.613737, 13.902479, 16.078695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.236110, 13.777910, 16.035336>,  <10.009533, 13.703169, 16.009319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.236110, 13.777910, 16.035336>,  <10.613737, 13.902479, 16.078695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.236110, 13.777910, 16.035336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301987, -0.948560, 0.095070,
		-0.132432, 0.057017, 0.989551,
		-0.944069, -0.311422, -0.108402,
		9.952889, 13.684484, 16.002815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.339978, 13.881016, 15.899531>,  <10.613737, 13.902479, 16.078695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.339978, 13.881016, 15.899531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.731478, 13.799056, 15.902856>,  <11.966377, 13.749880, 15.904850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.731478, 13.799056, 15.902856>,  <11.339978, 13.881016, 15.899531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.731478, 13.799056, 15.902856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017209, 0.122450, 0.992326,
		-0.204345, -0.971093, 0.123373,
		0.978748, -0.204900, 0.008310,
		12.025102, 13.737586, 15.905349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.435978, 13.293991, 16.403088>,  <11.339978, 13.881016, 15.899531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.435978, 13.293991, 16.403088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.792960, 13.471272, 16.369398>,  <12.007150, 13.577640, 16.349184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.792960, 13.471272, 16.369398>,  <11.435978, 13.293991, 16.403088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.792960, 13.471272, 16.369398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106132, -0.024807, 0.994042,
		0.438472, -0.896079, -0.069176,
		0.892456, 0.443202, -0.084225,
		12.060698, 13.604232, 16.344131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.932452, 12.878078, 16.927282>,  <11.435978, 13.293991, 16.403088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.932452, 12.878078, 16.927282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.105840, 13.226908, 16.836430>,  <12.209872, 13.436206, 16.781918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.105840, 13.226908, 16.836430>,  <11.932452, 12.878078, 16.927282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.105840, 13.226908, 16.836430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208793, 0.147994, 0.966697,
		0.876647, -0.466457, -0.117932,
		0.433469, 0.872075, -0.227132,
		12.235881, 13.488530, 16.768290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.600575, 12.957436, 17.336380>,  <11.932452, 12.878078, 16.927282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.600575, 12.957436, 17.336380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.464059, 13.311307, 17.209345>,  <12.382149, 13.523630, 17.133123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.464059, 13.311307, 17.209345>,  <12.600575, 12.957436, 17.336380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.464059, 13.311307, 17.209345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040332, 0.351349, 0.935376,
		0.939092, 0.306427, -0.155593,
		-0.341292, 0.884679, -0.317590,
		12.361671, 13.576711, 17.114067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.053629, 13.315508, 17.714476>,  <12.600575, 12.957436, 17.336380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.053629, 13.315508, 17.714476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.760098, 13.568764, 17.615980>,  <12.583979, 13.720717, 17.556883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.760098, 13.568764, 17.615980>,  <13.053629, 13.315508, 17.714476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.760098, 13.568764, 17.615980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098353, 0.457666, 0.883668,
		0.672178, 0.624242, -0.398118,
		-0.733828, 0.633138, -0.246237,
		12.539949, 13.758705, 17.542109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.301735, 13.920369, 17.872215>,  <13.053629, 13.315508, 17.714476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.301735, 13.920369, 17.872215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.907928, 13.990352, 17.867910>,  <12.671643, 14.032341, 17.865328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.907928, 13.990352, 17.867910>,  <13.301735, 13.920369, 17.872215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.907928, 13.990352, 17.867910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081116, 0.509166, 0.856837,
		0.155388, 0.842698, -0.515475,
		-0.984518, 0.174955, -0.010762,
		12.612573, 14.042838, 17.864681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.285195, 14.571586, 18.126312>,  <13.301735, 13.920369, 17.872215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.285195, 14.571586, 18.126312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.907928, 14.446165, 18.170341>,  <12.681567, 14.370913, 18.196760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.907928, 14.446165, 18.170341>,  <13.285195, 14.571586, 18.126312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.907928, 14.446165, 18.170341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054279, 0.472147, 0.879847,
		-0.327849, 0.823871, -0.462334,
		-0.943170, -0.313552, 0.110074,
		12.624976, 14.352099, 18.203363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.902681, 15.181860, 18.352180>,  <13.285195, 14.571586, 18.126312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.902681, 15.181860, 18.352180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.722021, 14.849607, 18.482450>,  <12.613626, 14.650256, 18.560614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.722021, 14.849607, 18.482450>,  <12.902681, 15.181860, 18.352180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.722021, 14.849607, 18.482450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006869, 0.368254, 0.929700,
		-0.892169, 0.417662, -0.172028,
		-0.451650, -0.830631, 0.325676,
		12.586526, 14.600418, 18.580153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.351388, 15.503800, 18.795355>,  <12.902681, 15.181860, 18.352180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.351388, 15.503800, 18.795355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.375280, 15.113463, 18.879414>,  <12.389616, 14.879261, 18.929850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.375280, 15.113463, 18.879414>,  <12.351388, 15.503800, 18.795355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.375280, 15.113463, 18.879414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023293, 0.211829, 0.977029,
		-0.997943, -0.053465, 0.035383,
		0.059732, -0.975843, 0.210147,
		12.393200, 14.820710, 18.942457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.892304, 15.404478, 19.253054>,  <12.351388, 15.503800, 18.795355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.892304, 15.404478, 19.253054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.147542, 15.099269, 19.294300>,  <12.300685, 14.916143, 19.319048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.147542, 15.099269, 19.294300>,  <11.892304, 15.404478, 19.253054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.147542, 15.099269, 19.294300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094353, 0.210401, 0.973051,
		-0.764155, -0.611170, 0.206249,
		0.638095, -0.763022, 0.103114,
		12.338970, 14.870362, 19.325233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.709764, 15.087012, 19.919308>,  <11.892304, 15.404478, 19.253054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.709764, 15.087012, 19.919308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.076212, 14.943601, 19.847555>,  <12.296082, 14.857553, 19.804502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.076212, 14.943601, 19.847555>,  <11.709764, 15.087012, 19.919308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.076212, 14.943601, 19.847555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138644, -0.136502, 0.980890,
		-0.376164, -0.923485, -0.075345,
		0.916122, -0.358529, -0.179383,
		12.351048, 14.836042, 19.793741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.623945, 14.460615, 20.229683>,  <11.709764, 15.087012, 19.919308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.623945, 14.460615, 20.229683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.002245, 14.586967, 20.199270>,  <12.229224, 14.662777, 20.181023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.002245, 14.586967, 20.199270>,  <11.623945, 14.460615, 20.229683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.002245, 14.586967, 20.199270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147961, -0.210402, 0.966353,
		0.289253, -0.925177, -0.245726,
		0.945748, 0.315878, -0.076031,
		12.285970, 14.681730, 20.176460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.039491, 13.974137, 20.644476>,  <11.623945, 14.460615, 20.229683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.039491, 13.974137, 20.644476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.249834, 14.313144, 20.615658>,  <12.376040, 14.516547, 20.598368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.249834, 14.313144, 20.615658>,  <12.039491, 13.974137, 20.644476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.249834, 14.313144, 20.615658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274096, -0.088666, 0.957606,
		0.805198, -0.523313, -0.278926,
		0.525859, 0.847515, -0.072044,
		12.407592, 14.567398, 20.594044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.633356, 13.782228, 20.882626>,  <12.039491, 13.974137, 20.644476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.633356, 13.782228, 20.882626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.564377, 14.174812, 20.916090>,  <12.522989, 14.410362, 20.936169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.564377, 14.174812, 20.916090>,  <12.633356, 13.782228, 20.882626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.564377, 14.174812, 20.916090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030270, -0.090175, 0.995466,
		0.984553, 0.169135, 0.045260,
		-0.172449, 0.981459, 0.083663,
		12.512642, 14.469250, 20.941189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.788725, 13.886954, 21.560118>,  <12.633356, 13.782228, 20.882626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.788725, 13.886954, 21.560118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.624881, 14.240254, 21.468826>,  <12.526574, 14.452234, 21.414051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.624881, 14.240254, 21.468826>,  <12.788725, 13.886954, 21.560118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.624881, 14.240254, 21.468826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155649, 0.178846, 0.971487,
		0.898884, 0.433455, 0.064220,
		-0.409610, 0.883250, -0.228229,
		12.501998, 14.505230, 21.400358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.098039, 14.401616, 22.021093>,  <12.788725, 13.886954, 21.560118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.098039, 14.401616, 22.021093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.739952, 14.540985, 21.909960>,  <12.525101, 14.624606, 21.843279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.739952, 14.540985, 21.909960>,  <13.098039, 14.401616, 22.021093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.739952, 14.540985, 21.909960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273151, 0.063586, 0.959867,
		0.352105, 0.935179, 0.038249,
		-0.895216, 0.348422, -0.277833,
		12.471388, 14.645512, 21.826611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.000884, 15.084714, 22.294628>,  <13.098039, 14.401616, 22.021093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.000884, 15.084714, 22.294628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.632377, 14.951308, 22.214596>,  <12.411272, 14.871264, 22.166576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.632377, 14.951308, 22.214596>,  <13.000884, 15.084714, 22.294628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.632377, 14.951308, 22.214596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274906, 0.194496, 0.941593,
		-0.275120, 0.922464, -0.270869,
		-0.921268, -0.333515, -0.200081,
		12.355996, 14.851254, 22.154572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.524766, 15.544304, 22.516390>,  <13.000884, 15.084714, 22.294628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.524766, 15.544304, 22.516390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.290023, 15.221268, 22.493088>,  <12.149177, 15.027446, 22.479107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.290023, 15.221268, 22.493088>,  <12.524766, 15.544304, 22.516390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.290023, 15.221268, 22.493088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296551, 0.147434, 0.943568,
		-0.753428, 0.571017, -0.326015,
		-0.586859, -0.807591, -0.058255,
		12.113965, 14.978991, 22.475611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.865026, 15.783802, 22.764898>,  <12.524766, 15.544304, 22.516390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.865026, 15.783802, 22.764898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.852942, 15.383994, 22.767651>,  <11.845691, 15.144110, 22.769302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.852942, 15.383994, 22.767651>,  <11.865026, 15.783802, 22.764898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.852942, 15.383994, 22.767651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385753, 0.018010, 0.922427,
		-0.922108, 0.025212, -0.386112,
		-0.030210, -0.999520, 0.006882,
		11.843879, 15.084138, 22.769714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.085766, 15.534277, 22.900019>,  <11.865026, 15.783802, 22.764898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.085766, 15.534277, 22.900019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.311050, 15.221884, 23.007988>,  <11.446221, 15.034448, 23.072769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.311050, 15.221884, 23.007988>,  <11.085766, 15.534277, 22.900019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.311050, 15.221884, 23.007988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459991, -0.024965, 0.887572,
		-0.686441, -0.624052, -0.373306,
		0.563211, -0.780984, 0.269922,
		11.480014, 14.987589, 23.088964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.688862, 15.001880, 23.422371>,  <11.085766, 15.534277, 22.900019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.688862, 15.001880, 23.422371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.077280, 14.923828, 23.477501>,  <11.310331, 14.876997, 23.510580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.077280, 14.923828, 23.477501>,  <10.688862, 15.001880, 23.422371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.077280, 14.923828, 23.477501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159073, -0.097701, 0.982421,
		-0.178234, -0.975899, -0.125913,
		0.971045, -0.195131, 0.137826,
		11.368593, 14.865290, 23.518848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.724139, 14.260230, 23.617722>,  <10.688862, 15.001880, 23.422371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.724139, 14.260230, 23.617722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.037277, 14.462134, 23.763252>,  <11.225160, 14.583277, 23.850571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.037277, 14.462134, 23.763252>,  <10.724139, 14.260230, 23.617722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.037277, 14.462134, 23.763252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322136, -0.171474, 0.931034,
		0.532336, -0.846058, 0.028364,
		0.782845, 0.504760, 0.363828,
		11.272131, 14.613563, 23.872400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.856176, 13.967646, 24.276152>,  <10.724139, 14.260230, 23.617722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.856176, 13.967646, 24.276152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.092553, 14.288939, 24.306091>,  <11.234380, 14.481715, 24.324055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.092553, 14.288939, 24.306091>,  <10.856176, 13.967646, 24.276152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.092553, 14.288939, 24.306091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254521, 0.097597, 0.962130,
		0.765510, -0.587614, 0.262114,
		0.590943, 0.803234, 0.074848,
		11.269836, 14.529909, 24.328547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.264092, 13.829983, 24.923729>,  <10.856176, 13.967646, 24.276152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.264092, 13.829983, 24.923729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.239471, 14.223887, 24.858669>,  <11.224699, 14.460231, 24.819633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.239471, 14.223887, 24.858669>,  <11.264092, 13.829983, 24.923729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.239471, 14.223887, 24.858669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249258, 0.142627, 0.957877,
		0.966479, 0.099501, 0.236681,
		-0.061553, 0.984762, -0.162648,
		11.221005, 14.519316, 24.809875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.598291, 14.137525, 25.492880>,  <11.264092, 13.829983, 24.923729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.598291, 14.137525, 25.492880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.377595, 14.442627, 25.357952>,  <11.245177, 14.625689, 25.276995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.377595, 14.442627, 25.357952>,  <11.598291, 14.137525, 25.492880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.377595, 14.442627, 25.357952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271820, 0.217913, 0.937351,
		0.788476, 0.608867, 0.087101,
		-0.551742, 0.762755, -0.337321,
		11.212072, 14.671453, 25.256756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.721809, 14.604479, 25.938402>,  <11.598291, 14.137525, 25.492880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.721809, 14.604479, 25.938402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.379678, 14.720274, 25.766539>,  <11.174398, 14.789751, 25.663420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.379678, 14.720274, 25.766539>,  <11.721809, 14.604479, 25.938402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.379678, 14.720274, 25.766539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356591, 0.272671, 0.893585,
		0.375838, 0.917523, -0.129995,
		-0.855330, 0.289488, -0.429660,
		11.123079, 14.807120, 25.637640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.432720, 15.172091, 26.367140>,  <11.721809, 14.604479, 25.938402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.432720, 15.172091, 26.367140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.103872, 15.083138, 26.157507>,  <10.906563, 15.029767, 26.031727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.103872, 15.083138, 26.157507>,  <11.432720, 15.172091, 26.367140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.103872, 15.083138, 26.157507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567960, 0.383788, 0.728099,
		0.039223, 0.896245, -0.441822,
		-0.822121, -0.222379, -0.524085,
		10.857236, 15.016424, 26.000282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.983744, 15.781754, 26.431828>,  <11.432720, 15.172091, 26.367140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.983744, 15.781754, 26.431828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.802991, 15.426490, 26.398432>,  <10.694539, 15.213331, 26.378393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.802991, 15.426490, 26.398432>,  <10.983744, 15.781754, 26.431828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.802991, 15.426490, 26.398432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619692, 0.245202, 0.745559,
		-0.641705, 0.388643, -0.661189,
		-0.451881, -0.888163, -0.083491,
		10.667427, 15.160041, 26.373384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.245660, 15.945795, 26.424480>,  <10.983744, 15.781754, 26.431828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.245660, 15.945795, 26.424480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.282319, 15.567963, 26.550570>,  <10.304315, 15.341263, 26.626223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.282319, 15.567963, 26.550570>,  <10.245660, 15.945795, 26.424480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.282319, 15.567963, 26.550570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581082, 0.206341, 0.787252,
		-0.808668, -0.255322, -0.529969,
		0.091648, -0.944582, 0.315225,
		10.309813, 15.284588, 26.645138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.625470, 15.732564, 26.748465>,  <10.245660, 15.945795, 26.424480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.625470, 15.732564, 26.748465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.853387, 15.417370, 26.841774>,  <9.990137, 15.228253, 26.897760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.853387, 15.417370, 26.841774>,  <9.625470, 15.732564, 26.748465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.853387, 15.417370, 26.841774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425351, -0.039908, 0.904148,
		-0.703146, -0.614399, -0.357910,
		0.569791, -0.787985, 0.233275,
		10.024324, 15.180974, 26.911757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.188246, 15.207420, 26.968306>,  <9.625470, 15.732564, 26.748465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.188246, 15.207420, 26.968306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.535427, 15.136730, 27.153961>,  <9.743735, 15.094316, 27.265354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.535427, 15.136730, 27.153961>,  <9.188246, 15.207420, 26.968306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.535427, 15.136730, 27.153961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496529, -0.329194, 0.803175,
		0.010852, -0.927577, -0.373473,
		0.867952, -0.176724, 0.464141,
		9.795813, 15.083713, 27.293203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.091884, 14.600077, 27.333830>,  <9.188246, 15.207420, 26.968306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.091884, 14.600077, 27.333830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.387953, 14.790913, 27.523369>,  <9.565594, 14.905415, 27.637093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.387953, 14.790913, 27.523369>,  <9.091884, 14.600077, 27.333830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.387953, 14.790913, 27.523369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464913, -0.146016, 0.873233,
		0.485801, -0.866639, 0.113729,
		0.740172, 0.477091, 0.473846,
		9.610004, 14.934040, 27.665524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.125548, 14.242889, 27.886518>,  <9.091884, 14.600077, 27.333830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.125548, 14.242889, 27.886518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.336454, 14.565248, 27.994236>,  <9.462998, 14.758664, 28.058867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.336454, 14.565248, 27.994236>,  <9.125548, 14.242889, 27.886518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.336454, 14.565248, 27.994236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487592, 0.027412, 0.872641,
		0.695878, -0.591419, 0.407403,
		0.527265, 0.805898, 0.269296,
		9.494634, 14.807018, 28.075026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.211491, 14.115023, 28.622087>,  <9.125548, 14.242889, 27.886518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.211491, 14.115023, 28.622087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.293514, 14.500876, 28.555836>,  <9.342729, 14.732388, 28.516085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.293514, 14.500876, 28.555836>,  <9.211491, 14.115023, 28.622087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.293514, 14.500876, 28.555836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431933, 0.241047, 0.869098,
		0.878285, -0.106673, 0.466085,
		0.205058, 0.964633, -0.165632,
		9.355032, 14.790266, 28.506145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.588345, 14.223712, 29.139299>,  <9.211491, 14.115023, 28.622087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.588345, 14.223712, 29.139299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.504025, 14.607303, 29.063478>,  <9.453434, 14.837457, 29.017986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.504025, 14.607303, 29.063478>,  <9.588345, 14.223712, 29.139299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.504025, 14.607303, 29.063478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381292, 0.097888, 0.919258,
		0.900100, 0.266052, 0.345016,
		-0.210797, 0.958976, -0.189552,
		9.440786, 14.894996, 29.006613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.042210, 14.668244, 29.554621>,  <9.588345, 14.223712, 29.139299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.042210, 14.668244, 29.554621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.713202, 14.864264, 29.439165>,  <9.515797, 14.981876, 29.369892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.713202, 14.864264, 29.439165>,  <10.042210, 14.668244, 29.554621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.713202, 14.864264, 29.439165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252012, 0.140929, 0.957407,
		0.509855, 0.860227, 0.007582,
		-0.822519, 0.490050, -0.288641,
		9.466446, 15.011279, 29.352573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.007200, 15.341985, 29.966299>,  <10.042210, 14.668244, 29.554621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.007200, 15.341985, 29.966299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.641723, 15.254426, 29.829332>,  <9.422436, 15.201891, 29.747152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.641723, 15.254426, 29.829332>,  <10.007200, 15.341985, 29.966299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.641723, 15.254426, 29.829332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378848, 0.153803, 0.912589,
		-0.147098, 0.963550, -0.223457,
		-0.913694, -0.218897, -0.342415,
		9.367615, 15.188757, 29.726608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.659706, 15.702686, 30.381275>,  <10.007200, 15.341985, 29.966299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.659706, 15.702686, 30.381275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.386250, 15.462366, 30.215538>,  <9.222178, 15.318174, 30.116096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.386250, 15.462366, 30.215538>,  <9.659706, 15.702686, 30.381275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.386250, 15.462366, 30.215538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476064, -0.063212, 0.877136,
		-0.553174, 0.796896, -0.242805,
		-0.683638, -0.600800, -0.414341,
		9.181159, 15.282126, 30.091236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.959204, 15.993349, 30.570585>,  <9.659706, 15.702686, 30.381275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.959204, 15.993349, 30.570585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.916316, 15.602060, 30.499496>,  <8.890583, 15.367287, 30.456844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.916316, 15.602060, 30.499496>,  <8.959204, 15.993349, 30.570585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.916316, 15.602060, 30.499496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399449, -0.121306, 0.908694,
		-0.910464, 0.168420, -0.377743,
		-0.107220, -0.978223, -0.177720,
		8.884151, 15.308594, 30.446180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.264924, 15.836898, 30.923426>,  <8.959204, 15.993349, 30.570585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.264924, 15.836898, 30.923426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.389702, 15.471911, 30.817524>,  <8.464568, 15.252919, 30.753983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.389702, 15.471911, 30.817524>,  <8.264924, 15.836898, 30.923426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.389702, 15.471911, 30.817524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449741, -0.387276, 0.804829,
		-0.836913, -0.131991, -0.531182,
		0.311944, -0.912467, -0.264755,
		8.483285, 15.198172, 30.738098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.712779, 15.346672, 30.946495>,  <8.264924, 15.836898, 30.923426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.712779, 15.346672, 30.946495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.062356, 15.163398, 31.011351>,  <8.272102, 15.053433, 31.050264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.062356, 15.163398, 31.011351>,  <7.712779, 15.346672, 30.946495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.062356, 15.163398, 31.011351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325377, -0.303739, 0.895473,
		-0.361049, -0.835347, -0.414534,
		0.873941, -0.458190, 0.162138,
		8.324539, 15.025942, 31.059992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.652963, 14.558605, 31.161654>,  <7.712779, 15.346672, 30.946495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.652963, 14.558605, 31.161654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.001910, 14.709333, 31.286221>,  <8.211278, 14.799770, 31.360960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.001910, 14.709333, 31.286221>,  <7.652963, 14.558605, 31.161654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.001910, 14.709333, 31.286221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065290, -0.541523, 0.838147,
		0.484471, -0.751505, -0.447804,
		0.872368, 0.376821, 0.311418,
		8.263620, 14.822380, 31.379646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.128957, 14.060091, 31.293161>,  <7.652963, 14.558605, 31.161654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.128957, 14.060091, 31.293161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.197277, 14.348472, 31.561804>,  <8.238269, 14.521500, 31.722990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.197277, 14.348472, 31.561804>,  <8.128957, 14.060091, 31.293161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.197277, 14.348472, 31.561804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146368, -0.655496, 0.740879,
		0.974374, -0.224844, -0.006435,
		0.170800, 0.720951, 0.671607,
		8.248517, 14.564757, 31.763287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.612378, 13.850171, 31.843706>,  <8.128957, 14.060091, 31.293161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.612378, 13.850171, 31.843706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.398984, 14.146028, 32.007816>,  <8.270947, 14.323542, 32.106281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.398984, 14.146028, 32.007816>,  <8.612378, 13.850171, 31.843706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.398984, 14.146028, 32.007816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031967, -0.502351, 0.864073,
		0.845205, 0.447854, 0.291641,
		-0.533485, 0.739642, 0.410273,
		8.238938, 14.367920, 32.130898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.992117, 14.146917, 32.424648>,  <8.612378, 13.850171, 31.843706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.992117, 14.146917, 32.424648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.592509, 14.133478, 32.436203>,  <8.352745, 14.125415, 32.443134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.592509, 14.133478, 32.436203>,  <8.992117, 14.146917, 32.424648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.592509, 14.133478, 32.436203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044301, -0.746963, 0.663388,
		-0.000712, 0.664016, 0.747717,
		-0.999018, -0.033597, 0.028884,
		8.292804, 14.123399, 32.444870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.751929, 14.623590, 32.958511>,  <8.992117, 14.146917, 32.424648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.751929, 14.623590, 32.958511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.028436, 14.486992, 33.213238>,  <9.194340, 14.405033, 33.366074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.028436, 14.486992, 33.213238>,  <8.751929, 14.623590, 32.958511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.028436, 14.486992, 33.213238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554521, -0.314355, -0.770511,
		0.463312, 0.885755, -0.027936,
		0.691266, -0.341496, 0.636814,
		9.235815, 14.384543, 33.404282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.438954, 14.687428, 32.644108>,  <8.751929, 14.623590, 32.958511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.438954, 14.687428, 32.644108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.465864, 14.409190, 32.930218>,  <9.482010, 14.242248, 33.101883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.465864, 14.409190, 32.930218>,  <9.438954, 14.687428, 32.644108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.465864, 14.409190, 32.930218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639290, -0.520355, -0.566161,
		0.766017, 0.495358, 0.409680,
		0.067274, -0.695594, 0.715278,
		9.486046, 14.200512, 33.144802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.091837, 14.537956, 32.793056>,  <9.438954, 14.687428, 32.644108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.091837, 14.537956, 32.793056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.873281, 14.223325, 32.908127>,  <9.742148, 14.034546, 32.977169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.873281, 14.223325, 32.908127>,  <10.091837, 14.537956, 32.793056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.873281, 14.223325, 32.908127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411340, -0.551220, -0.725917,
		0.729561, -0.278301, 0.624731,
		-0.546388, -0.786578, 0.287673,
		9.709365, 13.987351, 32.994427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.478413, 13.913293, 32.999393>,  <10.091837, 14.537956, 32.793056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.478413, 13.913293, 32.999393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.122126, 13.818007, 32.844540>,  <9.908354, 13.760835, 32.751625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.122126, 13.818007, 32.844540>,  <10.478413, 13.913293, 32.999393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.122126, 13.818007, 32.844540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449358, -0.589887, -0.670903,
		-0.068548, -0.771548, 0.632467,
		-0.890718, -0.238215, -0.387137,
		9.854910, 13.746542, 32.728397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.491443, 13.210424, 32.905315>,  <10.478413, 13.913293, 32.999393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.491443, 13.210424, 32.905315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.222917, 13.362613, 32.650890>,  <10.061801, 13.453926, 32.498234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.222917, 13.362613, 32.650890>,  <10.491443, 13.210424, 32.905315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.222917, 13.362613, 32.650890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418760, -0.513380, -0.749053,
		-0.611537, -0.769208, 0.185313,
		-0.671314, 0.380472, -0.636065,
		10.021523, 13.476754, 32.460072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.293001, 12.692702, 32.427303>,  <10.491443, 13.210424, 32.905315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.293001, 12.692702, 32.427303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.274857, 13.039289, 32.228436>,  <10.263969, 13.247240, 32.109116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.274857, 13.039289, 32.228436>,  <10.293001, 12.692702, 32.427303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.274857, 13.039289, 32.228436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552359, -0.392928, -0.735192,
		-0.832371, -0.307966, -0.460777,
		-0.045362, 0.866467, -0.497170,
		10.261248, 13.299229, 32.079285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.434547, 12.491081, 31.786070>,  <10.293001, 12.692702, 32.427303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.434547, 12.491081, 31.786070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.429416, 12.889712, 31.753407>,  <10.426336, 13.128891, 31.733809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.429416, 12.889712, 31.753407>,  <10.434547, 12.491081, 31.786070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.429416, 12.889712, 31.753407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375886, -0.070870, -0.923952,
		-0.926577, -0.042549, -0.373690,
		-0.012829, 0.996578, -0.081660,
		10.425567, 13.188685, 31.728909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.115942, 12.591969, 31.076982>,  <10.434547, 12.491081, 31.786070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.115942, 12.591969, 31.076982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.293562, 12.938613, 31.168030>,  <10.400134, 13.146599, 31.222658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.293562, 12.938613, 31.168030>,  <10.115942, 12.591969, 31.076982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.293562, 12.938613, 31.168030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519973, -0.042356, -0.853132,
		-0.729689, 0.497190, -0.469421,
		0.444051, 0.866607, 0.227619,
		10.426777, 13.198595, 31.236315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.026005, 13.028003, 30.552893>,  <10.115942, 12.591969, 31.076982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.026005, 13.028003, 30.552893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.331916, 13.224933, 30.719137>,  <10.515463, 13.343091, 30.818884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.331916, 13.224933, 30.719137>,  <10.026005, 13.028003, 30.552893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.331916, 13.224933, 30.719137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391866, 0.156602, -0.906596,
		-0.511426, 0.856207, -0.073160,
		0.764777, 0.492326, 0.415609,
		10.561349, 13.372630, 30.843821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.123397, 13.701110, 30.291399>,  <10.026005, 13.028003, 30.552893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.123397, 13.701110, 30.291399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.486065, 13.642472, 30.449617>,  <10.703666, 13.607289, 30.544548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.486065, 13.642472, 30.449617>,  <10.123397, 13.701110, 30.291399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.486065, 13.642472, 30.449617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403163, 0.025221, -0.914781,
		0.124126, 0.988875, 0.081968,
		0.906671, -0.146595, 0.395547,
		10.758066, 13.598494, 30.568281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.585265, 14.190137, 29.886631>,  <10.123397, 13.701110, 30.291399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.585265, 14.190137, 29.886631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.809370, 13.902761, 30.051531>,  <10.943832, 13.730336, 30.150471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.809370, 13.902761, 30.051531>,  <10.585265, 14.190137, 29.886631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.809370, 13.902761, 30.051531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679305, 0.113733, -0.724990,
		0.473974, 0.686229, 0.551759,
		0.560262, -0.718439, 0.412252,
		10.977448, 13.687230, 30.175207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.264706, 14.366917, 29.791010>,  <10.585265, 14.190137, 29.886631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.264706, 14.366917, 29.791010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.288501, 13.977908, 29.881044>,  <11.302778, 13.744503, 29.935064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.288501, 13.977908, 29.881044>,  <11.264706, 14.366917, 29.791010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.288501, 13.977908, 29.881044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621144, -0.140452, -0.771008,
		0.781435, 0.185677, 0.595721,
		0.059488, -0.972521, 0.225086,
		11.306347, 13.686152, 29.948570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.861599, 14.243185, 29.637863>,  <11.264706, 14.366917, 29.791010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.861599, 14.243185, 29.637863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.706502, 13.875559, 29.666079>,  <11.613444, 13.654984, 29.683008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.706502, 13.875559, 29.666079>,  <11.861599, 14.243185, 29.637863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.706502, 13.875559, 29.666079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519713, -0.281180, -0.806744,
		0.761285, -0.276148, 0.586676,
		-0.387742, -0.919065, 0.070541,
		11.590179, 13.599839, 29.687241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.433619, 13.758640, 29.534637>,  <11.861599, 14.243185, 29.637863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.433619, 13.758640, 29.534637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.091199, 13.582944, 29.425648>,  <11.885746, 13.477526, 29.360254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.091199, 13.582944, 29.425648>,  <12.433619, 13.758640, 29.534637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.091199, 13.582944, 29.425648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441378, -0.346849, -0.827576,
		0.268998, -0.828712, 0.490792,
		-0.856052, -0.439241, -0.272473,
		11.834383, 13.451172, 29.343906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.645611, 13.237050, 29.230656>,  <12.433619, 13.758640, 29.534637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.645611, 13.237050, 29.230656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.266052, 13.220146, 29.105556>,  <12.038318, 13.210004, 29.030497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.266052, 13.220146, 29.105556>,  <12.645611, 13.237050, 29.230656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.266052, 13.220146, 29.105556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308325, -0.335548, -0.890137,
		-0.067325, -0.941075, 0.331429,
		-0.948895, -0.042260, -0.312748,
		11.981383, 13.207468, 29.011732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.590501, 12.661442, 28.912401>,  <12.645611, 13.237050, 29.230656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.590501, 12.661442, 28.912401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.317656, 12.912566, 28.762428>,  <12.153948, 13.063241, 28.672445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.317656, 12.912566, 28.762428>,  <12.590501, 12.661442, 28.912401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.317656, 12.912566, 28.762428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258280, -0.272834, -0.926743,
		-0.684115, -0.728981, 0.023953,
		-0.682113, 0.627812, -0.374931,
		12.113022, 13.100910, 28.649948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.423279, 12.331248, 28.222885>,  <12.590501, 12.661442, 28.912401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.423279, 12.331248, 28.222885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.300878, 12.710284, 28.186144>,  <12.227437, 12.937706, 28.164099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.300878, 12.710284, 28.186144>,  <12.423279, 12.331248, 28.222885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.300878, 12.710284, 28.186144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152853, -0.046327, -0.987163,
		-0.939680, -0.316115, -0.130666,
		-0.306003, 0.947589, -0.091851,
		12.209077, 12.994561, 28.158588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.977180, 12.293550, 27.658768>,  <12.423279, 12.331248, 28.222885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.977180, 12.293550, 27.658768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.093662, 12.673155, 27.707052>,  <12.163551, 12.900918, 27.736023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.093662, 12.673155, 27.707052>,  <11.977180, 12.293550, 27.658768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.093662, 12.673155, 27.707052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275826, 0.037533, -0.960474,
		-0.916035, 0.312991, -0.250833,
		0.291205, 0.949014, 0.120713,
		12.181024, 12.957859, 27.743265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.712888, 12.573347, 27.174059>,  <11.977180, 12.293550, 27.658768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.712888, 12.573347, 27.174059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.996019, 12.839932, 27.267702>,  <12.165898, 12.999884, 27.323887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.996019, 12.839932, 27.267702>,  <11.712888, 12.573347, 27.174059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.996019, 12.839932, 27.267702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135560, 0.197095, -0.970967,
		-0.693254, 0.719014, 0.049163,
		0.707829, 0.666462, 0.234107,
		12.208368, 13.039871, 27.337934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.607332, 13.174584, 26.762218>,  <11.712888, 12.573347, 27.174059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.607332, 13.174584, 26.762218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.993519, 13.182364, 26.866137>,  <12.225231, 13.187031, 26.928488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.993519, 13.182364, 26.866137>,  <11.607332, 13.174584, 26.762218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.993519, 13.182364, 26.866137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253402, 0.161482, -0.953788,
		-0.060502, 0.986684, 0.150977,
		0.965467, 0.019448, 0.259797,
		12.283159, 13.188198, 26.944077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.847629, 13.789238, 26.471203>,  <11.607332, 13.174584, 26.762218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.847629, 13.789238, 26.471203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.158364, 13.543421, 26.526131>,  <12.344806, 13.395930, 26.559088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.158364, 13.543421, 26.526131>,  <11.847629, 13.789238, 26.471203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.158364, 13.543421, 26.526131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183206, 0.011936, -0.983002,
		0.602459, 0.788792, 0.121861,
		0.776839, -0.614544, 0.137320,
		12.391416, 13.359057, 26.567327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.257949, 14.045105, 25.990356>,  <11.847629, 13.789238, 26.471203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.257949, 14.045105, 25.990356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.431142, 13.692813, 26.067131>,  <12.535058, 13.481438, 26.113195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.431142, 13.692813, 26.067131>,  <12.257949, 14.045105, 25.990356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.431142, 13.692813, 26.067131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319140, -0.049356, -0.946421,
		0.843015, 0.471039, 0.259706,
		0.432983, -0.880730, 0.191935,
		12.561037, 13.428594, 26.124712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.924060, 14.013109, 25.654062>,  <12.257949, 14.045105, 25.990356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.924060, 14.013109, 25.654062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.807977, 13.635229, 25.715145>,  <12.738327, 13.408501, 25.751795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.807977, 13.635229, 25.715145>,  <12.924060, 14.013109, 25.654062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.807977, 13.635229, 25.715145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496315, -0.285019, -0.820022,
		0.818199, -0.162187, 0.551584,
		-0.290209, -0.944701, 0.152706,
		12.720914, 13.351819, 25.760958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.464627, 13.757874, 25.427029>,  <12.924060, 14.013109, 25.654062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.464627, 13.757874, 25.427029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.198458, 13.459396, 25.418940>,  <13.038756, 13.280311, 25.414085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.198458, 13.459396, 25.418940>,  <13.464627, 13.757874, 25.427029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.198458, 13.459396, 25.418940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493359, -0.419303, -0.762090,
		0.560186, -0.517090, 0.647155,
		-0.665423, -0.746192, -0.020223,
		12.998831, 13.235538, 25.412872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.852029, 13.284383, 25.209951>,  <13.464627, 13.757874, 25.427029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.852029, 13.284383, 25.209951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.492235, 13.122909, 25.143061>,  <13.276359, 13.026024, 25.102926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.492235, 13.122909, 25.143061>,  <13.852029, 13.284383, 25.209951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.492235, 13.122909, 25.143061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371477, -0.504976, -0.779105,
		0.230070, -0.762913, 0.604178,
		-0.899485, -0.403687, -0.167225,
		13.222390, 13.001802, 25.092894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.961316, 12.519267, 24.973854>,  <13.852029, 13.284383, 25.209951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.961316, 12.519267, 24.973854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.591153, 12.595520, 24.842840>,  <13.369056, 12.641272, 24.764231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.591153, 12.595520, 24.842840>,  <13.961316, 12.519267, 24.973854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.591153, 12.595520, 24.842840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145121, -0.620139, -0.770953,
		-0.350086, -0.760978, 0.546216,
		-0.925408, 0.190633, -0.327536,
		13.313531, 12.652710, 24.744579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.806811, 11.829820, 24.837399>,  <13.961316, 12.519267, 24.973854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.806811, 11.829820, 24.837399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.573303, 12.060845, 24.609142>,  <13.433199, 12.199461, 24.472189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.573303, 12.060845, 24.609142>,  <13.806811, 11.829820, 24.837399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.573303, 12.060845, 24.609142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252594, -0.538759, -0.803701,
		-0.771627, -0.613317, 0.168622,
		-0.583770, 0.577565, -0.570642,
		13.398172, 12.234115, 24.437950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.589378, 11.401881, 24.332071>,  <13.806811, 11.829820, 24.837399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.589378, 11.401881, 24.332071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.518105, 11.769042, 24.190250>,  <13.475340, 11.989339, 24.105158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.518105, 11.769042, 24.190250>,  <13.589378, 11.401881, 24.332071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.518105, 11.769042, 24.190250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185963, -0.322411, -0.928153,
		-0.966265, -0.231316, -0.113247,
		-0.178184, 0.917902, -0.354551,
		13.464649, 12.044413, 24.083885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.118834, 11.345864, 23.665627>,  <13.589378, 11.401881, 24.332071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.118834, 11.345864, 23.665627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.315947, 11.693645, 23.651653>,  <13.434215, 11.902312, 23.643269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.315947, 11.693645, 23.651653>,  <13.118834, 11.345864, 23.665627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.315947, 11.693645, 23.651653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301534, -0.208286, -0.930427,
		-0.816237, 0.447965, -0.364809,
		0.492783, 0.869451, -0.034934,
		13.463781, 11.954480, 23.641172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.843625, 11.681376, 23.076506>,  <13.118834, 11.345864, 23.665627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.843625, 11.681376, 23.076506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.195035, 11.849902, 23.166565>,  <13.405881, 11.951017, 23.220600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.195035, 11.849902, 23.166565>,  <12.843625, 11.681376, 23.076506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.195035, 11.849902, 23.166565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204004, 0.095279, -0.974322,
		-0.431947, 0.901896, -0.002245,
		0.878524, 0.421314, 0.225146,
		13.458592, 11.976296, 23.234108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.039699, 12.160176, 22.589579>,  <12.843625, 11.681376, 23.076506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.039699, 12.160176, 22.589579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.399883, 12.121855, 22.759279>,  <13.615994, 12.098862, 22.861099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.399883, 12.121855, 22.759279>,  <13.039699, 12.160176, 22.589579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.399883, 12.121855, 22.759279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434680, 0.231589, -0.870299,
		-0.014874, 0.968085, 0.250181,
		0.900462, -0.095804, 0.424252,
		13.670022, 12.093114, 22.886555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.345810, 12.736144, 22.355951>,  <13.039699, 12.160176, 22.589579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.345810, 12.736144, 22.355951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.640292, 12.487404, 22.462761>,  <13.816981, 12.338160, 22.526848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.640292, 12.487404, 22.462761>,  <13.345810, 12.736144, 22.355951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.640292, 12.487404, 22.462761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483191, 0.206728, -0.850758,
		0.473844, 0.755357, 0.452667,
		0.736206, -0.621851, 0.267025,
		13.861154, 12.300848, 22.542868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.010907, 13.048265, 22.327906>,  <13.345810, 12.736144, 22.355951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.010907, 13.048265, 22.327906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.098298, 12.658454, 22.307642>,  <14.150733, 12.424567, 22.295485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.098298, 12.658454, 22.307642>,  <14.010907, 13.048265, 22.327906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.098298, 12.658454, 22.307642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553099, 0.166433, -0.816322,
		0.803958, 0.150328, 0.575372,
		0.218477, -0.974526, -0.050659,
		14.163841, 12.366096, 22.292444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.572781, 13.116561, 22.028040>,  <14.010907, 13.048265, 22.327906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.572781, 13.116561, 22.028040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.530717, 12.722670, 21.972542>,  <14.505479, 12.486335, 21.939243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.530717, 12.722670, 21.972542>,  <14.572781, 13.116561, 22.028040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.530717, 12.722670, 21.972542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522166, 0.064060, -0.850434,
		0.846335, -0.161878, 0.507456,
		-0.105159, -0.984729, -0.138743,
		14.499169, 12.427251, 21.930920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.222718, 12.865723, 21.865355>,  <14.572781, 13.116561, 22.028040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.222718, 12.865723, 21.865355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.977323, 12.585382, 21.719786>,  <14.830085, 12.417178, 21.632444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.977323, 12.585382, 21.719786>,  <15.222718, 12.865723, 21.865355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.977323, 12.585382, 21.719786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371591, 0.150432, -0.916128,
		0.696815, -0.697265, 0.168142,
		-0.613490, -0.700851, -0.363921,
		14.793276, 12.375127, 21.610609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.629575, 12.526327, 21.397825>,  <15.222718, 12.865723, 21.865355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.629575, 12.526327, 21.397825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.252521, 12.434397, 21.300980>,  <15.026288, 12.379238, 21.242872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.252521, 12.434397, 21.300980>,  <15.629575, 12.526327, 21.397825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.252521, 12.434397, 21.300980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204870, 0.174357, -0.963135,
		0.263567, -0.957486, -0.117271,
		-0.942635, -0.229826, -0.242115,
		14.969730, 12.365449, 21.228346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.668819, 12.090416, 20.887568>,  <15.629575, 12.526327, 21.397825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.668819, 12.090416, 20.887568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.290304, 12.196724, 20.813915>,  <15.063195, 12.260509, 20.769724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.290304, 12.196724, 20.813915>,  <15.668819, 12.090416, 20.887568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.290304, 12.196724, 20.813915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204716, 0.051697, -0.977455,
		-0.250258, -0.962649, -0.103328,
		-0.946288, 0.265769, -0.184132,
		15.006417, 12.276455, 20.758675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.460444, 11.584821, 20.396391>,  <15.668819, 12.090416, 20.887568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.460444, 11.584821, 20.396391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.221227, 11.904037, 20.366795>,  <15.077696, 12.095566, 20.349037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.221227, 11.904037, 20.366795>,  <15.460444, 11.584821, 20.396391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.221227, 11.904037, 20.366795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233364, 0.085071, -0.968661,
		-0.766736, -0.596570, -0.237110,
		-0.598045, 0.798040, -0.073991,
		15.041813, 12.143449, 20.344597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.038483, 11.519946, 19.748220>,  <15.460444, 11.584821, 20.396391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.038483, 11.519946, 19.748220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.010639, 11.908073, 19.840860>,  <14.993933, 12.140949, 19.896444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.010639, 11.908073, 19.840860>,  <15.038483, 11.519946, 19.748220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.010639, 11.908073, 19.840860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295253, 0.241800, -0.924315,
		-0.952880, 0.004040, -0.303320,
		-0.069608, 0.970318, 0.231599,
		14.989757, 12.199169, 19.910339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.659962, 11.864131, 19.297077>,  <15.038483, 11.519946, 19.748220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.659962, 11.864131, 19.297077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.870211, 12.175642, 19.434032>,  <14.996360, 12.362549, 19.516205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.870211, 12.175642, 19.434032>,  <14.659962, 11.864131, 19.297077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.870211, 12.175642, 19.434032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129254, 0.324688, -0.936948,
		-0.840842, 0.536735, 0.070003,
		0.525622, 0.778777, 0.342386,
		15.027897, 12.409275, 19.536749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.561826, 12.365127, 18.756905>,  <14.659962, 11.864131, 19.297077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.561826, 12.365127, 18.756905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.869786, 12.538497, 18.944263>,  <15.054563, 12.642519, 19.056679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.869786, 12.538497, 18.944263>,  <14.561826, 12.365127, 18.756905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.869786, 12.538497, 18.944263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347850, 0.330331, -0.877429,
		-0.535026, 0.838465, 0.103555,
		0.769901, 0.433426, 0.468395,
		15.100757, 12.668525, 19.084782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.482756, 13.160610, 18.645927>,  <14.561826, 12.365127, 18.756905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.482756, 13.160610, 18.645927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.859586, 13.077325, 18.751106>,  <15.085684, 13.027354, 18.814213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.859586, 13.077325, 18.751106>,  <14.482756, 13.160610, 18.645927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.859586, 13.077325, 18.751106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323834, 0.360559, -0.874716,
		0.087319, 0.909200, 0.407100,
		0.942076, -0.208213, 0.262947,
		15.142208, 13.014861, 18.829990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.943975, 13.758046, 18.479029>,  <14.482756, 13.160610, 18.645927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.943975, 13.758046, 18.479029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.151228, 13.416125, 18.467339>,  <15.275579, 13.210973, 18.460325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.151228, 13.416125, 18.467339>,  <14.943975, 13.758046, 18.479029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.151228, 13.416125, 18.467339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473564, 0.315166, -0.822440,
		0.712234, 0.412292, 0.568101,
		0.518132, -0.854802, -0.029226,
		15.306667, 13.159685, 18.458570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.499231, 13.954245, 18.005852>,  <14.943975, 13.758046, 18.479029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.499231, 13.954245, 18.005852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.554006, 13.558231, 18.019011>,  <15.586870, 13.320623, 18.026905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.554006, 13.558231, 18.019011>,  <15.499231, 13.954245, 18.005852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.554006, 13.558231, 18.019011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466844, 0.035209, -0.883639,
		0.873674, 0.136360, 0.467012,
		0.136936, -0.990034, 0.032897,
		15.595086, 13.261221, 18.028879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.180403, 13.831728, 17.850552>,  <15.499231, 13.954245, 18.005852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.180403, 13.831728, 17.850552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.995887, 13.486580, 17.767927>,  <15.885178, 13.279491, 17.718351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.995887, 13.486580, 17.767927>,  <16.180403, 13.831728, 17.850552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.995887, 13.486580, 17.767927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531777, -0.082516, -0.842855,
		0.710230, -0.498644, 0.496918,
		-0.461288, -0.862870, -0.206562,
		15.857500, 13.227719, 17.705959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.682400, 13.309909, 17.840458>,  <16.180403, 13.831728, 17.850552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.682400, 13.309909, 17.840458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.372021, 13.192973, 17.616871>,  <16.185793, 13.122812, 17.482718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.372021, 13.192973, 17.616871>,  <16.682400, 13.309909, 17.840458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.372021, 13.192973, 17.616871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623569, -0.221697, -0.749675,
		0.095238, -0.930262, 0.354318,
		-0.775946, -0.292339, -0.558969,
		16.139236, 13.105271, 17.449181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.357779, 13.232539, 17.555002>,  <16.682400, 13.309909, 17.840458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.357779, 13.232539, 17.555002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.701956, 13.046896, 17.639135>,  <17.908463, 12.935511, 17.689615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.701956, 13.046896, 17.639135>,  <17.357779, 13.232539, 17.555002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.701956, 13.046896, 17.639135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218364, 0.037101, 0.975162,
		-0.460383, -0.885002, -0.069421,
		0.860444, -0.464107, 0.210333,
		17.960089, 12.907664, 17.702236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.155622, 12.680788, 18.007427>,  <17.357779, 13.232539, 17.555002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.155622, 12.680788, 18.007427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.552212, 12.713301, 18.048176>,  <17.790165, 12.732808, 18.072626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.552212, 12.713301, 18.048176>,  <17.155622, 12.680788, 18.007427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.552212, 12.713301, 18.048176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105551, 0.042298, 0.993514,
		0.076447, -0.995793, 0.050516,
		0.991471, 0.081283, 0.101873,
		17.849653, 12.737685, 18.078737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.399422, 12.044688, 18.343283>,  <17.155622, 12.680788, 18.007427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.399422, 12.044688, 18.343283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.665205, 12.336136, 18.409750>,  <17.824675, 12.511004, 18.449631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.665205, 12.336136, 18.409750>,  <17.399422, 12.044688, 18.343283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.665205, 12.336136, 18.409750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057412, -0.171922, 0.983436,
		0.745119, -0.662990, -0.072403,
		0.664456, 0.728620, 0.166166,
		17.864542, 12.554722, 18.459600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.947515, 11.686296, 18.701982>,  <17.399422, 12.044688, 18.343283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.947515, 11.686296, 18.701982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.959829, 12.080770, 18.767090>,  <17.967216, 12.317454, 18.806154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.959829, 12.080770, 18.767090>,  <17.947515, 11.686296, 18.701982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.959829, 12.080770, 18.767090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207226, -0.165602, 0.964175,
		0.977809, 0.004050, -0.209461,
		0.030783, 0.986184, 0.162766,
		17.969065, 12.376626, 18.815920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.376497, 11.871566, 19.339785>,  <17.947515, 11.686296, 18.701982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.376497, 11.871566, 19.339785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.193466, 12.226295, 19.313944>,  <18.083649, 12.439132, 19.298439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.193466, 12.226295, 19.313944>,  <18.376497, 11.871566, 19.339785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.193466, 12.226295, 19.313944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030461, 0.088244, 0.995633,
		0.888649, 0.453610, -0.067392,
		-0.457576, 0.886821, -0.064601,
		18.056192, 12.492341, 19.294563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.651844, 12.315833, 19.831366>,  <18.376497, 11.871566, 19.339785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.651844, 12.315833, 19.831366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.302170, 12.495976, 19.758724>,  <18.092365, 12.604062, 19.715139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.302170, 12.495976, 19.758724>,  <18.651844, 12.315833, 19.831366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.302170, 12.495976, 19.758724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029336, 0.324322, 0.945492,
		0.484708, 0.831861, -0.270306,
		-0.874184, 0.450358, -0.181605,
		18.039915, 12.631083, 19.704243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.646418, 12.878315, 20.144718>,  <18.651844, 12.315833, 19.831366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.646418, 12.878315, 20.144718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.256075, 12.883382, 20.057497>,  <18.021870, 12.886422, 20.005165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.256075, 12.883382, 20.057497>,  <18.646418, 12.878315, 20.144718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.256075, 12.883382, 20.057497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204089, 0.302776, 0.930954,
		0.077814, 0.952978, -0.292880,
		-0.975855, 0.012668, -0.218053,
		17.963318, 12.887182, 19.992081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.263542, 13.620759, 20.282429>,  <18.646418, 12.878315, 20.144718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.263542, 13.620759, 20.282429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.047031, 13.286489, 20.319664>,  <17.917124, 13.085928, 20.342005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.047031, 13.286489, 20.319664>,  <18.263542, 13.620759, 20.282429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.047031, 13.286489, 20.319664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219253, 0.247149, 0.943846,
		-0.811755, 0.490474, -0.317000,
		-0.541279, -0.835675, 0.093086,
		17.884647, 13.035787, 20.347589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.640978, 13.848265, 20.668276>,  <18.263542, 13.620759, 20.282429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.640978, 13.848265, 20.668276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.636770, 13.449634, 20.701073>,  <17.634245, 13.210455, 20.720751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.636770, 13.449634, 20.701073>,  <17.640978, 13.848265, 20.668276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.636770, 13.449634, 20.701073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152925, 0.082634, 0.984777,
		-0.988182, -0.002179, -0.153271,
		-0.010519, -0.996577, 0.081991,
		17.633614, 13.150661, 20.725670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.029314, 13.716018, 21.065447>,  <17.640978, 13.848265, 20.668276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.029314, 13.716018, 21.065447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.236235, 13.377094, 21.113560>,  <17.360388, 13.173740, 21.142427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.236235, 13.377094, 21.113560>,  <17.029314, 13.716018, 21.065447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.236235, 13.377094, 21.113560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401925, -0.116454, 0.908237,
		-0.755549, -0.518177, -0.400796,
		0.517302, -0.847308, 0.120282,
		17.391426, 13.122902, 21.149645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.526264, 13.146025, 21.269726>,  <17.029314, 13.716018, 21.065447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.526264, 13.146025, 21.269726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.893061, 13.032182, 21.381531>,  <17.113138, 12.963876, 21.448614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.893061, 13.032182, 21.381531>,  <16.526264, 13.146025, 21.269726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.893061, 13.032182, 21.381531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348982, -0.232927, 0.907720,
		-0.193235, -0.929917, -0.312914,
		0.916991, -0.284605, 0.279515,
		17.168158, 12.946799, 21.465385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.437248, 12.457550, 21.511152>,  <16.526264, 13.146025, 21.269726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.437248, 12.457550, 21.511152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.785923, 12.580747, 21.663628>,  <16.995129, 12.654664, 21.755112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.785923, 12.580747, 21.663628>,  <16.437248, 12.457550, 21.511152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.785923, 12.580747, 21.663628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329024, -0.208645, 0.920984,
		0.363187, -0.928229, -0.080536,
		0.871687, 0.307991, 0.381187,
		17.047430, 12.673144, 21.777983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.744898, 11.907815, 21.865705>,  <16.437248, 12.457550, 21.511152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.744898, 11.907815, 21.865705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.897820, 12.248926, 22.008038>,  <16.989573, 12.453592, 22.093437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.897820, 12.248926, 22.008038>,  <16.744898, 11.907815, 21.865705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.897820, 12.248926, 22.008038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438068, -0.171794, 0.882374,
		0.813598, -0.493212, 0.307897,
		0.382302, 0.852778, 0.355831,
		17.012510, 12.504760, 22.114786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.970854, 11.749781, 22.479439>,  <16.744898, 11.907815, 21.865705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.970854, 11.749781, 22.479439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.947512, 12.147334, 22.516941>,  <16.933506, 12.385866, 22.539442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.947512, 12.147334, 22.516941>,  <16.970854, 11.749781, 22.479439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.947512, 12.147334, 22.516941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287634, -0.106671, 0.951782,
		0.955961, 0.028576, 0.292099,
		-0.058356, 0.993884, 0.093754,
		16.930004, 12.445499, 22.545067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.004110, 12.016397, 23.253613>,  <16.970854, 11.749781, 22.479439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.004110, 12.016397, 23.253613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.896652, 12.369600, 23.099665>,  <16.832178, 12.581523, 23.007296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.896652, 12.369600, 23.099665>,  <17.004110, 12.016397, 23.253613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.896652, 12.369600, 23.099665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398670, 0.261801, 0.878932,
		0.876865, 0.389556, 0.281699,
		-0.268644, 0.883010, -0.384869,
		16.816059, 12.634503, 22.984203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.326780, 12.588036, 23.593241>,  <17.004110, 12.016397, 23.253613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.326780, 12.588036, 23.593241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.987209, 12.727835, 23.434660>,  <16.783466, 12.811714, 23.339512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.987209, 12.727835, 23.434660>,  <17.326780, 12.588036, 23.593241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.987209, 12.727835, 23.434660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301370, 0.296109, 0.906364,
		0.434165, 0.888916, -0.146047,
		-0.848927, 0.349498, -0.396453,
		16.732531, 12.832684, 23.315723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.236624, 13.143533, 23.999681>,  <17.326780, 12.588036, 23.593241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.236624, 13.143533, 23.999681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.878246, 13.078195, 23.834465>,  <16.663219, 13.038992, 23.735334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.878246, 13.078195, 23.834465>,  <17.236624, 13.143533, 23.999681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.878246, 13.078195, 23.834465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442029, 0.236717, 0.865203,
		-0.043552, 0.957749, -0.284288,
		-0.895943, -0.163345, -0.413043,
		16.609463, 13.029191, 23.710552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.707058, 13.719657, 24.100185>,  <17.236624, 13.143533, 23.999681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.707058, 13.719657, 24.100185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.483408, 13.395090, 24.032091>,  <16.349218, 13.200350, 23.991234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.483408, 13.395090, 24.032091>,  <16.707058, 13.719657, 24.100185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.483408, 13.395090, 24.032091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590346, 0.245474, 0.768918,
		-0.582125, 0.530420, -0.616267,
		-0.559127, -0.811417, -0.170235,
		16.315670, 13.151665, 23.981020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.203161, 14.018731, 24.366129>,  <16.707058, 13.719657, 24.100185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.203161, 14.018731, 24.366129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.098885, 13.636418, 24.311691>,  <16.036320, 13.407031, 24.279030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.098885, 13.636418, 24.311691>,  <16.203161, 14.018731, 24.366129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.098885, 13.636418, 24.311691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755092, 0.114021, 0.645628,
		-0.601563, 0.271071, -0.751427,
		-0.260690, -0.955782, -0.136093,
		16.020678, 13.349684, 24.270863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.395777, 13.979321, 24.298317>,  <16.203161, 14.018731, 24.366129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.395777, 13.979321, 24.298317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.546153, 13.635330, 24.436363>,  <15.636379, 13.428935, 24.519190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.546153, 13.635330, 24.436363>,  <15.395777, 13.979321, 24.298317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.546153, 13.635330, 24.436363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625047, 0.039609, 0.779581,
		-0.684093, -0.508789, -0.522637,
		0.375941, -0.859979, 0.345114,
		15.658936, 13.377337, 24.539898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.899603, 13.632340, 24.572584>,  <15.395777, 13.979321, 24.298317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.899603, 13.632340, 24.572584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.223652, 13.459652, 24.731237>,  <15.418081, 13.356039, 24.826429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.223652, 13.459652, 24.731237>,  <14.899603, 13.632340, 24.572584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.223652, 13.459652, 24.731237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411591, 0.062950, 0.909192,
		-0.417486, -0.899807, -0.126695,
		0.810122, -0.431722, 0.396634,
		15.466689, 13.330135, 24.850227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.684443, 13.060127, 25.058615>,  <14.899603, 13.632340, 24.572584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.684443, 13.060127, 25.058615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.060055, 13.132976, 25.175270>,  <15.285422, 13.176684, 25.245262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.060055, 13.132976, 25.175270>,  <14.684443, 13.060127, 25.058615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.060055, 13.132976, 25.175270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302398, 0.033785, 0.952583,
		0.163634, -0.982695, 0.086799,
		0.939031, 0.182123, 0.291637,
		15.341764, 13.187612, 25.262762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.818055, 12.629219, 25.658222>,  <14.684443, 13.060127, 25.058615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.818055, 12.629219, 25.658222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.120104, 12.890564, 25.679804>,  <15.301332, 13.047371, 25.692753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.120104, 12.890564, 25.679804>,  <14.818055, 12.629219, 25.658222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.120104, 12.890564, 25.679804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078224, 0.008086, 0.996903,
		0.650902, -0.757003, 0.057214,
		0.755121, 0.653362, 0.053952,
		15.346640, 13.086573, 25.695990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.117931, 12.401845, 26.261221>,  <14.818055, 12.629219, 25.658222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.117931, 12.401845, 26.261221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.261510, 12.767202, 26.184416>,  <15.347657, 12.986417, 26.138332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.261510, 12.767202, 26.184416>,  <15.117931, 12.401845, 26.261221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.261510, 12.767202, 26.184416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117905, 0.159700, 0.980099,
		0.925881, -0.374441, -0.050371,
		0.358945, 0.913394, -0.192012,
		15.369194, 13.041221, 26.126812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.713213, 12.466314, 26.732723>,  <15.117931, 12.401845, 26.261221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.713213, 12.466314, 26.732723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.574053, 12.824224, 26.620764>,  <15.490557, 13.038971, 26.553589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.574053, 12.824224, 26.620764>,  <15.713213, 12.466314, 26.732723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.574053, 12.824224, 26.620764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105061, 0.259458, 0.960022,
		0.931626, 0.363398, 0.003740,
		-0.347900, 0.894775, -0.279897,
		15.469683, 13.092657, 26.536795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.072435, 12.944063, 27.143837>,  <15.713213, 12.466314, 26.732723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.072435, 12.944063, 27.143837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.721285, 13.097805, 27.029573>,  <15.510594, 13.190050, 26.961016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.721285, 13.097805, 27.029573>,  <16.072435, 12.944063, 27.143837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.721285, 13.097805, 27.029573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169420, 0.308658, 0.935963,
		0.447913, 0.870058, -0.205847,
		-0.877878, 0.384355, -0.285658,
		15.457921, 13.213112, 26.943876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.939941, 13.576661, 27.596008>,  <16.072435, 12.944063, 27.143837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.939941, 13.576661, 27.596008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.581105, 13.472406, 27.453293>,  <15.365804, 13.409854, 27.367664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.581105, 13.472406, 27.453293>,  <15.939941, 13.576661, 27.596008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.581105, 13.472406, 27.453293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429372, 0.323700, 0.843124,
		-0.104256, 0.909553, -0.402298,
		-0.897090, -0.260636, -0.356789,
		15.311978, 13.394216, 27.346256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.418423, 14.162882, 27.601053>,  <15.939941, 13.576661, 27.596008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.418423, 14.162882, 27.601053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.212998, 13.819695, 27.596212>,  <15.089744, 13.613782, 27.593307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.212998, 13.819695, 27.596212>,  <15.418423, 14.162882, 27.601053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.212998, 13.819695, 27.596212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554152, 0.320867, 0.768089,
		-0.655112, 0.401167, -0.640229,
		-0.513560, -0.857968, -0.012104,
		15.058930, 13.562304, 27.592581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.672229, 14.356419, 27.586859>,  <15.418423, 14.162882, 27.601053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.672229, 14.356419, 27.586859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.709884, 13.970332, 27.684425>,  <14.732476, 13.738680, 27.742966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.709884, 13.970332, 27.684425>,  <14.672229, 14.356419, 27.586859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.709884, 13.970332, 27.684425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645549, 0.127335, 0.753029,
		-0.757895, -0.228348, -0.611108,
		0.094137, -0.965217, 0.243916,
		14.738125, 13.680767, 27.757601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.035751, 14.167058, 27.744476>,  <14.672229, 14.356419, 27.586859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.035751, 14.167058, 27.744476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.249828, 13.890742, 27.938951>,  <14.378275, 13.724953, 28.055637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.249828, 13.890742, 27.938951>,  <14.035751, 14.167058, 27.744476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.249828, 13.890742, 27.938951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651698, 0.028544, 0.757941,
		-0.537455, -0.722493, -0.434909,
		0.535192, -0.690789, 0.486188,
		14.410386, 13.683506, 28.084808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.599528, 13.875450, 28.194761>,  <14.035751, 14.167058, 27.744476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.599528, 13.875450, 28.194761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.941200, 13.744542, 28.356390>,  <14.146203, 13.665998, 28.453367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.941200, 13.744542, 28.356390>,  <13.599528, 13.875450, 28.194761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.941200, 13.744542, 28.356390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410793, 0.051696, 0.910262,
		-0.318790, -0.943516, -0.090282,
		0.854179, -0.327270, 0.404070,
		14.197454, 13.646361, 28.477612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.390378, 13.370870, 28.554073>,  <13.599528, 13.875450, 28.194761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.390378, 13.370870, 28.554073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.735339, 13.506050, 28.704830>,  <13.942316, 13.587158, 28.795284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.735339, 13.506050, 28.704830>,  <13.390378, 13.370870, 28.554073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.735339, 13.506050, 28.704830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439340, 0.129817, 0.888891,
		0.251476, -0.932167, 0.260430,
		0.862404, 0.337952, 0.376893,
		13.994061, 13.607435, 28.817898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.518441, 13.067554, 29.233023>,  <13.390378, 13.370870, 28.554073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.518441, 13.067554, 29.233023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.780332, 13.368738, 29.259502>,  <13.937466, 13.549449, 29.275391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.780332, 13.368738, 29.259502>,  <13.518441, 13.067554, 29.233023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.780332, 13.368738, 29.259502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309403, 0.187065, 0.932350,
		0.689641, -0.630916, 0.355445,
		0.654726, 0.752962, 0.066199,
		13.976749, 13.594626, 29.279362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.874059, 12.961740, 29.875233>,  <13.518441, 13.067554, 29.233023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.874059, 12.961740, 29.875233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.918145, 13.353072, 29.805120>,  <13.944597, 13.587872, 29.763054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.918145, 13.353072, 29.805120>,  <13.874059, 12.961740, 29.875233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.918145, 13.353072, 29.805120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267195, 0.199027, 0.942865,
		0.957319, -0.057086, 0.283341,
		0.110217, 0.978330, -0.175279,
		13.951210, 13.646571, 29.752537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.226420, 13.310176, 30.490374>,  <13.874059, 12.961740, 29.875233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.226420, 13.310176, 30.490374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.057815, 13.609653, 30.285715>,  <13.956651, 13.789340, 30.162920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.057815, 13.609653, 30.285715>,  <14.226420, 13.310176, 30.490374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.057815, 13.609653, 30.285715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325764, 0.401536, 0.855947,
		0.846287, 0.527471, 0.074644,
		-0.421515, 0.748694, -0.511646,
		13.931360, 13.834262, 30.132221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.403182, 14.006539, 30.831190>,  <14.226420, 13.310176, 30.490374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.403182, 14.006539, 30.831190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.088998, 14.104891, 30.604000>,  <13.900488, 14.163901, 30.467686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.088998, 14.104891, 30.604000>,  <14.403182, 14.006539, 30.831190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.088998, 14.104891, 30.604000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357336, 0.569130, 0.740542,
		0.505336, 0.784624, -0.359167,
		-0.785460, 0.245879, -0.567976,
		13.853360, 14.178655, 30.433607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.339293, 14.808876, 30.925196>,  <14.403182, 14.006539, 30.831190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.339293, 14.808876, 30.925196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.003836, 14.645429, 30.781136>,  <13.802562, 14.547360, 30.694700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.003836, 14.645429, 30.781136>,  <14.339293, 14.808876, 30.925196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.003836, 14.645429, 30.781136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506723, 0.342785, 0.791031,
		-0.199776, 0.845889, -0.494531,
		-0.838643, -0.408619, -0.360151,
		13.752243, 14.522843, 30.673090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.942382, 15.403361, 31.407207>,  <14.339293, 14.808876, 30.925196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.942382, 15.403361, 31.407207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.774844, 15.755041, 31.316366>,  <13.674321, 15.966049, 31.261862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.774844, 15.755041, 31.316366>,  <13.942382, 15.403361, 31.407207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.774844, 15.755041, 31.316366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612967, 0.089227, -0.785054,
		-0.669956, -0.468022, -0.576293,
		-0.418844, 0.879200, -0.227104,
		13.649191, 16.018801, 31.248236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.772928, 15.397830, 30.727171>,  <13.942382, 15.403361, 31.407207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.772928, 15.397830, 30.727171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.817723, 15.790847, 30.786594>,  <13.844601, 16.026657, 30.822248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.817723, 15.790847, 30.786594>,  <13.772928, 15.397830, 30.727171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.817723, 15.790847, 30.786594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611817, 0.049627, -0.789441,
		-0.783032, 0.179297, -0.595578,
		0.111988, 0.982542, 0.148557,
		13.851319, 16.085609, 30.831161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.774519, 15.657659, 30.121176>,  <13.772928, 15.397830, 30.727171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.774519, 15.657659, 30.121176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.976816, 15.923182, 30.341570>,  <14.098194, 16.082495, 30.473806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.976816, 15.923182, 30.341570>,  <13.774519, 15.657659, 30.121176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.976816, 15.923182, 30.341570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682006, 0.083470, -0.726568,
		-0.528291, 0.743232, -0.410506,
		0.505743, 0.663807, 0.550985,
		14.128539, 16.122324, 30.506865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.977058, 16.208244, 29.599264>,  <13.774519, 15.657659, 30.121176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.977058, 16.208244, 29.599264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.229448, 16.250238, 29.906731>,  <14.380882, 16.275434, 30.091211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.229448, 16.250238, 29.906731>,  <13.977058, 16.208244, 29.599264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.229448, 16.250238, 29.906731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741222, 0.210935, -0.637257,
		-0.229040, 0.971846, 0.055279,
		0.630976, 0.104983, 0.768667,
		14.418741, 16.281733, 30.137331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.238633, 16.819412, 29.482441>,  <13.977058, 16.208244, 29.599264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.238633, 16.819412, 29.482441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.482933, 16.621481, 29.729708>,  <14.629513, 16.502722, 29.878067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.482933, 16.621481, 29.729708>,  <14.238633, 16.819412, 29.482441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.482933, 16.621481, 29.729708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765014, 0.167325, -0.621897,
		0.204299, 0.852729, 0.480745,
		0.610750, -0.494830, 0.618165,
		14.666159, 16.473032, 29.915157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.754743, 17.280693, 29.507853>,  <14.238633, 16.819412, 29.482441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.754743, 17.280693, 29.507853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.890510, 16.924706, 29.629671>,  <14.971970, 16.711113, 29.702763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.890510, 16.924706, 29.629671>,  <14.754743, 17.280693, 29.507853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.890510, 16.924706, 29.629671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783055, 0.087949, -0.615702,
		0.521172, 0.447457, 0.726747,
		0.339417, -0.889970, 0.304547,
		14.992334, 16.657715, 29.721035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.427963, 17.381107, 29.688477>,  <14.754743, 17.280693, 29.507853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.427963, 17.381107, 29.688477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.427905, 16.983421, 29.645508>,  <15.427870, 16.744810, 29.619726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.427905, 16.983421, 29.645508>,  <15.427963, 17.381107, 29.688477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.427905, 16.983421, 29.645508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890707, 0.048703, -0.451960,
		0.454577, -0.095746, 0.885547,
		-0.000145, -0.994214, -0.107421,
		15.427861, 16.685158, 29.613281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.118107, 17.268885, 29.787207>,  <15.427963, 17.381107, 29.688477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.118107, 17.268885, 29.787207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.977266, 16.948116, 29.594147>,  <15.892762, 16.755655, 29.478310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.977266, 16.948116, 29.594147>,  <16.118107, 17.268885, 29.787207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.977266, 16.948116, 29.594147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782669, 0.030528, -0.621689,
		0.513278, -0.596652, 0.616888,
		-0.352099, -0.801919, -0.482651,
		15.871636, 16.707541, 29.449352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.703278, 16.831919, 29.581343>,  <16.118107, 17.268885, 29.787207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.703278, 16.831919, 29.581343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.416853, 16.675627, 29.349970>,  <16.244997, 16.581852, 29.211147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.416853, 16.675627, 29.349970>,  <16.703278, 16.831919, 29.581343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.416853, 16.675627, 29.349970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677531, -0.189682, -0.710614,
		0.167942, -0.900750, 0.400557,
		-0.716064, -0.390732, -0.578430,
		16.202034, 16.558407, 29.176441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.979361, 16.211592, 29.323219>,  <16.703278, 16.831919, 29.581343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.979361, 16.211592, 29.323219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.679249, 16.304169, 29.075506>,  <16.499182, 16.359715, 28.926878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.679249, 16.304169, 29.075506>,  <16.979361, 16.211592, 29.323219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.679249, 16.304169, 29.075506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596024, -0.168521, -0.785083,
		-0.286066, -0.958141, -0.011509,
		-0.750281, 0.231445, -0.619283,
		16.454165, 16.373602, 28.889721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.932890, 15.678123, 28.777834>,  <16.979361, 16.211592, 29.323219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.932890, 15.678123, 28.777834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.770575, 16.008621, 28.621548>,  <16.673185, 16.206921, 28.527777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.770575, 16.008621, 28.621548>,  <16.932890, 15.678123, 28.777834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.770575, 16.008621, 28.621548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530775, -0.134982, -0.836695,
		-0.744053, -0.546902, -0.383776,
		-0.405787, 0.826244, -0.390715,
		16.648838, 16.256495, 28.504333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.634550, 15.488432, 28.092693>,  <16.932890, 15.678123, 28.777834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.634550, 15.488432, 28.092693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.659500, 15.886969, 28.069332>,  <16.674471, 16.126091, 28.055315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.659500, 15.886969, 28.069332>,  <16.634550, 15.488432, 28.092693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.659500, 15.886969, 28.069332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420630, -0.079308, -0.903759,
		-0.905086, 0.031808, -0.424038,
		0.062376, 0.996343, -0.058401,
		16.678213, 16.185871, 28.051811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.373886, 15.720650, 27.465847>,  <16.634550, 15.488432, 28.092693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.373886, 15.720650, 27.465847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.635975, 15.992690, 27.597387>,  <16.793228, 16.155914, 27.676311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.635975, 15.992690, 27.597387>,  <16.373886, 15.720650, 27.465847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.635975, 15.992690, 27.597387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393144, 0.064733, -0.917195,
		-0.645073, 0.730255, -0.224963,
		0.655224, 0.680101, 0.328853,
		16.832542, 16.196720, 27.696043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.140066, 16.286867, 27.243671>,  <16.373886, 15.720650, 27.465847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.140066, 16.286867, 27.243671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.538374, 16.266033, 27.273949>,  <16.777359, 16.253532, 27.292116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.538374, 16.266033, 27.273949>,  <16.140066, 16.286867, 27.243671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.538374, 16.266033, 27.273949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076540, 0.014416, -0.996962,
		0.050835, 0.998539, 0.018342,
		0.995770, -0.052084, 0.075695,
		16.837105, 16.250408, 27.296658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.340761, 16.439665, 26.519308>,  <16.140066, 16.286867, 27.243671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.340761, 16.439665, 26.519308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.683273, 16.274492, 26.643421>,  <16.888781, 16.175388, 26.717890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.683273, 16.274492, 26.643421>,  <16.340761, 16.439665, 26.519308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.683273, 16.274492, 26.643421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327916, -0.029536, -0.944245,
		0.399071, 0.910284, 0.110115,
		0.856279, -0.412929, 0.310284,
		16.940157, 16.150614, 26.736506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.917324, 16.828531, 26.197369>,  <16.340761, 16.439665, 26.519308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.917324, 16.828531, 26.197369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.043770, 16.463104, 26.299717>,  <17.119637, 16.243849, 26.361126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.043770, 16.463104, 26.299717>,  <16.917324, 16.828531, 26.197369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.043770, 16.463104, 26.299717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438704, -0.098375, -0.893231,
		0.841196, 0.394615, 0.369687,
		0.316114, -0.913565, 0.255871,
		17.138603, 16.189035, 26.376478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.629431, 16.801605, 25.822781>,  <16.917324, 16.828531, 26.197369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.629431, 16.801605, 25.822781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.561304, 16.419750, 25.920481>,  <17.520428, 16.190638, 25.979101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.561304, 16.419750, 25.920481>,  <17.629431, 16.801605, 25.822781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.561304, 16.419750, 25.920481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351992, -0.290458, -0.889795,
		0.920377, -0.065575, 0.385496,
		-0.170318, -0.954638, 0.244249,
		17.510208, 16.133358, 25.993755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.327560, 16.392794, 25.733904>,  <17.629431, 16.801605, 25.822781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.327560, 16.392794, 25.733904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.010342, 16.149254, 25.726110>,  <17.820011, 16.003130, 25.721434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.010342, 16.149254, 25.726110>,  <18.327560, 16.392794, 25.733904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.010342, 16.149254, 25.726110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315059, -0.382578, -0.868546,
		0.521359, -0.694936, 0.495226,
		-0.793046, -0.608849, -0.019486,
		17.772429, 15.966599, 25.720264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.582644, 15.713237, 25.459112>,  <18.327560, 16.392794, 25.733904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.582644, 15.713237, 25.459112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.186537, 15.690945, 25.408092>,  <17.948874, 15.677569, 25.377481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.186537, 15.690945, 25.408092>,  <18.582644, 15.713237, 25.459112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.186537, 15.690945, 25.408092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139174, -0.410486, -0.901184,
		-0.002133, -0.910163, 0.414246,
		-0.990266, -0.055730, -0.127547,
		17.889458, 15.674226, 25.369829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.488262, 14.989335, 25.374245>,  <18.582644, 15.713237, 25.459112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.488262, 14.989335, 25.374245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.176786, 15.186216, 25.218615>,  <17.989901, 15.304345, 25.125237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.176786, 15.186216, 25.218615>,  <18.488262, 14.989335, 25.374245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.176786, 15.186216, 25.218615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118438, -0.493664, -0.861550,
		-0.616133, -0.716959, 0.326114,
		-0.778686, 0.492205, -0.389078,
		17.943180, 15.333878, 25.101891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.960236, 14.418982, 25.091160>,  <18.488262, 14.989335, 25.374245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.960236, 14.418982, 25.091160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.846348, 14.743860, 24.887486>,  <17.778015, 14.938787, 24.765282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.846348, 14.743860, 24.887486>,  <17.960236, 14.418982, 25.091160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.846348, 14.743860, 24.887486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343554, -0.409430, -0.845185,
		-0.894933, -0.415574, -0.162460,
		-0.284721, 0.812198, -0.509184,
		17.760931, 14.987519, 24.734730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.417439, 14.170012, 24.592978>,  <17.960236, 14.418982, 25.091160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.417439, 14.170012, 24.592978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.592297, 14.512701, 24.483484>,  <17.697212, 14.718314, 24.417788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.592297, 14.512701, 24.483484>,  <17.417439, 14.170012, 24.592978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.592297, 14.512701, 24.483484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248750, -0.407650, -0.878604,
		-0.864308, 0.315986, -0.391312,
		0.437145, 0.856723, -0.273733,
		17.723440, 14.769718, 24.401363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.193033, 14.328753, 23.874197>,  <17.417439, 14.170012, 24.592978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.193033, 14.328753, 23.874197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.522635, 14.550912, 23.919006>,  <17.720396, 14.684208, 23.945892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.522635, 14.550912, 23.919006>,  <17.193033, 14.328753, 23.874197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.522635, 14.550912, 23.919006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370226, -0.378135, -0.848496,
		-0.428894, 0.740638, -0.517208,
		0.824004, 0.555399, 0.112024,
		17.769836, 14.717532, 23.952614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.334961, 14.668946, 23.130249>,  <17.193033, 14.328753, 23.874197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.334961, 14.668946, 23.130249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.664660, 14.684993, 23.356173>,  <17.862478, 14.694621, 23.491728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.664660, 14.684993, 23.356173>,  <17.334961, 14.668946, 23.130249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.664660, 14.684993, 23.356173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556834, -0.238421, -0.795670,
		0.102743, 0.970333, -0.218855,
		0.824245, 0.040116, 0.564811,
		17.911934, 14.697027, 23.525616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.882574, 15.090382, 22.743103>,  <17.334961, 14.668946, 23.130249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.882574, 15.090382, 22.743103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.105444, 14.871823, 22.993225>,  <18.239166, 14.740688, 23.143299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.105444, 14.871823, 22.993225>,  <17.882574, 15.090382, 22.743103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.105444, 14.871823, 22.993225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656701, -0.170947, -0.734521,
		0.508233, 0.819896, 0.263571,
		0.557174, -0.546395, 0.625307,
		18.272596, 14.707905, 23.180817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.585691, 15.274295, 22.693150>,  <17.882574, 15.090382, 22.743103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.585691, 15.274295, 22.693150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.618631, 14.909108, 22.853004>,  <18.638395, 14.689996, 22.948917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.618631, 14.909108, 22.853004>,  <18.585691, 15.274295, 22.693150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.618631, 14.909108, 22.853004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735929, -0.214697, -0.642117,
		0.672033, 0.346983, 0.654198,
		0.082349, -0.912967, 0.399638,
		18.643335, 14.635219, 22.972897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.323475, 15.122242, 22.837955>,  <18.585691, 15.274295, 22.693150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.323475, 15.122242, 22.837955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.173979, 14.752360, 22.866911>,  <19.084282, 14.530431, 22.884285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.173979, 14.752360, 22.866911>,  <19.323475, 15.122242, 22.837955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.173979, 14.752360, 22.866911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750010, -0.347204, -0.562969,
		0.545713, -0.156111, 0.823302,
		-0.373740, -0.924705, 0.072389,
		19.061857, 14.474949, 22.888628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.910677, 14.678080, 23.203972>,  <19.323475, 15.122242, 22.837955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.910677, 14.678080, 23.203972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.635342, 14.448289, 23.026808>,  <19.470140, 14.310414, 22.920509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.635342, 14.448289, 23.026808>,  <19.910677, 14.678080, 23.203972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.635342, 14.448289, 23.026808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719436, -0.462573, -0.518110,
		0.092763, -0.675280, 0.731705,
		-0.688336, -0.574476, -0.442911,
		19.428841, 14.275946, 22.893934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.101139, 14.035398, 23.311153>,  <19.910677, 14.678080, 23.203972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.101139, 14.035398, 23.311153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.868982, 14.023896, 22.985620>,  <19.729689, 14.016995, 22.790300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.868982, 14.023896, 22.985620>,  <20.101139, 14.035398, 23.311153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.868982, 14.023896, 22.985620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750804, -0.405888, -0.521102,
		-0.315341, -0.913471, 0.257162,
		-0.580391, -0.028753, -0.813830,
		19.694866, 14.015270, 22.741470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.257547, 13.363560, 23.085011>,  <20.101139, 14.035398, 23.311153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.257547, 13.363560, 23.085011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.125072, 13.549648, 22.756649>,  <20.045588, 13.661302, 22.559631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.125072, 13.549648, 22.756649>,  <20.257547, 13.363560, 23.085011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.125072, 13.549648, 22.756649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800597, -0.321880, -0.505409,
		-0.499360, -0.824598, -0.265852,
		-0.331187, 0.465221, -0.820905,
		20.025717, 13.689215, 22.510378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.478930, 12.867749, 22.549999>,  <20.257547, 13.363560, 23.085011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.478930, 12.867749, 22.549999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.419752, 13.209538, 22.350805>,  <20.384245, 13.414611, 22.231289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.419752, 13.209538, 22.350805>,  <20.478930, 12.867749, 22.549999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.419752, 13.209538, 22.350805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696205, -0.267649, -0.666080,
		-0.702432, -0.445243, -0.555290,
		-0.147945, 0.854472, -0.497986,
		20.375368, 13.465879, 22.201410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.630495, 12.643454, 21.871725>,  <20.478930, 12.867749, 22.549999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.630495, 12.643454, 21.871725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.614857, 13.042589, 21.850595>,  <20.605474, 13.282070, 21.837917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.614857, 13.042589, 21.850595>,  <20.630495, 12.643454, 21.871725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.614857, 13.042589, 21.850595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675175, -0.012594, -0.737550,
		-0.736621, -0.064501, -0.673223,
		-0.039094, 0.997838, -0.052826,
		20.603128, 13.341941, 21.834747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.514812, 12.756672, 21.174978>,  <20.630495, 12.643454, 21.871725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.514812, 12.756672, 21.174978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.682838, 13.080275, 21.339441>,  <20.783655, 13.274436, 21.438120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.682838, 13.080275, 21.339441>,  <20.514812, 12.756672, 21.174978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.682838, 13.080275, 21.339441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667265, 0.031726, -0.744144,
		-0.615062, 0.586942, -0.526495,
		0.420066, 0.809007, 0.411160,
		20.808859, 13.322977, 21.462790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.555086, 13.275779, 20.575821>,  <20.514812, 12.756672, 21.174978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.555086, 13.275779, 20.575821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.800301, 13.406150, 20.863699>,  <20.947430, 13.484372, 21.036427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.800301, 13.406150, 20.863699>,  <20.555086, 13.275779, 20.575821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.800301, 13.406150, 20.863699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662170, 0.284930, -0.693070,
		-0.430953, 0.901436, -0.041148,
		0.613034, 0.325928, 0.719695,
		20.984211, 13.503928, 21.079607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.681147, 13.911880, 20.441605>,  <20.555086, 13.275779, 20.575821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.681147, 13.911880, 20.441605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.993975, 13.784033, 20.655598>,  <21.181671, 13.707325, 20.783995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.993975, 13.784033, 20.655598>,  <20.681147, 13.911880, 20.441605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.993975, 13.784033, 20.655598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622867, 0.428490, -0.654548,
		-0.020031, 0.845128, 0.534189,
		0.782072, -0.319617, 0.534985,
		21.228596, 13.688148, 20.816093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.089621, 14.546232, 20.683435>,  <20.681147, 13.911880, 20.441605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.089621, 14.546232, 20.683435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.313627, 14.215526, 20.662119>,  <21.448030, 14.017101, 20.649328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.313627, 14.215526, 20.662119>,  <21.089621, 14.546232, 20.683435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.313627, 14.215526, 20.662119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585870, 0.440683, -0.680113,
		0.585780, 0.349651, 0.731167,
		0.560016, -0.826766, -0.053294,
		21.481632, 13.967496, 20.646132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.791075, 14.878339, 20.576733>,  <21.089621, 14.546232, 20.683435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.791075, 14.878339, 20.576733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.887409, 14.493142, 20.528324>,  <21.945210, 14.262024, 20.499279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.887409, 14.493142, 20.528324>,  <21.791075, 14.878339, 20.576733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.887409, 14.493142, 20.528324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700604, 0.258782, -0.664971,
		0.671680, 0.075359, 0.736999,
		0.240834, -0.962992, -0.121022,
		21.959660, 14.204245, 20.492018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.491373, 14.825040, 20.609335>,  <21.791075, 14.878339, 20.576733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.491373, 14.825040, 20.609335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.391933, 14.490987, 20.413069>,  <22.332270, 14.290555, 20.295309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.391933, 14.490987, 20.413069>,  <22.491373, 14.825040, 20.609335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.391933, 14.490987, 20.413069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646830, 0.233927, -0.725871,
		0.720979, -0.497827, 0.482035,
		-0.248597, -0.835132, -0.490666,
		22.317354, 14.240447, 20.265869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.090221, 14.492249, 20.364056>,  <22.491373, 14.825040, 20.609335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.090221, 14.492249, 20.364056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.786812, 14.364885, 20.136633>,  <22.604767, 14.288467, 20.000179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.786812, 14.364885, 20.136633>,  <23.090221, 14.492249, 20.364056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.786812, 14.364885, 20.136633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479314, 0.318474, -0.817822,
		0.441474, -0.892854, -0.088951,
		-0.758524, -0.318411, -0.568556,
		22.559254, 14.269362, 19.966066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.401594, 14.415009, 19.633608>,  <23.090221, 14.492249, 20.364056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.401594, 14.415009, 19.633608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.012838, 14.412950, 19.539455>,  <22.779585, 14.411714, 19.482964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.012838, 14.412950, 19.539455>,  <23.401594, 14.415009, 19.633608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.012838, 14.412950, 19.539455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229312, 0.205819, -0.951343,
		0.053344, -0.978577, -0.198852,
		-0.971890, -0.005149, -0.235379,
		22.721272, 14.411405, 19.468842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.280848, 13.912455, 19.061272>,  <23.401594, 14.415009, 19.633608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.280848, 13.912455, 19.061272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.984278, 14.180430, 19.045938>,  <22.806335, 14.341216, 19.036739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.984278, 14.180430, 19.045938>,  <23.280848, 13.912455, 19.061272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.984278, 14.180430, 19.045938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086141, 0.038372, -0.995544,
		-0.665482, -0.741424, -0.086159,
		-0.741426, 0.669939, -0.038331,
		22.761850, 14.381412, 19.034439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.759933, 13.582814, 18.578014>,  <23.280848, 13.912455, 19.061272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.759933, 13.582814, 18.578014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.738274, 13.981499, 18.602129>,  <22.725277, 14.220710, 18.616598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.738274, 13.981499, 18.602129>,  <22.759933, 13.582814, 18.578014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.738274, 13.981499, 18.602129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073262, 0.064177, -0.995246,
		-0.995842, -0.049476, -0.076496,
		-0.054150, 0.996711, 0.060286,
		22.722029, 14.280512, 18.620214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.495260, 13.922153, 17.977987>,  <22.759933, 13.582814, 18.578014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.495260, 13.922153, 17.977987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.648949, 14.254019, 18.139990>,  <22.741161, 14.453138, 18.237190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.648949, 14.254019, 18.139990>,  <22.495260, 13.922153, 17.977987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.648949, 14.254019, 18.139990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169057, 0.368035, -0.914314,
		-0.907632, 0.419767, 0.001145,
		0.384220, 0.829667, 0.405004,
		22.764215, 14.502919, 18.261492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.976660, 14.033102, 17.465294>,  <22.495260, 13.922153, 17.977987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.976660, 14.033102, 17.465294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.870846, 14.241846, 17.140903>,  <22.807358, 14.367092, 16.946270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.870846, 14.241846, 17.140903>,  <22.976660, 14.033102, 17.465294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.870846, 14.241846, 17.140903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367214, 0.832092, 0.415664,
		0.891725, -0.187844, -0.411753,
		-0.264537, 0.521860, -0.810976,
		22.791485, 14.398404, 16.897610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.550814, 14.492875, 17.288452>,  <22.976660, 14.033102, 17.465294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.550814, 14.492875, 17.288452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.194584, 14.624984, 17.163361>,  <22.980846, 14.704249, 17.088306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.194584, 14.624984, 17.163361>,  <23.550814, 14.492875, 17.288452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.194584, 14.624984, 17.163361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211423, 0.909357, 0.358289,
		0.402715, 0.252965, -0.879676,
		-0.890574, 0.330272, -0.312729,
		22.927412, 14.724066, 17.069542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.159292, 15.186103, 17.099401>,  <23.550814, 14.492875, 17.288452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.159292, 15.186103, 17.099401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.453178, 15.446480, 17.023018>,  <23.629511, 15.602706, 16.977188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.453178, 15.446480, 17.023018>,  <23.159292, 15.186103, 17.099401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.453178, 15.446480, 17.023018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671058, 0.656165, -0.345151,
		-0.099372, 0.381734, 0.918915,
		0.734715, 0.650943, -0.190961,
		23.673594, 15.641763, 16.965729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.972837, 15.937216, 17.231197>,  <23.159292, 15.186103, 17.099401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.972837, 15.937216, 17.231197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.283756, 15.941682, 16.979582>,  <23.470306, 15.944362, 16.828613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.283756, 15.941682, 16.979582>,  <22.972837, 15.937216, 17.231197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.283756, 15.941682, 16.979582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382126, 0.802663, -0.457943,
		0.499792, 0.596328, 0.628173,
		0.777296, 0.011165, -0.629036,
		23.516945, 15.945031, 16.790871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.318867, 16.570824, 17.304174>,  <22.972837, 15.937216, 17.231197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.318867, 16.570824, 17.304174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.340080, 16.390417, 16.947800>,  <23.352808, 16.282173, 16.733974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.340080, 16.390417, 16.947800>,  <23.318867, 16.570824, 17.304174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.340080, 16.390417, 16.947800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273721, 0.851457, -0.447322,
		0.960346, 0.267591, -0.078297,
		0.053033, -0.451016, -0.890939,
		23.355989, 16.255112, 16.680517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.531675, 17.081539, 16.936291>,  <23.318867, 16.570824, 17.304174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.531675, 17.081539, 16.936291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.352602, 16.818893, 16.693495>,  <23.245157, 16.661306, 16.547817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.352602, 16.818893, 16.693495>,  <23.531675, 17.081539, 16.936291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.352602, 16.818893, 16.693495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225782, 0.739825, -0.633783,
		0.865219, -0.146686, -0.479458,
		-0.447682, -0.656614, -0.606992,
		23.218298, 16.621910, 16.511398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.780981, 17.198429, 16.270262>,  <23.531675, 17.081539, 16.936291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.780981, 17.198429, 16.270262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.433571, 17.010979, 16.205696>,  <23.225124, 16.898508, 16.166958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.433571, 17.010979, 16.205696>,  <23.780981, 17.198429, 16.270262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.433571, 17.010979, 16.205696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284840, 0.738434, -0.611214,
		0.405622, -0.484878, -0.774832,
		-0.868526, -0.468625, -0.161413,
		23.173014, 16.870392, 16.157272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.632412, 17.212265, 15.651522>,  <23.780981, 17.198429, 16.270262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.632412, 17.212265, 15.651522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.257900, 17.153631, 15.779202>,  <23.033192, 17.118450, 15.855811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.257900, 17.153631, 15.779202>,  <23.632412, 17.212265, 15.651522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.257900, 17.153631, 15.779202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315161, 0.751817, -0.579176,
		-0.155082, -0.642871, -0.750111,
		-0.936282, -0.146586, 0.319201,
		22.977016, 17.109655, 15.874963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.288733, 17.297943, 15.052275>,  <23.632412, 17.212265, 15.651522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.288733, 17.297943, 15.052275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.993292, 17.332945, 15.319650>,  <22.816027, 17.353945, 15.480075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.993292, 17.332945, 15.319650>,  <23.288733, 17.297943, 15.052275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.993292, 17.332945, 15.319650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429270, 0.703487, -0.566422,
		-0.519801, -0.705301, -0.482035,
		-0.738603, 0.087503, 0.668437,
		22.771711, 17.359196, 15.520181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.715414, 17.187065, 14.737931>,  <23.288733, 17.297943, 15.052275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.715414, 17.187065, 14.737931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.596390, 17.404219, 15.052061>,  <22.524975, 17.534512, 15.240540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.596390, 17.404219, 15.052061>,  <22.715414, 17.187065, 14.737931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.596390, 17.404219, 15.052061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435853, 0.654613, -0.617668,
		-0.849406, -0.526079, 0.041832,
		-0.297559, 0.542883, 0.785326,
		22.507122, 17.567083, 15.287659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.027956, 17.501944, 14.596519>,  <22.715414, 17.187065, 14.737931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.027956, 17.501944, 14.596519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.176548, 17.729267, 14.890192>,  <22.265703, 17.865662, 15.066397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.176548, 17.729267, 14.890192>,  <22.027956, 17.501944, 14.596519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.176548, 17.729267, 14.890192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476233, 0.795454, -0.374774,
		-0.796998, -0.210421, 0.566143,
		0.371480, 0.568310, 0.734184,
		22.287992, 17.899759, 15.110447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.524054, 17.922153, 14.821951>,  <22.027956, 17.501944, 14.596519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.524054, 17.922153, 14.821951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.832577, 18.128206, 14.971467>,  <22.017691, 18.251839, 15.061177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.832577, 18.128206, 14.971467>,  <21.524054, 17.922153, 14.821951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.832577, 18.128206, 14.971467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393733, 0.847624, -0.355680,
		-0.500057, 0.127165, 0.856605,
		0.771309, 0.515134, 0.373791,
		22.063969, 18.282747, 15.083605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.264374, 18.377699, 15.304473>,  <21.524054, 17.922153, 14.821951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.264374, 18.377699, 15.304473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.613974, 18.522961, 15.175324>,  <21.823732, 18.610117, 15.097836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.613974, 18.522961, 15.175324>,  <21.264374, 18.377699, 15.304473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.613974, 18.522961, 15.175324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445759, 0.863706, -0.235182,
		0.193459, 0.349472, 0.916757,
		0.873998, 0.363154, -0.322872,
		21.876173, 18.631907, 15.078463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.407860, 19.084715, 15.630569>,  <21.264374, 18.377699, 15.304473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.407860, 19.084715, 15.630569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.651724, 19.092653, 15.313603>,  <21.798042, 19.097416, 15.123424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.651724, 19.092653, 15.313603>,  <21.407860, 19.084715, 15.630569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.651724, 19.092653, 15.313603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181288, 0.976681, -0.115016,
		0.771654, 0.213776, 0.599041,
		0.609660, 0.019847, -0.792415,
		21.834621, 19.098608, 15.075879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.853027, 19.555264, 15.793552>,  <21.407860, 19.084715, 15.630569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.853027, 19.555264, 15.793552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.870462, 19.515476, 15.395918>,  <21.880922, 19.491604, 15.157337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.870462, 19.515476, 15.395918>,  <21.853027, 19.555264, 15.793552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.870462, 19.515476, 15.395918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058499, 0.993070, -0.101933,
		0.997336, 0.062596, 0.037465,
		0.043586, -0.099469, -0.994086,
		21.883537, 19.485636, 15.097692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.391626, 19.917664, 15.630757>,  <21.853027, 19.555264, 15.793552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.391626, 19.917664, 15.630757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.196774, 19.886263, 15.282840>,  <22.079863, 19.867422, 15.074089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.196774, 19.886263, 15.282840>,  <22.391626, 19.917664, 15.630757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.196774, 19.886263, 15.282840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053666, 0.991379, -0.119533,
		0.871678, -0.104907, -0.478719,
		-0.487131, -0.078503, -0.869793,
		22.050634, 19.862711, 15.021902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.519417, 20.555073, 15.190648>,  <22.391626, 19.917664, 15.630757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.519417, 20.555073, 15.190648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.228037, 20.425114, 14.949384>,  <22.053209, 20.347139, 14.804625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.228037, 20.425114, 14.949384>,  <22.519417, 20.555073, 15.190648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.228037, 20.425114, 14.949384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179212, 0.940111, -0.289958,
		0.661244, -0.103126, -0.743049,
		-0.728450, -0.324896, -0.603161,
		22.009502, 20.327644, 14.768435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.705402, 20.806095, 14.525257>,  <22.519417, 20.555073, 15.190648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.705402, 20.806095, 14.525257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.310341, 20.743439, 14.524638>,  <22.073303, 20.705845, 14.524267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.310341, 20.743439, 14.524638>,  <22.705402, 20.806095, 14.525257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.310341, 20.743439, 14.524638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146886, 0.929479, -0.338369,
		0.054441, -0.333964, -0.941012,
		-0.987654, -0.156643, -0.001547,
		22.014044, 20.696445, 14.524174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.494329, 21.119280, 14.015793>,  <22.705402, 20.806095, 14.525257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.494329, 21.119280, 14.015793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.158964, 21.071104, 14.228416>,  <21.957745, 21.042198, 14.355990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.158964, 21.071104, 14.228416>,  <22.494329, 21.119280, 14.015793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.158964, 21.071104, 14.228416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377870, 0.831286, -0.407649,
		-0.392781, -0.542639, -0.742473,
		-0.838414, -0.120441, 0.531560,
		21.907440, 21.034971, 14.387884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.036652, 21.318024, 13.608988>,  <22.494329, 21.119280, 14.015793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.036652, 21.318024, 13.608988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.859062, 21.349226, 13.966043>,  <21.752508, 21.367947, 14.180277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.859062, 21.349226, 13.966043>,  <22.036652, 21.318024, 13.608988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.859062, 21.349226, 13.966043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455089, 0.838523, -0.299622,
		-0.771870, -0.539254, -0.336781,
		-0.443971, 0.078004, 0.892639,
		21.725870, 21.372627, 14.233835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.376331, 21.493916, 13.508956>,  <22.036652, 21.318024, 13.608988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.376331, 21.493916, 13.508956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.405798, 21.595001, 13.894849>,  <21.423477, 21.655653, 14.126385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.405798, 21.595001, 13.894849>,  <21.376331, 21.493916, 13.508956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.405798, 21.595001, 13.894849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641588, 0.752605, -0.148157,
		-0.763504, -0.608047, 0.217579,
		0.073665, 0.252714, 0.964733,
		21.427896, 21.670815, 14.184269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.809763, 21.669609, 13.677925>,  <21.376331, 21.493916, 13.508956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.809763, 21.669609, 13.677925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.013500, 21.854557, 13.968244>,  <21.135742, 21.965527, 14.142435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.013500, 21.854557, 13.968244>,  <20.809763, 21.669609, 13.677925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.013500, 21.854557, 13.968244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542170, 0.827380, -0.146607,
		-0.668298, -0.318832, 0.672105,
		0.509343, 0.462372, 0.725797,
		21.166304, 21.993269, 14.185983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.336546, 21.824146, 14.106669>,  <20.809763, 21.669609, 13.677925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.336546, 21.824146, 14.106669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.632153, 22.070875, 14.215030>,  <20.809517, 22.218912, 14.280046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.632153, 22.070875, 14.215030>,  <20.336546, 21.824146, 14.106669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.632153, 22.070875, 14.215030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628635, 0.775966, -0.051908,
		-0.242227, -0.131937, 0.961207,
		0.739016, 0.616821, 0.270900,
		20.853857, 22.255922, 14.296300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.956369, 22.317917, 14.470468>,  <20.336546, 21.824146, 14.106669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.956369, 22.317917, 14.470468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.292515, 22.499893, 14.352609>,  <20.494202, 22.609079, 14.281894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.292515, 22.499893, 14.352609>,  <19.956369, 22.317917, 14.470468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.292515, 22.499893, 14.352609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492490, 0.867922, -0.064534,
		0.226372, 0.199343, 0.953424,
		0.840363, 0.454943, -0.294648,
		20.544624, 22.636375, 14.264215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.938301, 22.964870, 14.788230>,  <19.956369, 22.317917, 14.470468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.938301, 22.964870, 14.788230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.220205, 23.016922, 14.509266>,  <20.389347, 23.048153, 14.341887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.220205, 23.016922, 14.509266>,  <19.938301, 22.964870, 14.788230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.220205, 23.016922, 14.509266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427754, 0.862192, -0.271388,
		0.565986, 0.489583, 0.663302,
		0.704760, 0.130128, -0.697409,
		20.431633, 23.055960, 14.300043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.193611, 23.571899, 14.870324>,  <19.938301, 22.964870, 14.788230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.193611, 23.571899, 14.870324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.290838, 23.489317, 14.491211>,  <20.349174, 23.439768, 14.263743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.290838, 23.489317, 14.491211>,  <20.193611, 23.571899, 14.870324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.290838, 23.489317, 14.491211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290987, 0.916567, -0.274284,
		0.925335, 0.342463, 0.162711,
		0.243067, -0.206458, -0.947783,
		20.363758, 23.427380, 14.206876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.596859, 24.112270, 14.654527>,  <20.193611, 23.571899, 14.870324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.596859, 24.112270, 14.654527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.433586, 23.949165, 14.327818>,  <20.335623, 23.851303, 14.131792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.433586, 23.949165, 14.327818>,  <20.596859, 24.112270, 14.654527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.433586, 23.949165, 14.327818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339094, 0.898412, -0.279055,
		0.847586, 0.163057, -0.504986,
		-0.408183, -0.407761, -0.816773,
		20.311131, 23.826838, 14.082787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.779099, 24.573217, 14.136265>,  <20.596859, 24.112270, 14.654527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.779099, 24.573217, 14.136265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.480135, 24.347979, 13.995240>,  <20.300756, 24.212835, 13.910625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.480135, 24.347979, 13.995240>,  <20.779099, 24.573217, 14.136265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.480135, 24.347979, 13.995240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315308, 0.767755, -0.557792,
		0.584770, -0.305735, -0.751378,
		-0.747411, -0.563096, -0.352560,
		20.255911, 24.179050, 13.889472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.958866, 24.973722, 14.675460>,  <20.779099, 24.573217, 14.136265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.958866, 24.973722, 14.675460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.735050, 24.968391, 15.006938>,  <20.600761, 24.965193, 15.205825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.735050, 24.968391, 15.006938>,  <20.958866, 24.973722, 14.675460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.735050, 24.968391, 15.006938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817386, -0.174269, 0.549100,
		0.137099, 0.984608, 0.108403,
		-0.559540, -0.013326, 0.828696,
		20.567188, 24.964394, 15.255547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.320879, 25.380383, 15.243876>,  <20.958866, 24.973722, 14.675460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.320879, 25.380383, 15.243876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.056557, 25.139511, 15.423084>,  <20.897964, 24.994989, 15.530609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.056557, 25.139511, 15.423084>,  <21.320879, 25.380383, 15.243876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.056557, 25.139511, 15.423084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667285, -0.198072, 0.717983,
		-0.343613, 0.773402, 0.532710,
		-0.660804, -0.602177, 0.448019,
		20.858316, 24.958858, 15.557490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.401272, 25.555857, 15.900133>,  <21.320879, 25.380383, 15.243876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.401272, 25.555857, 15.900133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.201887, 25.209877, 15.923437>,  <21.082256, 25.002289, 15.937420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.201887, 25.209877, 15.923437>,  <21.401272, 25.555857, 15.900133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.201887, 25.209877, 15.923437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537085, -0.255366, 0.803945,
		-0.680496, 0.432027, 0.591843,
		-0.498463, -0.864951, 0.058260,
		21.052349, 24.950392, 15.940915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.313305, 25.541368, 16.654461>,  <21.401272, 25.555857, 15.900133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.313305, 25.541368, 16.654461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.331594, 25.178675, 16.486776>,  <21.342567, 24.961058, 16.386166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.331594, 25.178675, 16.486776>,  <21.313305, 25.541368, 16.654461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.331594, 25.178675, 16.486776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546753, -0.328500, 0.770162,
		-0.836045, -0.264420, 0.480740,
		0.045723, -0.906736, -0.419213,
		21.345312, 24.906654, 16.361013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.087631, 24.954594, 17.131491>,  <21.313305, 25.541368, 16.654461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.087631, 24.954594, 17.131491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.392969, 24.861153, 16.890581>,  <21.576172, 24.805088, 16.746035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.392969, 24.861153, 16.890581>,  <21.087631, 24.954594, 17.131491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.392969, 24.861153, 16.890581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593393, -0.114926, 0.796666,
		-0.255321, -0.965516, 0.050891,
		0.763345, -0.233603, -0.602274,
		21.621973, 24.791073, 16.709900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.334526, 24.130539, 17.200146>,  <21.087631, 24.954594, 17.131491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.334526, 24.130539, 17.200146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.619522, 24.399904, 17.121277>,  <21.790520, 24.561523, 17.073956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.619522, 24.399904, 17.121277>,  <21.334526, 24.130539, 17.200146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.619522, 24.399904, 17.121277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453056, -0.226926, 0.862116,
		0.535816, -0.703578, -0.466776,
		0.712490, 0.673411, -0.197170,
		21.833269, 24.601927, 17.062126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.846704, 23.770615, 17.461140>,  <21.334526, 24.130539, 17.200146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.846704, 23.770615, 17.461140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.897688, 24.167141, 17.448195>,  <21.928278, 24.405056, 17.440428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.897688, 24.167141, 17.448195>,  <21.846704, 23.770615, 17.461140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.897688, 24.167141, 17.448195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072480, 0.023233, 0.997099,
		0.989192, -0.129435, -0.068889,
		0.127459, 0.991316, -0.032364,
		21.935926, 24.464535, 17.438486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.613907, 23.941393, 17.684076>,  <21.846704, 23.770615, 17.461140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.613907, 23.941393, 17.684076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.343538, 24.227608, 17.754663>,  <22.181318, 24.399336, 17.797016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.343538, 24.227608, 17.754663>,  <22.613907, 23.941393, 17.684076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.343538, 24.227608, 17.754663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110505, -0.138343, 0.984200,
		0.728643, 0.684741, 0.014439,
		-0.675920, 0.715535, 0.176470,
		22.140762, 24.442268, 17.807604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.305056, 23.343821, 18.121992>,  <22.613907, 23.941393, 17.684076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.305056, 23.343821, 18.121992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.402281, 23.352715, 17.734091>,  <22.460615, 23.358051, 17.501350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.402281, 23.352715, 17.734091>,  <22.305056, 23.343821, 18.121992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.402281, 23.352715, 17.734091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150237, -0.988536, 0.014993,
		-0.958305, -0.149338, -0.243617,
		0.243064, 0.022233, -0.969756,
		22.475201, 23.359385, 17.443165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.149778, 22.698772, 17.923677>,  <22.305056, 23.343821, 18.121992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.149778, 22.698772, 17.923677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.299221, 22.858240, 17.588659>,  <22.388887, 22.953920, 17.387650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.299221, 22.858240, 17.588659>,  <22.149778, 22.698772, 17.923677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.299221, 22.858240, 17.588659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125451, -0.916350, -0.380218,
		-0.919064, 0.036982, -0.392369,
		0.373609, 0.398667, -0.837544,
		22.411304, 22.977840, 17.337397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.925859, 22.370747, 17.325300>,  <22.149778, 22.698772, 17.923677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.925859, 22.370747, 17.325300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.277004, 22.524570, 17.211124>,  <22.487690, 22.616865, 17.142618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.277004, 22.524570, 17.211124>,  <21.925859, 22.370747, 17.325300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.277004, 22.524570, 17.211124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320784, -0.914708, -0.245780,
		-0.355612, 0.124195, -0.926345,
		0.877860, 0.384559, -0.285442,
		22.540361, 22.639938, 17.125492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.106174, 21.807240, 17.020832>,  <21.925859, 22.370747, 17.325300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.106174, 21.807240, 17.020832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.425295, 22.046480, 16.990400>,  <22.616766, 22.190025, 16.972141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.425295, 22.046480, 16.990400>,  <22.106174, 21.807240, 17.020832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.425295, 22.046480, 16.990400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484538, -0.711118, -0.509445,
		-0.358801, 0.369573, -0.857134,
		0.797800, 0.598103, -0.076078,
		22.664635, 22.225910, 16.967577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.323170, 21.767464, 16.313477>,  <22.106174, 21.807240, 17.020832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.323170, 21.767464, 16.313477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.633150, 21.862253, 16.547842>,  <22.819138, 21.919127, 16.688461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.633150, 21.862253, 16.547842>,  <22.323170, 21.767464, 16.313477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.633150, 21.862253, 16.547842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540784, -0.728431, -0.420643,
		0.327116, 0.642830, -0.692651,
		0.774951, 0.236975, 0.585913,
		22.865635, 21.933346, 16.723616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.884056, 21.605103, 15.880205>,  <22.323170, 21.767464, 16.313477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.884056, 21.605103, 15.880205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.058504, 21.621517, 16.239786>,  <23.163172, 21.631365, 16.455536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.058504, 21.621517, 16.239786>,  <22.884056, 21.605103, 15.880205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.058504, 21.621517, 16.239786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650450, -0.704701, -0.283391,
		0.621864, 0.708317, -0.334024,
		0.436118, 0.041035, 0.898953,
		23.189339, 21.633827, 16.509472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.667246, 21.474970, 15.752585>,  <22.884056, 21.605103, 15.880205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.667246, 21.474970, 15.752585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.555368, 21.384665, 16.125853>,  <23.488241, 21.330481, 16.349813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.555368, 21.384665, 16.125853>,  <23.667246, 21.474970, 15.752585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.555368, 21.384665, 16.125853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493676, -0.867440, -0.061897,
		0.823441, 0.443370, 0.354072,
		-0.279693, -0.225765, 0.933168,
		23.471460, 21.316935, 16.405804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.283257, 21.336092, 16.098799>,  <23.667246, 21.474970, 15.752585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.283257, 21.336092, 16.098799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.999699, 21.160114, 16.319315>,  <23.829565, 21.054527, 16.451624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.999699, 21.160114, 16.319315>,  <24.283257, 21.336092, 16.098799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.999699, 21.160114, 16.319315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540102, -0.841281, 0.023143,
		0.453608, 0.314159, 0.833993,
		-0.708893, -0.439944, 0.551290,
		23.787031, 21.028131, 16.484701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.668507, 20.991480, 16.529644>,  <24.283257, 21.336092, 16.098799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.668507, 20.991480, 16.529644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.311134, 20.812212, 16.541822>,  <24.096710, 20.704651, 16.549129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.311134, 20.812212, 16.541822>,  <24.668507, 20.991480, 16.529644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.311134, 20.812212, 16.541822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441468, -0.863502, 0.243866,
		-0.083001, 0.231319, 0.969331,
		-0.893430, -0.448169, 0.030448,
		24.043106, 20.677761, 16.550957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.738165, 20.477699, 17.057228>,  <24.668507, 20.991480, 16.529644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.738165, 20.477699, 17.057228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.400095, 20.371002, 16.871958>,  <24.197254, 20.306984, 16.760796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.400095, 20.371002, 16.871958>,  <24.738165, 20.477699, 17.057228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.400095, 20.371002, 16.871958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237780, -0.963737, 0.121129,
		-0.478687, -0.007759, 0.877951,
		-0.845174, -0.266742, -0.463173,
		24.146544, 20.290979, 16.733006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.433006, 19.894680, 17.449474>,  <24.738165, 20.477699, 17.057228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.433006, 19.894680, 17.449474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.256607, 19.861315, 17.092024>,  <24.150768, 19.841295, 16.877554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.256607, 19.861315, 17.092024>,  <24.433006, 19.894680, 17.449474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.256607, 19.861315, 17.092024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260326, -0.964756, -0.038418,
		-0.858926, -0.249576, 0.447168,
		-0.440996, -0.083411, -0.893625,
		24.124308, 19.836292, 16.823936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.087795, 19.210215, 17.463127>,  <24.433006, 19.894680, 17.449474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.087795, 19.210215, 17.463127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.158812, 19.336939, 17.090437>,  <24.201422, 19.412973, 16.866823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.158812, 19.336939, 17.090437>,  <24.087795, 19.210215, 17.463127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.158812, 19.336939, 17.090437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208309, -0.937411, -0.279049,
		-0.961815, -0.144544, -0.232421,
		0.177539, 0.316809, -0.931725,
		24.212074, 19.431982, 16.810919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.733627, 18.679251, 17.018566>,  <24.087795, 19.210215, 17.463127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.733627, 18.679251, 17.018566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.985802, 18.874573, 16.777201>,  <24.137106, 18.991766, 16.632381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.985802, 18.874573, 16.777201>,  <23.733627, 18.679251, 17.018566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.985802, 18.874573, 16.777201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184214, -0.849263, -0.494790,
		-0.754067, 0.200775, -0.625358,
		0.630435, 0.488304, -0.603416,
		24.174932, 19.021065, 16.596176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.598780, 18.548716, 16.314299>,  <23.733627, 18.679251, 17.018566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.598780, 18.548716, 16.314299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.988211, 18.633511, 16.348249>,  <24.221870, 18.684387, 16.368620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.988211, 18.633511, 16.348249>,  <23.598780, 18.548716, 16.314299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.988211, 18.633511, 16.348249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225251, -0.830519, -0.509411,
		-0.037497, 0.515071, -0.856327,
		0.973579, 0.211990, 0.084879,
		24.280285, 18.697107, 16.373713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.887917, 18.355257, 15.668509>,  <23.598780, 18.548716, 16.314299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.887917, 18.355257, 15.668509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.223682, 18.390295, 15.883064>,  <24.425142, 18.411318, 16.011797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.223682, 18.390295, 15.883064>,  <23.887917, 18.355257, 15.668509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.223682, 18.390295, 15.883064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406999, -0.755374, -0.513577,
		0.360187, 0.649413, -0.669722,
		0.839415, 0.087593, 0.536386,
		24.475508, 18.416573, 16.043980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.449738, 18.314096, 15.143652>,  <23.887917, 18.355257, 15.668509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.449738, 18.314096, 15.143652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.597584, 18.239479, 15.507759>,  <24.686291, 18.194710, 15.726223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.597584, 18.239479, 15.507759>,  <24.449738, 18.314096, 15.143652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.597584, 18.239479, 15.507759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496239, -0.788606, -0.363108,
		0.785577, 0.585921, -0.198912,
		0.369616, -0.186541, 0.910267,
		24.708469, 18.183517, 15.780839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.071077, 18.056295, 14.990940>,  <24.449738, 18.314096, 15.143652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.071077, 18.056295, 14.990940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.015297, 17.939976, 15.369567>,  <24.981829, 17.870184, 15.596743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.015297, 17.939976, 15.369567>,  <25.071077, 18.056295, 14.990940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.015297, 17.939976, 15.369567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636186, -0.758838, -0.139400,
		0.758828, 0.582754, 0.290823,
		-0.139452, -0.290798, 0.946567,
		24.973461, 17.852736, 15.653537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.693701, 17.909159, 15.234534>,  <25.071077, 18.056295, 14.990940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.693701, 17.909159, 15.234534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.483957, 17.720806, 15.518313>,  <25.358110, 17.607794, 15.688581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.483957, 17.720806, 15.518313>,  <25.693701, 17.909159, 15.234534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.483957, 17.720806, 15.518313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668498, -0.743714, 0.000467,
		0.527407, 0.474510, 0.704757,
		-0.524359, -0.470882, 0.709449,
		25.326651, 17.579542, 15.731148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.037039, 17.657980, 15.853854>,  <25.693701, 17.909159, 15.234534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.037039, 17.657980, 15.853854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.710114, 17.427582, 15.859882>,  <25.513958, 17.289343, 15.863499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.710114, 17.427582, 15.859882>,  <26.037039, 17.657980, 15.853854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.710114, 17.427582, 15.859882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550620, -0.788475, -0.274088,
		0.169756, -0.215718, 0.961587,
		-0.817313, -0.575997, 0.015070,
		25.464920, 17.254784, 15.864403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.067507, 17.084211, 16.350981>,  <26.037039, 17.657980, 15.853854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.067507, 17.084211, 16.350981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.851877, 16.999187, 16.024982>,  <25.722500, 16.948174, 15.829384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.851877, 16.999187, 16.024982>,  <26.067507, 17.084211, 16.350981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.851877, 16.999187, 16.024982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588620, -0.787183, -0.184035,
		-0.602432, -0.578931, 0.549467,
		-0.539075, -0.212559, -0.814995,
		25.690155, 16.935419, 15.780484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.941397, 16.413422, 16.305012>,  <26.067507, 17.084211, 16.350981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.941397, 16.413422, 16.305012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.912668, 16.524662, 15.921866>,  <25.895432, 16.591406, 15.691979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.912668, 16.524662, 15.921866>,  <25.941397, 16.413422, 16.305012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.912668, 16.524662, 15.921866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621614, -0.738550, -0.261036,
		-0.780024, -0.614169, -0.119827,
		-0.071822, 0.278100, -0.957863,
		25.891121, 16.608091, 15.634507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.854475, 15.799098, 15.834948>,  <25.941397, 16.413422, 16.305012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.854475, 15.799098, 15.834948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.045876, 16.096790, 15.648547>,  <26.160717, 16.275406, 15.536707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.045876, 16.096790, 15.648547>,  <25.854475, 15.799098, 15.834948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.045876, 16.096790, 15.648547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583420, -0.666086, -0.464705,
		-0.656244, -0.049511, -0.752923,
		0.478504, 0.744230, -0.466000,
		26.189426, 16.320059, 15.508747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.319925, 15.198312, 15.825455>,  <25.854475, 15.799098, 15.834948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.319925, 15.198312, 15.825455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.711288, 15.171966, 15.747092>,  <26.946106, 15.156158, 15.700074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.711288, 15.171966, 15.747092>,  <26.319925, 15.198312, 15.825455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.711288, 15.171966, 15.747092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202471, -0.115070, -0.972504,
		0.041511, 0.991172, -0.125921,
		0.978408, -0.065865, -0.195907,
		27.004810, 15.152206, 15.688320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.610460, 15.734848, 15.375282>,  <26.319925, 15.198312, 15.825455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.610460, 15.734848, 15.375282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.775658, 15.371106, 15.355239>,  <26.874775, 15.152861, 15.343213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.775658, 15.371106, 15.355239>,  <26.610460, 15.734848, 15.375282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.775658, 15.371106, 15.355239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579717, -0.220054, -0.784541,
		0.702400, 0.353058, -0.618049,
		0.412993, -0.909355, -0.050108,
		26.899555, 15.098300, 15.340206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.952036, 15.636440, 14.730119>,  <26.610460, 15.734848, 15.375282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.952036, 15.636440, 14.730119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.827211, 15.283155, 14.870149>,  <26.752316, 15.071184, 14.954166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.827211, 15.283155, 14.870149>,  <26.952036, 15.636440, 14.730119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.827211, 15.283155, 14.870149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552422, -0.131098, -0.823191,
		0.772947, -0.450276, -0.446995,
		-0.312063, -0.883212, 0.350074,
		26.733593, 15.018191, 14.975171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<12.356536, 18.241745, 24.967060> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.080571, 18.138027, 24.696716>,  <11.914992, 18.075796, 24.534510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.080571, 18.138027, 24.696716>,  <12.356536, 18.241745, 24.967060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.080571, 18.138027, 24.696716> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715142, -0.099397, -0.691876,
		0.112221, -0.960670, 0.254008,
		-0.689912, -0.259295, -0.675861,
		11.873598, 18.060238, 24.493958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.598208, 17.603745, 24.704275>,  <12.356536, 18.241745, 24.967060>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.598208, 17.603745, 24.704275> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.334502, 17.703627, 24.420580>,  <12.176279, 17.763556, 24.250362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.334502, 17.703627, 24.420580>,  <12.598208, 17.603745, 24.704275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.334502, 17.703627, 24.420580> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639052, -0.310955, -0.703505,
		-0.396211, -0.917035, 0.045425,
		-0.659264, 0.249707, -0.709237,
		12.136723, 17.778538, 24.207809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.685649, 17.111437, 24.223471>,  <12.598208, 17.603745, 24.704275>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.685649, 17.111437, 24.223471> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.465069, 17.371204, 24.014030>,  <12.332721, 17.527065, 23.888367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.465069, 17.371204, 24.014030>,  <12.685649, 17.111437, 24.223471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.465069, 17.371204, 24.014030> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470954, -0.275713, -0.837965,
		-0.688553, -0.708688, -0.153804,
		-0.551450, 0.649418, -0.523602,
		12.299634, 17.566029, 23.856949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.390317, 16.701090, 23.650108>,  <12.685649, 17.111437, 24.223471>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.390317, 16.701090, 23.650108> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.401451, 17.086918, 23.545164>,  <12.408132, 17.318415, 23.482199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.401451, 17.086918, 23.545164>,  <12.390317, 16.701090, 23.650108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.401451, 17.086918, 23.545164> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372643, -0.253554, -0.892663,
		-0.927557, -0.072919, -0.366498,
		0.027835, 0.964569, -0.262358,
		12.409801, 17.376289, 23.466457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.047264, 16.771601, 23.022572>,  <12.390317, 16.701090, 23.650108>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.047264, 16.771601, 23.022572> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.265066, 17.106400, 23.044287>,  <12.395747, 17.307280, 23.057316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.265066, 17.106400, 23.044287>,  <12.047264, 16.771601, 23.022572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.265066, 17.106400, 23.044287> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331760, -0.155476, -0.930464,
		-0.770356, 0.524653, -0.362340,
		0.544506, 0.836999, 0.054287,
		12.428418, 17.357498, 23.060574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.804296, 17.249968, 22.495251>,  <12.047264, 16.771601, 23.022572>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.804296, 17.249968, 22.495251> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.177207, 17.375826, 22.566647>,  <12.400953, 17.451340, 22.609484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.177207, 17.375826, 22.566647>,  <11.804296, 17.249968, 22.495251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.177207, 17.375826, 22.566647> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238486, -0.163590, -0.957268,
		-0.272000, 0.935007, -0.227549,
		0.932277, 0.314644, 0.178489,
		12.456890, 17.470219, 22.620193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.923063, 17.632612, 21.889557>,  <11.804296, 17.249968, 22.495251>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.923063, 17.632612, 21.889557> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.269321, 17.545916, 22.070082>,  <12.477077, 17.493898, 22.178396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.269321, 17.545916, 22.070082>,  <11.923063, 17.632612, 21.889557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.269321, 17.545916, 22.070082> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435201, -0.119883, -0.892316,
		0.247506, 0.968840, -0.009451,
		0.865645, -0.216740, 0.451312,
		12.529015, 17.480894, 22.205475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.439694, 17.954191, 21.564068>,  <11.923063, 17.632612, 21.889557>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.439694, 17.954191, 21.564068> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.660604, 17.675270, 21.746830>,  <12.793151, 17.507917, 21.856487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.660604, 17.675270, 21.746830>,  <12.439694, 17.954191, 21.564068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.660604, 17.675270, 21.746830> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457858, -0.204311, -0.865230,
		0.696676, 0.687044, 0.206429,
		0.552275, -0.697301, 0.456907,
		12.826287, 17.466080, 21.883902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.130607, 18.123659, 21.357853>,  <12.439694, 17.954191, 21.564068>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.130607, 18.123659, 21.357853> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.152085, 17.745281, 21.485796>,  <13.164972, 17.518255, 21.562561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.152085, 17.745281, 21.485796>,  <13.130607, 18.123659, 21.357853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.152085, 17.745281, 21.485796> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692097, -0.195644, -0.694785,
		0.719805, 0.258678, 0.644179,
		0.053696, -0.945943, 0.319856,
		13.168194, 17.461498, 21.581753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.794312, 17.966026, 21.454807>,  <13.130607, 18.123659, 21.357853>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.794312, 17.966026, 21.454807> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.645992, 17.598391, 21.401461>,  <13.557000, 17.377810, 21.369452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.645992, 17.598391, 21.401461>,  <13.794312, 17.966026, 21.454807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.645992, 17.598391, 21.401461> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789438, -0.236284, -0.566531,
		0.489179, -0.315355, 0.813176,
		-0.370799, -0.919087, -0.133368,
		13.534753, 17.322664, 21.361450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.487221, 17.491478, 21.472876>,  <13.794312, 17.966026, 21.454807>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.487221, 17.491478, 21.472876> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.173064, 17.301428, 21.314173>,  <13.984571, 17.187397, 21.218950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.173064, 17.301428, 21.314173>,  <14.487221, 17.491478, 21.472876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.173064, 17.301428, 21.314173> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569892, -0.304819, -0.763091,
		0.241624, -0.825434, 0.510172,
		-0.785392, -0.475125, -0.396757,
		13.937447, 17.158890, 21.195145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.802341, 16.896568, 21.345716>,  <14.487221, 17.491478, 21.472876>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.802341, 16.896568, 21.345716> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.488935, 16.857918, 21.100191>,  <14.300891, 16.834728, 20.952875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.488935, 16.857918, 21.100191>,  <14.802341, 16.896568, 21.345716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.488935, 16.857918, 21.100191> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598670, -0.381969, -0.704055,
		-0.166429, -0.919110, 0.357124,
		-0.783515, -0.096625, -0.613815,
		14.253881, 16.828930, 20.916046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.754814, 16.174076, 21.144747>,  <14.802341, 16.896568, 21.345716>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.754814, 16.174076, 21.144747> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.587614, 16.396729, 20.857571>,  <14.487294, 16.530321, 20.685265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.587614, 16.396729, 20.857571>,  <14.754814, 16.174076, 21.144747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.587614, 16.396729, 20.857571> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520551, -0.500921, -0.691451,
		-0.744515, -0.662750, -0.080371,
		-0.417999, 0.556633, -0.717939,
		14.462214, 16.563719, 20.642189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.541492, 15.697739, 20.563725>,  <14.754814, 16.174076, 21.144747>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.541492, 15.697739, 20.563725> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.582446, 16.057325, 20.393370>,  <14.607018, 16.273077, 20.291157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.582446, 16.057325, 20.393370>,  <14.541492, 15.697739, 20.563725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.582446, 16.057325, 20.393370> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419720, -0.427198, -0.800835,
		-0.901860, -0.096759, -0.421053,
		0.102385, 0.898966, -0.425885,
		14.613162, 16.327015, 20.265604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.506864, 15.503782, 19.870203>,  <14.541492, 15.697739, 20.563725>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.506864, 15.503782, 19.870203> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.665567, 15.870911, 19.864727>,  <14.760790, 16.091188, 19.861441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.665567, 15.870911, 19.864727>,  <14.506864, 15.503782, 19.870203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.665567, 15.870911, 19.864727> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575877, -0.260502, -0.774923,
		-0.714806, 0.299574, -0.631908,
		0.396760, 0.917820, -0.013691,
		14.784595, 16.146257, 19.860620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.492937, 15.696946, 19.135523>,  <14.506864, 15.503782, 19.870203>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.492937, 15.696946, 19.135523> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.781669, 15.926517, 19.290220>,  <14.954907, 16.064260, 19.383039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.781669, 15.926517, 19.290220>,  <14.492937, 15.696946, 19.135523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.781669, 15.926517, 19.290220> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529871, -0.098831, -0.842300,
		-0.445197, 0.812920, -0.375446,
		0.721828, 0.573928, 0.386744,
		14.998218, 16.098696, 19.406244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.943513, 16.029949, 18.528469>,  <14.492937, 15.696946, 19.135523>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.943513, 16.029949, 18.528469> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.191169, 16.100660, 18.834518>,  <15.339763, 16.143087, 19.018148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.191169, 16.100660, 18.834518>,  <14.943513, 16.029949, 18.528469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.191169, 16.100660, 18.834518> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783565, -0.074705, -0.616802,
		-0.051878, 0.981412, -0.184770,
		0.619140, 0.176778, 0.765124,
		15.376911, 16.153694, 19.064056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.458552, 16.329205, 18.258434>,  <14.943513, 16.029949, 18.528469>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.458552, 16.329205, 18.258434> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.632698, 16.221628, 18.602093>,  <15.737185, 16.157084, 18.808287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.632698, 16.221628, 18.602093>,  <15.458552, 16.329205, 18.258434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.632698, 16.221628, 18.602093> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877389, -0.086962, -0.471833,
		0.201608, 0.959223, 0.198104,
		0.435365, -0.268940, 0.859144,
		15.763308, 16.140945, 18.859837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.081295, 16.814611, 18.311937>,  <15.458552, 16.329205, 18.258434>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.081295, 16.814611, 18.311937> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.123600, 16.469122, 18.509033>,  <16.148983, 16.261827, 18.627291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.123600, 16.469122, 18.509033>,  <16.081295, 16.814611, 18.311937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.123600, 16.469122, 18.509033> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902619, -0.124533, -0.412032,
		0.417245, 0.488336, 0.766443,
		0.105763, -0.863724, 0.492742,
		16.155329, 16.210005, 18.656857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.793646, 16.724546, 18.271740>,  <16.081295, 16.814611, 18.311937>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.793646, 16.724546, 18.271740> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.676746, 16.356071, 18.374504>,  <16.606607, 16.134987, 18.436163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.676746, 16.356071, 18.374504>,  <16.793646, 16.724546, 18.271740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.676746, 16.356071, 18.374504> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839720, -0.375737, -0.392035,
		0.457669, 0.101164, 0.883349,
		-0.292247, -0.921188, 0.256913,
		16.589071, 16.079716, 18.451578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.378380, 16.406109, 18.464291>,  <16.793646, 16.724546, 18.271740>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.378380, 16.406109, 18.464291> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.136578, 16.094986, 18.395491>,  <16.991495, 15.908312, 18.354210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.136578, 16.094986, 18.395491>,  <17.378380, 16.406109, 18.464291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.136578, 16.094986, 18.395491> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741111, -0.469959, -0.479471,
		0.292103, -0.417316, 0.860536,
		-0.604508, -0.777808, -0.172001,
		16.955225, 15.861644, 18.343891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.771000, 15.813393, 18.614321>,  <17.378380, 16.406109, 18.464291>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.771000, 15.813393, 18.614321> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.481337, 15.757178, 18.344255>,  <17.307539, 15.723450, 18.182217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.481337, 15.757178, 18.344255>,  <17.771000, 15.813393, 18.614321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.481337, 15.757178, 18.344255> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639169, -0.504389, -0.580564,
		-0.258953, -0.851963, 0.455085,
		-0.724159, -0.140537, -0.675162,
		17.264090, 15.715017, 18.141706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.326473, 15.510849, 19.083630>,  <17.771000, 15.813393, 18.614321>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.326473, 15.510849, 19.083630> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.700407, 15.628382, 19.163376>,  <18.924767, 15.698901, 19.211224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.700407, 15.628382, 19.163376>,  <18.326473, 15.510849, 19.083630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.700407, 15.628382, 19.163376> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302524, 0.365108, 0.880440,
		0.185912, -0.883379, 0.430207,
		0.934835, 0.293832, 0.199366,
		18.980858, 15.716532, 19.223186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.489124, 15.235198, 19.677853>,  <18.326473, 15.510849, 19.083630>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.489124, 15.235198, 19.677853> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.700541, 15.565188, 19.597792>,  <18.827391, 15.763183, 19.549755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.700541, 15.565188, 19.597792>,  <18.489124, 15.235198, 19.677853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.700541, 15.565188, 19.597792> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379364, 0.440462, 0.813680,
		0.759427, -0.354131, 0.545768,
		0.528539, 0.824975, -0.200154,
		18.859102, 15.812681, 19.537745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.000101, 15.421882, 20.230314>,  <18.489124, 15.235198, 19.677853>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.000101, 15.421882, 20.230314> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.889441, 15.773839, 20.075781>,  <18.823044, 15.985013, 19.983061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.889441, 15.773839, 20.075781>,  <19.000101, 15.421882, 20.230314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.889441, 15.773839, 20.075781> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271122, 0.314225, 0.909810,
		0.921932, 0.356442, 0.151628,
		-0.276649, 0.879893, -0.386334,
		18.806446, 16.037807, 19.959881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.058411, 15.826080, 20.775709>,  <19.000101, 15.421882, 20.230314>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.058411, 15.826080, 20.775709> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.863482, 16.058231, 20.514734>,  <18.746523, 16.197521, 20.358149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.863482, 16.058231, 20.514734>,  <19.058411, 15.826080, 20.775709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.863482, 16.058231, 20.514734> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538830, 0.388091, 0.747695,
		0.687151, 0.715924, 0.123599,
		-0.487325, 0.580378, -0.652438,
		18.717283, 16.232346, 20.319002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.988405, 16.417698, 21.106138>,  <19.058411, 15.826080, 20.775709>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.988405, 16.417698, 21.106138> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.704090, 16.491245, 20.834558>,  <18.533501, 16.535374, 20.671610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.704090, 16.491245, 20.834558>,  <18.988405, 16.417698, 21.106138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.704090, 16.491245, 20.834558> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577375, 0.398814, 0.712450,
		0.401772, 0.898409, -0.177311,
		-0.710786, 0.183867, -0.678952,
		18.490854, 16.546406, 20.630873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.640139, 17.005781, 21.303082>,  <18.988405, 16.417698, 21.106138>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.640139, 17.005781, 21.303082> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.366848, 16.879726, 21.039600>,  <18.202873, 16.804092, 20.881512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.366848, 16.879726, 21.039600>,  <18.640139, 17.005781, 21.303082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.366848, 16.879726, 21.039600> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724308, 0.406904, 0.556603,
		0.092622, 0.857390, -0.506265,
		-0.683227, -0.315138, -0.658702,
		18.161880, 16.785185, 20.841990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.133928, 17.485516, 21.121632>,  <18.640139, 17.005781, 21.303082>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.133928, 17.485516, 21.121632> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.946718, 17.133461, 21.089853>,  <17.834393, 16.922228, 21.070786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.946718, 17.133461, 21.089853>,  <18.133928, 17.485516, 21.121632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.946718, 17.133461, 21.089853> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710537, 0.321330, 0.626007,
		-0.525442, 0.349438, -0.775760,
		-0.468026, -0.880136, -0.079448,
		17.806311, 16.869421, 21.066019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.540905, 17.618202, 21.439262>,  <18.133928, 17.485516, 21.121632>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.540905, 17.618202, 21.439262> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.478266, 17.225628, 21.394962>,  <17.440683, 16.990084, 21.368382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.478266, 17.225628, 21.394962>,  <17.540905, 17.618202, 21.439262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.478266, 17.225628, 21.394962> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743320, 0.043275, 0.667535,
		-0.650349, 0.186857, -0.736296,
		-0.156597, -0.981434, -0.110750,
		17.431286, 16.931198, 21.361736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.842064, 17.671158, 21.452160>,  <17.540905, 17.618202, 21.439262>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.842064, 17.671158, 21.452160> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.944494, 17.292854, 21.532125>,  <17.005953, 17.065872, 21.580105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.944494, 17.292854, 21.532125>,  <16.842064, 17.671158, 21.452160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.944494, 17.292854, 21.532125> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681728, -0.030070, 0.730988,
		-0.685327, -0.323474, -0.652450,
		0.256075, -0.945759, 0.199914,
		17.021317, 17.009127, 21.592100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.175024, 17.335825, 21.636484>,  <16.842064, 17.671158, 21.452160>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.175024, 17.335825, 21.636484> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.439842, 17.063601, 21.762045>,  <16.598734, 16.900267, 21.837381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.439842, 17.063601, 21.762045>,  <16.175024, 17.335825, 21.636484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.439842, 17.063601, 21.762045> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525708, -0.123182, 0.841699,
		-0.534159, -0.722264, -0.439328,
		0.662046, -0.680559, 0.313901,
		16.638456, 16.859432, 21.856215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.782034, 16.650932, 21.733158>,  <16.175024, 17.335825, 21.636484>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.782034, 16.650932, 21.733158> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.096565, 16.656063, 21.980228>,  <16.285284, 16.659142, 22.128471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.096565, 16.656063, 21.980228>,  <15.782034, 16.650932, 21.733158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.096565, 16.656063, 21.980228> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607529, -0.165584, 0.776847,
		0.112243, -0.986112, -0.122410,
		0.786327, 0.012828, 0.617677,
		16.332464, 16.659912, 22.165531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.568198, 16.180674, 22.202652>,  <15.782034, 16.650932, 21.733158>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.568198, 16.180674, 22.202652> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.876492, 16.367523, 22.375978>,  <16.061468, 16.479633, 22.479975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.876492, 16.367523, 22.375978>,  <15.568198, 16.180674, 22.202652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.876492, 16.367523, 22.375978> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507426, 0.038705, 0.860826,
		0.385343, -0.883343, 0.266863,
		0.770733, 0.467126, 0.433317,
		16.107712, 16.507660, 22.505974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.764890, 15.800885, 22.824629>,  <15.568198, 16.180674, 22.202652>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.764890, 15.800885, 22.824629> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.914249, 16.166351, 22.888865>,  <16.003864, 16.385632, 22.927406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.914249, 16.166351, 22.888865>,  <15.764890, 15.800885, 22.824629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.914249, 16.166351, 22.888865> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400900, 0.002820, 0.916117,
		0.836572, -0.406458, 0.367341,
		0.373399, 0.913665, 0.160590,
		16.026270, 16.440451, 22.937042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.858831, 15.816103, 23.476566>,  <15.764890, 15.800885, 22.824629>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.858831, 15.816103, 23.476566> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.888387, 16.207277, 23.398405>,  <15.906120, 16.441982, 23.351507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.888387, 16.207277, 23.398405>,  <15.858831, 15.816103, 23.476566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.888387, 16.207277, 23.398405> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375544, 0.208801, 0.902978,
		0.923855, 0.006663, 0.382686,
		0.073889, 0.977935, -0.195404,
		15.910554, 16.500658, 23.339785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.070053, 16.182499, 24.054323>,  <15.858831, 15.816103, 23.476566>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.070053, 16.182499, 24.054323> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.869206, 16.460924, 23.849043>,  <15.748699, 16.627979, 23.725874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.869206, 16.460924, 23.849043>,  <16.070053, 16.182499, 24.054323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.869206, 16.460924, 23.849043> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525896, 0.225332, 0.820158,
		0.686523, 0.681704, 0.252915,
		-0.502115, 0.696064, -0.513201,
		15.718572, 16.669743, 23.695084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.970115, 16.729153, 24.576672>,  <16.070053, 16.182499, 24.054323>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.970115, 16.729153, 24.576672> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.708680, 16.790209, 24.280151>,  <15.551819, 16.826841, 24.102240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.708680, 16.790209, 24.280151>,  <15.970115, 16.729153, 24.576672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.708680, 16.790209, 24.280151> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634741, 0.422918, 0.646718,
		0.412224, 0.893219, -0.179528,
		-0.653587, 0.152639, -0.741300,
		15.512604, 16.836000, 24.057762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.685639, 17.351679, 24.806410>,  <15.970115, 16.729153, 24.576672>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.685639, 17.351679, 24.806410> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.430043, 17.225418, 24.525824>,  <15.276686, 17.149662, 24.357471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.430043, 17.225418, 24.525824>,  <15.685639, 17.351679, 24.806410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.430043, 17.225418, 24.525824> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765452, 0.351010, 0.539328,
		0.075981, 0.881564, -0.465909,
		-0.638991, -0.315653, -0.701465,
		15.238346, 17.130722, 24.315384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.067854, 18.004103, 24.553995>,  <15.685639, 17.351679, 24.806410>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.067854, 18.004103, 24.553995> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.932325, 17.635929, 24.476021>,  <14.851008, 17.415026, 24.429235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.932325, 17.635929, 24.476021>,  <15.067854, 18.004103, 24.553995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.932325, 17.635929, 24.476021> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848595, 0.209490, 0.485799,
		-0.406309, 0.330021, -0.852056,
		-0.338822, -0.920434, -0.194937,
		14.830679, 17.359798, 24.417540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<14.477031, 18.212217, 24.229990> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.481970, 17.838173, 24.371645>,  <14.484933, 17.613747, 24.456638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.481970, 17.838173, 24.371645>,  <14.477031, 18.212217, 24.229990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.481970, 17.838173, 24.371645> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784946, 0.210336, 0.582767,
		-0.619440, -0.285174, -0.731416,
		0.012347, -0.935112, 0.354137,
		14.485674, 17.557640, 24.477886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.784683, 18.145840, 24.410097>,  <14.477031, 18.212217, 24.229990>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.784683, 18.145840, 24.410097> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.980047, 17.849762, 24.594950>,  <14.097265, 17.672115, 24.705862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.980047, 17.849762, 24.594950>,  <13.784683, 18.145840, 24.410097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.980047, 17.849762, 24.594950> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676922, 0.012819, 0.735943,
		-0.550665, -0.672270, -0.494793,
		0.488410, -0.740195, 0.462133,
		14.126570, 17.627703, 24.733589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.305820, 17.576042, 24.700096>,  <13.784683, 18.145840, 24.410097>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.305820, 17.576042, 24.700096> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.634397, 17.510624, 24.918633>,  <13.831542, 17.471373, 25.049755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.634397, 17.510624, 24.918633>,  <13.305820, 17.576042, 24.700096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.634397, 17.510624, 24.918633> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518082, 0.186448, 0.834762,
		-0.238387, -0.968757, 0.068425,
		0.821439, -0.163547, 0.546342,
		13.880829, 17.461559, 25.082535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.143455, 17.122557, 25.191351>,  <13.305820, 17.576042, 24.700096>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.143455, 17.122557, 25.191351> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.475982, 17.294397, 25.332405>,  <13.675498, 17.397503, 25.417038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.475982, 17.294397, 25.332405>,  <13.143455, 17.122557, 25.191351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.475982, 17.294397, 25.332405> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483209, 0.245144, 0.840484,
		0.274638, -0.869101, 0.411385,
		0.831314, 0.429613, 0.352632,
		13.725377, 17.423279, 25.438196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.189738, 16.965824, 25.894857>,  <13.143455, 17.122557, 25.191351>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.189738, 16.965824, 25.894857> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.428527, 17.285208, 25.863651>,  <13.571800, 17.476839, 25.844929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.428527, 17.285208, 25.863651>,  <13.189738, 16.965824, 25.894857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.428527, 17.285208, 25.863651> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374147, 0.363106, 0.853328,
		0.709676, -0.480223, 0.515505,
		0.596971, 0.798461, -0.078013,
		13.607618, 17.524746, 25.840248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.518754, 17.003138, 26.549959>,  <13.189738, 16.965824, 25.894857>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.518754, 17.003138, 26.549959> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.544233, 17.368177, 26.388414>,  <13.559521, 17.587202, 26.291489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.544233, 17.368177, 26.388414>,  <13.518754, 17.003138, 26.549959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.544233, 17.368177, 26.388414> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183191, 0.408498, 0.894187,
		0.981011, 0.017025, 0.193201,
		0.063699, 0.912600, -0.403860,
		13.563343, 17.641958, 26.267256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.768670, 17.367689, 27.077188>,  <13.518754, 17.003138, 26.549959>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.768670, 17.367689, 27.077188> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.641273, 17.663343, 26.839790>,  <13.564835, 17.840736, 26.697351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.641273, 17.663343, 26.839790>,  <13.768670, 17.367689, 27.077188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.641273, 17.663343, 26.839790> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349845, 0.490247, 0.798290,
		0.881006, 0.461882, 0.102443,
		-0.318493, 0.739137, -0.593497,
		13.545725, 17.885084, 26.661741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.003327, 18.005995, 27.255190>,  <13.768670, 17.367689, 27.077188>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.003327, 18.005995, 27.255190> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.670725, 18.102266, 27.054922>,  <13.471164, 18.160028, 26.934761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.670725, 18.102266, 27.054922>,  <14.003327, 18.005995, 27.255190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.670725, 18.102266, 27.054922> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389379, 0.390300, 0.834296,
		0.396210, 0.888673, -0.230822,
		-0.831506, 0.240679, -0.500672,
		13.421273, 18.174471, 26.904720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.975148, 18.701828, 27.372303>,  <14.003327, 18.005995, 27.255190>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.975148, 18.701828, 27.372303> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.615630, 18.552242, 27.280809>,  <13.399920, 18.462490, 27.225914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.615630, 18.552242, 27.280809>,  <13.975148, 18.701828, 27.372303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.615630, 18.552242, 27.280809> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362002, 0.338901, 0.868390,
		-0.247228, 0.863306, -0.439978,
		-0.898795, -0.373964, -0.228733,
		13.345991, 18.440054, 27.212189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.526988, 19.201872, 27.649929>,  <13.975148, 18.701828, 27.372303>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.526988, 19.201872, 27.649929> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.288311, 18.898983, 27.543669>,  <13.145104, 18.717249, 27.479914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.288311, 18.898983, 27.543669>,  <13.526988, 19.201872, 27.649929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.288311, 18.898983, 27.543669> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706591, 0.338863, 0.621209,
		-0.380376, 0.558376, -0.737245,
		-0.596693, -0.757224, -0.265649,
		13.109303, 18.671816, 27.463974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.831195, 19.562603, 27.644754>,  <13.526988, 19.201872, 27.649929>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.831195, 19.562603, 27.644754> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.820495, 19.170624, 27.723730>,  <12.814075, 18.935436, 27.771114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.820495, 19.170624, 27.723730>,  <12.831195, 19.562603, 27.644754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.820495, 19.170624, 27.723730> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499140, 0.184219, 0.846713,
		-0.866108, -0.075898, -0.494061,
		-0.026752, -0.979951, 0.197437,
		12.812469, 18.876638, 27.782961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.169822, 19.376717, 27.953272>,  <12.831195, 19.562603, 27.644754>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.169822, 19.376717, 27.953272> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.415256, 19.083927, 28.071747>,  <12.562516, 18.908253, 28.142832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.415256, 19.083927, 28.071747>,  <12.169822, 19.376717, 27.953272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.415256, 19.083927, 28.071747> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473777, -0.041190, 0.879681,
		-0.631704, -0.680086, -0.372066,
		0.613585, -0.731974, 0.296189,
		12.599331, 18.864336, 28.160604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.756007, 18.836468, 28.386175>,  <12.169822, 19.376717, 27.953272>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.756007, 18.836468, 28.386175> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.138431, 18.781080, 28.489542>,  <12.367885, 18.747849, 28.551561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.138431, 18.781080, 28.489542>,  <11.756007, 18.836468, 28.386175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.138431, 18.781080, 28.489542> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242105, 0.124216, 0.962266,
		-0.165344, -0.982546, 0.085233,
		0.956058, -0.138469, 0.258417,
		12.425248, 18.739540, 28.567068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.686147, 18.447325, 29.122890>,  <11.756007, 18.836468, 28.386175>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.686147, 18.447325, 29.122890> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.063545, 18.570955, 29.075081>,  <12.289984, 18.645134, 29.046394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.063545, 18.570955, 29.075081>,  <11.686147, 18.447325, 29.122890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.063545, 18.570955, 29.075081> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104315, 0.065339, 0.992396,
		0.314538, -0.948789, 0.029405,
		0.943496, 0.309079, -0.119525,
		12.346594, 18.663679, 29.039223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.070262, 18.004030, 29.488413>,  <11.686147, 18.447325, 29.122890>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.070262, 18.004030, 29.488413> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.286423, 18.340557, 29.493343>,  <12.416119, 18.542473, 29.496302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.286423, 18.340557, 29.493343>,  <12.070262, 18.004030, 29.488413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.286423, 18.340557, 29.493343> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103844, 0.052148, 0.993226,
		0.834975, -0.538020, 0.115547,
		0.540400, 0.841317, 0.012328,
		12.448543, 18.592953, 29.497042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.659317, 17.921143, 29.917009>,  <12.070262, 18.004030, 29.488413>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.659317, 17.921143, 29.917009> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.637563, 18.320499, 29.910616>,  <12.624510, 18.560114, 29.906780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.637563, 18.320499, 29.910616>,  <12.659317, 17.921143, 29.917009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.637563, 18.320499, 29.910616> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018705, 0.017024, 0.999680,
		0.998345, 0.054069, -0.019601,
		-0.054385, 0.998392, -0.015985,
		12.621247, 18.620018, 29.905821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.082766, 18.124859, 30.439684>,  <12.659317, 17.921143, 29.917009>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.082766, 18.124859, 30.439684> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.872754, 18.454088, 30.353065>,  <12.746747, 18.651627, 30.301094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.872754, 18.454088, 30.353065>,  <13.082766, 18.124859, 30.439684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.872754, 18.454088, 30.353065> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048199, 0.225270, 0.973103,
		0.849718, 0.521345, -0.078602,
		-0.525029, 0.823075, -0.216545,
		12.715245, 18.701012, 30.288101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.445371, 18.693321, 30.838869>,  <13.082766, 18.124859, 30.439684>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.445371, 18.693321, 30.838869> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.065623, 18.787182, 30.755308>,  <12.837775, 18.843498, 30.705172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.065623, 18.787182, 30.755308>,  <13.445371, 18.693321, 30.838869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.065623, 18.787182, 30.755308> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168613, 0.180498, 0.969015,
		0.265088, 0.955175, -0.131794,
		-0.949367, 0.234652, -0.208902,
		12.780813, 18.857578, 30.692636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.177166, 19.385849, 31.306561>,  <13.445371, 18.693321, 30.838869>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.177166, 19.385849, 31.306561> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.827134, 19.220589, 31.205730>,  <12.617115, 19.121433, 31.145231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.827134, 19.220589, 31.205730>,  <13.177166, 19.385849, 31.306561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.827134, 19.220589, 31.205730> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293281, 0.038355, 0.955257,
		-0.384997, 0.909854, -0.154733,
		-0.875079, -0.413151, -0.252077,
		12.564610, 19.096643, 31.130108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.567159, 19.765720, 31.641865>,  <13.177166, 19.385849, 31.306561>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.567159, 19.765720, 31.641865> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.445628, 19.396236, 31.548525>,  <12.372710, 19.174547, 31.492521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.445628, 19.396236, 31.548525>,  <12.567159, 19.765720, 31.641865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.445628, 19.396236, 31.548525> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207832, -0.174770, 0.962425,
		-0.929783, 0.340907, -0.138877,
		-0.303825, -0.923709, -0.233350,
		12.354481, 19.119123, 31.478519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.878937, 19.834028, 31.964708>,  <12.567159, 19.765720, 31.641865>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.878937, 19.834028, 31.964708> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.963551, 19.447653, 31.905085>,  <12.014318, 19.215828, 31.869310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.963551, 19.447653, 31.905085>,  <11.878937, 19.834028, 31.964708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.963551, 19.447653, 31.905085> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333813, -0.214743, 0.917853,
		-0.918598, -0.144399, -0.367868,
		0.211534, -0.965937, -0.149060,
		12.027011, 19.157871, 31.860367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.230854, 19.303415, 31.973120>,  <11.878937, 19.834028, 31.964708>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.230854, 19.303415, 31.973120> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.572443, 19.122761, 32.076469>,  <11.777396, 19.014368, 32.138481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.572443, 19.122761, 32.076469>,  <11.230854, 19.303415, 31.973120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.572443, 19.122761, 32.076469> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366406, -0.169409, 0.914903,
		-0.369432, -0.875971, -0.310153,
		0.853971, -0.451636, 0.258376,
		11.828634, 18.987270, 32.153984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.537695, 19.746885, 31.691931>,  <11.230854, 19.303415, 31.973120>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.537695, 19.746885, 31.691931> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.322870, 19.827032, 32.019691>,  <10.193975, 19.875120, 32.216347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.322870, 19.827032, 32.019691>,  <10.537695, 19.746885, 31.691931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.322870, 19.827032, 32.019691> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255281, -0.964436, 0.068515,
		0.803988, -0.172380, 0.569112,
		-0.537061, 0.200369, 0.819401,
		10.161752, 19.887142, 32.265511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.766165, 19.612318, 31.810797>,  <10.537695, 19.746885, 31.691931>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.766165, 19.612318, 31.810797> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.475760, 19.345600, 31.878077>,  <9.301518, 19.185570, 31.918444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.475760, 19.345600, 31.878077>,  <9.766165, 19.612318, 31.810797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.475760, 19.345600, 31.878077> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273041, -0.503986, -0.819418,
		0.631156, -0.548980, 0.547962,
		-0.726010, -0.666797, 0.168200,
		9.257957, 19.145561, 31.928537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.970768, 18.924686, 31.587530>,  <9.766165, 19.612318, 31.810797>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.970768, 18.924686, 31.587530> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.571024, 18.914322, 31.597412>,  <9.331178, 18.908104, 31.603340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.571024, 18.914322, 31.597412>,  <9.970768, 18.924686, 31.587530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.571024, 18.914322, 31.597412> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000585, -0.678159, -0.734916,
		0.035794, -0.734459, 0.677709,
		-0.999359, -0.025909, 0.024703,
		9.271216, 18.906549, 31.604822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.688191, 18.195738, 31.616402>,  <9.970768, 18.924686, 31.587530>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.688191, 18.195738, 31.616402> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.405792, 18.433229, 31.461973>,  <9.236353, 18.575726, 31.369316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.405792, 18.433229, 31.461973>,  <9.688191, 18.195738, 31.616402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.405792, 18.433229, 31.461973> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139619, -0.651120, -0.746023,
		-0.694319, -0.472785, 0.542583,
		-0.705994, 0.593732, -0.386075,
		9.193993, 18.611349, 31.346151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.257067, 17.786238, 31.234585>,  <9.688191, 18.195738, 31.616402>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.257067, 17.786238, 31.234585> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.133301, 18.126719, 31.065012>,  <9.059041, 18.331007, 30.963268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.133301, 18.126719, 31.065012>,  <9.257067, 17.786238, 31.234585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.133301, 18.126719, 31.065012> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138654, -0.481427, -0.865450,
		-0.940765, -0.209003, 0.266983,
		-0.309414, 0.851203, -0.423930,
		9.040477, 18.382080, 30.937834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.547098, 17.671936, 30.902670>,  <9.257067, 17.786238, 31.234585>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.547098, 17.671936, 30.902670> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.722702, 17.973375, 30.706972>,  <8.828065, 18.154240, 30.589554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.722702, 17.973375, 30.706972>,  <8.547098, 17.671936, 30.902670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.722702, 17.973375, 30.706972> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022995, -0.534920, -0.844590,
		-0.898188, 0.382034, -0.217506,
		0.439011, 0.753599, -0.489243,
		8.854405, 18.199455, 30.560200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.449450, 17.499863, 30.180931>,  <8.547098, 17.671936, 30.902670>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.449450, 17.499863, 30.180931> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.709861, 17.800661, 30.139626>,  <8.866108, 17.981140, 30.114841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.709861, 17.800661, 30.139626>,  <8.449450, 17.499863, 30.180931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.709861, 17.800661, 30.139626> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229213, -0.324459, -0.917708,
		-0.723618, 0.573784, -0.383599,
		0.651029, 0.751996, -0.103266,
		8.905169, 18.026260, 30.108646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.247582, 17.721020, 29.550686>,  <8.449450, 17.499863, 30.180931>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.247582, 17.721020, 29.550686> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.621877, 17.851503, 29.604332>,  <8.846454, 17.929792, 29.636520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.621877, 17.851503, 29.604332>,  <8.247582, 17.721020, 29.550686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.621877, 17.851503, 29.604332> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193316, -0.156304, -0.968606,
		-0.295004, 0.932286, -0.209321,
		0.935736, 0.326208, 0.134116,
		8.902597, 17.949366, 29.644567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.424537, 18.327106, 29.176094>,  <8.247582, 17.721020, 29.550686>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.424537, 18.327106, 29.176094> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.753863, 18.108799, 29.238434>,  <8.951459, 17.977816, 29.275839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.753863, 18.108799, 29.238434>,  <8.424537, 18.327106, 29.176094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.753863, 18.108799, 29.238434> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197991, 0.018821, -0.980023,
		0.531931, 0.837725, 0.123553,
		0.823316, -0.545767, 0.155851,
		9.000858, 17.945068, 29.285189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.851646, 18.498569, 28.750834>,  <8.424537, 18.327106, 29.176094>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.851646, 18.498569, 28.750834> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.062657, 18.175465, 28.856087>,  <9.189263, 17.981602, 28.919239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.062657, 18.175465, 28.856087>,  <8.851646, 18.498569, 28.750834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.062657, 18.175465, 28.856087> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332083, -0.089025, -0.939040,
		0.781944, 0.582751, 0.221280,
		0.527526, -0.807760, 0.263134,
		9.220915, 17.933136, 28.935026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.408281, 18.604166, 28.327660>,  <8.851646, 18.498569, 28.750834>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.408281, 18.604166, 28.327660> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.421178, 18.221554, 28.443598>,  <9.428916, 17.991987, 28.513161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.421178, 18.221554, 28.443598>,  <9.408281, 18.604166, 28.327660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.421178, 18.221554, 28.443598> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408588, -0.252043, -0.877228,
		0.912149, 0.146710, 0.382701,
		0.032241, -0.956530, 0.289845,
		9.430850, 17.934595, 28.530552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.191815, 18.469015, 28.383472>,  <9.408281, 18.604166, 28.327660>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.191815, 18.469015, 28.383472> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.020514, 18.107662, 28.374521>,  <9.917734, 17.890850, 28.369150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.020514, 18.107662, 28.374521>,  <10.191815, 18.469015, 28.383472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.020514, 18.107662, 28.374521> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617079, -0.274258, -0.737561,
		0.660161, -0.329673, 0.674910,
		-0.428253, -0.903382, -0.022379,
		9.892038, 17.836647, 28.367807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.769328, 18.010637, 28.340052>,  <10.191815, 18.469015, 28.383472>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.769328, 18.010637, 28.340052> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.447912, 17.819054, 28.198675>,  <10.255063, 17.704103, 28.113850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.447912, 17.819054, 28.198675>,  <10.769328, 18.010637, 28.340052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.447912, 17.819054, 28.198675> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516633, -0.266241, -0.813761,
		0.295659, -0.836488, 0.461382,
		-0.803540, -0.478961, -0.353441,
		10.206850, 17.675365, 28.092644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.039410, 17.324272, 28.034826>,  <10.769328, 18.010637, 28.340052>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.039410, 17.324272, 28.034826> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.682374, 17.389839, 27.866819>,  <10.468153, 17.429178, 27.766014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.682374, 17.389839, 27.866819>,  <11.039410, 17.324272, 28.034826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.682374, 17.389839, 27.866819> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424661, -0.007351, -0.905322,
		-0.151487, -0.986446, -0.063049,
		-0.892589, 0.163919, -0.420019,
		10.414598, 17.439014, 27.740814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.026223, 16.888643, 27.374847>,  <11.039410, 17.324272, 28.034826>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.026223, 16.888643, 27.374847> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.763061, 17.183781, 27.314516>,  <10.605164, 17.360863, 27.278318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.763061, 17.183781, 27.314516>,  <11.026223, 16.888643, 27.374847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.763061, 17.183781, 27.314516> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408021, 0.180890, -0.894873,
		-0.632992, -0.650283, -0.420063,
		-0.657906, 0.737842, -0.150827,
		10.565689, 17.405134, 27.269268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.828922, 16.749559, 26.668047>,  <11.026223, 16.888643, 27.374847>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.828922, 16.749559, 26.668047> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.714965, 17.130560, 26.711086>,  <10.646590, 17.359159, 26.736910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.714965, 17.130560, 26.711086>,  <10.828922, 16.749559, 26.668047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.714965, 17.130560, 26.711086> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227989, 0.176361, -0.957559,
		-0.931052, -0.248270, -0.267403,
		-0.284893, 0.952501, 0.107598,
		10.629498, 17.416311, 26.743366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.327640, 16.908049, 26.098289>,  <10.828922, 16.749559, 26.668047>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.327640, 16.908049, 26.098289> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.489470, 17.249029, 26.230738>,  <10.586569, 17.453617, 26.310207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.489470, 17.249029, 26.230738>,  <10.327640, 16.908049, 26.098289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.489470, 17.249029, 26.230738> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018373, 0.369580, -0.929017,
		-0.914319, 0.369776, 0.165186,
		0.404578, 0.852453, 0.331120,
		10.610844, 17.504765, 26.330074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.996643, 17.475506, 25.742889>,  <10.327640, 16.908049, 26.098289>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.996643, 17.475506, 25.742889> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.337943, 17.624617, 25.888765>,  <10.542724, 17.714083, 25.976292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.337943, 17.624617, 25.888765>,  <9.996643, 17.475506, 25.742889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.337943, 17.624617, 25.888765> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201882, 0.408679, -0.890070,
		-0.480840, 0.833078, 0.273449,
		0.853251, 0.372777, 0.364692,
		10.593919, 17.736450, 25.998173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.101356, 18.120432, 25.401630>,  <9.996643, 17.475506, 25.742889>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.101356, 18.120432, 25.401630> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.463564, 18.012619, 25.532707>,  <10.680889, 17.947931, 25.611353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.463564, 18.012619, 25.532707>,  <10.101356, 18.120432, 25.401630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.463564, 18.012619, 25.532707> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394414, 0.249980, -0.884278,
		0.156426, 0.929979, 0.332670,
		0.905521, -0.269534, 0.327694,
		10.735220, 17.931759, 25.631016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.479967, 18.593975, 25.071896>,  <10.101356, 18.120432, 25.401630>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.479967, 18.593975, 25.071896> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.758713, 18.340826, 25.206865>,  <10.925961, 18.188936, 25.287848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.758713, 18.340826, 25.206865>,  <10.479967, 18.593975, 25.071896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.758713, 18.340826, 25.206865> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561975, 0.189521, -0.805150,
		0.445607, 0.750704, 0.487728,
		0.696864, -0.632871, 0.337425,
		10.967772, 18.150965, 25.308092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.039510, 18.875771, 24.942219>,  <10.479967, 18.593975, 25.071896>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.039510, 18.875771, 24.942219> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.152799, 18.495043, 24.989256>,  <11.220772, 18.266607, 25.017479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.152799, 18.495043, 24.989256>,  <11.039510, 18.875771, 24.942219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.152799, 18.495043, 24.989256> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661436, 0.105071, -0.742605,
		0.694469, 0.288103, 0.659325,
		0.283223, -0.951818, 0.117594,
		11.237765, 18.209497, 25.024534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.766878, 18.856009, 24.955688>,  <11.039510, 18.875771, 24.942219>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.766878, 18.856009, 24.955688> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.665805, 18.496290, 24.812906>,  <11.605161, 18.280458, 24.727236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.665805, 18.496290, 24.812906>,  <11.766878, 18.856009, 24.955688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.665805, 18.496290, 24.812906> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764541, 0.040526, -0.643300,
		0.592983, -0.435460, 0.677308,
		-0.252683, -0.899296, -0.356958,
		11.590000, 18.226501, 24.705818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<17.370630, 25.112232, 11.485870> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.030895, 24.969082, 11.641073>,  <16.827053, 24.883192, 11.734195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.030895, 24.969082, 11.641073>,  <17.370630, 25.112232, 11.485870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.030895, 24.969082, 11.641073> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527754, -0.561924, 0.636959,
		-0.009920, 0.745766, 0.666134,
		-0.849339, -0.357873, 0.388007,
		16.776093, 24.861719, 11.757475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.935167, 24.682919, 11.504684>,  <17.370630, 25.112232, 11.485870>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.935167, 24.682919, 11.504684> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.075605, 25.051834, 11.569321>,  <18.159868, 25.273184, 11.608103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.075605, 25.051834, 11.569321>,  <17.935167, 24.682919, 11.504684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.075605, 25.051834, 11.569321> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657476, -0.365709, 0.658773,
		0.666675, -0.125051, -0.734783,
		0.351097, 0.922290, 0.161591,
		18.180935, 25.328522, 11.617798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.721508, 24.785612, 11.343523>,  <17.935167, 24.682919, 11.504684>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.721508, 24.785612, 11.343523> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.558861, 24.978228, 11.654079>,  <18.461271, 25.093796, 11.840413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.558861, 24.978228, 11.654079>,  <18.721508, 24.785612, 11.343523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.558861, 24.978228, 11.654079> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537373, -0.561202, 0.629510,
		0.738844, 0.673182, -0.030569,
		-0.406619, 0.481537, 0.776391,
		18.436874, 25.122688, 11.886996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.201258, 25.179369, 11.770162>,  <18.721508, 24.785612, 11.343523>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.201258, 25.179369, 11.770162> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.893909, 25.047520, 11.989599>,  <18.709499, 24.968410, 12.121262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.893909, 25.047520, 11.989599>,  <19.201258, 25.179369, 11.770162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.893909, 25.047520, 11.989599> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639329, -0.434665, 0.634291,
		0.029379, 0.838103, 0.544721,
		-0.768372, -0.329621, 0.548593,
		18.663399, 24.948633, 12.154177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.395147, 25.385214, 12.429364>,  <19.201258, 25.179369, 11.770162>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.395147, 25.385214, 12.429364> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.151556, 25.068310, 12.444707>,  <19.005402, 24.878168, 12.453913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.151556, 25.068310, 12.444707>,  <19.395147, 25.385214, 12.429364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.151556, 25.068310, 12.444707> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626123, -0.450463, 0.636438,
		-0.486946, 0.411592, 0.770374,
		-0.608977, -0.792260, 0.038356,
		18.968863, 24.830631, 12.456214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.170027, 25.222050, 13.110877>,  <19.395147, 25.385214, 12.429364>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.170027, 25.222050, 13.110877> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.145271, 24.872295, 12.918371>,  <19.130417, 24.662443, 12.802868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.145271, 24.872295, 12.918371>,  <19.170027, 25.222050, 13.110877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.145271, 24.872295, 12.918371> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558517, -0.429965, 0.709358,
		-0.827181, -0.224892, 0.514972,
		-0.061891, -0.874388, -0.481265,
		19.126703, 24.609980, 12.773992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.050304, 24.693998, 13.692850>,  <19.170027, 25.222050, 13.110877>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.050304, 24.693998, 13.692850> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.220226, 24.540689, 13.364791>,  <19.322180, 24.448704, 13.167955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.220226, 24.540689, 13.364791>,  <19.050304, 24.693998, 13.692850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.220226, 24.540689, 13.364791> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673137, -0.472052, 0.569257,
		-0.605333, -0.793895, 0.057466,
		0.424803, -0.383273, -0.820149,
		19.347668, 24.425709, 13.118746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.121883, 23.917830, 13.883621>,  <19.050304, 24.693998, 13.692850>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.121883, 23.917830, 13.883621> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.374228, 23.968281, 13.577391>,  <19.525635, 23.998552, 13.393652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.374228, 23.968281, 13.577391>,  <19.121883, 23.917830, 13.883621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.374228, 23.968281, 13.577391> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693280, -0.534680, 0.483197,
		-0.348393, -0.835589, -0.424751,
		0.630860, 0.126129, -0.765576,
		19.563486, 24.006119, 13.347718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.416279, 23.276073, 13.623523>,  <19.121883, 23.917830, 13.883621>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.416279, 23.276073, 13.623523> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.665522, 23.583471, 13.565348>,  <19.815067, 23.767910, 13.530443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.665522, 23.583471, 13.565348>,  <19.416279, 23.276073, 13.623523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.665522, 23.583471, 13.565348> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750997, -0.535916, 0.385744,
		0.218501, -0.349582, -0.911071,
		0.623106, 0.768496, -0.145437,
		19.852453, 23.814020, 13.521717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.968815, 23.194687, 13.019564>,  <19.416279, 23.276073, 13.623523>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.968815, 23.194687, 13.019564> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.077496, 23.408613, 13.339602>,  <20.142704, 23.536968, 13.531624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.077496, 23.408613, 13.339602>,  <19.968815, 23.194687, 13.019564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.077496, 23.408613, 13.339602> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705215, -0.676360, 0.212625,
		0.654867, 0.506469, -0.560927,
		0.271701, 0.534815, 0.800095,
		20.159006, 23.569057, 13.579630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.735817, 23.437202, 12.977612>,  <19.968815, 23.194687, 13.019564>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.735817, 23.437202, 12.977612> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.613182, 23.395790, 13.356090>,  <20.539600, 23.370943, 13.583177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.613182, 23.395790, 13.356090>,  <20.735817, 23.437202, 12.977612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.613182, 23.395790, 13.356090> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698029, -0.700278, 0.149552,
		0.647116, 0.706322, 0.286966,
		-0.306588, -0.103533, 0.946195,
		20.521206, 23.364731, 13.639948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.238253, 23.185221, 13.301345>,  <20.735817, 23.437202, 12.977612>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.238253, 23.185221, 13.301345> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.997118, 23.142467, 13.617614>,  <20.852436, 23.116816, 13.807375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.997118, 23.142467, 13.617614>,  <21.238253, 23.185221, 13.301345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.997118, 23.142467, 13.617614> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597984, -0.716585, 0.359055,
		0.528206, 0.689261, 0.495900,
		-0.602838, -0.106885, 0.790672,
		20.816267, 23.110401, 13.854815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.595720, 23.324892, 13.876914>,  <21.238253, 23.185221, 13.301345>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.595720, 23.324892, 13.876914> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.286354, 23.102545, 13.998794>,  <21.100735, 22.969137, 14.071921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.286354, 23.102545, 13.998794>,  <21.595720, 23.324892, 13.876914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.286354, 23.102545, 13.998794> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630949, -0.628710, 0.454563,
		-0.061110, 0.543814, 0.836978,
		-0.773414, -0.555868, 0.304698,
		21.054329, 22.935783, 14.090203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.822550, 23.054579, 14.602300>,  <21.595720, 23.324892, 13.876914>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.822550, 23.054579, 14.602300> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.513912, 22.818396, 14.507640>,  <21.328730, 22.676685, 14.450844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.513912, 22.818396, 14.507640>,  <21.822550, 23.054579, 14.602300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.513912, 22.818396, 14.507640> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447707, -0.768356, 0.457370,
		-0.451889, 0.246953, 0.857211,
		-0.771592, -0.590460, -0.236649,
		21.282434, 22.641258, 14.436646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.785093, 22.603527, 15.147299>,  <21.822550, 23.054579, 14.602300>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.785093, 22.603527, 15.147299> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.597399, 22.410263, 14.851630>,  <21.484783, 22.294304, 14.674229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.597399, 22.410263, 14.851630>,  <21.785093, 22.603527, 15.147299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.597399, 22.410263, 14.851630> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234259, -0.875161, 0.423339,
		-0.851435, 0.025488, 0.523841,
		-0.469235, -0.483160, -0.739172,
		21.456629, 22.265316, 14.629879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.530457, 21.964319, 15.447750>,  <21.785093, 22.603527, 15.147299>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.530457, 21.964319, 15.447750> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.512554, 21.896624, 15.053926>,  <21.501814, 21.856007, 14.817633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.512554, 21.896624, 15.053926>,  <21.530457, 21.964319, 15.447750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.512554, 21.896624, 15.053926> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378444, -0.914964, 0.140073,
		-0.924541, -0.366332, 0.104996,
		-0.044754, -0.169238, -0.984558,
		21.499128, 21.845852, 14.758559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.111612, 21.358130, 15.445549>,  <21.530457, 21.964319, 15.447750>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.111612, 21.358130, 15.445549> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.303535, 21.352791, 15.094640>,  <21.418690, 21.349588, 14.884094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.303535, 21.352791, 15.094640>,  <21.111612, 21.358130, 15.445549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.303535, 21.352791, 15.094640> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152994, -0.983292, 0.098637,
		-0.863931, -0.181544, -0.469750,
		0.479808, -0.013346, -0.877272,
		21.447477, 21.348787, 14.831458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.730772, 20.982449, 14.948971>,  <21.111612, 21.358130, 15.445549>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.730772, 20.982449, 14.948971> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.102274, 20.985834, 14.800731>,  <21.325174, 20.987865, 14.711786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.102274, 20.985834, 14.800731>,  <20.730772, 20.982449, 14.948971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.102274, 20.985834, 14.800731> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018233, -0.997487, -0.068468,
		-0.370248, 0.070347, -0.926265,
		0.928754, 0.008462, -0.370600,
		21.380899, 20.988373, 14.689550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.738493, 20.641104, 14.365151>,  <20.730772, 20.982449, 14.948971>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.738493, 20.641104, 14.365151> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.128996, 20.614500, 14.447612>,  <21.363298, 20.598537, 14.497087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.128996, 20.614500, 14.447612>,  <20.738493, 20.641104, 14.365151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.128996, 20.614500, 14.447612> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049461, -0.994999, -0.086779,
		0.210891, 0.074523, -0.974665,
		0.976257, -0.066508, 0.206150,
		21.421873, 20.594547, 14.509457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.932430, 20.014200, 14.136708>,  <20.738493, 20.641104, 14.365151>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.932430, 20.014200, 14.136708> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.278522, 20.088821, 14.322859>,  <21.486177, 20.133595, 14.434549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.278522, 20.088821, 14.322859>,  <20.932430, 20.014200, 14.136708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.278522, 20.088821, 14.322859> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125835, -0.979290, 0.158608,
		0.485327, -0.078671, -0.870786,
		0.865230, 0.186552, 0.465377,
		21.538092, 20.144787, 14.462472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.443665, 19.620876, 13.805880>,  <20.932430, 20.014200, 14.136708>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.443665, 19.620876, 13.805880> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.588226, 19.701502, 14.170024>,  <21.674963, 19.749878, 14.388511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.588226, 19.701502, 14.170024>,  <21.443665, 19.620876, 13.805880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.588226, 19.701502, 14.170024> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333396, -0.939742, 0.075713,
		0.870766, 0.276148, -0.406829,
		0.361406, 0.201563, 0.910361,
		21.696648, 19.761971, 14.443132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.093590, 19.281509, 13.828584>,  <21.443665, 19.620876, 13.805880>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.093590, 19.281509, 13.828584> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.021505, 19.357586, 14.214610>,  <21.978254, 19.403231, 14.446226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.021505, 19.357586, 14.214610>,  <22.093590, 19.281509, 13.828584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.021505, 19.357586, 14.214610> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298671, -0.924226, 0.237914,
		0.937187, 0.331111, 0.109751,
		-0.180210, 0.190190, 0.965066,
		21.967442, 19.414642, 14.504129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.737457, 19.151495, 14.146492>,  <22.093590, 19.281509, 13.828584>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.737457, 19.151495, 14.146492> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.461388, 19.130226, 14.435167>,  <22.295746, 19.117464, 14.608373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.461388, 19.130226, 14.435167>,  <22.737457, 19.151495, 14.146492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.461388, 19.130226, 14.435167> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304308, -0.926156, 0.222782,
		0.656550, 0.373374, 0.655388,
		-0.690173, -0.053172, 0.721689,
		22.254335, 19.114275, 14.651674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.051062, 19.021441, 14.758190>,  <22.737457, 19.151495, 14.146492>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.051062, 19.021441, 14.758190> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.683512, 18.900530, 14.859616>,  <22.462982, 18.827984, 14.920472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.683512, 18.900530, 14.859616>,  <23.051062, 19.021441, 14.758190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.683512, 18.900530, 14.859616> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394069, -0.671597, 0.627429,
		-0.019363, 0.676452, 0.736232,
		-0.918877, -0.302275, 0.253565,
		22.407848, 18.809847, 14.935686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.104778, 18.927359, 15.490454>,  <23.051062, 19.021441, 14.758190>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.104778, 18.927359, 15.490454> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.795671, 18.725071, 15.337049>,  <22.610209, 18.603699, 15.245007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.795671, 18.725071, 15.337049>,  <23.104778, 18.927359, 15.490454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.795671, 18.725071, 15.337049> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180414, -0.754349, 0.631195,
		-0.608509, 0.418576, 0.674174,
		-0.772766, -0.505718, -0.383512,
		22.563841, 18.573355, 15.221996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.745071, 18.643169, 16.058641>,  <23.104778, 18.927359, 15.490454>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.745071, 18.643169, 16.058641> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.596905, 18.404734, 15.773695>,  <22.508005, 18.261671, 15.602727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.596905, 18.404734, 15.773695>,  <22.745071, 18.643169, 16.058641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.596905, 18.404734, 15.773695> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077990, -0.784173, 0.615622,
		-0.925586, 0.172479, 0.336960,
		-0.370417, -0.596090, -0.712368,
		22.485781, 18.225906, 15.559984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.180250, 18.243965, 16.341574>,  <22.745071, 18.643169, 16.058641>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.180250, 18.243965, 16.341574> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.262875, 18.031130, 16.013132>,  <22.312450, 17.903429, 15.816067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.262875, 18.031130, 16.013132>,  <22.180250, 18.243965, 16.341574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.262875, 18.031130, 16.013132> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101284, -0.823067, 0.558840,
		-0.973177, -0.198600, -0.116122,
		0.206562, -0.532089, -0.821105,
		22.324842, 17.871504, 15.766801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.942812, 17.600903, 16.467840>,  <22.180250, 18.243965, 16.341574>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.942812, 17.600903, 16.467840> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.222792, 17.527401, 16.191780>,  <22.390779, 17.483299, 16.026144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.222792, 17.527401, 16.191780>,  <21.942812, 17.600903, 16.467840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.222792, 17.527401, 16.191780> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290055, -0.809913, 0.509813,
		-0.652642, -0.557024, -0.513598,
		0.699947, -0.183754, -0.690151,
		22.432775, 17.472275, 15.984735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.794422, 16.812822, 16.240421>,  <21.942812, 17.600903, 16.467840>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.794422, 16.812822, 16.240421> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.157969, 16.897741, 16.096817>,  <22.376097, 16.948692, 16.010654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.157969, 16.897741, 16.096817>,  <21.794422, 16.812822, 16.240421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.157969, 16.897741, 16.096817> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313678, -0.915235, 0.252885,
		-0.274891, -0.342453, -0.898422,
		0.908868, 0.212299, -0.359009,
		22.430630, 16.961432, 15.989114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.115068, 16.211700, 15.854161>,  <21.794422, 16.812822, 16.240421>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.115068, 16.211700, 15.854161> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.435629, 16.428280, 15.955820>,  <22.627966, 16.558228, 16.016815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.435629, 16.428280, 15.955820>,  <22.115068, 16.211700, 15.854161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.435629, 16.428280, 15.955820> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506505, -0.840331, 0.193122,
		0.318133, -0.026041, -0.947688,
		0.801402, 0.541447, 0.254147,
		22.676050, 16.590714, 16.032064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.620434, 15.829353, 15.689935>,  <22.115068, 16.211700, 15.854161>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.620434, 15.829353, 15.689935> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.843140, 16.061598, 15.927557>,  <22.976763, 16.200945, 16.070131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.843140, 16.061598, 15.927557>,  <22.620434, 15.829353, 15.689935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.843140, 16.061598, 15.927557> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446527, -0.812234, 0.375353,
		0.700447, 0.056278, -0.711482,
		0.556765, 0.580611, 0.594056,
		23.010170, 16.235781, 16.105774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.435339, 15.735049, 15.592783>,  <22.620434, 15.829353, 15.689935>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.435339, 15.735049, 15.592783> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.333059, 15.867363, 15.956144>,  <23.271690, 15.946752, 16.174162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.333059, 15.867363, 15.956144>,  <23.435339, 15.735049, 15.592783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.333059, 15.867363, 15.956144> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472505, -0.777003, 0.415939,
		0.843419, 0.535582, 0.042383,
		-0.255701, 0.330785, 0.908404,
		23.256350, 15.966599, 16.228666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.934586, 15.936175, 16.176735>,  <23.435339, 15.735049, 15.592783>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.934586, 15.936175, 16.176735> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.628420, 15.750996, 16.355541>,  <23.444721, 15.639888, 16.462824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.628420, 15.750996, 16.355541>,  <23.934586, 15.936175, 16.176735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.628420, 15.750996, 16.355541> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643464, -0.561256, 0.520525,
		0.009913, 0.686053, 0.727484,
		-0.765412, -0.462949, 0.447014,
		23.398796, 15.612111, 16.489645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.299965, 16.602667, 15.942267>,  <23.934586, 15.936175, 16.176735>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.299965, 16.602667, 15.942267> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.655407, 16.785831, 15.952821>,  <24.868673, 16.895731, 15.959152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.655407, 16.785831, 15.952821>,  <24.299965, 16.602667, 15.942267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.655407, 16.785831, 15.952821> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406407, 0.759385, 0.508103,
		0.212631, -0.462225, 0.860892,
		0.888606, 0.457912, 0.026383,
		24.921989, 16.923204, 15.960735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.504152, 16.938463, 16.541485>,  <24.299965, 16.602667, 15.942267>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.504152, 16.938463, 16.541485> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.769249, 17.128353, 16.309828>,  <24.928307, 17.242287, 16.170834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.769249, 17.128353, 16.309828>,  <24.504152, 16.938463, 16.541485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.769249, 17.128353, 16.309828> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377498, 0.879719, 0.289119,
		0.646735, 0.027014, 0.762236,
		0.662743, 0.474726, -0.579143,
		24.968071, 17.270771, 16.136086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.654545, 17.594965, 16.983671>,  <24.504152, 16.938463, 16.541485>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.654545, 17.594965, 16.983671> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.804131, 17.650015, 16.616800>,  <24.893881, 17.683044, 16.396679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.804131, 17.650015, 16.616800>,  <24.654545, 17.594965, 16.983671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.804131, 17.650015, 16.616800> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014544, 0.989678, 0.142573,
		0.927329, -0.039978, 0.372105,
		0.373964, 0.137624, -0.917176,
		24.916319, 17.691301, 16.341648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.269112, 18.081728, 16.989538>,  <24.654545, 17.594965, 16.983671>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.269112, 18.081728, 16.989538> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.119461, 18.109468, 16.619625>,  <25.029671, 18.126114, 16.397678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.119461, 18.109468, 16.619625>,  <25.269112, 18.081728, 16.989538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.119461, 18.109468, 16.619625> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156102, 0.978262, 0.136515,
		0.914146, 0.195434, -0.355167,
		-0.374126, 0.069353, -0.924781,
		25.007223, 18.130274, 16.342190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.549139, 18.692326, 16.804222>,  <25.269112, 18.081728, 16.989538>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.549139, 18.692326, 16.804222> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.235466, 18.613514, 16.568855>,  <25.047262, 18.566227, 16.427635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.235466, 18.613514, 16.568855>,  <25.549139, 18.692326, 16.804222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.235466, 18.613514, 16.568855> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351766, 0.922320, 0.159960,
		0.511192, 0.332423, -0.792576,
		-0.784183, -0.197031, -0.588418,
		25.000212, 18.554405, 16.392330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.478525, 19.183224, 16.245136>,  <25.549139, 18.692326, 16.804222>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.478525, 19.183224, 16.245136> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.116278, 19.019386, 16.289122>,  <24.898930, 18.921083, 16.315514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.116278, 19.019386, 16.289122>,  <25.478525, 19.183224, 16.245136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.116278, 19.019386, 16.289122> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401156, 0.911456, 0.091222,
		-0.137592, 0.038499, -0.989740,
		-0.905617, -0.409592, 0.109964,
		24.844593, 18.896509, 16.322111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.015480, 19.481722, 15.757645>,  <25.478525, 19.183224, 16.245136>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.015480, 19.481722, 15.757645> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.740156, 19.322166, 16.000006>,  <24.574963, 19.226433, 16.145422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.740156, 19.322166, 16.000006>,  <25.015480, 19.481722, 15.757645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.740156, 19.322166, 16.000006> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514995, 0.856939, -0.020879,
		-0.510893, -0.326408, -0.795265,
		-0.688308, -0.398891, 0.605903,
		24.533663, 19.202499, 16.181776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.417048, 19.754499, 15.548597>,  <25.015480, 19.481722, 15.757645>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.417048, 19.754499, 15.548597> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.352955, 19.654493, 15.930554>,  <24.314499, 19.594490, 16.159729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.352955, 19.654493, 15.930554>,  <24.417048, 19.754499, 15.548597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.352955, 19.654493, 15.930554> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533440, 0.835890, 0.129345,
		-0.830523, -0.488652, -0.267304,
		-0.160232, -0.250014, 0.954892,
		24.304886, 19.579489, 16.217022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.784407, 19.830320, 15.588310>,  <24.417048, 19.754499, 15.548597>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.784407, 19.830320, 15.588310> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.917856, 19.850586, 15.964848>,  <23.997927, 19.862745, 16.190769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.917856, 19.850586, 15.964848>,  <23.784407, 19.830320, 15.588310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.917856, 19.850586, 15.964848> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617216, 0.766512, 0.177494,
		-0.712559, -0.640229, 0.286997,
		0.333623, 0.050664, 0.941344,
		24.017942, 19.865786, 16.247252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.202238, 19.912399, 15.987542>,  <23.784407, 19.830320, 15.588310>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.202238, 19.912399, 15.987542> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.503206, 20.030563, 16.223032>,  <23.683786, 20.101461, 16.364326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.503206, 20.030563, 16.223032>,  <23.202238, 19.912399, 15.987542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.503206, 20.030563, 16.223032> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542628, 0.784657, 0.299780,
		-0.373389, -0.545019, 0.750689,
		0.752419, 0.295411, 0.588726,
		23.728931, 20.119186, 16.399651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.951309, 20.062626, 16.707632>,  <23.202238, 19.912399, 15.987542>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.951309, 20.062626, 16.707632> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.292702, 20.262457, 16.648314>,  <23.497538, 20.382355, 16.612722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.292702, 20.262457, 16.648314>,  <22.951309, 20.062626, 16.707632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.292702, 20.262457, 16.648314> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453139, 0.851992, 0.262250,
		0.257362, -0.156626, 0.953537,
		0.853481, 0.499578, -0.148297,
		23.548746, 20.412331, 16.603825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.791399, 20.550491, 17.168514>,  <22.951309, 20.062626, 16.707632>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.791399, 20.550491, 17.168514> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.118359, 20.669298, 16.971077>,  <23.314535, 20.740583, 16.852613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.118359, 20.669298, 16.971077>,  <22.791399, 20.550491, 17.168514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.118359, 20.669298, 16.971077> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177080, 0.944897, 0.275340,
		0.548178, -0.137658, 0.824956,
		0.817401, 0.297018, -0.493595,
		23.363579, 20.758404, 16.822998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.260105, 20.988941, 17.618532>,  <22.791399, 20.550491, 17.168514>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.260105, 20.988941, 17.618532> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.317434, 21.102747, 17.239374>,  <23.351831, 21.171030, 17.011879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.317434, 21.102747, 17.239374>,  <23.260105, 20.988941, 17.618532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.317434, 21.102747, 17.239374> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306174, 0.923546, 0.230914,
		0.941125, 0.257126, 0.219477,
		0.143323, 0.284517, -0.947897,
		23.360432, 21.188103, 16.955006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.702496, 21.642773, 17.664158>,  <23.260105, 20.988941, 17.618532>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.702496, 21.642773, 17.664158> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.528322, 21.658802, 17.304426>,  <23.423819, 21.668419, 17.088587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.528322, 21.658802, 17.304426>,  <23.702496, 21.642773, 17.664158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.528322, 21.658802, 17.304426> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386641, 0.893849, 0.227031,
		0.812963, 0.446574, -0.373716,
		-0.435432, 0.040074, -0.899329,
		23.397694, 21.670824, 17.034628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.975294, 22.243744, 17.311552>,  <23.702496, 21.642773, 17.664158>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.975294, 22.243744, 17.311552> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.626909, 22.158186, 17.134611>,  <23.417879, 22.106852, 17.028446>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.626909, 22.158186, 17.134611>,  <23.975294, 22.243744, 17.311552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.626909, 22.158186, 17.134611> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328616, 0.922875, 0.200781,
		0.365290, 0.320236, -0.874078,
		-0.870962, -0.213893, -0.442352,
		23.365622, 22.094019, 17.001905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.914303, 22.817341, 16.931221>,  <23.975294, 22.243744, 17.311552>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.914303, 22.817341, 16.931221> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.550776, 22.650616, 16.924065>,  <23.332659, 22.550581, 16.919771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.550776, 22.650616, 16.924065>,  <23.914303, 22.817341, 16.931221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.550776, 22.650616, 16.924065> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416150, 0.902667, 0.109598,
		-0.029532, 0.107049, -0.993815,
		-0.908816, -0.416813, -0.017891,
		23.278131, 22.525572, 16.918697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.488804, 23.289246, 16.579247>,  <23.914303, 22.817341, 16.931221>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.488804, 23.289246, 16.579247> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.201340, 23.073486, 16.754782>,  <23.028862, 22.944031, 16.860102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.201340, 23.073486, 16.754782>,  <23.488804, 23.289246, 16.579247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.201340, 23.073486, 16.754782> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565259, 0.820718, 0.083095,
		-0.404982, -0.188339, -0.894717,
		-0.718660, -0.539398, 0.438836,
		22.985743, 22.911667, 16.886433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.937771, 23.540171, 16.254946>,  <23.488804, 23.289246, 16.579247>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.937771, 23.540171, 16.254946> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.805716, 23.369989, 16.591991>,  <22.726482, 23.267881, 16.794218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.805716, 23.369989, 16.591991>,  <22.937771, 23.540171, 16.254946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.805716, 23.369989, 16.591991> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588277, 0.790841, 0.168821,
		-0.738199, -0.439956, -0.511372,
		-0.330140, -0.425451, 0.842614,
		22.706673, 23.242353, 16.844776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.213482, 23.315588, 16.274805>,  <22.937771, 23.540171, 16.254946>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.213482, 23.315588, 16.274805> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.383001, 23.494362, 16.589930>,  <22.484713, 23.601625, 16.779003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.383001, 23.494362, 16.589930>,  <22.213482, 23.315588, 16.274805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.383001, 23.494362, 16.589930> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541035, 0.822473, -0.175554,
		-0.726413, -0.351833, 0.590370,
		0.423798, 0.446935, 0.787810,
		22.510141, 23.628443, 16.826273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<17.100664, 17.227245, 23.113749> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.827921, 16.993502, 22.937754>,  <16.664274, 16.853254, 22.832157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.827921, 16.993502, 22.937754>,  <17.100664, 17.227245, 23.113749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.827921, 16.993502, 22.937754> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644051, -0.194439, -0.739859,
		0.346794, -0.787855, 0.508938,
		-0.681859, -0.584361, -0.439989,
		16.623363, 16.818193, 22.805758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.470549, 16.666035, 22.864325>,  <17.100664, 17.227245, 23.113749>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.470549, 16.666035, 22.864325> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.131393, 16.675217, 22.652454>,  <16.927900, 16.680725, 22.525331>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.131393, 16.675217, 22.652454>,  <17.470549, 16.666035, 22.864325>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.131393, 16.675217, 22.652454> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529322, -0.020001, -0.848185,
		-0.030082, -0.999536, 0.004796,
		-0.847888, 0.022976, -0.529678,
		16.877028, 16.682104, 22.493551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.521469, 16.148926, 22.387600>,  <17.470549, 16.666035, 22.864325>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.521469, 16.148926, 22.387600> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.240641, 16.369131, 22.206923>,  <17.072144, 16.501255, 22.098516>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.240641, 16.369131, 22.206923>,  <17.521469, 16.148926, 22.387600>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.240641, 16.369131, 22.206923> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452666, -0.144645, -0.879870,
		-0.549718, -0.822198, -0.147649,
		-0.702071, 0.550516, -0.451695,
		17.030020, 16.534286, 22.071413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.209660, 15.731158, 21.889965>,  <17.521469, 16.148926, 22.387600>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.209660, 15.731158, 21.889965> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.163542, 16.117737, 21.798151>,  <17.135870, 16.349684, 21.743063>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.163542, 16.117737, 21.798151>,  <17.209660, 15.731158, 21.889965>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.163542, 16.117737, 21.798151> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647934, -0.101981, -0.754838,
		-0.752920, -0.235754, -0.614436,
		-0.115295, 0.966447, -0.229537,
		17.128954, 16.407671, 21.729290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.169865, 15.683854, 21.203547>,  <17.209660, 15.731158, 21.889965>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.169865, 15.683854, 21.203547> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.257759, 16.072412, 21.239561>,  <17.310495, 16.305548, 21.261169>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.257759, 16.072412, 21.239561>,  <17.169865, 15.683854, 21.203547>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.257759, 16.072412, 21.239561> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498638, -0.032509, -0.866200,
		-0.838496, 0.235232, -0.491518,
		0.219737, 0.971395, 0.090037,
		17.323681, 16.363831, 21.266573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.912783, 16.008259, 20.675797>,  <17.169865, 15.683854, 21.203547>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.912783, 16.008259, 20.675797> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.211136, 16.234022, 20.817278>,  <17.390148, 16.369480, 20.902166>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.211136, 16.234022, 20.817278>,  <16.912783, 16.008259, 20.675797>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.211136, 16.234022, 20.817278> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475372, -0.079110, -0.876221,
		-0.466566, 0.821696, -0.327310,
		0.745881, 0.564409, 0.353701,
		17.434900, 16.403345, 20.923388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.251045, 16.170567, 20.110744>,  <16.912783, 16.008259, 20.675797>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.251045, 16.170567, 20.110744> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.524622, 16.351162, 20.339962>,  <17.688768, 16.459518, 20.477493>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.524622, 16.351162, 20.339962>,  <17.251045, 16.170567, 20.110744>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.524622, 16.351162, 20.339962> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626639, 0.038637, -0.778352,
		-0.373557, 0.891440, -0.256495,
		0.683944, 0.451489, 0.573044,
		17.729805, 16.486609, 20.511875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.609886, 16.605986, 19.692825>,  <17.251045, 16.170567, 20.110744>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.609886, 16.605986, 19.692825> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.873625, 16.563131, 19.990494>,  <18.031868, 16.537418, 20.169094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.873625, 16.563131, 19.990494>,  <17.609886, 16.605986, 19.692825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.873625, 16.563131, 19.990494> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738045, -0.096516, -0.667813,
		0.143370, 0.989549, 0.015433,
		0.659344, -0.107134, 0.744169,
		18.071428, 16.530991, 20.213745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.114492, 16.973427, 19.472492>,  <17.609886, 16.605986, 19.692825>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.114492, 16.973427, 19.472492> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.266441, 16.713087, 19.735428>,  <18.357611, 16.556883, 19.893188>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.266441, 16.713087, 19.735428>,  <18.114492, 16.973427, 19.472492>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.266441, 16.713087, 19.735428> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830220, -0.073514, -0.552567,
		0.407961, 0.755639, 0.512423,
		0.379871, -0.650849, 0.657338,
		18.380404, 16.517832, 19.932629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.876909, 17.213470, 19.439672>,  <18.114492, 16.973427, 19.472492>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.876909, 17.213470, 19.439672> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.833937, 16.837395, 19.568979>,  <18.808153, 16.611750, 19.646563>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.833937, 16.837395, 19.568979>,  <18.876909, 17.213470, 19.439672>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.833937, 16.837395, 19.568979> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754500, -0.288839, -0.589323,
		0.647447, 0.180594, 0.740404,
		-0.107429, -0.940190, 0.323266,
		18.801708, 16.555338, 19.665958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.579552, 16.879255, 19.277901>,  <18.876909, 17.213470, 19.439672>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.579552, 16.879255, 19.277901> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.351555, 16.557579, 19.345289>,  <19.214756, 16.364573, 19.385723>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.351555, 16.557579, 19.345289>,  <19.579552, 16.879255, 19.277901>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.351555, 16.557579, 19.345289> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684046, -0.578041, -0.444915,
		0.455180, -0.138356, 0.879584,
		-0.569993, -0.804193, 0.168471,
		19.180557, 16.316320, 19.395830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.157701, 16.323256, 19.312557>,  <19.579552, 16.879255, 19.277901>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.157701, 16.323256, 19.312557> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.810545, 16.125544, 19.292759>,  <19.602251, 16.006916, 19.280880>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.810545, 16.125544, 19.292759>,  <20.157701, 16.323256, 19.312557>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.810545, 16.125544, 19.292759> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442118, -0.723161, -0.530631,
		0.226487, -0.482414, 0.846156,
		-0.867891, -0.494282, -0.049497,
		19.550179, 15.977259, 19.277910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.252392, 15.572058, 19.704584>,  <20.157701, 16.323256, 19.312557>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.252392, 15.572058, 19.704584> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.965219, 15.582096, 19.426319>,  <19.792915, 15.588119, 19.259359>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.965219, 15.582096, 19.426319>,  <20.252392, 15.572058, 19.704584>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.965219, 15.582096, 19.426319> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357845, -0.843892, -0.399741,
		-0.597095, -0.535925, 0.596876,
		-0.717931, 0.025095, -0.695662,
		19.749840, 15.589624, 19.217621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.946566, 15.401351, 19.374500>,  <20.252392, 15.572058, 19.704584>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.946566, 15.401351, 19.374500> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.865410, 15.130136, 19.091911>,  <20.816717, 14.967408, 18.922358>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.865410, 15.130136, 19.091911>,  <20.946566, 15.401351, 19.374500>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.865410, 15.130136, 19.091911> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806088, 0.293961, -0.513624,
		0.555931, -0.673687, 0.486915,
		-0.202888, -0.678036, -0.706473,
		20.804543, 14.926726, 18.879969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.668663, 15.046479, 19.241394>,  <20.946566, 15.401351, 19.374500>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.668663, 15.046479, 19.241394> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.990314, 14.834730, 19.133215>,  <22.183306, 14.707681, 19.068308>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.990314, 14.834730, 19.133215>,  <21.668663, 15.046479, 19.241394>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.990314, 14.834730, 19.133215> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080470, -0.547699, 0.832797,
		-0.588983, -0.647913, -0.483019,
		0.804129, -0.529372, -0.270448,
		22.231554, 14.675919, 19.052080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.459278, 14.374750, 19.311781>,  <21.668663, 15.046479, 19.241394>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.459278, 14.374750, 19.311781> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.857965, 14.356007, 19.338184>,  <22.097178, 14.344760, 19.354027>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.857965, 14.356007, 19.338184>,  <21.459278, 14.374750, 19.311781>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.857965, 14.356007, 19.338184> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080932, -0.593387, 0.800839,
		0.001641, -0.803553, -0.595232,
		0.996718, -0.046859, 0.066006,
		22.156981, 14.341949, 19.357986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.618996, 13.701890, 19.237476>,  <21.459278, 14.374750, 19.311781>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.618996, 13.701890, 19.237476> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.928284, 13.858624, 19.436914>,  <22.113857, 13.952663, 19.556578>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.928284, 13.858624, 19.436914>,  <21.618996, 13.701890, 19.237476>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.928284, 13.858624, 19.436914> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140189, -0.661181, 0.737012,
		0.618448, -0.639770, -0.456307,
		0.773220, 0.391834, 0.498595,
		22.160250, 13.976173, 19.586493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.929497, 13.161774, 19.687778>,  <21.618996, 13.701890, 19.237476>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.929497, 13.161774, 19.687778> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.058165, 13.501149, 19.855911>,  <22.135366, 13.704775, 19.956791>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.058165, 13.501149, 19.855911>,  <21.929497, 13.161774, 19.687778>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.058165, 13.501149, 19.855911> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224828, -0.362786, 0.904344,
		0.919772, -0.385404, 0.074055,
		0.321672, 0.848440, 0.420330,
		22.154667, 13.755681, 19.982010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.229939, 12.950991, 20.374966>,  <21.929497, 13.161774, 19.687778>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.229939, 12.950991, 20.374966> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.118410, 13.334646, 20.394201>,  <22.051493, 13.564839, 20.405743>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.118410, 13.334646, 20.394201>,  <22.229939, 12.950991, 20.374966>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.118410, 13.334646, 20.394201> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444635, -0.173317, 0.878784,
		0.851210, 0.223640, 0.474791,
		-0.278821, 0.959138, 0.048091,
		22.034763, 13.622388, 20.408628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.303782, 12.965897, 21.050941>,  <22.229939, 12.950991, 20.374966>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.303782, 12.965897, 21.050941> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.075510, 13.260633, 20.905949>,  <21.938547, 13.437475, 20.818953>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.075510, 13.260633, 20.905949>,  <22.303782, 12.965897, 21.050941>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.075510, 13.260633, 20.905949> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607587, -0.081929, 0.790016,
		0.552419, 0.671083, 0.494450,
		-0.570676, 0.736841, -0.362482,
		21.904306, 13.481686, 20.797205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.078691, 13.276991, 21.624699>,  <22.303782, 12.965897, 21.050941>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.078691, 13.276991, 21.624699> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.837887, 13.434186, 21.346664>,  <21.693403, 13.528503, 21.179844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.837887, 13.434186, 21.346664>,  <22.078691, 13.276991, 21.624699>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.837887, 13.434186, 21.346664> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711455, 0.131207, 0.690374,
		0.362509, 0.910135, 0.200605,
		-0.602013, 0.392988, -0.695084,
		21.657284, 13.552082, 21.138140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.717583, 13.729875, 22.046604>,  <22.078691, 13.276991, 21.624699>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.717583, 13.729875, 22.046604> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.502022, 13.708617, 21.710327>,  <21.372684, 13.695863, 21.508562>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.502022, 13.708617, 21.710327>,  <21.717583, 13.729875, 22.046604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.502022, 13.708617, 21.710327> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838494, 0.129454, 0.529311,
		0.080701, 0.990160, -0.114324,
		-0.538902, -0.053144, -0.840690,
		21.340351, 13.692674, 21.458120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.336628, 14.404988, 22.080969>,  <21.717583, 13.729875, 22.046604>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.336628, 14.404988, 22.080969> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.183374, 14.096513, 21.877607>,  <21.091423, 13.911427, 21.755590>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.183374, 14.096513, 21.877607>,  <21.336628, 14.404988, 22.080969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.183374, 14.096513, 21.877607> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.904707, 0.202281, 0.374950,
		-0.186317, 0.603614, -0.775201,
		-0.383133, -0.771189, -0.508405,
		21.068434, 13.865156, 21.725086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.727411, 14.693548, 21.822378>,  <21.336628, 14.404988, 22.080969>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.727411, 14.693548, 21.822378> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.693106, 14.295026, 21.824142>,  <20.672523, 14.055912, 21.825201>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.693106, 14.295026, 21.824142>,  <20.727411, 14.693548, 21.822378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.693106, 14.295026, 21.824142> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.899434, 0.079327, 0.429797,
		-0.428559, 0.032892, -0.902915,
		-0.085763, -0.996306, 0.004413,
		20.667377, 13.996134, 21.825466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.159058, 14.599630, 21.583712>,  <20.727411, 14.693548, 21.822378>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.159058, 14.599630, 21.583712> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.202261, 14.252715, 21.778091>,  <20.228184, 14.044566, 21.894720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.202261, 14.252715, 21.778091>,  <20.159058, 14.599630, 21.583712>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.202261, 14.252715, 21.778091> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.927175, 0.088501, 0.364025,
		-0.358721, -0.489878, -0.794568,
		0.108008, -0.867287, 0.485950,
		20.234663, 13.992529, 21.923876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.559790, 14.318276, 21.509825>,  <20.159058, 14.599630, 21.583712>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.559790, 14.318276, 21.509825> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.704264, 14.119993, 21.825752>,  <19.790949, 14.001023, 22.015308>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.704264, 14.119993, 21.825752>,  <19.559790, 14.318276, 21.509825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.704264, 14.119993, 21.825752> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862795, 0.143651, 0.484716,
		-0.353737, -0.856526, -0.375811,
		0.361186, -0.495710, 0.789821,
		19.812620, 13.971280, 22.062698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.057697, 13.750839, 21.701891>,  <19.559790, 14.318276, 21.509825>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.057697, 13.750839, 21.701891> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.259954, 13.821793, 22.039616>,  <19.381310, 13.864365, 22.242250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.259954, 13.821793, 22.039616>,  <19.057697, 13.750839, 21.701891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.259954, 13.821793, 22.039616> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861371, 0.048632, 0.505644,
		0.048632, -0.982939, 0.177384,
		-0.505644, -0.177384, -0.844310,
		19.411648, 13.875008, 22.292908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.580360, 13.546625, 22.248087>,  <19.057697, 13.750839, 21.701891>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.580360, 13.546625, 22.248087> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.834978, 13.773898, 22.456694>,  <18.987749, 13.910262, 22.581858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.834978, 13.773898, 22.456694>,  <18.580360, 13.546625, 22.248087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.834978, 13.773898, 22.456694> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750519, 0.300654, 0.588496,
		0.177574, -0.766015, 0.617809,
		0.636544, 0.568180, 0.521521,
		19.025942, 13.944353, 22.613150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.189920, 12.906775, 22.306438>,  <18.580360, 13.546625, 22.248087>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.189920, 12.906775, 22.306438> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.834192, 12.853663, 22.131405>,  <17.620756, 12.821796, 22.026384>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.834192, 12.853663, 22.131405>,  <18.189920, 12.906775, 22.306438>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.834192, 12.853663, 22.131405> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449723, -0.080650, -0.889520,
		0.082821, -0.987858, 0.131439,
		-0.889320, -0.132782, -0.437583,
		17.567396, 12.813829, 22.000130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.290081, 12.429084, 21.837654>,  <18.189920, 12.906775, 22.306438>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.290081, 12.429084, 21.837654> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.943775, 12.590283, 21.718967>,  <17.735991, 12.687003, 21.647755>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.943775, 12.590283, 21.718967>,  <18.290081, 12.429084, 21.837654>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.943775, 12.590283, 21.718967> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246573, -0.172440, -0.953660,
		-0.435491, -0.898808, 0.049923,
		-0.865766, 0.403000, -0.296718,
		17.684046, 12.711184, 21.629951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.107832, 12.029984, 21.232853>,  <18.290081, 12.429084, 21.837654>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.107832, 12.029984, 21.232853> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.876591, 12.354912, 21.202049>,  <17.737846, 12.549869, 21.183567>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.876591, 12.354912, 21.202049>,  <18.107832, 12.029984, 21.232853>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.876591, 12.354912, 21.202049> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181181, 0.035773, -0.982799,
		-0.795593, -0.582113, -0.167857,
		-0.578105, 0.812321, -0.077007,
		17.703159, 12.598608, 21.178947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.626041, 11.835519, 20.810717>,  <18.107832, 12.029984, 21.232853>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.626041, 11.835519, 20.810717> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.623482, 12.234379, 20.780642>,  <17.621946, 12.473695, 20.762596>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.623482, 12.234379, 20.780642>,  <17.626041, 11.835519, 20.810717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.623482, 12.234379, 20.780642> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029968, -0.074962, -0.996736,
		-0.999530, -0.008631, -0.029403,
		-0.006398, 0.997149, -0.075185,
		17.621563, 12.533524, 20.758085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.090864, 11.999626, 20.363678>,  <17.626041, 11.835519, 20.810717>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.090864, 11.999626, 20.363678> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.348757, 12.305164, 20.351946>,  <17.503492, 12.488487, 20.344908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.348757, 12.305164, 20.351946>,  <17.090864, 11.999626, 20.363678>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.348757, 12.305164, 20.351946> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097373, 0.044013, -0.994274,
		-0.758182, 0.643896, 0.102755,
		0.644732, 0.763846, -0.029328,
		17.542177, 12.534318, 20.343147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.735022, 12.514029, 19.882170>,  <17.090864, 11.999626, 20.363678>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.735022, 12.514029, 19.882170> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.119371, 12.621131, 19.910528>,  <17.349981, 12.685392, 19.927544>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.119371, 12.621131, 19.910528>,  <16.735022, 12.514029, 19.882170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.119371, 12.621131, 19.910528> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091251, -0.064349, -0.993747,
		-0.261519, 0.961336, -0.086264,
		0.960875, 0.267755, 0.070895,
		17.407635, 12.701457, 19.931797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.933229, 13.274400, 19.530849>,  <16.735022, 12.514029, 19.882170>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.933229, 13.274400, 19.530849> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.274361, 13.066963, 19.555346>,  <17.479038, 12.942501, 19.570044>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.274361, 13.066963, 19.555346>,  <16.933229, 13.274400, 19.530849>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.274361, 13.066963, 19.555346> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151675, 0.133782, -0.979335,
		0.499681, 0.844492, 0.192750,
		0.852827, -0.518590, 0.061240,
		17.530209, 12.911386, 19.573717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.500473, 13.619844, 19.054842>,  <16.933229, 13.274400, 19.530849>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.500473, 13.619844, 19.054842> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.660538, 13.261005, 19.129770>,  <17.756577, 13.045702, 19.174726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.660538, 13.261005, 19.129770>,  <17.500473, 13.619844, 19.054842>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.660538, 13.261005, 19.129770> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431501, 0.004110, -0.902103,
		0.808504, 0.441815, 0.388743,
		0.400160, -0.897097, 0.187320,
		17.780586, 12.991877, 19.185966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.204304, 13.678734, 18.814165>,  <17.500473, 13.619844, 19.054842>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.204304, 13.678734, 18.814165> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.091034, 13.295159, 18.820515>,  <18.023071, 13.065015, 18.824324>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.091034, 13.295159, 18.820515>,  <18.204304, 13.678734, 18.814165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.091034, 13.295159, 18.820515> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216480, -0.080031, -0.973001,
		0.934317, -0.272094, 0.230254,
		-0.283176, -0.958937, 0.015872,
		18.006081, 13.007479, 18.825275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.772196, 13.424703, 18.669340>,  <18.204304, 13.678734, 18.814165>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.772196, 13.424703, 18.669340> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.487785, 13.150502, 18.606693>,  <18.317139, 12.985982, 18.569105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.487785, 13.150502, 18.606693>,  <18.772196, 13.424703, 18.669340>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.487785, 13.150502, 18.606693> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363959, -0.168207, -0.916100,
		0.601643, -0.708375, 0.369094,
		-0.711027, -0.685501, -0.156619,
		18.274477, 12.944852, 18.559708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.140524, 12.869896, 18.343939>,  <18.772196, 13.424703, 18.669340>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.140524, 12.869896, 18.343939> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.753998, 12.843234, 18.244503>,  <18.522083, 12.827237, 18.184841>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.753998, 12.843234, 18.244503>,  <19.140524, 12.869896, 18.343939>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.753998, 12.843234, 18.244503> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255563, -0.362718, -0.896171,
		-0.030434, -0.929512, 0.367534,
		-0.966313, -0.066654, -0.248588,
		18.464104, 12.823238, 18.169926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.977678, 12.229130, 17.939915>,  <19.140524, 12.869896, 18.343939>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.977678, 12.229130, 17.939915> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.670578, 12.476781, 17.873898>,  <18.486319, 12.625372, 17.834288>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.670578, 12.476781, 17.873898>,  <18.977678, 12.229130, 17.939915>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.670578, 12.476781, 17.873898> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009290, -0.246794, -0.969023,
		-0.640682, -0.745501, 0.183725,
		-0.767751, 0.619129, -0.165042,
		18.440252, 12.662519, 17.824385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<14.495308, 13.853236, 26.662531> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.881535, 13.769988, 26.724972>,  <15.113271, 13.720039, 26.762436>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.881535, 13.769988, 26.724972>,  <14.495308, 13.853236, 26.662531>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.881535, 13.769988, 26.724972> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165518, 0.028512, -0.985794,
		0.200712, 0.977688, 0.061977,
		0.965566, -0.208119, 0.156102,
		15.171205, 13.707552, 26.771803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.064198, 14.315525, 26.339684>,  <14.495308, 13.853236, 26.662531>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.064198, 14.315525, 26.339684> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.245230, 13.962287, 26.389183>,  <15.353848, 13.750344, 26.418882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.245230, 13.962287, 26.389183>,  <15.064198, 14.315525, 26.339684>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.245230, 13.962287, 26.389183> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290618, 0.014873, -0.956724,
		0.843038, 0.468958, 0.263375,
		0.452580, -0.883095, 0.123749,
		15.381003, 13.697358, 26.426308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.728153, 14.276896, 25.888147>,  <15.064198, 14.315525, 26.339684>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.728153, 14.276896, 25.888147> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.599346, 13.903037, 25.948463>,  <15.522062, 13.678721, 25.984653>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.599346, 13.903037, 25.948463>,  <15.728153, 14.276896, 25.888147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.599346, 13.903037, 25.948463> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368285, -0.270396, -0.889524,
		0.872165, -0.230908, 0.431289,
		-0.322017, -0.934648, 0.150790,
		15.502741, 13.622643, 25.993700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.296894, 13.928601, 25.876350>,  <15.728153, 14.276896, 25.888147>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.296894, 13.928601, 25.876350> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.007416, 13.665003, 25.794384>,  <15.833729, 13.506844, 25.745205>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.007416, 13.665003, 25.794384>,  <16.296894, 13.928601, 25.876350>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.007416, 13.665003, 25.794384> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379683, -0.132247, -0.915615,
		0.576287, -0.740429, 0.345916,
		-0.723695, -0.658996, -0.204916,
		15.790307, 13.467304, 25.732908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.564358, 13.327860, 25.491285>,  <16.296894, 13.928601, 25.876350>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.564358, 13.327860, 25.491285> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.175486, 13.259768, 25.426929>,  <15.942162, 13.218914, 25.388317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.175486, 13.259768, 25.426929>,  <16.564358, 13.327860, 25.491285>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.175486, 13.259768, 25.426929> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202123, -0.262607, -0.943496,
		0.118359, -0.949769, 0.289708,
		-0.972182, -0.170228, -0.160888,
		15.883831, 13.208700, 25.378662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.623014, 12.716067, 25.102110>,  <16.564358, 13.327860, 25.491285>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.623014, 12.716067, 25.102110> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.261116, 12.879969, 25.055578>,  <16.043976, 12.978310, 25.027658>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.261116, 12.879969, 25.055578>,  <16.623014, 12.716067, 25.102110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.261116, 12.879969, 25.055578> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062800, -0.141801, -0.987901,
		-0.421293, -0.901107, 0.102562,
		-0.904748, 0.409755, -0.116329,
		15.989692, 13.002894, 25.020679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.225088, 12.228848, 24.776308>,  <16.623014, 12.716067, 25.102110>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.225088, 12.228848, 24.776308> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.049244, 12.581536, 24.707829>,  <15.943737, 12.793149, 24.666740>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.049244, 12.581536, 24.707829>,  <16.225088, 12.228848, 24.776308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.049244, 12.581536, 24.707829> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078667, -0.152076, -0.985233,
		-0.894736, -0.446588, -0.002508,
		-0.439612, 0.881721, -0.171200,
		15.917360, 12.846052, 24.656469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.554184, 12.136716, 24.314890>,  <16.225088, 12.228848, 24.776308>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.554184, 12.136716, 24.314890> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.714400, 12.502249, 24.288126>,  <15.810531, 12.721568, 24.272068>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.714400, 12.502249, 24.288126>,  <15.554184, 12.136716, 24.314890>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.714400, 12.502249, 24.288126> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329337, -0.211726, -0.920168,
		-0.855046, 0.346530, -0.385764,
		0.400542, 0.913832, -0.066910,
		15.834563, 12.776399, 24.268053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.486321, 12.229061, 23.631275>,  <15.554184, 12.136716, 24.314890>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.486321, 12.229061, 23.631275> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.726354, 12.537741, 23.715546>,  <15.870373, 12.722948, 23.766108>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.726354, 12.537741, 23.715546>,  <15.486321, 12.229061, 23.631275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.726354, 12.537741, 23.715546> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308521, 0.019720, -0.951013,
		-0.738050, 0.635682, -0.226252,
		0.600080, 0.771699, 0.210676,
		15.906378, 12.769250, 23.778749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.450575, 12.832005, 23.136543>,  <15.486321, 12.229061, 23.631275>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.450575, 12.832005, 23.136543> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.809727, 12.885818, 23.304216>,  <16.025217, 12.918105, 23.404819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.809727, 12.885818, 23.304216>,  <15.450575, 12.832005, 23.136543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.809727, 12.885818, 23.304216> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415749, 0.054053, -0.907872,
		-0.144797, 0.989434, -0.007398,
		0.897879, 0.134533, 0.419183,
		16.079090, 12.926177, 23.429972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.719687, 13.323910, 22.752268>,  <15.450575, 12.832005, 23.136543>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.719687, 13.323910, 22.752268> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.045183, 13.192796, 22.944262>,  <16.240480, 13.114127, 23.059458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.045183, 13.192796, 22.944262>,  <15.719687, 13.323910, 22.752268>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.045183, 13.192796, 22.944262> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527621, 0.070183, -0.846575,
		0.243808, 0.942142, 0.230057,
		0.813740, -0.327785, 0.479983,
		16.289305, 13.094460, 23.088257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.257637, 13.674878, 22.410734>,  <15.719687, 13.323910, 22.752268>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.257637, 13.674878, 22.410734> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.425501, 13.362969, 22.596571>,  <16.526218, 13.175824, 22.708073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.425501, 13.362969, 22.596571>,  <16.257637, 13.674878, 22.410734>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.425501, 13.362969, 22.596571> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528723, -0.206041, -0.823407,
		0.737794, 0.591189, 0.325817,
		0.419657, -0.779771, 0.464591,
		16.551397, 13.129038, 22.735949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.010035, 13.730953, 22.526524>,  <16.257637, 13.674878, 22.410734>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.010035, 13.730953, 22.526524> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.979940, 13.332190, 22.535553>,  <16.961884, 13.092931, 22.540972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.979940, 13.332190, 22.535553>,  <17.010035, 13.730953, 22.526524>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.979940, 13.332190, 22.535553> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761808, -0.072070, -0.643782,
		0.643419, -0.031237, 0.764876,
		-0.075235, -0.996910, 0.022575,
		16.957371, 13.033116, 22.542326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.685112, 13.534902, 22.535692>,  <17.010035, 13.730953, 22.526524>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.685112, 13.534902, 22.535692> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.470909, 13.218533, 22.417255>,  <17.342386, 13.028711, 22.346193>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.470909, 13.218533, 22.417255>,  <17.685112, 13.534902, 22.535692>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.470909, 13.218533, 22.417255> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680860, -0.196893, -0.705453,
		0.499661, -0.579373, 0.643945,
		-0.535509, -0.790923, -0.296092,
		17.310257, 12.981256, 22.328428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.365107, 13.401425, 23.006332>,  <17.685112, 13.534902, 22.535692>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.365107, 13.401425, 23.006332> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.600695, 13.720359, 22.953611>,  <18.742048, 13.911719, 22.921978>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.600695, 13.720359, 22.953611>,  <18.365107, 13.401425, 23.006332>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.600695, 13.720359, 22.953611> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600452, 0.540899, 0.588970,
		0.540899, -0.267744, 0.797334,
		-0.588970, -0.797334, 0.131805,
		18.777386, 13.959559, 22.914070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.716993, 13.518842, 23.622313>,  <18.365107, 13.401425, 23.006332>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.716993, 13.518842, 23.622313> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.699707, 13.867516, 23.427048>,  <18.689335, 14.076719, 23.309889>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.699707, 13.867516, 23.427048>,  <18.716993, 13.518842, 23.622313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.699707, 13.867516, 23.427048> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403347, 0.431802, 0.806758,
		0.914026, 0.231764, 0.332929,
		-0.043218, 0.871684, -0.488160,
		18.686741, 14.129021, 23.280600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.930683, 14.068228, 24.126703>,  <18.716993, 13.518842, 23.622313>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.930683, 14.068228, 24.126703> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.737339, 14.273375, 23.842920>,  <18.621332, 14.396462, 23.672649>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.737339, 14.273375, 23.842920>,  <18.930683, 14.068228, 24.126703>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.737339, 14.273375, 23.842920> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430535, 0.566370, 0.702755,
		0.762235, 0.645130, -0.052955,
		-0.483360, 0.512866, -0.709458,
		18.592331, 14.427235, 23.630083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.993801, 14.808160, 24.197107>,  <18.930683, 14.068228, 24.126703>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.993801, 14.808160, 24.197107> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.658264, 14.764791, 23.983721>,  <18.456942, 14.738770, 23.855688>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.658264, 14.764791, 23.983721>,  <18.993801, 14.808160, 24.197107>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.658264, 14.764791, 23.983721> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466253, 0.648908, 0.601270,
		0.280980, 0.753102, -0.594885,
		-0.838844, -0.108422, -0.533466,
		18.406610, 14.732265, 23.823681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.817160, 15.412930, 24.214394>,  <18.993801, 14.808160, 24.197107>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.817160, 15.412930, 24.214394> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.484831, 15.232188, 24.084435>,  <18.285433, 15.123743, 24.006460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.484831, 15.232188, 24.084435>,  <18.817160, 15.412930, 24.214394>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.484831, 15.232188, 24.084435> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529940, 0.464010, 0.709830,
		-0.169986, 0.761919, -0.624968,
		-0.830824, -0.451856, -0.324896,
		18.235584, 15.096631, 23.986965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.265850, 15.950818, 24.023167>,  <18.817160, 15.412930, 24.214394>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.265850, 15.950818, 24.023167> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.068434, 15.610547, 24.095568>,  <17.949984, 15.406384, 24.139008>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.068434, 15.610547, 24.095568>,  <18.265850, 15.950818, 24.023167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.068434, 15.610547, 24.095568> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459770, 0.431853, 0.775961,
		-0.738260, 0.299751, -0.604254,
		-0.493543, -0.850678, 0.181003,
		17.920370, 15.355344, 24.149868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.481411, 16.052050, 24.067266>,  <18.265850, 15.950818, 24.023167>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.481411, 16.052050, 24.067266> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.589720, 15.744852, 24.299429>,  <17.654705, 15.560534, 24.438726>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.589720, 15.744852, 24.299429>,  <17.481411, 16.052050, 24.067266>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.589720, 15.744852, 24.299429> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490278, 0.408853, 0.769719,
		-0.828438, -0.492978, -0.265824,
		0.270772, -0.767992, 0.580406,
		17.670952, 15.514455, 24.473551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.892721, 15.807652, 24.493263>,  <17.481411, 16.052050, 24.067266>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.892721, 15.807652, 24.493263> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.225122, 15.696581, 24.686066>,  <17.424562, 15.629939, 24.801746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.225122, 15.696581, 24.686066>,  <16.892721, 15.807652, 24.493263>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.225122, 15.696581, 24.686066> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418274, 0.259321, 0.870517,
		-0.366716, -0.925013, 0.099352,
		0.831003, -0.277676, 0.482006,
		17.474424, 15.613278, 24.830667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.636551, 15.575038, 25.099388>,  <16.892721, 15.807652, 24.493263>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.636551, 15.575038, 25.099388> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.025869, 15.589188, 25.190109>,  <17.259460, 15.597677, 25.244541>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.025869, 15.589188, 25.190109>,  <16.636551, 15.575038, 25.099388>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.025869, 15.589188, 25.190109> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229257, 0.100295, 0.968185,
		0.011499, -0.994329, 0.105726,
		0.973298, 0.035371, 0.226803,
		17.317860, 15.599800, 25.258150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.744833, 15.132495, 25.677540>,  <16.636551, 15.575038, 25.099388>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.744833, 15.132495, 25.677540> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.061747, 15.376555, 25.676672>,  <17.251894, 15.522991, 25.676151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.061747, 15.376555, 25.676672>,  <16.744833, 15.132495, 25.677540>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.061747, 15.376555, 25.676672> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085611, 0.114688, 0.989706,
		0.604118, -0.783941, 0.143102,
		0.792283, 0.610150, -0.002171,
		17.299431, 15.559601, 25.676022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.179226, 14.907355, 26.257215>,  <16.744833, 15.132495, 25.677540>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.179226, 14.907355, 26.257215> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.294319, 15.280519, 26.170603>,  <17.363375, 15.504418, 26.118635>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.294319, 15.280519, 26.170603>,  <17.179226, 14.907355, 26.257215>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.294319, 15.280519, 26.170603> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118917, 0.259145, 0.958490,
		0.950299, -0.250041, 0.185504,
		0.287734, 0.932911, -0.216531,
		17.380640, 15.560393, 26.105644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.648411, 15.031006, 26.717205>,  <17.179226, 14.907355, 26.257215>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.648411, 15.031006, 26.717205> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.475033, 15.369849, 26.594221>,  <17.371006, 15.573155, 26.520432>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.475033, 15.369849, 26.594221>,  <17.648411, 15.031006, 26.717205>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.475033, 15.369849, 26.594221> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087150, 0.300172, 0.949896,
		0.896956, 0.438523, -0.056282,
		-0.433445, 0.847109, -0.307458,
		17.344999, 15.623982, 26.501984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.086687, 15.682109, 26.865036>,  <17.648411, 15.031006, 26.717205>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.086687, 15.682109, 26.865036> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.696091, 15.767873, 26.856155>,  <17.461733, 15.819331, 26.850826>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.696091, 15.767873, 26.856155>,  <18.086687, 15.682109, 26.865036>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.696091, 15.767873, 26.856155> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070600, 0.415442, 0.906876,
		0.203667, 0.883989, -0.420812,
		-0.976491, 0.214410, -0.022202,
		17.403143, 15.832196, 26.849495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.015903, 15.180663, 27.399429>,  <18.086687, 15.682109, 26.865036>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.015903, 15.180663, 27.399429> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.334066, 14.938234, 27.398821>,  <18.524965, 14.792777, 27.398457>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.334066, 14.938234, 27.398821>,  <18.015903, 15.180663, 27.399429>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.334066, 14.938234, 27.398821> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298796, 0.389956, 0.871008,
		-0.527300, -0.693262, 0.491266,
		0.795409, -0.606071, -0.001520,
		18.572689, 14.756413, 27.398365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<9.844352, 14.453278, 25.507572> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.166187, 14.626507, 25.670094>,  <10.359289, 14.730445, 25.767607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.166187, 14.626507, 25.670094>,  <9.844352, 14.453278, 25.507572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.166187, 14.626507, 25.670094> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425453, 0.056929, -0.903188,
		-0.414277, 0.899559, -0.138448,
		0.804589, 0.433073, 0.406305,
		10.407564, 14.756429, 25.791985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.977792, 15.066503, 25.080299>,  <9.844352, 14.453278, 25.507572>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.977792, 15.066503, 25.080299> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.328185, 14.983377, 25.254412>,  <10.538421, 14.933500, 25.358879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.328185, 14.983377, 25.254412>,  <9.977792, 15.066503, 25.080299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.328185, 14.983377, 25.254412> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461706, 0.100125, -0.881364,
		0.139579, 0.973030, 0.183658,
		0.875982, -0.207816, 0.435279,
		10.590980, 14.921032, 25.384995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.401293, 15.534094, 24.792618>,  <9.977792, 15.066503, 25.080299>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.401293, 15.534094, 24.792618> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.655018, 15.257071, 24.930029>,  <10.807253, 15.090858, 25.012476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.655018, 15.257071, 24.930029>,  <10.401293, 15.534094, 24.792618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.655018, 15.257071, 24.930029> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535597, 0.073247, -0.841291,
		0.557479, 0.717636, 0.417392,
		0.634313, -0.692556, 0.343530,
		10.845312, 15.049305, 25.033089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.055306, 15.813348, 24.676867>,  <10.401293, 15.534094, 24.792618>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.055306, 15.813348, 24.676867> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.131431, 15.423079, 24.720402>,  <11.177105, 15.188917, 24.746523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.131431, 15.423079, 24.720402>,  <11.055306, 15.813348, 24.676867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.131431, 15.423079, 24.720402> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570735, 0.019751, -0.820896,
		0.798776, 0.218343, 0.560609,
		0.190310, -0.975672, 0.108839,
		11.188523, 15.130377, 24.753054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.781206, 15.710335, 24.426229>,  <11.055306, 15.813348, 24.676867>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.781206, 15.710335, 24.426229> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.620326, 15.346244, 24.386789>,  <11.523798, 15.127789, 24.363125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.620326, 15.346244, 24.386789>,  <11.781206, 15.710335, 24.426229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.620326, 15.346244, 24.386789> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465603, -0.110621, -0.878053,
		0.788320, -0.399061, 0.468296,
		-0.402200, -0.910227, -0.098599,
		11.499666, 15.073175, 24.357210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.374701, 15.193747, 24.214613>,  <11.781206, 15.710335, 24.426229>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.374701, 15.193747, 24.214613> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.029835, 15.019571, 24.111027>,  <11.822915, 14.915066, 24.048876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.029835, 15.019571, 24.111027>,  <12.374701, 15.193747, 24.214613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.029835, 15.019571, 24.111027> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393412, -0.253364, -0.883761,
		0.319212, -0.863829, 0.389749,
		-0.862166, -0.435439, -0.258964,
		11.771185, 14.888940, 24.033339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.560872, 14.588816, 23.740486>,  <12.374701, 15.193747, 24.214613>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.560872, 14.588816, 23.740486> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.171754, 14.654777, 23.675402>,  <11.938283, 14.694353, 23.636351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.171754, 14.654777, 23.675402>,  <12.560872, 14.588816, 23.740486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.171754, 14.654777, 23.675402> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144256, -0.118379, -0.982434,
		-0.181269, -0.979180, 0.091370,
		-0.972796, 0.164904, -0.162711,
		11.879915, 14.704247, 23.626589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.350314, 14.061056, 23.288151>,  <12.560872, 14.588816, 23.740486>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.350314, 14.061056, 23.288151> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.085311, 14.357253, 23.242979>,  <11.926309, 14.534971, 23.215876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.085311, 14.357253, 23.242979>,  <12.350314, 14.061056, 23.288151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.085311, 14.357253, 23.242979> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012483, -0.161657, -0.986768,
		-0.748950, -0.652333, 0.116343,
		-0.662509, 0.740492, -0.112930,
		11.886559, 14.579401, 23.209101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.864921, 13.748554, 22.845486>,  <12.350314, 14.061056, 23.288151>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.864921, 13.748554, 22.845486> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.864372, 14.148253, 22.829988>,  <11.864043, 14.388073, 22.820690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.864372, 14.148253, 22.829988>,  <11.864921, 13.748554, 22.845486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.864372, 14.148253, 22.829988> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064243, -0.038575, -0.997189,
		-0.997933, -0.003856, -0.064142,
		-0.001371, 0.999248, -0.038743,
		11.863961, 14.448028, 22.818365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.410722, 13.893288, 22.245148>,  <11.864921, 13.748554, 22.845486>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.410722, 13.893288, 22.245148> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.651340, 14.200033, 22.334648>,  <11.795710, 14.384081, 22.388348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.651340, 14.200033, 22.334648>,  <11.410722, 13.893288, 22.245148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.651340, 14.200033, 22.334648> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348714, -0.000079, -0.937229,
		-0.718710, 0.641809, -0.267464,
		0.601544, 0.766864, 0.223751,
		11.831802, 14.430093, 22.401773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.223799, 14.355713, 21.761551>,  <11.410722, 13.893288, 22.245148>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.223799, 14.355713, 21.761551> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.585670, 14.476767, 21.881531>,  <11.802794, 14.549399, 21.953518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.585670, 14.476767, 21.881531>,  <11.223799, 14.355713, 21.761551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.585670, 14.476767, 21.881531> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244977, 0.206543, -0.947273,
		-0.348630, 0.930458, 0.112716,
		0.904679, 0.302635, 0.299948,
		11.857074, 14.567557, 21.971516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.262651, 15.021034, 21.479103>,  <11.223799, 14.355713, 21.761551>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.262651, 15.021034, 21.479103> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.626758, 14.894092, 21.585463>,  <11.845222, 14.817925, 21.649279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.626758, 14.894092, 21.585463>,  <11.262651, 15.021034, 21.479103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.626758, 14.894092, 21.585463> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345459, 0.228201, -0.910265,
		0.228201, 0.920439, 0.317357,
		0.910265, -0.317357, 0.265899,
		11.899837, 14.798884, 21.665232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.663269, 15.535897, 21.197290>,  <11.262651, 15.021034, 21.479103>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.663269, 15.535897, 21.197290> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.908834, 15.227851, 21.266613>,  <12.056172, 15.043023, 21.308207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.908834, 15.227851, 21.266613>,  <11.663269, 15.535897, 21.197290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.908834, 15.227851, 21.266613> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433571, 0.145503, -0.889295,
		0.659643, 0.621089, 0.423226,
		0.613912, -0.770115, 0.173306,
		12.093007, 14.996817, 21.318605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.380963, 15.763995, 21.039755>,  <11.663269, 15.535897, 21.197290>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.380963, 15.763995, 21.039755> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.386263, 15.364733, 21.016056>,  <12.389442, 15.125175, 21.001837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.386263, 15.364733, 21.016056>,  <12.380963, 15.763995, 21.039755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.386263, 15.364733, 21.016056> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282989, 0.060571, -0.957209,
		0.959032, -0.004083, 0.283270,
		0.013249, -0.998156, -0.059245,
		12.390238, 15.065286, 20.998283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.079505, 16.118782, 21.288074>,  <12.380963, 15.763995, 21.039755>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.079505, 16.118782, 21.288074> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.224893, 16.488050, 21.338102>,  <13.312125, 16.709612, 21.368120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.224893, 16.488050, 21.338102>,  <13.079505, 16.118782, 21.288074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.224893, 16.488050, 21.338102> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564463, 0.111431, 0.817902,
		0.741128, -0.367881, 0.561599,
		0.363470, 0.923172, 0.125071,
		13.333934, 16.765001, 21.375624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.204416, 16.214043, 21.989388>,  <13.079505, 16.118782, 21.288074>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.204416, 16.214043, 21.989388> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.185036, 16.587095, 21.846363>,  <13.173408, 16.810926, 21.760550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.185036, 16.587095, 21.846363>,  <13.204416, 16.214043, 21.989388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.185036, 16.587095, 21.846363> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446079, 0.300092, 0.843183,
		0.893681, 0.200354, 0.401488,
		-0.048452, 0.932632, -0.357560,
		13.170500, 16.866884, 21.739096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.261939, 16.517916, 22.634262>,  <13.204416, 16.214043, 21.989388>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.261939, 16.517916, 22.634262> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.178836, 16.825035, 22.391834>,  <13.128974, 17.009308, 22.246378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.178836, 16.825035, 22.391834>,  <13.261939, 16.517916, 22.634262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.178836, 16.825035, 22.391834> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251823, 0.556722, 0.791610,
		0.945210, 0.317086, 0.077686,
		-0.207759, 0.767800, -0.606068,
		13.116508, 17.055376, 22.210014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.625826, 17.193970, 22.914930>,  <13.261939, 16.517916, 22.634262>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.625826, 17.193970, 22.914930> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.296032, 17.264202, 22.699749>,  <13.098155, 17.306341, 22.570641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.296032, 17.264202, 22.699749>,  <13.625826, 17.193970, 22.914930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.296032, 17.264202, 22.699749> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309398, 0.656101, 0.688334,
		0.473810, 0.733964, -0.486621,
		-0.824486, 0.175580, -0.537955,
		13.048686, 17.316875, 22.538363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.665826, 17.903702, 22.891924>,  <13.625826, 17.193970, 22.914930>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.665826, 17.903702, 22.891924> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.299200, 17.760107, 22.821457>,  <13.079225, 17.673950, 22.779177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.299200, 17.760107, 22.821457>,  <13.665826, 17.903702, 22.891924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.299200, 17.760107, 22.821457> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357668, 0.538944, 0.762636,
		-0.178834, 0.762015, -0.622376,
		-0.916566, -0.358989, -0.176167,
		13.024230, 17.652411, 22.768606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.144189, 18.470396, 22.934258>,  <13.665826, 17.903702, 22.891924>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.144189, 18.470396, 22.934258> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.922673, 18.140734, 22.981733>,  <12.789764, 17.942936, 23.010220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.922673, 18.140734, 22.981733>,  <13.144189, 18.470396, 22.934258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.922673, 18.140734, 22.981733> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499905, 0.443081, 0.744160,
		-0.665893, 0.352773, -0.657372,
		-0.553789, -0.824154, 0.118692,
		12.756536, 17.893488, 23.017342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.481069, 18.670090, 23.258146>,  <13.144189, 18.470396, 22.934258>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.481069, 18.670090, 23.258146> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.448198, 18.276190, 23.319485>,  <12.428476, 18.039850, 23.356289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.448198, 18.276190, 23.319485>,  <12.481069, 18.670090, 23.258146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.448198, 18.276190, 23.319485> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682378, 0.167739, 0.711494,
		-0.726366, -0.046175, -0.685756,
		-0.082175, -0.984750, 0.153348,
		12.423546, 17.980764, 23.365490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.760543, 18.494175, 23.194437>,  <12.481069, 18.670090, 23.258146>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.760543, 18.494175, 23.194437> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.940557, 18.206577, 23.406292>,  <12.048566, 18.034019, 23.533405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.940557, 18.206577, 23.406292>,  <11.760543, 18.494175, 23.194437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.940557, 18.206577, 23.406292> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607613, 0.188097, 0.771638,
		-0.654427, -0.669079, -0.352220,
		0.450036, -0.718994, 0.529637,
		12.075568, 17.990879, 23.565184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.160561, 18.005465, 23.363314>,  <11.760543, 18.494175, 23.194437>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.160561, 18.005465, 23.363314> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.462276, 17.951033, 23.620228>,  <11.643306, 17.918373, 23.774376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.462276, 17.951033, 23.620228>,  <11.160561, 18.005465, 23.363314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.462276, 17.951033, 23.620228> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653147, -0.056196, 0.755143,
		-0.066687, -0.989099, -0.131286,
		0.754289, -0.136107, 0.642279,
		11.688563, 17.910208, 23.812912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.959365, 17.509672, 23.803146>,  <11.160561, 18.005465, 23.363314>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.959365, 17.509672, 23.803146> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.252734, 17.685711, 24.010380>,  <11.428756, 17.791334, 24.134720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.252734, 17.685711, 24.010380>,  <10.959365, 17.509672, 23.803146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.252734, 17.685711, 24.010380> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525622, -0.116138, 0.842753,
		0.431060, -0.890409, 0.146146,
		0.733422, 0.440095, 0.518081,
		11.472761, 17.817739, 24.165804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.231019, 17.063196, 24.447882>,  <10.959365, 17.509672, 23.803146>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.231019, 17.063196, 24.447882> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.371523, 17.422979, 24.551876>,  <11.455825, 17.638849, 24.614273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.371523, 17.422979, 24.551876>,  <11.231019, 17.063196, 24.447882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.371523, 17.422979, 24.551876> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315850, -0.147566, 0.937264,
		0.881395, -0.411338, 0.232260,
		0.351259, 0.899458, 0.259985,
		11.476900, 17.692818, 24.629871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.702133, 16.999010, 25.053072>,  <11.231019, 17.063196, 24.447882>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.702133, 16.999010, 25.053072> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.559243, 17.372316, 25.068058>,  <11.473509, 17.596300, 25.077049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.559243, 17.372316, 25.068058>,  <11.702133, 16.999010, 25.053072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.559243, 17.372316, 25.068058> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298114, -0.151941, 0.942360,
		0.885166, 0.325466, 0.332496,
		-0.357226, 0.933267, 0.037467,
		11.452076, 17.652296, 25.079298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.753974, 17.100666, 25.634401>,  <11.702133, 16.999010, 25.053072>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.753974, 17.100666, 25.634401> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.535681, 17.424562, 25.548151>,  <11.404705, 17.618900, 25.496401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.535681, 17.424562, 25.548151>,  <11.753974, 17.100666, 25.634401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.535681, 17.424562, 25.548151> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341275, 0.020240, 0.939746,
		0.765315, 0.586438, 0.265298,
		-0.545733, 0.809741, -0.215626,
		11.371961, 17.667484, 25.483463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.947187, 17.751675, 26.072306>,  <11.753974, 17.100666, 25.634401>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.947187, 17.751675, 26.072306> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.569114, 17.766335, 25.942514>,  <11.342270, 17.775131, 25.864639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.569114, 17.766335, 25.942514>,  <11.947187, 17.751675, 26.072306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.569114, 17.766335, 25.942514> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320755, 0.081997, 0.943606,
		0.061189, 0.995958, -0.065746,
		-0.945184, 0.036650, -0.324476,
		11.285559, 17.777328, 25.845171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.423302, 18.298615, 26.130939>,  <11.947187, 17.751675, 26.072306>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.423302, 18.298615, 26.130939> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.731277, 18.262777, 26.383659>,  <12.916061, 18.241276, 26.535292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.731277, 18.262777, 26.383659>,  <12.423302, 18.298615, 26.130939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.731277, 18.262777, 26.383659> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604461, -0.214910, -0.767099,
		0.204505, 0.972516, -0.111312,
		0.769938, -0.089592, 0.631798,
		12.962258, 18.235899, 26.573198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.906608, 18.752035, 25.883236>,  <12.423302, 18.298615, 26.130939>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.906608, 18.752035, 25.883236> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.094037, 18.484295, 26.113855>,  <13.206495, 18.323650, 26.252228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.094037, 18.484295, 26.113855>,  <12.906608, 18.752035, 25.883236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.094037, 18.484295, 26.113855> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592041, -0.246461, -0.767297,
		0.655687, 0.700876, 0.280798,
		0.468574, -0.669351, 0.576548,
		13.234610, 18.283489, 26.286819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.642294, 18.784891, 25.669485>,  <12.906608, 18.752035, 25.883236>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.642294, 18.784891, 25.669485> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.600240, 18.433969, 25.856796>,  <13.575007, 18.223417, 25.969183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.600240, 18.433969, 25.856796>,  <13.642294, 18.784891, 25.669485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.600240, 18.433969, 25.856796> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521346, -0.449616, -0.725289,
		0.846844, 0.167882, 0.504649,
		-0.105135, -0.877303, 0.468279,
		13.568699, 18.170778, 25.997280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.330225, 18.597603, 25.746729>,  <13.642294, 18.784891, 25.669485>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.330225, 18.597603, 25.746729> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.094077, 18.276628, 25.781513>,  <13.952389, 18.084044, 25.802383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.094077, 18.276628, 25.781513>,  <14.330225, 18.597603, 25.746729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.094077, 18.276628, 25.781513> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571083, -0.491419, -0.657549,
		0.570376, -0.338534, 0.748376,
		-0.590369, -0.802435, 0.086963,
		13.916966, 18.035898, 25.807602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.891409, 17.958126, 25.738785>,  <14.330225, 18.597603, 25.746729>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.891409, 17.958126, 25.738785> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.541590, 17.772612, 25.682119>,  <14.331698, 17.661303, 25.648121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.541590, 17.772612, 25.682119>,  <14.891409, 17.958126, 25.738785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.541590, 17.772612, 25.682119> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397062, -0.517126, -0.758237,
		0.278402, -0.719364, 0.636403,
		-0.874548, -0.463786, -0.141663,
		14.279225, 17.633476, 25.639620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.033056, 17.281866, 25.678968>,  <14.891409, 17.958126, 25.738785>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.033056, 17.281866, 25.678968> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.678778, 17.335238, 25.501097>,  <14.466210, 17.367260, 25.394375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.678778, 17.335238, 25.501097>,  <15.033056, 17.281866, 25.678968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.678778, 17.335238, 25.501097> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360924, -0.404567, -0.840273,
		-0.292019, -0.904722, 0.310166,
		-0.885697, 0.133430, -0.444678,
		14.413069, 17.375265, 25.367693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.899437, 16.621078, 25.350195>,  <15.033056, 17.281866, 25.678968>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.899437, 16.621078, 25.350195> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.667353, 16.899179, 25.180496>,  <14.528102, 17.066040, 25.078678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.667353, 16.899179, 25.180496>,  <14.899437, 16.621078, 25.350195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.667353, 16.899179, 25.180496> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247811, -0.345495, -0.905109,
		-0.775852, -0.630286, 0.028169,
		-0.580210, 0.695250, -0.424244,
		14.493290, 17.107754, 25.053223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.606263, 16.275463, 24.838083>,  <14.899437, 16.621078, 25.350195>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.606263, 16.275463, 24.838083> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.555682, 16.657843, 24.732124>,  <14.525333, 16.887270, 24.668549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.555682, 16.657843, 24.732124>,  <14.606263, 16.275463, 24.838083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.555682, 16.657843, 24.732124> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340929, -0.208893, -0.916587,
		-0.931545, -0.206217, -0.299496,
		-0.126453, 0.955949, -0.264899,
		14.517746, 16.944628, 24.652655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.341494, 16.233322, 24.024122>,  <14.606263, 16.275463, 24.838083>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.341494, 16.233322, 24.024122> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.491819, 16.582756, 24.147810>,  <14.582015, 16.792416, 24.222023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.491819, 16.582756, 24.147810>,  <14.341494, 16.233322, 24.024122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.491819, 16.582756, 24.147810> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595806, 0.027795, -0.802647,
		-0.709774, 0.485880, -0.510040,
		0.375814, 0.873583, 0.309218,
		14.604564, 16.844831, 24.240576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.252219, 16.712927, 23.516493>,  <14.341494, 16.233322, 24.024122>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.252219, 16.712927, 23.516493> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.565703, 16.810226, 23.745098>,  <14.753794, 16.868607, 23.882261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.565703, 16.810226, 23.745098>,  <14.252219, 16.712927, 23.516493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.565703, 16.810226, 23.745098> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561278, 0.116720, -0.819355,
		-0.266016, 0.962915, -0.045057,
		0.783711, 0.243251, 0.571512,
		14.800817, 16.883202, 23.916552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.677925, 17.094097, 23.031612>,  <14.252219, 16.712927, 23.516493>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.677925, 17.094097, 23.031612> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.922694, 17.031792, 23.341784>,  <15.069556, 16.994408, 23.527885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.922694, 17.031792, 23.341784>,  <14.677925, 17.094097, 23.031612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.922694, 17.031792, 23.341784> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784753, -0.002588, -0.619803,
		0.098551, 0.987791, 0.120654,
		0.611924, -0.155766, 0.775427,
		15.106271, 16.985062, 23.574411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.148113, 17.592871, 23.008482>,  <14.677925, 17.094097, 23.031612>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.148113, 17.592871, 23.008482> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.328949, 17.307854, 23.223106>,  <15.437450, 17.136843, 23.351881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.328949, 17.307854, 23.223106>,  <15.148113, 17.592871, 23.008482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.328949, 17.307854, 23.223106> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789571, 0.039834, -0.612365,
		0.414963, 0.700497, 0.580611,
		0.452088, -0.712543, 0.536562,
		15.464576, 17.094091, 23.384075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.813274, 17.782082, 23.141663>,  <15.148113, 17.592871, 23.008482>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.813274, 17.782082, 23.141663> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.850328, 17.385143, 23.174332>,  <15.872561, 17.146980, 23.193933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.850328, 17.385143, 23.174332>,  <15.813274, 17.782082, 23.141663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.850328, 17.385143, 23.174332> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761573, 0.017772, -0.647835,
		0.641424, 0.122213, 0.757389,
		0.092634, -0.992345, 0.081674,
		15.878119, 17.087440, 23.198833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.517498, 17.651951, 23.170578>,  <15.813274, 17.782082, 23.141663>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.517498, 17.651951, 23.170578> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.391588, 17.278944, 23.099775>,  <16.316042, 17.055140, 23.057295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.391588, 17.278944, 23.099775>,  <16.517498, 17.651951, 23.170578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.391588, 17.278944, 23.099775> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667822, -0.085068, -0.739444,
		0.674486, -0.350966, 0.649532,
		-0.314774, -0.932516, -0.177006,
		16.297155, 16.999189, 23.046673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<11.630186, 21.837746, 10.046041> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.317793, 21.666330, 9.864307>,  <11.130357, 21.563480, 9.755267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.317793, 21.666330, 9.864307>,  <11.630186, 21.837746, 10.046041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.317793, 21.666330, 9.864307> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506613, -0.009250, -0.862124,
		0.365251, -0.903476, 0.224328,
		-0.780984, -0.428539, -0.454334,
		11.083498, 21.537769, 9.728007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.481216, 22.559870, 10.180367>,  <11.630186, 21.837746, 10.046041>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.481216, 22.559870, 10.180367> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.670856, 22.861406, 9.998398>,  <11.784640, 23.042328, 9.889216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.670856, 22.861406, 9.998398>,  <11.481216, 22.559870, 10.180367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.670856, 22.861406, 9.998398> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195544, -0.413628, -0.889199,
		-0.858482, 0.510526, -0.048693,
		0.474100, 0.753840, -0.454922,
		11.813087, 23.087559, 9.861921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.939291, 22.829779, 9.740110>,  <11.481216, 22.559870, 10.180367>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.939291, 22.829779, 9.740110> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.303505, 22.867491, 9.579096>,  <11.522034, 22.890118, 9.482487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.303505, 22.867491, 9.579096>,  <10.939291, 22.829779, 9.740110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.303505, 22.867491, 9.579096> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358572, -0.304564, -0.882421,
		-0.205794, 0.947814, -0.243510,
		0.910536, 0.094281, -0.402537,
		11.576666, 22.895775, 9.458335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.989435, 23.422628, 9.289158>,  <10.939291, 22.829779, 9.740110>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.989435, 23.422628, 9.289158> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.204151, 23.095528, 9.206081>,  <11.332981, 22.899267, 9.156236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.204151, 23.095528, 9.206081>,  <10.989435, 23.422628, 9.289158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.204151, 23.095528, 9.206081> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666437, -0.259993, -0.698761,
		0.517416, 0.513500, -0.684542,
		0.536789, -0.817754, -0.207691,
		11.365188, 22.850201, 9.143774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.306127, 23.344194, 9.717132>,  <10.989435, 23.422628, 9.289158>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.306127, 23.344194, 9.717132> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.949120, 23.376507, 9.539644>,  <9.734916, 23.395895, 9.433151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.949120, 23.376507, 9.539644>,  <10.306127, 23.344194, 9.717132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.949120, 23.376507, 9.539644> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439542, -0.376263, 0.815616,
		-0.101069, 0.922985, 0.371329,
		-0.892518, 0.080781, -0.443719,
		9.681364, 23.400742, 9.406528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.829528, 23.687056, 10.140873>,  <10.306127, 23.344194, 9.717132>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.829528, 23.687056, 10.140873> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.642068, 23.405661, 9.927155>,  <9.529592, 23.236824, 9.798923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.642068, 23.405661, 9.927155>,  <9.829528, 23.687056, 10.140873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.642068, 23.405661, 9.927155> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251662, -0.473445, 0.844107,
		-0.846778, 0.530053, 0.044840,
		-0.468650, -0.703487, -0.534297,
		9.501472, 23.194614, 9.766866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.033598, 23.622360, 10.221497>,  <9.829528, 23.687056, 10.140873>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.033598, 23.622360, 10.221497> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.201632, 23.270582, 10.131958>,  <9.302453, 23.059515, 10.078235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.201632, 23.270582, 10.131958>,  <9.033598, 23.622360, 10.221497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.201632, 23.270582, 10.131958> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404874, -0.402386, 0.821074,
		-0.812160, -0.254293, -0.525101,
		0.420086, -0.879444, -0.223845,
		9.327659, 23.006750, 10.064804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.554362, 23.042830, 10.071396>,  <9.033598, 23.622360, 10.221497>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.554362, 23.042830, 10.071396> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.890832, 22.919268, 10.248937>,  <9.092713, 22.845131, 10.355461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.890832, 22.919268, 10.248937>,  <8.554362, 23.042830, 10.071396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.890832, 22.919268, 10.248937> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538147, -0.397501, 0.743230,
		-0.053156, -0.864043, -0.500603,
		0.841173, -0.308905, 0.443853,
		9.143184, 22.826595, 10.382092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.470240, 22.317011, 10.395375>,  <8.554362, 23.042830, 10.071396>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.470240, 22.317011, 10.395375> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.794488, 22.424610, 10.603427>,  <8.989038, 22.489170, 10.728258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.794488, 22.424610, 10.603427>,  <8.470240, 22.317011, 10.395375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.794488, 22.424610, 10.603427> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257542, -0.633943, 0.729239,
		0.525895, -0.725091, -0.444609,
		0.810621, 0.268998, 0.520128,
		9.037674, 22.505310, 10.759465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.801589, 22.252008, 10.500841>,  <8.470240, 22.317011, 10.395375>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.801589, 22.252008, 10.500841> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.511455, 22.411608, 10.276452>,  <7.337375, 22.507368, 10.141819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.511455, 22.411608, 10.276452>,  <7.801589, 22.252008, 10.500841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.511455, 22.411608, 10.276452> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662286, -0.626767, 0.410536,
		-0.187796, 0.669300, 0.718867,
		-0.725334, 0.398999, -0.560972,
		7.293855, 22.531307, 10.108160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.225487, 22.201332, 10.856519>,  <7.801589, 22.252008, 10.500841>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.225487, 22.201332, 10.856519> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.048950, 22.275848, 10.505404>,  <6.943028, 22.320559, 10.294734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.048950, 22.275848, 10.505404>,  <7.225487, 22.201332, 10.856519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.048950, 22.275848, 10.505404> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761254, -0.595636, 0.256339,
		-0.475089, 0.781353, 0.404694,
		-0.441342, 0.186292, -0.877789,
		6.916548, 22.331736, 10.242067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.633912, 22.505693, 10.966913>,  <7.225487, 22.201332, 10.856519>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.633912, 22.505693, 10.966913> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.599239, 22.294342, 10.629085>,  <6.578435, 22.167530, 10.426388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.599239, 22.294342, 10.629085>,  <6.633912, 22.505693, 10.966913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.599239, 22.294342, 10.629085> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821731, -0.441381, 0.360475,
		-0.563245, 0.725256, -0.395927,
		-0.086682, -0.528381, -0.844571,
		6.573235, 22.135828, 10.375713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.980103, 22.370361, 10.965810>,  <6.633912, 22.505693, 10.966913>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.980103, 22.370361, 10.965810> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.095257, 22.122120, 10.674064>,  <6.164349, 21.973175, 10.499016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.095257, 22.122120, 10.674064>,  <5.980103, 22.370361, 10.965810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.095257, 22.122120, 10.674064> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684121, -0.666225, 0.296855,
		-0.670153, 0.413518, -0.616359,
		0.287879, -0.620602, -0.729369,
		6.181622, 21.935938, 10.455255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.326180, 21.927366, 10.725433>,  <5.980103, 22.370361, 10.965810>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.326180, 21.927366, 10.725433> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.662907, 21.733643, 10.630114>,  <5.864943, 21.617409, 10.572922>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.662907, 21.733643, 10.630114>,  <5.326180, 21.927366, 10.725433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.662907, 21.733643, 10.630114> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402897, -0.857603, 0.319673,
		-0.359187, -0.173096, -0.917073,
		0.841818, -0.484308, -0.238300,
		5.915452, 21.588350, 10.558623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.148493, 21.417702, 10.331709>,  <5.326180, 21.927366, 10.725433>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.148493, 21.417702, 10.331709> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.489887, 21.299612, 10.503478>,  <5.694724, 21.228758, 10.606540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.489887, 21.299612, 10.503478>,  <5.148493, 21.417702, 10.331709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.489887, 21.299612, 10.503478> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440278, -0.849346, 0.291146,
		0.278777, -0.437555, -0.854886,
		0.853487, -0.295222, 0.429424,
		5.745933, 21.211046, 10.632305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.295589, 20.671034, 10.174459>,  <5.148493, 21.417702, 10.331709>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.295589, 20.671034, 10.174459> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.518046, 20.713579, 10.504160>,  <5.651521, 20.739107, 10.701981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.518046, 20.713579, 10.504160>,  <5.295589, 20.671034, 10.174459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.518046, 20.713579, 10.504160> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415083, -0.823672, 0.386356,
		0.720007, -0.557002, -0.413930,
		0.556144, 0.106364, 0.824252,
		5.684890, 20.745489, 10.751435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.430295, 19.918455, 10.401555>,  <5.295589, 20.671034, 10.174459>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.430295, 19.918455, 10.401555> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.492419, 20.175541, 10.701634>,  <5.529694, 20.329792, 10.881682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.492419, 20.175541, 10.701634>,  <5.430295, 19.918455, 10.401555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.492419, 20.175541, 10.701634> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288770, -0.696706, 0.656667,
		0.944717, -0.318623, 0.077390,
		0.155311, 0.642713, 0.750199,
		5.539012, 20.368355, 10.926694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.773167, 19.539522, 10.956793>,  <5.430295, 19.918455, 10.401555>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.773167, 19.539522, 10.956793> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.665717, 19.863195, 11.165815>,  <5.601247, 20.057400, 11.291229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.665717, 19.863195, 11.165815>,  <5.773167, 19.539522, 10.956793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.665717, 19.863195, 11.165815> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207478, -0.578368, 0.788951,
		0.940635, 0.103513, 0.323251,
		-0.268624, 0.809182, 0.522556,
		5.585129, 20.105949, 11.322582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.171813, 19.486679, 11.483708>,  <5.773167, 19.539522, 10.956793>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.171813, 19.486679, 11.483708> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.881577, 19.731567, 11.609379>,  <5.707436, 19.878500, 11.684781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.881577, 19.731567, 11.609379>,  <6.171813, 19.486679, 11.483708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.881577, 19.731567, 11.609379> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158191, -0.592741, 0.789705,
		0.669699, 0.523301, 0.526934,
		-0.725589, 0.612221, 0.314176,
		5.663900, 19.915234, 11.703631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.311319, 19.559544, 12.217868>,  <6.171813, 19.486679, 11.483708>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.311319, 19.559544, 12.217868> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.933699, 19.689806, 12.197019>,  <5.707127, 19.767963, 12.184509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.933699, 19.689806, 12.197019>,  <6.311319, 19.559544, 12.217868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.933699, 19.689806, 12.197019> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197081, -0.430331, 0.880894,
		0.264438, 0.841881, 0.470435,
		-0.944051, 0.325656, -0.052123,
		5.650484, 19.787502, 12.181381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.072126, 19.823776, 12.952683>,  <6.311319, 19.559544, 12.217868>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.072126, 19.823776, 12.952683> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.744517, 19.725861, 12.745114>,  <5.547952, 19.667110, 12.620573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.744517, 19.725861, 12.745114>,  <6.072126, 19.823776, 12.952683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.744517, 19.725861, 12.745114> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378385, -0.449435, 0.809218,
		-0.431310, 0.859119, 0.275472,
		-0.819022, -0.244789, -0.518924,
		5.498811, 19.652424, 12.589437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.383695, 19.759695, 13.423078>,  <6.072126, 19.823776, 12.952683>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.383695, 19.759695, 13.423078> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.263886, 19.553520, 13.101927>,  <5.192001, 19.429815, 12.909237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.263886, 19.553520, 13.101927>,  <5.383695, 19.759695, 13.423078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.263886, 19.553520, 13.101927> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308123, -0.744161, 0.592692,
		-0.902966, 0.424909, 0.064074,
		-0.299522, -0.515438, -0.802876,
		5.174030, 19.398890, 12.861064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.813826, 19.354706, 13.660854>,  <5.383695, 19.759695, 13.423078>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.813826, 19.354706, 13.660854> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.873865, 19.173347, 13.309422>,  <4.909889, 19.064533, 13.098563>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.873865, 19.173347, 13.309422>,  <4.813826, 19.354706, 13.660854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.873865, 19.173347, 13.309422> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248991, -0.877340, 0.410217,
		-0.956804, 0.157186, -0.244579,
		0.150098, -0.453395, -0.878580,
		4.918895, 19.037329, 13.045849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.160432, 18.985435, 13.464787>,  <4.813826, 19.354706, 13.660854>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.160432, 18.985435, 13.464787> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.486778, 18.831272, 13.292356>,  <4.682586, 18.738775, 13.188899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.486778, 18.831272, 13.292356>,  <4.160432, 18.985435, 13.464787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.486778, 18.831272, 13.292356> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184033, -0.879794, 0.438285,
		-0.548175, -0.278250, -0.788722,
		0.815866, -0.385407, -0.431074,
		4.731538, 18.715651, 13.163034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.959222, 18.331766, 13.220001>,  <4.160432, 18.985435, 13.464787>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.959222, 18.331766, 13.220001> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.358122, 18.320631, 13.247482>,  <4.597462, 18.313950, 13.263971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.358122, 18.320631, 13.247482>,  <3.959222, 18.331766, 13.220001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.358122, 18.320631, 13.247482> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050563, -0.933195, 0.355794,
		0.054209, -0.358289, -0.932035,
		0.997248, -0.027839, 0.068704,
		4.657297, 18.312279, 13.268093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.168797, 17.762478, 12.952251>,  <3.959222, 18.331766, 13.220001>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.168797, 17.762478, 12.952251> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.492115, 17.853382, 13.169511>,  <4.686106, 17.907925, 13.299867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.492115, 17.853382, 13.169511>,  <4.168797, 17.762478, 12.952251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.492115, 17.853382, 13.169511> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044110, -0.943286, 0.329037,
		0.587122, -0.242001, -0.772479,
		0.808296, 0.227259, 0.543150,
		4.734604, 17.921560, 13.332456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.707135, 17.244972, 12.861381>,  <4.168797, 17.762478, 12.952251>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.707135, 17.244972, 12.861381> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.739604, 17.431206, 13.213890>,  <4.759085, 17.542946, 13.425396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.739604, 17.431206, 13.213890>,  <4.707135, 17.244972, 12.861381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.739604, 17.431206, 13.213890> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118513, -0.882427, 0.455277,
		0.989629, 0.067487, -0.126805,
		0.081171, 0.465583, 0.881274,
		4.763955, 17.570881, 13.478272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.216210, 16.813183, 13.165896>,  <4.707135, 17.244972, 12.861381>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.216210, 16.813183, 13.165896> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.078701, 17.002855, 13.490112>,  <4.996195, 17.116659, 13.684642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.078701, 17.002855, 13.490112>,  <5.216210, 16.813183, 13.165896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.078701, 17.002855, 13.490112> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112760, -0.836056, 0.536932,
		0.932258, 0.275979, 0.233945,
		-0.343773, 0.474179, 0.810539,
		4.975569, 17.145109, 13.733274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.501506, 16.385250, 13.756104>,  <5.216210, 16.813183, 13.165896>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.501506, 16.385250, 13.756104> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.258598, 16.625290, 13.964375>,  <5.112853, 16.769314, 14.089337>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.258598, 16.625290, 13.964375>,  <5.501506, 16.385250, 13.756104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.258598, 16.625290, 13.964375> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008514, -0.660232, 0.751013,
		0.794450, 0.451635, 0.406048,
		-0.607270, 0.600100, 0.520676,
		5.076417, 16.805321, 14.120578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.750884, 16.554609, 14.555586>,  <5.501506, 16.385250, 13.756104>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.750884, 16.554609, 14.555586> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.353508, 16.587669, 14.523966>,  <5.115083, 16.607506, 14.504993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.353508, 16.587669, 14.523966>,  <5.750884, 16.554609, 14.555586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.353508, 16.587669, 14.523966> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114076, -0.765359, 0.633413,
		-0.008150, 0.638274, 0.769766,
		-0.993438, 0.082650, -0.079050,
		5.055477, 16.612465, 14.500251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.533354, 16.332960, 15.204393>,  <5.750884, 16.554609, 14.555586>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.533354, 16.332960, 15.204393> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.224692, 16.294394, 14.952916>,  <5.039495, 16.271254, 14.802030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.224692, 16.294394, 14.952916>,  <5.533354, 16.332960, 15.204393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.224692, 16.294394, 14.952916> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316648, -0.799010, 0.511191,
		-0.551619, 0.593537, 0.586029,
		-0.771654, -0.096418, -0.628692,
		4.993196, 16.265469, 14.764309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.110218, 16.798824, 15.440290>,  <5.533354, 16.332960, 15.204393>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.110218, 16.798824, 15.440290> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.423443, 16.581858, 15.318574>,  <6.611379, 16.451677, 15.245544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.423443, 16.581858, 15.318574>,  <6.110218, 16.798824, 15.440290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.423443, 16.581858, 15.318574> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489293, 0.839308, -0.236969,
		0.383930, 0.036674, 0.922634,
		0.783065, -0.542417, -0.304291,
		6.658363, 16.419132, 15.227286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.738343, 17.000319, 15.865679>,  <6.110218, 16.798824, 15.440290>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.738343, 17.000319, 15.865679> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.822058, 16.855349, 15.502395>,  <6.872288, 16.768366, 15.284424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.822058, 16.855349, 15.502395>,  <6.738343, 17.000319, 15.865679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.822058, 16.855349, 15.502395> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432977, 0.867117, -0.246251,
		0.876772, -0.341696, 0.338400,
		0.209289, -0.362425, -0.908210,
		6.884845, 16.746620, 15.229932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.377269, 17.258797, 15.690886>,  <6.738343, 17.000319, 15.865679>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.377269, 17.258797, 15.690886> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.236883, 17.134802, 15.337450>,  <7.152651, 17.060404, 15.125388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.236883, 17.134802, 15.337450>,  <7.377269, 17.258797, 15.690886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.236883, 17.134802, 15.337450> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380772, 0.814830, -0.437110,
		0.855474, -0.489857, -0.167941,
		-0.350965, -0.309989, -0.883590,
		7.131594, 17.041805, 15.072373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.915244, 17.246593, 15.195762>,  <7.377269, 17.258797, 15.690886>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.915244, 17.246593, 15.195762> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.583877, 17.279007, 14.974074>,  <7.385056, 17.298456, 14.841062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.583877, 17.279007, 14.974074>,  <7.915244, 17.246593, 15.195762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.583877, 17.279007, 14.974074> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318991, 0.881591, -0.347910,
		0.460401, -0.465005, -0.756175,
		-0.828417, 0.081035, -0.554219,
		7.335351, 17.303318, 14.807809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.072612, 17.524403, 14.478086>,  <7.915244, 17.246593, 15.195762>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.072612, 17.524403, 14.478086> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.680019, 17.598158, 14.498843>,  <7.444463, 17.642410, 14.511297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.680019, 17.598158, 14.498843>,  <8.072612, 17.524403, 14.478086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.680019, 17.598158, 14.498843> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161713, 0.942812, -0.291468,
		-0.102666, -0.277679, -0.955172,
		-0.981483, 0.184388, 0.051891,
		7.385574, 17.653475, 14.514410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.887920, 17.829021, 13.761239>,  <8.072612, 17.524403, 14.478086>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.887920, 17.829021, 13.761239> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.604189, 17.923967, 14.026723>,  <7.433950, 17.980934, 14.186013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.604189, 17.923967, 14.026723>,  <7.887920, 17.829021, 13.761239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.604189, 17.923967, 14.026723> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113764, 0.890699, -0.440128,
		-0.695637, -0.387702, -0.604795,
		-0.709328, 0.237366, 0.663710,
		7.391390, 17.995176, 14.225836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.283385, 18.064594, 13.391999>,  <7.887920, 17.829021, 13.761239>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.283385, 18.064594, 13.391999> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.274330, 18.208817, 13.764984>,  <7.268897, 18.295351, 13.988775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.274330, 18.208817, 13.764984>,  <7.283385, 18.064594, 13.391999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.274330, 18.208817, 13.764984> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074820, 0.929475, -0.361218,
		-0.996940, -0.077943, 0.005936,
		-0.022637, 0.360557, 0.932462,
		7.267539, 18.316984, 14.044723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.808374, 18.625242, 13.253788>,  <7.283385, 18.064594, 13.391999>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.808374, 18.625242, 13.253788> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.948297, 18.692719, 13.622392>,  <7.032250, 18.733204, 13.843554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.948297, 18.692719, 13.622392>,  <6.808374, 18.625242, 13.253788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.948297, 18.692719, 13.622392> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172221, 0.978469, -0.113743,
		-0.920856, -0.118915, 0.371326,
		0.349805, 0.168691, 0.921510,
		7.053238, 18.743326, 13.898845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.315085, 18.982986, 13.612618>,  <6.808374, 18.625242, 13.253788>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.315085, 18.982986, 13.612618> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.655421, 19.055700, 13.809810>,  <6.859622, 19.099329, 13.928124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.655421, 19.055700, 13.809810>,  <6.315085, 18.982986, 13.612618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.655421, 19.055700, 13.809810> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155803, 0.983334, -0.093695,
		-0.501795, 0.002912, 0.864982,
		0.850839, 0.181783, 0.492979,
		6.910673, 19.110235, 13.957704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.100926, 19.562397, 13.984939>,  <6.315085, 18.982986, 13.612618>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.100926, 19.562397, 13.984939> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.500449, 19.544928, 13.976226>,  <6.740163, 19.534447, 13.970998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.500449, 19.544928, 13.976226>,  <6.100926, 19.562397, 13.984939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.500449, 19.544928, 13.976226> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039252, 0.984102, -0.173211,
		0.029001, 0.172149, 0.984644,
		0.998808, -0.043673, -0.021783,
		6.800092, 19.531826, 13.969691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.388338, 20.035408, 14.432467>,  <6.100926, 19.562397, 13.984939>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.388338, 20.035408, 14.432467> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.708257, 19.994993, 14.195786>,  <6.900208, 19.970745, 14.053776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.708257, 19.994993, 14.195786>,  <6.388338, 20.035408, 14.432467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.708257, 19.994993, 14.195786> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026047, 0.978963, -0.202368,
		0.599704, 0.177266, 0.780341,
		0.799798, -0.101035, -0.591705,
		6.948196, 19.964684, 14.018274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.848393, 20.592211, 14.679196>,  <6.388338, 20.035408, 14.432467>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.848393, 20.592211, 14.679196> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.917932, 20.491520, 14.298374>,  <6.959654, 20.431105, 14.069880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.917932, 20.491520, 14.298374>,  <6.848393, 20.592211, 14.679196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.917932, 20.491520, 14.298374> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126017, 0.964516, -0.232012,
		0.976677, -0.079641, 0.199398,
		0.173845, -0.251728, -0.952056,
		6.970085, 20.416002, 14.012757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.464309, 20.949602, 14.459566>,  <6.848393, 20.592211, 14.679196>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.464309, 20.949602, 14.459566> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.310065, 20.841417, 14.106713>,  <7.217518, 20.776506, 13.895001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.310065, 20.841417, 14.106713>,  <7.464309, 20.949602, 14.459566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.310065, 20.841417, 14.106713> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057464, 0.947177, -0.315522,
		0.920871, -0.172359, -0.349699,
		-0.385610, -0.270460, -0.882132,
		7.194382, 20.760279, 13.842073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.895982, 21.198301, 13.971377>,  <7.464309, 20.949602, 14.459566>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.895982, 21.198301, 13.971377> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.563899, 21.139210, 13.756368>,  <7.364649, 21.103756, 13.627362>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.563899, 21.139210, 13.756368>,  <7.895982, 21.198301, 13.971377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.563899, 21.139210, 13.756368> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070118, 0.928916, -0.363592,
		0.553027, -0.339547, -0.760835,
		-0.830208, -0.147728, -0.537524,
		7.314836, 21.094891, 13.595111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.033693, 21.559267, 13.347014>,  <7.895982, 21.198301, 13.971377>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.033693, 21.559267, 13.347014> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.637301, 21.505909, 13.341916>,  <7.399466, 21.473894, 13.338858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.637301, 21.505909, 13.341916>,  <8.033693, 21.559267, 13.347014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.637301, 21.505909, 13.341916> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118908, 0.919225, -0.375347,
		0.061785, -0.370446, -0.926797,
		-0.990981, -0.133395, -0.012745,
		7.340007, 21.465891, 13.338093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.773932, 21.685534, 12.627029>,  <8.033693, 21.559267, 13.347014>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.773932, 21.685534, 12.627029> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.437916, 21.724155, 12.840574>,  <7.236306, 21.747328, 12.968701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.437916, 21.724155, 12.840574>,  <7.773932, 21.685534, 12.627029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.437916, 21.724155, 12.840574> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153809, 0.901275, -0.405027,
		-0.520265, -0.422352, -0.742256,
		-0.840040, 0.096555, 0.533863,
		7.185904, 21.753122, 13.000733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.252933, 21.937437, 12.184237>,  <7.773932, 21.685534, 12.627029>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.252933, 21.937437, 12.184237> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.208141, 22.041941, 12.567737>,  <7.181266, 22.104643, 12.797837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.208141, 22.041941, 12.567737>,  <7.252933, 21.937437, 12.184237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.208141, 22.041941, 12.567737> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118589, 0.954411, -0.273928,
		-0.986609, -0.144371, -0.075891,
		-0.111978, 0.261260, 0.958751,
		7.174548, 22.120319, 12.855362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.735899, 22.341669, 12.109550>,  <7.252933, 21.937437, 12.184237>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.735899, 22.341669, 12.109550> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.903374, 22.425928, 12.462895>,  <7.003859, 22.476484, 12.674902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.903374, 22.425928, 12.462895>,  <6.735899, 22.341669, 12.109550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.903374, 22.425928, 12.462895> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154293, 0.975084, -0.159389,
		-0.894927, -0.069562, 0.440757,
		0.418687, 0.210647, 0.883362,
		7.028980, 22.489122, 12.727904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.240928, 22.872040, 12.308294>,  <6.735899, 22.341669, 12.109550>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.240928, 22.872040, 12.308294> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.564167, 22.925007, 12.537883>,  <6.758111, 22.956787, 12.675635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.564167, 22.925007, 12.537883>,  <6.240928, 22.872040, 12.308294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.564167, 22.925007, 12.537883> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205176, 0.976660, 0.063552,
		-0.552159, -0.169121, 0.816406,
		0.808099, 0.132416, 0.573971,
		6.806597, 22.964731, 12.710074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.105004, 23.329252, 12.895681>,  <6.240928, 22.872040, 12.308294>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.105004, 23.329252, 12.895681> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.491231, 23.352348, 12.794214>,  <6.722967, 23.366207, 12.733335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.491231, 23.352348, 12.794214>,  <6.105004, 23.329252, 12.895681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.491231, 23.352348, 12.794214> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090192, 0.988884, -0.118211,
		0.244021, 0.137020, 0.960041,
		0.965567, 0.057742, -0.253667,
		6.780901, 23.369671, 12.718114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.279206, 23.876705, 13.349666>,  <6.105004, 23.329252, 12.895681>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.279206, 23.876705, 13.349666> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.535498, 23.833862, 13.045562>,  <6.689273, 23.808157, 12.863100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.535498, 23.833862, 13.045562>,  <6.279206, 23.876705, 13.349666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.535498, 23.833862, 13.045562> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149661, 0.988650, -0.013152,
		0.753039, -0.105354, 0.649487,
		0.640730, -0.107108, -0.760259,
		6.727716, 23.801729, 12.817484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<17.381937, 17.246675, 28.202011> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.211546, 16.947805, 27.997942>,  <17.109312, 16.768484, 27.875502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.211546, 16.947805, 27.997942>,  <17.381937, 17.246675, 28.202011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.211546, 16.947805, 27.997942> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781507, 0.019768, 0.623582,
		-0.455839, 0.664335, -0.592343,
		-0.425977, -0.747174, -0.510172,
		17.083754, 16.723654, 27.844891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.722464, 17.486401, 27.980537>,  <17.381937, 17.246675, 28.202011>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.722464, 17.486401, 27.980537> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.704971, 17.087206, 27.998898>,  <16.694475, 16.847689, 28.009914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.704971, 17.087206, 27.998898>,  <16.722464, 17.486401, 27.980537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.704971, 17.087206, 27.998898> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831774, 0.061820, 0.551661,
		-0.553389, -0.014053, -0.832804,
		-0.043732, -0.997988, 0.045899,
		16.691853, 16.787809, 28.012667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.020733, 17.329180, 28.120592>,  <16.722464, 17.486401, 27.980537>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.020733, 17.329180, 28.120592> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.200703, 16.981714, 28.203527>,  <16.308685, 16.773235, 28.253288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.200703, 16.981714, 28.203527>,  <16.020733, 17.329180, 28.120592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.200703, 16.981714, 28.203527> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741903, -0.234318, 0.628232,
		-0.497139, -0.436483, -0.749890,
		0.449925, -0.868664, 0.207339,
		16.335680, 16.721115, 28.265730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.548360, 16.771065, 28.044842>,  <16.020733, 17.329180, 28.120592>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.548360, 16.771065, 28.044842> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.826802, 16.642679, 28.301720>,  <15.993868, 16.565647, 28.455847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.826802, 16.642679, 28.301720>,  <15.548360, 16.771065, 28.044842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.826802, 16.642679, 28.301720> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713841, -0.213994, 0.666812,
		-0.076596, -0.922599, -0.378079,
		0.696106, -0.320963, 0.642198,
		16.035635, 16.546389, 28.494379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.374823, 16.135008, 28.310154>,  <15.548360, 16.771065, 28.044842>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.374823, 16.135008, 28.310154> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.624372, 16.267349, 28.593369>,  <15.774101, 16.346754, 28.763298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.624372, 16.267349, 28.593369>,  <15.374823, 16.135008, 28.310154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.624372, 16.267349, 28.593369> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674002, -0.230822, 0.701742,
		0.395606, -0.915017, 0.078994,
		0.623873, 0.330856, 0.708038,
		15.811533, 16.366606, 28.805780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.342773, 15.654096, 28.798651>,  <15.374823, 16.135008, 28.310154>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.342773, 15.654096, 28.798651> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.489676, 15.969838, 28.995440>,  <15.577819, 16.159285, 29.113512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.489676, 15.969838, 28.995440>,  <15.342773, 15.654096, 28.798651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.489676, 15.969838, 28.995440> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697959, -0.115737, 0.706724,
		0.614797, -0.602927, 0.508433,
		0.367258, 0.789357, 0.491972,
		15.599854, 16.206646, 29.143032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.562632, 15.429268, 29.511284>,  <15.342773, 15.654096, 28.798651>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.562632, 15.429268, 29.511284> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.528073, 15.824922, 29.558865>,  <15.507339, 16.062313, 29.587414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.528073, 15.824922, 29.558865>,  <15.562632, 15.429268, 29.511284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.528073, 15.824922, 29.558865> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581788, -0.147016, 0.799943,
		0.808739, -0.000093, 0.588168,
		-0.086396, 0.989134, 0.118952,
		15.502154, 16.121662, 29.594551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.537628, 15.585937, 30.210585>,  <15.562632, 15.429268, 29.511284>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.537628, 15.585937, 30.210585> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.375624, 15.926008, 30.076027>,  <15.278420, 16.130051, 29.995293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.375624, 15.926008, 30.076027>,  <15.537628, 15.585937, 30.210585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.375624, 15.926008, 30.076027> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471983, 0.120701, 0.873306,
		0.783069, 0.512472, 0.352384,
		-0.405012, 0.850179, -0.336395,
		15.254120, 16.181063, 29.975109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.441300, 15.980968, 30.804800>,  <15.537628, 15.585937, 30.210585>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.441300, 15.980968, 30.804800> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.209906, 16.168242, 30.537621>,  <15.071069, 16.280605, 30.377314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.209906, 16.168242, 30.537621>,  <15.441300, 15.980968, 30.804800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.209906, 16.168242, 30.537621> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743110, 0.035183, 0.668243,
		0.336362, 0.882930, 0.327560,
		-0.578488, 0.468185, -0.667948,
		15.036360, 16.308697, 30.337236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.155103, 16.586817, 31.178553>,  <15.441300, 15.980968, 30.804800>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.155103, 16.586817, 31.178553> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.932760, 16.461649, 30.870499>,  <14.799355, 16.386549, 30.685667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.932760, 16.461649, 30.870499>,  <15.155103, 16.586817, 31.178553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.932760, 16.461649, 30.870499> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826096, 0.104645, 0.553729,
		-0.092683, 0.943997, -0.316669,
		-0.555856, -0.312920, -0.770133,
		14.766004, 16.367773, 30.639460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.720449, 17.156467, 31.103998>,  <15.155103, 16.586817, 31.178553>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.720449, 17.156467, 31.103998> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.552846, 16.832981, 30.938875>,  <14.452284, 16.638889, 30.839802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.552846, 16.832981, 30.938875>,  <14.720449, 17.156467, 31.103998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.552846, 16.832981, 30.938875> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815503, 0.135285, 0.562718,
		-0.399233, 0.572430, -0.716196,
		-0.419008, -0.808716, -0.412808,
		14.427144, 16.590366, 30.815033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.984365, 17.322674, 31.056866>,  <14.720449, 17.156467, 31.103998>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.984365, 17.322674, 31.056866> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.966365, 16.927122, 31.000172>,  <13.955565, 16.689791, 30.966154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.966365, 16.927122, 31.000172>,  <13.984365, 17.322674, 31.056866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.966365, 16.927122, 31.000172> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801914, -0.048853, 0.595439,
		-0.595743, 0.140455, -0.790799,
		-0.045000, -0.988881, -0.141737,
		13.952865, 16.630457, 30.957651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.417164, 17.780399, 31.460327>,  <13.984365, 17.322674, 31.056866>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.417164, 17.780399, 31.460327> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.264955, 18.148142, 31.500296>,  <13.173629, 18.368788, 31.524277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.264955, 18.148142, 31.500296>,  <13.417164, 17.780399, 31.460327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.264955, 18.148142, 31.500296> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652143, -0.343381, 0.675869,
		0.655676, 0.192021, 0.730217,
		-0.380524, 0.919357, 0.099922,
		13.150798, 18.423948, 31.530272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.420443, 17.827629, 32.174744>,  <13.417164, 17.780399, 31.460327>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.420443, 17.827629, 32.174744> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.166146, 18.081774, 31.999405>,  <13.013569, 18.234261, 31.894201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.166146, 18.081774, 31.999405>,  <13.420443, 17.827629, 32.174744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.166146, 18.081774, 31.999405> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724828, -0.296088, 0.622059,
		0.265443, 0.713195, 0.648763,
		-0.635740, 0.635362, -0.438349,
		12.975425, 18.272383, 31.867901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.755431, 18.161716, 32.321636>,  <13.420443, 17.827629, 32.174744>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.755431, 18.161716, 32.321636> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.444706, 18.402319, 32.247066>,  <12.258270, 18.546680, 32.202324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.444706, 18.402319, 32.247066>,  <12.755431, 18.161716, 32.321636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.444706, 18.402319, 32.247066> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270055, 0.050770, -0.961505,
		-0.568886, -0.797254, -0.201878,
		-0.776814, 0.601505, -0.186420,
		12.211662, 18.582771, 32.191139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.303105, 17.847425, 31.834530>,  <12.755431, 18.161716, 32.321636>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.303105, 17.847425, 31.834530> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.221215, 18.237373, 31.799400>,  <12.172081, 18.471342, 31.778322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.221215, 18.237373, 31.799400>,  <12.303105, 17.847425, 31.834530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.221215, 18.237373, 31.799400> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171989, -0.052501, -0.983699,
		-0.963591, -0.216494, -0.156919,
		-0.204726, 0.974871, -0.087824,
		12.159798, 18.529835, 31.773054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.849353, 17.947615, 31.250443>,  <12.303105, 17.847425, 31.834530>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.849353, 17.947615, 31.250443> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.010952, 18.308331, 31.311838>,  <12.107911, 18.524761, 31.348675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.010952, 18.308331, 31.311838>,  <11.849353, 17.947615, 31.250443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.010952, 18.308331, 31.311838> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013312, 0.161979, -0.986705,
		-0.914663, 0.400670, 0.053435,
		0.403998, 0.901791, 0.153489,
		12.132152, 18.578867, 31.357885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.542474, 18.423574, 30.706259>,  <11.849353, 17.947615, 31.250443>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.542474, 18.423574, 30.706259> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.868964, 18.609779, 30.843122>,  <12.064858, 18.721502, 30.925241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.868964, 18.609779, 30.843122>,  <11.542474, 18.423574, 30.706259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.868964, 18.609779, 30.843122> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226592, 0.286843, -0.930794,
		-0.531441, 0.837269, 0.128648,
		0.816227, 0.465511, 0.342159,
		12.113832, 18.749434, 30.945770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.598515, 19.079042, 30.196482>,  <11.542474, 18.423574, 30.706259>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.598515, 19.079042, 30.196482> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.953661, 19.044001, 30.377155>,  <12.166749, 19.022976, 30.485559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.953661, 19.044001, 30.377155>,  <11.598515, 19.079042, 30.196482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.953661, 19.044001, 30.377155> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457111, 0.279698, -0.844286,
		-0.052371, 0.956083, 0.288380,
		0.887867, -0.087606, 0.451684,
		12.220021, 19.017719, 30.512661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.930028, 19.725456, 30.101862>,  <11.598515, 19.079042, 30.196482>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.930028, 19.725456, 30.101862> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.177356, 19.413919, 30.143984>,  <12.325752, 19.226997, 30.169256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.177356, 19.413919, 30.143984>,  <11.930028, 19.725456, 30.101862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.177356, 19.413919, 30.143984> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247140, 0.065492, -0.966764,
		0.746059, 0.623793, 0.232977,
		0.618319, -0.778841, 0.105304,
		12.362851, 19.180267, 30.175575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.549632, 19.897921, 29.617531>,  <11.930028, 19.725456, 30.101862>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.549632, 19.897921, 29.617531> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.585370, 19.513681, 29.722811>,  <12.606812, 19.283138, 29.785978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.585370, 19.513681, 29.722811>,  <12.549632, 19.897921, 29.617531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.585370, 19.513681, 29.722811> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289524, -0.227796, -0.929669,
		0.952992, 0.159263, 0.257763,
		0.089344, -0.960596, 0.263198,
		12.612173, 19.225502, 29.801769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.168457, 19.709333, 29.383816>,  <12.549632, 19.897921, 29.617531>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.168457, 19.709333, 29.383816> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.941788, 19.381218, 29.414810>,  <12.805786, 19.184349, 29.433407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.941788, 19.381218, 29.414810>,  <13.168457, 19.709333, 29.383816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.941788, 19.381218, 29.414810> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113137, -0.170616, -0.978821,
		0.816138, -0.545906, 0.189488,
		-0.566674, -0.820291, 0.077484,
		12.771786, 19.135130, 29.438055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.544983, 19.155199, 29.084902>,  <13.168457, 19.709333, 29.383816>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.544983, 19.155199, 29.084902> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.180704, 18.990580, 29.070707>,  <12.962137, 18.891808, 29.062191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.180704, 18.990580, 29.070707>,  <13.544983, 19.155199, 29.084902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.180704, 18.990580, 29.070707> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228697, -0.430796, -0.872990,
		0.343991, -0.803145, 0.486445,
		-0.910696, -0.411549, -0.035487,
		12.907495, 18.867115, 29.060061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.618801, 18.386215, 28.875420>,  <13.544983, 19.155199, 29.084902>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.618801, 18.386215, 28.875420> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.240733, 18.498953, 28.809427>,  <13.013892, 18.566595, 28.769833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.240733, 18.498953, 28.809427>,  <13.618801, 18.386215, 28.875420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.240733, 18.498953, 28.809427> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064396, -0.334412, -0.940224,
		-0.320154, -0.899300, 0.297929,
		-0.945175, 0.281831, -0.164975,
		12.957182, 18.583506, 28.759933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.202512, 17.742878, 28.509495>,  <13.618801, 18.386215, 28.875420>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.202512, 17.742878, 28.509495> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.032627, 18.091251, 28.410629>,  <12.930696, 18.300276, 28.351311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.032627, 18.091251, 28.410629>,  <13.202512, 17.742878, 28.509495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.032627, 18.091251, 28.410629> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018588, -0.264564, -0.964189,
		-0.905138, -0.414097, 0.096175,
		-0.424712, 0.870936, -0.247165,
		12.905213, 18.352531, 28.336479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.546136, 17.650515, 28.087673>,  <13.202512, 17.742878, 28.509495>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.546136, 17.650515, 28.087673> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.698699, 18.006821, 27.988829>,  <12.790236, 18.220604, 27.929522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.698699, 18.006821, 27.988829>,  <12.546136, 17.650515, 28.087673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.698699, 18.006821, 27.988829> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106557, -0.223170, -0.968938,
		-0.918245, 0.395892, 0.009799,
		0.381408, 0.890766, -0.247110,
		12.813122, 18.274050, 27.914696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.257853, 17.724020, 27.519007>,  <12.546136, 17.650515, 28.087673>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.257853, 17.724020, 27.519007> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.519425, 18.026503, 27.509857>,  <12.676369, 18.207993, 27.504368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.519425, 18.026503, 27.509857>,  <12.257853, 17.724020, 27.519007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.519425, 18.026503, 27.509857> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250635, -0.245069, -0.936549,
		-0.713831, 0.606706, -0.349790,
		0.653933, 0.756207, -0.022876,
		12.715605, 18.253365, 27.502995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.172341, 18.005470, 26.826176>,  <12.257853, 17.724020, 27.519007>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.172341, 18.005470, 26.826176> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.531000, 18.125910, 26.956015>,  <12.746196, 18.198174, 27.033918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.531000, 18.125910, 26.956015>,  <12.172341, 18.005470, 26.826176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.531000, 18.125910, 26.956015> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381450, -0.153168, -0.911611,
		-0.224768, 0.941211, -0.252192,
		0.896647, 0.301100, 0.324597,
		12.799994, 18.216240, 27.053394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.649626, 18.297478, 26.425379>,  <12.172341, 18.005470, 26.826176>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.649626, 18.297478, 26.425379> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.327714, 18.089008, 26.311745>,  <11.134566, 17.963926, 26.243565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.327714, 18.089008, 26.311745>,  <11.649626, 18.297478, 26.425379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.327714, 18.089008, 26.311745> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414997, 0.151845, 0.897062,
		-0.424389, 0.839833, -0.338488,
		-0.804780, -0.521175, -0.284086,
		11.086280, 17.932655, 26.226519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.004601, 18.702362, 26.681820>,  <11.649626, 18.297478, 26.425379>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.004601, 18.702362, 26.681820> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.910173, 18.324415, 26.591049>,  <10.853518, 18.097647, 26.536587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.910173, 18.324415, 26.591049>,  <11.004601, 18.702362, 26.681820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.910173, 18.324415, 26.591049> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625614, -0.030913, 0.779520,
		-0.743559, 0.325990, -0.583825,
		-0.236068, -0.944868, -0.226929,
		10.839354, 18.040955, 26.522970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.293992, 18.666279, 26.857855>,  <11.004601, 18.702362, 26.681820>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.293992, 18.666279, 26.857855> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.382252, 18.278713, 26.813095>,  <10.435207, 18.046173, 26.786240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.382252, 18.278713, 26.813095>,  <10.293992, 18.666279, 26.857855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.382252, 18.278713, 26.813095> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402089, -0.194886, 0.894620,
		-0.888617, -0.152402, -0.432590,
		0.220648, -0.968913, -0.111900,
		10.448446, 17.988039, 26.779526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.641590, 18.256746, 26.949768>,  <10.293992, 18.666279, 26.857855>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.641590, 18.256746, 26.949768> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.929840, 17.999584, 27.053591>,  <10.102790, 17.845287, 27.115885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.929840, 17.999584, 27.053591>,  <9.641590, 18.256746, 26.949768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.929840, 17.999584, 27.053591> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495886, -0.216289, 0.841021,
		-0.484559, -0.734771, -0.474672,
		0.720624, -0.642908, 0.259558,
		10.146028, 17.806711, 27.131458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.266147, 17.724779, 27.199081>,  <9.641590, 18.256746, 26.949768>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.266147, 17.724779, 27.199081> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.624728, 17.637024, 27.353090>,  <9.839877, 17.584372, 27.445496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.624728, 17.637024, 27.353090>,  <9.266147, 17.724779, 27.199081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.624728, 17.637024, 27.353090> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422647, -0.162150, 0.891671,
		-0.133167, -0.962074, -0.238074,
		0.896458, -0.219363, 0.385025,
		9.893664, 17.571209, 27.468596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.269897, 17.086351, 27.433908>,  <9.266147, 17.724779, 27.199081>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.269897, 17.086351, 27.433908> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.531990, 17.280218, 27.665691>,  <9.689245, 17.396538, 27.804762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.531990, 17.280218, 27.665691>,  <9.269897, 17.086351, 27.433908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.531990, 17.280218, 27.665691> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596315, -0.139070, 0.790612,
		0.463769, -0.863572, 0.197891,
		0.655230, 0.484667, 0.579458,
		9.728559, 17.425619, 27.839529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.292273, 16.712652, 28.103130>,  <9.269897, 17.086351, 27.433908>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.292273, 16.712652, 28.103130> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.464725, 17.061275, 28.196524>,  <9.568197, 17.270449, 28.252560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.464725, 17.061275, 28.196524>,  <9.292273, 16.712652, 28.103130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.464725, 17.061275, 28.196524> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366131, -0.067521, 0.928111,
		0.824666, -0.485624, 0.289993,
		0.431132, 0.871556, 0.233484,
		9.594065, 17.322742, 28.266569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.639453, 16.094944, 28.427000>,  <9.292273, 16.712652, 28.103130>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.639453, 16.094944, 28.427000> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.565042, 15.701928, 28.428476>,  <9.520395, 15.466119, 28.429361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.565042, 15.701928, 28.428476>,  <9.639453, 16.094944, 28.427000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.565042, 15.701928, 28.428476> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661483, -0.128016, -0.738953,
		0.726522, -0.135026, 0.673747,
		-0.186028, -0.982538, 0.003689,
		9.509233, 15.407166, 28.429583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.293603, 15.718720, 28.468082>,  <9.639453, 16.094944, 28.427000>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.293603, 15.718720, 28.468082> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.023341, 15.456117, 28.333925>,  <9.861184, 15.298554, 28.253431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.023341, 15.456117, 28.333925>,  <10.293603, 15.718720, 28.468082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.023341, 15.456117, 28.333925> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642130, -0.300582, -0.705209,
		0.362163, -0.691842, 0.624653,
		-0.675653, -0.656509, -0.335393,
		9.820645, 15.259164, 28.233307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.717578, 15.248782, 28.269835>,  <10.293603, 15.718720, 28.468082>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.717578, 15.248782, 28.269835> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.382577, 15.149474, 28.075125>,  <10.181576, 15.089890, 27.958298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.382577, 15.149474, 28.075125>,  <10.717578, 15.248782, 28.269835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.382577, 15.149474, 28.075125> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546077, -0.348124, -0.761977,
		0.019718, -0.903975, 0.427130,
		-0.837503, -0.248271, -0.486776,
		10.131326, 15.074993, 27.929092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.867822, 14.666531, 27.870108>,  <10.717578, 15.248782, 28.269835>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.867822, 14.666531, 27.870108> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.541817, 14.794866, 27.677103>,  <10.346214, 14.871867, 27.561300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.541817, 14.794866, 27.677103>,  <10.867822, 14.666531, 27.870108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.541817, 14.794866, 27.677103> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357932, -0.376091, -0.854658,
		-0.455673, -0.869264, 0.191682,
		-0.815013, 0.320836, -0.482512,
		10.297313, 14.891117, 27.532349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.817627, 14.258845, 27.336994>,  <10.867822, 14.666531, 27.870108>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.817627, 14.258845, 27.336994> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.551092, 14.537292, 27.230101>,  <10.391171, 14.704361, 27.165964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.551092, 14.537292, 27.230101>,  <10.817627, 14.258845, 27.336994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.551092, 14.537292, 27.230101> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190177, -0.187881, -0.963604,
		-0.720991, -0.692907, -0.007194,
		-0.666336, 0.696118, -0.267235,
		10.351192, 14.746128, 27.149931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.251341, 14.022202, 26.848976>,  <10.817627, 14.258845, 27.336994>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.251341, 14.022202, 26.848976> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.320798, 14.412598, 26.796379>,  <10.362473, 14.646835, 26.764822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.320798, 14.412598, 26.796379>,  <10.251341, 14.022202, 26.848976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.320798, 14.412598, 26.796379> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244537, -0.172069, -0.954251,
		-0.953965, 0.133544, -0.268544,
		0.173643, 0.975991, -0.131491,
		10.372890, 14.705395, 26.756931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.906605, 14.169009, 26.228226>,  <10.251341, 14.022202, 26.848976>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.906605, 14.169009, 26.228226> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.164802, 14.473422, 26.254059>,  <10.319719, 14.656070, 26.269558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.164802, 14.473422, 26.254059>,  <9.906605, 14.169009, 26.228226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.164802, 14.473422, 26.254059> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314681, -0.187950, -0.930404,
		-0.695928, 0.620891, -0.360802,
		0.645492, 0.761032, 0.064583,
		10.358449, 14.701732, 26.273434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<12.680616, 13.822013, 30.708023> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.836900, 14.184165, 30.774519>,  <12.930670, 14.401456, 30.814417>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.836900, 14.184165, 30.774519>,  <12.680616, 13.822013, 30.708023>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.836900, 14.184165, 30.774519> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411374, -0.010178, -0.911410,
		-0.823480, 0.424482, -0.376426,
		0.390708, 0.905379, 0.166239,
		12.954112, 14.455779, 30.824390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.601714, 14.277802, 30.161789>,  <12.680616, 13.822013, 30.708023>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.601714, 14.277802, 30.161789> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.946204, 14.377585, 30.338903>,  <13.152898, 14.437456, 30.445173>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.946204, 14.377585, 30.338903>,  <12.601714, 14.277802, 30.161789>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.946204, 14.377585, 30.338903> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478600, -0.104981, -0.871734,
		-0.170979, 0.962678, -0.209804,
		0.861225, 0.249460, 0.442788,
		13.204572, 14.452423, 30.471741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.889873, 14.667090, 29.697857>,  <12.601714, 14.277802, 30.161789>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.889873, 14.667090, 29.697857> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.200778, 14.541325, 29.915850>,  <13.387321, 14.465865, 30.046646>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.200778, 14.541325, 29.915850>,  <12.889873, 14.667090, 29.697857>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.200778, 14.541325, 29.915850> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540992, -0.108259, -0.834031,
		0.321230, 0.943093, 0.085950,
		0.777264, -0.314413, 0.544982,
		13.433957, 14.447001, 30.079344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.483293, 14.848185, 29.443052>,  <12.889873, 14.667090, 29.697857>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.483293, 14.848185, 29.443052> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.639864, 14.554778, 29.665310>,  <13.733807, 14.378735, 29.798664>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.639864, 14.554778, 29.665310>,  <13.483293, 14.848185, 29.443052>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.639864, 14.554778, 29.665310> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591324, -0.262150, -0.762636,
		0.705067, 0.627083, 0.331132,
		0.391429, -0.733515, 0.555642,
		13.757293, 14.334723, 29.832003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.188513, 14.890725, 29.431692>,  <13.483293, 14.848185, 29.443052>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.188513, 14.890725, 29.431692> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.097791, 14.514402, 29.532442>,  <14.043358, 14.288609, 29.592892>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.097791, 14.514402, 29.532442>,  <14.188513, 14.890725, 29.431692>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.097791, 14.514402, 29.532442> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577848, -0.338164, -0.742790,
		0.783997, -0.022923, 0.620341,
		-0.226804, -0.940808, 0.251874,
		14.029749, 14.232160, 29.608004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.757400, 14.625382, 29.093992>,  <14.188513, 14.890725, 29.431692>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.757400, 14.625382, 29.093992> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.519289, 14.319095, 29.191414>,  <14.376423, 14.135322, 29.249866>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.519289, 14.319095, 29.191414>,  <14.757400, 14.625382, 29.093992>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.519289, 14.319095, 29.191414> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399685, -0.545120, -0.736950,
		0.697063, -0.341345, 0.630545,
		-0.595277, -0.765720, 0.243552,
		14.340706, 14.089378, 29.264479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.183315, 14.100390, 29.047396>,  <14.757400, 14.625382, 29.093992>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.183315, 14.100390, 29.047396> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.825962, 13.924005, 29.012947>,  <14.611550, 13.818173, 28.992279>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.825962, 13.924005, 29.012947>,  <15.183315, 14.100390, 29.047396>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.825962, 13.924005, 29.012947> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322722, -0.496444, -0.805849,
		0.312597, -0.747725, 0.585824,
		-0.893383, -0.440964, -0.086121,
		14.557947, 13.791716, 28.987110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.272069, 13.319595, 29.083622>,  <15.183315, 14.100390, 29.047396>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.272069, 13.319595, 29.083622> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.941242, 13.418862, 28.881882>,  <14.742746, 13.478423, 28.760838>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.941242, 13.418862, 28.881882>,  <15.272069, 13.319595, 29.083622>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.941242, 13.418862, 28.881882> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288027, -0.583408, -0.759392,
		-0.482698, -0.773336, 0.411040,
		-0.827069, 0.248166, -0.504351,
		14.693122, 13.493313, 28.730576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.070560, 12.741972, 28.678236>,  <15.272069, 13.319595, 29.083622>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.070560, 12.741972, 28.678236> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.873626, 13.040230, 28.498627>,  <14.755466, 13.219185, 28.390862>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.873626, 13.040230, 28.498627>,  <15.070560, 12.741972, 28.678236>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.873626, 13.040230, 28.498627> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158471, -0.430464, -0.888587,
		-0.855859, -0.508639, 0.093769,
		-0.492334, 0.745645, -0.449021,
		14.725925, 13.263924, 28.363920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.653739, 12.424214, 28.094809>,  <15.070560, 12.741972, 28.678236>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.653739, 12.424214, 28.094809> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.703318, 12.810826, 28.004959>,  <14.733065, 13.042793, 27.951050>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.703318, 12.810826, 28.004959>,  <14.653739, 12.424214, 28.094809>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.703318, 12.810826, 28.004959> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285707, -0.251546, -0.924714,
		-0.950268, 0.050437, -0.307322,
		0.123946, 0.966530, -0.224626,
		14.740501, 13.100785, 27.937571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.343293, 12.556205, 27.433231>,  <14.653739, 12.424214, 28.094809>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.343293, 12.556205, 27.433231> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.618153, 12.835445, 27.513710>,  <14.783069, 13.002990, 27.561996>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.618153, 12.835445, 27.513710>,  <14.343293, 12.556205, 27.433231>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.618153, 12.835445, 27.513710> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193839, 0.090728, -0.976829,
		-0.700180, 0.710227, -0.072976,
		0.687149, 0.698102, 0.201195,
		14.824297, 13.044876, 27.574068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.095751, 13.041065, 27.007843>,  <14.343293, 12.556205, 27.433231>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.095751, 13.041065, 27.007843> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.478454, 13.108482, 27.102678>,  <14.708076, 13.148932, 27.159578>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.478454, 13.108482, 27.102678>,  <14.095751, 13.041065, 27.007843>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.478454, 13.108482, 27.102678> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215351, 0.137519, -0.966805,
		-0.195552, 0.976054, 0.095276,
		0.956757, 0.168542, 0.237087,
		14.765481, 13.159045, 27.173805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.501555, 13.377609, 27.334248>,  <14.095751, 13.041065, 27.007843>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.501555, 13.377609, 27.334248> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.124017, 13.363919, 27.202805>,  <12.897493, 13.355705, 27.123940>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.124017, 13.363919, 27.202805>,  <13.501555, 13.377609, 27.334248>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.124017, 13.363919, 27.202805> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324993, 0.275113, 0.904817,
		0.059437, 0.960803, -0.270787,
		-0.943847, -0.034224, -0.328606,
		12.840862, 13.353652, 27.104223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.081434, 13.866320, 27.716969>,  <13.501555, 13.377609, 27.334248>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.081434, 13.866320, 27.716969> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.780312, 13.638889, 27.584301>,  <12.599638, 13.502431, 27.504700>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.780312, 13.638889, 27.584301>,  <13.081434, 13.866320, 27.716969>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.780312, 13.638889, 27.584301> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444686, 0.067786, 0.893118,
		-0.485322, 0.819834, -0.303867,
		-0.752806, -0.568575, -0.331671,
		12.554470, 13.468317, 27.484800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.450516, 14.206114, 27.943415>,  <13.081434, 13.866320, 27.716969>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.450516, 14.206114, 27.943415> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.342932, 13.830772, 27.856556>,  <12.278381, 13.605568, 27.804441>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.342932, 13.830772, 27.856556>,  <12.450516, 14.206114, 27.943415>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.342932, 13.830772, 27.856556> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567137, -0.027929, 0.823150,
		-0.778471, 0.344546, -0.524663,
		-0.268960, -0.938354, -0.217147,
		12.262244, 13.549266, 27.791412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.691128, 14.171464, 28.078388>,  <12.450516, 14.206114, 27.943415>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.691128, 14.171464, 28.078388> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.832502, 13.797280, 28.078354>,  <11.917328, 13.572770, 28.078333>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.832502, 13.797280, 28.078354>,  <11.691128, 14.171464, 28.078388>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.832502, 13.797280, 28.078354> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501258, -0.189464, 0.844300,
		-0.789824, -0.298364, -0.535870,
		0.353438, -0.935458, -0.000086,
		11.938534, 13.516643, 28.078329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.058013, 13.697828, 28.118769>,  <11.691128, 14.171464, 28.078388>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.058013, 13.697828, 28.118769> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.361128, 13.487981, 28.273962>,  <11.542997, 13.362072, 28.367079>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.361128, 13.487981, 28.273962>,  <11.058013, 13.697828, 28.118769>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.361128, 13.487981, 28.273962> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505407, -0.095839, 0.857542,
		-0.412700, -0.845925, -0.337772,
		0.757788, -0.524620, 0.387983,
		11.588465, 13.330595, 28.390358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.826549, 12.977539, 28.442909>,  <11.058013, 13.697828, 28.118769>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.826549, 12.977539, 28.442909> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.172043, 13.073077, 28.620409>,  <11.379339, 13.130401, 28.726908>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.172043, 13.073077, 28.620409>,  <10.826549, 12.977539, 28.442909>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.172043, 13.073077, 28.620409> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430480, -0.108108, 0.896102,
		0.262005, -0.965020, 0.009442,
		0.863736, 0.238848, 0.443747,
		11.431164, 13.144732, 28.753532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.839435, 12.676848, 29.014769>,  <10.826549, 12.977539, 28.442909>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.839435, 12.676848, 29.014769> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.134383, 12.929449, 29.110676>,  <11.311352, 13.081010, 29.168221>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.134383, 12.929449, 29.110676>,  <10.839435, 12.676848, 29.014769>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.134383, 12.929449, 29.110676> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299830, -0.012089, 0.953916,
		0.605299, -0.775280, 0.180429,
		0.737371, 0.631502, 0.239770,
		11.355595, 13.118899, 29.182608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.916738, 12.508144, 29.771111>,  <10.839435, 12.676848, 29.014769>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.916738, 12.508144, 29.771111> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.132081, 12.841561, 29.721508>,  <11.261288, 13.041612, 29.691748>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.132081, 12.841561, 29.721508>,  <10.916738, 12.508144, 29.771111>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.132081, 12.841561, 29.721508> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170036, 0.251566, 0.952787,
		0.825383, -0.491857, 0.277165,
		0.538360, 0.833542, -0.124005,
		11.293589, 13.091624, 29.684307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.338408, 12.457585, 30.336060>,  <10.916738, 12.508144, 29.771111>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.338408, 12.457585, 30.336060> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.351842, 12.834093, 30.201666>,  <11.359901, 13.059998, 30.121029>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.351842, 12.834093, 30.201666>,  <11.338408, 12.457585, 30.336060>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.351842, 12.834093, 30.201666> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046458, 0.337280, 0.940257,
		0.998356, -0.015967, 0.055057,
		0.033583, 0.941269, -0.335984,
		11.361917, 13.116474, 30.100870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.817557, 12.818441, 30.780890>,  <11.338408, 12.457585, 30.336060>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.817557, 12.818441, 30.780890> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.579123, 13.103197, 30.632353>,  <11.436062, 13.274051, 30.543232>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.579123, 13.103197, 30.632353>,  <11.817557, 12.818441, 30.780890>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.579123, 13.103197, 30.632353> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293988, 0.236858, 0.925997,
		0.747162, 0.661145, 0.068099,
		-0.596088, 0.711889, -0.371340,
		11.400296, 13.316764, 30.520950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.847937, 13.311563, 31.200422>,  <11.817557, 12.818441, 30.780890>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.847937, 13.311563, 31.200422> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.512333, 13.394821, 30.999331>,  <11.310970, 13.444777, 30.878675>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.512333, 13.394821, 30.999331>,  <11.847937, 13.311563, 31.200422>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.512333, 13.394821, 30.999331> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443049, 0.275019, 0.853271,
		0.315865, 0.938637, -0.138525,
		-0.839009, 0.208146, -0.502731,
		11.260630, 13.457265, 30.848511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.505725, 13.843231, 31.598740>,  <11.847937, 13.311563, 31.200422>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.505725, 13.843231, 31.598740> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.224020, 13.718881, 31.343437>,  <11.054996, 13.644270, 31.190256>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.224020, 13.718881, 31.343437>,  <11.505725, 13.843231, 31.598740>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.224020, 13.718881, 31.343437> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636337, -0.122207, 0.761670,
		-0.314784, 0.942561, -0.111756,
		-0.704263, -0.310876, -0.638255,
		11.012741, 13.625618, 31.151960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.967607, 14.343998, 31.624371>,  <11.505725, 13.843231, 31.598740>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.967607, 14.343998, 31.624371> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.783468, 14.014488, 31.492023>,  <10.672984, 13.816782, 31.412615>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.783468, 14.014488, 31.492023>,  <10.967607, 14.343998, 31.624371>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.783468, 14.014488, 31.492023> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700112, 0.107734, 0.705859,
		-0.545823, 0.556587, -0.626330,
		-0.460349, -0.823775, -0.330869,
		10.645364, 13.767356, 31.392763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.208900, 14.422298, 31.384354>,  <10.967607, 14.343998, 31.624371>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.208900, 14.422298, 31.384354> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.298901, 14.055668, 31.516573>,  <10.352901, 13.835690, 31.595905>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.298901, 14.055668, 31.516573>,  <10.208900, 14.422298, 31.384354>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.298901, 14.055668, 31.516573> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629400, 0.122250, 0.767405,
		-0.743795, -0.380714, -0.549387,
		0.225000, -0.916576, 0.330550,
		10.366401, 13.780695, 31.615738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.482637, 14.469557, 31.237122>,  <10.208900, 14.422298, 31.384354>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.482637, 14.469557, 31.237122> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.114202, 14.613033, 31.176544>,  <8.893140, 14.699120, 31.140198>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.114202, 14.613033, 31.176544>,  <9.482637, 14.469557, 31.237122>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.114202, 14.613033, 31.176544> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185856, 0.063269, -0.980538,
		-0.342129, -0.931309, -0.124942,
		-0.921089, 0.358692, -0.151443,
		8.837874, 14.720641, 31.131111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.226364, 14.132999, 30.628862>,  <9.482637, 14.469557, 31.237122>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.226364, 14.132999, 30.628862> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.984876, 14.449174, 30.670300>,  <8.839983, 14.638879, 30.695162>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.984876, 14.449174, 30.670300>,  <9.226364, 14.132999, 30.628862>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.984876, 14.449174, 30.670300> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164667, 0.250792, -0.953933,
		-0.780004, -0.558850, -0.281567,
		-0.603721, 0.790436, 0.103595,
		8.803760, 14.686305, 30.701378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.750910, 14.063935, 30.108137>,  <9.226364, 14.132999, 30.628862>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.750910, 14.063935, 30.108137> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.768854, 14.448839, 30.215500>,  <8.779621, 14.679782, 30.279917>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.768854, 14.448839, 30.215500>,  <8.750910, 14.063935, 30.108137>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.768854, 14.448839, 30.215500> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242460, 0.250157, -0.937355,
		-0.969124, 0.107129, -0.222088,
		0.044861, 0.962260, 0.268407,
		8.782312, 14.737517, 30.296022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.303994, 14.435442, 29.621712>,  <8.750910, 14.063935, 30.108137>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.303994, 14.435442, 29.621712> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.561730, 14.707330, 29.761889>,  <8.716372, 14.870462, 29.845995>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.561730, 14.707330, 29.761889>,  <8.303994, 14.435442, 29.621712>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.561730, 14.707330, 29.761889> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235154, 0.259943, -0.936553,
		-0.727688, 0.685866, 0.007653,
		0.644339, 0.679719, 0.350441,
		8.755033, 14.911245, 29.867022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.235432, 15.056766, 29.160683>,  <8.303994, 14.435442, 29.621712>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.235432, 15.056766, 29.160683> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.585894, 15.105450, 29.347246>,  <8.796171, 15.134661, 29.459185>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.585894, 15.105450, 29.347246>,  <8.235432, 15.056766, 29.160683>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.585894, 15.105450, 29.347246> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431524, 0.233123, -0.871459,
		-0.214797, 0.964800, 0.151731,
		0.876156, 0.121711, 0.466409,
		8.848741, 15.141963, 29.487169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.447253, 15.675934, 28.935869>,  <8.235432, 15.056766, 29.160683>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.447253, 15.675934, 28.935869> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.761628, 15.470379, 29.073402>,  <8.950253, 15.347046, 29.155922>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.761628, 15.470379, 29.073402>,  <8.447253, 15.675934, 28.935869>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.761628, 15.470379, 29.073402> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484984, 0.167427, -0.858347,
		0.383526, 0.841361, 0.380814,
		0.785938, -0.513887, 0.343834,
		8.997410, 15.316213, 29.176552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.059104, 16.100733, 28.839336>,  <8.447253, 15.675934, 28.935869>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.059104, 16.100733, 28.839336> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.168788, 15.716094, 28.844065>,  <9.234598, 15.485311, 28.846901>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.168788, 15.716094, 28.844065>,  <9.059104, 16.100733, 28.839336>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.168788, 15.716094, 28.844065> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527213, 0.140040, -0.838114,
		0.804273, 0.236051, 0.545367,
		0.274211, -0.961597, 0.011819,
		9.251051, 15.427615, 28.847610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.447300, 16.683218, 28.941612>,  <9.059104, 16.100733, 28.839336>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.447300, 16.683218, 28.941612> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.489304, 17.061750, 28.819345>,  <9.514506, 17.288870, 28.745985>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.489304, 17.061750, 28.819345>,  <9.447300, 16.683218, 28.941612>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.489304, 17.061750, 28.819345> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392513, 0.321850, 0.861595,
		0.913732, 0.029501, 0.405244,
		0.105010, 0.946331, -0.305665,
		9.520806, 17.345650, 28.727646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.928064, 16.978128, 29.397606>,  <9.447300, 16.683218, 28.941612>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.928064, 16.978128, 29.397606> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.726226, 17.276173, 29.223162>,  <9.605123, 17.455000, 29.118496>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.726226, 17.276173, 29.223162>,  <9.928064, 16.978128, 29.397606>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.726226, 17.276173, 29.223162> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120557, 0.439374, 0.890178,
		0.854897, 0.501756, -0.131878,
		-0.504596, 0.745112, -0.436109,
		9.574847, 17.499706, 29.092329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.234165, 17.636148, 29.450151>,  <9.928064, 16.978128, 29.397606>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.234165, 17.636148, 29.450151> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.844185, 17.714069, 29.407209>,  <9.610197, 17.760822, 29.381445>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.844185, 17.714069, 29.407209>,  <10.234165, 17.636148, 29.450151>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.844185, 17.714069, 29.407209> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004655, 0.464680, 0.885467,
		0.222376, 0.863785, -0.452132,
		-0.974950, 0.194802, -0.107355,
		9.551700, 17.772511, 29.375004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.152415, 18.259974, 29.907021>,  <10.234165, 17.636148, 29.450151>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.152415, 18.259974, 29.907021> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.772127, 18.182934, 29.809830>,  <9.543955, 18.136709, 29.751516>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.772127, 18.182934, 29.809830>,  <10.152415, 18.259974, 29.907021>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.772127, 18.182934, 29.809830> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308569, 0.511221, 0.802146,
		-0.030278, 0.837591, -0.545459,
		-0.950720, -0.192600, -0.242976,
		9.486911, 18.125154, 29.736937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.875834, 18.881662, 30.045816>,  <10.152415, 18.259974, 29.907021>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.875834, 18.881662, 30.045816> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.585008, 18.609312, 30.081110>,  <9.410512, 18.445902, 30.102285>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.585008, 18.609312, 30.081110>,  <9.875834, 18.881662, 30.045816>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.585008, 18.609312, 30.081110> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402513, 0.526833, 0.748619,
		-0.556201, 0.508779, -0.657103,
		-0.727065, -0.680875, 0.088235,
		9.366888, 18.405050, 30.107580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.309240, 19.294373, 29.980949>,  <9.875834, 18.881662, 30.045816>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.309240, 19.294373, 29.980949> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.199175, 18.955839, 30.163378>,  <9.133136, 18.752718, 30.272835>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.199175, 18.955839, 30.163378>,  <9.309240, 19.294373, 29.980949>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.199175, 18.955839, 30.163378> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228856, 0.518409, 0.823940,
		-0.933761, 0.122344, -0.336337,
		-0.275164, -0.846335, 0.456071,
		9.116626, 18.701939, 30.300200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.724938, 19.455244, 30.348503>,  <9.309240, 19.294373, 29.980949>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.724938, 19.455244, 30.348503> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.830784, 19.122984, 30.544462>,  <8.894291, 18.923628, 30.662037>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.830784, 19.122984, 30.544462>,  <8.724938, 19.455244, 30.348503>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.830784, 19.122984, 30.544462> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175742, 0.457963, 0.871427,
		-0.948206, -0.316688, -0.024797,
		0.264614, -0.830650, 0.489899,
		8.910168, 18.873789, 30.691431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.167043, 19.299509, 30.920204>,  <8.724938, 19.455244, 30.348503>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.167043, 19.299509, 30.920204> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.499355, 19.106495, 31.031172>,  <8.698743, 18.990686, 31.097752>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.499355, 19.106495, 31.031172>,  <8.167043, 19.299509, 30.920204>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.499355, 19.106495, 31.031172> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102178, 0.357727, 0.928219,
		-0.547139, -0.799494, 0.247889,
		0.830782, -0.482536, 0.277417,
		8.748590, 18.961735, 31.114397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.999719, 18.815735, 31.471512>,  <8.167043, 19.299509, 30.920204>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.999719, 18.815735, 31.471512> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.394608, 18.867426, 31.508808>,  <8.631540, 18.898441, 31.531187>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.394608, 18.867426, 31.508808>,  <7.999719, 18.815735, 31.471512>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.394608, 18.867426, 31.508808> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125452, 0.269454, 0.954807,
		0.098262, -0.954304, 0.282222,
		0.987222, 0.129227, 0.093242,
		8.690774, 18.906195, 31.536781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<16.375578, 15.235388, 17.396152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.645790, 15.251116, 17.690666>,  <16.807919, 15.260552, 17.867374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.645790, 15.251116, 17.690666>,  <16.375578, 15.235388, 17.396152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.645790, 15.251116, 17.690666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716038, 0.273229, 0.642367,
		-0.175916, -0.961145, 0.212729,
		0.675531, 0.039319, 0.736282,
		16.848450, 15.262912, 17.911551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.081879, 14.969418, 18.074989>,  <16.375578, 15.235388, 17.396152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.081879, 14.969418, 18.074989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.368822, 15.226097, 18.183523>,  <16.540987, 15.380105, 18.248644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.368822, 15.226097, 18.183523>,  <16.081879, 14.969418, 18.074989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.368822, 15.226097, 18.183523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586746, 0.346444, 0.731920,
		0.375670, -0.684251, 0.625038,
		0.717357, 0.641699, 0.271333,
		16.584028, 15.418607, 18.264923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.141584, 14.871355, 18.855379>,  <16.081879, 14.969418, 18.074989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.141584, 14.871355, 18.855379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.270514, 15.228142, 18.728571>,  <16.347872, 15.442214, 18.652487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.270514, 15.228142, 18.728571>,  <16.141584, 14.871355, 18.855379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.270514, 15.228142, 18.728571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551018, 0.449097, 0.703343,
		0.769731, -0.052021, 0.636245,
		0.322324, 0.891968, -0.317019,
		16.367210, 15.495732, 18.633465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.321503, 15.134418, 19.434175>,  <16.141584, 14.871355, 18.855379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.321503, 15.134418, 19.434175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.258951, 15.441031, 19.185026>,  <16.221420, 15.624999, 19.035536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.258951, 15.441031, 19.185026>,  <16.321503, 15.134418, 19.434175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.258951, 15.441031, 19.185026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768743, 0.301495, 0.564035,
		0.620145, 0.567034, 0.542119,
		-0.156381, 0.766533, -0.622873,
		16.212036, 15.670992, 18.998163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.173960, 15.660516, 19.954107>,  <16.321503, 15.134418, 19.434175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.173960, 15.660516, 19.954107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.053270, 15.816680, 19.606190>,  <15.980856, 15.910378, 19.397440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.053270, 15.816680, 19.606190>,  <16.173960, 15.660516, 19.954107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.053270, 15.816680, 19.606190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700612, 0.527952, 0.480010,
		0.646610, 0.754220, 0.114229,
		-0.301726, 0.390409, -0.869794,
		15.962752, 15.933803, 19.345251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.207220, 16.270781, 20.055418>,  <16.173960, 15.660516, 19.954107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.207220, 16.270781, 20.055418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.944216, 16.243795, 19.755251>,  <15.786413, 16.227604, 19.575150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.944216, 16.243795, 19.755251>,  <16.207220, 16.270781, 20.055418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.944216, 16.243795, 19.755251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698358, 0.428408, 0.573378,
		0.282803, 0.901063, -0.328797,
		-0.657510, -0.067465, -0.750420,
		15.746963, 16.223557, 19.530125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.876400, 16.931721, 19.907925>,  <16.207220, 16.270781, 20.055418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.876400, 16.931721, 19.907925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.598538, 16.684055, 19.761452>,  <15.431821, 16.535456, 19.673567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.598538, 16.684055, 19.761452>,  <15.876400, 16.931721, 19.907925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.598538, 16.684055, 19.761452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693425, 0.440956, 0.569841,
		-0.191354, 0.649765, -0.735656,
		-0.694654, -0.619164, -0.366184,
		15.390142, 16.498306, 19.651596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.308060, 17.318283, 19.656017>,  <15.876400, 16.931721, 19.907925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.308060, 17.318283, 19.656017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.134707, 16.962196, 19.712151>,  <15.030696, 16.748545, 19.745831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.134707, 16.962196, 19.712151>,  <15.308060, 17.318283, 19.656017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.134707, 16.962196, 19.712151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730201, 0.438125, 0.524264,
		-0.528193, 0.124735, -0.839913,
		-0.433381, -0.890218, 0.140333,
		15.004693, 16.695131, 19.754250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.618117, 17.365017, 19.519360>,  <15.308060, 17.318283, 19.656017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.618117, 17.365017, 19.519360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.608850, 17.061157, 19.779327>,  <14.603289, 16.878841, 19.935308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.608850, 17.061157, 19.779327>,  <14.618117, 17.365017, 19.519360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.608850, 17.061157, 19.779327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561227, 0.547874, 0.620370,
		-0.827338, -0.350377, -0.439031,
		-0.023170, -0.759651, 0.649918,
		14.601898, 16.833261, 19.974302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.930906, 17.317833, 19.748743>,  <14.618117, 17.365017, 19.519360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.930906, 17.317833, 19.748743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.105103, 17.096136, 20.032480>,  <14.209620, 16.963118, 20.202723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.105103, 17.096136, 20.032480>,  <13.930906, 17.317833, 19.748743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.105103, 17.096136, 20.032480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624639, 0.381361, 0.681462,
		-0.648209, -0.739853, -0.180121,
		0.435490, -0.554240, 0.709342,
		14.235749, 16.929865, 20.245283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.396344, 16.822222, 19.975502>,  <13.930906, 17.317833, 19.748743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.396344, 16.822222, 19.975502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.649571, 16.856331, 20.283257>,  <13.801508, 16.876797, 20.467909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.649571, 16.856331, 20.283257>,  <13.396344, 16.822222, 19.975502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.649571, 16.856331, 20.283257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772054, -0.002586, 0.635551,
		0.056188, -0.996354, 0.064201,
		0.633068, 0.085277, 0.769385,
		13.839492, 16.881914, 20.514072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.166323, 16.352798, 20.540897>,  <13.396344, 16.822222, 19.975502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.166323, 16.352798, 20.540897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.382382, 16.612831, 20.754675>,  <13.512018, 16.768850, 20.882942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.382382, 16.612831, 20.754675>,  <13.166323, 16.352798, 20.540897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.382382, 16.612831, 20.754675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671897, -0.049272, 0.739004,
		0.506748, -0.758263, 0.410175,
		0.540149, 0.650084, 0.534444,
		13.544427, 16.807856, 20.915009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.116372, 15.607093, 20.412600>,  <13.166323, 16.352798, 20.540897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.116372, 15.607093, 20.412600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.880959, 15.288948, 20.470602>,  <12.739710, 15.098062, 20.505404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.880959, 15.288948, 20.470602>,  <13.116372, 15.607093, 20.412600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.880959, 15.288948, 20.470602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130606, -0.270534, -0.953810,
		0.797853, -0.542412, 0.263098,
		-0.588534, -0.795362, 0.145004,
		12.704398, 15.050340, 20.514103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.527866, 15.015719, 20.068691>,  <13.116372, 15.607093, 20.412600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.527866, 15.015719, 20.068691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.141816, 14.916227, 20.101347>,  <12.910186, 14.856532, 20.120941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.141816, 14.916227, 20.101347>,  <13.527866, 15.015719, 20.068691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.141816, 14.916227, 20.101347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003992, -0.297837, -0.954608,
		0.261755, -0.921643, 0.286457,
		-0.965126, -0.248730, 0.081640,
		12.852279, 14.841608, 20.125839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.556239, 14.454432, 19.594215>,  <13.527866, 15.015719, 20.068691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.556239, 14.454432, 19.594215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.171363, 14.543195, 19.657394>,  <12.940437, 14.596452, 19.695303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.171363, 14.543195, 19.657394>,  <13.556239, 14.454432, 19.594215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.171363, 14.543195, 19.657394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236867, -0.395402, -0.887441,
		-0.134473, -0.891300, 0.433013,
		-0.962190, 0.221904, 0.157949,
		12.882706, 14.609766, 19.704779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.187686, 13.858278, 19.310883>,  <13.556239, 14.454432, 19.594215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.187686, 13.858278, 19.310883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.915238, 14.149690, 19.340059>,  <12.751770, 14.324536, 19.357565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.915238, 14.149690, 19.340059>,  <13.187686, 13.858278, 19.310883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.915238, 14.149690, 19.340059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418523, -0.305660, -0.855226,
		-0.600762, -0.613039, 0.513098,
		-0.681120, 0.728530, 0.072941,
		12.710902, 14.368249, 19.361942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.567662, 13.521882, 19.192924>,  <13.187686, 13.858278, 19.310883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.567662, 13.521882, 19.192924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.523372, 13.914285, 19.129221>,  <12.496798, 14.149727, 19.090998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.523372, 13.914285, 19.129221>,  <12.567662, 13.521882, 19.192924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.523372, 13.914285, 19.129221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303199, -0.185950, -0.934608,
		-0.946472, -0.055197, 0.318030,
		-0.110726, 0.981008, -0.159261,
		12.490154, 14.208587, 19.081442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.847491, 13.603319, 19.057085>,  <12.567662, 13.521882, 19.192924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.847491, 13.603319, 19.057085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.080876, 13.891842, 18.907801>,  <12.220907, 14.064956, 18.818230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.080876, 13.891842, 18.907801>,  <11.847491, 13.603319, 19.057085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.080876, 13.891842, 18.907801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373828, -0.169435, -0.911891,
		-0.720989, 0.671571, 0.170786,
		0.583462, 0.721307, -0.373213,
		12.255915, 14.108234, 18.795837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.529744, 13.870024, 18.580545>,  <11.847491, 13.603319, 19.057085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.529744, 13.870024, 18.580545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.882106, 14.011149, 18.454351>,  <12.093523, 14.095825, 18.378635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.882106, 14.011149, 18.454351>,  <11.529744, 13.870024, 18.580545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.882106, 14.011149, 18.454351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256193, -0.205019, -0.944633,
		-0.397960, 0.912956, -0.090213,
		0.880904, 0.352814, -0.315483,
		12.146378, 14.116994, 18.359707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.409277, 14.336432, 17.941149>,  <11.529744, 13.870024, 18.580545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.409277, 14.336432, 17.941149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.796600, 14.237239, 17.929260>,  <12.028995, 14.177723, 17.922127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.796600, 14.237239, 17.929260>,  <11.409277, 14.336432, 17.941149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.796600, 14.237239, 17.929260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101730, -0.282912, -0.953736,
		0.228103, 0.926534, -0.299173,
		0.968308, -0.247985, -0.029723,
		12.087092, 14.162844, 17.920343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.578622, 14.567393, 17.285202>,  <11.409277, 14.336432, 17.941149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.578622, 14.567393, 17.285202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.898792, 14.335849, 17.347477>,  <12.090895, 14.196922, 17.384842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.898792, 14.335849, 17.347477>,  <11.578622, 14.567393, 17.285202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.898792, 14.335849, 17.347477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100283, -0.126756, -0.986852,
		0.590984, 0.805514, -0.043409,
		0.800426, -0.578861, 0.155690,
		12.138920, 14.162190, 17.394184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.150478, 14.772955, 16.852173>,  <11.578622, 14.567393, 17.285202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.150478, 14.772955, 16.852173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.221774, 14.390428, 16.944855>,  <12.264551, 14.160912, 17.000463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.221774, 14.390428, 16.944855>,  <12.150478, 14.772955, 16.852173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.221774, 14.390428, 16.944855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209808, -0.193125, -0.958480,
		0.961359, 0.219452, 0.166220,
		0.178239, -0.956318, 0.231705,
		12.275246, 14.103532, 17.014366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.741604, 14.659578, 16.538424>,  <12.150478, 14.772955, 16.852173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.741604, 14.659578, 16.538424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.596203, 14.292804, 16.604261>,  <12.508962, 14.072739, 16.643764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.596203, 14.292804, 16.604261>,  <12.741604, 14.659578, 16.538424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.596203, 14.292804, 16.604261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328022, -0.291345, -0.898621,
		0.871933, -0.272661, 0.406680,
		-0.363503, -0.916937, 0.164595,
		12.487152, 14.017722, 16.653641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.230866, 14.221581, 16.256882>,  <12.741604, 14.659578, 16.538424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.230866, 14.221581, 16.256882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.884634, 14.023196, 16.284563>,  <12.676894, 13.904165, 16.301172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.884634, 14.023196, 16.284563>,  <13.230866, 14.221581, 16.256882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.884634, 14.023196, 16.284563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103847, -0.312970, -0.944069,
		0.489882, -0.809982, 0.322405,
		-0.865582, -0.495963, 0.069204,
		12.624960, 13.874408, 16.305325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.371322, 13.523049, 15.985015>,  <13.230866, 14.221581, 16.256882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.371322, 13.523049, 15.985015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.977147, 13.587942, 15.964635>,  <12.740643, 13.626878, 15.952407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.977147, 13.587942, 15.964635>,  <13.371322, 13.523049, 15.985015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.977147, 13.587942, 15.964635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005159, -0.270964, -0.962576,
		-0.169965, -0.948820, 0.266181,
		-0.985437, 0.162231, -0.050949,
		12.681517, 13.636612, 15.949350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.563858, 13.134315, 16.511436>,  <13.371322, 13.523049, 15.985015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.563858, 13.134315, 16.511436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.747581, 13.470036, 16.627785>,  <13.857816, 13.671469, 16.697594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.747581, 13.470036, 16.627785>,  <13.563858, 13.134315, 16.511436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.747581, 13.470036, 16.627785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610911, 0.060759, 0.789365,
		0.644843, -0.540258, 0.540646,
		0.459310, 0.839304, 0.290869,
		13.885374, 13.721827, 16.715046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.062045, 12.674867, 16.943218>,  <13.563858, 13.134315, 16.511436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.062045, 12.674867, 16.943218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.277941, 12.343470, 16.883512>,  <14.407478, 12.144631, 16.847689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.277941, 12.343470, 16.883512>,  <14.062045, 12.674867, 16.943218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.277941, 12.343470, 16.883512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594059, -0.249215, -0.764843,
		0.596468, 0.501489, -0.626686,
		0.539739, -0.828493, -0.149265,
		14.439862, 12.094922, 16.838734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.524018, 12.612561, 16.285316>,  <14.062045, 12.674867, 16.943218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.524018, 12.612561, 16.285316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.324351, 12.298805, 16.432592>,  <14.204551, 12.110552, 16.520958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.324351, 12.298805, 16.432592>,  <14.524018, 12.612561, 16.285316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.324351, 12.298805, 16.432592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480138, -0.103336, -0.871085,
		0.721318, -0.611599, -0.325033,
		-0.499167, -0.784390, 0.368190,
		14.174601, 12.063488, 16.543049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.105833, 12.561567, 16.856606>,  <14.524018, 12.612561, 16.285316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.105833, 12.561567, 16.856606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.440798, 12.659672, 17.051989>,  <15.641776, 12.718534, 17.169218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.440798, 12.659672, 17.051989>,  <15.105833, 12.561567, 16.856606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.440798, 12.659672, 17.051989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458677, -0.170678, 0.872057,
		0.297252, -0.954314, -0.030432,
		0.837411, 0.245262, 0.488456,
		15.692021, 12.733251, 17.198526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.187106, 12.149391, 17.438629>,  <15.105833, 12.561567, 16.856606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.187106, 12.149391, 17.438629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.421038, 12.462409, 17.524042>,  <15.561397, 12.650220, 17.575291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.421038, 12.462409, 17.524042>,  <15.187106, 12.149391, 17.438629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.421038, 12.462409, 17.524042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369257, 0.022449, 0.929056,
		0.722235, -0.622188, 0.302089,
		0.584829, 0.782546, 0.213534,
		15.596486, 12.697173, 17.588102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.704127, 11.977988, 18.073515>,  <15.187106, 12.149391, 17.438629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.704127, 11.977988, 18.073515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.651603, 12.373409, 18.043798>,  <15.620089, 12.610662, 18.025969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.651603, 12.373409, 18.043798>,  <15.704127, 11.977988, 18.073515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.651603, 12.373409, 18.043798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235026, 0.041761, 0.971092,
		0.963079, 0.144975, 0.226852,
		-0.131311, 0.988554, -0.074292,
		15.612209, 12.669975, 18.021511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.069784, 12.122392, 18.654409>,  <15.704127, 11.977988, 18.073515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.069784, 12.122392, 18.654409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.855488, 12.452260, 18.581854>,  <15.726910, 12.650181, 18.538321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.855488, 12.452260, 18.581854>,  <16.069784, 12.122392, 18.654409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.855488, 12.452260, 18.581854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275376, 0.032432, 0.960790,
		0.798217, 0.564684, 0.209719,
		-0.535741, 0.824670, -0.181388,
		15.694766, 12.699661, 18.527437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.345745, 12.615935, 19.104111>,  <16.069784, 12.122392, 18.654409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.345745, 12.615935, 19.104111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.975550, 12.745223, 19.025122>,  <15.753432, 12.822796, 18.977728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.975550, 12.745223, 19.025122>,  <16.345745, 12.615935, 19.104111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.975550, 12.745223, 19.025122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218589, -0.029990, 0.975356,
		0.309331, 0.945849, 0.098407,
		-0.925491, 0.323219, -0.197475,
		15.697903, 12.842189, 18.965879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.139374, 12.988785, 19.698687>,  <16.345745, 12.615935, 19.104111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.139374, 12.988785, 19.698687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.788907, 12.903469, 19.525789>,  <15.578627, 12.852280, 19.422050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.788907, 12.903469, 19.525789>,  <16.139374, 12.988785, 19.698687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.788907, 12.903469, 19.525789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419328, -0.104910, 0.901753,
		-0.237681, 0.971340, 0.002480,
		-0.876169, -0.213289, -0.432245,
		15.526056, 12.839482, 19.396116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.621041, 13.385078, 20.029755>,  <16.139374, 12.988785, 19.698687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.621041, 13.385078, 20.029755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.429281, 13.079687, 19.856651>,  <15.314225, 12.896453, 19.752790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.429281, 13.079687, 19.856651>,  <15.621041, 13.385078, 20.029755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.429281, 13.079687, 19.856651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383299, -0.261440, 0.885850,
		-0.789467, 0.590552, -0.167306,
		-0.479400, -0.763478, -0.432756,
		15.285461, 12.850644, 19.726824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.943591, 13.485900, 20.186888>,  <15.621041, 13.385078, 20.029755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.943591, 13.485900, 20.186888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.983610, 13.094295, 20.115870>,  <15.007622, 12.859331, 20.073257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.983610, 13.094295, 20.115870>,  <14.943591, 13.485900, 20.186888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.983610, 13.094295, 20.115870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587165, -0.202152, 0.783819,
		-0.803261, 0.025832, -0.595067,
		0.100046, -0.979014, -0.177548,
		15.013624, 12.800591, 20.062605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.296651, 13.171019, 20.256485>,  <14.943591, 13.485900, 20.186888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.296651, 13.171019, 20.256485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.534652, 12.853065, 20.304033>,  <14.677452, 12.662292, 20.332561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.534652, 12.853065, 20.304033>,  <14.296651, 13.171019, 20.256485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.534652, 12.853065, 20.304033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438583, -0.197179, 0.876793,
		-0.673511, -0.573828, -0.465945,
		0.595003, -0.794885, 0.118869,
		14.713153, 12.614599, 20.339695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.843164, 12.599431, 20.437082>,  <14.296651, 13.171019, 20.256485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.843164, 12.599431, 20.437082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.210210, 12.492762, 20.554977>,  <14.430437, 12.428760, 20.625715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.210210, 12.492762, 20.554977>,  <13.843164, 12.599431, 20.437082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.210210, 12.492762, 20.554977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378433, -0.359397, 0.853007,
		-0.121546, -0.894270, -0.430706,
		0.917614, -0.266673, 0.294739,
		14.485494, 12.412760, 20.643398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.782115, 11.988020, 20.858427>,  <13.843164, 12.599431, 20.437082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.782115, 11.988020, 20.858427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.149541, 12.086023, 20.982498>,  <14.369996, 12.144825, 21.056942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.149541, 12.086023, 20.982498>,  <13.782115, 11.988020, 20.858427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.149541, 12.086023, 20.982498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215506, -0.347410, 0.912614,
		0.331358, -0.905139, -0.266317,
		0.918564, 0.245009, 0.310180,
		14.425110, 12.159526, 21.075552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.994265, 11.449899, 21.169497>,  <13.782115, 11.988020, 20.858427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.994265, 11.449899, 21.169497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.234885, 11.737104, 21.309549>,  <14.379258, 11.909428, 21.393581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.234885, 11.737104, 21.309549>,  <13.994265, 11.449899, 21.169497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.234885, 11.737104, 21.309549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257697, -0.240448, 0.935829,
		0.756126, -0.653178, 0.040388,
		0.601552, 0.718013, 0.350132,
		14.415351, 11.952508, 21.414589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.228046, 11.152949, 21.722382>,  <13.994265, 11.449899, 21.169497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.228046, 11.152949, 21.722382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.319969, 11.535660, 21.793678>,  <14.375123, 11.765285, 21.836456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.319969, 11.535660, 21.793678>,  <14.228046, 11.152949, 21.722382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.319969, 11.535660, 21.793678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239167, -0.122007, 0.963283,
		0.943391, -0.263999, 0.200791,
		0.229808, 0.956775, 0.178240,
		14.388911, 11.822692, 21.847151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.526650, 11.156616, 22.306591>,  <14.228046, 11.152949, 21.722382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.526650, 11.156616, 22.306591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.425200, 11.542945, 22.285202>,  <14.364328, 11.774742, 22.272367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.425200, 11.542945, 22.285202>,  <14.526650, 11.156616, 22.306591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.425200, 11.542945, 22.285202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146439, 0.016307, 0.989085,
		0.956153, 0.258691, 0.137298,
		-0.253628, 0.965823, -0.053475,
		14.349112, 11.832692, 22.269159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.891661, 11.405320, 22.853580>,  <14.526650, 11.156616, 22.306591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.891661, 11.405320, 22.853580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.586204, 11.647240, 22.763186>,  <14.402929, 11.792391, 22.708948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.586204, 11.647240, 22.763186>,  <14.891661, 11.405320, 22.853580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.586204, 11.647240, 22.763186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290261, -0.008942, 0.956906,
		0.576714, 0.796329, 0.182378,
		-0.763642, 0.604798, -0.225986,
		14.357111, 11.828679, 22.695389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.859067, 11.914576, 23.413712>,  <14.891661, 11.405320, 22.853580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.859067, 11.914576, 23.413712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.497895, 11.974055, 23.252413>,  <14.281193, 12.009743, 23.155634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.497895, 11.974055, 23.252413>,  <14.859067, 11.914576, 23.413712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.497895, 11.974055, 23.252413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372049, 0.199303, 0.906564,
		0.215173, 0.968590, -0.124633,
		-0.902929, 0.148699, -0.403247,
		14.227016, 12.018665, 23.131439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.606500, 12.582073, 23.541994>,  <14.859067, 11.914576, 23.413712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.606500, 12.582073, 23.541994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.267961, 12.396505, 23.437325>,  <14.064837, 12.285165, 23.374523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.267961, 12.396505, 23.437325>,  <14.606500, 12.582073, 23.541994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.267961, 12.396505, 23.437325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467562, 0.411802, 0.782179,
		-0.255110, 0.784345, -0.565440,
		-0.846348, -0.463920, -0.261675,
		14.014056, 12.257329, 23.358822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.064725, 13.072238, 23.701588>,  <14.606500, 12.582073, 23.541994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.064725, 13.072238, 23.701588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.874061, 12.721093, 23.683033>,  <13.759663, 12.510406, 23.671900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.874061, 12.721093, 23.683033>,  <14.064725, 13.072238, 23.701588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.874061, 12.721093, 23.683033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528259, 0.243856, 0.813312,
		-0.702665, 0.412178, -0.579976,
		-0.476660, -0.877863, -0.046387,
		13.731063, 12.457734, 23.669117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.275104, 13.259203, 23.684303>,  <14.064725, 13.072238, 23.701588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.275104, 13.259203, 23.684303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.319463, 12.876608, 23.792253>,  <13.346079, 12.647051, 23.857023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.319463, 12.876608, 23.792253>,  <13.275104, 13.259203, 23.684303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.319463, 12.876608, 23.792253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574268, 0.159956, 0.802889,
		-0.811122, -0.244021, -0.531541,
		0.110899, -0.956487, 0.269877,
		13.352733, 12.589662, 23.873217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.579000, 13.023828, 23.857740>,  <13.275104, 13.259203, 23.684303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.579000, 13.023828, 23.857740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.857201, 12.810939, 24.050829>,  <13.024120, 12.683206, 24.166681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.857201, 12.810939, 24.050829>,  <12.579000, 13.023828, 23.857740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.857201, 12.810939, 24.050829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408504, 0.259795, 0.875004,
		-0.591104, -0.805759, -0.036727,
		0.695500, -0.532221, 0.482721,
		13.065851, 12.651273, 24.195644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.100971, 12.722303, 24.312693>,  <12.579000, 13.023828, 23.857740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.100971, 12.722303, 24.312693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.471562, 12.700900, 24.461702>,  <12.693917, 12.688058, 24.551107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.471562, 12.700900, 24.461702>,  <12.100971, 12.722303, 24.312693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.471562, 12.700900, 24.461702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355884, 0.197399, 0.913444,
		-0.122413, -0.978862, 0.163843,
		0.926478, -0.053509, 0.372525,
		12.749506, 12.684848, 24.573460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.035308, 12.549586, 24.953108>,  <12.100971, 12.722303, 24.312693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.035308, 12.549586, 24.953108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.409481, 12.684566, 24.995241>,  <12.633985, 12.765553, 25.020521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.409481, 12.684566, 24.995241>,  <12.035308, 12.549586, 24.953108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.409481, 12.684566, 24.995241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161597, 0.143167, 0.976417,
		0.314412, -0.930392, 0.188454,
		0.935431, 0.337451, 0.105335,
		12.690110, 12.785800, 25.026842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.321162, 12.103091, 25.459276>,  <12.035308, 12.549586, 24.953108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.321162, 12.103091, 25.459276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.497840, 12.460855, 25.431177>,  <12.603847, 12.675514, 25.414318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.497840, 12.460855, 25.431177>,  <12.321162, 12.103091, 25.459276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.497840, 12.460855, 25.431177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224409, 0.185952, 0.956589,
		0.868646, -0.406756, 0.282848,
		0.441695, 0.894411, -0.070247,
		12.630348, 12.729178, 25.410103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.569995, 12.115146, 26.049843>,  <12.321162, 12.103091, 25.459276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.569995, 12.115146, 26.049843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.613079, 12.499631, 25.948280>,  <12.638929, 12.730322, 25.887342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.613079, 12.499631, 25.948280>,  <12.569995, 12.115146, 26.049843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.613079, 12.499631, 25.948280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131436, 0.266917, 0.954715,
		0.985456, -0.069460, 0.155088,
		0.107710, 0.961213, -0.253906,
		12.645392, 12.787994, 25.872108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.996964, 12.299321, 26.532259>,  <12.569995, 12.115146, 26.049843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.996964, 12.299321, 26.532259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.835900, 12.634248, 26.384331>,  <12.739263, 12.835204, 26.295574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.835900, 12.634248, 26.384331>,  <12.996964, 12.299321, 26.532259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.835900, 12.634248, 26.384331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197091, 0.315233, 0.928322,
		0.893880, 0.446685, 0.038096,
		-0.402659, 0.837317, -0.369818,
		12.715102, 12.885443, 26.273386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.485412, 12.788992, 26.699493>,  <12.996964, 12.299321, 26.532259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.485412, 12.788992, 26.699493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.121725, 12.946745, 26.646143>,  <12.903513, 13.041397, 26.614134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.121725, 12.946745, 26.646143>,  <13.485412, 12.788992, 26.699493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.121725, 12.946745, 26.646143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023470, 0.271297, 0.962209,
		0.415663, 0.877986, -0.237412,
		-0.909216, 0.394383, -0.133374,
		12.848960, 13.065060, 26.606131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
