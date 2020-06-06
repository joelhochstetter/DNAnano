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
	<22.739544, 16.843126, -1.881120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.443817, 17.084167, -2.001303>,  <22.266380, 17.228792, -2.073413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.443817, 17.084167, -2.001303>,  <22.739544, 16.843126, -1.881120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.443817, 17.084167, -2.001303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667243, 0.715616, -0.206593,
		0.090517, -0.353216, -0.931153,
		-0.739319, 0.602605, -0.300457,
		22.222021, 17.264950, -2.091440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.972015, 16.046003, -1.835631>,  <22.739544, 16.843126, -1.881120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.972015, 16.046003, -1.835631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.675934, 16.152550, -1.588683>,  <22.498285, 16.216476, -1.440513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.675934, 16.152550, -1.588683>,  <22.972015, 16.046003, -1.835631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.675934, 16.152550, -1.588683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008921, -0.914215, 0.405132,
		0.672322, 0.305388, 0.674330,
		-0.740205, 0.266364, 0.617371,
		22.453873, 16.232458, -1.403471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.099237, 15.713329, -1.164267>,  <22.972015, 16.046003, -1.835631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.099237, 15.713329, -1.164267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.723743, 15.847820, -1.133990>,  <22.498447, 15.928514, -1.115824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.723743, 15.847820, -1.133990>,  <23.099237, 15.713329, -1.164267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.723743, 15.847820, -1.133990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264567, -0.843783, 0.466942,
		0.220866, 0.418309, 0.881043,
		-0.938735, 0.336227, 0.075692,
		22.442123, 15.948689, -1.111283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.889425, 15.622700, -0.453268>,  <23.099237, 15.713329, -1.164267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.889425, 15.622700, -0.453268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.553986, 15.631054, -0.671006>,  <22.352722, 15.636066, -0.801649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.553986, 15.631054, -0.671006>,  <22.889425, 15.622700, -0.453268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.553986, 15.631054, -0.671006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348792, -0.788160, 0.507098,
		-0.418440, 0.615116, 0.668236,
		-0.838601, 0.020885, -0.544345,
		22.302404, 15.637320, -0.834310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.422014, 16.028847, 0.044815>,  <22.889425, 15.622700, -0.453268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.422014, 16.028847, 0.044815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.069412, 15.889488, -0.082663>,  <21.857851, 15.805873, -0.159149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.069412, 15.889488, -0.082663>,  <22.422014, 16.028847, 0.044815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.069412, 15.889488, -0.082663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462372, 0.500117, 0.732185,
		-0.095707, 0.792781, -0.601946,
		-0.881506, -0.348399, -0.318695,
		21.804960, 15.784968, -0.178271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.994566, 16.612738, -0.160970>,  <22.422014, 16.028847, 0.044815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.994566, 16.612738, -0.160970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.781647, 16.304436, -0.020915>,  <21.653894, 16.119455, 0.063118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.781647, 16.304436, -0.020915>,  <21.994566, 16.612738, -0.160970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.781647, 16.304436, -0.020915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338344, 0.572825, 0.746589,
		-0.776004, 0.278940, -0.565694,
		-0.532297, -0.770755, 0.350137,
		21.621958, 16.073210, 0.084126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.298820, 16.895475, -0.128521>,  <21.994566, 16.612738, -0.160970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.298820, 16.895475, -0.128521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.376663, 16.615204, 0.146049>,  <21.423368, 16.447041, 0.310791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.376663, 16.615204, 0.146049>,  <21.298820, 16.895475, -0.128521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.376663, 16.615204, 0.146049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315280, 0.617987, 0.720202,
		-0.928831, -0.356572, -0.100645,
		0.194606, -0.700677, 0.686426,
		21.435045, 16.405001, 0.351977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.664961, 16.728739, 0.307221>,  <21.298820, 16.895475, -0.128521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.664961, 16.728739, 0.307221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.024876, 16.709431, 0.480682>,  <21.240824, 16.697845, 0.584759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.024876, 16.709431, 0.480682>,  <20.664961, 16.728739, 0.307221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.024876, 16.709431, 0.480682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261433, 0.736072, 0.624381,
		-0.349338, -0.675180, 0.649688,
		0.899786, -0.048270, 0.433652,
		21.294811, 16.694950, 0.610778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.145380, 17.394070, 0.510790>,  <20.664961, 16.728739, 0.307221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.145380, 17.394070, 0.510790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.087242, 17.761276, 0.658371>,  <20.052361, 17.981600, 0.746919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.087242, 17.761276, 0.658371>,  <20.145380, 17.394070, 0.510790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.087242, 17.761276, 0.658371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353774, -0.300035, 0.885903,
		0.923970, 0.259285, -0.281161,
		-0.145343, 0.918014, 0.368951,
		20.043640, 18.036680, 0.769056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.116026, 17.436043, 1.330942>,  <20.145380, 17.394070, 0.510790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.116026, 17.436043, 1.330942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.334099, 17.727829, 1.165702>,  <20.464943, 17.902901, 1.066558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.334099, 17.727829, 1.165702>,  <20.116026, 17.436043, 1.330942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.334099, 17.727829, 1.165702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728871, 0.655906, 0.196305,
		0.414152, 0.194074, 0.889277,
		0.545184, 0.729468, -0.413099,
		20.497654, 17.946669, 1.041773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.477842, 17.735327, 1.035216>,  <20.116026, 17.436043, 1.330942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.477842, 17.735327, 1.035216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.626091, 18.084064, 0.907135>,  <19.715040, 18.293306, 0.830287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.626091, 18.084064, 0.907135>,  <19.477842, 17.735327, 1.035216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.626091, 18.084064, 0.907135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.920326, 0.391152, -0.000218,
		0.125058, 0.294771, 0.947349,
		0.370622, 0.871843, -0.320202,
		19.737278, 18.345617, 0.811075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.314871, 18.139515, 1.456633>,  <19.477842, 17.735327, 1.035216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.314871, 18.139515, 1.456633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.357113, 18.369148, 1.131849>,  <19.382458, 18.506927, 0.936979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.357113, 18.369148, 1.131849>,  <19.314871, 18.139515, 1.456633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.357113, 18.369148, 1.131849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808704, 0.524727, 0.265818,
		0.578658, 0.628563, 0.519677,
		0.105605, 0.574083, -0.811958,
		19.388794, 18.541372, 0.888262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.155659, 18.775856, 1.663684>,  <19.314871, 18.139515, 1.456633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.155659, 18.775856, 1.663684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.093956, 18.752205, 1.269180>,  <19.056934, 18.738014, 1.032478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.093956, 18.752205, 1.269180>,  <19.155659, 18.775856, 1.663684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.093956, 18.752205, 1.269180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821859, 0.561736, 0.094870,
		0.548408, 0.825201, -0.135246,
		-0.154259, -0.059126, -0.986260,
		19.047678, 18.734467, 0.973302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.051140, 19.487373, 1.519836>,  <19.155659, 18.775856, 1.663684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.051140, 19.487373, 1.519836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.896900, 19.220818, 1.264574>,  <18.804358, 19.060884, 1.111417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.896900, 19.220818, 1.264574>,  <19.051140, 19.487373, 1.519836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.896900, 19.220818, 1.264574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.913041, 0.375235, 0.159858,
		0.132930, 0.644303, -0.753129,
		-0.385598, -0.666388, -0.638155,
		18.781221, 19.020901, 1.073128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.787527, 19.832310, 0.881567>,  <19.051140, 19.487373, 1.519836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.787527, 19.832310, 0.881567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.592342, 19.514874, 1.026953>,  <18.475231, 19.324411, 1.114184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.592342, 19.514874, 1.026953>,  <18.787527, 19.832310, 0.881567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.592342, 19.514874, 1.026953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730718, 0.599159, 0.327200,
		-0.477435, -0.105928, -0.872258,
		-0.487961, -0.793592, 0.363463,
		18.445953, 19.276796, 1.135992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.085384, 19.675211, 0.627440>,  <18.787527, 19.832310, 0.881567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.085384, 19.675211, 0.627440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.109337, 19.553516, 1.007725>,  <18.123709, 19.480499, 1.235896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.109337, 19.553516, 1.007725>,  <18.085384, 19.675211, 0.627440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.109337, 19.553516, 1.007725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749556, 0.615286, 0.244108,
		-0.659227, -0.727230, -0.191198,
		0.059881, -0.304236, 0.950713,
		18.127302, 19.462246, 1.292939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.545925, 20.034025, 0.900886>,  <18.085384, 19.675211, 0.627440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.545925, 20.034025, 0.900886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.691475, 19.872883, 1.236815>,  <17.778805, 19.776197, 1.438372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.691475, 19.872883, 1.236815>,  <17.545925, 20.034025, 0.900886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.691475, 19.872883, 1.236815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564681, 0.621640, 0.542861,
		-0.740763, -0.671765, -0.001287,
		0.363876, -0.402858, 0.839821,
		17.800638, 19.752026, 1.488761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.875105, 19.823530, 1.325203>,  <17.545925, 20.034025, 0.900886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.875105, 19.823530, 1.325203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.223038, 19.946182, 1.479796>,  <17.431797, 20.019773, 1.572552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.223038, 19.946182, 1.479796>,  <16.875105, 19.823530, 1.325203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.223038, 19.946182, 1.479796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481147, 0.700400, 0.527198,
		-0.109038, -0.644529, 0.756765,
		0.869833, 0.306630, 0.386483,
		17.483988, 20.038172, 1.595741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.938759, 19.702896, 2.051631>,  <16.875105, 19.823530, 1.325203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.938759, 19.702896, 2.051631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.121334, 20.022022, 1.894071>,  <17.230879, 20.213497, 1.799535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.121334, 20.022022, 1.894071>,  <16.938759, 19.702896, 2.051631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.121334, 20.022022, 1.894071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523666, 0.598788, 0.605992,
		0.719331, -0.070327, 0.691099,
		0.456440, 0.797814, -0.393899,
		17.258266, 20.261366, 1.775901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.220612, 20.192600, 2.555763>,  <16.938759, 19.702896, 2.051631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.220612, 20.192600, 2.555763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.172844, 20.409306, 2.222961>,  <17.144184, 20.539330, 2.023280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.172844, 20.409306, 2.222961>,  <17.220612, 20.192600, 2.555763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.172844, 20.409306, 2.222961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283037, 0.784652, 0.551553,
		0.951645, 0.301355, 0.059636,
		-0.119420, 0.541762, -0.832005,
		17.137018, 20.571835, 1.973359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.600641, 20.776171, 2.606084>,  <17.220612, 20.192600, 2.555763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.600641, 20.776171, 2.606084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.254433, 20.820210, 2.410636>,  <17.046707, 20.846634, 2.293368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.254433, 20.820210, 2.410636>,  <17.600641, 20.776171, 2.606084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.254433, 20.820210, 2.410636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317218, 0.634455, 0.704868,
		0.387613, 0.765078, -0.514210,
		-0.865522, 0.110099, -0.488620,
		16.994776, 20.853239, 2.264050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.550522, 21.494673, 2.447948>,  <17.600641, 20.776171, 2.606084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.550522, 21.494673, 2.447948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.200409, 21.301506, 2.458328>,  <16.990341, 21.185606, 2.464556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.200409, 21.301506, 2.458328>,  <17.550522, 21.494673, 2.447948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.200409, 21.301506, 2.458328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263919, 0.521940, 0.811126,
		-0.405249, 0.703116, -0.584296,
		-0.875283, -0.482915, 0.025950,
		16.937824, 21.156631, 2.466113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.264246, 21.874733, 2.842343>,  <17.550522, 21.494673, 2.447948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.264246, 21.874733, 2.842343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.015083, 21.561939, 2.851144>,  <16.865585, 21.374262, 2.856425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.015083, 21.561939, 2.851144>,  <17.264246, 21.874733, 2.842343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.015083, 21.561939, 2.851144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161446, 0.156022, 0.974470,
		-0.765455, 0.603453, -0.223436,
		-0.622908, -0.781986, 0.022003,
		16.828211, 21.327343, 2.857745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.659534, 22.080975, 3.228567>,  <17.264246, 21.874733, 2.842343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.659534, 22.080975, 3.228567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.725143, 21.686565, 3.216875>,  <16.764509, 21.449921, 3.209860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.725143, 21.686565, 3.216875>,  <16.659534, 22.080975, 3.228567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.725143, 21.686565, 3.216875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137251, -0.052154, 0.989162,
		-0.976862, -0.158233, -0.143887,
		0.164022, -0.986023, -0.029230,
		16.774349, 21.390759, 3.208106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.176640, 21.770330, 3.673102>,  <16.659534, 22.080975, 3.228567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.176640, 21.770330, 3.673102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.513138, 21.554340, 3.662253>,  <16.715036, 21.424746, 3.655744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.513138, 21.554340, 3.662253>,  <16.176640, 21.770330, 3.673102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.513138, 21.554340, 3.662253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082404, -0.177633, 0.980641,
		-0.534341, -0.822722, -0.193929,
		0.841243, -0.539977, -0.027121,
		16.765511, 21.392347, 3.654117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.201508, 21.111334, 3.928576>,  <16.176640, 21.770330, 3.673102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.201508, 21.111334, 3.928576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.567612, 21.261307, 3.987535>,  <16.787273, 21.351290, 4.022911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.567612, 21.261307, 3.987535>,  <16.201508, 21.111334, 3.928576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.567612, 21.261307, 3.987535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039401, -0.280815, 0.958953,
		0.400934, -0.883498, -0.242246,
		0.915259, 0.374932, 0.147399,
		16.842190, 21.373787, 4.031755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.707243, 20.564707, 4.193637>,  <16.201508, 21.111334, 3.928576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.707243, 20.564707, 4.193637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.785213, 20.946205, 4.285181>,  <16.831995, 21.175104, 4.340107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.785213, 20.946205, 4.285181>,  <16.707243, 20.564707, 4.193637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.785213, 20.946205, 4.285181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226291, -0.270771, 0.935669,
		0.954357, -0.130597, -0.268603,
		0.194926, 0.953744, 0.228859,
		16.843691, 21.232328, 4.353838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.401501, 20.658743, 4.409135>,  <16.707243, 20.564707, 4.193637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.401501, 20.658743, 4.409135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.200359, 20.942455, 4.606745>,  <17.079674, 21.112682, 4.725310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.200359, 20.942455, 4.606745>,  <17.401501, 20.658743, 4.409135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.200359, 20.942455, 4.606745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369087, -0.340624, 0.864725,
		0.781610, 0.617167, -0.090502,
		-0.502853, 0.709281, 0.494024,
		17.049503, 21.155239, 4.754952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.840225, 21.045681, 4.901025>,  <17.401501, 20.658743, 4.409135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.840225, 21.045681, 4.901025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.475620, 21.130276, 5.042117>,  <17.256857, 21.181032, 5.126772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.475620, 21.130276, 5.042117>,  <17.840225, 21.045681, 4.901025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.475620, 21.130276, 5.042117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350050, -0.051265, 0.935327,
		0.215891, 0.976036, -0.027301,
		-0.911513, 0.211485, 0.352729,
		17.202166, 21.193722, 5.147936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.836618, 21.597290, 5.382588>,  <17.840225, 21.045681, 4.901025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.836618, 21.597290, 5.382588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.510487, 21.377964, 5.456984>,  <17.314808, 21.246368, 5.501621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.510487, 21.377964, 5.456984>,  <17.836618, 21.597290, 5.382588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.510487, 21.377964, 5.456984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272963, -0.080721, 0.958632,
		-0.510618, 0.832368, 0.215484,
		-0.815328, -0.548314, 0.185988,
		17.265888, 21.213470, 5.512780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.449696, 21.962887, 5.886734>,  <17.836618, 21.597290, 5.382588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.449696, 21.962887, 5.886734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.399185, 21.566208, 5.896416>,  <17.368879, 21.328199, 5.902225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.399185, 21.566208, 5.896416>,  <17.449696, 21.962887, 5.886734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.399185, 21.566208, 5.896416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386534, -0.026719, 0.921888,
		-0.913589, 0.125769, 0.386700,
		-0.126278, -0.991700, 0.024204,
		17.361301, 21.268698, 5.903677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.286058, 21.751741, 6.521193>,  <17.449696, 21.962887, 5.886734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.286058, 21.751741, 6.521193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.347366, 21.374729, 6.402438>,  <17.384151, 21.148521, 6.331185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.347366, 21.374729, 6.402438>,  <17.286058, 21.751741, 6.521193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.347366, 21.374729, 6.402438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216592, -0.261090, 0.940702,
		-0.964156, -0.208483, 0.164128,
		0.153268, -0.942533, -0.296887,
		17.393347, 21.091969, 6.313372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.843035, 21.330282, 6.913466>,  <17.286058, 21.751741, 6.521193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.843035, 21.330282, 6.913466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.162949, 21.119781, 6.797945>,  <17.354897, 20.993481, 6.728632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.162949, 21.119781, 6.797945>,  <16.843035, 21.330282, 6.913466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.162949, 21.119781, 6.797945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135097, -0.310971, 0.940769,
		-0.584890, -0.791427, -0.177614,
		0.799783, -0.526251, -0.288803,
		17.402884, 20.961906, 6.711304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.988073, 20.685917, 7.178490>,  <16.843035, 21.330282, 6.913466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.988073, 20.685917, 7.178490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.364391, 20.808605, 7.120769>,  <17.590183, 20.882217, 7.086136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.364391, 20.808605, 7.120769>,  <16.988073, 20.685917, 7.178490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.364391, 20.808605, 7.120769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184939, -0.107688, 0.976832,
		0.284075, -0.945688, -0.158037,
		0.940797, 0.306721, -0.144304,
		17.646631, 20.900621, 7.077477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.397257, 20.254538, 7.423020>,  <16.988073, 20.685917, 7.178490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.397257, 20.254538, 7.423020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.568924, 20.614964, 7.447987>,  <17.671925, 20.831219, 7.462966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.568924, 20.614964, 7.447987>,  <17.397257, 20.254538, 7.423020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.568924, 20.614964, 7.447987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058624, -0.096745, 0.993581,
		0.901321, -0.422752, -0.094344,
		0.429166, 0.901066, 0.062415,
		17.697674, 20.885283, 7.466711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.022356, 20.213877, 7.841042>,  <17.397257, 20.254538, 7.423020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.022356, 20.213877, 7.841042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.872726, 20.584759, 7.848578>,  <17.782948, 20.807289, 7.853101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.872726, 20.584759, 7.848578>,  <18.022356, 20.213877, 7.841042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.872726, 20.584759, 7.848578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193202, 0.058042, 0.979441,
		0.907050, 0.370025, -0.200850,
		-0.374075, 0.927207, 0.018842,
		17.760504, 20.862921, 7.854231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.554768, 20.586132, 8.142795>,  <18.022356, 20.213877, 7.841042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.554768, 20.586132, 8.142795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.203110, 20.768406, 8.198584>,  <17.992115, 20.877771, 8.232058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.203110, 20.768406, 8.198584>,  <18.554768, 20.586132, 8.142795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.203110, 20.768406, 8.198584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228818, 0.146914, 0.962319,
		0.418026, 0.877933, -0.233428,
		-0.879146, 0.455687, 0.139473,
		17.939365, 20.905111, 8.240425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.714130, 21.241337, 8.315529>,  <18.554768, 20.586132, 8.142795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.714130, 21.241337, 8.315529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.347923, 21.183838, 8.465815>,  <18.128199, 21.149338, 8.555986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.347923, 21.183838, 8.465815>,  <18.714130, 21.241337, 8.315529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.347923, 21.183838, 8.465815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336394, 0.238602, 0.910993,
		-0.220600, 0.960420, -0.170089,
		-0.915519, -0.143748, 0.375715,
		18.073267, 21.140713, 8.578529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.722784, 21.583847, 8.842272>,  <18.714130, 21.241337, 8.315529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.722784, 21.583847, 8.842272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.394039, 21.378384, 8.940822>,  <18.196793, 21.255106, 8.999951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.394039, 21.378384, 8.940822>,  <18.722784, 21.583847, 8.842272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.394039, 21.378384, 8.940822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234186, 0.089622, 0.968052,
		-0.519329, 0.853301, 0.046635,
		-0.821860, -0.513658, 0.246375,
		18.147482, 21.224287, 9.014734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.301001, 21.989697, 9.352230>,  <18.722784, 21.583847, 8.842272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.301001, 21.989697, 9.352230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.172760, 21.613659, 9.398597>,  <18.095816, 21.388037, 9.426417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.172760, 21.613659, 9.398597>,  <18.301001, 21.989697, 9.352230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.172760, 21.613659, 9.398597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161908, 0.066188, 0.984584,
		-0.933274, 0.334428, 0.130988,
		-0.320602, -0.940094, 0.115918,
		18.076580, 21.331631, 9.433372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.871168, 21.952497, 9.842241>,  <18.301001, 21.989697, 9.352230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.871168, 21.952497, 9.842241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.031662, 21.587154, 9.814548>,  <18.127958, 21.367949, 9.797933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.031662, 21.587154, 9.814548>,  <17.871168, 21.952497, 9.842241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.031662, 21.587154, 9.814548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302978, 0.061009, 0.951043,
		-0.864417, -0.402564, 0.301205,
		0.401232, -0.913356, -0.069231,
		18.152031, 21.313147, 9.793779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.773657, 21.616837, 10.546394>,  <17.871168, 21.952497, 9.842241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.773657, 21.616837, 10.546394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.042160, 21.353222, 10.410698>,  <18.203262, 21.195053, 10.329280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.042160, 21.353222, 10.410698>,  <17.773657, 21.616837, 10.546394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.042160, 21.353222, 10.410698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457209, 0.007904, 0.889324,
		-0.583417, -0.752069, 0.306623,
		0.671257, -0.659037, -0.339241,
		18.243538, 21.155510, 10.308926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.700312, 20.920874, 10.967233>,  <17.773657, 21.616837, 10.546394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.700312, 20.920874, 10.967233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.065941, 20.895508, 10.807009>,  <18.285318, 20.880289, 10.710875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.065941, 20.895508, 10.807009>,  <17.700312, 20.920874, 10.967233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.065941, 20.895508, 10.807009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392468, -0.110503, 0.913103,
		-0.102143, -0.991852, -0.076130,
		0.914076, -0.063388, -0.400558,
		18.340162, 20.876484, 10.686841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.112667, 20.293667, 11.271217>,  <17.700312, 20.920874, 10.967233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.112667, 20.293667, 11.271217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.410366, 20.530346, 11.147287>,  <18.588985, 20.672354, 11.072929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.410366, 20.530346, 11.147287>,  <18.112667, 20.293667, 11.271217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.410366, 20.530346, 11.147287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429449, -0.068662, 0.900477,
		0.511536, -0.803232, -0.305205,
		0.744248, 0.591696, -0.309824,
		18.633640, 20.707855, 11.054340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.730433, 19.946108, 11.399124>,  <18.112667, 20.293667, 11.271217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.730433, 19.946108, 11.399124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.824966, 20.334221, 11.378339>,  <18.881687, 20.567089, 11.365868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.824966, 20.334221, 11.378339>,  <18.730433, 19.946108, 11.399124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.824966, 20.334221, 11.378339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428675, -0.056123, 0.901714,
		0.871999, -0.235383, -0.429199,
		0.236336, 0.970281, -0.051963,
		18.895866, 20.625305, 11.362750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.422941, 20.032068, 11.406033>,  <18.730433, 19.946108, 11.399124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.422941, 20.032068, 11.406033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.266277, 20.369537, 11.552903>,  <19.172279, 20.572020, 11.641026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.266277, 20.369537, 11.552903>,  <19.422941, 20.032068, 11.406033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.266277, 20.369537, 11.552903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472101, -0.158262, 0.867222,
		0.789762, 0.513001, -0.336314,
		-0.391660, 0.843673, 0.367177,
		19.148779, 20.622639, 11.663056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.993269, 20.333832, 11.803930>,  <19.422941, 20.032068, 11.406033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.993269, 20.333832, 11.803930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.660023, 20.526642, 11.912427>,  <19.460075, 20.642328, 11.977525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.660023, 20.526642, 11.912427>,  <19.993269, 20.333832, 11.803930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.660023, 20.526642, 11.912427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379239, 0.140854, 0.914515,
		0.402615, 0.864761, -0.300150,
		-0.833114, 0.482026, 0.271242,
		19.410088, 20.671249, 11.993799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.264942, 20.803350, 12.306633>,  <19.993269, 20.333832, 11.803930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.264942, 20.803350, 12.306633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.865677, 20.818619, 12.325438>,  <19.626118, 20.827780, 12.336720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.865677, 20.818619, 12.325438>,  <20.264942, 20.803350, 12.306633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.865677, 20.818619, 12.325438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055963, 0.284876, 0.956929,
		0.023135, 0.957804, -0.286490,
		-0.998165, 0.038172, 0.047011,
		19.566227, 20.830070, 12.339540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.051834, 21.482229, 12.553987>,  <20.264942, 20.803350, 12.306633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.051834, 21.482229, 12.553987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.736370, 21.251579, 12.639326>,  <19.547092, 21.113190, 12.690530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.736370, 21.251579, 12.639326>,  <20.051834, 21.482229, 12.553987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.736370, 21.251579, 12.639326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001338, 0.348614, 0.937265,
		-0.614828, 0.738898, -0.275710,
		-0.788660, -0.576626, 0.213349,
		19.499773, 21.078592, 12.703331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.489016, 21.919540, 13.015733>,  <20.051834, 21.482229, 12.553987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.489016, 21.919540, 13.015733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.431591, 21.528526, 13.077465>,  <19.397137, 21.293919, 13.114505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.431591, 21.528526, 13.077465>,  <19.489016, 21.919540, 13.015733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.431591, 21.528526, 13.077465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044986, 0.149339, 0.987762,
		-0.988619, 0.148745, 0.022537,
		-0.143559, -0.977534, 0.154331,
		19.388523, 21.235266, 13.123764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.001125, 21.972675, 13.562304>,  <19.489016, 21.919540, 13.015733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.001125, 21.972675, 13.562304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.141029, 21.597942, 13.560753>,  <19.224972, 21.373102, 13.559822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.141029, 21.597942, 13.560753>,  <19.001125, 21.972675, 13.562304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.141029, 21.597942, 13.560753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062319, 0.019135, 0.997873,
		-0.934765, -0.349256, 0.065075,
		0.349758, -0.936832, -0.003878,
		19.245956, 21.316893, 13.559589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.637918, 21.617012, 14.011017>,  <19.001125, 21.972675, 13.562304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.637918, 21.617012, 14.011017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.961529, 21.383678, 13.982187>,  <19.155695, 21.243677, 13.964890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.961529, 21.383678, 13.982187>,  <18.637918, 21.617012, 14.011017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.961529, 21.383678, 13.982187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010741, -0.107927, 0.994101,
		-0.587673, -0.805029, -0.081051,
		0.809027, -0.583335, -0.072073,
		19.204237, 21.208677, 13.960566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.514420, 21.098085, 14.491578>,  <18.637918, 21.617012, 14.011017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.514420, 21.098085, 14.491578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.912361, 21.086918, 14.452610>,  <19.151125, 21.080217, 14.429229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.912361, 21.086918, 14.452610>,  <18.514420, 21.098085, 14.491578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.912361, 21.086918, 14.452610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097058, -0.014056, 0.995179,
		-0.029174, -0.999511, -0.011272,
		0.994851, -0.027940, -0.097420,
		19.210817, 21.078541, 14.423384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.758171, 20.628298, 15.009224>,  <18.514420, 21.098085, 14.491578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.758171, 20.628298, 15.009224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.090115, 20.823799, 14.901556>,  <19.289280, 20.941101, 14.836955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.090115, 20.823799, 14.901556>,  <18.758171, 20.628298, 15.009224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.090115, 20.823799, 14.901556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269565, 0.071192, 0.960347,
		0.488538, -0.869511, -0.072672,
		0.829859, 0.488756, -0.269169,
		19.339073, 20.970427, 14.820806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.354801, 20.346321, 15.510232>,  <18.758171, 20.628298, 15.009224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.354801, 20.346321, 15.510232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.492142, 20.690327, 15.359243>,  <19.574547, 20.896730, 15.268650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.492142, 20.690327, 15.359243>,  <19.354801, 20.346321, 15.510232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.492142, 20.690327, 15.359243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447363, 0.203628, 0.870863,
		0.825818, -0.467880, -0.314822,
		0.343353, 0.860014, -0.377471,
		19.595148, 20.948332, 15.246002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.981485, 20.280745, 15.669016>,  <19.354801, 20.346321, 15.510232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.981485, 20.280745, 15.669016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.858101, 20.659916, 15.637304>,  <19.784069, 20.887419, 15.618278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.858101, 20.659916, 15.637304>,  <19.981485, 20.280745, 15.669016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.858101, 20.659916, 15.637304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333995, 0.185966, 0.924048,
		0.890673, 0.258556, -0.373966,
		-0.308463, 0.947927, -0.079278,
		19.765562, 20.944294, 15.613521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.601999, 20.703720, 15.923625>,  <19.981485, 20.280745, 15.669016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.601999, 20.703720, 15.923625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.283871, 20.946045, 15.932169>,  <20.092993, 21.091440, 15.937295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.283871, 20.946045, 15.932169>,  <20.601999, 20.703720, 15.923625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.283871, 20.946045, 15.932169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350948, 0.431429, 0.831086,
		0.494265, 0.668478, -0.555733,
		-0.795322, 0.605810, 0.021360,
		20.045275, 21.127789, 15.938577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.881453, 21.299700, 16.316031>,  <20.601999, 20.703720, 15.923625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.881453, 21.299700, 16.316031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.487236, 21.367226, 16.310238>,  <20.250706, 21.407742, 16.306763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.487236, 21.367226, 16.310238>,  <20.881453, 21.299700, 16.316031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.487236, 21.367226, 16.310238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052951, 0.388049, 0.920117,
		0.160950, 0.906046, -0.391377,
		-0.985541, 0.168817, -0.014481,
		20.191574, 21.417871, 16.305893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.766315, 21.981899, 16.319847>,  <20.881453, 21.299700, 16.316031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.766315, 21.981899, 16.319847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.430401, 21.815517, 16.459414>,  <20.228851, 21.715689, 16.543154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.430401, 21.815517, 16.459414>,  <20.766315, 21.981899, 16.319847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.430401, 21.815517, 16.459414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023623, 0.670054, 0.741936,
		-0.542404, 0.614825, -0.572528,
		-0.839786, -0.415954, 0.348916,
		20.178465, 21.690731, 16.564089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.304621, 22.485773, 16.521582>,  <20.766315, 21.981899, 16.319847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.304621, 22.485773, 16.521582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.137302, 22.173355, 16.707052>,  <20.036911, 21.985905, 16.818335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.137302, 22.173355, 16.707052>,  <20.304621, 22.485773, 16.521582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.137302, 22.173355, 16.707052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157409, 0.565090, 0.809874,
		-0.894567, 0.265781, -0.359318,
		-0.418296, -0.781047, 0.463675,
		20.011814, 21.939041, 16.846155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.743299, 22.774673, 16.826878>,  <20.304621, 22.485773, 16.521582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.743299, 22.774673, 16.826878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.817173, 22.435814, 17.026169>,  <19.861498, 22.232498, 17.145742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.817173, 22.435814, 17.026169>,  <19.743299, 22.774673, 16.826878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.817173, 22.435814, 17.026169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156505, 0.475127, 0.865887,
		-0.970256, -0.237892, -0.044834,
		0.184686, -0.847149, 0.498227,
		19.872580, 22.181669, 17.175636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.245523, 22.751057, 17.415228>,  <19.743299, 22.774673, 16.826878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.245523, 22.751057, 17.415228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.537937, 22.504974, 17.533289>,  <19.713385, 22.357325, 17.604126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.537937, 22.504974, 17.533289>,  <19.245523, 22.751057, 17.415228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.537937, 22.504974, 17.533289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054125, 0.378910, 0.923849,
		-0.680193, -0.691339, 0.243698,
		0.731032, -0.615205, 0.295151,
		19.757246, 22.320414, 17.621834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.122837, 22.815092, 18.017359>,  <19.245523, 22.751057, 17.415228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.122837, 22.815092, 18.017359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.464890, 22.610664, 18.052126>,  <19.670122, 22.488008, 18.072987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.464890, 22.610664, 18.052126>,  <19.122837, 22.815092, 18.017359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.464890, 22.610664, 18.052126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018462, 0.197584, 0.980112,
		-0.518080, -0.836521, 0.178396,
		0.855133, -0.511070, 0.086920,
		19.721430, 22.457344, 18.078201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.076359, 22.220095, 18.539280>,  <19.122837, 22.815092, 18.017359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.076359, 22.220095, 18.539280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.463604, 22.317448, 18.515554>,  <19.695951, 22.375860, 18.501320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.463604, 22.317448, 18.515554>,  <19.076359, 22.220095, 18.539280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.463604, 22.317448, 18.515554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064310, -0.012628, 0.997850,
		0.242112, -0.969848, -0.027877,
		0.968115, 0.243384, -0.059313,
		19.754038, 22.390463, 18.497761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.428341, 21.786440, 18.992765>,  <19.076359, 22.220095, 18.539280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.428341, 21.786440, 18.992765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.695381, 22.083019, 18.965738>,  <19.855606, 22.260967, 18.949522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.695381, 22.083019, 18.965738>,  <19.428341, 21.786440, 18.992765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.695381, 22.083019, 18.965738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237736, -0.126293, 0.963085,
		0.705543, -0.659019, -0.260582,
		0.667601, 0.741447, -0.067567,
		19.895662, 22.305454, 18.945469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.049086, 21.565611, 19.422915>,  <19.428341, 21.786440, 18.992765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.049086, 21.565611, 19.422915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.056129, 21.962528, 19.373848>,  <20.060356, 22.200678, 19.344408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.056129, 21.962528, 19.373848>,  <20.049086, 21.565611, 19.422915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.056129, 21.962528, 19.373848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261443, 0.113850, 0.958481,
		0.965058, -0.048947, -0.257423,
		0.017608, 0.992292, -0.122669,
		20.061411, 22.260216, 19.337048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.580452, 21.734507, 19.904148>,  <20.049086, 21.565611, 19.422915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.580452, 21.734507, 19.904148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.372200, 22.069389, 19.837185>,  <20.247248, 22.270319, 19.797007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.372200, 22.069389, 19.837185>,  <20.580452, 21.734507, 19.904148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.372200, 22.069389, 19.837185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015713, 0.205438, 0.978544,
		0.853637, 0.506830, -0.120113,
		-0.520631, 0.837209, -0.167406,
		20.216011, 22.320553, 19.786963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.937225, 22.201136, 20.244724>,  <20.580452, 21.734507, 19.904148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.937225, 22.201136, 20.244724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.574203, 22.368279, 20.228056>,  <20.356390, 22.468565, 20.218054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.574203, 22.368279, 20.228056>,  <20.937225, 22.201136, 20.244724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.574203, 22.368279, 20.228056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074857, 0.258630, 0.963072,
		0.413206, 0.870922, -0.266001,
		-0.907556, 0.417859, -0.041673,
		20.301937, 22.493635, 20.215553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.026655, 22.853050, 20.601261>,  <20.937225, 22.201136, 20.244724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.026655, 22.853050, 20.601261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.637959, 22.758713, 20.597332>,  <20.404741, 22.702110, 20.594975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.637959, 22.758713, 20.597332>,  <21.026655, 22.853050, 20.601261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.637959, 22.758713, 20.597332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122532, 0.468422, 0.874966,
		-0.201752, 0.851445, -0.484084,
		-0.971742, -0.235842, -0.009825,
		20.346436, 22.687960, 20.594385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.710003, 23.425001, 20.977741>,  <21.026655, 22.853050, 20.601261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.710003, 23.425001, 20.977741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.408211, 23.162659, 20.987627>,  <20.227135, 23.005253, 20.993559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.408211, 23.162659, 20.987627>,  <20.710003, 23.425001, 20.977741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.408211, 23.162659, 20.987627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361266, 0.446442, 0.818643,
		-0.547945, 0.608723, -0.573771,
		-0.754482, -0.655855, 0.024715,
		20.181866, 22.965902, 20.995041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.088083, 23.849678, 20.970528>,  <20.710003, 23.425001, 20.977741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.088083, 23.849678, 20.970528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.022976, 23.486897, 21.125935>,  <19.983912, 23.269228, 21.219179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.022976, 23.486897, 21.125935>,  <20.088083, 23.849678, 20.970528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.022976, 23.486897, 21.125935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341059, 0.421212, 0.840393,
		-0.925843, 0.004282, -0.377884,
		-0.162768, -0.906952, 0.388515,
		19.974146, 23.214811, 21.242489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.456337, 23.948412, 21.250332>,  <20.088083, 23.849678, 20.970528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.456337, 23.948412, 21.250332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.596737, 23.612179, 21.415363>,  <19.680977, 23.410439, 21.514383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.596737, 23.612179, 21.415363>,  <19.456337, 23.948412, 21.250332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.596737, 23.612179, 21.415363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396020, 0.266007, 0.878868,
		-0.848510, -0.471870, -0.239520,
		0.350997, -0.840583, 0.412580,
		19.702036, 23.360004, 21.539137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.952120, 23.736860, 21.649492>,  <19.456337, 23.948412, 21.250332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.952120, 23.736860, 21.649492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.282848, 23.561615, 21.790588>,  <19.481285, 23.456469, 21.875246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.282848, 23.561615, 21.790588>,  <18.952120, 23.736860, 21.649492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.282848, 23.561615, 21.790588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287858, 0.209182, 0.934548,
		-0.483223, -0.874243, 0.046842,
		0.826821, -0.438111, 0.352739,
		19.530895, 23.430182, 21.896410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.691595, 23.619114, 22.339287>,  <18.952120, 23.736860, 21.649492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.691595, 23.619114, 22.339287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.084534, 23.553486, 22.375225>,  <19.320297, 23.514109, 22.396788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.084534, 23.553486, 22.375225>,  <18.691595, 23.619114, 22.339287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.084534, 23.553486, 22.375225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053738, 0.212547, 0.975672,
		-0.179174, -0.963278, 0.199978,
		0.982349, -0.164069, 0.089848,
		19.379238, 23.504265, 22.402180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.776049, 23.392012, 22.977839>,  <18.691595, 23.619114, 22.339287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.776049, 23.392012, 22.977839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.145416, 23.528030, 22.906664>,  <19.367037, 23.609642, 22.863958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.145416, 23.528030, 22.906664>,  <18.776049, 23.392012, 22.977839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.145416, 23.528030, 22.906664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168057, 0.058550, 0.984037,
		0.345040, -0.938583, -0.003081,
		0.923420, 0.340050, -0.177938,
		19.422441, 23.630045, 22.853283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.283195, 23.104815, 23.483402>,  <18.776049, 23.392012, 22.977839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.283195, 23.104815, 23.483402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.476635, 23.431259, 23.356850>,  <19.592699, 23.627125, 23.280918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.476635, 23.431259, 23.356850>,  <19.283195, 23.104815, 23.483402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.476635, 23.431259, 23.356850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270117, 0.204670, 0.940822,
		0.832569, -0.540439, -0.121468,
		0.483597, 0.816110, -0.316383,
		19.621714, 23.676092, 23.261934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.985716, 23.059690, 23.763746>,  <19.283195, 23.104815, 23.483402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.985716, 23.059690, 23.763746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.918106, 23.437901, 23.652454>,  <19.877541, 23.664827, 23.585680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.918106, 23.437901, 23.652454>,  <19.985716, 23.059690, 23.763746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.918106, 23.437901, 23.652454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329291, 0.320243, 0.888263,
		0.928977, 0.058518, -0.365481,
		-0.169023, 0.945526, -0.278229,
		19.867399, 23.721558, 23.568985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.580074, 23.401508, 23.958281>,  <19.985716, 23.059690, 23.763746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.580074, 23.401508, 23.958281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.270103, 23.652569, 23.928507>,  <20.084120, 23.803205, 23.910643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.270103, 23.652569, 23.928507>,  <20.580074, 23.401508, 23.958281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.270103, 23.652569, 23.928507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048362, 0.176304, 0.983147,
		0.630195, 0.758269, -0.166978,
		-0.774929, 0.627650, -0.074435,
		20.037624, 23.840864, 23.906176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.898918, 23.985598, 24.284882>,  <20.580074, 23.401508, 23.958281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.898918, 23.985598, 24.284882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.505096, 24.055622, 24.284084>,  <20.268803, 24.097637, 24.283606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.505096, 24.055622, 24.284084>,  <20.898918, 23.985598, 24.284882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.505096, 24.055622, 24.284084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058066, 0.337283, 0.939611,
		0.165161, 0.924984, -0.342239,
		-0.984556, 0.175060, -0.001996,
		20.209730, 24.108139, 24.283485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.547508, 24.524769, 24.413366>,  <20.898918, 23.985598, 24.284882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.547508, 24.524769, 24.413366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.410236, 24.313015, 24.723715>,  <21.327873, 24.185963, 24.909924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.410236, 24.313015, 24.723715>,  <21.547508, 24.524769, 24.413366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.410236, 24.313015, 24.723715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914495, 0.000148, 0.404598,
		-0.214303, 0.848381, 0.484070,
		-0.343181, -0.529386, 0.775872,
		21.307281, 24.154200, 24.956476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.588570, 24.619232, 25.115290>,  <21.547508, 24.524769, 24.413366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.588570, 24.619232, 25.115290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.745560, 24.255352, 25.061016>,  <21.839754, 24.037024, 25.028452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.745560, 24.255352, 25.061016>,  <21.588570, 24.619232, 25.115290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.745560, 24.255352, 25.061016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144701, 0.206752, -0.967634,
		0.908308, 0.360141, 0.212780,
		0.392477, -0.909699, -0.135682,
		21.863302, 23.982443, 25.020311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.443380, 25.184690, 24.656155>,  <21.588570, 24.619232, 25.115290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.443380, 25.184690, 24.656155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.351604, 24.964146, 24.335316>,  <21.296539, 24.831820, 24.142813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.351604, 24.964146, 24.335316>,  <21.443380, 25.184690, 24.656155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.351604, 24.964146, 24.335316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717343, -0.461199, 0.522221,
		-0.657859, 0.695196, -0.289697,
		-0.229438, -0.551360, -0.802098,
		21.282772, 24.798738, 24.094687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.727846, 24.976828, 24.629745>,  <21.443380, 25.184690, 24.656155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.727846, 24.976828, 24.629745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.776970, 24.773930, 24.288542>,  <20.806444, 24.652191, 24.083820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.776970, 24.773930, 24.288542>,  <20.727846, 24.976828, 24.629745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.776970, 24.773930, 24.288542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619462, 0.710696, -0.333433,
		0.775361, -0.487458, 0.401497,
		0.122808, -0.507243, -0.853008,
		20.813812, 24.621758, 24.032639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.957354, 25.037586, 24.945606>,  <20.727846, 24.976828, 24.629745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.957354, 25.037586, 24.945606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.720295, 25.342342, 25.050140>,  <19.578060, 25.525196, 25.112860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.720295, 25.342342, 25.050140>,  <19.957354, 25.037586, 24.945606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.720295, 25.342342, 25.050140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565674, -0.162725, -0.808414,
		-0.573397, -0.626932, 0.527420,
		-0.592645, 0.761890, 0.261333,
		19.542501, 25.570910, 25.128540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.394461, 24.784666, 24.748846>,  <19.957354, 25.037586, 24.945606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.394461, 24.784666, 24.748846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.309742, 25.174850, 24.772900>,  <19.258911, 25.408962, 24.787333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.309742, 25.174850, 24.772900>,  <19.394461, 24.784666, 24.748846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.309742, 25.174850, 24.772900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607486, -0.083201, -0.789962,
		-0.765574, -0.203842, 0.610201,
		-0.211796, 0.975462, 0.060134,
		19.246202, 25.467489, 24.790939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.669350, 24.901741, 24.744118>,  <19.394461, 24.784666, 24.748846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.669350, 24.901741, 24.744118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.838871, 25.235165, 24.602373>,  <18.940584, 25.435219, 24.517326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.838871, 25.235165, 24.602373>,  <18.669350, 24.901741, 24.744118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.838871, 25.235165, 24.602373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671135, 0.026264, -0.740870,
		-0.608252, 0.551806, 0.570561,
		0.423802, 0.833559, -0.354361,
		18.966011, 25.485231, 24.496065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.205866, 25.396498, 24.864294>,  <18.669350, 24.901741, 24.744118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.205866, 25.396498, 24.864294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.451565, 25.411823, 24.549021>,  <18.598984, 25.421019, 24.359858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.451565, 25.411823, 24.549021>,  <18.205866, 25.396498, 24.864294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.451565, 25.411823, 24.549021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779370, -0.127016, -0.613554,
		-0.123618, 0.991160, -0.048161,
		0.614248, 0.038312, -0.788182,
		18.635839, 25.423317, 24.312567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.015186, 25.926388, 24.289289>,  <18.205866, 25.396498, 24.864294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.015186, 25.926388, 24.289289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.237534, 25.642586, 24.116032>,  <18.370941, 25.472305, 24.012077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.237534, 25.642586, 24.116032>,  <18.015186, 25.926388, 24.289289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.237534, 25.642586, 24.116032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632907, -0.023416, -0.773874,
		0.538924, 0.704312, -0.462067,
		0.555868, -0.709505, -0.433145,
		18.404293, 25.429735, 23.986088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.035900, 26.011871, 23.572832>,  <18.015186, 25.926388, 24.289289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.035900, 26.011871, 23.572832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.175770, 25.637123, 23.572193>,  <18.259691, 25.412273, 23.571810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.175770, 25.637123, 23.572193>,  <18.035900, 26.011871, 23.572832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.175770, 25.637123, 23.572193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556316, -0.206264, -0.804964,
		0.753817, 0.282365, -0.593321,
		0.349675, -0.936870, -0.001599,
		18.280672, 25.356062, 23.571714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.988670, 25.907696, 22.854670>,  <18.035900, 26.011871, 23.572832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.988670, 25.907696, 22.854670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.012936, 25.554245, 23.040367>,  <18.027494, 25.342175, 23.151787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.012936, 25.554245, 23.040367>,  <17.988670, 25.907696, 22.854670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.012936, 25.554245, 23.040367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392048, -0.448817, -0.803033,
		0.917943, -0.133292, -0.373650,
		0.060662, -0.883627, 0.464246,
		18.031134, 25.289158, 23.179642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.547668, 25.500624, 22.418432>,  <17.988670, 25.907696, 22.854670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.547668, 25.500624, 22.418432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.293648, 25.267597, 22.621340>,  <18.141235, 25.127781, 22.743084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.293648, 25.267597, 22.621340>,  <18.547668, 25.500624, 22.418432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.293648, 25.267597, 22.621340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312672, -0.406630, -0.858422,
		0.706360, -0.703752, 0.076079,
		-0.635052, -0.582568, 0.507271,
		18.103132, 25.092827, 22.773521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.575294, 24.889351, 22.092707>,  <18.547668, 25.500624, 22.418432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.575294, 24.889351, 22.092707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.225742, 24.864059, 22.285513>,  <18.016012, 24.848885, 22.401196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.225742, 24.864059, 22.285513>,  <18.575294, 24.889351, 22.092707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.225742, 24.864059, 22.285513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395078, -0.485399, -0.779937,
		0.283283, -0.872003, 0.399200,
		-0.873879, -0.063228, 0.482014,
		17.963579, 24.845091, 22.430117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.355078, 24.203234, 21.952250>,  <18.575294, 24.889351, 22.092707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.355078, 24.203234, 21.952250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.023235, 24.389915, 22.074848>,  <17.824129, 24.501925, 22.148407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.023235, 24.389915, 22.074848>,  <18.355078, 24.203234, 21.952250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.023235, 24.389915, 22.074848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511230, -0.414215, -0.753040,
		-0.224490, -0.781418, 0.582228,
		-0.829607, 0.466703, 0.306497,
		17.774353, 24.529926, 22.166798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.871571, 23.685745, 22.100515>,  <18.355078, 24.203234, 21.952250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.871571, 23.685745, 22.100515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.650230, 24.011906, 22.032482>,  <17.517426, 24.207602, 21.991663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.650230, 24.011906, 22.032482>,  <17.871571, 23.685745, 22.100515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.650230, 24.011906, 22.032482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468382, -0.473454, -0.745962,
		-0.688783, -0.333115, 0.643905,
		-0.553351, 0.815399, -0.170082,
		17.484224, 24.256525, 21.981457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.169905, 23.470852, 21.978899>,  <17.871571, 23.685745, 22.100515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.169905, 23.470852, 21.978899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.152023, 23.839828, 21.825481>,  <17.141294, 24.061214, 21.733431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.152023, 23.839828, 21.825481>,  <17.169905, 23.470852, 21.978899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.152023, 23.839828, 21.825481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601526, -0.331383, -0.726878,
		-0.797601, 0.198216, 0.569686,
		-0.044705, 0.922440, -0.383543,
		17.138611, 24.116560, 21.710419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.466112, 23.467670, 21.686638>,  <17.169905, 23.470852, 21.978899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.466112, 23.467670, 21.686638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.668579, 23.772446, 21.525023>,  <16.790058, 23.955311, 21.428053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.668579, 23.772446, 21.525023>,  <16.466112, 23.467670, 21.686638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.668579, 23.772446, 21.525023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334504, -0.258365, -0.906286,
		-0.794923, 0.593883, 0.124097,
		0.506165, 0.761939, -0.404037,
		16.820429, 24.001028, 21.403812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.014645, 23.795876, 21.227280>,  <16.466112, 23.467670, 21.686638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.014645, 23.795876, 21.227280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.382145, 23.895771, 21.104952>,  <16.602646, 23.955709, 21.031555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.382145, 23.895771, 21.104952>,  <16.014645, 23.795876, 21.227280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.382145, 23.895771, 21.104952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266101, -0.180563, -0.946883,
		-0.291695, 0.951329, -0.099436,
		0.918751, 0.249741, -0.305819,
		16.657770, 23.970694, 21.013206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.844612, 24.162868, 20.612837>,  <16.014645, 23.795876, 21.227280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.844612, 24.162868, 20.612837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.236382, 24.082592, 20.604311>,  <16.471443, 24.034426, 20.599195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.236382, 24.082592, 20.604311>,  <15.844612, 24.162868, 20.612837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.236382, 24.082592, 20.604311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064874, -0.213061, -0.974883,
		0.191108, 0.956205, -0.221696,
		0.979423, -0.200691, -0.021315,
		16.530209, 24.022385, 20.597916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.189934, 24.615229, 20.149023>,  <15.844612, 24.162868, 20.612837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.189934, 24.615229, 20.149023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.424660, 24.292873, 20.180504>,  <16.565496, 24.099461, 20.199392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.424660, 24.292873, 20.180504>,  <16.189934, 24.615229, 20.149023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.424660, 24.292873, 20.180504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152122, 0.014258, -0.988259,
		0.795302, 0.591899, 0.130960,
		0.586816, -0.805886, 0.078702,
		16.600704, 24.051107, 20.204115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.718880, 24.770779, 19.635735>,  <16.189934, 24.615229, 20.149023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.718880, 24.770779, 19.635735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.743248, 24.380566, 19.720236>,  <16.757870, 24.146439, 19.770937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.743248, 24.380566, 19.720236>,  <16.718880, 24.770779, 19.635735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.743248, 24.380566, 19.720236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083490, -0.205924, -0.975000,
		0.994645, 0.077036, 0.068902,
		0.060922, -0.975531, 0.211253,
		16.761524, 24.087906, 19.783611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.320930, 24.547535, 19.221846>,  <16.718880, 24.770779, 19.635735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.320930, 24.547535, 19.221846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.117836, 24.215706, 19.314812>,  <16.995979, 24.016609, 19.370592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.117836, 24.215706, 19.314812>,  <17.320930, 24.547535, 19.221846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.117836, 24.215706, 19.314812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065737, -0.306294, -0.949665,
		0.859002, -0.466899, 0.210050,
		-0.507735, -0.829572, 0.232414,
		16.965515, 23.966835, 19.384537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.804903, 23.948498, 19.078176>,  <17.320930, 24.547535, 19.221846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.804903, 23.948498, 19.078176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.427746, 23.817062, 19.056326>,  <17.201452, 23.738201, 19.043215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.427746, 23.817062, 19.056326>,  <17.804903, 23.948498, 19.078176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.427746, 23.817062, 19.056326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201897, -0.433336, -0.878327,
		0.264935, -0.839197, 0.474930,
		-0.942893, -0.328587, -0.054626,
		17.144878, 23.718487, 19.039938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.751205, 23.184027, 18.746616>,  <17.804903, 23.948498, 19.078176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.751205, 23.184027, 18.746616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.386703, 23.341038, 18.696762>,  <17.168001, 23.435246, 18.666849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.386703, 23.341038, 18.696762>,  <17.751205, 23.184027, 18.746616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.386703, 23.341038, 18.696762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013568, -0.331078, -0.943506,
		-0.411620, -0.858083, 0.307022,
		-0.911255, 0.392532, -0.124636,
		17.113327, 23.458796, 18.659372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.447130, 22.744076, 18.229235>,  <17.751205, 23.184027, 18.746616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.447130, 22.744076, 18.229235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.249100, 23.091259, 18.244995>,  <17.130281, 23.299568, 18.254452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.249100, 23.091259, 18.244995>,  <17.447130, 22.744076, 18.229235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.249100, 23.091259, 18.244995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095085, -0.009050, -0.995428,
		-0.863631, -0.496559, 0.087010,
		-0.495076, 0.867956, 0.039400,
		17.100576, 23.351646, 18.256815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.918705, 22.634811, 17.749674>,  <17.447130, 22.744076, 18.229235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.918705, 22.634811, 17.749674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.947220, 23.029598, 17.807383>,  <16.964329, 23.266470, 17.842009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.947220, 23.029598, 17.807383>,  <16.918705, 22.634811, 17.749674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.947220, 23.029598, 17.807383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283941, 0.158737, -0.945611,
		-0.956188, 0.026446, 0.291557,
		0.071288, 0.986967, 0.144273,
		16.968607, 23.325687, 17.850664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.293270, 22.794840, 17.394043>,  <16.918705, 22.634811, 17.749674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.293270, 22.794840, 17.394043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.517338, 23.121391, 17.450235>,  <16.651779, 23.317322, 17.483952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.517338, 23.121391, 17.450235>,  <16.293270, 22.794840, 17.394043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.517338, 23.121391, 17.450235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426091, 0.429394, -0.796283,
		-0.710391, 0.386197, 0.588385,
		0.560171, 0.816378, 0.140482,
		16.685389, 23.366304, 17.492380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.857664, 23.424826, 17.280136>,  <16.293270, 22.794840, 17.394043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.857664, 23.424826, 17.280136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.231300, 23.550251, 17.211840>,  <16.455482, 23.625507, 17.170862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.231300, 23.550251, 17.211840>,  <15.857664, 23.424826, 17.280136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.231300, 23.550251, 17.211840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313923, 0.493493, -0.811121,
		-0.170080, 0.811259, 0.559403,
		0.934091, 0.313564, -0.170740,
		16.511528, 23.644320, 17.160618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.800223, 23.987249, 16.819160>,  <15.857664, 23.424826, 17.280136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.800223, 23.987249, 16.819160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.183720, 23.874371, 16.805412>,  <16.413816, 23.806643, 16.797163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.183720, 23.874371, 16.805412>,  <15.800223, 23.987249, 16.819160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.183720, 23.874371, 16.805412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087000, 0.406361, -0.909561,
		0.270645, 0.869043, 0.414146,
		0.958740, -0.282199, -0.034372,
		16.471342, 23.789711, 16.795101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.070827, 24.488346, 16.388527>,  <15.800223, 23.987249, 16.819160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.070827, 24.488346, 16.388527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.321301, 24.176506, 16.384226>,  <16.471584, 23.989401, 16.381645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.321301, 24.176506, 16.384226>,  <16.070827, 24.488346, 16.388527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.321301, 24.176506, 16.384226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124129, 0.113297, -0.985777,
		0.769732, 0.615941, 0.167716,
		0.626182, -0.779602, -0.010752,
		16.509155, 23.942625, 16.381001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.635923, 24.686398, 15.950406>,  <16.070827, 24.488346, 16.388527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.635923, 24.686398, 15.950406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.697910, 24.291286, 15.957150>,  <16.735102, 24.054220, 15.961196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.697910, 24.291286, 15.957150>,  <16.635923, 24.686398, 15.950406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.697910, 24.291286, 15.957150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228342, 0.019210, -0.973391,
		0.961169, 0.154693, 0.228527,
		0.154966, -0.987776, 0.016859,
		16.744400, 23.994953, 15.962207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.242987, 24.559662, 15.510094>,  <16.635923, 24.686398, 15.950406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.242987, 24.559662, 15.510094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.035152, 24.219875, 15.546835>,  <16.910452, 24.016003, 15.568880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.035152, 24.219875, 15.546835>,  <17.242987, 24.559662, 15.510094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.035152, 24.219875, 15.546835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014939, -0.116520, -0.993076,
		0.854288, -0.514615, 0.073232,
		-0.519585, -0.849467, 0.091853,
		16.879276, 23.965034, 15.574391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.582495, 24.064138, 15.139971>,  <17.242987, 24.559662, 15.510094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.582495, 24.064138, 15.139971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.200413, 23.948704, 15.166222>,  <16.971165, 23.879444, 15.181972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.200413, 23.948704, 15.166222>,  <17.582495, 24.064138, 15.139971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.200413, 23.948704, 15.166222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013621, -0.178643, -0.983820,
		0.295639, -0.940641, 0.166709,
		-0.955203, -0.288585, 0.065626,
		16.913853, 23.862129, 15.185909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.598425, 23.447205, 14.841399>,  <17.582495, 24.064138, 15.139971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.598425, 23.447205, 14.841399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.215355, 23.558899, 14.813438>,  <16.985514, 23.625916, 14.796662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.215355, 23.558899, 14.813438>,  <17.598425, 23.447205, 14.841399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.215355, 23.558899, 14.813438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015689, -0.191842, -0.981301,
		-0.287426, -0.940863, 0.179341,
		-0.957674, 0.279238, -0.069901,
		16.928053, 23.642670, 14.792468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.176992, 22.951809, 14.328590>,  <17.598425, 23.447205, 14.841399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.176992, 22.951809, 14.328590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.954823, 23.284058, 14.344465>,  <16.821522, 23.483406, 14.353991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.954823, 23.284058, 14.344465>,  <17.176992, 22.951809, 14.328590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.954823, 23.284058, 14.344465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264771, -0.131403, -0.955316,
		-0.788290, -0.541113, 0.292909,
		-0.555423, 0.830620, 0.039687,
		16.788197, 23.533243, 14.356372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.530252, 22.704647, 14.216066>,  <17.176992, 22.951809, 14.328590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.530252, 22.704647, 14.216066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.534531, 23.088036, 14.102070>,  <16.537098, 23.318069, 14.033672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.534531, 23.088036, 14.102070>,  <16.530252, 22.704647, 14.216066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.534531, 23.088036, 14.102070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401216, -0.256946, -0.879207,
		-0.915921, 0.123745, 0.381806,
		0.010694, 0.958470, -0.284991,
		16.537739, 23.375576, 14.016573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.021795, 22.733513, 13.817774>,  <16.530252, 22.704647, 14.216066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.021795, 22.733513, 13.817774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.178211, 23.088943, 13.721844>,  <16.272060, 23.302202, 13.664286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.178211, 23.088943, 13.721844>,  <16.021795, 22.733513, 13.817774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.178211, 23.088943, 13.721844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212999, -0.166130, -0.962825,
		-0.895387, 0.427588, 0.124302,
		0.391042, 0.888577, -0.239826,
		16.295525, 23.355516, 13.649896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.502567, 23.107546, 13.480433>,  <16.021795, 22.733513, 13.817774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.502567, 23.107546, 13.480433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.851792, 23.249630, 13.346815>,  <16.061327, 23.334881, 13.266644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.851792, 23.249630, 13.346815>,  <15.502567, 23.107546, 13.480433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.851792, 23.249630, 13.346815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296025, -0.158260, -0.941978,
		-0.387467, 0.921292, -0.033019,
		0.873063, 0.355211, -0.334046,
		16.113710, 23.356194, 13.246601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.314602, 23.604979, 12.942606>,  <15.502567, 23.107546, 13.480433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.314602, 23.604979, 12.942606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.692941, 23.499355, 12.867087>,  <15.919945, 23.435982, 12.821776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.692941, 23.499355, 12.867087>,  <15.314602, 23.604979, 12.942606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.692941, 23.499355, 12.867087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267091, -0.302540, -0.914949,
		0.184482, 0.915829, -0.356685,
		0.945848, -0.264059, -0.188797,
		15.976695, 23.420137, 12.810449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.476713, 23.829998, 12.190793>,  <15.314602, 23.604979, 12.942606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.476713, 23.829998, 12.190793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.776214, 23.578411, 12.274478>,  <15.955914, 23.427458, 12.324689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.776214, 23.578411, 12.274478>,  <15.476713, 23.829998, 12.190793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.776214, 23.578411, 12.274478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077501, -0.396529, -0.914745,
		0.658304, 0.668703, -0.345648,
		0.748752, -0.628968, 0.209211,
		16.000839, 23.389721, 12.337241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.867929, 23.950716, 11.642878>,  <15.476713, 23.829998, 12.190793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.867929, 23.950716, 11.642878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.974074, 23.594429, 11.790501>,  <16.037762, 23.380657, 11.879075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.974074, 23.594429, 11.790501>,  <15.867929, 23.950716, 11.642878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.974074, 23.594429, 11.790501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131645, -0.345724, -0.929056,
		0.955118, 0.295124, 0.025516,
		0.265366, -0.890717, 0.369059,
		16.053684, 23.327213, 11.901218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.613518, 23.839394, 11.430928>,  <15.867929, 23.950716, 11.642878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.613518, 23.839394, 11.430928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.432114, 23.496208, 11.527450>,  <16.323271, 23.290297, 11.585362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.432114, 23.496208, 11.527450>,  <16.613518, 23.839394, 11.430928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.432114, 23.496208, 11.527450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027636, -0.284155, -0.958380,
		0.890823, -0.427966, 0.152578,
		-0.453510, -0.857963, 0.241305,
		16.296061, 23.238819, 11.599841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.049603, 23.454170, 11.125829>,  <16.613518, 23.839394, 11.430928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.049603, 23.454170, 11.125829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.705204, 23.257408, 11.177547>,  <16.498566, 23.139351, 11.208577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.705204, 23.257408, 11.177547>,  <17.049603, 23.454170, 11.125829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.705204, 23.257408, 11.177547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049065, -0.172696, -0.983752,
		0.506240, -0.853350, 0.124555,
		-0.860996, -0.491904, 0.129295,
		16.446905, 23.109837, 11.216335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.128469, 23.046923, 10.615001>,  <17.049603, 23.454170, 11.125829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.128469, 23.046923, 10.615001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.743599, 23.006550, 10.716219>,  <16.512676, 22.982327, 10.776950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.743599, 23.006550, 10.716219>,  <17.128469, 23.046923, 10.615001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.743599, 23.006550, 10.716219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229941, -0.197261, -0.953003,
		0.146107, -0.975141, 0.166590,
		-0.962175, -0.100934, 0.253046,
		16.454947, 22.976269, 10.792132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.909678, 22.397442, 10.258831>,  <17.128469, 23.046923, 10.615001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.909678, 22.397442, 10.258831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.572311, 22.603611, 10.319485>,  <16.369892, 22.727312, 10.355877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.572311, 22.603611, 10.319485>,  <16.909678, 22.397442, 10.258831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.572311, 22.603611, 10.319485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320645, -0.256436, -0.911826,
		-0.431094, -0.817666, 0.381550,
		-0.843413, 0.515425, 0.151633,
		16.319288, 22.758238, 10.364975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.280792, 21.967625, 10.139097>,  <16.909678, 22.397442, 10.258831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.280792, 21.967625, 10.139097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.180176, 22.351696, 10.090459>,  <16.119806, 22.582138, 10.061275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.180176, 22.351696, 10.090459>,  <16.280792, 21.967625, 10.139097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.180176, 22.351696, 10.090459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278143, -0.192051, -0.941144,
		-0.927019, -0.202914, 0.315376,
		-0.251540, 0.960178, -0.121596,
		16.104713, 22.639750, 10.053980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.624352, 21.995951, 9.874240>,  <16.280792, 21.967625, 10.139097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.624352, 21.995951, 9.874240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.786180, 22.345848, 9.767547>,  <15.883276, 22.555786, 9.703531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.786180, 22.345848, 9.767547>,  <15.624352, 21.995951, 9.874240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.786180, 22.345848, 9.767547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205426, -0.197288, -0.958581,
		-0.891138, 0.442604, 0.099879,
		0.404567, 0.874745, -0.266733,
		15.907550, 22.608273, 9.687527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.116317, 22.223774, 9.417713>,  <15.624352, 21.995951, 9.874240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.116317, 22.223774, 9.417713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.439237, 22.449215, 9.347721>,  <15.632989, 22.584480, 9.305726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.439237, 22.449215, 9.347721>,  <15.116317, 22.223774, 9.417713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.439237, 22.449215, 9.347721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164615, -0.069675, -0.983894,
		-0.566718, 0.823102, 0.036529,
		0.807300, 0.563604, -0.174981,
		15.681426, 22.618296, 9.295227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.321758, 22.207376, 9.173225>,  <15.116317, 22.223774, 9.417713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.321758, 22.207376, 9.173225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.960532, 22.041592, 9.128157>,  <13.743796, 21.942122, 9.101115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.960532, 22.041592, 9.128157>,  <14.321758, 22.207376, 9.173225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.960532, 22.041592, 9.128157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069988, -0.116822, 0.990684,
		-0.423762, 0.902538, 0.076491,
		-0.903066, -0.414461, -0.112671,
		13.689612, 21.917253, 9.094356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.823595, 22.591614, 9.546334>,  <14.321758, 22.207376, 9.173225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.823595, 22.591614, 9.546334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.666362, 22.225876, 9.507434>,  <13.572021, 22.006433, 9.484094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.666362, 22.225876, 9.507434>,  <13.823595, 22.591614, 9.546334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.666362, 22.225876, 9.507434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318864, 0.036348, 0.947103,
		-0.862444, 0.403301, -0.305840,
		-0.393084, -0.914345, -0.097250,
		13.548436, 21.951572, 9.478259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.237317, 22.649490, 9.865825>,  <13.823595, 22.591614, 9.546334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.237317, 22.649490, 9.865825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.324904, 22.259800, 9.844159>,  <13.377457, 22.025986, 9.831160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.324904, 22.259800, 9.844159>,  <13.237317, 22.649490, 9.865825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.324904, 22.259800, 9.844159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275479, -0.114980, 0.954406,
		-0.936036, -0.194063, -0.293556,
		0.218968, -0.974227, -0.054164,
		13.390595, 21.967531, 9.827909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.723968, 22.324814, 10.264600>,  <13.237317, 22.649490, 9.865825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.723968, 22.324814, 10.264600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.024850, 22.065067, 10.219867>,  <13.205379, 21.909220, 10.193027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.024850, 22.065067, 10.219867>,  <12.723968, 22.324814, 10.264600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.024850, 22.065067, 10.219867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039874, -0.124550, 0.991412,
		-0.657721, -0.750205, -0.067794,
		0.752206, -0.649369, -0.111833,
		13.250512, 21.870256, 10.186316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.525381, 21.745207, 10.703080>,  <12.723968, 22.324814, 10.264600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.525381, 21.745207, 10.703080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.923430, 21.754498, 10.664733>,  <13.162260, 21.760073, 10.641725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.923430, 21.754498, 10.664733>,  <12.525381, 21.745207, 10.703080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.923430, 21.754498, 10.664733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097502, -0.084242, 0.991664,
		0.014960, -0.996174, -0.086097,
		0.995123, 0.023230, -0.095868,
		13.221968, 21.761465, 10.635972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.763267, 21.240662, 11.131700>,  <12.525381, 21.745207, 10.703080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.763267, 21.240662, 11.131700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.091088, 21.457592, 11.057711>,  <13.287782, 21.587749, 11.013317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.091088, 21.457592, 11.057711>,  <12.763267, 21.240662, 11.131700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.091088, 21.457592, 11.057711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348819, -0.216095, 0.911937,
		0.454595, -0.811903, -0.366275,
		0.819554, 0.542325, -0.184972,
		13.336954, 21.620289, 11.002219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.303994, 20.742466, 11.288115>,  <12.763267, 21.240662, 11.131700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.303994, 20.742466, 11.288115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.488391, 21.096199, 11.317627>,  <13.599030, 21.308439, 11.335334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.488391, 21.096199, 11.317627>,  <13.303994, 20.742466, 11.288115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.488391, 21.096199, 11.317627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341482, -0.253520, 0.905051,
		0.819071, -0.392027, -0.418854,
		0.460992, 0.884332, 0.073780,
		13.626689, 21.361498, 11.339761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.027896, 20.589415, 11.560073>,  <13.303994, 20.742466, 11.288115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.027896, 20.589415, 11.560073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.943463, 20.971924, 11.641058>,  <13.892804, 21.201429, 11.689649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.943463, 20.971924, 11.641058>,  <14.027896, 20.589415, 11.560073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.943463, 20.971924, 11.641058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278417, -0.139730, 0.950242,
		0.936979, 0.256947, -0.236748,
		-0.211081, 0.956271, 0.202462,
		13.880139, 21.258804, 11.701797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.612314, 20.923904, 11.970512>,  <14.027896, 20.589415, 11.560073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.612314, 20.923904, 11.970512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.316876, 21.180870, 12.052275>,  <14.139613, 21.335049, 12.101332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.316876, 21.180870, 12.052275>,  <14.612314, 20.923904, 11.970512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.316876, 21.180870, 12.052275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208554, -0.070597, 0.975460,
		0.641079, 0.763099, -0.081835,
		-0.738595, 0.642414, 0.204406,
		14.095298, 21.373594, 12.113596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.970937, 21.502659, 12.407478>,  <14.612314, 20.923904, 11.970512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.970937, 21.502659, 12.407478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.574691, 21.529751, 12.454964>,  <14.336943, 21.546005, 12.483455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.574691, 21.529751, 12.454964>,  <14.970937, 21.502659, 12.407478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.574691, 21.529751, 12.454964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136423, 0.437375, 0.888871,
		0.008280, 0.896725, -0.442511,
		-0.990616, 0.067729, 0.118713,
		14.277506, 21.550070, 12.490578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.921928, 22.067282, 12.857257>,  <14.970937, 21.502659, 12.407478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.921928, 22.067282, 12.857257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.572835, 21.877090, 12.901543>,  <14.363379, 21.762976, 12.928114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.572835, 21.877090, 12.901543>,  <14.921928, 22.067282, 12.857257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.572835, 21.877090, 12.901543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000004, 0.226773, 0.973948,
		-0.488198, 0.849997, -0.197910,
		-0.872733, -0.475479, 0.110714,
		14.311015, 21.734447, 12.934757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.512035, 22.537270, 13.207282>,  <14.921928, 22.067282, 12.857257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.512035, 22.537270, 13.207282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.337071, 22.190369, 13.302397>,  <14.232093, 21.982227, 13.359466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.337071, 22.190369, 13.302397>,  <14.512035, 22.537270, 13.207282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.337071, 22.190369, 13.302397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043062, 0.284322, 0.957761,
		-0.898231, 0.408694, -0.161710,
		-0.437409, -0.867255, 0.237788,
		14.205849, 21.930193, 13.373734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.931512, 22.766991, 13.748857>,  <14.512035, 22.537270, 13.207282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.931512, 22.766991, 13.748857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.987260, 22.373135, 13.790924>,  <14.020708, 22.136822, 13.816164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.987260, 22.373135, 13.790924>,  <13.931512, 22.766991, 13.748857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.987260, 22.373135, 13.790924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162128, 0.082081, 0.983350,
		-0.976878, -0.154099, -0.148198,
		0.139369, -0.984640, 0.105167,
		14.029071, 22.077744, 13.822474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.394859, 22.397890, 14.137288>,  <13.931512, 22.766991, 13.748857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.394859, 22.397890, 14.137288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.710692, 22.160114, 14.198214>,  <13.900192, 22.017448, 14.234769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.710692, 22.160114, 14.198214>,  <13.394859, 22.397890, 14.137288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.710692, 22.160114, 14.198214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117048, 0.097759, 0.988303,
		-0.602378, -0.798175, 0.007610,
		0.789583, -0.594441, 0.152313,
		13.947567, 21.981783, 14.243907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.082423, 21.937508, 14.661508>,  <13.394859, 22.397890, 14.137288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.082423, 21.937508, 14.661508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.480327, 21.896614, 14.662289>,  <13.719069, 21.872078, 14.662758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.480327, 21.896614, 14.662289>,  <13.082423, 21.937508, 14.661508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.480327, 21.896614, 14.662289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012986, 0.145261, 0.989308,
		-0.101424, -0.984097, 0.145827,
		0.994758, -0.102233, 0.001954,
		13.778754, 21.865944, 14.662874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.203366, 21.455366, 15.174353>,  <13.082423, 21.937508, 14.661508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.203366, 21.455366, 15.174353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.530278, 21.680836, 15.126476>,  <13.726425, 21.816118, 15.097751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.530278, 21.680836, 15.126476>,  <13.203366, 21.455366, 15.174353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.530278, 21.680836, 15.126476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077254, 0.098655, 0.992118,
		0.571040, -0.820084, 0.037083,
		0.817279, 0.563675, -0.119690,
		13.775462, 21.849937, 15.090569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.513027, 21.129385, 15.670881>,  <13.203366, 21.455366, 15.174353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.513027, 21.129385, 15.670881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.695825, 21.476715, 15.593767>,  <13.805503, 21.685114, 15.547499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.695825, 21.476715, 15.593767>,  <13.513027, 21.129385, 15.670881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.695825, 21.476715, 15.593767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096273, 0.167180, 0.981215,
		0.884244, -0.466969, -0.007196,
		0.456994, 0.868326, -0.192785,
		13.832923, 21.737213, 15.535932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.040758, 21.156300, 16.092369>,  <13.513027, 21.129385, 15.670881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.040758, 21.156300, 16.092369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.011914, 21.542625, 15.992767>,  <13.994608, 21.774422, 15.933006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.011914, 21.542625, 15.992767>,  <14.040758, 21.156300, 16.092369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.011914, 21.542625, 15.992767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326038, 0.258765, 0.909252,
		0.942602, -0.015619, -0.333552,
		-0.072110, 0.965814, -0.249005,
		13.990281, 21.832369, 15.918066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.638171, 21.423706, 16.456417>,  <14.040758, 21.156300, 16.092369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.638171, 21.423706, 16.456417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.401351, 21.733921, 16.368765>,  <14.259259, 21.920050, 16.316174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.401351, 21.733921, 16.368765>,  <14.638171, 21.423706, 16.456417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.401351, 21.733921, 16.368765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220520, 0.417431, 0.881546,
		0.775144, 0.473596, -0.418161,
		-0.592050, 0.775537, -0.219131,
		14.223736, 21.966581, 16.303026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.072593, 22.009804, 16.568819>,  <14.638171, 21.423706, 16.456417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.072593, 22.009804, 16.568819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.689013, 22.121883, 16.586290>,  <14.458866, 22.189131, 16.596773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.689013, 22.121883, 16.586290>,  <15.072593, 22.009804, 16.568819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.689013, 22.121883, 16.586290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166130, 0.430245, 0.887294,
		0.229828, 0.858124, -0.459132,
		-0.958947, 0.280200, 0.043678,
		14.401329, 22.205944, 16.599394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.102885, 22.747679, 16.865417>,  <15.072593, 22.009804, 16.568819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.102885, 22.747679, 16.865417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.749551, 22.572437, 16.932087>,  <14.537550, 22.467293, 16.972088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.749551, 22.572437, 16.932087>,  <15.102885, 22.747679, 16.865417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.749551, 22.572437, 16.932087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088976, 0.192397, 0.977275,
		-0.460217, 0.878093, -0.130970,
		-0.883337, -0.438105, 0.166674,
		14.484550, 22.441006, 16.982090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.884454, 23.134682, 17.288765>,  <15.102885, 22.747679, 16.865417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.884454, 23.134682, 17.288765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.649032, 22.815376, 17.339951>,  <14.507778, 22.623793, 17.370661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.649032, 22.815376, 17.339951>,  <14.884454, 23.134682, 17.288765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.649032, 22.815376, 17.339951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114716, 0.239140, 0.964185,
		-0.800277, 0.552797, -0.232321,
		-0.588556, -0.798265, 0.127963,
		14.472465, 22.575897, 17.378340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.460917, 23.357275, 17.799870>,  <14.884454, 23.134682, 17.288765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.460917, 23.357275, 17.799870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.396083, 22.962589, 17.804392>,  <14.357183, 22.725779, 17.807106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.396083, 22.962589, 17.804392>,  <14.460917, 23.357275, 17.799870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.396083, 22.962589, 17.804392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140564, 0.034429, 0.989473,
		-0.976714, 0.158789, -0.144276,
		-0.162084, -0.986712, 0.011307,
		14.347458, 22.666576, 17.807783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.986619, 23.186108, 18.357841>,  <14.460917, 23.357275, 17.799870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.986619, 23.186108, 18.357841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.178977, 22.837009, 18.324245>,  <14.294392, 22.627550, 18.304089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.178977, 22.837009, 18.324245>,  <13.986619, 23.186108, 18.357841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.178977, 22.837009, 18.324245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048906, -0.068944, 0.996421,
		-0.875413, -0.483282, 0.009527,
		0.480896, -0.872746, -0.083990,
		14.323246, 22.575186, 18.299049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.635407, 22.668989, 18.749207>,  <13.986619, 23.186108, 18.357841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.635407, 22.668989, 18.749207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.005862, 22.522957, 18.711287>,  <14.228135, 22.435337, 18.688536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.005862, 22.522957, 18.711287>,  <13.635407, 22.668989, 18.749207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.005862, 22.522957, 18.711287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076761, -0.063645, 0.995016,
		-0.369294, -0.928798, -0.030921,
		0.926137, -0.365080, -0.094799,
		14.283703, 22.413433, 18.682846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.674028, 21.897989, 19.074306>,  <13.635407, 22.668989, 18.749207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.674028, 21.897989, 19.074306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.047145, 22.041580, 19.061417>,  <14.271014, 22.127735, 19.053682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.047145, 22.041580, 19.061417>,  <13.674028, 21.897989, 19.074306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.047145, 22.041580, 19.061417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150729, -0.307323, 0.939592,
		0.327387, -0.881300, -0.340776,
		0.932790, 0.358975, -0.032224,
		14.326982, 22.149273, 19.051750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.073581, 21.324188, 19.205067>,  <13.674028, 21.897989, 19.074306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.073581, 21.324188, 19.205067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.299630, 21.643173, 19.289629>,  <14.435260, 21.834564, 19.340366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.299630, 21.643173, 19.289629>,  <14.073581, 21.324188, 19.205067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.299630, 21.643173, 19.289629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180839, -0.369753, 0.911362,
		0.804943, -0.476802, -0.353168,
		0.565124, 0.797460, 0.211406,
		14.469168, 21.882412, 19.353050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.680423, 21.040112, 19.525322>,  <14.073581, 21.324188, 19.205067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.680423, 21.040112, 19.525322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.667092, 21.419937, 19.650042>,  <14.659094, 21.647833, 19.724873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.667092, 21.419937, 19.650042>,  <14.680423, 21.040112, 19.525322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.667092, 21.419937, 19.650042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275285, -0.291183, 0.916204,
		0.960785, 0.116366, -0.251697,
		-0.033325, 0.949564, 0.311798,
		14.657095, 21.704805, 19.743582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.124206, 21.031284, 20.124517>,  <14.680423, 21.040112, 19.525322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.124206, 21.031284, 20.124517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.961896, 21.392921, 20.178129>,  <14.864511, 21.609903, 20.210297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.961896, 21.392921, 20.178129>,  <15.124206, 21.031284, 20.124517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.961896, 21.392921, 20.178129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209480, -0.050745, 0.976495,
		0.889644, 0.424312, -0.168798,
		-0.405774, 0.904093, 0.134030,
		14.840164, 21.664150, 20.218338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.544514, 21.515392, 20.542580>,  <15.124206, 21.031284, 20.124517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.544514, 21.515392, 20.542580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.189204, 21.686058, 20.610615>,  <14.976019, 21.788458, 20.651436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.189204, 21.686058, 20.610615>,  <15.544514, 21.515392, 20.542580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.189204, 21.686058, 20.610615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158871, -0.062049, 0.985348,
		0.430965, 0.902279, -0.012668,
		-0.888273, 0.426663, 0.170087,
		14.922722, 21.814056, 20.661640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.657315, 22.055822, 21.176451>,  <15.544514, 21.515392, 20.542580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.657315, 22.055822, 21.176451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.265502, 21.979832, 21.149857>,  <15.030414, 21.934237, 21.133900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.265502, 21.979832, 21.149857>,  <15.657315, 22.055822, 21.176451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.265502, 21.979832, 21.149857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070151, 0.012617, 0.997456,
		-0.188656, 0.981707, -0.025687,
		-0.979534, -0.189979, -0.066488,
		14.971642, 21.922838, 21.129910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.353004, 22.618929, 21.518932>,  <15.657315, 22.055822, 21.176451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.353004, 22.618929, 21.518932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.104117, 22.307076, 21.547281>,  <14.954786, 22.119965, 21.564291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.104117, 22.307076, 21.547281>,  <15.353004, 22.618929, 21.518932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.104117, 22.307076, 21.547281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120603, 0.184916, 0.975326,
		-0.773501, 0.598314, -0.209083,
		-0.622214, -0.779632, 0.070874,
		14.917453, 22.073185, 21.568544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.935634, 22.855423, 22.030001>,  <15.353004, 22.618929, 21.518932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.935634, 22.855423, 22.030001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.848079, 22.466305, 21.999651>,  <14.795546, 22.232834, 21.981441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.848079, 22.466305, 21.999651>,  <14.935634, 22.855423, 22.030001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.848079, 22.466305, 21.999651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163371, -0.040124, 0.985748,
		-0.961976, 0.228164, -0.150144,
		-0.218888, -0.972796, -0.075873,
		14.782413, 22.174465, 21.976889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.392735, 22.797604, 22.348688>,  <14.935634, 22.855423, 22.030001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.392735, 22.797604, 22.348688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.542413, 22.426830, 22.359810>,  <14.632219, 22.204367, 22.366482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.542413, 22.426830, 22.359810>,  <14.392735, 22.797604, 22.348688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.542413, 22.426830, 22.359810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145336, -0.029009, 0.988957,
		-0.915891, -0.374104, -0.145572,
		0.374195, -0.926933, 0.027802,
		14.654672, 22.148750, 22.368151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.920067, 22.396570, 22.841997>,  <14.392735, 22.797604, 22.348688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.920067, 22.396570, 22.841997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.268582, 22.203331, 22.807423>,  <14.477692, 22.087387, 22.786678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.268582, 22.203331, 22.807423>,  <13.920067, 22.396570, 22.841997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.268582, 22.203331, 22.807423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079074, -0.035637, 0.996231,
		-0.484360, -0.874839, 0.007150,
		0.871288, -0.483100, -0.086438,
		14.529968, 22.058401, 22.781490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.960002, 21.961111, 23.400225>,  <13.920067, 22.396570, 22.841997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.960002, 21.961111, 23.400225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.344432, 21.916370, 23.299170>,  <14.575089, 21.889526, 23.238537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.344432, 21.916370, 23.299170>,  <13.960002, 21.961111, 23.400225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.344432, 21.916370, 23.299170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228787, -0.190439, 0.954667,
		-0.154887, -0.975307, -0.157437,
		0.961076, -0.111846, -0.252635,
		14.632754, 21.882814, 23.223379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.263612, 21.358366, 23.760971>,  <13.960002, 21.961111, 23.400225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.263612, 21.358366, 23.760971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.602811, 21.559048, 23.692623>,  <14.806330, 21.679457, 23.651615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.602811, 21.559048, 23.692623>,  <14.263612, 21.358366, 23.760971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.602811, 21.559048, 23.692623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354735, -0.297734, 0.886294,
		0.393782, -0.812188, -0.430448,
		0.847997, 0.501702, -0.170869,
		14.857210, 21.709558, 23.641363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.857191, 20.955893, 24.013496>,  <14.263612, 21.358366, 23.760971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.857191, 20.955893, 24.013496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.963571, 21.341457, 24.008688>,  <15.027398, 21.572796, 24.005802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.963571, 21.341457, 24.008688>,  <14.857191, 20.955893, 24.013496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.963571, 21.341457, 24.008688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234487, -0.052589, 0.970696,
		0.935034, -0.260974, -0.240011,
		0.265949, 0.963912, -0.012022,
		15.043355, 21.630630, 24.005081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.481742, 20.507723, 23.871857>,  <14.857191, 20.955893, 24.013496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.481742, 20.507723, 23.871857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.680163, 20.160683, 23.858007>,  <15.799216, 19.952459, 23.849697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.680163, 20.160683, 23.858007>,  <15.481742, 20.507723, 23.871857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.680163, 20.160683, 23.858007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214843, -0.084004, -0.973029,
		0.841292, 0.490115, -0.228068,
		0.496055, -0.867601, -0.034625,
		15.828979, 19.900402, 23.847620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.767020, 20.525242, 23.266035>,  <15.481742, 20.507723, 23.871857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.767020, 20.525242, 23.266035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.791574, 20.137543, 23.361357>,  <15.806305, 19.904922, 23.418549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.791574, 20.137543, 23.361357>,  <15.767020, 20.525242, 23.266035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.791574, 20.137543, 23.361357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133314, -0.244576, -0.960422,
		0.989171, 0.027184, -0.144227,
		0.061382, -0.969249, 0.238303,
		15.809988, 19.846767, 23.432848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.272598, 20.101746, 22.826855>,  <15.767020, 20.525242, 23.266035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.272598, 20.101746, 22.826855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.011581, 19.843166, 22.984987>,  <15.854971, 19.688019, 23.079866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.011581, 19.843166, 22.984987>,  <16.272598, 20.101746, 22.826855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.011581, 19.843166, 22.984987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256517, -0.302460, -0.917996,
		0.713011, -0.700443, 0.031543,
		-0.652544, -0.646450, 0.395333,
		15.815818, 19.649231, 23.103588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.402748, 19.471386, 22.515387>,  <16.272598, 20.101746, 22.826855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.402748, 19.471386, 22.515387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.022709, 19.455048, 22.639095>,  <15.794686, 19.445246, 22.713322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.022709, 19.455048, 22.639095>,  <16.402748, 19.471386, 22.515387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.022709, 19.455048, 22.639095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262871, -0.429009, -0.864205,
		0.167979, -0.902376, 0.396863,
		-0.950096, -0.040844, 0.309273,
		15.737680, 19.442795, 22.731876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.092474, 18.813347, 22.209614>,  <16.402748, 19.471386, 22.515387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.092474, 18.813347, 22.209614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.765002, 19.009655, 22.328884>,  <15.568520, 19.127439, 22.400446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.765002, 19.009655, 22.328884>,  <16.092474, 18.813347, 22.209614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.765002, 19.009655, 22.328884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487569, -0.319731, -0.812434,
		-0.303363, -0.810516, 0.501034,
		-0.818686, 0.490751, 0.298188,
		15.519399, 19.156887, 22.418337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.497117, 18.327986, 22.230217>,  <16.092474, 18.813347, 22.209614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.497117, 18.327986, 22.230217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.380315, 18.707256, 22.180101>,  <15.310233, 18.934818, 22.150032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.380315, 18.707256, 22.180101>,  <15.497117, 18.327986, 22.230217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.380315, 18.707256, 22.180101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580490, -0.279815, -0.764679,
		-0.760107, -0.150561, 0.632114,
		-0.292006, 0.948174, -0.125291,
		15.292713, 18.991709, 22.142515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.882638, 18.194908, 21.900547>,  <15.497117, 18.327986, 22.230217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.882638, 18.194908, 21.900547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.951604, 18.586811, 21.859861>,  <14.992983, 18.821953, 21.835449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.951604, 18.586811, 21.859861>,  <14.882638, 18.194908, 21.900547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.951604, 18.586811, 21.859861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546197, 0.009160, -0.837607,
		-0.819721, 0.199972, 0.536720,
		0.172414, 0.979759, -0.101715,
		15.003328, 18.880739, 21.829348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.261668, 18.625759, 21.667566>,  <14.882638, 18.194908, 21.900547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.261668, 18.625759, 21.667566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.589776, 18.826801, 21.558353>,  <14.786641, 18.947426, 21.492826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.589776, 18.826801, 21.558353>,  <14.261668, 18.625759, 21.667566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.589776, 18.826801, 21.558353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404484, 0.172209, -0.898185,
		-0.404414, 0.847191, 0.344554,
		0.820270, 0.502605, -0.273031,
		14.835856, 18.977583, 21.476444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.982250, 19.125885, 21.233219>,  <14.261668, 18.625759, 21.667566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.982250, 19.125885, 21.233219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.371821, 19.099113, 21.146515>,  <14.605564, 19.083050, 21.094492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.371821, 19.099113, 21.146515>,  <13.982250, 19.125885, 21.233219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.371821, 19.099113, 21.146515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218479, -0.019451, -0.975648,
		0.061084, 0.997568, -0.033566,
		0.973928, -0.066930, -0.216759,
		14.664000, 19.079035, 21.081488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.095191, 19.490715, 20.573427>,  <13.982250, 19.125885, 21.233219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.095191, 19.490715, 20.573427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.440265, 19.288795, 20.585779>,  <14.647309, 19.167645, 20.593191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.440265, 19.288795, 20.585779>,  <14.095191, 19.490715, 20.573427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.440265, 19.288795, 20.585779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082595, -0.200868, -0.976130,
		0.498951, 0.839542, -0.214980,
		0.862685, -0.504797, 0.030881,
		14.699070, 19.137356, 20.595043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.617346, 19.855299, 20.008480>,  <14.095191, 19.490715, 20.573427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.617346, 19.855299, 20.008480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.747796, 19.483387, 20.076777>,  <14.826066, 19.260241, 20.117754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.747796, 19.483387, 20.076777>,  <14.617346, 19.855299, 20.008480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.747796, 19.483387, 20.076777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007060, -0.183006, -0.983086,
		0.945300, 0.319404, -0.066247,
		0.326125, -0.929780, 0.170740,
		14.845634, 19.204453, 20.127998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.021346, 19.808147, 19.567785>,  <14.617346, 19.855299, 20.008480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.021346, 19.808147, 19.567785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.009313, 19.416603, 19.648710>,  <15.002092, 19.181677, 19.697266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.009313, 19.416603, 19.648710>,  <15.021346, 19.808147, 19.567785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.009313, 19.416603, 19.648710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213517, -0.204025, -0.955397,
		0.976476, 0.014455, 0.215141,
		-0.030084, -0.978859, 0.202312,
		15.000287, 19.122946, 19.709404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.617428, 19.508457, 19.206392>,  <15.021346, 19.808147, 19.567785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.617428, 19.508457, 19.206392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.357930, 19.209755, 19.265030>,  <15.202231, 19.030535, 19.300213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.357930, 19.209755, 19.265030>,  <15.617428, 19.508457, 19.206392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.357930, 19.209755, 19.265030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066115, -0.247211, -0.966703,
		0.758129, -0.617451, 0.209748,
		-0.648744, -0.746754, 0.146595,
		15.163307, 18.985729, 19.309008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.892516, 18.932533, 18.876522>,  <15.617428, 19.508457, 19.206392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.892516, 18.932533, 18.876522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.498702, 18.878235, 18.920820>,  <15.262414, 18.845655, 18.947399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.498702, 18.878235, 18.920820>,  <15.892516, 18.932533, 18.876522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.498702, 18.878235, 18.920820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083954, -0.189260, -0.978331,
		0.153765, -0.972498, 0.174936,
		-0.984534, -0.135747, 0.110746,
		15.203341, 18.837511, 18.954044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.681041, 18.346790, 18.346163>,  <15.892516, 18.932533, 18.876522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.681041, 18.346790, 18.346163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.329782, 18.516335, 18.434885>,  <15.119026, 18.618061, 18.488119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.329782, 18.516335, 18.434885>,  <15.681041, 18.346790, 18.346163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.329782, 18.516335, 18.434885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232988, 0.026016, -0.972131,
		-0.417822, -0.905352, 0.075909,
		-0.878146, 0.423863, 0.221807,
		15.066338, 18.643494, 18.501427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.030302, 17.950619, 18.036972>,  <15.681041, 18.346790, 18.346163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.030302, 17.950619, 18.036972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.922271, 18.330540, 18.100134>,  <14.857452, 18.558493, 18.138031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.922271, 18.330540, 18.100134>,  <15.030302, 17.950619, 18.036972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.922271, 18.330540, 18.100134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140031, 0.123509, -0.982414,
		-0.952601, -0.287439, 0.099645,
		-0.270077, 0.949802, 0.157905,
		14.841248, 18.615480, 18.147505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.458920, 18.012903, 17.589174>,  <15.030302, 17.950619, 18.036972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.458920, 18.012903, 17.589174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.534312, 18.393333, 17.687098>,  <14.579548, 18.621592, 17.745852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.534312, 18.393333, 17.687098>,  <14.458920, 18.012903, 17.589174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.534312, 18.393333, 17.687098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286382, 0.291672, -0.912641,
		-0.939394, 0.101906, 0.327345,
		0.188480, 0.951075, 0.244811,
		14.590857, 18.678656, 17.760540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.824976, 18.449800, 17.548058>,  <14.458920, 18.012903, 17.589174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.824976, 18.449800, 17.548058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.136605, 18.690395, 17.477341>,  <14.323583, 18.834753, 17.434910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.136605, 18.690395, 17.477341>,  <13.824976, 18.449800, 17.548058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.136605, 18.690395, 17.477341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254438, 0.045622, -0.966012,
		-0.572979, 0.797578, 0.188585,
		0.779074, 0.601488, -0.176794,
		14.370327, 18.870842, 17.424303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.620810, 18.976576, 17.058453>,  <13.824976, 18.449800, 17.548058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.620810, 18.976576, 17.058453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.009273, 19.058544, 17.009693>,  <14.242351, 19.107725, 16.980438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.009273, 19.058544, 17.009693>,  <13.620810, 18.976576, 17.058453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.009273, 19.058544, 17.009693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154247, 0.150096, -0.976565,
		-0.181824, 0.967201, 0.177376,
		0.971158, 0.204922, -0.121896,
		14.300620, 19.120022, 16.973124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.791090, 19.680258, 16.987074>,  <13.620810, 18.976576, 17.058453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.791090, 19.680258, 16.987074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.063025, 19.458988, 16.794483>,  <14.226187, 19.326227, 16.678928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.063025, 19.458988, 16.794483>,  <13.791090, 19.680258, 16.987074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.063025, 19.458988, 16.794483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248062, 0.444378, -0.860810,
		0.690134, 0.704648, 0.164885,
		0.679839, -0.553172, -0.481477,
		14.266977, 19.293037, 16.650040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.891994, 20.072302, 16.348152>,  <13.791090, 19.680258, 16.987074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.891994, 20.072302, 16.348152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.124698, 19.761398, 16.252300>,  <14.264319, 19.574856, 16.194790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.124698, 19.761398, 16.252300>,  <13.891994, 20.072302, 16.348152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.124698, 19.761398, 16.252300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061677, 0.251609, -0.965862,
		0.811019, 0.576678, 0.098437,
		0.581759, -0.777261, -0.239627,
		14.299226, 19.528219, 16.180412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.563212, 20.191687, 16.003441>,  <13.891994, 20.072302, 16.348152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.563212, 20.191687, 16.003441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.421441, 19.840393, 15.875011>,  <14.336378, 19.629618, 15.797954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.421441, 19.840393, 15.875011>,  <14.563212, 20.191687, 16.003441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.421441, 19.840393, 15.875011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102087, 0.304971, -0.946874,
		0.929494, -0.368376, -0.018434,
		-0.354427, -0.878232, -0.321075,
		14.315113, 19.576923, 15.778688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.967793, 20.136818, 15.425479>,  <14.563212, 20.191687, 16.003441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.967793, 20.136818, 15.425479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.703319, 19.838470, 15.393200>,  <14.544634, 19.659462, 15.373833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.703319, 19.838470, 15.393200>,  <14.967793, 20.136818, 15.425479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.703319, 19.838470, 15.393200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075537, 0.040831, -0.996307,
		0.746408, -0.664841, 0.029343,
		-0.661188, -0.745867, -0.080697,
		14.504962, 19.614710, 15.368991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.186327, 19.707121, 14.842873>,  <14.967793, 20.136818, 15.425479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.186327, 19.707121, 14.842873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.807494, 19.592663, 14.901056>,  <14.580194, 19.523989, 14.935966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.807494, 19.592663, 14.901056>,  <15.186327, 19.707121, 14.842873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.807494, 19.592663, 14.901056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137464, -0.047948, -0.989346,
		0.290072, -0.956986, 0.006076,
		-0.947081, -0.286146, 0.145459,
		14.523370, 19.506819, 14.944695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.052699, 18.995335, 14.452080>,  <15.186327, 19.707121, 14.842873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.052699, 18.995335, 14.452080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.702394, 19.167641, 14.539238>,  <14.492210, 19.271025, 14.591533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.702394, 19.167641, 14.539238>,  <15.052699, 18.995335, 14.452080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.702394, 19.167641, 14.539238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296634, -0.124100, -0.946894,
		-0.380848, -0.893891, 0.236462,
		-0.875764, 0.430765, 0.217895,
		14.439664, 19.296869, 14.604607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.544682, 18.462706, 14.221120>,  <15.052699, 18.995335, 14.452080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.544682, 18.462706, 14.221120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.343873, 18.807220, 14.252504>,  <14.223388, 19.013929, 14.271336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.343873, 18.807220, 14.252504>,  <14.544682, 18.462706, 14.221120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.343873, 18.807220, 14.252504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447725, -0.181199, -0.875619,
		-0.739944, -0.474709, 0.476586,
		-0.502021, 0.861289, 0.078462,
		14.193267, 19.065607, 14.276043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.917866, 18.292528, 14.110882>,  <14.544682, 18.462706, 14.221120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.917866, 18.292528, 14.110882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.919543, 18.675774, 13.996338>,  <13.920550, 18.905722, 13.927611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.919543, 18.675774, 13.996338>,  <13.917866, 18.292528, 14.110882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.919543, 18.675774, 13.996338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266481, -0.274935, -0.923795,
		-0.963831, 0.080184, 0.254166,
		0.004194, 0.958113, -0.286359,
		13.920801, 18.963207, 13.910430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.238044, 18.378746, 13.852485>,  <13.917866, 18.292528, 14.110882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.238044, 18.378746, 13.852485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.463609, 18.680729, 13.718594>,  <13.598948, 18.861919, 13.638259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.463609, 18.680729, 13.718594>,  <13.238044, 18.378746, 13.852485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.463609, 18.680729, 13.718594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410011, -0.095895, -0.907025,
		-0.716864, 0.648725, 0.255464,
		0.563912, 0.754957, -0.334728,
		13.632782, 18.907215, 13.618176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.770447, 18.855738, 13.487983>,  <13.238044, 18.378746, 13.852485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.770447, 18.855738, 13.487983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.131799, 18.926456, 13.331701>,  <13.348610, 18.968887, 13.237932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.131799, 18.926456, 13.331701>,  <12.770447, 18.855738, 13.487983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.131799, 18.926456, 13.331701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373514, -0.123238, -0.919402,
		-0.210697, 0.976501, -0.045295,
		0.903379, 0.176797, -0.390703,
		13.402813, 18.979496, 13.214491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.653792, 19.429434, 12.924836>,  <12.770447, 18.855738, 13.487983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.653792, 19.429434, 12.924836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.007333, 19.251892, 12.865778>,  <13.219457, 19.145367, 12.830343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.007333, 19.251892, 12.865778>,  <12.653792, 19.429434, 12.924836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.007333, 19.251892, 12.865778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327411, -0.361593, -0.872956,
		0.334079, 0.819904, -0.464918,
		0.883851, -0.443856, -0.147645,
		13.272489, 19.118736, 12.821485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.870703, 19.597082, 12.264082>,  <12.653792, 19.429434, 12.924836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.870703, 19.597082, 12.264082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.105992, 19.286236, 12.353600>,  <13.247166, 19.099728, 12.407310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.105992, 19.286236, 12.353600>,  <12.870703, 19.597082, 12.264082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.105992, 19.286236, 12.353600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175633, -0.392889, -0.902658,
		0.789397, 0.491659, -0.367593,
		0.588223, -0.777117, 0.223794,
		13.282459, 19.053101, 12.420737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.229903, 19.489166, 11.646977>,  <12.870703, 19.597082, 12.264082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.229903, 19.489166, 11.646977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.292254, 19.151211, 11.851670>,  <13.329665, 18.948439, 11.974486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.292254, 19.151211, 11.851670>,  <13.229903, 19.489166, 11.646977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.292254, 19.151211, 11.851670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080623, -0.527218, -0.845897,
		0.984481, 0.090599, -0.150298,
		0.155877, -0.844886, 0.511732,
		13.339018, 18.897745, 12.005190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.731998, 19.177103, 11.343250>,  <13.229903, 19.489166, 11.646977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.731998, 19.177103, 11.343250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.528075, 18.894451, 11.539523>,  <13.405722, 18.724859, 11.657287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.528075, 18.894451, 11.539523>,  <13.731998, 19.177103, 11.343250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.528075, 18.894451, 11.539523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049081, -0.545550, -0.836640,
		0.858887, -0.450609, 0.243443,
		-0.509808, -0.706631, 0.490682,
		13.375133, 18.682463, 11.686728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.092919, 18.510199, 11.207803>,  <13.731998, 19.177103, 11.343250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.092919, 18.510199, 11.207803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.720319, 18.398609, 11.301166>,  <13.496758, 18.331656, 11.357183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.720319, 18.398609, 11.301166>,  <14.092919, 18.510199, 11.207803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.720319, 18.398609, 11.301166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023858, -0.687171, -0.726104,
		0.362955, -0.670798, 0.646756,
		-0.931501, -0.278974, 0.233408,
		13.440868, 18.314917, 11.371188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.986551, 17.758398, 11.198646>,  <14.092919, 18.510199, 11.207803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.986551, 17.758398, 11.198646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.610213, 17.890209, 11.167091>,  <13.384411, 17.969296, 11.148159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.610213, 17.890209, 11.167091>,  <13.986551, 17.758398, 11.198646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.610213, 17.890209, 11.167091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120778, -0.543666, -0.830566,
		-0.316583, -0.771905, 0.551305,
		-0.940844, 0.329529, -0.078886,
		13.327960, 17.989067, 11.143425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.606739, 17.227865, 10.973516>,  <13.986551, 17.758398, 11.198646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.606739, 17.227865, 10.973516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.358785, 17.533707, 10.902950>,  <13.210012, 17.717211, 10.860611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.358785, 17.533707, 10.902950>,  <13.606739, 17.227865, 10.973516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.358785, 17.533707, 10.902950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518072, -0.567644, -0.639829,
		-0.589361, -0.305221, 0.747993,
		-0.619883, 0.764605, -0.176421,
		13.172819, 17.763088, 10.850026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.917277, 16.912766, 11.125916>,  <13.606739, 17.227865, 10.973516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.917277, 16.912766, 11.125916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.884374, 17.222870, 10.875411>,  <12.864632, 17.408932, 10.725108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.884374, 17.222870, 10.875411>,  <12.917277, 16.912766, 11.125916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.884374, 17.222870, 10.875411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467878, -0.584878, -0.662577,
		-0.879957, 0.238511, 0.410840,
		-0.082259, 0.775261, -0.626261,
		12.859695, 17.455448, 10.687532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.329259, 16.862925, 10.755618>,  <12.917277, 16.912766, 11.125916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.329259, 16.862925, 10.755618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.548158, 17.081024, 10.501617>,  <12.679497, 17.211884, 10.349217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.548158, 17.081024, 10.501617>,  <12.329259, 16.862925, 10.755618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.548158, 17.081024, 10.501617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400160, -0.495913, -0.770677,
		-0.735115, 0.675852, -0.053200,
		0.547246, 0.545247, -0.635002,
		12.712332, 17.244598, 10.311117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.047920, 16.704306, 10.171064>,  <12.329259, 16.862925, 10.755618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.047920, 16.704306, 10.171064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.349723, 16.923759, 10.026998>,  <12.530805, 17.055431, 9.940557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.349723, 16.923759, 10.026998>,  <12.047920, 16.704306, 10.171064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.349723, 16.923759, 10.026998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211227, -0.316590, -0.924745,
		-0.621371, 0.773804, -0.122983,
		0.754507, 0.548632, -0.360168,
		12.576075, 17.088348, 9.918947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.778746, 17.134439, 9.629204>,  <12.047920, 16.704306, 10.171064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.778746, 17.134439, 9.629204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.171334, 17.091228, 9.565907>,  <12.406888, 17.065302, 9.527928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.171334, 17.091228, 9.565907>,  <11.778746, 17.134439, 9.629204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.171334, 17.091228, 9.565907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164588, -0.052527, -0.984963,
		0.098093, 0.992759, -0.069334,
		0.981473, -0.108029, -0.158244,
		12.465776, 17.058819, 9.518434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.956520, 17.503992, 9.001316>,  <11.778746, 17.134439, 9.629204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.956520, 17.503992, 9.001316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.252324, 17.243706, 9.070245>,  <12.429807, 17.087534, 9.111602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.252324, 17.243706, 9.070245>,  <11.956520, 17.503992, 9.001316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.252324, 17.243706, 9.070245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083725, -0.165093, -0.982718,
		0.667917, 0.741158, -0.067607,
		0.739511, -0.650714, 0.172322,
		12.474177, 17.048492, 9.121942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.395622, 17.433710, 8.436468>,  <11.956520, 17.503992, 9.001316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.395622, 17.433710, 8.436468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.660340, 17.292240, 8.172062>,  <11.819171, 17.207357, 8.013418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.660340, 17.292240, 8.172062>,  <11.395622, 17.433710, 8.436468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.660340, 17.292240, 8.172062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450424, 0.517256, -0.727711,
		0.599288, 0.779333, 0.183014,
		0.661795, -0.353675, -0.661016,
		11.858879, 17.186138, 7.973757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.918526, 17.942953, 8.097568>,  <11.395622, 17.433710, 8.436468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.918526, 17.942953, 8.097568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.825492, 17.634354, 7.860691>,  <11.769671, 17.449194, 7.718565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.825492, 17.634354, 7.860691>,  <11.918526, 17.942953, 8.097568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.825492, 17.634354, 7.860691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421516, 0.628694, -0.653505,
		0.876487, 0.097624, -0.471423,
		-0.232583, -0.771500, -0.592192,
		11.755717, 17.402903, 7.683033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.172136, 17.939539, 7.344891>,  <11.918526, 17.942953, 8.097568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.172136, 17.939539, 7.344891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.838531, 17.718849, 7.343246>,  <11.638367, 17.586435, 7.342260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.838531, 17.718849, 7.343246>,  <12.172136, 17.939539, 7.344891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.838531, 17.718849, 7.343246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324373, 0.496337, -0.805253,
		0.446319, -0.670260, -0.592918,
		-0.834015, -0.551726, -0.004110,
		11.588326, 17.553331, 7.342013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.097729, 17.552893, 6.675398>,  <12.172136, 17.939539, 7.344891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.097729, 17.552893, 6.675398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.731278, 17.641899, 6.808784>,  <11.511408, 17.695303, 6.888816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.731278, 17.641899, 6.808784>,  <12.097729, 17.552893, 6.675398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.731278, 17.641899, 6.808784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227573, 0.396140, -0.889542,
		-0.330035, -0.890820, -0.312276,
		-0.916126, 0.222515, 0.333466,
		11.456441, 17.708654, 6.908824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.469325, 17.192190, 6.539170>,  <12.097729, 17.552893, 6.675398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.469325, 17.192190, 6.539170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.354762, 17.575310, 6.529428>,  <11.286024, 17.805182, 6.523584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.354762, 17.575310, 6.529428>,  <11.469325, 17.192190, 6.539170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.354762, 17.575310, 6.529428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240988, -0.096616, -0.965707,
		-0.927306, -0.270716, 0.258489,
		-0.286407, 0.957799, -0.024353,
		11.268840, 17.862650, 6.522122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.768972, 17.347790, 6.353110>,  <11.469325, 17.192190, 6.539170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.768972, 17.347790, 6.353110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.063573, 17.596794, 6.247244>,  <11.240333, 17.746197, 6.183724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.063573, 17.596794, 6.247244>,  <10.768972, 17.347790, 6.353110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.063573, 17.596794, 6.247244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118347, -0.266646, -0.956501,
		-0.666004, 0.735786, -0.122712,
		0.736500, 0.622511, -0.264665,
		11.284523, 17.783546, 6.167844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.983146, 17.346003, 6.040660>,  <10.768972, 17.347790, 6.353110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.983146, 17.346003, 6.040660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.941323, 16.958584, 5.950339>,  <9.916229, 16.726133, 5.896147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.941323, 16.958584, 5.950339>,  <9.983146, 17.346003, 6.040660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.941323, 16.958584, 5.950339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535199, -0.136569, 0.833613,
		-0.838230, 0.208009, -0.504085,
		-0.104557, -0.968546, -0.225802,
		9.909956, 16.668020, 5.882598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.264853, 17.248840, 6.209672>,  <9.983146, 17.346003, 6.040660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.264853, 17.248840, 6.209672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.473762, 16.907772, 6.204235>,  <9.599107, 16.703131, 6.200973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.473762, 16.907772, 6.204235>,  <9.264853, 17.248840, 6.209672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.473762, 16.907772, 6.204235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464258, -0.297664, 0.834183,
		-0.715329, -0.429360, -0.551320,
		0.522273, -0.852670, -0.013594,
		9.630444, 16.651972, 6.200157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.999601, 16.539818, 6.184079>,  <9.264853, 17.248840, 6.209672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.999601, 16.539818, 6.184079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.355163, 16.501823, 6.363334>,  <9.568500, 16.479027, 6.470887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.355163, 16.501823, 6.363334>,  <8.999601, 16.539818, 6.184079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.355163, 16.501823, 6.363334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456624, -0.262013, 0.850202,
		0.036663, -0.960379, -0.276276,
		0.888904, -0.094983, 0.448138,
		9.621834, 16.473328, 6.497775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.941298, 15.922959, 6.533159>,  <8.999601, 16.539818, 6.184079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.941298, 15.922959, 6.533159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.244838, 16.112614, 6.711751>,  <9.426962, 16.226406, 6.818906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.244838, 16.112614, 6.711751>,  <8.941298, 15.922959, 6.533159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.244838, 16.112614, 6.711751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420847, -0.166201, 0.891777,
		0.497028, -0.864623, 0.073417,
		0.758849, 0.474135, 0.446480,
		9.472492, 16.254854, 6.845695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.086032, 15.592774, 7.153734>,  <8.941298, 15.922959, 6.533159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.086032, 15.592774, 7.153734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.228715, 15.961693, 7.213238>,  <9.314325, 16.183044, 7.248940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.228715, 15.961693, 7.213238>,  <9.086032, 15.592774, 7.153734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.228715, 15.961693, 7.213238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208042, -0.076815, 0.975099,
		0.910757, -0.378775, 0.164476,
		0.356708, 0.922296, 0.148761,
		9.335728, 16.238382, 7.257866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.691841, 15.544075, 7.570804>,  <9.086032, 15.592774, 7.153734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.691841, 15.544075, 7.570804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.469718, 15.865658, 7.655928>,  <9.336444, 16.058607, 7.707002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.469718, 15.865658, 7.655928>,  <9.691841, 15.544075, 7.570804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.469718, 15.865658, 7.655928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276779, -0.419962, 0.864307,
		0.784237, 0.421054, 0.455726,
		-0.555307, 0.803956, 0.212811,
		9.303125, 16.106844, 7.719771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.832674, 15.691121, 8.269170>,  <9.691841, 15.544075, 7.570804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.832674, 15.691121, 8.269170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.469653, 15.803177, 8.144032>,  <9.251841, 15.870410, 8.068951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.469653, 15.803177, 8.144032>,  <9.832674, 15.691121, 8.269170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.469653, 15.803177, 8.144032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396168, -0.324073, 0.859085,
		0.139279, 0.903603, 0.405095,
		-0.907553, 0.280139, -0.312843,
		9.197388, 15.887218, 8.050179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.398786, 16.187281, 8.740955>,  <9.832674, 15.691121, 8.269170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.398786, 16.187281, 8.740955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.154691, 15.965500, 8.514612>,  <9.008234, 15.832432, 8.378806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.154691, 15.965500, 8.514612>,  <9.398786, 16.187281, 8.740955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.154691, 15.965500, 8.514612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438794, -0.358143, 0.824132,
		-0.659598, 0.751211, -0.024737,
		-0.610238, -0.554450, -0.565857,
		8.971620, 15.799165, 8.344855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.818069, 16.296970, 9.066616>,  <9.398786, 16.187281, 8.740955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.818069, 16.296970, 9.066616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.768977, 15.972492, 8.837915>,  <8.739522, 15.777805, 8.700695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.768977, 15.972492, 8.837915>,  <8.818069, 16.296970, 9.066616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.768977, 15.972492, 8.837915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450433, -0.467822, 0.760429,
		-0.884334, 0.350865, -0.307972,
		-0.122731, -0.811194, -0.571752,
		8.732158, 15.729134, 8.666389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.101359, 16.235470, 8.907104>,  <8.818069, 16.296970, 9.066616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.101359, 16.235470, 8.907104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.336480, 15.911880, 8.909948>,  <8.477552, 15.717727, 8.911655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.336480, 15.911880, 8.909948>,  <8.101359, 16.235470, 8.907104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.336480, 15.911880, 8.909948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517479, -0.369216, 0.771942,
		-0.621855, -0.457429, -0.635653,
		0.587802, -0.808974, 0.007111,
		8.512821, 15.669188, 8.912082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.821632, 15.604108, 8.900525>,  <8.101359, 16.235470, 8.907104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.821632, 15.604108, 8.900525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.136039, 15.541203, 9.139673>,  <8.324682, 15.503460, 9.283162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.136039, 15.541203, 9.139673>,  <7.821632, 15.604108, 8.900525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.136039, 15.541203, 9.139673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597898, -0.439230, 0.670518,
		0.157155, -0.884503, -0.439269,
		0.786016, -0.157263, 0.597869,
		8.371843, 15.494023, 9.319034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.782408, 14.846832, 9.163713>,  <7.821632, 15.604108, 8.900525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.782408, 14.846832, 9.163713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.018014, 15.015060, 9.439737>,  <8.159378, 15.115997, 9.605351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.018014, 15.015060, 9.439737>,  <7.782408, 14.846832, 9.163713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.018014, 15.015060, 9.439737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551208, -0.415351, 0.723639,
		0.590958, -0.806601, -0.012827,
		0.589015, 0.420569, 0.690060,
		8.194718, 15.141232, 9.646755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.062876, 14.150002, 9.080933>,  <7.782408, 14.846832, 9.163713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.062876, 14.150002, 9.080933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.724753, 14.243301, 8.888660>,  <7.521880, 14.299280, 8.773297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.724753, 14.243301, 8.888660>,  <8.062876, 14.150002, 9.080933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.724753, 14.243301, 8.888660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425512, -0.250178, -0.869684,
		-0.323106, -0.939685, 0.112228,
		-0.845306, 0.233246, -0.480681,
		7.471162, 14.313275, 8.744456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.832955, 13.600303, 8.654339>,  <8.062876, 14.150002, 9.080933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.832955, 13.600303, 8.654339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.670501, 13.913837, 8.466444>,  <7.573028, 14.101958, 8.353707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.670501, 13.913837, 8.466444>,  <7.832955, 13.600303, 8.654339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.670501, 13.913837, 8.466444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433857, -0.287012, -0.854044,
		-0.804251, -0.550658, -0.223507,
		-0.406137, 0.783836, -0.469737,
		7.548660, 14.148989, 8.325522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.426929, 13.444805, 8.134196>,  <7.832955, 13.600303, 8.654339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.426929, 13.444805, 8.134196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.607692, 13.780735, 8.013880>,  <7.716149, 13.982293, 7.941690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.607692, 13.780735, 8.013880>,  <7.426929, 13.444805, 8.134196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.607692, 13.780735, 8.013880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413847, -0.496076, -0.763308,
		-0.790260, 0.220462, -0.571738,
		0.451906, 0.839824, -0.300791,
		7.743264, 14.032682, 7.923642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.114285, 13.283216, 7.489122>,  <7.426929, 13.444805, 8.134196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.114285, 13.283216, 7.489122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.462485, 13.446114, 7.599669>,  <7.671406, 13.543853, 7.665998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.462485, 13.446114, 7.599669>,  <7.114285, 13.283216, 7.489122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.462485, 13.446114, 7.599669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485410, -0.803137, -0.345468,
		0.081272, 0.434882, -0.896812,
		0.870501, 0.407245, 0.276368,
		7.723636, 13.568287, 7.682580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.449132, 12.888710, 7.017028>,  <7.114285, 13.283216, 7.489122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.449132, 12.888710, 7.017028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.704446, 13.089203, 7.250732>,  <7.857634, 13.209498, 7.390955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.704446, 13.089203, 7.250732>,  <7.449132, 12.888710, 7.017028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.704446, 13.089203, 7.250732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653653, -0.753785, -0.067427,
		0.406611, 0.424941, -0.808760,
		0.638284, 0.501232, 0.584261,
		7.895931, 13.239573, 7.426011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.992836, 13.402458, 6.733619>,  <7.449132, 12.888710, 7.017028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.992836, 13.402458, 6.733619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.250726, 13.668308, 6.582568>,  <8.405459, 13.827819, 6.491938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.250726, 13.668308, 6.582568>,  <7.992836, 13.402458, 6.733619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.250726, 13.668308, 6.582568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610656, 0.150647, -0.777435,
		-0.459814, 0.731832, 0.502984,
		0.644725, 0.664626, -0.377628,
		8.444143, 13.867696, 6.469280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.727820, 14.113297, 6.563839>,  <7.992836, 13.402458, 6.733619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.727820, 14.113297, 6.563839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.028821, 14.033630, 6.312737>,  <8.209421, 13.985830, 6.162076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.028821, 14.033630, 6.312737>,  <7.727820, 14.113297, 6.563839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.028821, 14.033630, 6.312737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598195, 0.192042, -0.777999,
		0.275505, 0.960965, 0.025372,
		0.752502, -0.199166, -0.627753,
		8.254572, 13.973881, 6.124412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.099601, 14.616338, 6.181296>,  <7.727820, 14.113297, 6.563839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.099601, 14.616338, 6.181296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.064679, 14.265694, 5.992009>,  <8.043726, 14.055307, 5.878437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.064679, 14.265694, 5.992009>,  <8.099601, 14.616338, 6.181296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.064679, 14.265694, 5.992009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673906, 0.401809, -0.620001,
		0.733641, 0.264775, -0.625832,
		-0.087304, -0.876609, -0.473217,
		8.038488, 14.002710, 5.850044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.007798, 14.728721, 5.474726>,  <8.099601, 14.616338, 6.181296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.007798, 14.728721, 5.474726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.854772, 14.372887, 5.574553>,  <7.762956, 14.159387, 5.634449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.854772, 14.372887, 5.574553>,  <8.007798, 14.728721, 5.474726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.854772, 14.372887, 5.574553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.846706, 0.229452, -0.480043,
		0.369775, -0.394958, -0.840996,
		-0.382565, -0.889584, 0.249567,
		7.740002, 14.106011, 5.649423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.786479, 14.934879, 5.383000>,  <8.007798, 14.728721, 5.474726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.786479, 14.934879, 5.383000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.821158, 15.332054, 5.415395>,  <8.841967, 15.570359, 5.434832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.821158, 15.332054, 5.415395>,  <8.786479, 14.934879, 5.383000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.821158, 15.332054, 5.415395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972651, -0.066783, -0.222463,
		-0.215483, 0.098059, -0.971572,
		0.086699, 0.992937, 0.080987,
		8.847168, 15.629935, 5.439691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.152870, 15.125544, 4.829710>,  <8.786479, 14.934879, 5.383000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.152870, 15.125544, 4.829710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.201121, 15.381744, 5.133080>,  <9.230072, 15.535465, 5.315101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.201121, 15.381744, 5.133080>,  <9.152870, 15.125544, 4.829710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.201121, 15.381744, 5.133080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986340, 0.008994, -0.164474,
		-0.112167, 0.767903, -0.630669,
		0.120628, 0.640503, 0.758423,
		9.237309, 15.573895, 5.360606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.416224, 15.858343, 4.649947>,  <9.152870, 15.125544, 4.829710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.416224, 15.858343, 4.649947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.511474, 15.770432, 5.028363>,  <9.568624, 15.717684, 5.255413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.511474, 15.770432, 5.028363>,  <9.416224, 15.858343, 4.649947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.511474, 15.770432, 5.028363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951352, 0.248864, -0.181646,
		-0.195513, 0.943273, 0.268349,
		0.238124, -0.219780, 0.946041,
		9.582911, 15.704497, 5.312176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.347441, 15.799469, 3.858785>,  <9.416224, 15.858343, 4.649947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.347441, 15.799469, 3.858785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.102901, 16.113495, 3.818938>,  <8.956177, 16.301910, 3.795030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.102901, 16.113495, 3.818938>,  <9.347441, 15.799469, 3.858785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.102901, 16.113495, 3.818938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568798, 0.523439, 0.634414,
		0.550200, 0.331187, -0.766548,
		-0.611350, 0.785065, -0.099618,
		8.919496, 16.349014, 3.789053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.764841, 16.223869, 3.492277>,  <9.347441, 15.799469, 3.858785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.764841, 16.223869, 3.492277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.483449, 16.353394, 3.745343>,  <9.314614, 16.431108, 3.897183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.483449, 16.353394, 3.745343>,  <9.764841, 16.223869, 3.492277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.483449, 16.353394, 3.745343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708651, 0.387386, 0.589700,
		-0.054135, 0.863180, -0.501985,
		-0.703479, 0.323809, 0.632665,
		9.272406, 16.450537, 3.935143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.204010, 16.646215, 3.773006>,  <9.764841, 16.223869, 3.492277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.204010, 16.646215, 3.773006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.866174, 16.638393, 3.987029>,  <9.663472, 16.633701, 4.115442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.866174, 16.638393, 3.987029>,  <10.204010, 16.646215, 3.773006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.866174, 16.638393, 3.987029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524190, 0.173347, 0.833772,
		-0.109054, 0.984666, -0.136158,
		-0.844590, -0.019554, 0.535057,
		9.612797, 16.632526, 4.147546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.363679, 17.002125, 4.537549>,  <10.204010, 16.646215, 3.773006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.363679, 17.002125, 4.537549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.598208, 16.796288, 4.287294>,  <10.738926, 16.672785, 4.137142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.598208, 16.796288, 4.287294>,  <10.363679, 17.002125, 4.537549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.598208, 16.796288, 4.287294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584249, -0.266358, 0.766620,
		-0.561141, -0.815013, 0.144479,
		0.586322, -0.514593, -0.625636,
		10.774105, 16.641911, 4.099604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<18.955313, 18.173702, 16.973812> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.026249, 18.567036, 16.957773>,  <19.068810, 18.803036, 16.948151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.026249, 18.567036, 16.957773>,  <18.955313, 18.173702, 16.973812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.026249, 18.567036, 16.957773> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253010, 0.006181, -0.967444,
		-0.951071, 0.181711, 0.249889,
		0.177340, 0.983332, -0.040096,
		19.079451, 18.862036, 16.945744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.347197, 18.450972, 16.647636>,  <18.955313, 18.173702, 16.973812>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.347197, 18.450972, 16.647636> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.642525, 18.715549, 16.594908>,  <18.819721, 18.874296, 16.563271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.642525, 18.715549, 16.594908>,  <18.347197, 18.450972, 16.647636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.642525, 18.715549, 16.594908> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223682, 0.055751, -0.973066,
		-0.636280, 0.747919, 0.189115,
		0.738318, 0.661445, -0.131823,
		18.864019, 18.913982, 16.555361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.058788, 19.114595, 16.349079>,  <18.347197, 18.450972, 16.647636>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.058788, 19.114595, 16.349079> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.448715, 19.119686, 16.260023>,  <18.682671, 19.122742, 16.206589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.448715, 19.119686, 16.260023>,  <18.058788, 19.114595, 16.349079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.448715, 19.119686, 16.260023> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219772, 0.224191, -0.949441,
		0.037829, 0.974462, 0.221342,
		0.974818, 0.012729, -0.222640,
		18.741161, 19.123505, 16.193232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.186647, 19.716646, 15.813344>,  <18.058788, 19.114595, 16.349079>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.186647, 19.716646, 15.813344> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.495247, 19.464298, 15.780367>,  <18.680407, 19.312889, 15.760580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.495247, 19.464298, 15.780367>,  <18.186647, 19.716646, 15.813344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.495247, 19.464298, 15.780367> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055338, 0.062553, -0.996506,
		0.633821, 0.773365, 0.013349,
		0.771498, -0.630868, -0.082444,
		18.726696, 19.275038, 15.755633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.606844, 19.968948, 15.312139>,  <18.186647, 19.716646, 15.813344>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.606844, 19.968948, 15.312139> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.731384, 19.589096, 15.326330>,  <18.806108, 19.361185, 15.334846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.731384, 19.589096, 15.326330>,  <18.606844, 19.968948, 15.312139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.731384, 19.589096, 15.326330> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015427, -0.042380, -0.998982,
		0.950170, 0.310486, -0.027845,
		0.311350, -0.949633, 0.035479,
		18.824789, 19.304207, 15.336974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.183657, 19.917284, 14.826127>,  <18.606844, 19.968948, 15.312139>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.183657, 19.917284, 14.826127> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.044128, 19.545094, 14.870914>,  <18.960411, 19.321779, 14.897787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.044128, 19.545094, 14.870914>,  <19.183657, 19.917284, 14.826127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.044128, 19.545094, 14.870914> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014488, -0.114105, -0.993363,
		0.937078, -0.348127, 0.026322,
		-0.348820, -0.930477, 0.111969,
		18.939482, 19.265951, 14.904505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.614883, 19.564537, 14.519522>,  <19.183657, 19.917284, 14.826127>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.614883, 19.564537, 14.519522> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.300663, 19.317204, 14.529127>,  <19.112131, 19.168804, 14.534890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.300663, 19.317204, 14.529127>,  <19.614883, 19.564537, 14.519522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.300663, 19.317204, 14.529127> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083149, -0.143933, -0.986088,
		0.613187, -0.772624, 0.164480,
		-0.785550, -0.618332, 0.024014,
		19.064999, 19.131704, 14.536331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.620466, 19.125217, 13.871184>,  <19.614883, 19.564537, 14.519522>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.620466, 19.125217, 13.871184> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.262112, 19.045696, 14.030111>,  <19.047098, 18.997984, 14.125467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.262112, 19.045696, 14.030111>,  <19.620466, 19.125217, 13.871184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.262112, 19.045696, 14.030111> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276686, -0.450039, -0.849064,
		0.347605, -0.870599, 0.348179,
		-0.895888, -0.198803, 0.397318,
		18.993345, 18.986055, 14.149307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.413513, 18.344450, 13.759830>,  <19.620466, 19.125217, 13.871184>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.413513, 18.344450, 13.759830> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.086510, 18.572617, 13.791584>,  <18.890306, 18.709517, 13.810637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.086510, 18.572617, 13.791584>,  <19.413513, 18.344450, 13.759830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.086510, 18.572617, 13.791584> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249028, -0.225835, -0.941798,
		-0.519289, -0.789698, 0.326672,
		-0.817511, 0.570417, 0.079384,
		18.841257, 18.743742, 13.815399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.926020, 17.880272, 13.418889>,  <19.413513, 18.344450, 13.759830>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.926020, 17.880272, 13.418889> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.761993, 18.245087, 13.421253>,  <18.663578, 18.463976, 13.422671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.761993, 18.245087, 13.421253>,  <18.926020, 17.880272, 13.418889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.761993, 18.245087, 13.421253> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449770, -0.196576, -0.871243,
		-0.793445, -0.359923, 0.490816,
		-0.410064, 0.912038, 0.005910,
		18.638975, 18.518698, 13.423026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.253256, 17.752695, 13.179112>,  <18.926020, 17.880272, 13.418889>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.253256, 17.752695, 13.179112> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.308357, 18.144909, 13.123142>,  <18.341417, 18.380238, 13.089561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.308357, 18.144909, 13.123142>,  <18.253256, 17.752695, 13.179112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.308357, 18.144909, 13.123142> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555594, -0.040456, -0.830469,
		-0.819963, 0.192141, 0.539206,
		0.137753, 0.980533, -0.139925,
		18.349684, 18.439070, 13.081165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.634146, 18.048605, 13.163983>,  <18.253256, 17.752695, 13.179112>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.634146, 18.048605, 13.163983> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.905083, 18.252739, 12.952034>,  <18.067644, 18.375219, 12.824864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.905083, 18.252739, 12.952034>,  <17.634146, 18.048605, 13.163983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.905083, 18.252739, 12.952034> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478174, -0.241949, -0.844281,
		-0.559070, 0.825238, 0.080147,
		0.677341, 0.510336, -0.529874,
		18.108284, 18.405840, 12.793072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.246670, 18.494366, 12.730346>,  <17.634146, 18.048605, 13.163983>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.246670, 18.494366, 12.730346> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.604855, 18.457443, 12.556162>,  <17.819765, 18.435289, 12.451652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.604855, 18.457443, 12.556162>,  <17.246670, 18.494366, 12.730346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.604855, 18.457443, 12.556162> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445085, -0.170968, -0.879016,
		0.006690, 0.980943, -0.194180,
		0.895463, -0.092307, -0.435460,
		17.873493, 18.429750, 12.425524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.136375, 18.751730, 11.995352>,  <17.246670, 18.494366, 12.730346>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.136375, 18.751730, 11.995352> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.485180, 18.557690, 11.969210>,  <17.694462, 18.441265, 11.953525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.485180, 18.557690, 11.969210>,  <17.136375, 18.751730, 11.995352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.485180, 18.557690, 11.969210> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129906, -0.100623, -0.986407,
		0.471932, 0.868649, -0.150762,
		0.872012, -0.485102, -0.065355,
		17.746784, 18.412159, 11.949603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.360815, 18.932398, 11.383795>,  <17.136375, 18.751730, 11.995352>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.360815, 18.932398, 11.383795> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.592003, 18.615353, 11.461480>,  <17.730715, 18.425125, 11.508091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.592003, 18.615353, 11.461480>,  <17.360815, 18.932398, 11.383795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.592003, 18.615353, 11.461480> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118390, -0.316911, -0.941037,
		0.807426, 0.520896, -0.277002,
		0.577968, -0.792612, 0.194213,
		17.765392, 18.377569, 11.519744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.811476, 18.890169, 10.740527>,  <17.360815, 18.932398, 11.383795>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.811476, 18.890169, 10.740527> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.818878, 18.529194, 10.912697>,  <17.823320, 18.312609, 11.015999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.818878, 18.529194, 10.912697>,  <17.811476, 18.890169, 10.740527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.818878, 18.529194, 10.912697> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202204, -0.424980, -0.882329,
		0.979168, -0.070704, -0.190342,
		0.018507, -0.902437, 0.430424,
		17.824430, 18.258463, 11.041824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.171173, 18.463282, 10.295707>,  <17.811476, 18.890169, 10.740527>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.171173, 18.463282, 10.295707> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.002300, 18.179852, 10.521870>,  <17.900976, 18.009794, 10.657568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.002300, 18.179852, 10.521870>,  <18.171173, 18.463282, 10.295707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.002300, 18.179852, 10.521870> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341764, -0.453282, -0.823245,
		0.839620, -0.540794, -0.050798,
		-0.422181, -0.708574, 0.565408,
		17.875647, 17.967279, 10.691492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.333527, 17.753166, 9.942463>,  <18.171173, 18.463282, 10.295707>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.333527, 17.753166, 9.942463> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.027920, 17.709251, 10.196777>,  <17.844555, 17.682903, 10.349366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.027920, 17.709251, 10.196777>,  <18.333527, 17.753166, 9.942463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.027920, 17.709251, 10.196777> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523145, -0.471330, -0.710048,
		0.377618, -0.875097, 0.302671,
		-0.764018, -0.109786, 0.635785,
		17.798714, 17.676315, 10.387513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.094234, 17.002783, 9.913771>,  <18.333527, 17.753166, 9.942463>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.094234, 17.002783, 9.913771> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.797997, 17.242435, 10.035467>,  <17.620255, 17.386227, 10.108485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.797997, 17.242435, 10.035467>,  <18.094234, 17.002783, 9.913771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.797997, 17.242435, 10.035467> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606047, -0.400009, -0.687532,
		-0.290221, -0.693568, 0.659345,
		-0.740594, 0.599130, 0.304243,
		17.575819, 17.422174, 10.126740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.500196, 16.591497, 9.892084>,  <18.094234, 17.002783, 9.913771>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.500196, 16.591497, 9.892084> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.342999, 16.958763, 9.912210>,  <17.248680, 17.179123, 9.924286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.342999, 16.958763, 9.912210>,  <17.500196, 16.591497, 9.892084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.342999, 16.958763, 9.912210> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581454, -0.205742, -0.787135,
		-0.712366, -0.338596, 0.614726,
		-0.392996, 0.918162, 0.050315,
		17.225100, 17.234211, 9.927305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.757572, 16.437248, 9.822293>,  <17.500196, 16.591497, 9.892084>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.757572, 16.437248, 9.822293> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.829075, 16.815319, 9.712979>,  <16.871977, 17.042162, 9.647391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.829075, 16.815319, 9.712979>,  <16.757572, 16.437248, 9.822293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.829075, 16.815319, 9.712979> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550614, -0.134089, -0.823919,
		-0.815395, 0.297756, 0.496459,
		0.178757, 0.945178, -0.273285,
		16.882702, 17.098873, 9.630994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.130482, 16.643991, 9.651554>,  <16.757572, 16.437248, 9.822293>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.130482, 16.643991, 9.651554> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.406048, 16.865032, 9.463927>,  <16.571388, 16.997658, 9.351351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.406048, 16.865032, 9.463927>,  <16.130482, 16.643991, 9.651554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.406048, 16.865032, 9.463927> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399775, -0.250133, -0.881824,
		-0.604629, 0.795023, 0.048597,
		0.688915, 0.552604, -0.469068,
		16.612722, 17.030813, 9.323207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.364500, 16.821030, 9.513023>,  <16.130482, 16.643991, 9.651554>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.364500, 16.821030, 9.513023> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.112573, 16.615276, 9.745828>,  <14.961416, 16.491823, 9.885510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.112573, 16.615276, 9.745828>,  <15.364500, 16.821030, 9.513023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.112573, 16.615276, 9.745828> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568361, 0.205527, 0.796696,
		-0.529427, 0.832566, 0.162911,
		-0.629819, -0.514385, 0.582010,
		14.923627, 16.460960, 9.920431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.288884, 17.254778, 10.198556>,  <15.364500, 16.821030, 9.513023>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.288884, 17.254778, 10.198556> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.164556, 16.882111, 10.273800>,  <15.089958, 16.658510, 10.318946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.164556, 16.882111, 10.273800>,  <15.288884, 17.254778, 10.198556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.164556, 16.882111, 10.273800> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262805, 0.105955, 0.959013,
		-0.913413, 0.347518, 0.211914,
		-0.310821, -0.931668, 0.188110,
		15.071309, 16.602610, 10.330233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.882029, 17.255751, 10.874056>,  <15.288884, 17.254778, 10.198556>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.882029, 17.255751, 10.874056> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.049827, 16.895271, 10.830482>,  <15.150506, 16.678984, 10.804338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.049827, 16.895271, 10.830482>,  <14.882029, 17.255751, 10.874056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.049827, 16.895271, 10.830482> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301078, 0.024918, 0.953274,
		-0.856373, -0.432692, 0.281784,
		0.419496, -0.901197, -0.108935,
		15.175675, 16.624912, 10.797801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.698723, 16.914112, 11.474063>,  <14.882029, 17.255751, 10.874056>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.698723, 16.914112, 11.474063> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.995439, 16.687576, 11.330393>,  <15.173468, 16.551655, 11.244191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.995439, 16.687576, 11.330393>,  <14.698723, 16.914112, 11.474063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.995439, 16.687576, 11.330393> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359333, -0.116557, 0.925902,
		-0.566241, -0.815886, 0.117045,
		0.741788, -0.566342, -0.359174,
		15.217976, 16.517673, 11.222640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.708730, 16.253201, 11.902031>,  <14.698723, 16.914112, 11.474063>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.708730, 16.253201, 11.902031> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.076177, 16.236958, 11.744808>,  <15.296644, 16.227211, 11.650475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.076177, 16.236958, 11.744808>,  <14.708730, 16.253201, 11.902031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.076177, 16.236958, 11.744808> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392337, -0.024735, 0.919489,
		-0.047070, -0.998868, -0.006786,
		0.918616, -0.040617, -0.393058,
		15.351762, 16.224775, 11.626891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.072536, 15.691481, 12.245253>,  <14.708730, 16.253201, 11.902031>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.072536, 15.691481, 12.245253> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.380118, 15.898888, 12.095668>,  <15.564668, 16.023333, 12.005917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.380118, 15.898888, 12.095668>,  <15.072536, 15.691481, 12.245253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.380118, 15.898888, 12.095668> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373656, 0.110118, 0.921008,
		0.518739, -0.847946, -0.109071,
		0.768955, 0.518518, -0.373963,
		15.610805, 16.054443, 11.983479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.638088, 15.344893, 12.484629>,  <15.072536, 15.691481, 12.245253>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.638088, 15.344893, 12.484629> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.806252, 15.689518, 12.370811>,  <15.907151, 15.896294, 12.302522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.806252, 15.689518, 12.370811>,  <15.638088, 15.344893, 12.484629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.806252, 15.689518, 12.370811> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489151, 0.048914, 0.870826,
		0.764190, -0.505288, -0.400871,
		0.420410, 0.861563, -0.284542,
		15.932376, 15.947987, 12.285449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.371887, 15.224316, 12.550536>,  <15.638088, 15.344893, 12.484629>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.371887, 15.224316, 12.550536> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.305756, 15.618423, 12.568029>,  <16.266077, 15.854888, 12.578526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.305756, 15.618423, 12.568029>,  <16.371887, 15.224316, 12.550536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.305756, 15.618423, 12.568029> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388967, 0.024390, 0.920929,
		0.906296, 0.169265, -0.387269,
		-0.165327, 0.985269, 0.043734,
		16.256157, 15.914004, 12.581149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.950212, 15.481594, 12.913772>,  <16.371887, 15.224316, 12.550536>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.950212, 15.481594, 12.913772> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.698124, 15.790035, 12.950035>,  <16.546871, 15.975101, 12.971793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.698124, 15.790035, 12.950035>,  <16.950212, 15.481594, 12.913772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.698124, 15.790035, 12.950035> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272413, 0.110265, 0.955841,
		0.727056, 0.627090, -0.279550,
		-0.630223, 0.771103, 0.090659,
		16.509058, 16.021366, 12.977233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.262951, 15.861432, 13.383026>,  <16.950212, 15.481594, 12.913772>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.262951, 15.861432, 13.383026> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.892712, 16.012386, 13.394650>,  <16.670568, 16.102959, 13.401624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.892712, 16.012386, 13.394650>,  <17.262951, 15.861432, 13.383026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.892712, 16.012386, 13.394650> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162027, 0.325677, 0.931494,
		0.342070, 0.866899, -0.362593,
		-0.925600, 0.377386, 0.029057,
		16.615032, 16.125603, 13.403367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.334564, 16.560555, 13.601166>,  <17.262951, 15.861432, 13.383026>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.334564, 16.560555, 13.601166> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.952843, 16.457916, 13.662434>,  <16.723810, 16.396334, 13.699194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.952843, 16.457916, 13.662434>,  <17.334564, 16.560555, 13.601166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.952843, 16.457916, 13.662434> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037568, 0.405476, 0.913333,
		-0.296464, 0.877353, -0.377308,
		-0.954305, -0.256595, 0.153170,
		16.666552, 16.380938, 13.708385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.066813, 17.197203, 13.877401>,  <17.334564, 16.560555, 13.601166>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.066813, 17.197203, 13.877401> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.846550, 16.886131, 13.998726>,  <16.714394, 16.699490, 14.071521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.846550, 16.886131, 13.998726>,  <17.066813, 17.197203, 13.877401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.846550, 16.886131, 13.998726> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117949, 0.287228, 0.950573,
		-0.826357, 0.559213, -0.066438,
		-0.550655, -0.777677, 0.303311,
		16.681353, 16.652828, 14.089719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.610653, 17.459068, 14.417876>,  <17.066813, 17.197203, 13.877401>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.610653, 17.459068, 14.417876> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.627995, 17.060307, 14.444117>,  <16.638399, 16.821049, 14.459861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.627995, 17.060307, 14.444117>,  <16.610653, 17.459068, 14.417876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.627995, 17.060307, 14.444117> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036239, 0.064050, 0.997289,
		-0.998402, -0.045613, -0.033350,
		0.043353, -0.996904, 0.065601,
		16.641001, 16.761236, 14.463797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.006334, 17.253115, 14.829633>,  <16.610653, 17.459068, 14.417876>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.006334, 17.253115, 14.829633> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.279987, 16.962482, 14.855051>,  <16.444180, 16.788103, 14.870302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.279987, 16.962482, 14.855051>,  <16.006334, 17.253115, 14.829633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.279987, 16.962482, 14.855051> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069077, 0.151283, 0.986074,
		-0.726078, -0.670217, 0.153688,
		0.684134, -0.726583, 0.063547,
		16.485228, 16.744507, 14.874115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.862435, 16.958040, 15.437786>,  <16.006334, 17.253115, 14.829633>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.862435, 16.958040, 15.437786> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.237202, 16.831718, 15.377844>,  <16.462061, 16.755926, 15.341879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.237202, 16.831718, 15.377844>,  <15.862435, 16.958040, 15.437786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.237202, 16.831718, 15.377844> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164249, 0.019302, 0.986230,
		-0.308563, -0.948628, 0.069955,
		0.936916, -0.315804, -0.149855,
		16.518276, 16.736977, 15.332888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.980611, 16.317873, 15.752771>,  <15.862435, 16.958040, 15.437786>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.980611, 16.317873, 15.752771> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.337833, 16.495277, 15.722441>,  <16.552166, 16.601719, 15.704243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.337833, 16.495277, 15.722441>,  <15.980611, 16.317873, 15.752771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.337833, 16.495277, 15.722441> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061962, 0.045696, 0.997032,
		0.445659, -0.895104, 0.013328,
		0.893056, 0.443511, -0.075827,
		16.605751, 16.628330, 15.699693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.386501, 16.035677, 16.275784>,  <15.980611, 16.317873, 15.752771>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.386501, 16.035677, 16.275784> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.580421, 16.371002, 16.176025>,  <16.696774, 16.572197, 16.116171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.580421, 16.371002, 16.176025>,  <16.386501, 16.035677, 16.275784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.580421, 16.371002, 16.176025> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085629, 0.238283, 0.967413,
		0.870423, -0.490357, 0.043735,
		0.484800, 0.838315, -0.249396,
		16.725861, 16.622496, 16.101206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.995399, 15.997975, 16.766541>,  <16.386501, 16.035677, 16.275784>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.995399, 15.997975, 16.766541> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.988220, 16.373466, 16.628862>,  <16.983913, 16.598761, 16.546255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.988220, 16.373466, 16.628862>,  <16.995399, 15.997975, 16.766541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.988220, 16.373466, 16.628862> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282623, 0.334973, 0.898842,
		0.959063, -0.081145, -0.271318,
		-0.017947, 0.938727, -0.344194,
		16.982836, 16.655085, 16.525604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<17.736036, 16.190985, 17.020374> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.495983, 16.501900, 16.944834>,  <17.351952, 16.688448, 16.899509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.495983, 16.501900, 16.944834>,  <17.736036, 16.190985, 17.020374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.495983, 16.501900, 16.944834> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172744, 0.356463, 0.918201,
		0.781025, 0.518419, -0.348197,
		-0.600132, 0.777287, -0.188853,
		17.315943, 16.735086, 16.888178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.173645, 16.770779, 17.193592>,  <17.736036, 16.190985, 17.020374>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.173645, 16.770779, 17.193592> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.800240, 16.912567, 17.172047>,  <17.576197, 16.997641, 17.159119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.800240, 16.912567, 17.172047>,  <18.173645, 16.770779, 17.193592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.800240, 16.912567, 17.172047> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102040, 0.406685, 0.907852,
		0.343714, 0.841997, -0.415816,
		-0.933514, 0.354471, -0.053866,
		17.520185, 17.018908, 17.155888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.199398, 17.538872, 17.170240>,  <18.173645, 16.770779, 17.193592>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.199398, 17.538872, 17.170240> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.836262, 17.447250, 17.310728>,  <17.618380, 17.392277, 17.395021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.836262, 17.447250, 17.310728>,  <18.199398, 17.538872, 17.170240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.836262, 17.447250, 17.310728> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170913, 0.562734, 0.808777,
		-0.382897, 0.794270, -0.471725,
		-0.907843, -0.229054, 0.351220,
		17.563910, 17.378534, 17.416094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.909233, 18.152040, 17.384588>,  <18.199398, 17.538872, 17.170240>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.909233, 18.152040, 17.384588> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.686035, 17.888584, 17.586514>,  <17.552116, 17.730511, 17.707668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.686035, 17.888584, 17.586514>,  <17.909233, 18.152040, 17.384588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.686035, 17.888584, 17.586514> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006475, 0.604850, 0.796313,
		-0.829821, 0.447606, -0.333237,
		-0.557993, -0.658640, 0.504815,
		17.518637, 17.690992, 17.737959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.564556, 18.565586, 17.833389>,  <17.909233, 18.152040, 17.384588>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.564556, 18.565586, 17.833389> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.510147, 18.199112, 17.984173>,  <17.477501, 17.979227, 18.074644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.510147, 18.199112, 17.984173>,  <17.564556, 18.565586, 17.833389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.510147, 18.199112, 17.984173> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108418, 0.364445, 0.924892,
		-0.984755, 0.166676, 0.049758,
		-0.136023, -0.916187, 0.376960,
		17.469339, 17.924255, 18.097261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.043837, 18.582739, 18.396875>,  <17.564556, 18.565586, 17.833389>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.043837, 18.582739, 18.396875> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.259369, 18.254948, 18.474968>,  <17.388689, 18.058273, 18.521824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.259369, 18.254948, 18.474968>,  <17.043837, 18.582739, 18.396875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.259369, 18.254948, 18.474968> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004359, 0.234463, 0.972115,
		-0.842403, -0.522954, 0.129908,
		0.538830, -0.819479, 0.195233,
		17.421019, 18.009104, 18.533539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.747183, 18.310343, 18.975277>,  <17.043837, 18.582739, 18.396875>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.747183, 18.310343, 18.975277> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.113579, 18.151543, 18.952122>,  <17.333416, 18.056263, 18.938229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.113579, 18.151543, 18.952122>,  <16.747183, 18.310343, 18.975277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.113579, 18.151543, 18.952122> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061270, -0.004174, 0.998113,
		-0.396492, -0.917809, 0.020501,
		0.915991, -0.397000, -0.057889,
		17.388376, 18.032442, 18.934755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.814785, 17.984360, 19.623203>,  <16.747183, 18.310343, 18.975277>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.814785, 17.984360, 19.623203> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.182739, 17.981976, 19.466347>,  <17.403511, 17.980545, 19.372232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.182739, 17.981976, 19.466347>,  <16.814785, 17.984360, 19.623203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.182739, 17.981976, 19.466347> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391091, 0.088668, 0.916071,
		0.029307, -0.996043, 0.083897,
		0.919885, -0.005964, -0.392142,
		17.458704, 17.980186, 19.348703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.072426, 17.258152, 19.697811>,  <16.814785, 17.984360, 19.623203>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.072426, 17.258152, 19.697811> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.340141, 17.555168, 19.687370>,  <17.500771, 17.733377, 19.681105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.340141, 17.555168, 19.687370>,  <17.072426, 17.258152, 19.697811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.340141, 17.555168, 19.687370> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317256, -0.253837, 0.913737,
		0.671862, -0.619837, -0.405467,
		0.669291, 0.742542, -0.026103,
		17.540928, 17.777931, 19.679539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.448586, 17.085754, 20.178656>,  <17.072426, 17.258152, 19.697811>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.448586, 17.085754, 20.178656> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.593426, 17.455219, 20.128494>,  <17.680330, 17.676899, 20.098396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.593426, 17.455219, 20.128494>,  <17.448586, 17.085754, 20.178656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.593426, 17.455219, 20.128494> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366175, -0.017233, 0.930386,
		0.857204, -0.382815, -0.344463,
		0.362102, 0.923664, -0.125405,
		17.702057, 17.732319, 20.090872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.063612, 17.090790, 20.659479>,  <17.448586, 17.085754, 20.178656>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.063612, 17.090790, 20.659479> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.980736, 17.479649, 20.615656>,  <17.931011, 17.712963, 20.589361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.980736, 17.479649, 20.615656>,  <18.063612, 17.090790, 20.659479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.980736, 17.479649, 20.615656> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255323, 0.161840, 0.953214,
		0.944396, 0.169523, -0.281743,
		-0.207189, 0.972147, -0.109558,
		17.918579, 17.771294, 20.582788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.655067, 17.590696, 20.839174>,  <18.063612, 17.090790, 20.659479>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.655067, 17.590696, 20.839174> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.334671, 17.830074, 20.832567>,  <18.142433, 17.973701, 20.828602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.334671, 17.830074, 20.832567>,  <18.655067, 17.590696, 20.839174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.334671, 17.830074, 20.832567> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295289, 0.418933, 0.858662,
		0.520783, 0.682904, -0.512277,
		-0.800993, 0.598445, -0.016519,
		18.094374, 18.009607, 20.827612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.859028, 18.370787, 20.987133>,  <18.655067, 17.590696, 20.839174>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.859028, 18.370787, 20.987133> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.476479, 18.311924, 21.088085>,  <18.246948, 18.276608, 21.148657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.476479, 18.311924, 21.088085>,  <18.859028, 18.370787, 20.987133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.476479, 18.311924, 21.088085> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214458, 0.233013, 0.948532,
		-0.198389, 0.961275, -0.191288,
		-0.956373, -0.147155, 0.252380,
		18.189568, 18.267778, 21.163799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.725424, 18.921497, 21.289114>,  <18.859028, 18.370787, 20.987133>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.725424, 18.921497, 21.289114> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.426022, 18.688896, 21.416609>,  <18.246380, 18.549335, 21.493107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.426022, 18.688896, 21.416609>,  <18.725424, 18.921497, 21.289114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.426022, 18.688896, 21.416609> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076042, 0.402220, 0.912380,
		-0.658754, 0.707159, -0.256845,
		-0.748506, -0.581502, 0.318738,
		18.201469, 18.514446, 21.512230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.282881, 19.374262, 21.646387>,  <18.725424, 18.921497, 21.289114>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.282881, 19.374262, 21.646387> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.187424, 19.011059, 21.784124>,  <18.130150, 18.793137, 21.866766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.187424, 19.011059, 21.784124>,  <18.282881, 19.374262, 21.646387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.187424, 19.011059, 21.784124> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053459, 0.341767, 0.938263,
		-0.969635, 0.242316, -0.033019,
		-0.238641, -0.908008, 0.344344,
		18.115831, 18.738657, 21.887428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.811161, 19.506292, 22.242632>,  <18.282881, 19.374262, 21.646387>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.811161, 19.506292, 22.242632> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.946903, 19.133701, 22.295071>,  <18.028349, 18.910147, 22.326534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.946903, 19.133701, 22.295071>,  <17.811161, 19.506292, 22.242632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.946903, 19.133701, 22.295071> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007481, 0.142038, 0.989833,
		-0.940628, -0.334927, 0.055170,
		0.339358, -0.931477, 0.131099,
		18.048710, 18.854258, 22.334400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.340307, 19.172434, 22.736166>,  <17.811161, 19.506292, 22.242632>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.340307, 19.172434, 22.736166> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.688309, 18.975216, 22.736710>,  <17.897110, 18.856884, 22.737036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.688309, 18.975216, 22.736710>,  <17.340307, 19.172434, 22.736166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.688309, 18.975216, 22.736710> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029089, 0.054077, 0.998113,
		-0.492190, -0.868321, 0.061389,
		0.870002, -0.493047, 0.001357,
		17.949308, 18.827301, 22.737118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.248886, 18.667313, 23.222612>,  <17.340307, 19.172434, 22.736166>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.248886, 18.667313, 23.222612> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.642822, 18.719040, 23.176361>,  <17.879183, 18.750076, 23.148611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.642822, 18.719040, 23.176361>,  <17.248886, 18.667313, 23.222612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.642822, 18.719040, 23.176361> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081060, 0.246242, 0.965813,
		0.153367, -0.960543, 0.232026,
		0.984839, 0.129316, -0.115627,
		17.938274, 18.757835, 23.141672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.556543, 18.243084, 23.825333>,  <17.248886, 18.667313, 23.222612>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.556543, 18.243084, 23.825333> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.818390, 18.516216, 23.695583>,  <17.975498, 18.680096, 23.617733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.818390, 18.516216, 23.695583>,  <17.556543, 18.243084, 23.825333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.818390, 18.516216, 23.695583> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239557, 0.219602, 0.945721,
		0.717000, -0.696791, -0.019821,
		0.654617, 0.682830, -0.324375,
		18.014774, 18.721066, 23.598270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.252949, 17.959831, 24.065155>,  <17.556543, 18.243084, 23.825333>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.252949, 17.959831, 24.065155> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.283936, 18.354256, 24.006250>,  <18.302526, 18.590910, 23.970907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.283936, 18.354256, 24.006250>,  <18.252949, 17.959831, 24.065155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.283936, 18.354256, 24.006250> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317845, 0.115572, 0.941073,
		0.944973, -0.119706, -0.304461,
		0.077465, 0.986060, -0.147261,
		18.307175, 18.650074, 23.962072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.825964, 18.169628, 24.431297>,  <18.252949, 17.959831, 24.065155>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.825964, 18.169628, 24.431297> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.676613, 18.530632, 24.345448>,  <18.587002, 18.747234, 24.293938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.676613, 18.530632, 24.345448>,  <18.825964, 18.169628, 24.431297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.676613, 18.530632, 24.345448> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337221, 0.347576, 0.874913,
		0.864216, 0.254299, -0.434123,
		-0.373380, 0.902509, -0.214626,
		18.564598, 18.801384, 24.281059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.275839, 18.574549, 24.725878>,  <18.825964, 18.169628, 24.431297>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.275839, 18.574549, 24.725878> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.962013, 18.813332, 24.658821>,  <18.773718, 18.956600, 24.618587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.962013, 18.813332, 24.658821>,  <19.275839, 18.574549, 24.725878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.962013, 18.813332, 24.658821> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234865, 0.536334, 0.810669,
		0.573844, 0.596649, -0.560993,
		-0.784565, 0.596955, -0.167640,
		18.726645, 18.992418, 24.608528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.364403, 19.275362, 24.745392>,  <19.275839, 18.574549, 24.725878>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.364403, 19.275362, 24.745392> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.993420, 19.178535, 24.859396>,  <18.770830, 19.120440, 24.927797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.993420, 19.178535, 24.859396>,  <19.364403, 19.275362, 24.745392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.993420, 19.178535, 24.859396> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200881, 0.320335, 0.925760,
		-0.315392, 0.915855, -0.248471,
		-0.927456, -0.242064, 0.285009,
		18.715183, 19.105917, 24.944899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.926779, 19.850466, 25.018244>,  <19.364403, 19.275362, 24.745392>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.926779, 19.850466, 25.018244> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.847969, 19.496399, 25.186844>,  <18.800684, 19.283958, 25.288004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.847969, 19.496399, 25.186844>,  <18.926779, 19.850466, 25.018244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.847969, 19.496399, 25.186844> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182500, 0.389301, 0.902850,
		-0.963263, 0.254806, 0.084842,
		-0.197022, -0.885166, 0.421501,
		18.788862, 19.230848, 25.313293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.565647, 20.252043, 24.731026>,  <18.926779, 19.850466, 25.018244>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.565647, 20.252043, 24.731026> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.785248, 20.584385, 24.767410>,  <19.917007, 20.783791, 24.789240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.785248, 20.584385, 24.767410>,  <19.565647, 20.252043, 24.731026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.785248, 20.584385, 24.767410> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013397, 0.117560, -0.992975,
		-0.835713, 0.543927, 0.075672,
		0.549002, 0.830857, 0.090960,
		19.949949, 20.833641, 24.794699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.258871, 20.662659, 24.238625>,  <19.565647, 20.252043, 24.731026>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.258871, 20.662659, 24.238625> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.585796, 20.876678, 24.324154>,  <19.781952, 21.005091, 24.375471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.585796, 20.876678, 24.324154>,  <19.258871, 20.662659, 24.238625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.585796, 20.876678, 24.324154> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105608, 0.225703, -0.968455,
		-0.566431, 0.814113, 0.127965,
		0.817314, 0.535049, 0.213822,
		19.830990, 21.037193, 24.388300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.179623, 21.215097, 23.882629>,  <19.258871, 20.662659, 24.238625>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.179623, 21.215097, 23.882629> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.569115, 21.169258, 23.961332>,  <19.802811, 21.141754, 24.008554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.569115, 21.169258, 23.961332>,  <19.179623, 21.215097, 23.882629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.569115, 21.169258, 23.961332> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190081, -0.066643, -0.979504,
		0.125364, 0.991174, -0.043109,
		0.973732, -0.114600, 0.196758,
		19.861235, 21.134878, 24.020359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.588173, 21.818962, 23.497683>,  <19.179623, 21.215097, 23.882629>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.588173, 21.818962, 23.497683> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.798988, 21.483696, 23.553837>,  <19.925478, 21.282536, 23.587528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.798988, 21.483696, 23.553837>,  <19.588173, 21.818962, 23.497683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.798988, 21.483696, 23.553837> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278550, 0.014309, -0.960315,
		0.802895, 0.545227, 0.241013,
		0.527039, -0.838166, 0.140385,
		19.957100, 21.232246, 23.595953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.074394, 21.938070, 23.028893>,  <19.588173, 21.818962, 23.497683>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.074394, 21.938070, 23.028893> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.159374, 21.557770, 23.119169>,  <20.210361, 21.329590, 23.173336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.159374, 21.557770, 23.119169>,  <20.074394, 21.938070, 23.028893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.159374, 21.557770, 23.119169> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138128, -0.199426, -0.970129,
		0.967360, 0.237277, 0.088958,
		0.212449, -0.950752, 0.225691,
		20.223108, 21.272545, 23.186876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.605961, 21.774691, 22.606602>,  <20.074394, 21.938070, 23.028893>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.605961, 21.774691, 22.606602> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.440266, 21.429573, 22.722527>,  <20.340849, 21.222502, 22.792082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.440266, 21.429573, 22.722527>,  <20.605961, 21.774691, 22.606602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.440266, 21.429573, 22.722527> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117197, -0.366327, -0.923076,
		0.902591, -0.348409, 0.252864,
		-0.414239, -0.862795, 0.289811,
		20.315994, 21.170734, 22.809469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.961014, 21.375082, 22.159359>,  <20.605961, 21.774691, 22.606602>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.961014, 21.375082, 22.159359> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.652657, 21.149605, 22.278002>,  <20.467642, 21.014318, 22.349188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.652657, 21.149605, 22.278002>,  <20.961014, 21.375082, 22.159359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.652657, 21.149605, 22.278002> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051629, -0.408825, -0.911151,
		0.634870, -0.717713, 0.286058,
		-0.770892, -0.563693, 0.296606,
		20.421389, 20.980497, 22.366983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.090462, 20.598490, 21.939350>,  <20.961014, 21.375082, 22.159359>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.090462, 20.598490, 21.939350> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.696499, 20.651588, 21.983780>,  <20.460121, 20.683449, 22.010437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.696499, 20.651588, 21.983780>,  <21.090462, 20.598490, 21.939350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.696499, 20.651588, 21.983780> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154234, -0.381819, -0.911277,
		-0.078559, -0.914654, 0.396530,
		-0.984906, 0.132748, 0.111076,
		20.401028, 20.691414, 22.017103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.889130, 20.029905, 21.641306>,  <21.090462, 20.598490, 21.939350>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.889130, 20.029905, 21.641306> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.571686, 20.272987, 21.653160>,  <20.381220, 20.418837, 21.660273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.571686, 20.272987, 21.653160>,  <20.889130, 20.029905, 21.641306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.571686, 20.272987, 21.653160> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249437, -0.280542, -0.926864,
		-0.554944, -0.742962, 0.374225,
		-0.793611, 0.607704, 0.029637,
		20.333603, 20.455297, 21.662052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.384403, 19.674566, 21.340055>,  <20.889130, 20.029905, 21.641306>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.384403, 19.674566, 21.340055> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.222511, 20.039509, 21.315392>,  <20.125376, 20.258474, 21.300592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.222511, 20.039509, 21.315392>,  <20.384403, 19.674566, 21.340055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.222511, 20.039509, 21.315392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356885, -0.219680, -0.907950,
		-0.841918, -0.345469, 0.414517,
		-0.404730, 0.912355, -0.061660,
		20.101091, 20.313215, 21.296894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.577898, 19.551970, 21.190731>,  <20.384403, 19.674566, 21.340055>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.577898, 19.551970, 21.190731> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.701031, 19.913048, 21.070477>,  <19.774910, 20.129694, 20.998323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.701031, 19.913048, 21.070477>,  <19.577898, 19.551970, 21.190731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.701031, 19.913048, 21.070477> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547810, -0.090189, -0.831727,
		-0.777910, 0.420723, 0.466742,
		0.307832, 0.902695, -0.300636,
		19.793381, 20.183857, 20.980286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.021229, 19.908401, 20.901552>,  <19.577898, 19.551970, 21.190731>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.021229, 19.908401, 20.901552> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.338226, 20.054092, 20.705881>,  <19.528425, 20.141506, 20.588478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.338226, 20.054092, 20.705881>,  <19.021229, 19.908401, 20.901552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.338226, 20.054092, 20.705881> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445347, -0.202392, -0.872183,
		-0.416678, 0.909052, 0.001813,
		0.792493, 0.364227, -0.489177,
		19.575974, 20.163361, 20.559128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.733847, 20.162285, 20.341208>,  <19.021229, 19.908401, 20.901552>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.733847, 20.162285, 20.341208> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.111927, 20.156013, 20.210766>,  <19.338776, 20.152250, 20.132500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.111927, 20.156013, 20.210766>,  <18.733847, 20.162285, 20.341208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.111927, 20.156013, 20.210766> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324641, -0.151078, -0.933693,
		-0.034629, 0.988398, -0.147889,
		0.945203, -0.015678, -0.326106,
		19.395489, 20.151310, 20.112934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.760351, 20.552599, 19.755730>,  <18.733847, 20.162285, 20.341208>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.760351, 20.552599, 19.755730> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.075058, 20.309273, 19.713875>,  <19.263882, 20.163277, 19.688761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.075058, 20.309273, 19.713875>,  <18.760351, 20.552599, 19.755730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.075058, 20.309273, 19.713875> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230366, -0.132105, -0.964095,
		0.572652, 0.782623, -0.244071,
		0.786767, -0.608317, -0.104639,
		19.311089, 20.126778, 19.682484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.092182, 20.716446, 19.060907>,  <18.760351, 20.552599, 19.755730>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.092182, 20.716446, 19.060907> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.259182, 20.361389, 19.138662>,  <19.359383, 20.148355, 19.185316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.259182, 20.361389, 19.138662>,  <19.092182, 20.716446, 19.060907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.259182, 20.361389, 19.138662> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043308, -0.194245, -0.979996,
		0.907645, 0.417566, -0.042655,
		0.417499, -0.887641, 0.194390,
		19.384432, 20.095097, 19.196980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.603838, 20.689833, 18.539417>,  <19.092182, 20.716446, 19.060907>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.603838, 20.689833, 18.539417> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.527412, 20.311752, 18.645315>,  <19.481558, 20.084904, 18.708855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.527412, 20.311752, 18.645315>,  <19.603838, 20.689833, 18.539417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.527412, 20.311752, 18.645315> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117084, -0.289736, -0.949918,
		0.974570, -0.150496, 0.166026,
		-0.191063, -0.945201, 0.264747,
		19.470093, 20.028193, 18.724739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.076788, 20.175179, 18.238808>,  <19.603838, 20.689833, 18.539417>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.076788, 20.175179, 18.238808> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.750290, 19.961433, 18.326628>,  <19.554392, 19.833187, 18.379320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.750290, 19.961433, 18.326628>,  <20.076788, 20.175179, 18.238808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.750290, 19.961433, 18.326628> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081428, -0.482658, -0.872015,
		0.571940, -0.693900, 0.437479,
		-0.816244, -0.534364, 0.219549,
		19.505417, 19.801125, 18.392492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.234175, 19.538528, 17.867901>,  <20.076788, 20.175179, 18.238808>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.234175, 19.538528, 17.867901> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.840878, 19.519382, 17.938259>,  <19.604898, 19.507895, 17.980474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.840878, 19.519382, 17.938259>,  <20.234175, 19.538528, 17.867901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.840878, 19.519382, 17.938259> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137318, -0.440143, -0.887366,
		0.119893, -0.896651, 0.426195,
		-0.983244, -0.047865, 0.175896,
		19.545904, 19.505022, 17.991028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.064779, 18.836788, 17.779451>,  <20.234175, 19.538528, 17.867901>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.064779, 18.836788, 17.779451> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.704899, 19.007053, 17.740774>,  <19.488972, 19.109213, 17.717567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.704899, 19.007053, 17.740774>,  <20.064779, 18.836788, 17.779451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.704899, 19.007053, 17.740774> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129483, -0.471795, -0.872149,
		-0.416862, -0.772153, 0.479590,
		-0.899700, 0.425664, -0.096693,
		19.434988, 19.134752, 17.711765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.603233, 18.309151, 17.455435>,  <20.064779, 18.836788, 17.779451>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.603233, 18.309151, 17.455435> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.435596, 18.667381, 17.395689>,  <19.335014, 18.882318, 17.359842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.435596, 18.667381, 17.395689>,  <19.603233, 18.309151, 17.455435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.435596, 18.667381, 17.395689> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150933, -0.230936, -0.961191,
		-0.895312, -0.380282, 0.231955,
		-0.419091, 0.895575, -0.149362,
		19.309870, 18.936054, 17.350880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<15.866470, 15.717634, 14.555757> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.112499, 15.999760, 14.414778>,  <16.260117, 16.169035, 14.330191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.112499, 15.999760, 14.414778>,  <15.866470, 15.717634, 14.555757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.112499, 15.999760, 14.414778> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303752, -0.200538, -0.931407,
		-0.727614, 0.679938, 0.090895,
		0.615072, 0.705314, -0.352447,
		16.297020, 16.211353, 14.309044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.480847, 16.012819, 14.095415>,  <15.866470, 15.717634, 14.555757>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.480847, 16.012819, 14.095415> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.844386, 16.130699, 13.977331>,  <16.062510, 16.201427, 13.906481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.844386, 16.130699, 13.977331>,  <15.480847, 16.012819, 14.095415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.844386, 16.130699, 13.977331> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246614, -0.191168, -0.950072,
		-0.336422, 0.936273, -0.101065,
		0.908846, 0.294701, -0.295211,
		16.117041, 16.219109, 13.888768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.319930, 16.365101, 13.490894>,  <15.480847, 16.012819, 14.095415>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.319930, 16.365101, 13.490894> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.713946, 16.297169, 13.479200>,  <15.950356, 16.256411, 13.472184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.713946, 16.297169, 13.479200>,  <15.319930, 16.365101, 13.490894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.713946, 16.297169, 13.479200> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040122, -0.061029, -0.997329,
		0.167591, 0.983582, -0.066930,
		0.985040, -0.169828, -0.029235,
		16.009459, 16.246220, 13.470429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.571010, 16.923203, 13.144234>,  <15.319930, 16.365101, 13.490894>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.571010, 16.923203, 13.144234> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.844708, 16.637543, 13.085182>,  <16.008928, 16.466146, 13.049751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.844708, 16.637543, 13.085182>,  <15.571010, 16.923203, 13.144234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.844708, 16.637543, 13.085182> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208308, 0.002597, -0.978060,
		0.698866, 0.699987, -0.146987,
		0.684247, -0.714151, -0.147628,
		16.049982, 16.423298, 13.040894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.944067, 17.131001, 12.686483>,  <15.571010, 16.923203, 13.144234>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.944067, 17.131001, 12.686483> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.055054, 16.747387, 12.663637>,  <16.121645, 16.517218, 12.649929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.055054, 16.747387, 12.663637>,  <15.944067, 17.131001, 12.686483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.055054, 16.747387, 12.663637> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050665, 0.073974, -0.995972,
		0.959398, 0.273455, 0.069115,
		0.277466, -0.959036, -0.057116,
		16.138294, 16.459677, 12.646502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.353807, 17.158363, 12.144769>,  <15.944067, 17.131001, 12.686483>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.353807, 17.158363, 12.144769> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.224571, 16.782372, 12.188677>,  <16.147030, 16.556776, 12.215022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.224571, 16.782372, 12.188677>,  <16.353807, 17.158363, 12.144769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.224571, 16.782372, 12.188677> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113376, -0.076712, -0.990586,
		0.939552, -0.332495, -0.081786,
		-0.323091, -0.939980, 0.109771,
		16.127644, 16.500378, 12.221608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.530022, 16.859293, 11.557728>,  <16.353807, 17.158363, 12.144769>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.530022, 16.859293, 11.557728> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.232506, 16.618912, 11.674782>,  <16.053997, 16.474684, 11.745014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.232506, 16.618912, 11.674782>,  <16.530022, 16.859293, 11.557728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.232506, 16.618912, 11.674782> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253086, -0.152006, -0.955427,
		0.618649, -0.784697, -0.039032,
		-0.743788, -0.600953, 0.292634,
		16.009369, 16.438625, 11.762572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.530472, 16.259665, 11.078115>,  <16.530022, 16.859293, 11.557728>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.530472, 16.259665, 11.078115> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.167385, 16.283043, 11.244312>,  <15.949533, 16.297070, 11.344030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.167385, 16.283043, 11.244312>,  <16.530472, 16.259665, 11.078115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.167385, 16.283043, 11.244312> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414324, -0.281122, -0.865624,
		0.066213, -0.957891, 0.279395,
		-0.907718, 0.058444, 0.415492,
		15.895070, 16.300577, 11.368959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.164181, 15.656204, 10.857635>,  <16.530472, 16.259665, 11.078115>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.164181, 15.656204, 10.857635> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.875768, 15.916279, 10.953445>,  <15.702721, 16.072323, 11.010932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.875768, 15.916279, 10.953445>,  <16.164181, 15.656204, 10.857635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.875768, 15.916279, 10.953445> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526264, -0.288997, -0.799704,
		-0.450734, -0.702666, 0.550545,
		-0.721031, 0.650186, 0.239527,
		15.659458, 16.111334, 11.025303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.487114, 15.411992, 10.550484>,  <16.164181, 15.656204, 10.857635>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.487114, 15.411992, 10.550484> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.393815, 15.792881, 10.629344>,  <15.337835, 16.021414, 10.676660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.393815, 15.792881, 10.629344>,  <15.487114, 15.411992, 10.550484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.393815, 15.792881, 10.629344> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610049, 0.014593, -0.792230,
		-0.757256, -0.305056, 0.577498,
		-0.233247, 0.952222, 0.197150,
		15.323841, 16.078548, 10.688489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.824658, 15.376378, 10.537117>,  <15.487114, 15.411992, 10.550484>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.824658, 15.376378, 10.537117> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.891625, 15.769245, 10.502898>,  <14.931806, 16.004965, 10.482367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.891625, 15.769245, 10.502898>,  <14.824658, 15.376378, 10.537117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.891625, 15.769245, 10.502898> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699543, 0.057201, -0.712298,
		-0.694702, 0.179095, 0.696645,
		0.167418, 0.982168, -0.085547,
		14.941851, 16.063896, 10.477234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.184254, 15.682261, 10.594241>,  <14.824658, 15.376378, 10.537117>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.184254, 15.682261, 10.594241> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.424617, 15.930492, 10.392731>,  <14.568835, 16.079432, 10.271825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.424617, 15.930492, 10.392731>,  <14.184254, 15.682261, 10.594241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.424617, 15.930492, 10.392731> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725609, 0.159164, -0.669446,
		-0.335261, 0.767820, 0.545941,
		0.600909, 0.620579, -0.503776,
		14.604890, 16.116667, 10.241598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.765560, 16.278900, 10.620870>,  <14.184254, 15.682261, 10.594241>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.765560, 16.278900, 10.620870> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.029275, 16.257118, 10.320903>,  <14.187504, 16.244049, 10.140923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.029275, 16.257118, 10.320903>,  <13.765560, 16.278900, 10.620870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.029275, 16.257118, 10.320903> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738059, 0.143556, -0.659288,
		0.143556, 0.988143, 0.054454,
		0.659288, -0.054454, -0.749916,
		14.227061, 16.240782, 10.095928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.697918, 16.758909, 10.217714>,  <13.765560, 16.278900, 10.620870>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.697918, 16.758909, 10.217714> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.874894, 16.533527, 9.938641>,  <13.981080, 16.398298, 9.771196>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.874894, 16.533527, 9.938641>,  <13.697918, 16.758909, 10.217714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.874894, 16.533527, 9.938641> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605802, 0.385851, -0.695789,
		0.661248, 0.730505, -0.170625,
		0.442442, -0.563454, -0.697685,
		14.007627, 16.364491, 9.729335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.708148, 16.894281, 9.359742>,  <13.697918, 16.758909, 10.217714>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.708148, 16.894281, 9.359742> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.313575, 16.959946, 9.359862>,  <13.076831, 16.999344, 9.359935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.313575, 16.959946, 9.359862>,  <13.708148, 16.894281, 9.359742>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.313575, 16.959946, 9.359862> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124868, 0.749126, 0.650552,
		0.106571, 0.641764, -0.759461,
		-0.986433, 0.164162, 0.000300,
		13.017645, 17.009193, 9.359952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.542826, 17.662458, 9.278384>,  <13.708148, 16.894281, 9.359742>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.542826, 17.662458, 9.278384> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.238763, 17.500198, 9.481404>,  <13.056325, 17.402842, 9.603216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.238763, 17.500198, 9.481404>,  <13.542826, 17.662458, 9.278384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.238763, 17.500198, 9.481404> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039866, 0.750570, 0.659588,
		-0.648515, 0.521624, -0.554379,
		-0.760157, -0.405651, 0.507551,
		13.010715, 17.378504, 9.633670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.002415, 18.128641, 9.474216>,  <13.542826, 17.662458, 9.278384>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.002415, 18.128641, 9.474216> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.934669, 17.850227, 9.753315>,  <12.894021, 17.683180, 9.920774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.934669, 17.850227, 9.753315>,  <13.002415, 18.128641, 9.474216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.934669, 17.850227, 9.753315> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049882, 0.701015, 0.711400,
		-0.984290, 0.155292, -0.084009,
		-0.169367, -0.696033, 0.697749,
		12.883859, 17.641417, 9.962640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.680951, 18.475561, 9.907258>,  <13.002415, 18.128641, 9.474216>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.680951, 18.475561, 9.907258> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.727147, 18.149120, 10.133759>,  <12.754865, 17.953257, 10.269660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.727147, 18.149120, 10.133759>,  <12.680951, 18.475561, 9.907258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.727147, 18.149120, 10.133759> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076370, 0.575676, 0.814104,
		-0.990368, -0.050776, 0.128811,
		0.115490, -0.816100, 0.566254,
		12.761794, 17.904291, 10.303636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.207337, 18.595863, 10.481639>,  <12.680951, 18.475561, 9.907258>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.207337, 18.595863, 10.481639> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.521344, 18.361942, 10.563376>,  <12.709748, 18.221590, 10.612419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.521344, 18.361942, 10.563376>,  <12.207337, 18.595863, 10.481639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.521344, 18.361942, 10.563376> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152417, 0.502060, 0.851296,
		-0.600432, -0.637136, 0.483259,
		0.785017, -0.584802, 0.204343,
		12.756849, 18.186502, 10.624680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.129450, 18.411926, 11.129206>,  <12.207337, 18.595863, 10.481639>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.129450, 18.411926, 11.129206> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.513450, 18.299995, 11.125311>,  <12.743850, 18.232836, 11.122974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.513450, 18.299995, 11.125311>,  <12.129450, 18.411926, 11.129206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.513450, 18.299995, 11.125311> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092387, 0.283739, 0.954441,
		-0.264317, -0.917163, 0.298242,
		0.960001, -0.279829, -0.009736,
		12.801450, 18.216047, 11.122390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.223138, 18.032619, 11.777261>,  <12.129450, 18.411926, 11.129206>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.223138, 18.032619, 11.777261> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.584575, 18.138786, 11.642754>,  <12.801436, 18.202486, 11.562049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.584575, 18.138786, 11.642754>,  <12.223138, 18.032619, 11.777261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.584575, 18.138786, 11.642754> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250910, 0.308335, 0.917591,
		0.347232, -0.913499, 0.212011,
		0.903590, 0.265421, -0.336270,
		12.855652, 18.218410, 11.541873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.671386, 17.778913, 12.355174>,  <12.223138, 18.032619, 11.777261>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.671386, 17.778913, 12.355174> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.905984, 18.029793, 12.150178>,  <13.046742, 18.180321, 12.027181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.905984, 18.029793, 12.150178>,  <12.671386, 17.778913, 12.355174>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.905984, 18.029793, 12.150178> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271859, 0.443595, 0.854000,
		0.762966, -0.640192, 0.089657,
		0.586495, 0.627198, -0.512490,
		13.081932, 18.217953, 11.996431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.347531, 17.778185, 12.655855>,  <12.671386, 17.778913, 12.355174>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.347531, 17.778185, 12.655855> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.344588, 18.138706, 12.482605>,  <13.342823, 18.355019, 12.378654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.344588, 18.138706, 12.482605>,  <13.347531, 17.778185, 12.655855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.344588, 18.138706, 12.482605> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402288, 0.399209, 0.823891,
		0.915484, -0.168179, -0.365520,
		-0.007357, 0.901304, -0.433126,
		13.342381, 18.409098, 12.352667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.010379, 18.009743, 12.763489>,  <13.347531, 17.778185, 12.655855>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.010379, 18.009743, 12.763489> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.812724, 18.336929, 12.645669>,  <13.694131, 18.533241, 12.574977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.812724, 18.336929, 12.645669>,  <14.010379, 18.009743, 12.763489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.812724, 18.336929, 12.645669> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403772, 0.515968, 0.755477,
		0.769933, 0.254379, -0.585231,
		-0.494137, 0.817966, -0.294549,
		13.664483, 18.582319, 12.557304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.425531, 18.560944, 12.739075>,  <14.010379, 18.009743, 12.763489>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.425531, 18.560944, 12.739075> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.068551, 18.739933, 12.762040>,  <13.854362, 18.847326, 12.775819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.068551, 18.739933, 12.762040>,  <14.425531, 18.560944, 12.739075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.068551, 18.739933, 12.762040> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334415, 0.570741, 0.749947,
		0.302815, 0.688491, -0.659001,
		-0.892452, 0.447475, 0.057413,
		13.800816, 18.874176, 12.779263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.647627, 19.299549, 12.915939>,  <14.425531, 18.560944, 12.739075>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.647627, 19.299549, 12.915939> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.259795, 19.226089, 12.980673>,  <14.027097, 19.182014, 13.019513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.259795, 19.226089, 12.980673>,  <14.647627, 19.299549, 12.915939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.259795, 19.226089, 12.980673> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032566, 0.558485, 0.828875,
		-0.242605, 0.808930, -0.535514,
		-0.969579, -0.183649, 0.161835,
		13.968922, 19.170994, 13.029223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.432578, 19.921505, 13.166245>,  <14.647627, 19.299549, 12.915939>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.432578, 19.921505, 13.166245> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.186107, 19.631420, 13.289139>,  <14.038224, 19.457369, 13.362875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.186107, 19.631420, 13.289139>,  <14.432578, 19.921505, 13.166245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.186107, 19.631420, 13.289139> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090442, 0.322353, 0.942289,
		-0.782397, 0.608404, -0.133037,
		-0.616177, -0.725212, 0.307234,
		14.001253, 19.413857, 13.381309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.018225, 20.255589, 13.663272>,  <14.432578, 19.921505, 13.166245>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.018225, 20.255589, 13.663272> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.003440, 19.860764, 13.725676>,  <13.994569, 19.623869, 13.763118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.003440, 19.860764, 13.725676>,  <14.018225, 20.255589, 13.663272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.003440, 19.860764, 13.725676> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231276, 0.143427, 0.962258,
		-0.972186, 0.071648, 0.222983,
		-0.036962, -0.987064, 0.156008,
		13.992352, 19.564644, 13.772478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.604618, 20.872475, 13.778912>,  <14.018225, 20.255589, 13.663272>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.604618, 20.872475, 13.778912> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.791532, 21.194450, 13.632641>,  <13.903680, 21.387636, 13.544878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.791532, 21.194450, 13.632641>,  <13.604618, 20.872475, 13.778912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.791532, 21.194450, 13.632641> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199061, -0.307203, -0.930592,
		-0.861406, 0.507643, 0.016681,
		0.467284, 0.804938, -0.365678,
		13.931717, 21.435932, 13.522938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.199879, 21.045584, 13.122073>,  <13.604618, 20.872475, 13.778912>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.199879, 21.045584, 13.122073> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.531947, 21.258476, 13.055689>,  <13.731189, 21.386211, 13.015858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.531947, 21.258476, 13.055689>,  <13.199879, 21.045584, 13.122073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.531947, 21.258476, 13.055689> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156680, -0.062954, -0.985641,
		-0.535039, 0.844254, 0.031128,
		0.830172, 0.532233, -0.165961,
		13.780998, 21.418146, 13.005900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.021077, 21.672113, 12.746390>,  <13.199879, 21.045584, 13.122073>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.021077, 21.672113, 12.746390> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.414029, 21.652962, 12.674128>,  <13.649800, 21.641470, 12.630770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.414029, 21.652962, 12.674128>,  <13.021077, 21.672113, 12.746390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.414029, 21.652962, 12.674128> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174521, 0.110850, -0.978394,
		0.066870, 0.992683, 0.100541,
		0.982380, -0.047879, -0.180657,
		13.708743, 21.638597, 12.619930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.221261, 22.254021, 12.332808>,  <13.021077, 21.672113, 12.746390>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.221261, 22.254021, 12.332808> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.485476, 21.963943, 12.255056>,  <13.644006, 21.789896, 12.208405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.485476, 21.963943, 12.255056>,  <13.221261, 22.254021, 12.332808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.485476, 21.963943, 12.255056> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080479, 0.189015, -0.978671,
		0.746467, 0.662092, 0.066488,
		0.660538, -0.725195, -0.194378,
		13.683638, 21.746386, 12.196743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.606260, 22.540209, 11.883180>,  <13.221261, 22.254021, 12.332808>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.606260, 22.540209, 11.883180> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.701732, 22.154678, 11.835737>,  <13.759015, 21.923359, 11.807272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.701732, 22.154678, 11.835737>,  <13.606260, 22.540209, 11.883180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.701732, 22.154678, 11.835737> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050868, 0.134378, -0.989624,
		0.969765, 0.230170, 0.081102,
		0.238680, -0.963828, -0.118606,
		13.773335, 21.865530, 11.800156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.188773, 22.518208, 11.427473>,  <13.606260, 22.540209, 11.883180>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.188773, 22.518208, 11.427473> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.985227, 22.174145, 11.413721>,  <13.863099, 21.967707, 11.405470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.985227, 22.174145, 11.413721>,  <14.188773, 22.518208, 11.427473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.985227, 22.174145, 11.413721> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094474, 0.095496, -0.990937,
		0.855646, -0.501005, -0.129857,
		-0.508865, -0.860160, -0.034379,
		13.832567, 21.916098, 11.403407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.436325, 22.224741, 10.745815>,  <14.188773, 22.518208, 11.427473>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.436325, 22.224741, 10.745815> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.099420, 22.030731, 10.839918>,  <13.897276, 21.914326, 10.896379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.099420, 22.030731, 10.839918>,  <14.436325, 22.224741, 10.745815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.099420, 22.030731, 10.839918> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129409, -0.241728, -0.961676,
		0.523303, -0.840428, 0.140832,
		-0.842263, -0.485023, 0.235256,
		13.846741, 21.885225, 10.910495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.440614, 21.598639, 10.312839>,  <14.436325, 22.224741, 10.745815>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.440614, 21.598639, 10.312839> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.063615, 21.655769, 10.433702>,  <13.837416, 21.690048, 10.506219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.063615, 21.655769, 10.433702>,  <14.440614, 21.598639, 10.312839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.063615, 21.655769, 10.433702> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334176, -0.416367, -0.845556,
		0.005039, -0.897908, 0.440154,
		-0.942497, 0.142828, 0.302158,
		13.780866, 21.698618, 10.524349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.135694, 20.925987, 10.230900>,  <14.440614, 21.598639, 10.312839>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.135694, 20.925987, 10.230900> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.870994, 21.224464, 10.201817>,  <13.712173, 21.403551, 10.184366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.870994, 21.224464, 10.201817>,  <14.135694, 20.925987, 10.230900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.870994, 21.224464, 10.201817> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270225, -0.327854, -0.905257,
		-0.699332, -0.579405, 0.418597,
		-0.661749, 0.746191, -0.072709,
		13.672469, 21.448322, 10.180004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.573303, 20.718063, 9.808478>,  <14.135694, 20.925987, 10.230900>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.573303, 20.718063, 9.808478> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.514022, 21.113453, 9.820837>,  <13.478453, 21.350687, 9.828253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.514022, 21.113453, 9.820837>,  <13.573303, 20.718063, 9.808478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.514022, 21.113453, 9.820837> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185801, 0.002856, -0.982583,
		-0.971346, -0.151363, 0.183236,
		-0.148203, 0.988474, 0.030897,
		13.469561, 21.409996, 9.830106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.144175, 20.763561, 9.223398>,  <13.573303, 20.718063, 9.808478>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.144175, 20.763561, 9.223398> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.267556, 21.131134, 9.321716>,  <13.341585, 21.351679, 9.380708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.267556, 21.131134, 9.321716>,  <13.144175, 20.763561, 9.223398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.267556, 21.131134, 9.321716> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087937, 0.284836, -0.954534,
		-0.947166, 0.272816, 0.168667,
		0.308455, 0.918934, 0.245796,
		13.360092, 21.406815, 9.395455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.688157, 21.224545, 8.900521>,  <13.144175, 20.763561, 9.223398>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.688157, 21.224545, 8.900521> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.021726, 21.437195, 8.959785>,  <13.221867, 21.564785, 8.995342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.021726, 21.437195, 8.959785>,  <12.688157, 21.224545, 8.900521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.021726, 21.437195, 8.959785> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076265, 0.154875, -0.984986,
		-0.546589, 0.832700, 0.088609,
		0.833921, 0.531625, 0.148159,
		13.271902, 21.596682, 9.004232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<13.218572, 22.117004, 17.153664> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.601678, 22.218349, 17.099266>,  <13.831541, 22.279156, 17.066628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.601678, 22.218349, 17.099266>,  <13.218572, 22.117004, 17.153664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.601678, 22.218349, 17.099266> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033958, -0.369971, -0.928422,
		-0.285539, 0.893829, -0.345742,
		0.957765, 0.253360, -0.135994,
		13.889008, 22.294357, 17.058468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.171061, 22.546574, 16.531088>,  <13.218572, 22.117004, 17.153664>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.171061, 22.546574, 16.531088> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.556214, 22.444218, 16.565435>,  <13.787307, 22.382803, 16.586044>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.556214, 22.444218, 16.565435>,  <13.171061, 22.546574, 16.531088>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.556214, 22.444218, 16.565435> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032027, -0.207569, -0.977696,
		0.268008, 0.944158, -0.191670,
		0.962884, -0.255892, 0.085868,
		13.845079, 22.367451, 16.591196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.442537, 22.946280, 16.027874>,  <13.171061, 22.546574, 16.531088>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.442537, 22.946280, 16.027874> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.680978, 22.637825, 16.117327>,  <13.824042, 22.452753, 16.171000>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.680978, 22.637825, 16.117327>,  <13.442537, 22.946280, 16.027874>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.680978, 22.637825, 16.117327> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152913, -0.164398, -0.974470,
		0.788213, 0.615080, 0.019919,
		0.596102, -0.771136, 0.223634,
		13.859809, 22.406485, 16.184418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.976232, 23.040520, 15.532344>,  <13.442537, 22.946280, 16.027874>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.976232, 23.040520, 15.532344> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.992417, 22.668716, 15.678974>,  <14.002129, 22.445635, 15.766953>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.992417, 22.668716, 15.678974>,  <13.976232, 23.040520, 15.532344>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.992417, 22.668716, 15.678974> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218368, -0.349780, -0.911027,
		0.975027, 0.116913, 0.188821,
		0.040465, -0.929508, 0.366575,
		14.004557, 22.389864, 15.788947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.606232, 22.707861, 15.264899>,  <13.976232, 23.040520, 15.532344>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.606232, 22.707861, 15.264899> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.355191, 22.412952, 15.364937>,  <14.204567, 22.236008, 15.424959>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.355191, 22.412952, 15.364937>,  <14.606232, 22.707861, 15.264899>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.355191, 22.412952, 15.364937> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137823, -0.421377, -0.896352,
		0.766238, -0.528083, 0.366070,
		-0.627602, -0.737272, 0.250093,
		14.166911, 22.191771, 15.439964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.989306, 22.301580, 15.005445>,  <14.606232, 22.707861, 15.264899>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.989306, 22.301580, 15.005445> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.615443, 22.159740, 15.015821>,  <14.391126, 22.074636, 15.022048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.615443, 22.159740, 15.015821>,  <14.989306, 22.301580, 15.005445>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.615443, 22.159740, 15.015821> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133822, -0.418450, -0.898327,
		0.329402, -0.836157, 0.438560,
		-0.934658, -0.354600, 0.025942,
		14.335046, 22.053360, 15.023604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.089649, 21.704279, 14.661416>,  <14.989306, 22.301580, 15.005445>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.089649, 21.704279, 14.661416> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.698691, 21.788261, 14.671341>,  <14.464116, 21.838652, 14.677296>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.698691, 21.788261, 14.671341>,  <15.089649, 21.704279, 14.661416>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.698691, 21.788261, 14.671341> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116557, -0.437209, -0.891775,
		-0.176385, -0.874510, 0.451798,
		-0.977396, 0.209956, 0.024814,
		14.405473, 21.851248, 14.678785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.780661, 21.029774, 14.513493>,  <15.089649, 21.704279, 14.661416>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.780661, 21.029774, 14.513493> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.538449, 21.334370, 14.421003>,  <14.393123, 21.517128, 14.365509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.538449, 21.334370, 14.421003>,  <14.780661, 21.029774, 14.513493>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.538449, 21.334370, 14.421003> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091977, -0.355565, -0.930115,
		-0.790491, -0.541944, 0.285345,
		-0.605529, 0.761492, -0.231224,
		14.356791, 21.562817, 14.351636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.227695, 20.835045, 14.142648>,  <14.780661, 21.029774, 14.513493>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.227695, 20.835045, 14.142648> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.179297, 21.215546, 14.029171>,  <14.150259, 21.443846, 13.961085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.179297, 21.215546, 14.029171>,  <14.227695, 20.835045, 14.142648>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.179297, 21.215546, 14.029171> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252366, -0.305878, -0.918014,
		-0.960038, -0.039478, 0.277072,
		-0.120992, 0.951252, -0.283691,
		14.143000, 21.500921, 13.944063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.623843, 20.252157, 14.352203>,  <14.227695, 20.835045, 14.142648>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.623843, 20.252157, 14.352203> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.773494, 19.881702, 14.333033>,  <13.863284, 19.659430, 14.321530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.773494, 19.881702, 14.333033>,  <13.623843, 20.252157, 14.352203>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.773494, 19.881702, 14.333033> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185266, 0.024002, 0.982395,
		-0.908684, -0.376418, 0.180562,
		0.374125, -0.926139, -0.047927,
		13.885732, 19.603861, 14.318655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.257215, 19.957716, 14.907056>,  <13.623843, 20.252157, 14.352203>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.257215, 19.957716, 14.907056> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.592412, 19.766388, 14.802002>,  <13.793530, 19.651592, 14.738970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.592412, 19.766388, 14.802002>,  <13.257215, 19.957716, 14.907056>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.592412, 19.766388, 14.802002> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222004, -0.140823, 0.964823,
		-0.498478, -0.866822, -0.011820,
		0.837994, -0.478319, -0.262636,
		13.843810, 19.622892, 14.723211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.277555, 19.422510, 15.288043>,  <13.257215, 19.957716, 14.907056>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.277555, 19.422510, 15.288043> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.658046, 19.412365, 15.165062>,  <13.886340, 19.406279, 15.091273>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.658046, 19.412365, 15.165062>,  <13.277555, 19.422510, 15.288043>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.658046, 19.412365, 15.165062> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286102, -0.300262, 0.909939,
		-0.115393, -0.953519, -0.278361,
		0.951226, -0.025361, -0.307452,
		13.943414, 19.404757, 15.072826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.621097, 18.656643, 15.337444>,  <13.277555, 19.422510, 15.288043>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.621097, 18.656643, 15.337444> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.893165, 18.949699, 15.347294>,  <14.056406, 19.125532, 15.353204>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.893165, 18.949699, 15.347294>,  <13.621097, 18.656643, 15.337444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.893165, 18.949699, 15.347294> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350297, -0.354349, 0.867023,
		0.643941, -0.581098, -0.497660,
		0.680170, 0.732640, 0.024623,
		14.097216, 19.169491, 15.354681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.252687, 18.348398, 15.416480>,  <13.621097, 18.656643, 15.337444>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.252687, 18.348398, 15.416480> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.247745, 18.722874, 15.556993>,  <14.244779, 18.947559, 15.641302>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.247745, 18.722874, 15.556993>,  <14.252687, 18.348398, 15.416480>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.247745, 18.722874, 15.556993> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196041, -0.342224, 0.918940,
		0.980518, 0.080223, -0.179302,
		-0.012359, 0.936187, 0.351284,
		14.244037, 19.003731, 15.662378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.789044, 18.352367, 15.915974>,  <14.252687, 18.348398, 15.416480>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.789044, 18.352367, 15.915974> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.667298, 18.724396, 15.998274>,  <14.594251, 18.947613, 16.047653>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.667298, 18.724396, 15.998274>,  <14.789044, 18.352367, 15.915974>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.667298, 18.724396, 15.998274> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312520, -0.106541, 0.943917,
		0.899829, 0.351598, -0.258238,
		-0.304366, 0.930069, 0.205751,
		14.575989, 19.003416, 16.059999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.355232, 18.771013, 16.194481>,  <14.789044, 18.352367, 15.915974>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.355232, 18.771013, 16.194481> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.013865, 18.927513, 16.332237>,  <14.809046, 19.021414, 16.414890>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.013865, 18.927513, 16.332237>,  <15.355232, 18.771013, 16.194481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.013865, 18.927513, 16.332237> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339062, -0.085113, 0.936906,
		0.395877, 0.916340, -0.060021,
		-0.853416, 0.391250, 0.344391,
		14.757841, 19.044888, 16.435555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.567492, 19.318388, 16.737114>,  <15.355232, 18.771013, 16.194481>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.567492, 19.318388, 16.737114> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.182366, 19.224422, 16.790491>,  <14.951291, 19.168043, 16.822517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.182366, 19.224422, 16.790491>,  <15.567492, 19.318388, 16.737114>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.182366, 19.224422, 16.790491> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107239, 0.121049, 0.986837,
		-0.247973, 0.964450, -0.091356,
		-0.962813, -0.234912, 0.133443,
		14.893522, 19.153950, 16.830524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.387337, 19.668350, 17.366034>,  <15.567492, 19.318388, 16.737114>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.387337, 19.668350, 17.366034> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.086873, 19.404915, 17.384008>,  <14.906594, 19.246853, 17.394793>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.086873, 19.404915, 17.384008>,  <15.387337, 19.668350, 17.366034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.086873, 19.404915, 17.384008> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073575, -0.015881, 0.997163,
		-0.656007, 0.752335, 0.060385,
		-0.751160, -0.658589, 0.044935,
		14.861525, 19.207338, 17.397490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.126732, 19.859381, 17.943228>,  <15.387337, 19.668350, 17.366034>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.126732, 19.859381, 17.943228> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.938924, 19.509384, 17.896002>,  <14.826239, 19.299387, 17.867666>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.938924, 19.509384, 17.896002>,  <15.126732, 19.859381, 17.943228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.938924, 19.509384, 17.896002> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025649, -0.147183, 0.988777,
		-0.882548, 0.461223, 0.091548,
		-0.469521, -0.874992, -0.118066,
		14.798067, 19.246887, 17.860582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.515018, 19.805471, 18.374422>,  <15.126732, 19.859381, 17.943228>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.515018, 19.805471, 18.374422> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.661372, 19.441715, 18.295288>,  <14.749185, 19.223461, 18.247808>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.661372, 19.441715, 18.295288>,  <14.515018, 19.805471, 18.374422>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.661372, 19.441715, 18.295288> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110195, -0.168746, 0.979480,
		-0.924113, -0.380177, 0.038468,
		0.365885, -0.909390, -0.197834,
		14.771138, 19.168898, 18.235937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.927320, 19.361719, 18.714376>,  <14.515018, 19.805471, 18.374422>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.927320, 19.361719, 18.714376> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.259559, 19.145309, 18.661613>,  <14.458902, 19.015463, 18.629955>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.259559, 19.145309, 18.661613>,  <13.927320, 19.361719, 18.714376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.259559, 19.145309, 18.661613> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027670, -0.196487, 0.980116,
		-0.556185, -0.817732, -0.148231,
		0.830597, -0.541025, -0.131910,
		14.508738, 18.983002, 18.622040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.902425, 18.779999, 19.138271>,  <13.927320, 19.361719, 18.714376>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.902425, 18.779999, 19.138271> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.297647, 18.796215, 19.078796>,  <14.534780, 18.805944, 19.043112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.297647, 18.796215, 19.078796>,  <13.902425, 18.779999, 19.138271>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.297647, 18.796215, 19.078796> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154089, -0.276957, 0.948447,
		-0.002730, -0.960027, -0.279895,
		0.988053, 0.040540, -0.148686,
		14.594063, 18.808376, 19.034191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.154962, 18.181854, 19.497534>,  <13.902425, 18.779999, 19.138271>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.154962, 18.181854, 19.497534> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.462729, 18.431572, 19.443501>,  <14.647390, 18.581404, 19.411081>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.462729, 18.431572, 19.443501>,  <14.154962, 18.181854, 19.497534>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.462729, 18.431572, 19.443501> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254450, -0.105598, 0.961303,
		0.585874, -0.774018, -0.240101,
		0.769420, 0.624296, -0.135081,
		14.693556, 18.618860, 19.402977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<20.988520, 22.159445, 18.094355> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.598019, 22.245956, 18.099327>,  <20.363718, 22.297863, 18.102310>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.598019, 22.245956, 18.099327>,  <20.988520, 22.159445, 18.094355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.598019, 22.245956, 18.099327> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111829, -0.453969, -0.883972,
		-0.185541, -0.864370, 0.467375,
		-0.976252, 0.216279, 0.012432,
		20.305143, 22.310841, 18.103056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.670496, 21.544378, 18.036001>,  <20.988520, 22.159445, 18.094355>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.670496, 21.544378, 18.036001> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.396420, 21.801876, 17.899702>,  <20.231974, 21.956375, 17.817923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.396420, 21.801876, 17.899702>,  <20.670496, 21.544378, 18.036001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.396420, 21.801876, 17.899702> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173130, -0.598362, -0.782297,
		-0.707488, -0.477030, 0.521443,
		-0.685191, 0.643743, -0.340746,
		20.190863, 21.994999, 17.797478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.078262, 21.092947, 17.834660>,  <20.670496, 21.544378, 18.036001>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.078262, 21.092947, 17.834660> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.045013, 21.436779, 17.632982>,  <20.025064, 21.643078, 17.511974>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.045013, 21.436779, 17.632982>,  <20.078262, 21.092947, 17.834660>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.045013, 21.436779, 17.632982> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287119, -0.505149, -0.813872,
		-0.954282, 0.077115, 0.288790,
		-0.083120, 0.859580, -0.504196,
		20.020077, 21.694653, 17.481724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.395813, 21.030252, 17.534069>,  <20.078262, 21.092947, 17.834660>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.395813, 21.030252, 17.534069> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.618660, 21.286564, 17.322777>,  <19.752367, 21.440350, 17.196001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.618660, 21.286564, 17.322777>,  <19.395813, 21.030252, 17.534069>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.618660, 21.286564, 17.322777> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290859, -0.445233, -0.846858,
		-0.777833, 0.625439, -0.061671,
		0.557116, 0.640776, -0.528231,
		19.785795, 21.478796, 17.164307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.079744, 21.056551, 16.863514>,  <19.395813, 21.030252, 17.534069>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.079744, 21.056551, 16.863514> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.426758, 21.243450, 16.795315>,  <19.634966, 21.355589, 16.754396>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.426758, 21.243450, 16.795315>,  <19.079744, 21.056551, 16.863514>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.426758, 21.243450, 16.795315> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190383, -0.004735, -0.981699,
		-0.459504, 0.884114, 0.084848,
		0.867531, 0.467248, -0.170496,
		19.687017, 21.383625, 16.744165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.879755, 21.478369, 16.372650>,  <19.079744, 21.056551, 16.863514>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.879755, 21.478369, 16.372650> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.279171, 21.465473, 16.355299>,  <19.518820, 21.457737, 16.344889>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.279171, 21.465473, 16.355299>,  <18.879755, 21.478369, 16.372650>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.279171, 21.465473, 16.355299> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045305, -0.061597, -0.997072,
		0.029472, 0.997580, -0.062967,
		0.998538, -0.032238, -0.043380,
		19.578733, 21.455801, 16.342285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.026300, 21.945501, 15.892301>,  <18.879755, 21.478369, 16.372650>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.026300, 21.945501, 15.892301> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.359375, 21.724201, 15.901672>,  <19.559219, 21.591421, 15.907295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.359375, 21.724201, 15.901672>,  <19.026300, 21.945501, 15.892301>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.359375, 21.724201, 15.901672> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067701, -0.143704, -0.987302,
		0.549591, 0.820527, -0.157116,
		0.832686, -0.553249, 0.023428,
		19.609180, 21.558226, 15.908701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.486088, 22.216614, 15.407220>,  <19.026300, 21.945501, 15.892301>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.486088, 22.216614, 15.407220> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.592472, 21.836266, 15.470604>,  <19.656303, 21.608057, 15.508635>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.592472, 21.836266, 15.470604>,  <19.486088, 22.216614, 15.407220>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.592472, 21.836266, 15.470604> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004536, -0.163143, -0.986592,
		0.963973, 0.263115, -0.039077,
		0.265962, -0.950871, 0.158459,
		19.672260, 21.551004, 15.518142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.970676, 22.125172, 14.893309>,  <19.486088, 22.216614, 15.407220>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.970676, 22.125172, 14.893309> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.840458, 21.760281, 14.992796>,  <19.762327, 21.541346, 15.052488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.840458, 21.760281, 14.992796>,  <19.970676, 22.125172, 14.893309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.840458, 21.760281, 14.992796> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025756, -0.271507, -0.962092,
		0.945175, -0.306800, 0.111884,
		-0.325547, -0.912227, 0.248719,
		19.742794, 21.486612, 15.067411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.307602, 21.706167, 14.467856>,  <19.970676, 22.125172, 14.893309>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.307602, 21.706167, 14.467856> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.996983, 21.480442, 14.579943>,  <19.810610, 21.345007, 14.647195>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.996983, 21.480442, 14.579943>,  <20.307602, 21.706167, 14.467856>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.996983, 21.480442, 14.579943> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061039, -0.375275, -0.924901,
		0.627093, -0.735336, 0.256975,
		-0.776549, -0.564314, 0.280217,
		19.764017, 21.311148, 14.664007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.484446, 20.975559, 14.139858>,  <20.307602, 21.706167, 14.467856>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.484446, 20.975559, 14.139858> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.099354, 21.030087, 14.233303>,  <19.868299, 21.062803, 14.289370>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.099354, 21.030087, 14.233303>,  <20.484446, 20.975559, 14.139858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.099354, 21.030087, 14.233303> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266122, -0.323085, -0.908182,
		-0.048324, -0.936501, 0.347319,
		-0.962727, 0.136316, 0.233611,
		19.810535, 21.070982, 14.303387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.194891, 20.335939, 13.965532>,  <20.484446, 20.975559, 14.139858>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.194891, 20.335939, 13.965532> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.901119, 20.606934, 13.949419>,  <19.724855, 20.769531, 13.939751>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.901119, 20.606934, 13.949419>,  <20.194891, 20.335939, 13.965532>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.901119, 20.606934, 13.949419> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135346, -0.204369, -0.969492,
		-0.665052, -0.706572, 0.241790,
		-0.734430, 0.677488, -0.040284,
		19.680790, 20.810181, 13.937334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.592871, 20.052641, 13.690627>,  <20.194891, 20.335939, 13.965532>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.592871, 20.052641, 13.690627> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.487442, 20.435089, 13.639463>,  <19.424185, 20.664558, 13.608766>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.487442, 20.435089, 13.639463>,  <19.592871, 20.052641, 13.690627>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.487442, 20.435089, 13.639463> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426503, -0.234439, -0.873575,
		-0.865231, -0.175696, 0.469581,
		-0.263572, 0.956122, -0.127909,
		19.408371, 20.721926, 13.601090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.852997, 20.140314, 13.541641>,  <19.592871, 20.052641, 13.690627>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.852997, 20.140314, 13.541641> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.028454, 20.462788, 13.382814>,  <19.133728, 20.656271, 13.287519>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.028454, 20.462788, 13.382814>,  <18.852997, 20.140314, 13.541641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.028454, 20.462788, 13.382814> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326076, -0.268950, -0.906278,
		-0.837417, 0.527006, 0.144904,
		0.438642, 0.806183, -0.397067,
		19.160046, 20.704643, 13.263694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.149811, 19.736162, 13.428842>,  <18.852997, 20.140314, 13.541641>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.149811, 19.736162, 13.428842> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.278496, 19.357430, 13.427406>,  <18.355707, 19.130190, 13.426545>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.278496, 19.357430, 13.427406>,  <18.149811, 19.736162, 13.428842>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.278496, 19.357430, 13.427406> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054358, 0.014687, 0.998413,
		-0.945276, -0.321395, 0.056192,
		0.321711, -0.946831, -0.003587,
		18.375010, 19.073380, 13.426330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.781691, 19.434748, 13.943365>,  <18.149811, 19.736162, 13.428842>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.781691, 19.434748, 13.943365> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.109329, 19.209286, 13.900700>,  <18.305912, 19.074009, 13.875100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.109329, 19.209286, 13.900700>,  <17.781691, 19.434748, 13.943365>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.109329, 19.209286, 13.900700> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128386, -0.001099, 0.991724,
		-0.559106, -0.826011, 0.071465,
		0.819096, -0.563654, -0.106663,
		18.355059, 19.040190, 13.868701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.715895, 18.788256, 14.322516>,  <17.781691, 19.434748, 13.943365>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.715895, 18.788256, 14.322516> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.105118, 18.873474, 14.287258>,  <18.338652, 18.924604, 14.266103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.105118, 18.873474, 14.287258>,  <17.715895, 18.788256, 14.322516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.105118, 18.873474, 14.287258> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090310, -0.000426, 0.995914,
		0.212139, -0.977042, -0.019655,
		0.973058, 0.213047, -0.088146,
		18.397036, 18.937387, 14.260815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.043329, 18.307640, 14.720696>,  <17.715895, 18.788256, 14.322516>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.043329, 18.307640, 14.720696> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.344250, 18.567757, 14.678436>,  <18.524803, 18.723825, 14.653080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.344250, 18.567757, 14.678436>,  <18.043329, 18.307640, 14.720696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.344250, 18.567757, 14.678436> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298638, -0.193659, 0.934511,
		0.587243, -0.734588, -0.339892,
		0.752303, 0.650290, -0.105651,
		18.569941, 18.762844, 14.646741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.633631, 18.000633, 15.092356>,  <18.043329, 18.307640, 14.720696>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.633631, 18.000633, 15.092356> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.724209, 18.384628, 15.026455>,  <18.778555, 18.615026, 14.986915>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.724209, 18.384628, 15.026455>,  <18.633631, 18.000633, 15.092356>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.724209, 18.384628, 15.026455> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367554, 0.072422, 0.927178,
		0.902013, -0.270509, -0.336448,
		0.226444, 0.959990, -0.164752,
		18.792143, 18.672625, 14.977029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.213718, 18.077772, 15.527348>,  <18.633631, 18.000633, 15.092356>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.213718, 18.077772, 15.527348> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.107487, 18.456207, 15.453175>,  <19.043747, 18.683268, 15.408670>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.107487, 18.456207, 15.453175>,  <19.213718, 18.077772, 15.527348>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.107487, 18.456207, 15.453175> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264932, 0.256554, 0.929511,
		0.926972, 0.197734, -0.318785,
		-0.265581, 0.946087, -0.185432,
		19.027813, 18.740034, 15.397545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.800854, 18.455162, 15.713980>,  <19.213718, 18.077772, 15.527348>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.800854, 18.455162, 15.713980> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.473007, 18.684090, 15.724415>,  <19.276300, 18.821447, 15.730676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.473007, 18.684090, 15.724415>,  <19.800854, 18.455162, 15.713980>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.473007, 18.684090, 15.724415> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209483, 0.256995, 0.943435,
		0.533242, 0.778719, -0.330528,
		-0.819615, 0.572320, 0.026088,
		19.227123, 18.855785, 15.732241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.050201, 19.168255, 15.968108>,  <19.800854, 18.455162, 15.713980>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.050201, 19.168255, 15.968108> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.657692, 19.132072, 16.036129>,  <19.422186, 19.110363, 16.076941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.657692, 19.132072, 16.036129>,  <20.050201, 19.168255, 15.968108>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.657692, 19.132072, 16.036129> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130646, 0.336159, 0.932700,
		-0.141532, 0.937451, -0.318047,
		-0.981275, -0.090455, 0.170052,
		19.363310, 19.104937, 16.087145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.924524, 19.708618, 16.422569>,  <20.050201, 19.168255, 15.968108>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.924524, 19.708618, 16.422569> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.598625, 19.478085, 16.447950>,  <19.403086, 19.339766, 16.463179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.598625, 19.478085, 16.447950>,  <19.924524, 19.708618, 16.422569>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.598625, 19.478085, 16.447950> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026864, 0.071794, 0.997058,
		-0.579192, 0.814056, -0.043011,
		-0.814748, -0.576332, 0.063451,
		19.354200, 19.305185, 16.466986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.346092, 20.063208, 16.720661>,  <19.924524, 19.708618, 16.422569>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.346092, 20.063208, 16.720661> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.247791, 19.683872, 16.800922>,  <19.188810, 19.456272, 16.849079>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.247791, 19.683872, 16.800922>,  <19.346092, 20.063208, 16.720661>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.247791, 19.683872, 16.800922> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030670, 0.214507, 0.976241,
		-0.968848, 0.233758, -0.081801,
		-0.245751, -0.948338, 0.200655,
		19.174067, 19.399370, 16.861118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.846155, 20.119383, 17.198162>,  <19.346092, 20.063208, 16.720661>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.846155, 20.119383, 17.198162> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.987827, 19.747093, 17.234629>,  <19.072830, 19.523720, 17.256508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.987827, 19.747093, 17.234629>,  <18.846155, 20.119383, 17.198162>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.987827, 19.747093, 17.234629> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202289, 0.018929, 0.979143,
		-0.913037, -0.365233, -0.181571,
		0.354178, -0.930724, 0.091165,
		19.094080, 19.467876, 17.261978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.272955, 19.652254, 17.537212>,  <18.846155, 20.119383, 17.198162>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.272955, 19.652254, 17.537212> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.645332, 19.516678, 17.591558>,  <18.868759, 19.435331, 17.624166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.645332, 19.516678, 17.591558>,  <18.272955, 19.652254, 17.537212>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.645332, 19.516678, 17.591558> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178424, -0.097586, 0.979103,
		-0.318600, -0.935733, -0.151323,
		0.930945, -0.338941, 0.135867,
		18.924616, 19.414995, 17.632318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.251980, 19.510260, 18.244057>,  <18.272955, 19.652254, 17.537212>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.251980, 19.510260, 18.244057> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.642284, 19.494713, 18.157915>,  <18.876467, 19.485384, 18.106230>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.642284, 19.494713, 18.157915>,  <18.251980, 19.510260, 18.244057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.642284, 19.494713, 18.157915> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214691, -0.020571, 0.976465,
		-0.042395, -0.999032, -0.011725,
		0.975762, -0.038880, -0.215355,
		18.935013, 19.483053, 18.093309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.525995, 19.002960, 18.701073>,  <18.251980, 19.510260, 18.244057>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.525995, 19.002960, 18.701073> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.826176, 19.248764, 18.603748>,  <19.006285, 19.396246, 18.545355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.826176, 19.248764, 18.603748>,  <18.525995, 19.002960, 18.701073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.826176, 19.248764, 18.603748> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253940, 0.071787, 0.964552,
		0.610193, -0.785637, -0.102176,
		0.750453, 0.614509, -0.243309,
		19.051311, 19.433117, 18.530756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.655638, 18.240347, 18.919333>,  <18.525995, 19.002960, 18.701073>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.655638, 18.240347, 18.919333> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.317780, 18.087215, 19.069006>,  <18.115065, 17.995337, 19.158810>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.317780, 18.087215, 19.069006>,  <18.655638, 18.240347, 18.919333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.317780, 18.087215, 19.069006> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225634, -0.379271, -0.897354,
		0.485448, -0.842376, 0.233971,
		-0.844648, -0.382827, 0.374185,
		18.064384, 17.972368, 19.181261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.588484, 17.513023, 18.804773>,  <18.655638, 18.240347, 18.919333>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.588484, 17.513023, 18.804773> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.218918, 17.661469, 18.841991>,  <17.997179, 17.750536, 18.864323>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.218918, 17.661469, 18.841991>,  <18.588484, 17.513023, 18.804773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.218918, 17.661469, 18.841991> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208060, -0.283260, -0.936203,
		-0.321086, -0.884328, 0.338922,
		-0.923912, 0.371117, 0.093042,
		17.941744, 17.772802, 18.869905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.157482, 16.993935, 18.563711>,  <18.588484, 17.513023, 18.804773>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.157482, 16.993935, 18.563711> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.885349, 17.287086, 18.566149>,  <17.722069, 17.462976, 18.567612>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.885349, 17.287086, 18.566149>,  <18.157482, 16.993935, 18.563711>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.885349, 17.287086, 18.566149> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429016, -0.391485, -0.814055,
		-0.594217, -0.556443, 0.580756,
		-0.680332, 0.732879, 0.006096,
		17.681250, 17.506950, 18.567978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.405939, 16.705576, 18.584133>,  <18.157482, 16.993935, 18.563711>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.405939, 16.705576, 18.584133> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.404972, 17.075233, 18.431318>,  <17.404392, 17.297028, 18.339630>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.404972, 17.075233, 18.431318>,  <17.405939, 16.705576, 18.584133>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.404972, 17.075233, 18.431318> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520264, -0.327423, -0.788746,
		-0.854002, 0.196854, 0.481590,
		-0.002416, 0.924145, -0.382036,
		17.404247, 17.352476, 18.316708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.660854, 16.962509, 18.465448>,  <17.405939, 16.705576, 18.584133>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.660854, 16.962509, 18.465448> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.912338, 17.164593, 18.228979>,  <17.063229, 17.285843, 18.087097>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.912338, 17.164593, 18.228979>,  <16.660854, 16.962509, 18.465448>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.912338, 17.164593, 18.228979> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524386, -0.285929, -0.802037,
		-0.574230, 0.814253, 0.085158,
		0.628712, 0.505210, -0.591172,
		17.100952, 17.316156, 18.051628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.343306, 17.159374, 17.862175>,  <16.660854, 16.962509, 18.465448>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.343306, 17.159374, 17.862175> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.713440, 17.212517, 17.720133>,  <16.935520, 17.244402, 17.634907>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.713440, 17.212517, 17.720133>,  <16.343306, 17.159374, 17.862175>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.713440, 17.212517, 17.720133> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300475, -0.314219, -0.900545,
		-0.231225, 0.940008, -0.250838,
		0.925338, 0.132858, -0.355105,
		16.991041, 17.252375, 17.613602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.229877, 17.313828, 17.188906>,  <16.343306, 17.159374, 17.862175>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.229877, 17.313828, 17.188906> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.623405, 17.244556, 17.170547>,  <16.859522, 17.202993, 17.159533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.623405, 17.244556, 17.170547>,  <16.229877, 17.313828, 17.188906>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.623405, 17.244556, 17.170547> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068203, -0.125131, -0.989793,
		0.165666, 0.976909, -0.134917,
		0.983821, -0.173177, -0.045898,
		16.918552, 17.192604, 17.156778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.494017, 17.696339, 16.580826>,  <16.229877, 17.313828, 17.188906>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.494017, 17.696339, 16.580826> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.750111, 17.404800, 16.677887>,  <16.903767, 17.229877, 16.736124>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.750111, 17.404800, 16.677887>,  <16.494017, 17.696339, 16.580826>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.750111, 17.404800, 16.677887> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121835, -0.215536, -0.968866,
		0.758455, 0.649866, -0.049195,
		0.640236, -0.728847, 0.242651,
		16.942181, 17.186146, 16.750683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.057796, 17.862247, 16.085930>,  <16.494017, 17.696339, 16.580826>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.057796, 17.862247, 16.085930> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.042751, 17.487728, 16.225605>,  <17.033724, 17.263018, 16.309410>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.042751, 17.487728, 16.225605>,  <17.057796, 17.862247, 16.085930>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.042751, 17.487728, 16.225605> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014546, -0.348886, -0.937052,
		0.999186, -0.040325, -0.000496,
		-0.037614, -0.936297, 0.349189,
		17.031467, 17.206839, 16.330362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.484362, 17.542725, 15.659111>,  <17.057796, 17.862247, 16.085930>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.484362, 17.542725, 15.659111> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.244553, 17.258957, 15.807323>,  <17.100666, 17.088696, 15.896251>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.244553, 17.258957, 15.807323>,  <17.484362, 17.542725, 15.659111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.244553, 17.258957, 15.807323> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016630, -0.473900, -0.880422,
		0.800185, -0.521671, 0.295912,
		-0.599523, -0.709421, 0.370532,
		17.064695, 17.046131, 15.918483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.779392, 16.970289, 15.406991>,  <17.484362, 17.542725, 15.659111>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.779392, 16.970289, 15.406991> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.398708, 16.908459, 15.513088>,  <17.170298, 16.871361, 15.576747>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.398708, 16.908459, 15.513088>,  <17.779392, 16.970289, 15.406991>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.398708, 16.908459, 15.513088> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165391, -0.469733, -0.867178,
		0.258638, -0.869171, 0.421484,
		-0.951710, -0.154575, 0.265243,
		17.113195, 16.862085, 15.592661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.715837, 16.261215, 15.157533>,  <17.779392, 16.970289, 15.406991>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.715837, 16.261215, 15.157533> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.342606, 16.392803, 15.215696>,  <17.118668, 16.471756, 15.250595>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.342606, 16.392803, 15.215696>,  <17.715837, 16.261215, 15.157533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.342606, 16.392803, 15.215696> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283150, -0.422554, -0.860973,
		-0.221788, -0.844529, 0.487423,
		-0.933079, 0.328967, 0.145410,
		17.062681, 16.491493, 15.259319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.294434, 15.730022, 14.889175>,  <17.715837, 16.261215, 15.157533>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.294434, 15.730022, 14.889175> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.058159, 16.052673, 14.897556>,  <16.916393, 16.246264, 14.902585>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.058159, 16.052673, 14.897556>,  <17.294434, 15.730022, 14.889175>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.058159, 16.052673, 14.897556> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430034, -0.292728, -0.854038,
		-0.682758, -0.513480, 0.519788,
		-0.590688, 0.806628, 0.020952,
		16.880953, 16.294662, 14.903842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.599781, 15.598671, 14.991765>,  <17.294434, 15.730022, 14.889175>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.599781, 15.598671, 14.991765> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.613106, 15.948452, 14.798180>,  <16.621101, 16.158321, 14.682029>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.613106, 15.948452, 14.798180>,  <16.599781, 15.598671, 14.991765>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.613106, 15.948452, 14.798180> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554123, -0.386833, -0.737095,
		-0.831768, 0.292731, 0.471668,
		0.033314, 0.874454, -0.483964,
		16.623100, 16.210789, 14.652990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<14.601806, 17.986303, 20.139656> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.761724, 18.309525, 19.966581>,  <14.857674, 18.503456, 19.862736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.761724, 18.309525, 19.966581>,  <14.601806, 17.986303, 20.139656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.761724, 18.309525, 19.966581> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378067, 0.284658, 0.880929,
		0.835003, -0.515774, -0.191693,
		0.399794, 0.808052, -0.432687,
		14.881661, 18.551941, 19.836775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.329235, 17.998951, 20.280512>,  <14.601806, 17.986303, 20.139656>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.329235, 17.998951, 20.280512> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.174607, 18.366585, 20.249937>,  <15.081830, 18.587166, 20.231592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.174607, 18.366585, 20.249937>,  <15.329235, 17.998951, 20.280512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.174607, 18.366585, 20.249937> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335878, 0.217490, 0.916452,
		0.858923, 0.328600, -0.392776,
		-0.386571, 0.919087, -0.076437,
		15.058636, 18.642311, 20.227005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.787305, 18.420767, 20.597799>,  <15.329235, 17.998951, 20.280512>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.787305, 18.420767, 20.597799> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.443004, 18.624344, 20.594208>,  <15.236423, 18.746490, 20.592052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.443004, 18.624344, 20.594208>,  <15.787305, 18.420767, 20.597799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.443004, 18.624344, 20.594208> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193040, 0.342701, 0.919397,
		0.470997, 0.789641, -0.393228,
		-0.860754, 0.508942, -0.008979,
		15.184777, 18.777027, 20.591515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.909945, 19.068623, 20.799601>,  <15.787305, 18.420767, 20.597799>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.909945, 19.068623, 20.799601> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.523742, 19.077488, 20.903372>,  <15.292020, 19.082808, 20.965633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.523742, 19.077488, 20.903372>,  <15.909945, 19.068623, 20.799601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.523742, 19.077488, 20.903372> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255422, 0.273988, 0.927195,
		-0.050529, 0.961478, -0.270199,
		-0.965508, 0.022165, 0.259427,
		15.234089, 19.084137, 20.981199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.847073, 19.729893, 21.140106>,  <15.909945, 19.068623, 20.799601>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.847073, 19.729893, 21.140106> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.542514, 19.492874, 21.245302>,  <15.359778, 19.350662, 21.308420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.542514, 19.492874, 21.245302>,  <15.847073, 19.729893, 21.140106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.542514, 19.492874, 21.245302> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086430, 0.309263, 0.947041,
		-0.642498, 0.743805, -0.184258,
		-0.761398, -0.592546, 0.262988,
		15.314095, 19.315111, 21.324198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.334517, 20.186567, 21.542801>,  <15.847073, 19.729893, 21.140106>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.334517, 20.186567, 21.542801> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.283025, 19.802044, 21.640219>,  <15.252130, 19.571329, 21.698669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.283025, 19.802044, 21.640219>,  <15.334517, 20.186567, 21.542801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.283025, 19.802044, 21.640219> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075853, 0.235324, 0.968952,
		-0.988774, 0.143207, 0.042625,
		-0.128730, -0.961309, 0.243545,
		15.244406, 19.513651, 21.713282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.842708, 20.194101, 22.102255>,  <15.334517, 20.186567, 21.542801>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.842708, 20.194101, 22.102255> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.984706, 19.820156, 22.103483>,  <15.069904, 19.595789, 22.104221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.984706, 19.820156, 22.103483>,  <14.842708, 20.194101, 22.102255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.984706, 19.820156, 22.103483> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110072, 0.045061, 0.992902,
		-0.928366, -0.352137, 0.118899,
		0.354995, -0.934863, 0.003073,
		15.091205, 19.539698, 22.104404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.485936, 19.874691, 22.727329>,  <14.842708, 20.194101, 22.102255>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.485936, 19.874691, 22.727329> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.812486, 19.667786, 22.624590>,  <15.008415, 19.543642, 22.562946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.812486, 19.667786, 22.624590>,  <14.485936, 19.874691, 22.727329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.812486, 19.667786, 22.624590> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283665, -0.028256, 0.958507,
		-0.503057, -0.855360, 0.123662,
		0.816375, -0.517263, -0.256850,
		15.057398, 19.512608, 22.547535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.577503, 19.235096, 23.206852>,  <14.485936, 19.874691, 22.727329>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.577503, 19.235096, 23.206852> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.939883, 19.303104, 23.051752>,  <15.157311, 19.343908, 22.958693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.939883, 19.303104, 23.051752>,  <14.577503, 19.235096, 23.206852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.939883, 19.303104, 23.051752> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399568, -0.040490, 0.915809,
		0.140006, -0.984609, -0.104617,
		0.905949, 0.170020, -0.387749,
		15.211668, 19.354111, 22.935427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.011907, 18.798687, 23.554934>,  <14.577503, 19.235096, 23.206852>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.011907, 18.798687, 23.554934> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.252481, 19.088589, 23.420467>,  <15.396825, 19.262529, 23.339787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.252481, 19.088589, 23.420467>,  <15.011907, 18.798687, 23.554934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.252481, 19.088589, 23.420467> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530178, -0.047297, 0.846566,
		0.597653, -0.687382, -0.412695,
		0.601434, 0.724754, -0.336167,
		15.432911, 19.306015, 23.319616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.696401, 18.571611, 23.743210>,  <15.011907, 18.798687, 23.554934>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.696401, 18.571611, 23.743210> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.741063, 18.958549, 23.652195>,  <15.767860, 19.190712, 23.597586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.741063, 18.958549, 23.652195>,  <15.696401, 18.571611, 23.743210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.741063, 18.958549, 23.652195> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631835, 0.107624, 0.767595,
		0.767019, -0.229472, -0.599186,
		0.111655, 0.967347, -0.227538,
		15.774560, 19.248753, 23.583933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.458693, 18.743929, 23.723312>,  <15.696401, 18.571611, 23.743210>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.458693, 18.743929, 23.723312> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.274216, 19.095360, 23.772957>,  <16.163530, 19.306219, 23.802744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.274216, 19.095360, 23.772957>,  <16.458693, 18.743929, 23.723312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.274216, 19.095360, 23.772957> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623500, 0.221367, 0.749830,
		0.631309, 0.423198, -0.649886,
		-0.461190, 0.878578, 0.124113,
		16.135859, 19.358932, 23.810190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.960728, 19.304001, 23.636908>,  <16.458693, 18.743929, 23.723312>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.960728, 19.304001, 23.636908> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.651699, 19.407436, 23.868860>,  <16.466282, 19.469498, 24.008032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.651699, 19.407436, 23.868860>,  <16.960728, 19.304001, 23.636908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.651699, 19.407436, 23.868860> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625128, 0.149957, 0.765982,
		0.111115, 0.954278, -0.277502,
		-0.772573, 0.258587, 0.579883,
		16.419928, 19.485012, 24.042826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.221872, 19.868347, 23.833107>,  <16.960728, 19.304001, 23.636908>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.221872, 19.868347, 23.833107> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.931808, 19.743820, 24.078781>,  <16.757771, 19.669104, 24.226185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.931808, 19.743820, 24.078781>,  <17.221872, 19.868347, 23.833107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.931808, 19.743820, 24.078781> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557164, 0.258832, 0.789034,
		-0.404611, 0.914378, -0.014240,
		-0.725161, -0.311318, 0.614185,
		16.714260, 19.650425, 24.263037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.693932, 19.694529, 24.379522>,  <17.221872, 19.868347, 23.833107>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.693932, 19.694529, 24.379522> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.041512, 19.505089, 24.436977>,  <18.250059, 19.391424, 24.471451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.041512, 19.505089, 24.436977>,  <17.693932, 19.694529, 24.379522>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.041512, 19.505089, 24.436977> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085410, -0.142374, -0.986121,
		0.487476, 0.869157, -0.083265,
		0.868949, -0.473599, 0.143639,
		18.302197, 19.363008, 24.480068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.267376, 20.025175, 24.060493>,  <17.693932, 19.694529, 24.379522>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.267376, 20.025175, 24.060493> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.393093, 19.648045, 24.104851>,  <18.468523, 19.421766, 24.131466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.393093, 19.648045, 24.104851>,  <18.267376, 20.025175, 24.060493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.393093, 19.648045, 24.104851> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056799, -0.097927, -0.993571,
		0.947625, 0.318572, 0.022773,
		0.314294, -0.942827, 0.110893,
		18.487381, 19.365196, 24.138119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.615742, 19.858423, 23.524895>,  <18.267376, 20.025175, 24.060493>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.615742, 19.858423, 23.524895> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.546890, 19.490955, 23.667116>,  <18.505579, 19.270475, 23.752449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.546890, 19.490955, 23.667116>,  <18.615742, 19.858423, 23.524895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.546890, 19.490955, 23.667116> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031355, -0.355647, -0.934094,
		0.984576, -0.171931, 0.032412,
		-0.172127, -0.918670, 0.355552,
		18.495253, 19.215355, 23.773783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.957386, 19.431684, 23.054022>,  <18.615742, 19.858423, 23.524895>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.957386, 19.431684, 23.054022> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.676228, 19.209808, 23.232126>,  <18.507532, 19.076683, 23.338989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.676228, 19.209808, 23.232126>,  <18.957386, 19.431684, 23.054022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.676228, 19.209808, 23.232126> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123024, -0.521752, -0.844180,
		0.700574, -0.648148, 0.298497,
		-0.702895, -0.554688, 0.445263,
		18.465359, 19.043402, 23.365705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.244293, 18.760870, 22.971466>,  <18.957386, 19.431684, 23.054022>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.244293, 18.760870, 22.971466> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.846676, 18.767643, 23.014536>,  <18.608107, 18.771708, 23.040377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.846676, 18.767643, 23.014536>,  <19.244293, 18.760870, 22.971466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.846676, 18.767643, 23.014536> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099272, -0.548530, -0.830217,
		0.045005, -0.835959, 0.546943,
		-0.994042, 0.016933, 0.107674,
		18.548464, 18.772722, 23.046839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.999647, 18.075712, 22.757524>,  <19.244293, 18.760870, 22.971466>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.999647, 18.075712, 22.757524> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.670372, 18.302818, 22.758286>,  <18.472807, 18.439081, 22.758741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.670372, 18.302818, 22.758286>,  <18.999647, 18.075712, 22.757524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.670372, 18.302818, 22.758286> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318458, -0.458951, -0.829427,
		-0.470051, -0.683377, 0.558613,
		-0.823187, 0.567768, 0.001897,
		18.423416, 18.473148, 22.758856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.517443, 17.682302, 22.409716>,  <18.999647, 18.075712, 22.757524>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.517443, 17.682302, 22.409716> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.392693, 18.062206, 22.399239>,  <18.317842, 18.290150, 22.392952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.392693, 18.062206, 22.399239>,  <18.517443, 17.682302, 22.409716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.392693, 18.062206, 22.399239> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424613, -0.163986, -0.890400,
		-0.849963, -0.266573, 0.454425,
		-0.311876, 0.949762, -0.026191,
		18.299129, 18.347136, 22.391380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.941692, 17.456133, 22.074112>,  <18.517443, 17.682302, 22.409716>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.941692, 17.456133, 22.074112> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.980164, 17.853790, 22.054411>,  <18.003246, 18.092384, 22.042591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.980164, 17.853790, 22.054411>,  <17.941692, 17.456133, 22.074112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.980164, 17.853790, 22.054411> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409257, -0.005609, -0.912402,
		-0.907336, 0.107908, 0.406322,
		0.096177, 0.994145, -0.049252,
		18.009016, 18.152033, 22.039635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.353329, 17.651075, 21.894709>,  <17.941692, 17.456133, 22.074112>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.353329, 17.651075, 21.894709> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.613617, 17.941532, 21.805916>,  <17.769791, 18.115807, 21.752640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.613617, 17.941532, 21.805916>,  <17.353329, 17.651075, 21.894709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.613617, 17.941532, 21.805916> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273459, -0.048618, -0.960654,
		-0.708365, 0.685822, 0.166934,
		0.650722, 0.726143, -0.221984,
		17.808834, 18.159374, 21.739321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.939308, 18.138390, 21.401278>,  <17.353329, 17.651075, 21.894709>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.939308, 18.138390, 21.401278> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.329002, 18.194729, 21.330822>,  <17.562819, 18.228533, 21.288549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.329002, 18.194729, 21.330822>,  <16.939308, 18.138390, 21.401278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.329002, 18.194729, 21.330822> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179751, 0.013255, -0.983623,
		-0.136208, 0.989942, 0.038231,
		0.974236, 0.140850, -0.176138,
		17.621273, 18.236984, 21.277981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.967518, 18.613071, 20.882322>,  <16.939308, 18.138390, 21.401278>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.967518, 18.613071, 20.882322> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.315102, 18.416264, 20.861065>,  <17.523653, 18.298180, 20.848310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.315102, 18.416264, 20.861065>,  <16.967518, 18.613071, 20.882322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.315102, 18.416264, 20.861065> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091413, -0.054046, -0.994345,
		0.486365, 0.868905, -0.091941,
		0.868961, -0.492019, -0.053144,
		17.575790, 18.268658, 20.845121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.303562, 18.888050, 20.343262>,  <16.967518, 18.613071, 20.882322>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.303562, 18.888050, 20.343262> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.507156, 18.547951, 20.396948>,  <17.629313, 18.343891, 20.429159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.507156, 18.547951, 20.396948>,  <17.303562, 18.888050, 20.343262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.507156, 18.547951, 20.396948> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171090, -0.052883, -0.983835,
		0.843601, 0.523720, 0.118553,
		0.508984, -0.850248, 0.134216,
		17.659851, 18.292877, 20.437212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.931627, 18.993675, 19.999416>,  <17.303562, 18.888050, 20.343262>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.931627, 18.993675, 19.999416> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.885559, 18.597485, 20.029604>,  <17.857918, 18.359770, 20.047716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.885559, 18.597485, 20.029604>,  <17.931627, 18.993675, 19.999416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.885559, 18.597485, 20.029604> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001950, -0.075751, -0.997125,
		0.993344, -0.114986, 0.006793,
		-0.115170, -0.990475, 0.075471,
		17.851007, 18.300343, 20.052246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.537634, 18.625404, 19.611937>,  <17.931627, 18.993675, 19.999416>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.537634, 18.625404, 19.611937> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.211613, 18.395138, 19.638159>,  <18.016001, 18.256977, 19.653893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.211613, 18.395138, 19.638159>,  <18.537634, 18.625404, 19.611937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.211613, 18.395138, 19.638159> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024188, -0.146857, -0.988862,
		0.578884, -0.804387, 0.133621,
		-0.815051, -0.575669, 0.065557,
		17.967098, 18.222437, 19.657825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.158251, 18.895889, 19.203320>,  <18.537634, 18.625404, 19.611937>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.158251, 18.895889, 19.203320> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.274811, 19.243759, 19.043945>,  <19.344748, 19.452482, 18.948320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.274811, 19.243759, 19.043945>,  <19.158251, 18.895889, 19.203320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.274811, 19.243759, 19.043945> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511125, 0.210519, 0.833327,
		0.808602, -0.446480, -0.383168,
		0.291399, 0.869677, -0.398433,
		19.362230, 19.504662, 18.924416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.970791, 19.002779, 19.377281>,  <19.158251, 18.895889, 19.203320>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.970791, 19.002779, 19.377281> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.752323, 19.334545, 19.330338>,  <19.621243, 19.533604, 19.302172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.752323, 19.334545, 19.330338>,  <19.970791, 19.002779, 19.377281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.752323, 19.334545, 19.330338> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328737, 0.341086, 0.880677,
		0.770475, 0.442418, -0.458949,
		-0.546169, 0.829414, -0.117359,
		19.588472, 19.583368, 19.295130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.460342, 19.435627, 19.633179>,  <19.970791, 19.002779, 19.377281>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.460342, 19.435627, 19.633179> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.104939, 19.618793, 19.644928>,  <19.891695, 19.728693, 19.651978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.104939, 19.618793, 19.644928>,  <20.460342, 19.435627, 19.633179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.104939, 19.618793, 19.644928> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288848, 0.508427, 0.811214,
		0.356532, 0.729258, -0.584010,
		-0.888511, 0.457914, 0.029374,
		19.838385, 19.756168, 19.653740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.691122, 20.051561, 19.909142>,  <20.460342, 19.435627, 19.633179>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.691122, 20.051561, 19.909142> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.296272, 20.091171, 19.959389>,  <20.059362, 20.114937, 19.989536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.296272, 20.091171, 19.959389>,  <20.691122, 20.051561, 19.909142>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.296272, 20.091171, 19.959389> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158628, 0.505102, 0.848357,
		0.020559, 0.857360, -0.514307,
		-0.987124, 0.099024, 0.125617,
		20.000135, 20.120878, 19.997074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.550825, 20.796370, 20.015602>,  <20.691122, 20.051561, 19.909142>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.550825, 20.796370, 20.015602> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.261467, 20.579498, 20.186596>,  <20.087852, 20.449375, 20.289192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.261467, 20.579498, 20.186596>,  <20.550825, 20.796370, 20.015602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.261467, 20.579498, 20.186596> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169610, 0.460630, 0.871236,
		-0.669278, 0.702753, -0.241258,
		-0.723394, -0.542180, 0.427483,
		20.044449, 20.416845, 20.314840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.125830, 21.273026, 20.397854>,  <20.550825, 20.796370, 20.015602>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.125830, 21.273026, 20.397854> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.024693, 20.934895, 20.586105>,  <19.964010, 20.732016, 20.699057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.024693, 20.934895, 20.586105>,  <20.125830, 21.273026, 20.397854>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.024693, 20.934895, 20.586105> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081329, 0.466142, 0.880964,
		-0.964082, 0.261023, -0.049112,
		-0.252845, -0.845328, 0.470628,
		19.948839, 20.681295, 20.727293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.760075, 21.502939, 21.100121>,  <20.125830, 21.273026, 20.397854>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.760075, 21.502939, 21.100121> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.830276, 21.116699, 21.176865>,  <19.872398, 20.884954, 21.222912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.830276, 21.116699, 21.176865>,  <19.760075, 21.502939, 21.100121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.830276, 21.116699, 21.176865> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163045, 0.220705, 0.961616,
		-0.970883, -0.137487, 0.196171,
		0.175506, -0.965602, 0.191862,
		19.882929, 20.827019, 21.234423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.226242, 22.078434, 20.992123>,  <19.760075, 21.502939, 21.100121>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.226242, 22.078434, 20.992123> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.501968, 22.367992, 20.980644>,  <19.667404, 22.541727, 20.973757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.501968, 22.367992, 20.980644>,  <19.226242, 22.078434, 20.992123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.501968, 22.367992, 20.980644> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156299, -0.187273, -0.969793,
		-0.707402, 0.664007, -0.242234,
		0.689314, 0.723894, -0.028694,
		19.708763, 22.585161, 20.972036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.068193, 22.414114, 20.465206>,  <19.226242, 22.078434, 20.992123>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.068193, 22.414114, 20.465206> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.454838, 22.506119, 20.510387>,  <19.686825, 22.561321, 20.537497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.454838, 22.506119, 20.510387>,  <19.068193, 22.414114, 20.465206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.454838, 22.506119, 20.510387> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129673, -0.058873, -0.989808,
		-0.221017, 0.971406, -0.086733,
		0.966611, 0.230011, 0.112953,
		19.744822, 22.575123, 20.544273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.147490, 23.091722, 20.114584>,  <19.068193, 22.414114, 20.465206>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.147490, 23.091722, 20.114584> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.502621, 22.908264, 20.129562>,  <19.715700, 22.798189, 20.138550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.502621, 22.908264, 20.129562>,  <19.147490, 23.091722, 20.114584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.502621, 22.908264, 20.129562> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064514, 0.043483, -0.996969,
		0.455629, 0.887554, 0.068194,
		0.887829, -0.458648, 0.037448,
		19.768969, 22.770670, 20.140797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.580397, 23.406540, 19.623945>,  <19.147490, 23.091722, 20.114584>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.580397, 23.406540, 19.623945> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.779823, 23.061584, 19.659084>,  <19.899479, 22.854610, 19.680168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.779823, 23.061584, 19.659084>,  <19.580397, 23.406540, 19.623945>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.779823, 23.061584, 19.659084> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163444, -0.006001, -0.986534,
		0.851302, 0.506213, 0.137961,
		0.498568, -0.862388, 0.087846,
		19.929394, 22.802868, 19.685438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.223122, 23.528219, 19.326063>,  <19.580397, 23.406540, 19.623945>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.223122, 23.528219, 19.326063> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.182465, 23.130291, 19.326979>,  <20.158072, 22.891535, 19.327528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.182465, 23.130291, 19.326979>,  <20.223122, 23.528219, 19.326063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.182465, 23.130291, 19.326979> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124444, -0.014999, -0.992114,
		0.987007, -0.100554, 0.125324,
		-0.101640, -0.994819, 0.002290,
		20.151972, 22.831846, 19.327665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.698603, 23.337748, 18.865828>,  <20.223122, 23.528219, 19.326063>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.698603, 23.337748, 18.865828> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.463924, 23.015244, 18.896122>,  <20.323118, 22.821741, 18.914299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.463924, 23.015244, 18.896122>,  <20.698603, 23.337748, 18.865828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.463924, 23.015244, 18.896122> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094087, -0.160758, -0.982499,
		0.804325, -0.569300, 0.170174,
		-0.586693, -0.806260, 0.075738,
		20.287916, 22.773365, 18.918844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.936592, 22.884089, 18.374474>,  <20.698603, 23.337748, 18.865828>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.936592, 22.884089, 18.374474> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.588108, 22.695431, 18.428940>,  <20.379017, 22.582235, 18.461620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.588108, 22.695431, 18.428940>,  <20.936592, 22.884089, 18.374474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.588108, 22.695431, 18.428940> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044339, -0.351842, -0.935009,
		0.488902, -0.808553, 0.327441,
		-0.871211, -0.471646, 0.136166,
		20.326744, 22.553938, 18.469790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<15.377442, 22.869547, 23.914135> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.301709, 22.478130, 23.946665>,  <15.256269, 22.243280, 23.966183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.301709, 22.478130, 23.946665>,  <15.377442, 22.869547, 23.914135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.301709, 22.478130, 23.946665> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343418, -0.011600, -0.939111,
		0.919900, -0.205733, -0.333852,
		-0.189333, -0.978539, 0.081323,
		15.244909, 22.184568, 23.971062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.795265, 22.502975, 23.420956>,  <15.377442, 22.869547, 23.914135>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.795265, 22.502975, 23.420956> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.483214, 22.259575, 23.479099>,  <15.295984, 22.113535, 23.513985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.483214, 22.259575, 23.479099>,  <15.795265, 22.502975, 23.420956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.483214, 22.259575, 23.479099> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161017, -0.029225, -0.986519,
		0.604547, -0.793014, -0.075180,
		-0.780126, -0.608502, 0.145357,
		15.249177, 22.077024, 23.522707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.826284, 22.069721, 22.872503>,  <15.795265, 22.502975, 23.420956>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.826284, 22.069721, 22.872503> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.454396, 21.993889, 22.998791>,  <15.231263, 21.948389, 23.074564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.454396, 21.993889, 22.998791>,  <15.826284, 22.069721, 22.872503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.454396, 21.993889, 22.998791> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293025, -0.138455, -0.946027,
		0.223062, -0.972054, 0.073172,
		-0.929720, -0.189581, 0.315720,
		15.175480, 21.937014, 23.093506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.736020, 21.463923, 22.670534>,  <15.826284, 22.069721, 22.872503>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.736020, 21.463923, 22.670534> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.386971, 21.658051, 22.692427>,  <15.177542, 21.774527, 22.705563>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.386971, 21.658051, 22.692427>,  <15.736020, 21.463923, 22.670534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.386971, 21.658051, 22.692427> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144687, -0.149850, -0.978065,
		-0.466473, -0.861400, 0.200982,
		-0.872622, 0.485320, 0.054732,
		15.125185, 21.803646, 22.708847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.187447, 20.929859, 22.390711>,  <15.736020, 21.463923, 22.670534>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.187447, 20.929859, 22.390711> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.057231, 21.307659, 22.373083>,  <14.979101, 21.534340, 22.362507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.057231, 21.307659, 22.373083>,  <15.187447, 20.929859, 22.390711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.057231, 21.307659, 22.373083> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230028, -0.124317, -0.965211,
		-0.917121, -0.304077, 0.257732,
		-0.325539, 0.944501, -0.044068,
		14.959569, 21.591009, 22.359863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.446451, 20.921730, 22.111872>,  <15.187447, 20.929859, 22.390711>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.446451, 20.921730, 22.111872> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.562654, 21.301094, 22.061085>,  <14.632375, 21.528713, 22.030613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.562654, 21.301094, 22.061085>,  <14.446451, 20.921730, 22.111872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.562654, 21.301094, 22.061085> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380835, -0.007131, -0.924616,
		-0.877822, 0.316960, 0.359117,
		0.290505, 0.948412, -0.126969,
		14.649805, 21.585617, 22.022995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.054389, 21.057295, 21.454514>,  <14.446451, 20.921730, 22.111872>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.054389, 21.057295, 21.454514> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.276868, 21.388798, 21.479181>,  <14.410356, 21.587700, 21.493982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.276868, 21.388798, 21.479181>,  <14.054389, 21.057295, 21.454514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.276868, 21.388798, 21.479181> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049857, 0.107351, -0.992970,
		-0.829553, 0.549213, 0.101028,
		0.556198, 0.828758, 0.061671,
		14.443727, 21.637424, 21.497683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.678958, 21.705627, 21.076643>,  <14.054389, 21.057295, 21.454514>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.678958, 21.705627, 21.076643> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.075833, 21.748730, 21.101791>,  <14.313958, 21.774591, 21.116880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.075833, 21.748730, 21.101791>,  <13.678958, 21.705627, 21.076643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.075833, 21.748730, 21.101791> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045233, 0.158955, -0.986249,
		-0.116268, 0.981388, 0.152839,
		0.992187, 0.107756, 0.062872,
		14.373489, 21.781057, 21.120653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.743528, 22.360062, 20.737480>,  <13.678958, 21.705627, 21.076643>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.743528, 22.360062, 20.737480> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.088801, 22.161392, 20.701185>,  <14.295965, 22.042191, 20.679409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.088801, 22.161392, 20.701185>,  <13.743528, 22.360062, 20.737480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.088801, 22.161392, 20.701185> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019889, 0.213023, -0.976845,
		0.504501, 0.841390, 0.193756,
		0.863182, -0.496673, -0.090735,
		14.347756, 22.012390, 20.673965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.221136, 22.797323, 20.401024>,  <13.743528, 22.360062, 20.737480>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.221136, 22.797323, 20.401024> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.396724, 22.441883, 20.347815>,  <14.502076, 22.228619, 20.315889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.396724, 22.441883, 20.347815>,  <14.221136, 22.797323, 20.401024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.396724, 22.441883, 20.347815> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216305, 0.248206, -0.944249,
		0.872077, 0.385722, 0.301164,
		0.438968, -0.888601, -0.133021,
		14.528414, 22.175303, 20.307909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.859520, 22.922806, 20.105268>,  <14.221136, 22.797323, 20.401024>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.859520, 22.922806, 20.105268> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.768027, 22.548676, 19.997309>,  <14.713132, 22.324198, 19.932533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.768027, 22.548676, 19.997309>,  <14.859520, 22.922806, 20.105268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.768027, 22.548676, 19.997309> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213727, 0.222237, -0.951279,
		0.949738, -0.275272, 0.149072,
		-0.228732, -0.935327, -0.269900,
		14.699408, 22.268078, 19.916338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.316470, 22.884287, 19.569920>,  <14.859520, 22.922806, 20.105268>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.316470, 22.884287, 19.569920> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.068116, 22.577606, 19.504591>,  <14.919104, 22.393599, 19.465395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.068116, 22.577606, 19.504591>,  <15.316470, 22.884287, 19.569920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.068116, 22.577606, 19.504591> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054086, 0.165948, -0.984650,
		0.782034, -0.620187, -0.061567,
		-0.620884, -0.766700, -0.163320,
		14.881851, 22.347595, 19.455595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.190962, 22.920866, 19.506777>,  <15.316470, 22.884287, 19.569920>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.190962, 22.920866, 19.506777> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.408386, 23.255615, 19.480907>,  <16.538841, 23.456465, 19.465385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.408386, 23.255615, 19.480907>,  <16.190962, 22.920866, 19.506777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.408386, 23.255615, 19.480907> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046842, 0.107172, 0.993136,
		0.838063, -0.536799, 0.097455,
		0.543560, 0.836876, -0.064672,
		16.571455, 23.506678, 19.461506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.711855, 22.820276, 19.983528>,  <16.190962, 22.920866, 19.506777>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.711855, 22.820276, 19.983528> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.740623, 23.215843, 19.931574>,  <16.757885, 23.453184, 19.900402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.740623, 23.215843, 19.931574>,  <16.711855, 22.820276, 19.983528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.740623, 23.215843, 19.931574> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049776, 0.126501, 0.990717,
		0.996167, -0.077720, -0.040126,
		0.071922, 0.988917, -0.129885,
		16.762199, 23.512518, 19.892609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.363424, 23.023033, 20.297960>,  <16.711855, 22.820276, 19.983528>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.363424, 23.023033, 20.297960> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.154285, 23.361298, 20.255091>,  <17.028803, 23.564257, 20.229368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.154285, 23.361298, 20.255091>,  <17.363424, 23.023033, 20.297960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.154285, 23.361298, 20.255091> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300114, 0.300298, 0.905402,
		0.797849, 0.441220, -0.410805,
		-0.522845, 0.845663, -0.107176,
		16.997433, 23.614996, 20.222939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.776325, 23.614550, 20.497490>,  <17.363424, 23.023033, 20.297960>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.776325, 23.614550, 20.497490> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.406792, 23.766869, 20.513094>,  <17.185072, 23.858261, 20.522457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.406792, 23.766869, 20.513094>,  <17.776325, 23.614550, 20.497490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.406792, 23.766869, 20.513094> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220584, 0.446298, 0.867272,
		0.312846, 0.809821, -0.496303,
		-0.923835, 0.380799, 0.039011,
		17.129641, 23.881107, 20.524797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.806677, 24.326241, 20.563622>,  <17.776325, 23.614550, 20.497490>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.806677, 24.326241, 20.563622> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.446579, 24.228256, 20.707596>,  <17.230520, 24.169466, 20.793980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.446579, 24.228256, 20.707596>,  <17.806677, 24.326241, 20.563622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.446579, 24.228256, 20.707596> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119184, 0.656479, 0.744870,
		-0.418753, 0.713464, -0.561797,
		-0.900245, -0.244959, 0.359935,
		17.176506, 24.154768, 20.815577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.394691, 24.929947, 20.714899>,  <17.806677, 24.326241, 20.563622>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.394691, 24.929947, 20.714899> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.234035, 24.643150, 20.942797>,  <17.137642, 24.471071, 21.079535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.234035, 24.643150, 20.942797>,  <17.394691, 24.929947, 20.714899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.234035, 24.643150, 20.942797> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099880, 0.584123, 0.805496,
		-0.910336, 0.380424, -0.162993,
		-0.401638, -0.716992, 0.569745,
		17.113544, 24.428053, 21.113720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.336149, 25.280973, 21.282087>,  <17.394691, 24.929947, 20.714899>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.336149, 25.280973, 21.282087> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.253033, 24.908089, 21.400614>,  <17.203163, 24.684357, 21.471729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.253033, 24.908089, 21.400614>,  <17.336149, 25.280973, 21.282087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.253033, 24.908089, 21.400614> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174773, 0.262670, 0.948925,
		-0.962433, 0.248965, 0.108345,
		-0.207790, -0.932213, 0.296315,
		17.190695, 24.628426, 21.489508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.933544, 25.429930, 21.860758>,  <17.336149, 25.280973, 21.282087>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.933544, 25.429930, 21.860758> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.079853, 25.058907, 21.891338>,  <17.167639, 24.836292, 21.909687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.079853, 25.058907, 21.891338>,  <16.933544, 25.429930, 21.860758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.079853, 25.058907, 21.891338> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284097, 0.189499, 0.939882,
		-0.886285, -0.322061, 0.332831,
		0.365770, -0.927560, 0.076454,
		17.189585, 24.780638, 21.914274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.817896, 25.261351, 22.519964>,  <16.933544, 25.429930, 21.860758>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.817896, 25.261351, 22.519964> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.080391, 24.971985, 22.434149>,  <17.237888, 24.798367, 22.382660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.080391, 24.971985, 22.434149>,  <16.817896, 25.261351, 22.519964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.080391, 24.971985, 22.434149> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386986, 0.078585, 0.918731,
		-0.647762, -0.685929, 0.331521,
		0.656236, -0.723413, -0.214540,
		17.277262, 24.754961, 22.369787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.822117, 24.760799, 23.116049>,  <16.817896, 25.261351, 22.519964>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.822117, 24.760799, 23.116049> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.159008, 24.796837, 22.903433>,  <17.361143, 24.818459, 22.775864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.159008, 24.796837, 22.903433>,  <16.822117, 24.760799, 23.116049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.159008, 24.796837, 22.903433> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539038, -0.123303, 0.833207,
		0.009525, -0.988271, -0.152413,
		0.842228, 0.090093, -0.531541,
		17.411676, 24.823864, 22.743971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.256439, 24.356649, 23.459101>,  <16.822117, 24.760799, 23.116049>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.256439, 24.356649, 23.459101> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.518406, 24.573681, 23.248695>,  <17.675587, 24.703899, 23.122452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.518406, 24.573681, 23.248695>,  <17.256439, 24.356649, 23.459101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.518406, 24.573681, 23.248695> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590509, 0.066927, 0.804251,
		0.471573, -0.837336, -0.276564,
		0.654919, 0.542577, -0.526015,
		17.714882, 24.736454, 23.090891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.872410, 24.131441, 23.659384>,  <17.256439, 24.356649, 23.459101>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.872410, 24.131441, 23.659384> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.947678, 24.495018, 23.510565>,  <17.992838, 24.713163, 23.421272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.947678, 24.495018, 23.510565>,  <17.872410, 24.131441, 23.659384>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.947678, 24.495018, 23.510565> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682169, 0.151570, 0.715312,
		0.706567, -0.388400, -0.591530,
		0.188169, 0.908940, -0.372049,
		18.004128, 24.767700, 23.398951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.593113, 24.106695, 23.578482>,  <17.872410, 24.131441, 23.659384>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.593113, 24.106695, 23.578482> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.483219, 24.489784, 23.612631>,  <18.417282, 24.719637, 23.633120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.483219, 24.489784, 23.612631>,  <18.593113, 24.106695, 23.578482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.483219, 24.489784, 23.612631> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678723, 0.130275, 0.722747,
		0.681068, 0.256510, -0.685820,
		-0.274737, 0.957722, 0.085373,
		18.400799, 24.777102, 23.638243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.200731, 24.472383, 23.578808>,  <18.593113, 24.106695, 23.578482>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.200731, 24.472383, 23.578808> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.939022, 24.724419, 23.746101>,  <18.781998, 24.875639, 23.846478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.939022, 24.724419, 23.746101>,  <19.200731, 24.472383, 23.578808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.939022, 24.724419, 23.746101> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602167, 0.099474, 0.792149,
		0.457518, 0.770128, -0.444500,
		-0.654272, 0.630085, 0.418235,
		18.742741, 24.913445, 23.871572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.628654, 24.947073, 23.087738>,  <19.200731, 24.472383, 23.578808>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.628654, 24.947073, 23.087738> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.741558, 24.597691, 23.246437>,  <19.809299, 24.388062, 23.341656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.741558, 24.597691, 23.246437>,  <19.628654, 24.947073, 23.087738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.741558, 24.597691, 23.246437> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000019, -0.413568, -0.910473,
		0.959339, 0.256980, -0.116749,
		0.282257, -0.873455, 0.396747,
		19.826235, 24.335655, 23.365461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.291883, 24.649082, 22.765276>,  <19.628654, 24.947073, 23.087738>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.291883, 24.649082, 22.765276> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.052933, 24.368523, 22.920805>,  <19.909561, 24.200188, 23.014122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.052933, 24.368523, 22.920805>,  <20.291883, 24.649082, 22.765276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.052933, 24.368523, 22.920805> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049867, -0.516388, -0.854902,
		0.800408, -0.491311, 0.343455,
		-0.597378, -0.701397, 0.388820,
		19.873718, 24.158104, 23.037451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.641642, 23.989973, 22.677794>,  <20.291883, 24.649082, 22.765276>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.641642, 23.989973, 22.677794> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.259132, 23.879551, 22.716450>,  <20.029627, 23.813297, 22.739643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.259132, 23.879551, 22.716450>,  <20.641642, 23.989973, 22.677794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.259132, 23.879551, 22.716450> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066918, -0.528153, -0.846508,
		0.284724, -0.803024, 0.523530,
		-0.956271, -0.276055, 0.096641,
		19.972252, 23.796734, 22.745441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.688864, 23.305393, 22.392984>,  <20.641642, 23.989973, 22.677794>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.688864, 23.305393, 22.392984> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.291874, 23.354378, 22.393402>,  <20.053680, 23.383768, 22.393652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.291874, 23.354378, 22.393402>,  <20.688864, 23.305393, 22.392984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.291874, 23.354378, 22.393402> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059431, -0.474168, -0.878426,
		-0.107079, -0.871876, 0.477877,
		-0.992473, 0.122462, 0.001043,
		19.994133, 23.391117, 22.393715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.465403, 22.643738, 22.413754>,  <20.688864, 23.305393, 22.392984>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.465403, 22.643738, 22.413754> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.197826, 22.895264, 22.255207>,  <20.037281, 23.046179, 22.160078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.197826, 22.895264, 22.255207>,  <20.465403, 22.643738, 22.413754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.197826, 22.895264, 22.255207> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072012, -0.475912, -0.876540,
		-0.739818, -0.614898, 0.273075,
		-0.668942, 0.628815, -0.396368,
		19.997143, 23.083908, 22.136297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.181360, 22.217150, 22.055286>,  <20.465403, 22.643738, 22.413754>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.181360, 22.217150, 22.055286> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.027138, 22.556320, 21.909756>,  <19.934605, 22.759823, 21.822437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.027138, 22.556320, 21.909756>,  <20.181360, 22.217150, 22.055286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.027138, 22.556320, 21.909756> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106586, -0.350744, -0.930386,
		-0.916507, -0.397495, 0.044855,
		-0.385557, 0.847925, -0.363827,
		19.911470, 22.810698, 21.800608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.663446, 22.030632, 21.623512>,  <20.181360, 22.217150, 22.055286>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.663446, 22.030632, 21.623512> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.753136, 22.404362, 21.512688>,  <19.806950, 22.628599, 21.446194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.753136, 22.404362, 21.512688>,  <19.663446, 22.030632, 21.623512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.753136, 22.404362, 21.512688> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112201, -0.307159, -0.945021,
		-0.968057, 0.180811, -0.173705,
		0.224225, 0.934324, -0.277061,
		19.820404, 22.684658, 21.429569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.340799, 21.324482, 21.722593>,  <19.663446, 22.030632, 21.623512>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.340799, 21.324482, 21.722593> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.630562, 21.050507, 21.691355>,  <19.804419, 20.886122, 21.672611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.630562, 21.050507, 21.691355>,  <19.340799, 21.324482, 21.722593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.630562, 21.050507, 21.691355> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229396, 0.132669, 0.964249,
		-0.650088, -0.716422, 0.253228,
		0.724405, -0.684936, -0.078098,
		19.847883, 20.845026, 21.667925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.115721, 20.731026, 22.143543>,  <19.340799, 21.324482, 21.722593>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.115721, 20.731026, 22.143543> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.513733, 20.728840, 22.103781>,  <19.752541, 20.727528, 22.079924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.513733, 20.728840, 22.103781>,  <19.115721, 20.731026, 22.143543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.513733, 20.728840, 22.103781> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095771, -0.220223, 0.970737,
		-0.027194, -0.975434, -0.218606,
		0.995032, -0.005463, -0.099407,
		19.812243, 20.727201, 22.073959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.378633, 20.182510, 22.578924>,  <19.115721, 20.731026, 22.143543>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.378633, 20.182510, 22.578924> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.699825, 20.413990, 22.521881>,  <19.892540, 20.552877, 22.487656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.699825, 20.413990, 22.521881>,  <19.378633, 20.182510, 22.578924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.699825, 20.413990, 22.521881> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197776, -0.033004, 0.979691,
		0.562239, -0.814874, -0.140954,
		0.802977, 0.578698, -0.142607,
		19.940718, 20.587599, 22.479099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.795000, 19.913742, 23.135834>,  <19.378633, 20.182510, 22.578924>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.795000, 19.913742, 23.135834> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.953491, 20.268658, 23.041410>,  <20.048586, 20.481607, 22.984756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.953491, 20.268658, 23.041410>,  <19.795000, 19.913742, 23.135834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.953491, 20.268658, 23.041410> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129786, 0.200391, 0.971081,
		0.908932, -0.415408, -0.035757,
		0.396230, 0.887288, -0.236056,
		20.072361, 20.534843, 22.970594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.392469, 20.035418, 23.606995>,  <19.795000, 19.913742, 23.135834>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.392469, 20.035418, 23.606995> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.356300, 20.407177, 23.463861>,  <20.334599, 20.630232, 23.377981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.356300, 20.407177, 23.463861>,  <20.392469, 20.035418, 23.606995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.356300, 20.407177, 23.463861> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101331, 0.366027, 0.925071,
		0.990735, 0.047387, -0.127273,
		-0.090421, 0.929397, -0.357834,
		20.329174, 20.685997, 23.356512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.908319, 20.390318, 23.923248>,  <20.392469, 20.035418, 23.606995>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.908319, 20.390318, 23.923248> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.617161, 20.640503, 23.810846>,  <20.442465, 20.790613, 23.743406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.617161, 20.640503, 23.810846>,  <20.908319, 20.390318, 23.923248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.617161, 20.640503, 23.810846> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009879, 0.419338, 0.907776,
		0.685614, 0.657993, -0.311415,
		-0.727899, 0.625461, -0.281003,
		20.398790, 20.828140, 23.726545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.134272, 20.900091, 24.196655>,  <20.908319, 20.390318, 23.923248>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.134272, 20.900091, 24.196655> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.757763, 21.015057, 24.125776>,  <20.531858, 21.084036, 24.083248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.757763, 21.015057, 24.125776>,  <21.134272, 20.900091, 24.196655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.757763, 21.015057, 24.125776> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073995, 0.336452, 0.938789,
		0.329441, 0.896768, -0.295425,
		-0.941272, 0.287416, -0.177197,
		20.475382, 21.101282, 24.072617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.017736, 21.553463, 24.515013>,  <21.134272, 20.900091, 24.196655>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.017736, 21.553463, 24.515013> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.654083, 21.389912, 24.483282>,  <20.435890, 21.291780, 24.464243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.654083, 21.389912, 24.483282>,  <21.017736, 21.553463, 24.515013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.654083, 21.389912, 24.483282> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152358, 0.149213, 0.976997,
		-0.387635, 0.900308, -0.197951,
		-0.909135, -0.408877, -0.079329,
		20.381342, 21.267248, 24.459484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.589272, 21.867064, 25.145435>,  <21.017736, 21.553463, 24.515013>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.589272, 21.867064, 25.145435> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.418945, 21.528633, 25.017160>,  <20.316750, 21.325575, 24.940195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.418945, 21.528633, 25.017160>,  <20.589272, 21.867064, 25.145435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.418945, 21.528633, 25.017160> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321228, -0.189975, 0.927751,
		-0.845869, 0.498063, -0.190889,
		-0.425814, -0.846075, -0.320686,
		20.291201, 21.274811, 24.920956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<17.358217, 17.915634, 8.737103> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.120903, 17.659233, 8.931886>,  <16.978516, 17.505392, 9.048756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.120903, 17.659233, 8.931886>,  <17.358217, 17.915634, 8.737103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.120903, 17.659233, 8.931886> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340830, 0.348002, 0.873344,
		-0.729279, 0.684111, 0.012009,
		-0.593285, -0.641004, 0.486956,
		16.942917, 17.466932, 9.077972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.168585, 18.315853, 9.392288>,  <17.358217, 17.915634, 8.737103>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.168585, 18.315853, 9.392288> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.087543, 17.930302, 9.461439>,  <17.038919, 17.698971, 9.502930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.087543, 17.930302, 9.461439>,  <17.168585, 18.315853, 9.392288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.087543, 17.930302, 9.461439> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223386, 0.126393, 0.966501,
		-0.953441, 0.234435, 0.189710,
		-0.202604, -0.963880, 0.172878,
		17.026762, 17.641138, 9.513303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.744408, 18.418146, 9.949659>,  <17.168585, 18.315853, 9.392288>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.744408, 18.418146, 9.949659> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.907406, 18.053196, 9.934093>,  <17.005205, 17.834225, 9.924754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.907406, 18.053196, 9.934093>,  <16.744408, 18.418146, 9.949659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.907406, 18.053196, 9.934093> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325960, 0.105513, 0.939477,
		-0.853051, -0.395519, 0.340395,
		0.407497, -0.912377, -0.038916,
		17.029655, 17.779484, 9.922419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.599220, 18.189409, 10.536797>,  <16.744408, 18.418146, 9.949659>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.599220, 18.189409, 10.536797> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.915131, 17.976776, 10.414371>,  <17.104677, 17.849197, 10.340917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.915131, 17.976776, 10.414371>,  <16.599220, 18.189409, 10.536797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.915131, 17.976776, 10.414371> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435926, 0.135383, 0.889742,
		-0.431534, -0.836118, 0.338652,
		0.789777, -0.531581, -0.306063,
		17.152063, 17.817303, 10.322553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.667782, 17.624809, 11.015110>,  <16.599220, 18.189409, 10.536797>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.667782, 17.624809, 11.015110> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.026688, 17.614014, 10.838842>,  <17.242031, 17.607536, 10.733082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.026688, 17.614014, 10.838842>,  <16.667782, 17.624809, 11.015110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.026688, 17.614014, 10.838842> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435906, 0.212470, 0.874553,
		0.070024, -0.976795, 0.202407,
		0.897264, -0.026990, -0.440668,
		17.295866, 17.605917, 10.706642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.155920, 17.179127, 11.372399>,  <16.667782, 17.624809, 11.015110>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.155920, 17.179127, 11.372399> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.401218, 17.406967, 11.153500>,  <17.548397, 17.543671, 11.022160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.401218, 17.406967, 11.153500>,  <17.155920, 17.179127, 11.372399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.401218, 17.406967, 11.153500> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464060, 0.300841, 0.833152,
		0.639199, -0.764886, -0.079838,
		0.613248, 0.569600, -0.547250,
		17.585194, 17.577847, 10.989325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.798454, 17.053331, 11.673393>,  <17.155920, 17.179127, 11.372399>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.798454, 17.053331, 11.673393> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.813831, 17.410503, 11.493972>,  <17.823057, 17.624805, 11.386319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.813831, 17.410503, 11.493972>,  <17.798454, 17.053331, 11.673393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.813831, 17.410503, 11.493972> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471835, 0.379472, 0.795847,
		0.880848, -0.242237, -0.406727,
		0.038442, 0.892929, -0.448553,
		17.825363, 17.678383, 11.359406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.455477, 17.303415, 11.767111>,  <17.798454, 17.053331, 11.673393>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.455477, 17.303415, 11.767111> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.252483, 17.638870, 11.687972>,  <18.130688, 17.840143, 11.640489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.252483, 17.638870, 11.687972>,  <18.455477, 17.303415, 11.767111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.252483, 17.638870, 11.687972> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364705, 0.417088, 0.832483,
		0.780672, 0.350317, -0.517522,
		-0.507485, 0.838639, -0.197847,
		18.100237, 17.890463, 11.628618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.941364, 17.836054, 11.868366>,  <18.455477, 17.303415, 11.767111>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.941364, 17.836054, 11.868366> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.580311, 18.007061, 11.888299>,  <18.363678, 18.109665, 11.900258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.580311, 18.007061, 11.888299>,  <18.941364, 17.836054, 11.868366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.580311, 18.007061, 11.888299> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319549, 0.588072, 0.743007,
		0.288344, 0.686586, -0.667426,
		-0.902633, 0.427517, 0.049831,
		18.309521, 18.135317, 11.903248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.017160, 18.486767, 11.872172>,  <18.941364, 17.836054, 11.868366>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.017160, 18.486767, 11.872172> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.659782, 18.493382, 12.051720>,  <18.445356, 18.497351, 12.159448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.659782, 18.493382, 12.051720>,  <19.017160, 18.486767, 11.872172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.659782, 18.493382, 12.051720> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375055, 0.577354, 0.725256,
		-0.247164, 0.816327, -0.522035,
		-0.893445, 0.016535, 0.448868,
		18.391748, 18.498343, 12.186380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.836569, 19.242718, 12.142319>,  <19.017160, 18.486767, 11.872172>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.836569, 19.242718, 12.142319> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.634106, 18.975433, 12.360419>,  <18.512629, 18.815062, 12.491280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.634106, 18.975433, 12.360419>,  <18.836569, 19.242718, 12.142319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.634106, 18.975433, 12.360419> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345741, 0.421977, 0.838092,
		-0.790107, 0.612721, 0.017442,
		-0.506156, -0.668213, 0.545250,
		18.482260, 18.774969, 12.523994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.634180, 19.643045, 12.739621>,  <18.836569, 19.242718, 12.142319>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.634180, 19.643045, 12.739621> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.530781, 19.276081, 12.860640>,  <18.468740, 19.055902, 12.933250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.530781, 19.276081, 12.860640>,  <18.634180, 19.643045, 12.739621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.530781, 19.276081, 12.860640> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235691, 0.243830, 0.940743,
		-0.936818, 0.314490, 0.153195,
		-0.258500, -0.917411, 0.302547,
		18.453230, 19.000858, 12.951404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.434315, 20.359190, 12.979630>,  <18.634180, 19.643045, 12.739621>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.434315, 20.359190, 12.979630> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.776226, 20.550861, 12.899887>,  <18.981373, 20.665865, 12.852041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.776226, 20.550861, 12.899887>,  <18.434315, 20.359190, 12.979630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.776226, 20.550861, 12.899887> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251579, 0.046586, -0.966715,
		-0.453941, 0.876481, 0.160372,
		0.854778, 0.479178, -0.199357,
		19.032660, 20.694614, 12.840080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.273668, 20.939312, 12.583125>,  <18.434315, 20.359190, 12.979630>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.273668, 20.939312, 12.583125> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.664822, 20.914326, 12.503283>,  <18.899513, 20.899334, 12.455377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.664822, 20.914326, 12.503283>,  <18.273668, 20.939312, 12.583125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.664822, 20.914326, 12.503283> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190385, 0.129273, -0.973161,
		0.086593, 0.989639, 0.114521,
		0.977883, -0.062466, -0.199607,
		18.958187, 20.895586, 12.443400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.462149, 21.573158, 12.332737>,  <18.273668, 20.939312, 12.583125>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.462149, 21.573158, 12.332737> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.754971, 21.320381, 12.230958>,  <18.930664, 21.168715, 12.169890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.754971, 21.320381, 12.230958>,  <18.462149, 21.573158, 12.332737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.754971, 21.320381, 12.230958> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079134, 0.292092, -0.953111,
		0.676632, 0.717867, 0.163819,
		0.732057, -0.631941, -0.254446,
		18.974588, 21.130798, 12.154624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.787983, 21.863752, 11.773430>,  <18.462149, 21.573158, 12.332737>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.787983, 21.863752, 11.773430> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.914543, 21.484936, 11.751520>,  <18.990479, 21.257645, 11.738375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.914543, 21.484936, 11.751520>,  <18.787983, 21.863752, 11.773430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.914543, 21.484936, 11.751520> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025896, 0.049095, -0.998458,
		0.948272, 0.317331, -0.008991,
		0.316400, -0.947043, -0.054773,
		19.009462, 21.200823, 11.735088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.237177, 21.875786, 11.221311>,  <18.787983, 21.863752, 11.773430>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.237177, 21.875786, 11.221311> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.128998, 21.493538, 11.268043>,  <19.064091, 21.264189, 11.296082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.128998, 21.493538, 11.268043>,  <19.237177, 21.875786, 11.221311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.128998, 21.493538, 11.268043> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314299, -0.027065, -0.948938,
		0.909986, -0.293358, -0.293030,
		-0.270447, -0.955619, 0.116831,
		19.047863, 21.206852, 11.303092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.506197, 21.595287, 10.704995>,  <19.237177, 21.875786, 11.221311>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.506197, 21.595287, 10.704995> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.219250, 21.335583, 10.806061>,  <19.047081, 21.179760, 10.866700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.219250, 21.335583, 10.806061>,  <19.506197, 21.595287, 10.704995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.219250, 21.335583, 10.806061> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195663, -0.160312, -0.967479,
		0.668652, -0.743478, -0.012034,
		-0.717370, -0.649262, 0.252664,
		19.004038, 21.140804, 10.881860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.564798, 21.014435, 10.310008>,  <19.506197, 21.595287, 10.704995>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.564798, 21.014435, 10.310008> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.176727, 21.003197, 10.406311>,  <18.943884, 20.996454, 10.464093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.176727, 21.003197, 10.406311>,  <19.564798, 21.014435, 10.310008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.176727, 21.003197, 10.406311> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234142, -0.148313, -0.960823,
		0.062705, -0.988541, 0.137311,
		-0.970178, -0.028098, 0.240759,
		18.885674, 20.994768, 10.478539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.166485, 20.443604, 9.818021>,  <19.564798, 21.014435, 10.310008>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.166485, 20.443604, 9.818021> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.874985, 20.686550, 9.944528>,  <18.700085, 20.832319, 10.020432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.874985, 20.686550, 9.944528>,  <19.166485, 20.443604, 9.818021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.874985, 20.686550, 9.944528> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443811, -0.067196, -0.893597,
		-0.521491, -0.791573, 0.318527,
		-0.728751, 0.607369, 0.316267,
		18.656359, 20.868761, 10.039408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.515831, 20.070623, 9.773507>,  <19.166485, 20.443604, 9.818021>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.515831, 20.070623, 9.773507> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.402054, 20.454048, 9.779883>,  <18.333788, 20.684103, 9.783710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.402054, 20.454048, 9.779883>,  <18.515831, 20.070623, 9.773507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.402054, 20.454048, 9.779883> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530100, -0.143403, -0.835721,
		-0.798803, -0.246165, 0.548923,
		-0.284442, 0.958560, 0.015941,
		18.316721, 20.741617, 9.784666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.861528, 20.090946, 9.593188>,  <18.515831, 20.070623, 9.773507>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.861528, 20.090946, 9.593188> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.937153, 20.479507, 9.535727>,  <17.982527, 20.712645, 9.501249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.937153, 20.479507, 9.535727>,  <17.861528, 20.090946, 9.593188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.937153, 20.479507, 9.535727> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519665, -0.025151, -0.854000,
		-0.833189, 0.236110, 0.500048,
		0.189061, 0.971401, -0.143653,
		17.993872, 20.770927, 9.492631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.243353, 20.298656, 9.203921>,  <17.861528, 20.090946, 9.593188>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.243353, 20.298656, 9.203921> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.505577, 20.597321, 9.158772>,  <17.662910, 20.776520, 9.131683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.505577, 20.597321, 9.158772>,  <17.243353, 20.298656, 9.203921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.505577, 20.597321, 9.158772> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407364, 0.223813, -0.885416,
		-0.635843, 0.626423, 0.450885,
		0.655559, 0.746661, -0.112872,
		17.702246, 20.821320, 9.124910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.840446, 20.996658, 9.085006>,  <17.243353, 20.298656, 9.203921>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.840446, 20.996658, 9.085006> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.213463, 21.016716, 8.941982>,  <17.437273, 21.028751, 8.856168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.213463, 21.016716, 8.941982>,  <16.840446, 20.996658, 9.085006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.213463, 21.016716, 8.941982> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361049, 0.122436, -0.924474,
		-0.002581, 0.991209, 0.132282,
		0.932543, 0.050146, -0.357559,
		17.493225, 21.031759, 8.834715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.776258, 21.337303, 8.469755>,  <16.840446, 20.996658, 9.085006>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.776258, 21.337303, 8.469755> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.151550, 21.221626, 8.393766>,  <17.376726, 21.152220, 8.348173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.151550, 21.221626, 8.393766>,  <16.776258, 21.337303, 8.469755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.151550, 21.221626, 8.393766> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177650, 0.068538, -0.981704,
		0.296921, 0.954814, 0.012930,
		0.938231, -0.289192, -0.189973,
		17.433020, 21.134869, 8.336775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.229998, 21.923159, 8.257164>,  <16.776258, 21.337303, 8.469755>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.229998, 21.923159, 8.257164> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.332451, 21.568665, 8.102772>,  <17.393923, 21.355968, 8.010137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.332451, 21.568665, 8.102772>,  <17.229998, 21.923159, 8.257164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.332451, 21.568665, 8.102772> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104457, 0.371586, -0.922504,
		0.960981, 0.276602, 0.002602,
		0.256133, -0.886237, -0.385980,
		17.409290, 21.302794, 7.986978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.635311, 22.221411, 8.633712>,  <17.229998, 21.923159, 8.257164>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.635311, 22.221411, 8.633712> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.390804, 22.527969, 8.554729>,  <16.244101, 22.711905, 8.507339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.390804, 22.527969, 8.554729>,  <16.635311, 22.221411, 8.633712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.390804, 22.527969, 8.554729> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084615, 0.311354, 0.946520,
		0.786886, 0.561871, -0.255170,
		-0.611269, 0.766394, -0.197457,
		16.207424, 22.757887, 8.495491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.946564, 22.884876, 8.966454>,  <16.635311, 22.221411, 8.633712>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.946564, 22.884876, 8.966454> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.549728, 22.869144, 8.918758>,  <16.311628, 22.859705, 8.890141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.549728, 22.869144, 8.918758>,  <16.946564, 22.884876, 8.966454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.549728, 22.869144, 8.918758> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124956, 0.216459, 0.968262,
		-0.012269, 0.975499, -0.219660,
		-0.992086, -0.039327, -0.119238,
		16.252102, 22.857346, 8.882987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.619091, 23.495813, 9.146214>,  <16.946564, 22.884876, 8.966454>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.619091, 23.495813, 9.146214> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.323967, 23.229095, 9.188205>,  <16.146893, 23.069065, 9.213400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.323967, 23.229095, 9.188205>,  <16.619091, 23.495813, 9.146214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.323967, 23.229095, 9.188205> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129508, 0.292466, 0.947466,
		-0.662469, 0.685454, -0.302139,
		-0.737809, -0.666796, 0.104978,
		16.102625, 23.029057, 9.219698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.205750, 23.873034, 9.540920>,  <16.619091, 23.495813, 9.146214>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.205750, 23.873034, 9.540920> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.096130, 23.490490, 9.581458>,  <16.030359, 23.260963, 9.605781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.096130, 23.490490, 9.581458>,  <16.205750, 23.873034, 9.540920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.096130, 23.490490, 9.581458> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305155, 0.186405, 0.933881,
		-0.912018, 0.225004, -0.342922,
		-0.274050, -0.956361, 0.101344,
		16.013916, 23.203581, 9.611861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.577168, 23.799887, 9.952219>,  <16.205750, 23.873034, 9.540920>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.577168, 23.799887, 9.952219> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.733926, 23.433643, 9.988174>,  <15.827980, 23.213898, 10.009748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.733926, 23.433643, 9.988174>,  <15.577168, 23.799887, 9.952219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.733926, 23.433643, 9.988174> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054817, 0.074291, 0.995729,
		-0.918376, -0.395147, -0.021077,
		0.391893, -0.915609, 0.089888,
		15.851494, 23.158960, 10.015141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.338781, 23.582788, 10.542457>,  <15.577168, 23.799887, 9.952219>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.338781, 23.582788, 10.542457> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.619376, 23.299999, 10.506441>,  <15.787733, 23.130325, 10.484832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.619376, 23.299999, 10.506441>,  <15.338781, 23.582788, 10.542457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.619376, 23.299999, 10.506441> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123057, -0.004287, 0.992390,
		-0.701978, -0.707229, 0.083990,
		0.701487, -0.706972, -0.090039,
		15.829823, 23.087908, 10.479429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.180378, 22.945887, 10.944817>,  <15.338781, 23.582788, 10.542457>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.180378, 22.945887, 10.944817> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.576362, 22.943314, 10.888335>,  <15.813951, 22.941769, 10.854446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.576362, 22.943314, 10.888335>,  <15.180378, 22.945887, 10.944817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.576362, 22.943314, 10.888335> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135144, -0.249684, 0.958850,
		-0.041425, -0.968306, -0.246307,
		0.989960, -0.006434, -0.141204,
		15.873349, 22.941383, 10.845974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.296820, 22.498308, 11.407957>,  <15.180378, 22.945887, 10.944817>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.296820, 22.498308, 11.407957> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.651122, 22.668350, 11.333422>,  <15.863704, 22.770374, 11.288700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.651122, 22.668350, 11.333422>,  <15.296820, 22.498308, 11.407957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.651122, 22.668350, 11.333422> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219629, -0.030196, 0.975116,
		0.408900, -0.904641, -0.120111,
		0.885756, 0.425104, -0.186338,
		15.916849, 22.795881, 11.277520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.708235, 22.136692, 11.865685>,  <15.296820, 22.498308, 11.407957>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.708235, 22.136692, 11.865685> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.898877, 22.474884, 11.769347>,  <16.013264, 22.677799, 11.711544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.898877, 22.474884, 11.769347>,  <15.708235, 22.136692, 11.865685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.898877, 22.474884, 11.769347> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363472, 0.059937, 0.929675,
		0.800459, -0.530630, -0.278742,
		0.476607, 0.845482, -0.240846,
		16.041859, 22.728529, 11.697093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.368652, 22.130510, 12.279935>,  <15.708235, 22.136692, 11.865685>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.368652, 22.130510, 12.279935> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.292953, 22.510281, 12.179715>,  <16.247534, 22.738142, 12.119583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.292953, 22.510281, 12.179715>,  <16.368652, 22.130510, 12.279935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.292953, 22.510281, 12.179715> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343756, 0.303073, 0.888807,
		0.919792, 0.082076, -0.383727,
		-0.189247, 0.949426, -0.250550,
		16.236179, 22.795109, 12.104550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.924343, 22.528278, 12.510479>,  <16.368652, 22.130510, 12.279935>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.924343, 22.528278, 12.510479> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.624348, 22.790218, 12.473204>,  <16.444349, 22.947382, 12.450838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.624348, 22.790218, 12.473204>,  <16.924343, 22.528278, 12.510479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.624348, 22.790218, 12.473204> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211530, 0.370940, 0.904245,
		0.626713, 0.658463, -0.416722,
		-0.749990, 0.654851, -0.093189,
		16.399351, 22.986673, 12.445247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.220469, 23.138502, 12.715117>,  <16.924343, 22.528278, 12.510479>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.220469, 23.138502, 12.715117> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.834190, 23.237812, 12.745570>,  <16.602425, 23.297398, 12.763842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.834190, 23.237812, 12.745570>,  <17.220469, 23.138502, 12.715117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.834190, 23.237812, 12.745570> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165334, 0.361745, 0.917499,
		0.200251, 0.898611, -0.390383,
		-0.965694, 0.248274, 0.076132,
		16.544483, 23.312294, 12.768410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.173054, 23.930765, 12.818663>,  <17.220469, 23.138502, 12.715117>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.173054, 23.930765, 12.818663> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.848618, 23.747269, 12.963820>,  <16.653955, 23.637171, 13.050914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.848618, 23.747269, 12.963820>,  <17.173054, 23.930765, 12.818663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.848618, 23.747269, 12.963820> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131074, 0.462085, 0.877096,
		-0.570047, 0.758969, -0.314663,
		-0.811089, -0.458742, 0.362891,
		16.605291, 23.609646, 13.072687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.898691, 24.474838, 13.199970>,  <17.173054, 23.930765, 12.818663>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.898691, 24.474838, 13.199970> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.746616, 24.129166, 13.331820>,  <16.655371, 23.921762, 13.410929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.746616, 24.129166, 13.331820>,  <16.898691, 24.474838, 13.199970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.746616, 24.129166, 13.331820> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016446, 0.350012, 0.936601,
		-0.924764, 0.361504, -0.118857,
		-0.380187, -0.864180, 0.329624,
		16.632561, 23.869911, 13.430707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.370949, 24.673906, 13.752565>,  <16.898691, 24.474838, 13.199970>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.370949, 24.673906, 13.752565> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.426548, 24.282440, 13.813084>,  <16.459908, 24.047560, 13.849395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.426548, 24.282440, 13.813084>,  <16.370949, 24.673906, 13.752565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.426548, 24.282440, 13.813084> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173339, 0.126376, 0.976720,
		-0.975004, -0.161989, -0.152075,
		0.138999, -0.978667, 0.151296,
		16.468248, 23.988840, 13.858473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.917139, 24.468227, 14.337359>,  <16.370949, 24.673906, 13.752565>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.917139, 24.468227, 14.337359> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.193100, 24.178680, 14.334566>,  <16.358677, 24.004951, 14.332891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.193100, 24.178680, 14.334566>,  <15.917139, 24.468227, 14.337359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.193100, 24.178680, 14.334566> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047851, -0.055226, 0.997327,
		-0.722320, -0.687723, -0.072738,
		0.689901, -0.723870, -0.006982,
		16.400070, 23.961519, 14.332472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.707861, 24.067368, 14.866960>,  <15.917139, 24.468227, 14.337359>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.707861, 24.067368, 14.866960> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.077915, 23.920216, 14.829458>,  <16.299948, 23.831924, 14.806957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.077915, 23.920216, 14.829458>,  <15.707861, 24.067368, 14.866960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.077915, 23.920216, 14.829458> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052628, -0.120292, 0.991343,
		-0.375971, -0.922061, -0.091925,
		0.925136, -0.367878, -0.093753,
		16.355455, 23.809853, 14.801332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.752293, 23.277494, 15.143014>,  <15.707861, 24.067368, 14.866960>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.752293, 23.277494, 15.143014> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.115250, 23.443954, 15.166536>,  <16.333023, 23.543831, 15.180650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.115250, 23.443954, 15.166536>,  <15.752293, 23.277494, 15.143014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.115250, 23.443954, 15.166536> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045837, -0.237071, 0.970410,
		0.417779, -0.877847, -0.234192,
		0.907392, 0.416151, 0.058805,
		16.387466, 23.568800, 15.184177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.182915, 22.908058, 15.602067>,  <15.752293, 23.277494, 15.143014>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.182915, 22.908058, 15.602067> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.411873, 23.235760, 15.588284>,  <16.549248, 23.432381, 15.580013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.411873, 23.235760, 15.588284>,  <16.182915, 22.908058, 15.602067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.411873, 23.235760, 15.588284> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171901, -0.078801, 0.981957,
		0.801756, -0.567992, -0.185936,
		0.572396, 0.819253, -0.034459,
		16.583591, 23.481535, 15.577946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.817673, 22.744789, 15.974114>,  <16.182915, 22.908058, 15.602067>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.817673, 22.744789, 15.974114> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.778675, 23.142822, 15.967083>,  <16.755276, 23.381641, 15.962864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.778675, 23.142822, 15.967083>,  <16.817673, 22.744789, 15.974114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.778675, 23.142822, 15.967083> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229274, 0.039643, 0.972554,
		0.968467, 0.090788, -0.232011,
		-0.097494, 0.995081, -0.017578,
		16.749428, 23.441347, 15.961810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.325987, 22.882469, 16.343491>,  <16.817673, 22.744789, 15.974114>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.325987, 22.882469, 16.343491> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.102608, 23.214279, 16.345539>,  <16.968580, 23.413364, 16.346769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.102608, 23.214279, 16.345539>,  <17.325987, 22.882469, 16.343491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.102608, 23.214279, 16.345539> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157690, 0.100093, 0.982403,
		0.814413, 0.549430, -0.186704,
		-0.558449, 0.829523, 0.005122,
		16.935074, 23.463137, 16.347076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.676546, 23.360275, 16.615545>,  <17.325987, 22.882469, 16.343491>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.676546, 23.360275, 16.615545> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.316883, 23.530186, 16.657652>,  <17.101086, 23.632132, 16.682917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.316883, 23.530186, 16.657652>,  <17.676546, 23.360275, 16.615545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.316883, 23.530186, 16.657652> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221097, 0.233347, 0.946924,
		0.377665, 0.874709, -0.303732,
		-0.899158, 0.424774, 0.105268,
		17.047136, 23.657618, 16.689232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.725475, 24.010365, 16.946325>,  <17.676546, 23.360275, 16.615545>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.725475, 24.010365, 16.946325> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.354256, 23.878368, 17.015417>,  <17.131525, 23.799171, 17.056871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.354256, 23.878368, 17.015417>,  <17.725475, 24.010365, 16.946325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.354256, 23.878368, 17.015417> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127686, 0.153778, 0.979821,
		-0.349892, 0.931375, -0.100578,
		-0.928047, -0.329989, 0.172729,
		17.075842, 23.779371, 17.067236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.378958, 24.503687, 17.421083>,  <17.725475, 24.010365, 16.946325>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.378958, 24.503687, 17.421083> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.156868, 24.172142, 17.448555>,  <17.023615, 23.973215, 17.465038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.156868, 24.172142, 17.448555>,  <17.378958, 24.503687, 17.421083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.156868, 24.172142, 17.448555> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009287, 0.076391, 0.997035,
		-0.831650, 0.554214, -0.034717,
		-0.555222, -0.828861, 0.068678,
		16.990301, 23.923483, 17.469158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.856285, 24.642132, 18.004656>,  <17.378958, 24.503687, 17.421083>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.856285, 24.642132, 18.004656> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.892033, 24.246178, 17.960579>,  <16.913481, 24.008606, 17.934134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.892033, 24.246178, 17.960579>,  <16.856285, 24.642132, 18.004656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.892033, 24.246178, 17.960579> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051775, -0.115102, 0.992003,
		-0.994652, -0.082948, -0.061538,
		0.089368, -0.989884, -0.110192,
		16.918842, 23.949213, 17.927521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.304850, 24.345539, 18.223225>,  <16.856285, 24.642132, 18.004656>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.304850, 24.345539, 18.223225> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.562313, 24.041431, 18.258308>,  <16.716791, 23.858967, 18.279358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.562313, 24.041431, 18.258308>,  <16.304850, 24.345539, 18.223225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.562313, 24.041431, 18.258308> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340935, -0.182244, 0.922253,
		-0.685177, -0.623519, -0.376506,
		0.643658, -0.760271, 0.087710,
		16.755411, 23.813351, 18.284622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.919704, 23.868467, 18.541355>,  <16.304850, 24.345539, 18.223225>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.919704, 23.868467, 18.541355> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.295376, 23.735310, 18.575123>,  <16.520779, 23.655415, 18.595385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.295376, 23.735310, 18.575123>,  <15.919704, 23.868467, 18.541355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.295376, 23.735310, 18.575123> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081587, 0.022510, 0.996412,
		-0.333601, -0.942695, -0.006019,
		0.939177, -0.332895, 0.084421,
		16.577129, 23.635441, 18.600449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.945212, 23.216217, 18.914141>,  <15.919704, 23.868467, 18.541355>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.945212, 23.216217, 18.914141> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.310249, 23.370674, 18.967909>,  <16.529272, 23.463348, 19.000170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.310249, 23.370674, 18.967909>,  <15.945212, 23.216217, 18.914141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.310249, 23.370674, 18.967909> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164031, 0.044620, 0.985446,
		0.374523, -0.921360, 0.104059,
		0.912593, 0.386141, 0.134420,
		16.584028, 23.486517, 19.008236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.552731, 22.589573, 18.914467>,  <15.945212, 23.216217, 18.914141>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.552731, 22.589573, 18.914467> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.187163, 22.437416, 18.971113>,  <14.967823, 22.346123, 19.005100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.187163, 22.437416, 18.971113>,  <15.552731, 22.589573, 18.914467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.187163, 22.437416, 18.971113> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135179, -0.043734, -0.989856,
		0.382726, -0.923791, -0.011451,
		-0.913919, -0.380392, 0.141615,
		14.912988, 22.323299, 19.013597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.470243, 21.988110, 18.407063>,  <15.552731, 22.589573, 18.914467>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.470243, 21.988110, 18.407063> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.115687, 22.150669, 18.495745>,  <14.902954, 22.248205, 18.548954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.115687, 22.150669, 18.495745>,  <15.470243, 21.988110, 18.407063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.115687, 22.150669, 18.495745> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293570, -0.123146, -0.947972,
		-0.357951, -0.905359, 0.228462,
		-0.886390, 0.406398, 0.221707,
		14.849771, 22.272589, 18.562256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.016314, 21.522242, 18.042255>,  <15.470243, 21.988110, 18.407063>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.016314, 21.522242, 18.042255> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.791772, 21.843822, 18.120781>,  <14.657046, 22.036772, 18.167896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.791772, 21.843822, 18.120781>,  <15.016314, 21.522242, 18.042255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.791772, 21.843822, 18.120781> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498181, -0.138856, -0.855882,
		-0.660830, -0.578255, 0.478462,
		-0.561355, 0.803953, 0.196315,
		14.623365, 22.085009, 18.179676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.264937, 21.382879, 18.019814>,  <15.016314, 21.522242, 18.042255>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.264937, 21.382879, 18.019814> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.316566, 21.770050, 17.933594>,  <14.347543, 22.002352, 17.881863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.316566, 21.770050, 17.933594>,  <14.264937, 21.382879, 18.019814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.316566, 21.770050, 17.933594> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343675, -0.160233, -0.925318,
		-0.930176, 0.193511, 0.311970,
		0.129071, 0.967925, -0.215550,
		14.355287, 22.060427, 17.868929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.667692, 21.552767, 17.527670>,  <14.264937, 21.382879, 18.019814>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.667692, 21.552767, 17.527670> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.902751, 21.874081, 17.488878>,  <14.043786, 22.066870, 17.465603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.902751, 21.874081, 17.488878>,  <13.667692, 21.552767, 17.527670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.902751, 21.874081, 17.488878> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097094, -0.048985, -0.994069,
		-0.803271, 0.593578, 0.049208,
		0.587647, 0.803284, -0.096981,
		14.079045, 22.115067, 17.459784>
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
