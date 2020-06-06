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
	<22.538145, 17.185085, -1.707218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.372097, 16.956741, -1.990568>,  <22.272469, 16.819735, -2.160578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.372097, 16.956741, -1.990568>,  <22.538145, 17.185085, -1.707218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.372097, 16.956741, -1.990568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895959, -0.121380, -0.427230,
		0.157907, -0.812025, 0.561855,
		-0.415119, -0.570861, -0.708374,
		22.247561, 16.785482, -2.203080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.781803, 16.419611, -1.632333>,  <22.538145, 17.185085, -1.707218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.781803, 16.419611, -1.632333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.678707, 16.535717, -2.000967>,  <22.616850, 16.605381, -2.222147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.678707, 16.535717, -2.000967>,  <22.781803, 16.419611, -1.632333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.678707, 16.535717, -2.000967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944445, -0.125644, -0.303705,
		-0.203946, -0.948662, -0.241756,
		-0.257738, 0.290265, -0.921584,
		22.601385, 16.622797, -2.277442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.029118, 15.874253, -2.086355>,  <22.781803, 16.419611, -1.632333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.029118, 15.874253, -2.086355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.999435, 16.232716, -2.261352>,  <22.981627, 16.447794, -2.366349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.999435, 16.232716, -2.261352>,  <23.029118, 15.874253, -2.086355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.999435, 16.232716, -2.261352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942924, -0.079761, -0.323315,
		-0.324635, -0.436512, -0.839089,
		-0.074204, 0.896156, -0.437490,
		22.977175, 16.501562, -2.392599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.412060, 15.873125, -2.704482>,  <23.029118, 15.874253, -2.086355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.412060, 15.873125, -2.704482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.392681, 16.256016, -2.590379>,  <23.381054, 16.485750, -2.521918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.392681, 16.256016, -2.590379>,  <23.412060, 15.873125, -2.704482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.392681, 16.256016, -2.590379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898719, 0.166396, -0.405730,
		-0.435840, 0.236710, -0.868338,
		-0.048448, 0.957226, 0.285257,
		23.378147, 16.543184, -2.504802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.785027, 15.481327, -2.836748>,  <23.412060, 15.873125, -2.704482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.785027, 15.481327, -2.836748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.403137, 15.594307, -2.799380>,  <22.174004, 15.662095, -2.776959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.403137, 15.594307, -2.799380>,  <22.785027, 15.481327, -2.836748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.403137, 15.594307, -2.799380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295079, 0.859102, 0.418178,
		0.037856, 0.426811, -0.903548,
		-0.954723, 0.282449, 0.093421,
		22.116720, 15.679042, -2.771354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.996397, 15.008653, -2.246311>,  <22.785027, 15.481327, -2.836748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.996397, 15.008653, -2.246311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.008862, 14.810463, -1.899086>,  <23.016340, 14.691549, -1.690751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.008862, 14.810463, -1.899086>,  <22.996397, 15.008653, -2.246311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.008862, 14.810463, -1.899086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137879, 0.862313, 0.487243,
		-0.989959, 0.104505, 0.095187,
		0.031161, -0.495475, 0.868063,
		23.018209, 14.661820, -1.638667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.453678, 15.190469, -1.857517>,  <22.996397, 15.008653, -2.246311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.453678, 15.190469, -1.857517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.772972, 15.094559, -1.636490>,  <22.964548, 15.037013, -1.503874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.772972, 15.094559, -1.636490>,  <22.453678, 15.190469, -1.857517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.772972, 15.094559, -1.636490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017239, 0.926074, 0.376948,
		-0.602100, -0.291367, 0.743358,
		0.798235, -0.239776, 0.552566,
		23.012442, 15.022626, -1.470721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.359318, 15.640561, -1.260666>,  <22.453678, 15.190469, -1.857517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.359318, 15.640561, -1.260666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.749104, 15.551437, -1.271795>,  <22.982975, 15.497963, -1.278473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.749104, 15.551437, -1.271795>,  <22.359318, 15.640561, -1.260666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.749104, 15.551437, -1.271795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221936, 0.936921, 0.270044,
		-0.034100, -0.269323, 0.962446,
		0.974465, -0.222810, -0.027823,
		23.041443, 15.484594, -1.280142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.939339, 16.286295, -1.366083>,  <22.359318, 15.640561, -1.260666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.939339, 16.286295, -1.366083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.210384, 16.578194, -1.329624>,  <22.373013, 16.753332, -1.307749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.210384, 16.578194, -1.329624>,  <21.939339, 16.286295, -1.366083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.210384, 16.578194, -1.329624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735417, 0.672471, 0.083335,
		-0.000481, -0.123500, 0.992344,
		0.677615, 0.729747, 0.091147,
		22.413670, 16.797117, -1.302280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.802591, 16.665037, -0.793854>,  <21.939339, 16.286295, -1.366083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.802591, 16.665037, -0.793854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.995895, 16.908428, -1.045638>,  <22.111877, 17.054462, -1.196708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.995895, 16.908428, -1.045638>,  <21.802591, 16.665037, -0.793854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.995895, 16.908428, -1.045638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700298, 0.700153, 0.139169,
		0.525398, 0.373554, 0.764470,
		0.483259, 0.608476, -0.629459,
		22.140873, 17.090971, -1.234476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.900246, 17.347548, -0.398650>,  <21.802591, 16.665037, -0.793854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.900246, 17.347548, -0.398650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.853416, 17.383831, -0.794238>,  <21.825319, 17.405602, -1.031592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.853416, 17.383831, -0.794238>,  <21.900246, 17.347548, -0.398650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.853416, 17.383831, -0.794238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632066, 0.761294, 0.144651,
		0.766020, 0.642030, -0.031793,
		-0.117074, 0.090710, -0.988972,
		21.818295, 17.411043, -1.090930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.056313, 18.144529, -0.635346>,  <21.900246, 17.347548, -0.398650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.056313, 18.144529, -0.635346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.785404, 17.937542, -0.844546>,  <21.622858, 17.813351, -0.970066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.785404, 17.937542, -0.844546>,  <22.056313, 18.144529, -0.635346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.785404, 17.937542, -0.844546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613624, 0.789483, 0.013500,
		0.405914, 0.330069, -0.852225,
		-0.677273, -0.517467, -0.523001,
		21.582222, 17.782303, -1.001446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.778843, 18.609919, -1.232033>,  <22.056313, 18.144529, -0.635346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.778843, 18.609919, -1.232033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.537346, 18.312683, -1.116575>,  <21.392448, 18.134342, -1.047300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.537346, 18.312683, -1.116575>,  <21.778843, 18.609919, -1.232033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.537346, 18.312683, -1.116575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761830, 0.644448, 0.065597,
		-0.234762, -0.180296, -0.955186,
		-0.603740, -0.743088, 0.288647,
		21.356224, 18.089756, -1.029981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.147617, 18.604095, -1.711674>,  <21.778843, 18.609919, -1.232033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.147617, 18.604095, -1.711674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.067780, 18.450691, -1.350989>,  <21.019876, 18.358648, -1.134578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.067780, 18.450691, -1.350989>,  <21.147617, 18.604095, -1.711674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.067780, 18.450691, -1.350989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829116, 0.556541, 0.053180,
		-0.522234, -0.737009, -0.429056,
		-0.199593, -0.383509, 0.901711,
		21.007902, 18.335638, -1.080476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.514181, 18.349743, -1.886151>,  <21.147617, 18.604095, -1.711674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.514181, 18.349743, -1.886151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.579437, 18.449429, -1.504308>,  <20.618591, 18.509239, -1.275202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.579437, 18.449429, -1.504308>,  <20.514181, 18.349743, -1.886151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.579437, 18.449429, -1.504308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.868653, 0.495049, 0.019210,
		-0.467791, -0.832357, 0.297242,
		0.163139, 0.249214, 0.954609,
		20.628380, 18.524193, -1.217925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.945499, 18.433249, -1.571973>,  <20.514181, 18.349743, -1.886151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.945499, 18.433249, -1.571973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.121376, 18.628464, -1.270380>,  <20.226902, 18.745592, -1.089424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.121376, 18.628464, -1.270380>,  <19.945499, 18.433249, -1.571973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.121376, 18.628464, -1.270380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802823, 0.589935, 0.086321,
		-0.402673, -0.643270, 0.651197,
		0.439692, 0.488037, 0.753983,
		20.253284, 18.774876, -1.044185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.590435, 19.053520, -1.439700>,  <19.945499, 18.433249, -1.571973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.590435, 19.053520, -1.439700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.781693, 19.043129, -1.088541>,  <19.896446, 19.036894, -0.877846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.781693, 19.043129, -1.088541>,  <19.590435, 19.053520, -1.439700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.781693, 19.043129, -1.088541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508484, 0.806816, 0.300817,
		-0.716116, -0.590231, 0.372566,
		0.478144, -0.025976, 0.877897,
		19.925137, 19.035336, -0.825172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.254358, 19.531349, -1.052698>,  <19.590435, 19.053520, -1.439700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.254358, 19.531349, -1.052698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.560352, 19.444077, -0.810312>,  <19.743948, 19.391712, -0.664880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.560352, 19.444077, -0.810312>,  <19.254358, 19.531349, -1.052698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.560352, 19.444077, -0.810312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237226, 0.779266, 0.580059,
		-0.598767, -0.587487, 0.544369,
		0.764986, -0.218181, 0.605966,
		19.789848, 19.378622, -0.628522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.109324, 19.948185, -0.511480>,  <19.254358, 19.531349, -1.052698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.109324, 19.948185, -0.511480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.478283, 19.824417, -0.419015>,  <19.699659, 19.750156, -0.363536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.478283, 19.824417, -0.419015>,  <19.109324, 19.948185, -0.511480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.478283, 19.824417, -0.419015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016736, 0.565922, 0.824289,
		-0.385873, -0.764193, 0.516828,
		0.922400, -0.309421, 0.231164,
		19.755003, 19.731590, -0.349666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.829849, 19.616226, 0.119179>,  <19.109324, 19.948185, -0.511480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.829849, 19.616226, 0.119179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.200817, 19.765209, 0.105497>,  <19.423397, 19.854599, 0.097287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.200817, 19.765209, 0.105497>,  <18.829849, 19.616226, 0.119179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.200817, 19.765209, 0.105497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193762, 0.556662, 0.807826,
		0.319920, -0.742566, 0.588427,
		0.927420, 0.372455, -0.034207,
		19.479042, 19.876945, 0.095235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.180599, 19.443867, 0.737183>,  <18.829849, 19.616226, 0.119179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.180599, 19.443867, 0.737183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.326057, 19.780998, 0.578490>,  <19.413332, 19.983278, 0.483273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.326057, 19.780998, 0.578490>,  <19.180599, 19.443867, 0.737183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.326057, 19.780998, 0.578490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178333, 0.481002, 0.858391,
		0.914307, -0.241400, 0.325219,
		0.363647, 0.842830, -0.396734,
		19.435152, 20.033848, 0.459469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.731041, 19.775366, 1.084115>,  <19.180599, 19.443867, 0.737183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.731041, 19.775366, 1.084115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.480152, 20.038666, 0.917597>,  <19.329618, 20.196646, 0.817687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.480152, 20.038666, 0.917597>,  <19.731041, 19.775366, 1.084115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.480152, 20.038666, 0.917597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245643, 0.340030, 0.907766,
		0.739088, 0.671631, -0.051581,
		-0.627223, 0.658249, -0.416294,
		19.291985, 20.236141, 0.792709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.950462, 20.399254, 1.187283>,  <19.731041, 19.775366, 1.084115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.950462, 20.399254, 1.187283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.553436, 20.436028, 1.155384>,  <19.315220, 20.458092, 1.136244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.553436, 20.436028, 1.155384>,  <19.950462, 20.399254, 1.187283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.553436, 20.436028, 1.155384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043682, 0.342491, 0.938505,
		0.113594, 0.935012, -0.335930,
		-0.992567, 0.091934, -0.079748,
		19.255667, 20.463608, 1.131459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.816206, 21.004951, 1.566221>,  <19.950462, 20.399254, 1.187283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.816206, 21.004951, 1.566221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.486965, 20.779148, 1.541453>,  <19.289421, 20.643665, 1.526592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.486965, 20.779148, 1.541453>,  <19.816206, 21.004951, 1.566221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.486965, 20.779148, 1.541453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084187, 0.013461, 0.996359,
		-0.561621, 0.825316, -0.058604,
		-0.823100, -0.564510, -0.061921,
		19.240036, 20.609795, 1.522877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.225199, 21.356134, 1.876877>,  <19.816206, 21.004951, 1.566221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.225199, 21.356134, 1.876877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.177650, 20.960400, 1.910547>,  <19.149120, 20.722960, 1.930749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.177650, 20.960400, 1.910547>,  <19.225199, 21.356134, 1.876877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.177650, 20.960400, 1.910547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101564, 0.072217, 0.992204,
		-0.987701, 0.126495, 0.091896,
		-0.118873, -0.989335, 0.084176,
		19.141989, 20.663599, 1.935800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.610241, 21.102684, 2.314235>,  <19.225199, 21.356134, 1.876877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.610241, 21.102684, 2.314235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.935818, 20.870388, 2.308015>,  <19.131163, 20.731010, 2.304283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.935818, 20.870388, 2.308015>,  <18.610241, 21.102684, 2.314235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.935818, 20.870388, 2.308015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092224, 0.102738, 0.990424,
		-0.573581, -0.807580, 0.137181,
		0.813941, -0.580740, -0.015550,
		19.180000, 20.696167, 2.303350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.592123, 20.613358, 2.936488>,  <18.610241, 21.102684, 2.314235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.592123, 20.613358, 2.936488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.977776, 20.639301, 2.833538>,  <19.209167, 20.654867, 2.771768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.977776, 20.639301, 2.833538>,  <18.592123, 20.613358, 2.936488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.977776, 20.639301, 2.833538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264673, -0.162125, 0.950613,
		0.019929, -0.984636, -0.173476,
		0.964132, 0.064859, -0.257375,
		19.267015, 20.658758, 2.756325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.899099, 19.984356, 3.124032>,  <18.592123, 20.613358, 2.936488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.899099, 19.984356, 3.124032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.158295, 20.289001, 3.126913>,  <19.313812, 20.471788, 3.128642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.158295, 20.289001, 3.126913>,  <18.899099, 19.984356, 3.124032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.158295, 20.289001, 3.126913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200523, -0.179714, 0.963065,
		0.734779, -0.622611, -0.269174,
		0.647989, 0.761616, 0.007203,
		19.352692, 20.517487, 3.129074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.620090, 19.849829, 3.366159>,  <18.899099, 19.984356, 3.124032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.620090, 19.849829, 3.366159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.514782, 20.225315, 3.455154>,  <19.451597, 20.450607, 3.508551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.514782, 20.225315, 3.455154>,  <19.620090, 19.849829, 3.366159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.514782, 20.225315, 3.455154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138656, -0.191411, 0.971667,
		0.954705, 0.286663, -0.079765,
		-0.263273, 0.938715, 0.222488,
		19.435801, 20.506929, 3.521901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.247738, 20.128082, 3.756818>,  <19.620090, 19.849829, 3.366159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.247738, 20.128082, 3.756818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.887161, 20.275352, 3.847902>,  <19.670816, 20.363714, 3.902553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.887161, 20.275352, 3.847902>,  <20.247738, 20.128082, 3.756818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.887161, 20.275352, 3.847902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236324, -0.022192, 0.971421,
		0.362708, 0.929491, -0.067005,
		-0.901440, 0.368177, 0.227710,
		19.616730, 20.385805, 3.916215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.294241, 20.765097, 4.114585>,  <20.247738, 20.128082, 3.756818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.294241, 20.765097, 4.114585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.952633, 20.582073, 4.213614>,  <19.747669, 20.472260, 4.273032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.952633, 20.582073, 4.213614>,  <20.294241, 20.765097, 4.114585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.952633, 20.582073, 4.213614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237447, 0.080599, 0.968051,
		-0.462896, 0.885518, 0.039814,
		-0.854018, -0.457560, 0.247573,
		19.696428, 20.444805, 4.287886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.725410, 21.214937, 4.549605>,  <20.294241, 20.765097, 4.114585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.725410, 21.214937, 4.549605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.734722, 20.820705, 4.616642>,  <19.740309, 20.584166, 4.656864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.734722, 20.820705, 4.616642>,  <19.725410, 21.214937, 4.549605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.734722, 20.820705, 4.616642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058095, 0.168687, 0.983956,
		-0.998040, -0.013170, 0.061184,
		0.023280, -0.985582, 0.167591,
		19.741707, 20.525030, 4.666919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.108521, 20.825335, 4.172534>,  <19.725410, 21.214937, 4.549605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.108521, 20.825335, 4.172534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.928532, 20.478088, 4.256345>,  <18.820538, 20.269741, 4.306632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.928532, 20.478088, 4.256345>,  <19.108521, 20.825335, 4.172534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.928532, 20.478088, 4.256345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196981, 0.132362, 0.971431,
		-0.871046, 0.478392, 0.111442,
		-0.449974, -0.868113, 0.209528,
		18.793539, 20.217655, 4.319203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.555271, 20.810322, 4.669600>,  <19.108521, 20.825335, 4.172534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.555271, 20.810322, 4.669600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.726582, 20.449516, 4.691325>,  <18.829367, 20.233032, 4.704360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.726582, 20.449516, 4.691325>,  <18.555271, 20.810322, 4.669600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.726582, 20.449516, 4.691325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325784, 0.210185, 0.921785,
		-0.842880, -0.377082, 0.383878,
		0.428274, -0.902015, 0.054313,
		18.855064, 20.178911, 4.707619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.263754, 21.189493, 5.245901>,  <18.555271, 20.810322, 4.669600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.263754, 21.189493, 5.245901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.403595, 21.510544, 5.052584>,  <18.487499, 21.703175, 4.936594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.403595, 21.510544, 5.052584>,  <18.263754, 21.189493, 5.245901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.403595, 21.510544, 5.052584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801241, 0.011221, 0.598236,
		0.485583, -0.596378, -0.639173,
		0.349603, 0.802625, -0.483292,
		18.508476, 21.751331, 4.907596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.958120, 21.246840, 5.078275>,  <18.263754, 21.189493, 5.245901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.958120, 21.246840, 5.078275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.826405, 21.603752, 5.201823>,  <18.747375, 21.817900, 5.275952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.826405, 21.603752, 5.201823>,  <18.958120, 21.246840, 5.078275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.826405, 21.603752, 5.201823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675205, -0.006146, 0.737604,
		0.660049, 0.451438, -0.600450,
		-0.329292, 0.892282, 0.308870,
		18.727617, 21.871437, 5.294484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.500870, 21.536358, 5.388358>,  <18.958120, 21.246840, 5.078275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.500870, 21.536358, 5.388358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.253044, 21.835018, 5.485233>,  <19.104349, 22.014214, 5.543359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.253044, 21.835018, 5.485233>,  <19.500870, 21.536358, 5.388358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.253044, 21.835018, 5.485233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647167, 0.311288, 0.695899,
		0.444201, 0.587891, -0.676069,
		-0.619565, 0.746648, 0.242190,
		19.067175, 22.059013, 5.557890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.946587, 22.117451, 5.473942>,  <19.500870, 21.536358, 5.388358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.946587, 22.117451, 5.473942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.607235, 22.160240, 5.681330>,  <19.403624, 22.185913, 5.805762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.607235, 22.160240, 5.681330>,  <19.946587, 22.117451, 5.473942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.607235, 22.160240, 5.681330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528417, 0.111798, 0.841592,
		0.032063, 0.987956, -0.151374,
		-0.848379, 0.106973, 0.518468,
		19.352720, 22.192331, 5.836870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.960106, 22.734989, 5.981458>,  <19.946587, 22.117451, 5.473942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.960106, 22.734989, 5.981458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.702797, 22.475212, 6.143654>,  <19.548412, 22.319345, 6.240972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.702797, 22.475212, 6.143654>,  <19.960106, 22.734989, 5.981458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.702797, 22.475212, 6.143654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391603, 0.176010, 0.903143,
		-0.657911, 0.739759, 0.141102,
		-0.643273, -0.649444, 0.405491,
		19.509815, 22.280378, 6.265301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.573336, 23.084133, 6.502382>,  <19.960106, 22.734989, 5.981458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.573336, 23.084133, 6.502382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.561047, 22.694103, 6.590275>,  <19.553673, 22.460085, 6.643010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.561047, 22.694103, 6.590275>,  <19.573336, 23.084133, 6.502382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.561047, 22.694103, 6.590275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231207, 0.206939, 0.950642,
		-0.972419, 0.080012, 0.219086,
		-0.030725, -0.975076, 0.219731,
		19.551828, 22.401581, 6.656194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.510281, 23.182144, 7.223783>,  <19.573336, 23.084133, 6.502382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.510281, 23.182144, 7.223783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.548416, 22.785061, 7.194288>,  <19.571297, 22.546810, 7.176591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.548416, 22.785061, 7.194288>,  <19.510281, 23.182144, 7.223783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.548416, 22.785061, 7.194288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278441, -0.044524, 0.959421,
		-0.955710, -0.111999, 0.272167,
		0.095337, -0.992710, -0.073737,
		19.577017, 22.487247, 7.172167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.278732, 22.876059, 7.892884>,  <19.510281, 23.182144, 7.223783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.278732, 22.876059, 7.892884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.516422, 22.591549, 7.742692>,  <19.659037, 22.420843, 7.652577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.516422, 22.591549, 7.742692>,  <19.278732, 22.876059, 7.892884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.516422, 22.591549, 7.742692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398182, -0.145461, 0.905700,
		-0.698818, -0.687699, 0.196780,
		0.594225, -0.711274, -0.375480,
		19.694691, 22.378166, 7.630048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.194620, 22.353098, 8.285938>,  <19.278732, 22.876059, 7.892884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.194620, 22.353098, 8.285938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.553429, 22.312588, 8.113848>,  <19.768713, 22.288280, 8.010593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.553429, 22.312588, 8.113848>,  <19.194620, 22.353098, 8.285938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.553429, 22.312588, 8.113848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425404, -0.066296, 0.902572,
		-0.119937, -0.992646, -0.016383,
		0.897021, -0.101282, -0.430227,
		19.822535, 22.282206, 7.984780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.501154, 21.771448, 8.614476>,  <19.194620, 22.353098, 8.285938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.501154, 21.771448, 8.614476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.801651, 21.997528, 8.478135>,  <19.981949, 22.133177, 8.396330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.801651, 21.997528, 8.478135>,  <19.501154, 21.771448, 8.614476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.801651, 21.997528, 8.478135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398293, 0.023588, 0.916955,
		0.526304, -0.824616, -0.207395,
		0.751244, 0.565201, -0.340853,
		20.027023, 22.167088, 8.375879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.055603, 21.377346, 8.770423>,  <19.501154, 21.771448, 8.614476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.055603, 21.377346, 8.770423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.212894, 21.735390, 8.686371>,  <20.307268, 21.950216, 8.635940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.212894, 21.735390, 8.686371>,  <20.055603, 21.377346, 8.770423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.212894, 21.735390, 8.686371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429025, 0.023505, 0.902987,
		0.813210, -0.445229, -0.374781,
		0.393226, 0.895108, -0.210129,
		20.330862, 22.003922, 8.623332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.660292, 21.361080, 9.010818>,  <20.055603, 21.377346, 8.770423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.660292, 21.361080, 9.010818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.597576, 21.754578, 8.975800>,  <20.559948, 21.990677, 8.954788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.597576, 21.754578, 8.975800>,  <20.660292, 21.361080, 9.010818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.597576, 21.754578, 8.975800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549477, 0.160545, 0.819939,
		0.820666, 0.080451, -0.565717,
		-0.156788, 0.983744, -0.087548,
		20.550539, 22.049702, 8.949535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.293301, 21.659685, 9.169824>,  <20.660292, 21.361080, 9.010818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.293301, 21.659685, 9.169824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.022968, 21.951492, 9.211888>,  <20.860769, 22.126577, 9.237127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.022968, 21.951492, 9.211888>,  <21.293301, 21.659685, 9.169824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.022968, 21.951492, 9.211888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466684, 0.313104, 0.827147,
		0.570492, 0.608087, -0.552059,
		-0.675829, 0.729518, 0.105161,
		20.820219, 22.170347, 9.243437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.703951, 22.204147, 9.457300>,  <21.293301, 21.659685, 9.169824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.703951, 22.204147, 9.457300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.334949, 22.305096, 9.574123>,  <21.113548, 22.365664, 9.644217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.334949, 22.305096, 9.574123>,  <21.703951, 22.204147, 9.457300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.334949, 22.305096, 9.574123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341352, 0.180186, 0.922503,
		0.180186, 0.950706, -0.252369,
		-0.922503, 0.252369, 0.292058,
		21.058199, 22.380806, 9.661741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.791033, 22.820135, 10.042622>,  <21.703951, 22.204147, 9.457300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.791033, 22.820135, 10.042622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.415401, 22.693653, 10.096507>,  <21.190023, 22.617764, 10.128839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.415401, 22.693653, 10.096507>,  <21.791033, 22.820135, 10.042622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.415401, 22.693653, 10.096507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045132, 0.275107, 0.960354,
		-0.340729, 0.907926, -0.244076,
		-0.939077, -0.316205, 0.134713,
		21.133678, 22.598791, 10.136921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.417299, 23.362196, 10.316115>,  <21.791033, 22.820135, 10.042622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.417299, 23.362196, 10.316115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.228951, 23.021511, 10.408089>,  <21.115942, 22.817101, 10.463273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.228951, 23.021511, 10.408089>,  <21.417299, 23.362196, 10.316115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.228951, 23.021511, 10.408089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165141, 0.170932, 0.971345,
		-0.866608, 0.495349, 0.060165,
		-0.470870, -0.851711, 0.229934,
		21.087690, 22.765997, 10.477069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.907812, 23.472542, 10.728365>,  <21.417299, 23.362196, 10.316115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.907812, 23.472542, 10.728365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.985401, 23.086582, 10.799179>,  <21.031956, 22.855005, 10.841667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.985401, 23.086582, 10.799179>,  <20.907812, 23.472542, 10.728365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.985401, 23.086582, 10.799179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042166, 0.172096, 0.984177,
		-0.980100, -0.198370, -0.007304,
		0.193974, -0.964900, 0.177035,
		21.043594, 22.797112, 10.852290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.533318, 23.278149, 11.272223>,  <20.907812, 23.472542, 10.728365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.533318, 23.278149, 11.272223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.807766, 22.987625, 11.288791>,  <20.972435, 22.813311, 11.298732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.807766, 22.987625, 11.288791>,  <20.533318, 23.278149, 11.272223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.807766, 22.987625, 11.288791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093282, 0.144300, 0.985128,
		-0.721483, -0.672052, 0.166758,
		0.686120, -0.726308, 0.041419,
		21.013601, 22.769733, 11.301216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.360918, 22.826694, 11.913476>,  <20.533318, 23.278149, 11.272223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.360918, 22.826694, 11.913476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.745918, 22.774368, 11.818415>,  <20.976919, 22.742971, 11.761378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.745918, 22.774368, 11.818415>,  <20.360918, 22.826694, 11.913476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.745918, 22.774368, 11.818415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248215, 0.071198, 0.966085,
		-0.109461, -0.988847, 0.100999,
		0.962501, -0.130818, -0.237653,
		21.034668, 22.735123, 11.747119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.631290, 22.370155, 12.405886>,  <20.360918, 22.826694, 11.913476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.631290, 22.370155, 12.405886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.967949, 22.537136, 12.268851>,  <21.169945, 22.637325, 12.186630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.967949, 22.537136, 12.268851>,  <20.631290, 22.370155, 12.405886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.967949, 22.537136, 12.268851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324161, 0.116843, 0.938758,
		0.431918, -0.901155, -0.036982,
		0.841645, 0.417454, -0.342586,
		21.220442, 22.662373, 12.166076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.181147, 22.160292, 12.888034>,  <20.631290, 22.370155, 12.405886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.181147, 22.160292, 12.888034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.340111, 22.460285, 12.676529>,  <21.435490, 22.640282, 12.549626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.340111, 22.460285, 12.676529>,  <21.181147, 22.160292, 12.888034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.340111, 22.460285, 12.676529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308921, 0.433241, 0.846682,
		0.864078, -0.499827, -0.059510,
		0.397412, 0.749983, -0.528761,
		21.459335, 22.685280, 12.517900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.942389, 22.171169, 13.031330>,  <21.181147, 22.160292, 12.888034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.942389, 22.171169, 13.031330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.852009, 22.538429, 12.901131>,  <21.797781, 22.758785, 12.823011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.852009, 22.538429, 12.901131>,  <21.942389, 22.171169, 13.031330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.852009, 22.538429, 12.901131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206951, 0.371755, 0.904969,
		0.951903, 0.137114, -0.274009,
		-0.225949, 0.918149, -0.325499,
		21.784224, 22.813873, 12.803481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.530796, 22.630957, 13.208501>,  <21.942389, 22.171169, 13.031330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.530796, 22.630957, 13.208501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.212643, 22.866695, 13.151879>,  <22.021751, 23.008139, 13.117907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.212643, 22.866695, 13.151879>,  <22.530796, 22.630957, 13.208501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.212643, 22.866695, 13.151879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240751, 0.521525, 0.818566,
		0.556243, 0.616994, -0.556698,
		-0.795382, 0.589347, -0.141553,
		21.974028, 23.043499, 13.109413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.810575, 23.246588, 13.280172>,  <22.530796, 22.630957, 13.208501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.810575, 23.246588, 13.280172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.417812, 23.287399, 13.343977>,  <22.182154, 23.311886, 13.382259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.417812, 23.287399, 13.343977>,  <22.810575, 23.246588, 13.280172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.417812, 23.287399, 13.343977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188231, 0.434453, 0.880806,
		0.020568, 0.894897, -0.445798,
		-0.981909, 0.102030, 0.159512,
		22.123240, 23.318008, 13.391830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.699009, 23.917183, 13.467666>,  <22.810575, 23.246588, 13.280172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.699009, 23.917183, 13.467666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.363167, 23.734390, 13.585122>,  <22.161661, 23.624714, 13.655596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.363167, 23.734390, 13.585122>,  <22.699009, 23.917183, 13.467666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.363167, 23.734390, 13.585122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015239, 0.520555, 0.853692,
		-0.542980, 0.721241, -0.430097,
		-0.839607, -0.456984, 0.293642,
		22.111284, 23.597296, 13.673215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.190212, 24.459465, 13.677945>,  <22.699009, 23.917183, 13.467666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.190212, 24.459465, 13.677945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.085308, 24.113655, 13.849441>,  <22.022366, 23.906170, 13.952338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.085308, 24.113655, 13.849441>,  <22.190212, 24.459465, 13.677945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.085308, 24.113655, 13.849441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196981, 0.386975, 0.900805,
		-0.944679, 0.320698, 0.068807,
		-0.262259, -0.864525, 0.428738,
		22.006630, 23.854298, 13.978062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.798250, 24.705463, 14.244708>,  <22.190212, 24.459465, 13.677945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.798250, 24.705463, 14.244708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.899406, 24.330780, 14.341556>,  <21.960100, 24.105970, 14.399664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.899406, 24.330780, 14.341556>,  <21.798250, 24.705463, 14.244708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.899406, 24.330780, 14.341556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044683, 0.261293, 0.964225,
		-0.966463, -0.233023, 0.107933,
		0.252889, -0.936710, 0.242118,
		21.975273, 24.049767, 14.414191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.490755, 24.695267, 14.859946>,  <21.798250, 24.705463, 14.244708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.490755, 24.695267, 14.859946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.736034, 24.379333, 14.864867>,  <21.883202, 24.189774, 14.867820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.736034, 24.379333, 14.864867>,  <21.490755, 24.695267, 14.859946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.736034, 24.379333, 14.864867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028385, 0.037597, 0.998890,
		-0.789419, -0.612168, 0.045474,
		0.613198, -0.789833, 0.012303,
		21.919994, 24.142384, 14.868558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.186878, 24.220552, 15.306231>,  <21.490755, 24.695267, 14.859946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.186878, 24.220552, 15.306231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.570629, 24.110043, 15.283353>,  <21.800879, 24.043737, 15.269626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.570629, 24.110043, 15.283353>,  <21.186878, 24.220552, 15.306231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.570629, 24.110043, 15.283353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100061, 0.143634, 0.984559,
		-0.263792, -0.950285, 0.165443,
		0.959375, -0.276273, -0.057197,
		21.858442, 24.027161, 15.266193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.274143, 23.674789, 15.800219>,  <21.186878, 24.220552, 15.306231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.274143, 23.674789, 15.800219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.636978, 23.829048, 15.732732>,  <21.854679, 23.921604, 15.692240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.636978, 23.829048, 15.732732>,  <21.274143, 23.674789, 15.800219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.636978, 23.829048, 15.732732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161551, 0.051175, 0.985537,
		0.388704, -0.921226, -0.015881,
		0.907089, 0.385648, -0.168717,
		21.909105, 23.944742, 15.682117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.741041, 23.218100, 16.067127>,  <21.274143, 23.674789, 15.800219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.741041, 23.218100, 16.067127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.922100, 23.574768, 16.064808>,  <22.030735, 23.788769, 16.063417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.922100, 23.574768, 16.064808>,  <21.741041, 23.218100, 16.067127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.922100, 23.574768, 16.064808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049917, 0.031830, 0.998246,
		0.890291, -0.451565, 0.058917,
		0.452649, 0.891670, -0.005797,
		22.057894, 23.842270, 16.063068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.296389, 23.067623, 16.539970>,  <21.741041, 23.218100, 16.067127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.296389, 23.067623, 16.539970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.266830, 23.465778, 16.515491>,  <22.249096, 23.704672, 16.500805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.266830, 23.465778, 16.515491>,  <22.296389, 23.067623, 16.539970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.266830, 23.465778, 16.515491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018231, 0.062702, 0.997866,
		0.997099, 0.072625, -0.022781,
		-0.073898, 0.995386, -0.061196,
		22.244661, 23.764395, 16.497133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.768810, 23.319828, 17.017256>,  <22.296389, 23.067623, 16.539970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.768810, 23.319828, 17.017256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.533688, 23.638729, 16.962307>,  <22.392612, 23.830069, 16.929338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.533688, 23.638729, 16.962307>,  <22.768810, 23.319828, 17.017256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.533688, 23.638729, 16.962307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059397, 0.126816, 0.990146,
		0.806816, 0.590176, -0.027189,
		-0.587809, 0.797251, -0.137372,
		22.357346, 23.877905, 16.921095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.962673, 23.824560, 17.448507>,  <22.768810, 23.319828, 17.017256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.962673, 23.824560, 17.448507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.594318, 23.967400, 17.385960>,  <22.373306, 24.053102, 17.348431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.594318, 23.967400, 17.385960>,  <22.962673, 23.824560, 17.448507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.594318, 23.967400, 17.385960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121393, 0.118496, 0.985506,
		0.370450, 0.926521, -0.065772,
		-0.920886, 0.357097, -0.156370,
		22.318052, 24.074528, 17.339048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.922279, 24.532703, 17.777357>,  <22.962673, 23.824560, 17.448507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.922279, 24.532703, 17.777357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.563465, 24.358456, 17.747532>,  <22.348177, 24.253906, 17.729637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.563465, 24.358456, 17.747532>,  <22.922279, 24.532703, 17.777357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.563465, 24.358456, 17.747532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228423, 0.312548, 0.922028,
		-0.378350, 0.844125, -0.379873,
		-0.897036, -0.435622, -0.074565,
		22.294353, 24.227770, 17.725163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.489040, 25.073112, 17.976503>,  <22.922279, 24.532703, 17.777357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.489040, 25.073112, 17.976503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.292366, 24.728348, 18.026068>,  <22.174360, 24.521490, 18.055807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.292366, 24.728348, 18.026068>,  <22.489040, 25.073112, 17.976503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.292366, 24.728348, 18.026068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235039, 0.268385, 0.934198,
		-0.838451, 0.430210, -0.334544,
		-0.491688, -0.861910, 0.123911,
		22.144859, 24.469774, 18.063242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.827314, 25.237413, 18.305124>,  <22.489040, 25.073112, 17.976503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.827314, 25.237413, 18.305124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.897644, 24.849758, 18.374243>,  <21.939842, 24.617165, 18.415714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.897644, 24.849758, 18.374243>,  <21.827314, 25.237413, 18.305124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.897644, 24.849758, 18.374243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342717, 0.104290, 0.933632,
		-0.922838, -0.223377, -0.313803,
		0.175825, -0.969137, 0.172798,
		21.950392, 24.559017, 18.426083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.228584, 25.000256, 18.693014>,  <21.827314, 25.237413, 18.305124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.228584, 25.000256, 18.693014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.507080, 24.720825, 18.759037>,  <21.674177, 24.553167, 18.798651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.507080, 24.720825, 18.759037>,  <21.228584, 25.000256, 18.693014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.507080, 24.720825, 18.759037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256763, -0.027639, 0.966079,
		-0.670317, -0.715002, -0.198611,
		0.696239, -0.698576, 0.165059,
		21.715952, 24.511253, 18.808556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.882517, 24.451992, 19.038242>,  <21.228584, 25.000256, 18.693014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.882517, 24.451992, 19.038242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.267921, 24.459480, 19.145050>,  <21.499165, 24.463974, 19.209135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.267921, 24.459480, 19.145050>,  <20.882517, 24.451992, 19.038242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.267921, 24.459480, 19.145050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267437, 0.109409, 0.957344,
		-0.011295, -0.993821, 0.110423,
		0.963509, 0.018718, 0.267020,
		21.556974, 24.465097, 19.225157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.882704, 24.068335, 19.622089>,  <20.882517, 24.451992, 19.038242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.882704, 24.068335, 19.622089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.217651, 24.284336, 19.656052>,  <21.418619, 24.413937, 19.676430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.217651, 24.284336, 19.656052>,  <20.882704, 24.068335, 19.622089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.217651, 24.284336, 19.656052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078092, -0.035557, 0.996312,
		0.541033, -0.840910, 0.012396,
		0.837368, 0.540006, 0.084906,
		21.468863, 24.446339, 19.681524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.284330, 23.778458, 20.130844>,  <20.882704, 24.068335, 19.622089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.284330, 23.778458, 20.130844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.422337, 24.153839, 20.124346>,  <21.505140, 24.379068, 20.120447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.422337, 24.153839, 20.124346>,  <21.284330, 23.778458, 20.130844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.422337, 24.153839, 20.124346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068680, 0.042504, 0.996733,
		0.936080, -0.342774, 0.079117,
		0.345017, 0.938456, -0.016245,
		21.525843, 24.435375, 20.119473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.777117, 23.829918, 20.589294>,  <21.284330, 23.778458, 20.130844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.777117, 23.829918, 20.589294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.677158, 24.215141, 20.549154>,  <21.617184, 24.446276, 20.525070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.677158, 24.215141, 20.549154>,  <21.777117, 23.829918, 20.589294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.677158, 24.215141, 20.549154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054565, 0.117481, 0.991575,
		0.966733, 0.242317, -0.081907,
		-0.249898, 0.963058, -0.100351,
		21.602188, 24.504059, 20.519049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.224926, 24.085052, 21.151911>,  <21.777117, 23.829918, 20.589294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.224926, 24.085052, 21.151911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.016445, 24.405006, 21.032894>,  <21.891357, 24.596979, 20.961485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.016445, 24.405006, 21.032894>,  <22.224926, 24.085052, 21.151911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.016445, 24.405006, 21.032894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048348, 0.375753, 0.925458,
		0.852063, 0.467966, -0.234516,
		-0.521203, 0.799886, -0.297540,
		21.860085, 24.644972, 20.943632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.522585, 24.717001, 21.483507>,  <22.224926, 24.085052, 21.151911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.522585, 24.717001, 21.483507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.144337, 24.800926, 21.384081>,  <21.917389, 24.851280, 21.324425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.144337, 24.800926, 21.384081>,  <22.522585, 24.717001, 21.483507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.144337, 24.800926, 21.384081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091550, 0.561601, 0.822328,
		0.312128, 0.800364, -0.511852,
		-0.945619, 0.209812, -0.248565,
		21.860651, 24.863871, 21.309511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.309975, 25.401075, 21.482281>,  <22.522585, 24.717001, 21.483507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.309975, 25.401075, 21.482281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.951172, 25.260029, 21.588894>,  <21.735889, 25.175402, 21.652863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.951172, 25.260029, 21.588894>,  <22.309975, 25.401075, 21.482281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.951172, 25.260029, 21.588894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023339, 0.639937, 0.768073,
		-0.441399, 0.682747, -0.582258,
		-0.897007, -0.352616, 0.266533,
		21.682070, 25.154243, 21.668854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.874638, 25.950281, 21.769461>,  <22.309975, 25.401075, 21.482281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.874638, 25.950281, 21.769461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.709618, 25.646816, 21.971149>,  <21.610605, 25.464737, 22.092163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.709618, 25.646816, 21.971149>,  <21.874638, 25.950281, 21.769461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.709618, 25.646816, 21.971149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002729, 0.554546, 0.832149,
		-0.910931, 0.341927, -0.230848,
		-0.412550, -0.758660, 0.504220,
		21.585854, 25.419218, 22.122416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.675634, 26.528584, 22.238459>,  <21.874638, 25.950281, 21.769461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.675634, 26.528584, 22.238459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.835167, 26.686012, 22.569767>,  <21.930887, 26.780470, 22.768553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.835167, 26.686012, 22.569767>,  <21.675634, 26.528584, 22.238459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.835167, 26.686012, 22.569767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.902549, 0.328315, 0.278592,
		-0.162289, -0.858668, 0.486160,
		0.398832, 0.393571, 0.828272,
		21.954817, 26.804083, 22.818249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.456316, 26.296741, 22.945663>,  <21.675634, 26.528584, 22.238459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.456316, 26.296741, 22.945663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.540340, 26.685867, 22.984655>,  <21.590755, 26.919344, 23.008051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.540340, 26.685867, 22.984655>,  <21.456316, 26.296741, 22.945663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.540340, 26.685867, 22.984655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.890709, 0.149310, 0.429352,
		0.403126, -0.177016, 0.897861,
		0.210062, 0.972816, 0.097479,
		21.603359, 26.977713, 23.013899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.395126, 25.638334, 23.502087>,  <21.456316, 26.296741, 22.945663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.395126, 25.638334, 23.502087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.100204, 25.439827, 23.685434>,  <20.923252, 25.320723, 23.795443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.100204, 25.439827, 23.685434>,  <21.395126, 25.638334, 23.502087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.100204, 25.439827, 23.685434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650815, 0.339816, -0.678944,
		0.181175, -0.798902, -0.573525,
		-0.737303, -0.496267, 0.458371,
		20.879013, 25.290947, 23.822947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.048349, 25.177464, 23.024734>,  <21.395126, 25.638334, 23.502087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.048349, 25.177464, 23.024734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.793362, 25.291176, 23.311178>,  <20.640369, 25.359404, 23.483046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.793362, 25.291176, 23.311178>,  <21.048349, 25.177464, 23.024734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.793362, 25.291176, 23.311178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597756, 0.403944, -0.692471,
		-0.486125, -0.869490, -0.087572,
		-0.637471, 0.284281, 0.716111,
		20.602119, 25.376461, 23.526011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.296064, 25.026180, 22.911526>,  <21.048349, 25.177464, 23.024734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.296064, 25.026180, 22.911526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.308346, 25.366455, 23.121435>,  <20.315714, 25.570620, 23.247381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.308346, 25.366455, 23.121435>,  <20.296064, 25.026180, 22.911526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.308346, 25.366455, 23.121435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520235, 0.461904, -0.718332,
		-0.853471, -0.250951, 0.456739,
		0.030704, 0.850687, 0.524775,
		20.317556, 25.621662, 23.278868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.639509, 25.309637, 22.671783>,  <20.296064, 25.026180, 22.911526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.639509, 25.309637, 22.671783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.919670, 25.496071, 22.455561>,  <20.087767, 25.607931, 22.325827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.919670, 25.496071, 22.455561>,  <19.639509, 25.309637, 22.671783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.919670, 25.496071, 22.455561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528648, -0.170090, -0.831625,
		-0.479553, 0.868235, 0.127264,
		0.700400, 0.466087, -0.540558,
		20.129789, 25.635897, 22.293394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.479923, 25.273720, 22.003269>,  <19.639509, 25.309637, 22.671783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.479923, 25.273720, 22.003269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.803524, 25.501789, 21.946112>,  <19.997684, 25.638630, 21.911818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.803524, 25.501789, 21.946112>,  <19.479923, 25.273720, 22.003269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.803524, 25.501789, 21.946112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250706, 0.114825, -0.961229,
		-0.531660, 0.813460, 0.235840,
		0.809002, 0.570174, -0.142891,
		20.046225, 25.672842, 21.903244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.328043, 25.858120, 21.775740>,  <19.479923, 25.273720, 22.003269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.328043, 25.858120, 21.775740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.688293, 25.761883, 21.630972>,  <19.904444, 25.704140, 21.544111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.688293, 25.761883, 21.630972>,  <19.328043, 25.858120, 21.775740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.688293, 25.761883, 21.630972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339936, 0.128856, -0.931579,
		0.270768, 0.962035, 0.034264,
		0.900627, -0.240594, -0.361920,
		19.958481, 25.689705, 21.522396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.473799, 26.372187, 21.178890>,  <19.328043, 25.858120, 21.775740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.473799, 26.372187, 21.178890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.712296, 26.055325, 21.126757>,  <19.855392, 25.865208, 21.095476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.712296, 26.055325, 21.126757>,  <19.473799, 26.372187, 21.178890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.712296, 26.055325, 21.126757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086610, 0.224873, -0.970531,
		0.798120, 0.567382, 0.202687,
		0.596241, -0.792155, -0.130335,
		19.891169, 25.817678, 21.087656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.973143, 26.610641, 20.695419>,  <19.473799, 26.372187, 21.178890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.973143, 26.610641, 20.695419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.028858, 26.215443, 20.668707>,  <20.062288, 25.978323, 20.652679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.028858, 26.215443, 20.668707>,  <19.973143, 26.610641, 20.695419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.028858, 26.215443, 20.668707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016236, 0.065151, -0.997743,
		0.990119, 0.140058, -0.006966,
		0.139288, -0.987997, -0.066782,
		20.070644, 25.919043, 20.648672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.635521, 26.398678, 20.408930>,  <19.973143, 26.610641, 20.695419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.635521, 26.398678, 20.408930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.351616, 26.128834, 20.327803>,  <20.181273, 25.966927, 20.279127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.351616, 26.128834, 20.327803>,  <20.635521, 26.398678, 20.408930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.351616, 26.128834, 20.327803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082757, 0.206068, -0.975032,
		0.699562, -0.708826, -0.090430,
		-0.709763, -0.674612, -0.202817,
		20.138687, 25.926451, 20.266958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.778194, 26.355761, 19.679714>,  <20.635521, 26.398678, 20.408930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.778194, 26.355761, 19.679714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.434353, 26.162483, 19.746178>,  <20.228048, 26.046516, 19.786055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.434353, 26.162483, 19.746178>,  <20.778194, 26.355761, 19.679714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.434353, 26.162483, 19.746178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128569, -0.110185, -0.985560,
		0.494525, -0.868552, 0.032592,
		-0.859602, -0.483194, 0.166158,
		20.176472, 26.017525, 19.796024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.839451, 25.792488, 19.272871>,  <20.778194, 26.355761, 19.679714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.839451, 25.792488, 19.272871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.457153, 25.897369, 19.326239>,  <20.227774, 25.960299, 19.358259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.457153, 25.897369, 19.326239>,  <20.839451, 25.792488, 19.272871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.457153, 25.897369, 19.326239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176059, -0.146430, -0.973428,
		-0.235705, -0.953837, 0.186114,
		-0.955744, 0.262208, 0.133417,
		20.170429, 25.976030, 19.366264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.460991, 25.391886, 18.824247>,  <20.839451, 25.792488, 19.272871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.460991, 25.391886, 18.824247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.177860, 25.665794, 18.893606>,  <20.007982, 25.830139, 18.935221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.177860, 25.665794, 18.893606>,  <20.460991, 25.391886, 18.824247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.177860, 25.665794, 18.893606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289241, -0.057018, -0.955557,
		-0.644452, -0.726523, 0.238423,
		-0.707828, 0.684772, 0.173395,
		19.965511, 25.871225, 18.945625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.971638, 25.146057, 18.430967>,  <20.460991, 25.391886, 18.824247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.971638, 25.146057, 18.430967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.841690, 25.519428, 18.491863>,  <19.763721, 25.743450, 18.528400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.841690, 25.519428, 18.491863>,  <19.971638, 25.146057, 18.430967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.841690, 25.519428, 18.491863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445342, -0.008974, -0.895316,
		-0.834345, -0.358658, 0.418609,
		-0.324868, 0.933426, 0.152238,
		19.744230, 25.799456, 18.537535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.222206, 25.036726, 18.346304>,  <19.971638, 25.146057, 18.430967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.222206, 25.036726, 18.346304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.336861, 25.415745, 18.289745>,  <19.405653, 25.643156, 18.255810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.336861, 25.415745, 18.289745>,  <19.222206, 25.036726, 18.346304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.336861, 25.415745, 18.289745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340912, -0.037047, -0.939365,
		-0.895331, 0.317459, 0.312412,
		0.286636, 0.947548, -0.141395,
		19.422852, 25.700008, 18.247328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.695414, 25.355576, 17.877110>,  <19.222206, 25.036726, 18.346304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.695414, 25.355576, 17.877110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.009624, 25.601788, 17.851599>,  <19.198151, 25.749516, 17.836292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.009624, 25.601788, 17.851599>,  <18.695414, 25.355576, 17.877110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.009624, 25.601788, 17.851599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108941, 0.036098, -0.993392,
		-0.609162, 0.787285, 0.095413,
		0.785527, 0.615531, -0.063778,
		19.245283, 25.786448, 17.832466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.509815, 25.927576, 17.437773>,  <18.695414, 25.355576, 17.877110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.509815, 25.927576, 17.437773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.909550, 25.933495, 17.424438>,  <19.149389, 25.937046, 17.416437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.909550, 25.933495, 17.424438>,  <18.509815, 25.927576, 17.437773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.909550, 25.933495, 17.424438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032192, -0.071775, -0.996901,
		-0.017142, 0.997311, -0.071251,
		0.999335, 0.014796, -0.033336,
		19.209351, 25.937933, 17.414438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.782808, 26.476685, 17.058224>,  <18.509815, 25.927576, 17.437773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.782808, 26.476685, 17.058224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.075184, 26.205048, 17.031208>,  <19.250608, 26.042065, 17.014997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.075184, 26.205048, 17.031208>,  <18.782808, 26.476685, 17.058224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.075184, 26.205048, 17.031208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014557, 0.114462, -0.993321,
		0.682289, 0.725073, 0.093550,
		0.730938, -0.679094, -0.067541,
		19.294466, 26.001320, 17.010946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.268763, 26.705379, 16.614960>,  <18.782808, 26.476685, 17.058224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.268763, 26.705379, 16.614960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.340034, 26.311790, 16.612003>,  <19.382797, 26.075638, 16.610229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.340034, 26.311790, 16.612003>,  <19.268763, 26.705379, 16.614960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.340034, 26.311790, 16.612003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129228, -0.015954, -0.991486,
		0.975475, 0.177617, -0.130000,
		0.178178, -0.983970, -0.007390,
		19.393488, 26.016600, 16.609787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.765911, 26.606787, 16.095707>,  <19.268763, 26.705379, 16.614960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.765911, 26.606787, 16.095707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.654472, 26.225468, 16.142376>,  <19.587610, 25.996677, 16.170378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.654472, 26.225468, 16.142376>,  <19.765911, 26.606787, 16.095707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.654472, 26.225468, 16.142376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043896, -0.108715, -0.993103,
		0.959405, -0.281796, -0.011558,
		-0.278596, -0.953296, 0.116672,
		19.570894, 25.939480, 16.177378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.300783, 26.260471, 15.876799>,  <19.765911, 26.606787, 16.095707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.300783, 26.260471, 15.876799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.984276, 26.018131, 15.843720>,  <19.794371, 25.872728, 15.823874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.984276, 26.018131, 15.843720>,  <20.300783, 26.260471, 15.876799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.984276, 26.018131, 15.843720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185999, -0.109650, -0.976413,
		0.582491, -0.787987, 0.199450,
		-0.791270, -0.605849, -0.082695,
		19.746895, 25.836376, 15.818912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.493252, 25.689804, 15.382835>,  <20.300783, 26.260471, 15.876799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.493252, 25.689804, 15.382835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.093403, 25.700634, 15.384795>,  <19.853495, 25.707132, 15.385971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.093403, 25.700634, 15.384795>,  <20.493252, 25.689804, 15.382835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.093403, 25.700634, 15.384795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003912, 0.036411, -0.999329,
		-0.027238, -0.998970, -0.036291,
		-0.999621, 0.027078, 0.004900,
		19.793516, 25.708757, 15.386265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.425882, 25.460283, 14.775459>,  <20.493252, 25.689804, 15.382835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.425882, 25.460283, 14.775459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.044285, 25.544216, 14.861125>,  <19.815327, 25.594576, 14.912524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.044285, 25.544216, 14.861125>,  <20.425882, 25.460283, 14.775459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.044285, 25.544216, 14.861125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258940, -0.216510, -0.941315,
		-0.151142, -0.953466, 0.260881,
		-0.953995, 0.209825, 0.214167,
		19.758087, 25.607166, 14.925374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.025812, 24.900656, 14.475230>,  <20.425882, 25.460283, 14.775459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.025812, 24.900656, 14.475230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.815319, 25.237831, 14.520017>,  <19.689022, 25.440136, 14.546888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.815319, 25.237831, 14.520017>,  <20.025812, 24.900656, 14.475230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.815319, 25.237831, 14.520017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358271, -0.100372, -0.928207,
		-0.771181, -0.528568, 0.354819,
		-0.526235, 0.842936, 0.111966,
		19.657450, 25.490711, 14.553606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.280703, 24.672155, 14.187854>,  <20.025812, 24.900656, 14.475230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.280703, 24.672155, 14.187854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.318771, 25.069801, 14.167148>,  <19.341614, 25.308388, 14.154724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.318771, 25.069801, 14.167148>,  <19.280703, 24.672155, 14.187854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.318771, 25.069801, 14.167148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338869, -0.016541, -0.940688,
		-0.936007, 0.107071, 0.335300,
		0.095174, 0.994114, -0.051766,
		19.347324, 25.368036, 14.151618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.579601, 24.997873, 13.832201>,  <19.280703, 24.672155, 14.187854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.579601, 24.997873, 13.832201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.899471, 25.234741, 13.792487>,  <19.091393, 25.376862, 13.768659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.899471, 25.234741, 13.792487>,  <18.579601, 24.997873, 13.832201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.899471, 25.234741, 13.792487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108207, -0.020519, -0.993917,
		-0.590604, 0.805552, 0.047669,
		0.799674, 0.592169, -0.099285,
		19.139374, 25.412392, 13.762702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.375231, 25.403631, 13.337086>,  <18.579601, 24.997873, 13.832201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.375231, 25.403631, 13.337086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.766338, 25.487366, 13.332175>,  <19.001003, 25.537607, 13.329228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.766338, 25.487366, 13.332175>,  <18.375231, 25.403631, 13.337086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.766338, 25.487366, 13.332175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064541, 0.244722, -0.967443,
		-0.199516, 0.946726, 0.252792,
		0.977767, 0.209336, -0.012277,
		19.059668, 25.550167, 13.328492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.306494, 25.931433, 12.885448>,  <18.375231, 25.403631, 13.337086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.306494, 25.931433, 12.885448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.696815, 25.844017, 12.888297>,  <18.931007, 25.791567, 12.890006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.696815, 25.844017, 12.888297>,  <18.306494, 25.931433, 12.885448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.696815, 25.844017, 12.888297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058443, 0.229296, -0.971601,
		0.210701, 0.948506, 0.236520,
		0.975802, -0.218540, 0.007121,
		18.989555, 25.778456, 12.890433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.584410, 26.367323, 12.468491>,  <18.306494, 25.931433, 12.885448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.584410, 26.367323, 12.468491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.862885, 26.080189, 12.471066>,  <19.029968, 25.907909, 12.472610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.862885, 26.080189, 12.471066>,  <18.584410, 26.367323, 12.468491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.862885, 26.080189, 12.471066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104478, 0.092448, -0.990221,
		0.710219, 0.690050, 0.139359,
		0.696185, -0.717833, 0.006436,
		19.071739, 25.864840, 12.472997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.161600, 26.640507, 11.993963>,  <18.584410, 26.367323, 12.468491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.161600, 26.640507, 11.993963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.179150, 26.240925, 11.999022>,  <19.189678, 26.001175, 12.002057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.179150, 26.240925, 11.999022>,  <19.161600, 26.640507, 11.993963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.179150, 26.240925, 11.999022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247846, -0.001380, -0.968799,
		0.967806, 0.045637, 0.247527,
		0.043872, -0.998957, 0.012646,
		19.192310, 25.941238, 12.002815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.744673, 26.518120, 11.602239>,  <19.161600, 26.640507, 11.993963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.744673, 26.518120, 11.602239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.532864, 26.178867, 11.595513>,  <19.405779, 25.975317, 11.591478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.532864, 26.178867, 11.595513>,  <19.744673, 26.518120, 11.602239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.532864, 26.178867, 11.595513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121767, -0.056378, -0.990956,
		0.839512, -0.526780, 0.133128,
		-0.529521, -0.848130, -0.016814,
		19.374008, 25.924429, 11.590469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.021372, 26.109703, 11.055279>,  <19.744673, 26.518120, 11.602239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.021372, 26.109703, 11.055279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.670315, 25.928619, 11.118264>,  <19.459681, 25.819969, 11.156055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.670315, 25.928619, 11.118264>,  <20.021372, 26.109703, 11.055279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.670315, 25.928619, 11.118264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015778, -0.355628, -0.934495,
		0.479054, -0.817669, 0.319257,
		-0.877644, -0.452711, 0.157464,
		19.407022, 25.792807, 11.165504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.098423, 25.397934, 10.855790>,  <20.021372, 26.109703, 11.055279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.098423, 25.397934, 10.855790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.714760, 25.508862, 10.833470>,  <19.484562, 25.575418, 10.820079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.714760, 25.508862, 10.833470>,  <20.098423, 25.397934, 10.855790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.714760, 25.508862, 10.833470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012055, -0.237147, -0.971399,
		-0.282625, -0.931049, 0.230804,
		-0.959155, 0.277324, -0.055800,
		19.427013, 25.592058, 10.816730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.763182, 24.826242, 10.547623>,  <20.098423, 25.397934, 10.855790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.763182, 24.826242, 10.547623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.504353, 25.125664, 10.489704>,  <19.349054, 25.305317, 10.454953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.504353, 25.125664, 10.489704>,  <19.763182, 24.826242, 10.547623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.504353, 25.125664, 10.489704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072385, -0.249372, -0.965699,
		-0.758984, -0.614397, 0.215545,
		-0.647073, 0.748552, -0.144796,
		19.310230, 25.350229, 10.446265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.249550, 24.570189, 10.239839>,  <19.763182, 24.826242, 10.547623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.249550, 24.570189, 10.239839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.188484, 24.959465, 10.171030>,  <19.151846, 25.193031, 10.129745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.188484, 24.959465, 10.171030>,  <19.249550, 24.570189, 10.239839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.188484, 24.959465, 10.171030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234647, -0.204777, -0.950267,
		-0.960018, -0.104705, 0.259618,
		-0.152662, 0.973192, -0.172021,
		19.142685, 25.251423, 10.119424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.708319, 24.493876, 9.835040>,  <19.249550, 24.570189, 10.239839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.708319, 24.493876, 9.835040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.858715, 24.855259, 9.752684>,  <18.948954, 25.072088, 9.703270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.858715, 24.855259, 9.752684>,  <18.708319, 24.493876, 9.835040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.858715, 24.855259, 9.752684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364647, -0.060005, -0.929211,
		-0.851858, 0.424454, 0.306882,
		0.375993, 0.903459, -0.205891,
		18.971514, 25.126297, 9.690916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.148167, 24.868166, 9.529826>,  <18.708319, 24.493876, 9.835040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.148167, 24.868166, 9.529826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.460079, 25.092030, 9.417596>,  <18.647226, 25.226349, 9.350258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.460079, 25.092030, 9.417596>,  <18.148167, 24.868166, 9.529826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.460079, 25.092030, 9.417596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245867, -0.138396, -0.959373,
		-0.575754, 0.817084, 0.029684,
		0.779780, 0.559661, -0.280576,
		18.694014, 25.259928, 9.333423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.880095, 25.327215, 9.075831>,  <18.148167, 24.868166, 9.529826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.880095, 25.327215, 9.075831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.271339, 25.299427, 8.997379>,  <18.506086, 25.282753, 8.950308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.271339, 25.299427, 8.997379>,  <17.880095, 25.327215, 9.075831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.271339, 25.299427, 8.997379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207145, -0.236285, -0.949347,
		0.019610, 0.969197, -0.245504,
		0.978114, -0.069472, -0.196131,
		18.564774, 25.278585, 8.938540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.026434, 25.800747, 8.496382>,  <17.880095, 25.327215, 9.075831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.026434, 25.800747, 8.496382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.306919, 25.515774, 8.507254>,  <18.475210, 25.344790, 8.513777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.306919, 25.515774, 8.507254>,  <18.026434, 25.800747, 8.496382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.306919, 25.515774, 8.507254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149367, -0.184078, -0.971496,
		0.697131, 0.677164, -0.235492,
		0.701211, -0.712435, 0.027181,
		18.517282, 25.302044, 8.515408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.286163, 25.927774, 7.764708>,  <18.026434, 25.800747, 8.496382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.286163, 25.927774, 7.764708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.454800, 25.593864, 7.906363>,  <18.555981, 25.393518, 7.991355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.454800, 25.593864, 7.906363>,  <18.286163, 25.927774, 7.764708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.454800, 25.593864, 7.906363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032163, -0.404061, -0.914166,
		0.906216, 0.374013, -0.197197,
		0.421590, -0.834775, 0.354138,
		18.581276, 25.343431, 8.012604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.004641, 25.703600, 7.314667>,  <18.286163, 25.927774, 7.764708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.004641, 25.703600, 7.314667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.839863, 25.400085, 7.516479>,  <18.740997, 25.217978, 7.637565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.839863, 25.400085, 7.516479>,  <19.004641, 25.703600, 7.314667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.839863, 25.400085, 7.516479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272151, -0.425964, -0.862838,
		0.869619, -0.492748, -0.031031,
		-0.411944, -0.758785, 0.504528,
		18.716280, 25.172451, 7.667837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.304010, 25.034107, 7.146221>,  <19.004641, 25.703600, 7.314667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.304010, 25.034107, 7.146221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.938782, 24.925926, 7.268306>,  <18.719645, 24.861017, 7.341557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.938782, 24.925926, 7.268306>,  <19.304010, 25.034107, 7.146221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.938782, 24.925926, 7.268306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023147, -0.712864, -0.700920,
		0.407140, -0.647055, 0.644637,
		-0.913072, -0.270451, 0.305213,
		18.664860, 24.844791, 7.359870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.268644, 24.384983, 7.086490>,  <19.304010, 25.034107, 7.146221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.268644, 24.384983, 7.086490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.878979, 24.475250, 7.089919>,  <18.645180, 24.529411, 7.091977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.878979, 24.475250, 7.089919>,  <19.268644, 24.384983, 7.086490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.878979, 24.475250, 7.089919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161670, -0.670383, -0.724189,
		-0.157680, -0.706866, 0.689549,
		-0.974166, 0.225669, 0.008573,
		18.586729, 24.542952, 7.092491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.988621, 23.797884, 6.882057>,  <19.268644, 24.384983, 7.086490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.988621, 23.797884, 6.882057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.706554, 24.071728, 6.808246>,  <18.537315, 24.236034, 6.763959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.706554, 24.071728, 6.808246>,  <18.988621, 23.797884, 6.882057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.706554, 24.071728, 6.808246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316657, -0.536929, -0.781943,
		-0.634406, -0.492966, 0.595410,
		-0.705165, 0.684611, -0.184530,
		18.495005, 24.277111, 6.752887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.426735, 23.367819, 6.677175>,  <18.988621, 23.797884, 6.882057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.426735, 23.367819, 6.677175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.318226, 23.736588, 6.566559>,  <18.253120, 23.957848, 6.500189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.318226, 23.736588, 6.566559>,  <18.426735, 23.367819, 6.677175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.318226, 23.736588, 6.566559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247934, -0.344549, -0.905436,
		-0.930021, -0.177058, 0.322043,
		-0.271274, 0.921920, -0.276540,
		18.236843, 24.013163, 6.483597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.807451, 23.313852, 6.350382>,  <18.426735, 23.367819, 6.677175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.807451, 23.313852, 6.350382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.936642, 23.663288, 6.204763>,  <18.014156, 23.872950, 6.117392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.936642, 23.663288, 6.204763>,  <17.807451, 23.313852, 6.350382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.936642, 23.663288, 6.204763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237291, -0.297626, -0.924723,
		-0.916177, 0.385048, 0.111169,
		0.322975, 0.873589, -0.364047,
		18.033535, 23.925365, 6.095550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.771317, 23.751619, 6.995701>,  <17.807451, 23.313852, 6.350382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.771317, 23.751619, 6.995701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.430389, 23.616192, 6.836237>,  <17.225834, 23.534935, 6.740559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.430389, 23.616192, 6.836237>,  <17.771317, 23.751619, 6.995701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.430389, 23.616192, 6.836237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383189, -0.114565, 0.916538,
		-0.355983, 0.933941, -0.032091,
		-0.852316, -0.338569, -0.398659,
		17.174694, 23.514622, 6.716639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.259804, 24.055593, 7.317147>,  <17.771317, 23.751619, 6.995701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.259804, 24.055593, 7.317147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.068516, 23.729141, 7.187386>,  <16.953743, 23.533270, 7.109529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.068516, 23.729141, 7.187386>,  <17.259804, 24.055593, 7.317147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.068516, 23.729141, 7.187386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359856, -0.154857, 0.920067,
		-0.801129, 0.556734, -0.219633,
		-0.478221, -0.816129, -0.324404,
		16.925049, 23.484303, 7.090064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.605785, 24.048433, 7.504593>,  <17.259804, 24.055593, 7.317147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.605785, 24.048433, 7.504593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.646259, 23.656948, 7.433171>,  <16.670544, 23.422056, 7.390318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.646259, 23.656948, 7.433171>,  <16.605785, 24.048433, 7.504593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.646259, 23.656948, 7.433171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291652, -0.200772, 0.935217,
		-0.951157, -0.042556, -0.305759,
		0.101186, -0.978713, -0.178554,
		16.676615, 23.363335, 7.379605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.064322, 23.732639, 7.916567>,  <16.605785, 24.048433, 7.504593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.064322, 23.732639, 7.916567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.327763, 23.442730, 7.835623>,  <16.485826, 23.268785, 7.787056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.327763, 23.442730, 7.835623>,  <16.064322, 23.732639, 7.916567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.327763, 23.442730, 7.835623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109264, -0.358178, 0.927238,
		-0.744516, -0.588570, -0.315088,
		0.658602, -0.724771, -0.202360,
		16.525343, 23.225298, 7.774915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.774656, 23.162672, 8.228190>,  <16.064322, 23.732639, 7.916567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.774656, 23.162672, 8.228190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.142548, 23.010849, 8.188121>,  <16.363283, 22.919754, 8.164079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.142548, 23.010849, 8.188121>,  <15.774656, 23.162672, 8.228190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.142548, 23.010849, 8.188121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025653, -0.196526, 0.980163,
		-0.391718, -0.904053, -0.171013,
		0.919728, -0.379560, -0.100174,
		16.418467, 22.896982, 8.158069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.825512, 22.550577, 8.604090>,  <15.774656, 23.162672, 8.228190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.825512, 22.550577, 8.604090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.202320, 22.684116, 8.590570>,  <16.428406, 22.764240, 8.582458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.202320, 22.684116, 8.590570>,  <15.825512, 22.550577, 8.604090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.202320, 22.684116, 8.590570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072492, -0.104130, 0.991918,
		0.327632, -0.936857, -0.122294,
		0.942021, 0.333849, -0.033798,
		16.484926, 22.784271, 8.580431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.195272, 22.017275, 8.961526>,  <15.825512, 22.550577, 8.604090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.195272, 22.017275, 8.961526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.400536, 22.359447, 8.989554>,  <16.523693, 22.564751, 9.006371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.400536, 22.359447, 8.989554>,  <16.195272, 22.017275, 8.961526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.400536, 22.359447, 8.989554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177152, -0.185444, 0.966555,
		0.839814, -0.483580, -0.246702,
		0.513156, 0.855430, 0.070072,
		16.554482, 22.616077, 9.010576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.671400, 21.780897, 9.379673>,  <16.195272, 22.017275, 8.961526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.671400, 21.780897, 9.379673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.703121, 22.179379, 9.394025>,  <16.722155, 22.418468, 9.402636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.703121, 22.179379, 9.394025>,  <16.671400, 21.780897, 9.379673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.703121, 22.179379, 9.394025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116280, -0.044991, 0.992197,
		0.990045, -0.074513, -0.119407,
		0.079303, 0.996205, 0.035879,
		16.726912, 22.478239, 9.404789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.184134, 21.928663, 9.900649>,  <16.671400, 21.780897, 9.379673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.184134, 21.928663, 9.900649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.955307, 22.254513, 9.862433>,  <16.818010, 22.450022, 9.839504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.955307, 22.254513, 9.862433>,  <17.184134, 21.928663, 9.900649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.955307, 22.254513, 9.862433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111840, 0.192866, 0.974830,
		0.812547, 0.546982, -0.201440,
		-0.572066, 0.814624, -0.095539,
		16.783688, 22.498899, 9.833772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.582521, 22.447212, 10.198969>,  <17.184134, 21.928663, 9.900649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.582521, 22.447212, 10.198969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.192554, 22.535755, 10.208220>,  <16.958574, 22.588881, 10.213771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.192554, 22.535755, 10.208220>,  <17.582521, 22.447212, 10.198969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.192554, 22.535755, 10.208220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075104, 0.229385, 0.970434,
		0.209507, 0.947831, -0.240257,
		-0.974919, 0.221356, 0.023128,
		16.900080, 22.602161, 10.215158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.477163, 23.121758, 10.568274>,  <17.582521, 22.447212, 10.198969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.477163, 23.121758, 10.568274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.114941, 22.952068, 10.569106>,  <16.897608, 22.850256, 10.569605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.114941, 22.952068, 10.569106>,  <17.477163, 23.121758, 10.568274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.114941, 22.952068, 10.569106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106710, 0.232523, 0.966719,
		-0.410586, 0.875197, -0.255831,
		-0.905556, -0.424221, 0.002079,
		16.843273, 22.824802, 10.569730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.071564, 23.625441, 10.814511>,  <17.477163, 23.121758, 10.568274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.071564, 23.625441, 10.814511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.839745, 23.305523, 10.877057>,  <16.700653, 23.113571, 10.914585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.839745, 23.305523, 10.877057>,  <17.071564, 23.625441, 10.814511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.839745, 23.305523, 10.877057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256053, 0.360867, 0.896778,
		-0.773666, 0.479690, -0.413931,
		-0.579549, -0.799795, 0.156365,
		16.665880, 23.065584, 10.923966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.487879, 23.911932, 11.157821>,  <17.071564, 23.625441, 10.814511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.487879, 23.911932, 11.157821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.508980, 23.519615, 11.232937>,  <16.521641, 23.284225, 11.278007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.508980, 23.519615, 11.232937>,  <16.487879, 23.911932, 11.157821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.508980, 23.519615, 11.232937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153656, 0.177841, 0.971989,
		-0.986715, -0.080129, -0.141323,
		0.052751, -0.980792, 0.187791,
		16.524805, 23.225378, 11.289274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.849209, 23.799013, 11.564131>,  <16.487879, 23.911932, 11.157821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.849209, 23.799013, 11.564131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.117016, 23.505306, 11.609022>,  <16.277700, 23.329082, 11.635957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.117016, 23.505306, 11.609022>,  <15.849209, 23.799013, 11.564131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.117016, 23.505306, 11.609022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183492, -0.017085, 0.982873,
		-0.719776, -0.678643, -0.146171,
		0.669517, -0.734269, 0.112228,
		16.317871, 23.285025, 11.642691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.562470, 23.474211, 12.074201>,  <15.849209, 23.799013, 11.564131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.562470, 23.474211, 12.074201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.938447, 23.337914, 12.082218>,  <16.164034, 23.256134, 12.087029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.938447, 23.337914, 12.082218>,  <15.562470, 23.474211, 12.074201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.938447, 23.337914, 12.082218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004452, 0.070953, 0.997470,
		-0.341305, -0.937475, 0.068208,
		0.939942, -0.340745, 0.020043,
		16.220430, 23.235691, 12.088231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.567675, 23.002556, 12.600871>,  <15.562470, 23.474211, 12.074201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.567675, 23.002556, 12.600871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.955941, 23.092777, 12.567563>,  <16.188902, 23.146910, 12.547579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.955941, 23.092777, 12.567563>,  <15.567675, 23.002556, 12.600871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.955941, 23.092777, 12.567563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060644, 0.105457, 0.992573,
		0.232659, -0.968507, 0.088685,
		0.970666, 0.225552, -0.083269,
		16.247141, 23.160442, 12.542583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.862405, 22.510321, 12.982470>,  <15.567675, 23.002556, 12.600871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.862405, 22.510321, 12.982470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.124916, 22.810387, 12.950097>,  <16.282423, 22.990427, 12.930674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.124916, 22.810387, 12.950097>,  <15.862405, 22.510321, 12.982470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.124916, 22.810387, 12.950097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131586, -0.008174, 0.991271,
		0.742956, -0.661199, -0.104076,
		0.656278, 0.750166, -0.080932,
		16.321800, 23.035437, 12.925817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.488146, 22.461115, 13.403385>,  <15.862405, 22.510321, 12.982470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.488146, 22.461115, 13.403385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.567707, 22.848122, 13.340966>,  <16.615444, 23.080326, 13.303515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.567707, 22.848122, 13.340966>,  <16.488146, 22.461115, 13.403385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.567707, 22.848122, 13.340966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478965, 0.042946, 0.876783,
		0.855003, -0.249135, -0.454864,
		0.198903, 0.967516, -0.156046,
		16.627378, 23.138376, 13.294152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.194576, 22.483545, 13.667513>,  <16.488146, 22.461115, 13.403385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.194576, 22.483545, 13.667513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.053181, 22.857693, 13.672055>,  <16.968344, 23.082182, 13.674781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.053181, 22.857693, 13.672055>,  <17.194576, 22.483545, 13.667513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.053181, 22.857693, 13.672055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422587, 0.148849, 0.894016,
		0.834545, 0.320824, -0.447891,
		-0.353490, 0.935369, 0.011355,
		16.947134, 23.138304, 13.675462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.767828, 22.988312, 13.912519>,  <17.194576, 22.483545, 13.667513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.767828, 22.988312, 13.912519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.417442, 23.168877, 13.980535>,  <17.207211, 23.277216, 14.021344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.417442, 23.168877, 13.980535>,  <17.767828, 22.988312, 13.912519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.417442, 23.168877, 13.980535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326509, 0.295388, 0.897852,
		0.355072, 0.842006, -0.406139,
		-0.875965, 0.451410, 0.170039,
		17.154654, 23.304300, 14.031547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.900450, 23.723017, 14.129452>,  <17.767828, 22.988312, 13.912519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.900450, 23.723017, 14.129452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.542519, 23.617294, 14.273353>,  <17.327759, 23.553862, 14.359693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.542519, 23.617294, 14.273353>,  <17.900450, 23.723017, 14.129452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.542519, 23.617294, 14.273353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310915, 0.209277, 0.927111,
		-0.320329, 0.941459, -0.105090,
		-0.894830, -0.264306, 0.359751,
		17.274069, 23.538002, 14.381278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.523769, 24.196693, 14.514940>,  <17.900450, 23.723017, 14.129452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.523769, 24.196693, 14.514940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.405926, 23.836555, 14.643056>,  <17.335220, 23.620472, 14.719925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.405926, 23.836555, 14.643056>,  <17.523769, 24.196693, 14.514940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.405926, 23.836555, 14.643056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027708, 0.326975, 0.944627,
		-0.955217, 0.287169, -0.071382,
		-0.294607, -0.900345, 0.320289,
		17.317543, 23.566452, 14.739142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.994036, 24.171940, 15.137193>,  <17.523769, 24.196693, 14.514940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.994036, 24.171940, 15.137193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.189426, 23.824978, 15.175130>,  <17.306662, 23.616800, 15.197892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.189426, 23.824978, 15.175130>,  <16.994036, 24.171940, 15.137193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.189426, 23.824978, 15.175130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021282, 0.120505, 0.992484,
		-0.872317, -0.482787, 0.077324,
		0.488477, -0.867407, 0.094844,
		17.335970, 23.564756, 15.203583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.906633, 24.137918, 15.768739>,  <16.994036, 24.171940, 15.137193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.906633, 24.137918, 15.768739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.178207, 23.851379, 15.704373>,  <17.341152, 23.679455, 15.665754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.178207, 23.851379, 15.704373>,  <16.906633, 24.137918, 15.768739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.178207, 23.851379, 15.704373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250932, 0.020430, 0.967789,
		-0.689987, -0.697443, 0.193625,
		0.678934, -0.716349, -0.160915,
		17.381887, 23.636475, 15.656099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.887951, 23.658569, 16.339211>,  <16.906633, 24.137918, 15.768739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.887951, 23.658569, 16.339211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.244415, 23.585999, 16.172878>,  <17.458294, 23.542456, 16.073078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.244415, 23.585999, 16.172878>,  <16.887951, 23.658569, 16.339211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.244415, 23.585999, 16.172878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380961, -0.198498, 0.903032,
		-0.246377, -0.963163, -0.107777,
		0.891161, -0.181427, -0.415832,
		17.511765, 23.531570, 16.048128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.192858, 22.977028, 16.529400>,  <16.887951, 23.658569, 16.339211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.192858, 22.977028, 16.529400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.525482, 23.179409, 16.437735>,  <17.725058, 23.300837, 16.382736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.525482, 23.179409, 16.437735>,  <17.192858, 22.977028, 16.529400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.525482, 23.179409, 16.437735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440549, -0.349548, 0.826881,
		0.338259, -0.788561, -0.513568,
		0.831563, 0.505952, -0.229162,
		17.774952, 23.331194, 16.368986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.815472, 22.417318, 16.579905>,  <17.192858, 22.977028, 16.529400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.815472, 22.417318, 16.579905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.981228, 22.781357, 16.580923>,  <18.080681, 22.999781, 16.581533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.981228, 22.781357, 16.580923>,  <17.815472, 22.417318, 16.579905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.981228, 22.781357, 16.580923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550771, -0.253005, 0.795386,
		0.724521, -0.328199, -0.606098,
		0.414391, 0.910095, 0.002545,
		18.105545, 23.054386, 16.581686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.452244, 22.262285, 16.648882>,  <17.815472, 22.417318, 16.579905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.452244, 22.262285, 16.648882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.463745, 22.640930, 16.777315>,  <18.470646, 22.868118, 16.854376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.463745, 22.640930, 16.777315>,  <18.452244, 22.262285, 16.648882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.463745, 22.640930, 16.777315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615836, -0.269791, 0.740243,
		0.787350, 0.176451, -0.590716,
		0.028753, 0.946614, 0.321085,
		18.472370, 22.924915, 16.873640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.132521, 22.393089, 16.840996>,  <18.452244, 22.262285, 16.648882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.132521, 22.393089, 16.840996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.925667, 22.680248, 17.027411>,  <18.801554, 22.852545, 17.139259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.925667, 22.680248, 17.027411>,  <19.132521, 22.393089, 16.840996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.925667, 22.680248, 17.027411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551490, -0.136920, 0.822868,
		0.654547, 0.682549, -0.325108,
		-0.517134, 0.717899, 0.466039,
		18.770527, 22.895618, 17.167223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.620167, 22.862284, 17.153929>,  <19.132521, 22.393089, 16.840996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.620167, 22.862284, 17.153929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.279198, 22.915489, 17.356190>,  <19.074615, 22.947412, 17.477547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.279198, 22.915489, 17.356190>,  <19.620167, 22.862284, 17.153929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.279198, 22.915489, 17.356190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505556, -0.037018, 0.861999,
		0.133376, 0.990423, -0.035690,
		-0.852423, 0.133013, 0.505651,
		19.023472, 22.955393, 17.507885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.846478, 23.318428, 17.622751>,  <19.620167, 22.862284, 17.153929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.846478, 23.318428, 17.622751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.503880, 23.162876, 17.758511>,  <19.298321, 23.069544, 17.839966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.503880, 23.162876, 17.758511>,  <19.846478, 23.318428, 17.622751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.503880, 23.162876, 17.758511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402907, -0.092711, 0.910533,
		-0.322623, 0.916611, 0.236089,
		-0.856493, -0.388881, 0.339399,
		19.246931, 23.046211, 17.860331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.753714, 23.600739, 18.284710>,  <19.846478, 23.318428, 17.622751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.753714, 23.600739, 18.284710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.544575, 23.259914, 18.274721>,  <19.419092, 23.055420, 18.268728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.544575, 23.259914, 18.274721>,  <19.753714, 23.600739, 18.284710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.544575, 23.259914, 18.274721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408855, -0.276377, 0.869743,
		-0.747976, 0.444533, 0.492872,
		-0.522848, -0.852060, -0.024974,
		19.387720, 23.004297, 18.267229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.452690, 23.625128, 18.942141>,  <19.753714, 23.600739, 18.284710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.452690, 23.625128, 18.942141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.401505, 23.244614, 18.829939>,  <19.370792, 23.016306, 18.762617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.401505, 23.244614, 18.829939>,  <19.452690, 23.625128, 18.942141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.401505, 23.244614, 18.829939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346026, -0.307882, 0.886270,
		-0.929457, 0.016349, 0.368567,
		-0.127965, -0.951284, -0.280506,
		19.363115, 22.959229, 18.745787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.965197, 23.303270, 19.354988>,  <19.452690, 23.625128, 18.942141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.965197, 23.303270, 19.354988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.210144, 23.030167, 19.195568>,  <19.357113, 22.866304, 19.099916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.210144, 23.030167, 19.195568>,  <18.965197, 23.303270, 19.354988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.210144, 23.030167, 19.195568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367701, -0.200304, 0.908116,
		-0.699857, -0.702649, 0.128392,
		0.612369, -0.682761, -0.398549,
		19.393854, 22.825338, 19.076004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.890490, 22.823587, 19.809103>,  <18.965197, 23.303270, 19.354988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.890490, 22.823587, 19.809103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.218967, 22.697136, 19.619072>,  <19.416054, 22.621265, 19.505053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.218967, 22.697136, 19.619072>,  <18.890490, 22.823587, 19.809103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.218967, 22.697136, 19.619072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430455, -0.203381, 0.879400,
		-0.374626, -0.926660, -0.030937,
		0.821197, -0.316129, -0.475077,
		19.465326, 22.602297, 19.476549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.066721, 22.210737, 20.170097>,  <18.890490, 22.823587, 19.809103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.066721, 22.210737, 20.170097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.399277, 22.312832, 19.972654>,  <19.598810, 22.374088, 19.854189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.399277, 22.312832, 19.972654>,  <19.066721, 22.210737, 20.170097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.399277, 22.312832, 19.972654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555689, -0.378673, 0.740146,
		0.001996, -0.889641, -0.456656,
		0.831388, 0.255236, -0.493608,
		19.648693, 22.389402, 19.824572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.552774, 21.742310, 20.415899>,  <19.066721, 22.210737, 20.170097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.552774, 21.742310, 20.415899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.755398, 22.055374, 20.271212>,  <19.876972, 22.243214, 20.184399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.755398, 22.055374, 20.271212>,  <19.552774, 21.742310, 20.415899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.755398, 22.055374, 20.271212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585404, -0.004198, 0.810731,
		0.633010, -0.622432, -0.460300,
		0.506557, 0.782662, -0.361717,
		19.907366, 22.290173, 20.162697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.197882, 21.497511, 20.351339>,  <19.552774, 21.742310, 20.415899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.197882, 21.497511, 20.351339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.264366, 21.891945, 20.352472>,  <20.304256, 22.128605, 20.353153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.264366, 21.891945, 20.352472>,  <20.197882, 21.497511, 20.351339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.264366, 21.891945, 20.352472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821418, -0.140045, 0.552865,
		0.545570, -0.089564, -0.833266,
		0.166211, 0.986086, 0.002835,
		20.314230, 22.187771, 20.353323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.251225, 20.716452, 20.417423>,  <20.197882, 21.497511, 20.351339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.251225, 20.716452, 20.417423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.932674, 20.593155, 20.625566>,  <19.741545, 20.519176, 20.750452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.932674, 20.593155, 20.625566>,  <20.251225, 20.716452, 20.417423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.932674, 20.593155, 20.625566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527415, -0.067141, -0.846951,
		0.296005, -0.948935, -0.109103,
		-0.796376, -0.308244, 0.520357,
		19.693762, 20.500683, 20.781673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.018194, 20.180058, 20.108833>,  <20.251225, 20.716452, 20.417423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.018194, 20.180058, 20.108833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.696766, 20.312870, 20.306429>,  <19.503908, 20.392557, 20.424986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.696766, 20.312870, 20.306429>,  <20.018194, 20.180058, 20.108833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.696766, 20.312870, 20.306429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541794, -0.064413, -0.838039,
		-0.246439, -0.941065, 0.231655,
		-0.803571, 0.332035, 0.493990,
		19.455694, 20.412479, 20.454626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.495461, 19.744968, 19.844698>,  <20.018194, 20.180058, 20.108833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.495461, 19.744968, 19.844698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.281136, 20.040291, 20.008556>,  <19.152540, 20.217484, 20.106871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.281136, 20.040291, 20.008556>,  <19.495461, 19.744968, 19.844698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.281136, 20.040291, 20.008556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677303, -0.086146, -0.730643,
		-0.504149, -0.668941, 0.546216,
		-0.535811, 0.738307, 0.409645,
		19.120392, 20.261784, 20.131451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.905619, 19.437677, 19.844669>,  <19.495461, 19.744968, 19.844698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.905619, 19.437677, 19.844669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.829060, 19.824581, 19.911331>,  <18.783123, 20.056725, 19.951328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.829060, 19.824581, 19.911331>,  <18.905619, 19.437677, 19.844669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.829060, 19.824581, 19.911331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754499, -0.036396, -0.655291,
		-0.627771, -0.251163, 0.736763,
		-0.191400, 0.967260, 0.166654,
		18.771639, 20.114759, 19.961327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.253546, 19.464279, 19.764412>,  <18.905619, 19.437677, 19.844669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.253546, 19.464279, 19.764412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.370167, 19.839901, 19.691557>,  <18.440140, 20.065273, 19.647844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.370167, 19.839901, 19.691557>,  <18.253546, 19.464279, 19.764412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.370167, 19.839901, 19.691557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812664, 0.142728, -0.564983,
		-0.504554, 0.312737, 0.804749,
		0.291551, 0.939055, -0.182136,
		18.457632, 20.121618, 19.636917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.637949, 19.832125, 19.833956>,  <18.253546, 19.464279, 19.764412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.637949, 19.832125, 19.833956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.896797, 20.019341, 19.593233>,  <18.052107, 20.131670, 19.448799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.896797, 20.019341, 19.593233>,  <17.637949, 19.832125, 19.833956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.896797, 20.019341, 19.593233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701903, 0.057624, -0.709938,
		-0.297600, 0.881827, 0.365807,
		0.647122, 0.468039, -0.601808,
		18.090933, 20.159752, 19.412691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.425966, 20.546860, 19.597973>,  <17.637949, 19.832125, 19.833956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.425966, 20.546860, 19.597973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.634857, 20.374748, 19.303453>,  <17.760191, 20.271481, 19.126741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.634857, 20.374748, 19.303453>,  <17.425966, 20.546860, 19.597973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.634857, 20.374748, 19.303453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800834, 0.049366, -0.596848,
		0.293160, 0.901344, -0.318803,
		0.522227, -0.430281, -0.736300,
		17.791525, 20.245665, 19.082563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.145166, 20.893629, 19.079897>,  <17.425966, 20.546860, 19.597973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.145166, 20.893629, 19.079897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.394627, 20.642963, 18.892984>,  <17.544302, 20.492563, 18.780836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.394627, 20.642963, 18.892984>,  <17.145166, 20.893629, 19.079897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.394627, 20.642963, 18.892984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548557, 0.075025, -0.832740,
		0.556907, 0.775669, -0.296972,
		0.623650, -0.626665, -0.467281,
		17.581722, 20.454964, 18.752800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.247700, 21.270132, 18.487986>,  <17.145166, 20.893629, 19.079897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.247700, 21.270132, 18.487986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.361290, 20.895134, 18.407526>,  <17.429443, 20.670135, 18.359251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.361290, 20.895134, 18.407526>,  <17.247700, 21.270132, 18.487986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.361290, 20.895134, 18.407526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547089, 0.013859, -0.836960,
		0.787434, 0.347721, -0.508958,
		0.283975, -0.937496, -0.201148,
		17.446482, 20.613886, 18.347181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.564129, 21.262718, 17.890848>,  <17.247700, 21.270132, 18.487986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.564129, 21.262718, 17.890848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.445194, 20.881798, 17.918306>,  <17.373833, 20.653246, 17.934782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.445194, 20.881798, 17.918306>,  <17.564129, 21.262718, 17.890848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.445194, 20.881798, 17.918306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605201, 0.132375, -0.784990,
		0.738460, -0.274952, -0.615693,
		-0.297337, -0.952302, 0.068647,
		17.355993, 20.596107, 17.938900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.666801, 20.941696, 17.292976>,  <17.564129, 21.262718, 17.890848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.666801, 20.941696, 17.292976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.379639, 20.705238, 17.440031>,  <17.207340, 20.563364, 17.528265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.379639, 20.705238, 17.440031>,  <17.666801, 20.941696, 17.292976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.379639, 20.705238, 17.440031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336473, -0.167666, -0.926647,
		0.609422, -0.788947, -0.078535,
		-0.717907, -0.591144, 0.367638,
		17.164267, 20.527895, 17.550323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.652018, 20.489433, 16.816288>,  <17.666801, 20.941696, 17.292976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.652018, 20.489433, 16.816288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.309341, 20.409695, 17.006590>,  <17.103735, 20.361853, 17.120771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.309341, 20.409695, 17.006590>,  <17.652018, 20.489433, 16.816288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.309341, 20.409695, 17.006590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423002, -0.256353, -0.869110,
		0.295215, -0.945804, 0.135291,
		-0.856690, -0.199346, 0.475756,
		17.052334, 20.349892, 17.149317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.404535, 19.801910, 16.550587>,  <17.652018, 20.489433, 16.816288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.404535, 19.801910, 16.550587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.101334, 20.038364, 16.660851>,  <16.919413, 20.180237, 16.727009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.101334, 20.038364, 16.660851>,  <17.404535, 19.801910, 16.550587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.101334, 20.038364, 16.660851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508491, -0.270883, -0.817349,
		-0.408489, -0.759727, 0.505917,
		-0.758006, 0.591132, 0.275661,
		16.873932, 20.215704, 16.743549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.873043, 19.487799, 16.346537>,  <17.404535, 19.801910, 16.550587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.873043, 19.487799, 16.346537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.702583, 19.844967, 16.404631>,  <16.600307, 20.059267, 16.439487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.702583, 19.844967, 16.404631>,  <16.873043, 19.487799, 16.346537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.702583, 19.844967, 16.404631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585567, -0.149890, -0.796646,
		-0.689571, -0.424533, 0.586739,
		-0.426149, 0.892919, 0.145233,
		16.574739, 20.112843, 16.448200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.239645, 19.382429, 16.133411>,  <16.873043, 19.487799, 16.346537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.239645, 19.382429, 16.133411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.233795, 19.782368, 16.129547>,  <16.230286, 20.022331, 16.127228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.233795, 19.782368, 16.129547>,  <16.239645, 19.382429, 16.133411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.233795, 19.782368, 16.129547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474226, -0.015443, -0.880268,
		-0.880282, -0.008291, 0.474379,
		-0.014624, 0.999846, -0.009663,
		16.229408, 20.082321, 16.126648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.540387, 19.470457, 15.852473>,  <16.239645, 19.382429, 16.133411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.540387, 19.470457, 15.852473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.751645, 19.807625, 15.811397>,  <15.878400, 20.009926, 15.786751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.751645, 19.807625, 15.811397>,  <15.540387, 19.470457, 15.852473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.751645, 19.807625, 15.811397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372398, 0.121236, -0.920121,
		-0.763139, 0.524200, 0.377932,
		0.528146, 0.842921, -0.102691,
		15.910089, 20.060501, 15.780589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.037627, 19.946459, 15.533051>,  <15.540387, 19.470457, 15.852473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.037627, 19.946459, 15.533051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.412906, 20.078114, 15.490239>,  <15.638073, 20.157106, 15.464552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.412906, 20.078114, 15.490239>,  <15.037627, 19.946459, 15.533051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.412906, 20.078114, 15.490239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226677, 0.350648, -0.908660,
		-0.261544, 0.876763, 0.403585,
		0.938196, 0.329138, -0.107032,
		15.694365, 20.176855, 15.458130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.916120, 20.561863, 15.247791>,  <15.037627, 19.946459, 15.533051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.916120, 20.561863, 15.247791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.292239, 20.461723, 15.155564>,  <15.517911, 20.401640, 15.100228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.292239, 20.461723, 15.155564>,  <14.916120, 20.561863, 15.247791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.292239, 20.461723, 15.155564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157711, 0.279826, -0.947008,
		0.301602, 0.926835, 0.223638,
		0.940300, -0.250349, -0.230568,
		15.574329, 20.386618, 15.086393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.257281, 21.245565, 14.937201>,  <14.916120, 20.561863, 15.247791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.257281, 21.245565, 14.937201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.477479, 20.927319, 14.836047>,  <15.609597, 20.736370, 14.775355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.477479, 20.927319, 14.836047>,  <15.257281, 21.245565, 14.937201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.477479, 20.927319, 14.836047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099573, 0.363325, -0.926326,
		0.828880, 0.484756, 0.279230,
		0.550493, -0.795617, -0.252884,
		15.642627, 20.688633, 14.760182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.765392, 21.570194, 14.397479>,  <15.257281, 21.245565, 14.937201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.765392, 21.570194, 14.397479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.754193, 21.172272, 14.358333>,  <15.747474, 20.933517, 14.334845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.754193, 21.172272, 14.358333>,  <15.765392, 21.570194, 14.397479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.754193, 21.172272, 14.358333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172356, 0.091633, -0.980764,
		0.984637, -0.044328, 0.168895,
		-0.027998, -0.994806, -0.097866,
		15.745793, 20.873831, 14.328973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.390434, 21.257389, 13.900607>,  <15.765392, 21.570194, 14.397479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.390434, 21.257389, 13.900607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.079884, 21.005291, 13.902757>,  <15.893553, 20.854033, 13.904046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.079884, 21.005291, 13.902757>,  <16.390434, 21.257389, 13.900607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.079884, 21.005291, 13.902757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025768, 0.023221, -0.999398,
		0.629742, -0.776048, -0.034269,
		-0.776377, -0.630246, 0.005374,
		15.846971, 20.816217, 13.904368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.450291, 20.854967, 13.329745>,  <16.390434, 21.257389, 13.900607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.450291, 20.854967, 13.329745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.071201, 20.754902, 13.408980>,  <15.843747, 20.694862, 13.456521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.071201, 20.754902, 13.408980>,  <16.450291, 20.854967, 13.329745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.071201, 20.754902, 13.408980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174044, -0.115056, -0.977993,
		0.267447, -0.961343, 0.065503,
		-0.947724, -0.250161, 0.198088,
		15.786884, 20.679853, 13.468407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.245398, 20.189373, 13.074637>,  <16.450291, 20.854967, 13.329745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.245398, 20.189373, 13.074637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.941052, 20.447678, 13.100193>,  <15.758446, 20.602661, 13.115526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.941052, 20.447678, 13.100193>,  <16.245398, 20.189373, 13.074637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.941052, 20.447678, 13.100193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135549, -0.061878, -0.988837,
		-0.634600, -0.761027, 0.134613,
		-0.760861, 0.645762, 0.063889,
		15.712794, 20.641407, 13.119360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.805138, 19.935743, 12.563901>,  <16.245398, 20.189373, 13.074637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.805138, 19.935743, 12.563901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.621608, 20.285828, 12.625199>,  <15.511490, 20.495878, 12.661979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.621608, 20.285828, 12.625199>,  <15.805138, 19.935743, 12.563901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.621608, 20.285828, 12.625199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153606, 0.091743, -0.983864,
		-0.875149, -0.474960, 0.092344,
		-0.458824, 0.875212, 0.153246,
		15.483960, 20.548391, 12.671173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.192740, 19.919287, 12.178081>,  <15.805138, 19.935743, 12.563901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.192740, 19.919287, 12.178081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.229465, 20.311348, 12.248365>,  <15.251499, 20.546585, 12.290537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.229465, 20.311348, 12.248365>,  <15.192740, 19.919287, 12.178081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.229465, 20.311348, 12.248365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328105, 0.196381, -0.924003,
		-0.940169, 0.027181, 0.339622,
		0.091811, 0.980151, 0.175713,
		15.257008, 20.605392, 12.301080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.660585, 20.124716, 11.854420>,  <15.192740, 19.919287, 12.178081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.660585, 20.124716, 11.854420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.891393, 20.451302, 11.862748>,  <15.029877, 20.647253, 11.867745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.891393, 20.451302, 11.862748>,  <14.660585, 20.124716, 11.854420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.891393, 20.451302, 11.862748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177285, 0.150094, -0.972647,
		-0.797258, 0.557544, 0.231354,
		0.577018, 0.816466, 0.020820,
		15.064498, 20.696241, 11.868994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.210443, 20.671505, 11.546138>,  <14.660585, 20.124716, 11.854420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.210443, 20.671505, 11.546138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.595832, 20.775654, 11.521069>,  <14.827065, 20.838144, 11.506027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.595832, 20.775654, 11.521069>,  <14.210443, 20.671505, 11.546138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.595832, 20.775654, 11.521069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075292, 0.038766, -0.996408,
		-0.257008, 0.964729, 0.056954,
		0.963472, 0.260373, -0.062674,
		14.884873, 20.853765, 11.502267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.221104, 21.154099, 10.955055>,  <14.210443, 20.671505, 11.546138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.221104, 21.154099, 10.955055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.605872, 21.046562, 10.974776>,  <14.836733, 20.982040, 10.986609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.605872, 21.046562, 10.974776>,  <14.221104, 21.154099, 10.955055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.605872, 21.046562, 10.974776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009013, -0.149085, -0.988783,
		0.273178, 0.951576, -0.140985,
		0.961921, -0.268843, 0.049304,
		14.894448, 20.965910, 10.989568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.570934, 21.512312, 10.513402>,  <14.221104, 21.154099, 10.955055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.570934, 21.512312, 10.513402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.787648, 21.180954, 10.570297>,  <14.917677, 20.982140, 10.604435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.787648, 21.180954, 10.570297>,  <14.570934, 21.512312, 10.513402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.787648, 21.180954, 10.570297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005264, -0.172568, -0.984983,
		0.840501, 0.532901, -0.097855,
		0.541785, -0.828394, 0.142239,
		14.950184, 20.932436, 10.612968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.942695, 21.575579, 9.949075>,  <14.570934, 21.512312, 10.513402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.942695, 21.575579, 9.949075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.000262, 21.191654, 10.045446>,  <15.034802, 20.961300, 10.103270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.000262, 21.191654, 10.045446>,  <14.942695, 21.575579, 9.949075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.000262, 21.191654, 10.045446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086773, -0.254765, -0.963102,
		0.985778, 0.117702, -0.119951,
		0.143919, -0.959813, 0.240929,
		15.043438, 20.903709, 10.117725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.308649, 21.401569, 9.410430>,  <14.942695, 21.575579, 9.949075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.308649, 21.401569, 9.410430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.183864, 21.053543, 9.563094>,  <15.108993, 20.844727, 9.654693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.183864, 21.053543, 9.563094>,  <15.308649, 21.401569, 9.410430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.183864, 21.053543, 9.563094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024004, -0.408796, -0.912310,
		0.949791, -0.275445, 0.148414,
		-0.311963, -0.870066, 0.381660,
		15.090275, 20.792522, 9.677592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.762454, 20.948730, 9.107227>,  <15.308649, 21.401569, 9.410430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.762454, 20.948730, 9.107227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.449533, 20.732632, 9.231250>,  <15.261780, 20.602972, 9.305663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.449533, 20.732632, 9.231250>,  <15.762454, 20.948730, 9.107227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.449533, 20.732632, 9.231250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073399, -0.574246, -0.815386,
		0.618559, -0.615121, 0.488888,
		-0.782303, -0.540248, 0.310056,
		15.214842, 20.570557, 9.324266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.020048, 20.302052, 8.999380>,  <15.762454, 20.948730, 9.107227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.020048, 20.302052, 8.999380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.620971, 20.284981, 9.020510>,  <15.381525, 20.274738, 9.033187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.620971, 20.284981, 9.020510>,  <16.020048, 20.302052, 8.999380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.620971, 20.284981, 9.020510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010019, -0.676848, -0.736054,
		0.067166, -0.734884, 0.674859,
		-0.997692, -0.042676, 0.052823,
		15.321663, 20.272179, 9.036357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.908804, 19.584511, 8.847795>,  <16.020048, 20.302052, 8.999380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.908804, 19.584511, 8.847795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.571445, 19.782757, 8.764806>,  <15.369029, 19.901705, 8.715013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.571445, 19.782757, 8.764806>,  <15.908804, 19.584511, 8.847795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.571445, 19.782757, 8.764806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176905, -0.620772, -0.763771,
		-0.507329, -0.607461, 0.611235,
		-0.843399, 0.495614, -0.207472,
		15.318425, 19.931440, 8.702564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.377125, 19.092461, 8.820779>,  <15.908804, 19.584511, 8.847795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.377125, 19.092461, 8.820779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.281251, 19.427208, 8.623922>,  <15.223726, 19.628056, 8.505809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.281251, 19.427208, 8.623922>,  <15.377125, 19.092461, 8.820779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.281251, 19.427208, 8.623922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199883, -0.538593, -0.818514,
		-0.950052, -0.097815, 0.296368,
		-0.239684, 0.836869, -0.492140,
		15.209346, 19.678268, 8.476280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.739120, 18.960793, 8.697845>,  <15.377125, 19.092461, 8.820779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.739120, 18.960793, 8.697845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.879743, 19.236664, 8.444626>,  <14.964117, 19.402187, 8.292695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.879743, 19.236664, 8.444626>,  <14.739120, 18.960793, 8.697845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.879743, 19.236664, 8.444626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191370, -0.608989, -0.769746,
		-0.916397, 0.391757, -0.082112,
		0.351559, 0.689680, -0.633047,
		14.985210, 19.443567, 8.254712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.180951, 19.026459, 8.164234>,  <14.739120, 18.960793, 8.697845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.180951, 19.026459, 8.164234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.506988, 19.161575, 7.975970>,  <14.702610, 19.242645, 7.863012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.506988, 19.161575, 7.975970>,  <14.180951, 19.026459, 8.164234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.506988, 19.161575, 7.975970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293023, -0.460453, -0.837926,
		-0.499762, 0.820901, -0.276331,
		0.815092, 0.337793, -0.470660,
		14.751515, 19.262913, 7.834772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.913879, 19.299355, 7.446811>,  <14.180951, 19.026459, 8.164234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.913879, 19.299355, 7.446811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.306798, 19.234669, 7.408980>,  <14.542549, 19.195858, 7.386282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.306798, 19.234669, 7.408980>,  <13.913879, 19.299355, 7.446811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.306798, 19.234669, 7.408980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156853, -0.433897, -0.887204,
		0.102435, 0.886331, -0.451580,
		0.982295, -0.161713, -0.094577,
		14.601486, 19.186155, 7.380607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.085417, 19.409672, 6.789887>,  <13.913879, 19.299355, 7.446811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.085417, 19.409672, 6.789887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.381385, 19.177711, 6.926259>,  <14.558966, 19.038536, 7.008082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.381385, 19.177711, 6.926259>,  <14.085417, 19.409672, 6.789887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.381385, 19.177711, 6.926259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017218, -0.490321, -0.871372,
		0.672474, 0.650616, -0.352813,
		0.739920, -0.579900, 0.340931,
		14.603361, 19.003742, 7.028538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.457883, 19.254139, 6.192135>,  <14.085417, 19.409672, 6.789887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.457883, 19.254139, 6.192135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.575625, 18.974701, 6.453000>,  <14.646271, 18.807037, 6.609519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.575625, 18.974701, 6.453000>,  <14.457883, 19.254139, 6.192135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.575625, 18.974701, 6.453000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181019, -0.629288, -0.755797,
		0.938396, 0.340527, -0.058776,
		0.294357, -0.698597, 0.652163,
		14.663933, 18.765121, 6.648649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.195317, 19.121952, 6.273748>,  <14.457883, 19.254139, 6.192135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.195317, 19.121952, 6.273748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.940438, 18.815823, 6.310100>,  <14.787511, 18.632145, 6.331911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.940438, 18.815823, 6.310100>,  <15.195317, 19.121952, 6.273748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.940438, 18.815823, 6.310100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479365, -0.485897, -0.730831,
		0.603480, -0.422120, 0.676481,
		-0.637198, -0.765323, 0.090880,
		14.749279, 18.586226, 6.337363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.667267, 18.676237, 6.183892>,  <15.195317, 19.121952, 6.273748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.667267, 18.676237, 6.183892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.295587, 18.563389, 6.088399>,  <15.072578, 18.495680, 6.031103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.295587, 18.563389, 6.088399>,  <15.667267, 18.676237, 6.183892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.295587, 18.563389, 6.088399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334426, -0.366919, -0.868061,
		0.157302, -0.886442, 0.435290,
		-0.929201, -0.282120, -0.238732,
		15.016826, 18.478752, 6.016779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.636695, 17.928131, 6.199198>,  <15.667267, 18.676237, 6.183892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.636695, 17.928131, 6.199198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.396718, 18.115704, 5.939915>,  <15.252732, 18.228247, 5.784345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.396718, 18.115704, 5.939915>,  <15.636695, 17.928131, 6.199198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.396718, 18.115704, 5.939915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581704, -0.300569, -0.755830,
		-0.549263, -0.830519, -0.092455,
		-0.599942, 0.468931, -0.648208,
		15.216736, 18.256382, 5.745452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.317098, 17.460743, 5.714705>,  <15.636695, 17.928131, 6.199198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.317098, 17.460743, 5.714705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.403665, 17.811058, 5.542120>,  <15.455605, 18.021248, 5.438569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.403665, 17.811058, 5.542120>,  <15.317098, 17.460743, 5.714705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.403665, 17.811058, 5.542120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311176, -0.480764, -0.819778,
		-0.925383, 0.043155, -0.376570,
		0.216418, 0.875787, -0.431462,
		15.468590, 18.073793, 5.412682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.925787, 17.773165, 5.160368>,  <15.317098, 17.460743, 5.714705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.925787, 17.773165, 5.160368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.289203, 17.923508, 5.087389>,  <15.507252, 18.013714, 5.043602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.289203, 17.923508, 5.087389>,  <14.925787, 17.773165, 5.160368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.289203, 17.923508, 5.087389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236170, -0.822240, -0.517826,
		-0.344645, 0.427377, -0.835804,
		0.908539, 0.375858, -0.182447,
		15.561765, 18.036264, 5.032655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.087814, 17.778059, 4.416677>,  <14.925787, 17.773165, 5.160368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.087814, 17.778059, 4.416677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.422275, 17.704651, 4.623432>,  <15.622951, 17.660606, 4.747486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.422275, 17.704651, 4.623432>,  <15.087814, 17.778059, 4.416677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.422275, 17.704651, 4.623432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038675, -0.920296, -0.389308,
		0.547136, 0.345510, -0.762407,
		0.836150, -0.183518, 0.516890,
		15.673120, 17.649595, 4.778499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.625018, 17.589954, 4.023229>,  <15.087814, 17.778059, 4.416677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.625018, 17.589954, 4.023229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.702807, 17.427986, 4.380602>,  <15.749481, 17.330805, 4.595026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.702807, 17.427986, 4.380602>,  <15.625018, 17.589954, 4.023229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.702807, 17.427986, 4.380602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072810, -0.902350, -0.424809,
		0.978202, 0.147665, -0.146002,
		0.194474, -0.404918, 0.893432,
		15.761149, 17.306511, 4.648632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.748161, 16.914223, 3.656824>,  <15.625018, 17.589954, 4.023229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.748161, 16.914223, 3.656824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.984134, 16.626255, 3.803084>,  <16.125717, 16.453474, 3.890840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.984134, 16.626255, 3.803084>,  <15.748161, 16.914223, 3.656824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.984134, 16.626255, 3.803084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664947, -0.176248, 0.725798,
		-0.458070, -0.671308, -0.582681,
		0.589931, -0.719918, 0.365650,
		16.161114, 16.410280, 3.912779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.480210, 16.192984, 3.760548>,  <15.748161, 16.914223, 3.656824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.480210, 16.192984, 3.760548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.759614, 16.253624, 4.040291>,  <15.927257, 16.290009, 4.208137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.759614, 16.253624, 4.040291>,  <15.480210, 16.192984, 3.760548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.759614, 16.253624, 4.040291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643895, -0.293252, 0.706684,
		0.312223, -0.943938, -0.107224,
		0.698510, 0.151603, 0.699358,
		15.969167, 16.299105, 4.250098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.257775, 15.766727, 4.358794>,  <15.480210, 16.192984, 3.760548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.257775, 15.766727, 4.358794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.531756, 16.020798, 4.501560>,  <15.696145, 16.173241, 4.587220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.531756, 16.020798, 4.501560>,  <15.257775, 15.766727, 4.358794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.531756, 16.020798, 4.501560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477967, 0.022004, 0.878102,
		0.549897, -0.772053, 0.318665,
		0.684954, 0.635177, 0.356916,
		15.737243, 16.211351, 4.608635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.561360, 16.229622, 4.177481>,  <15.257775, 15.766727, 4.358794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.561360, 16.229622, 4.177481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.185775, 16.310383, 4.066067>,  <13.960423, 16.358839, 3.999218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.185775, 16.310383, 4.066067>,  <14.561360, 16.229622, 4.177481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.185775, 16.310383, 4.066067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053702, 0.713708, 0.698382,
		0.339798, 0.670713, -0.659303,
		-0.938964, 0.201903, -0.278535,
		13.904085, 16.370955, 3.982506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.328192, 16.669312, 3.551030>,  <14.561360, 16.229622, 4.177481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.328192, 16.669312, 3.551030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.509671, 16.545963, 3.216590>,  <14.618559, 16.471954, 3.015925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.509671, 16.545963, 3.216590>,  <14.328192, 16.669312, 3.551030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.509671, 16.545963, 3.216590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192733, 0.882063, -0.429906,
		0.870065, 0.356192, 0.340757,
		0.453698, -0.308371, -0.836101,
		14.645781, 16.453451, 2.965759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.388419, 17.200087, 3.165048>,  <14.328192, 16.669312, 3.551030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.388419, 17.200087, 3.165048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.540891, 16.974125, 2.872313>,  <14.632374, 16.838547, 2.696673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.540891, 16.974125, 2.872313>,  <14.388419, 17.200087, 3.165048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.540891, 16.974125, 2.872313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034676, 0.799780, -0.599291,
		0.923851, 0.203060, 0.324448,
		0.381179, -0.564906, -0.731836,
		14.655244, 16.804653, 2.652762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.004117, 17.500919, 2.870526>,  <14.388419, 17.200087, 3.165048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.004117, 17.500919, 2.870526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.808700, 17.267738, 2.610836>,  <14.691449, 17.127831, 2.455023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.808700, 17.267738, 2.610836>,  <15.004117, 17.500919, 2.870526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.808700, 17.267738, 2.610836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043868, 0.759532, -0.648989,
		0.871435, -0.288580, -0.396639,
		-0.488545, -0.582951, -0.649224,
		14.662136, 17.092854, 2.416069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.345089, 17.476448, 2.150424>,  <15.004117, 17.500919, 2.870526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.345089, 17.476448, 2.150424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.947286, 17.447071, 2.120601>,  <14.708604, 17.429445, 2.102708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.947286, 17.447071, 2.120601>,  <15.345089, 17.476448, 2.150424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.947286, 17.447071, 2.120601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004131, 0.684289, -0.729199,
		0.104573, -0.725503, -0.680227,
		-0.994509, -0.073445, -0.074555,
		14.648933, 17.425037, 2.098235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.989303, 17.126881, 1.487854>,  <15.345089, 17.476448, 2.150424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.989303, 17.126881, 1.487854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.828462, 17.437134, 1.682464>,  <14.731957, 17.623285, 1.799231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.828462, 17.437134, 1.682464>,  <14.989303, 17.126881, 1.487854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.828462, 17.437134, 1.682464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117849, 0.570802, -0.812586,
		-0.907979, -0.269407, -0.320928,
		-0.402103, 0.775632, 0.486527,
		14.707830, 17.669823, 1.828423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.860473, 17.437178, 0.914796>,  <14.989303, 17.126881, 1.487854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.860473, 17.437178, 0.914796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.913667, 17.698345, 1.213061>,  <14.945583, 17.855045, 1.392020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.913667, 17.698345, 1.213061>,  <14.860473, 17.437178, 0.914796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.913667, 17.698345, 1.213061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319142, 0.684066, -0.655899,
		-0.938330, 0.325197, -0.117403,
		0.132984, 0.652918, 0.745663,
		14.953562, 17.894220, 1.436760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.653946, 18.191099, 0.771875>,  <14.860473, 17.437178, 0.914796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.653946, 18.191099, 0.771875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.942033, 18.224724, 1.047330>,  <15.114884, 18.244898, 1.212603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.942033, 18.224724, 1.047330>,  <14.653946, 18.191099, 0.771875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.942033, 18.224724, 1.047330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270439, 0.880086, -0.390272,
		-0.638867, 0.467315, 0.611119,
		0.720217, 0.084061, 0.688638,
		15.158098, 18.249943, 1.253922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.668928, 18.850527, 1.173526>,  <14.653946, 18.191099, 0.771875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.668928, 18.850527, 1.173526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.038247, 18.697037, 1.180156>,  <15.259838, 18.604942, 1.184134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.038247, 18.697037, 1.180156>,  <14.668928, 18.850527, 1.173526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.038247, 18.697037, 1.180156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368199, 0.871999, -0.322563,
		0.109322, 0.303925, 0.946403,
		0.923298, -0.383727, 0.016576,
		15.315236, 18.581919, 1.185129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.055872, 19.427479, 0.944626>,  <14.668928, 18.850527, 1.173526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.055872, 19.427479, 0.944626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.329497, 19.140533, 0.997468>,  <15.493672, 18.968367, 1.029172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.329497, 19.140533, 0.997468>,  <15.055872, 19.427479, 0.944626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.329497, 19.140533, 0.997468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659465, 0.530834, -0.532278,
		0.311711, 0.451229, 0.836199,
		0.684062, -0.717361, 0.132104,
		15.534716, 18.925325, 1.037099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.676115, 19.646261, 1.299125>,  <15.055872, 19.427479, 0.944626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.676115, 19.646261, 1.299125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.761260, 19.348888, 1.045512>,  <15.812347, 19.170465, 0.893344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.761260, 19.348888, 1.045512>,  <15.676115, 19.646261, 1.299125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.761260, 19.348888, 1.045512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679911, 0.578731, -0.450323,
		0.701719, -0.335228, 0.628659,
		0.212864, -0.743433, -0.634032,
		15.825119, 19.125858, 0.855302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.936313, 19.234726, 1.875064>,  <15.676115, 19.646261, 1.299125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.936313, 19.234726, 1.875064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.309147, 19.368401, 1.819158>,  <16.532848, 19.448605, 1.785615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.309147, 19.368401, 1.819158>,  <15.936313, 19.234726, 1.875064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.309147, 19.368401, 1.819158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352910, 0.750784, -0.558372,
		-0.081666, 0.569775, 0.817733,
		0.932087, 0.334186, -0.139765,
		16.588774, 19.468657, 1.777229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.198427, 19.971382, 2.186416>,  <15.936313, 19.234726, 1.875064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.198427, 19.971382, 2.186416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.395695, 19.878258, 1.851134>,  <16.514055, 19.822384, 1.649965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.395695, 19.878258, 1.851134>,  <16.198427, 19.971382, 2.186416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.395695, 19.878258, 1.851134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326197, 0.843736, -0.426268,
		0.806462, 0.483641, 0.340161,
		0.493167, -0.232809, -0.838204,
		16.543644, 19.808414, 1.599673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.852373, 20.496080, 1.974038>,  <16.198427, 19.971382, 2.186416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.852373, 20.496080, 1.974038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.583759, 20.332218, 1.727065>,  <16.422590, 20.233900, 1.578881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.583759, 20.332218, 1.727065>,  <16.852373, 20.496080, 1.974038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.583759, 20.332218, 1.727065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385375, 0.904799, -0.181178,
		0.632872, 0.116276, -0.765475,
		-0.671535, -0.409658, -0.617432,
		16.382299, 20.209320, 1.541835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.949070, 20.726240, 1.168652>,  <16.852373, 20.496080, 1.974038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.949070, 20.726240, 1.168652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.586735, 20.617905, 1.298947>,  <16.369333, 20.552904, 1.377125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.586735, 20.617905, 1.298947>,  <16.949070, 20.726240, 1.168652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.586735, 20.617905, 1.298947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339640, 0.923881, -0.176323,
		-0.253189, -0.270353, -0.928873,
		-0.905837, -0.270839, 0.325739,
		16.314983, 20.536654, 1.396669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.402887, 20.881992, 0.610777>,  <16.949070, 20.726240, 1.168652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.402887, 20.881992, 0.610777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.282265, 20.905083, 0.991457>,  <16.209892, 20.918938, 1.219865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.282265, 20.905083, 0.991457>,  <16.402887, 20.881992, 0.610777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.282265, 20.905083, 0.991457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346664, 0.923212, -0.165843,
		-0.888194, -0.379931, -0.258388,
		-0.301555, 0.057726, 0.951699,
		16.191797, 20.922401, 1.276967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.851417, 20.464470, 0.217125>,  <16.402887, 20.881992, 0.610777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.851417, 20.464470, 0.217125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.741158, 20.848927, 0.211069>,  <15.675003, 21.079599, 0.207435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.741158, 20.848927, 0.211069>,  <15.851417, 20.464470, 0.217125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.741158, 20.848927, 0.211069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816344, -0.225745, 0.531622,
		0.507545, 0.158901, 0.846846,
		-0.275646, 0.961140, -0.015142,
		15.658464, 21.137268, 0.206526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.577497, 20.675476, 0.925757>,  <15.851417, 20.464470, 0.217125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.577497, 20.675476, 0.925757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.401702, 20.885651, 0.634343>,  <15.296225, 21.011755, 0.459494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.401702, 20.885651, 0.634343>,  <15.577497, 20.675476, 0.925757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.401702, 20.885651, 0.634343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898163, -0.245913, 0.364458,
		0.012343, 0.814520, 0.580004,
		-0.439489, 0.525437, -0.728536,
		15.269855, 21.043282, 0.415782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.048605, 21.066124, 1.207681>,  <15.577497, 20.675476, 0.925757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.048605, 21.066124, 1.207681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.966763, 20.994389, 0.822770>,  <14.917659, 20.951347, 0.591824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.966763, 20.994389, 0.822770>,  <15.048605, 21.066124, 1.207681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.966763, 20.994389, 0.822770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.956923, -0.170243, 0.235195,
		-0.206001, 0.968945, -0.136781,
		-0.204605, -0.179339, -0.962276,
		14.905382, 20.940586, 0.534088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.485280, 21.418619, 0.718599>,  <15.048605, 21.066124, 1.207681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.485280, 21.418619, 0.718599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.547030, 21.036713, 0.616942>,  <14.584081, 20.807568, 0.555948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.547030, 21.036713, 0.616942>,  <14.485280, 21.418619, 0.718599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.547030, 21.036713, 0.616942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.983423, -0.173252, 0.053507,
		-0.095117, 0.241668, -0.965686,
		0.154376, -0.954767, -0.254141,
		14.593344, 20.750282, 0.540700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.315718, 21.255705, 0.038033>,  <14.485280, 21.418619, 0.718599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.315718, 21.255705, 0.038033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.263083, 20.951942, 0.292902>,  <14.231503, 20.769686, 0.445823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.263083, 20.951942, 0.292902>,  <14.315718, 21.255705, 0.038033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.263083, 20.951942, 0.292902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.990663, 0.123864, -0.056960,
		-0.035667, -0.638718, -0.768614,
		-0.131585, -0.759406, 0.637172,
		14.223608, 20.724121, 0.484053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.903978, 20.696909, -0.215044>,  <14.315718, 21.255705, 0.038033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.903978, 20.696909, -0.215044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.882205, 20.713203, 0.184031>,  <13.869141, 20.722980, 0.423475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.882205, 20.713203, 0.184031>,  <13.903978, 20.696909, -0.215044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.882205, 20.713203, 0.184031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.966470, 0.248956, -0.062896,
		-0.250942, -0.967658, 0.025819,
		-0.054434, 0.040737, 0.997686,
		13.865875, 20.725424, 0.483336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.736088, 20.064636, -0.571648>,  <13.903978, 20.696909, -0.215044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.736088, 20.064636, -0.571648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.905974, 19.704563, -0.610193>,  <14.007906, 19.488520, -0.633320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.905974, 19.704563, -0.610193>,  <13.736088, 20.064636, -0.571648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.905974, 19.704563, -0.610193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248639, 0.218327, -0.943669,
		0.870515, 0.376832, 0.316547,
		0.424716, -0.900184, -0.096362,
		14.033389, 19.434507, -0.639102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.505794, 20.099510, -0.874516>,  <13.736088, 20.064636, -0.571648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.505794, 20.099510, -0.874516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.314088, 19.754349, -0.938644>,  <14.199064, 19.547253, -0.977120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.314088, 19.754349, -0.938644>,  <14.505794, 20.099510, -0.874516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.314088, 19.754349, -0.938644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250378, 0.040652, -0.967294,
		0.841199, -0.503731, 0.196569,
		-0.479265, -0.862904, -0.160319,
		14.170308, 19.495478, -0.986739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.959621, 19.718895, -1.163988>,  <14.505794, 20.099510, -0.874516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.959621, 19.718895, -1.163988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.597352, 19.616333, -1.299050>,  <14.379991, 19.554796, -1.380087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.597352, 19.616333, -1.299050>,  <14.959621, 19.718895, -1.163988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.597352, 19.616333, -1.299050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311769, 0.136948, -0.940237,
		0.287324, -0.956818, -0.044090,
		-0.905674, -0.256407, -0.337654,
		14.325649, 19.539412, -1.400346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<21.344635, 20.056932, 14.351370> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.567516, 20.348911, 14.193027>,  <21.701244, 20.524097, 14.098021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.567516, 20.348911, 14.193027>,  <21.344635, 20.056932, 14.351370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.567516, 20.348911, 14.193027> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431113, -0.153138, -0.889208,
		-0.709694, 0.666129, 0.229360,
		0.557203, 0.729946, -0.395858,
		21.734676, 20.567896, 14.074269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.902977, 20.386753, 13.948742>,  <21.344635, 20.056932, 14.351370>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.902977, 20.386753, 13.948742> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.246006, 20.542122, 13.813867>,  <21.451824, 20.635344, 13.732942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.246006, 20.542122, 13.813867>,  <20.902977, 20.386753, 13.948742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.246006, 20.542122, 13.813867> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330097, -0.087138, -0.939916,
		-0.394468, 0.917351, 0.053490,
		0.857573, 0.388424, -0.337188,
		21.503279, 20.658649, 13.712710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.768848, 21.052250, 13.588551>,  <20.902977, 20.386753, 13.948742>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.768848, 21.052250, 13.588551> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.115231, 20.916161, 13.441924>,  <21.323059, 20.834507, 13.353948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.115231, 20.916161, 13.441924>,  <20.768848, 21.052250, 13.588551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.115231, 20.916161, 13.441924> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408161, -0.057210, -0.911116,
		0.289011, 0.938603, -0.188406,
		0.865955, -0.340222, -0.366567,
		21.375017, 20.814095, 13.331954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.052670, 21.429914, 13.054122>,  <20.768848, 21.052250, 13.588551>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.052670, 21.429914, 13.054122> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.211411, 21.073387, 12.966434>,  <21.306656, 20.859470, 12.913820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.211411, 21.073387, 12.966434>,  <21.052670, 21.429914, 13.054122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.211411, 21.073387, 12.966434> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436044, 0.027093, -0.899517,
		0.807696, 0.452567, -0.377902,
		0.396853, -0.891319, -0.219222,
		21.330467, 20.805992, 12.900667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.262321, 21.477034, 12.360229>,  <21.052670, 21.429914, 13.054122>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.262321, 21.477034, 12.360229> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.299942, 21.084045, 12.424611>,  <21.322514, 20.848253, 12.463241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.299942, 21.084045, 12.424611>,  <21.262321, 21.477034, 12.360229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.299942, 21.084045, 12.424611> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213992, -0.177845, -0.960509,
		0.972297, 0.055893, -0.226967,
		0.094051, -0.982470, 0.160958,
		21.328157, 20.789305, 12.472898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.607136, 21.168861, 11.793927>,  <21.262321, 21.477034, 12.360229>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.607136, 21.168861, 11.793927> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.418007, 20.850899, 11.946012>,  <21.304529, 20.660122, 12.037262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.418007, 20.850899, 11.946012>,  <21.607136, 21.168861, 11.793927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.418007, 20.850899, 11.946012> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377471, -0.207172, -0.902550,
		0.796212, -0.570265, -0.202099,
		-0.472823, -0.794907, 0.380212,
		21.276159, 20.612427, 12.060075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.626064, 20.556004, 11.330378>,  <21.607136, 21.168861, 11.793927>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.626064, 20.556004, 11.330378> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.329369, 20.430359, 11.567410>,  <21.151350, 20.354971, 11.709630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.329369, 20.430359, 11.567410>,  <21.626064, 20.556004, 11.330378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.329369, 20.430359, 11.567410> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510819, -0.307955, -0.802638,
		0.434608, -0.898051, 0.067968,
		-0.741741, -0.314113, 0.592582,
		21.106846, 20.336124, 11.745185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.354982, 19.809547, 11.084414>,  <21.626064, 20.556004, 11.330378>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.354982, 19.809547, 11.084414> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.054195, 19.980988, 11.284753>,  <20.873724, 20.083851, 11.404957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.054195, 19.980988, 11.284753>,  <21.354982, 19.809547, 11.084414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.054195, 19.980988, 11.284753> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639342, -0.289099, -0.712505,
		-0.160581, -0.855995, 0.491412,
		-0.751968, 0.428595, 0.500850,
		20.828606, 20.109568, 11.435007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.782040, 19.519196, 10.850688>,  <21.354982, 19.809547, 11.084414>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.782040, 19.519196, 10.850688> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.596138, 19.832836, 11.015221>,  <20.484598, 20.021021, 11.113940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.596138, 19.832836, 11.015221>,  <20.782040, 19.519196, 10.850688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.596138, 19.832836, 11.015221> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781096, -0.144275, -0.607515,
		-0.417008, -0.603632, 0.679509,
		-0.464752, 0.784100, 0.411331,
		20.456713, 20.068066, 11.138620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.070189, 19.255022, 10.915896>,  <20.782040, 19.519196, 10.850688>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.070189, 19.255022, 10.915896> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.032902, 19.653225, 10.922507>,  <20.010530, 19.892147, 10.926474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.032902, 19.653225, 10.922507>,  <20.070189, 19.255022, 10.915896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.032902, 19.653225, 10.922507> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756805, -0.060058, -0.650875,
		-0.646959, -0.073180, 0.759005,
		-0.093215, 0.995509, 0.016528,
		20.004938, 19.951878, 10.927465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.307953, 19.449463, 10.861123>,  <20.070189, 19.255022, 10.915896>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.307953, 19.449463, 10.861123> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.496284, 19.782993, 10.745846>,  <19.609283, 19.983110, 10.676680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.496284, 19.782993, 10.745846>,  <19.307953, 19.449463, 10.861123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.496284, 19.782993, 10.745846> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718272, 0.172627, -0.674007,
		-0.512254, 0.524344, 0.680190,
		0.470831, 0.833824, -0.288193,
		19.637533, 20.033140, 10.659388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.758608, 19.921598, 10.648966>,  <19.307953, 19.449463, 10.861123>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.758608, 19.921598, 10.648966> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.086056, 20.105953, 10.511888>,  <19.282524, 20.216566, 10.429641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.086056, 20.105953, 10.511888>,  <18.758608, 19.921598, 10.648966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.086056, 20.105953, 10.511888> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503373, 0.288458, -0.814498,
		-0.276539, 0.839270, 0.468137,
		0.818622, 0.460888, -0.342697,
		19.331642, 20.244219, 10.409079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.554096, 20.568264, 10.542909>,  <18.758608, 19.921598, 10.648966>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.554096, 20.568264, 10.542909> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.877766, 20.527771, 10.311397>,  <19.071968, 20.503475, 10.172489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.877766, 20.527771, 10.311397>,  <18.554096, 20.568264, 10.542909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.877766, 20.527771, 10.311397> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549795, 0.217034, -0.806611,
		0.207270, 0.970901, 0.119962,
		0.809175, -0.101232, -0.578781,
		19.120518, 20.497402, 10.137762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.375759, 21.073818, 9.853286>,  <18.554096, 20.568264, 10.542909>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.375759, 21.073818, 9.853286> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.660728, 20.808411, 9.761898>,  <18.831711, 20.649166, 9.707066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.660728, 20.808411, 9.761898>,  <18.375759, 21.073818, 9.853286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.660728, 20.808411, 9.761898> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379952, -0.090995, -0.920520,
		0.589991, 0.742607, -0.316932,
		0.712424, -0.663517, -0.228469,
		18.874456, 20.609356, 9.693357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.620308, 21.322439, 9.147769>,  <18.375759, 21.073818, 9.853286>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.620308, 21.322439, 9.147769> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.682007, 20.931610, 9.206468>,  <18.719027, 20.697113, 9.241687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.682007, 20.931610, 9.206468>,  <18.620308, 21.322439, 9.147769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.682007, 20.931610, 9.206468> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401096, -0.197659, -0.894457,
		0.902956, 0.079109, -0.422389,
		0.154249, -0.977073, 0.146747,
		18.728281, 20.638489, 9.250492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.980560, 21.126522, 8.455272>,  <18.620308, 21.322439, 9.147769>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.980560, 21.126522, 8.455272> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.826450, 20.812286, 8.648938>,  <18.733984, 20.623745, 8.765138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.826450, 20.812286, 8.648938>,  <18.980560, 21.126522, 8.455272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.826450, 20.812286, 8.648938> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489847, -0.270543, -0.828768,
		0.782057, -0.556469, -0.280585,
		-0.385273, -0.785588, 0.484165,
		18.710869, 20.576611, 8.794188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.069130, 20.549154, 7.971419>,  <18.980560, 21.126522, 8.455272>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.069130, 20.549154, 7.971419> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.800125, 20.416859, 8.236247>,  <18.638721, 20.337481, 8.395144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.800125, 20.416859, 8.236247>,  <19.069130, 20.549154, 7.971419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.800125, 20.416859, 8.236247> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537608, -0.396491, -0.744159,
		0.508628, -0.856391, 0.088836,
		-0.672513, -0.330741, 0.662069,
		18.598372, 20.317636, 8.434868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.058100, 19.939779, 7.761868>,  <19.069130, 20.549154, 7.971419>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.058100, 19.939779, 7.761868> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.727226, 19.967079, 7.984977>,  <18.528702, 19.983459, 8.118842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.727226, 19.967079, 7.984977>,  <19.058100, 19.939779, 7.761868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.727226, 19.967079, 7.984977> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497910, -0.549147, -0.671211,
		0.260490, -0.832934, 0.488227,
		-0.827182, 0.068249, 0.557773,
		18.479071, 19.987555, 8.152308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.742575, 19.272882, 7.732320>,  <19.058100, 19.939779, 7.761868>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.742575, 19.272882, 7.732320> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.452732, 19.514103, 7.865751>,  <18.278826, 19.658834, 7.945810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.452732, 19.514103, 7.865751>,  <18.742575, 19.272882, 7.732320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.452732, 19.514103, 7.865751> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636590, -0.400275, -0.659192,
		-0.264001, -0.690009, 0.673937,
		-0.724608, 0.603049, 0.333580,
		18.235350, 19.695019, 7.965825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.127680, 18.870209, 7.803380>,  <18.742575, 19.272882, 7.732320>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.127680, 18.870209, 7.803380> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.999130, 19.245956, 7.755538>,  <17.922001, 19.471405, 7.726832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.999130, 19.245956, 7.755538>,  <18.127680, 18.870209, 7.803380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.999130, 19.245956, 7.755538> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610431, -0.302070, -0.732207,
		-0.723941, -0.162302, 0.670497,
		-0.321375, 0.939368, -0.119607,
		17.902718, 19.527767, 7.719656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.392824, 18.871840, 7.863037>,  <18.127680, 18.870209, 7.803380>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.392824, 18.871840, 7.863037> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.474125, 19.215782, 7.675706>,  <17.522905, 19.422148, 7.563307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.474125, 19.215782, 7.675706>,  <17.392824, 18.871840, 7.863037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.474125, 19.215782, 7.675706> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761232, -0.162053, -0.627905,
		-0.615804, 0.484130, 0.621614,
		0.203254, 0.859858, -0.468328,
		17.535101, 19.473740, 7.535207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.753128, 19.203142, 7.758910>,  <17.392824, 18.871840, 7.863037>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.753128, 19.203142, 7.758910> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.994766, 19.363667, 7.483514>,  <17.139750, 19.459980, 7.318276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.994766, 19.363667, 7.483514>,  <16.753128, 19.203142, 7.758910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.994766, 19.363667, 7.483514> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664174, -0.223893, -0.713264,
		-0.440388, 0.888157, 0.131286,
		0.604096, 0.401310, -0.688490,
		17.175995, 19.484060, 7.276967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.381193, 18.692022, 8.042741>,  <16.753128, 19.203142, 7.758910>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.381193, 18.692022, 8.042741> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.397903, 18.300613, 7.961999>,  <16.407928, 18.065767, 7.913554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.397903, 18.300613, 7.961999>,  <16.381193, 18.692022, 8.042741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.397903, 18.300613, 7.961999> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408915, -0.167592, 0.897052,
		-0.911616, -0.120015, 0.393132,
		0.041774, -0.978524, -0.201856,
		16.410435, 18.007055, 7.901442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.045443, 18.374557, 8.498123>,  <16.381193, 18.692022, 8.042741>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.045443, 18.374557, 8.498123> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.313263, 18.108383, 8.366123>,  <16.473955, 17.948679, 8.286923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.313263, 18.108383, 8.366123>,  <16.045443, 18.374557, 8.498123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.313263, 18.108383, 8.366123> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462250, 0.025539, 0.886382,
		-0.581401, -0.746019, 0.324697,
		0.669550, -0.665435, -0.329999,
		16.514128, 17.908752, 8.267123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.034662, 17.838409, 9.000729>,  <16.045443, 18.374557, 8.498123>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.034662, 17.838409, 9.000729> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.376461, 17.788780, 8.798961>,  <16.581541, 17.759003, 8.677899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.376461, 17.788780, 8.798961>,  <16.034662, 17.838409, 9.000729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.376461, 17.788780, 8.798961> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479691, -0.184135, 0.857899,
		-0.199323, -0.975038, -0.097826,
		0.854498, -0.124073, -0.504420,
		16.632811, 17.751558, 8.647635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.430670, 17.347374, 9.414855>,  <16.034662, 17.838409, 9.000729>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.430670, 17.347374, 9.414855> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.708130, 17.505630, 9.174085>,  <16.874607, 17.600584, 9.029622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.708130, 17.505630, 9.174085>,  <16.430670, 17.347374, 9.414855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.708130, 17.505630, 9.174085> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645187, 0.030304, 0.763424,
		0.320283, -0.917905, -0.234242,
		0.693652, 0.395641, -0.601926,
		16.916225, 17.624323, 8.993506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.066441, 17.004271, 9.554861>,  <16.430670, 17.347374, 9.414855>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.066441, 17.004271, 9.554861> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.181461, 17.339241, 9.368943>,  <17.250473, 17.540222, 9.257393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.181461, 17.339241, 9.368943>,  <17.066441, 17.004271, 9.554861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.181461, 17.339241, 9.368943> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800025, 0.056795, 0.597272,
		0.526569, -0.543593, -0.653630,
		0.287550, 0.837425, -0.464794,
		17.267727, 17.590469, 9.229505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.717615, 16.871078, 9.380550>,  <17.066441, 17.004271, 9.554861>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.717615, 16.871078, 9.380550> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.698891, 17.270390, 9.394704>,  <17.687656, 17.509975, 9.403196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.698891, 17.270390, 9.394704>,  <17.717615, 16.871078, 9.380550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.698891, 17.270390, 9.394704> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830836, 0.019244, 0.556184,
		0.554544, 0.055434, -0.830306,
		-0.046810, 0.998277, 0.035385,
		17.684847, 17.569872, 9.405319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.364882, 17.100977, 9.375622>,  <17.717615, 16.871078, 9.380550>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.364882, 17.100977, 9.375622> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.178806, 17.423622, 9.521482>,  <18.067162, 17.617210, 9.608999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.178806, 17.423622, 9.521482>,  <18.364882, 17.100977, 9.375622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.178806, 17.423622, 9.521482> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799976, 0.206705, 0.563304,
		0.378993, 0.553756, -0.741430,
		-0.465190, 0.806614, 0.364652,
		18.039249, 17.665606, 9.630878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.902895, 17.428986, 9.497192>,  <18.364882, 17.100977, 9.375622>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.902895, 17.428986, 9.497192> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.615490, 17.623600, 9.695999>,  <18.443047, 17.740368, 9.815284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.615490, 17.623600, 9.695999>,  <18.902895, 17.428986, 9.497192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.615490, 17.623600, 9.695999> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655143, 0.233518, 0.718510,
		0.233518, 0.841875, -0.486535,
		-0.718510, 0.486535, 0.497018,
		18.399937, 17.769560, 9.845104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.221884, 18.021687, 9.814137>,  <18.902895, 17.428986, 9.497192>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.221884, 18.021687, 9.814137> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.910469, 17.956448, 10.056552>,  <18.723621, 17.917305, 10.202002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.910469, 17.956448, 10.056552>,  <19.221884, 18.021687, 9.814137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.910469, 17.956448, 10.056552> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601887, 0.079550, 0.794609,
		-0.177807, 0.983398, 0.036232,
		-0.778535, -0.163095, 0.606039,
		18.676908, 17.907518, 10.238363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.238779, 18.511976, 10.396482>,  <19.221884, 18.021687, 9.814137>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.238779, 18.511976, 10.396482> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.996605, 18.221832, 10.527512>,  <18.851301, 18.047747, 10.606130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.996605, 18.221832, 10.527512>,  <19.238779, 18.511976, 10.396482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.996605, 18.221832, 10.527512> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481476, -0.006071, 0.876438,
		-0.633744, 0.688344, 0.352918,
		-0.605433, -0.725359, 0.327574,
		18.814976, 18.004225, 10.625784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.770517, 18.810856, 10.920102>,  <19.238779, 18.511976, 10.396482>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.770517, 18.810856, 10.920102> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.797710, 18.413677, 10.958950>,  <18.814026, 18.175369, 10.982259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.797710, 18.413677, 10.958950>,  <18.770517, 18.810856, 10.920102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.797710, 18.413677, 10.958950> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245375, 0.110995, 0.963053,
		-0.967042, -0.041641, 0.251190,
		0.067984, -0.992948, 0.097119,
		18.818106, 18.115793, 10.988086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.417952, 18.647539, 11.527091>,  <18.770517, 18.810856, 10.920102>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.417952, 18.647539, 11.527091> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.673046, 18.352371, 11.438761>,  <18.826103, 18.175270, 11.385763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.673046, 18.352371, 11.438761>,  <18.417952, 18.647539, 11.527091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.673046, 18.352371, 11.438761> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269949, -0.054383, 0.961338,
		-0.721402, -0.672691, 0.164520,
		0.637736, -0.737922, -0.220825,
		18.864367, 18.130995, 11.372514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.487993, 18.217031, 12.202763>,  <18.417952, 18.647539, 11.527091>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.487993, 18.217031, 12.202763> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.787357, 18.104137, 11.962687>,  <18.966976, 18.036402, 11.818641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.787357, 18.104137, 11.962687>,  <18.487993, 18.217031, 12.202763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.787357, 18.104137, 11.962687> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613611, -0.048815, 0.788098,
		-0.251726, -0.958103, 0.136648,
		0.748408, -0.282234, -0.600191,
		19.011879, 18.019466, 11.782629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.800297, 17.787733, 12.591556>,  <18.487993, 18.217031, 12.202763>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.800297, 17.787733, 12.591556> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.089531, 17.861004, 12.325144>,  <19.263071, 17.904966, 12.165297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.089531, 17.861004, 12.325144>,  <18.800297, 17.787733, 12.591556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.089531, 17.861004, 12.325144> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689777, -0.140064, 0.710345,
		0.036831, -0.973051, -0.227629,
		0.723085, 0.183176, -0.666029,
		19.306456, 17.915956, 12.125335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.339279, 17.130320, 12.538813>,  <18.800297, 17.787733, 12.591556>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.339279, 17.130320, 12.538813> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.543125, 17.453045, 12.419249>,  <19.665432, 17.646679, 12.347510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.543125, 17.453045, 12.419249>,  <19.339279, 17.130320, 12.538813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.543125, 17.453045, 12.419249> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756713, -0.254946, 0.601987,
		0.409484, -0.532970, -0.740450,
		0.509615, 0.806812, -0.298909,
		19.696011, 17.695089, 12.329576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.050819, 16.937384, 12.678535>,  <19.339279, 17.130320, 12.538813>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.050819, 16.937384, 12.678535> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.074806, 17.333420, 12.627746>,  <20.089199, 17.571041, 12.597272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.074806, 17.333420, 12.627746>,  <20.050819, 16.937384, 12.678535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.074806, 17.333420, 12.627746> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689601, 0.050877, 0.722401,
		0.721703, -0.130881, -0.679717,
		0.059966, 0.990092, -0.126973,
		20.092796, 17.630447, 12.589654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.762955, 17.101471, 12.848660>,  <20.050819, 16.937384, 12.678535>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.762955, 17.101471, 12.848660> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.558113, 17.442280, 12.892129>,  <20.435207, 17.646765, 12.918210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.558113, 17.442280, 12.892129>,  <20.762955, 17.101471, 12.848660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.558113, 17.442280, 12.892129> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640788, 0.294727, 0.708891,
		0.571962, 0.432661, -0.696896,
		-0.512103, 0.852022, 0.108671,
		20.404482, 17.697886, 12.924730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.264820, 17.549725, 12.995396>,  <20.762955, 17.101471, 12.848660>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.264820, 17.549725, 12.995396> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.944221, 17.741516, 13.138339>,  <20.751863, 17.856592, 13.224105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.944221, 17.741516, 13.138339>,  <21.264820, 17.549725, 12.995396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.944221, 17.741516, 13.138339> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545240, 0.340508, 0.766008,
		0.245602, 0.808797, -0.534347,
		-0.801494, 0.479481, 0.357359,
		20.703773, 17.885361, 13.245546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<21.509977, 18.297716, 13.358287> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.125332, 18.265301, 13.463155>,  <20.894545, 18.245852, 13.526075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.125332, 18.265301, 13.463155>,  <21.509977, 18.297716, 13.358287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.125332, 18.265301, 13.463155> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161167, 0.606467, 0.778603,
		-0.222093, 0.790968, -0.570127,
		-0.961613, -0.081037, 0.262171,
		20.836847, 18.240990, 13.541806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.276381, 18.965054, 13.580045>,  <21.509977, 18.297716, 13.358287>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.276381, 18.965054, 13.580045> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.029552, 18.702579, 13.753778>,  <20.881454, 18.545095, 13.858017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.029552, 18.702579, 13.753778>,  <21.276381, 18.965054, 13.580045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.029552, 18.702579, 13.753778> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102011, 0.480583, 0.870996,
		-0.780267, 0.581774, -0.229616,
		-0.617072, -0.656185, 0.434331,
		20.844431, 18.505724, 13.884077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.027559, 19.355453, 14.043127>,  <21.276381, 18.965054, 13.580045>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.027559, 19.355453, 14.043127> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.950184, 18.978958, 14.153871>,  <20.903759, 18.753061, 14.220317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.950184, 18.978958, 14.153871>,  <21.027559, 19.355453, 14.043127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.950184, 18.978958, 14.153871> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005595, 0.283241, 0.959032,
		-0.981096, 0.183967, -0.060056,
		-0.193441, -0.941239, 0.276858,
		20.892151, 18.696587, 14.236928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.575104, 19.460318, 14.537566>,  <21.027559, 19.355453, 14.043127>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.575104, 19.460318, 14.537566> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.735043, 19.099354, 14.601787>,  <20.831007, 18.882776, 14.640319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.735043, 19.099354, 14.601787>,  <20.575104, 19.460318, 14.537566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.735043, 19.099354, 14.601787> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036993, 0.190910, 0.980910,
		-0.915834, -0.386276, 0.109718,
		0.399848, -0.902410, 0.160552,
		20.854998, 18.828630, 14.649952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.242859, 19.205868, 15.160536>,  <20.575104, 19.460318, 14.537566>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.242859, 19.205868, 15.160536> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.592068, 19.014542, 15.122489>,  <20.801592, 18.899746, 15.099661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.592068, 19.014542, 15.122489>,  <20.242859, 19.205868, 15.160536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.592068, 19.014542, 15.122489> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221211, 0.214575, 0.951327,
		-0.434626, -0.851569, 0.293137,
		0.873021, -0.478317, -0.095117,
		20.853973, 18.871046, 15.093954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.195587, 18.764944, 15.666429>,  <20.242859, 19.205868, 15.160536>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.195587, 18.764944, 15.666429> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.583687, 18.771122, 15.569779>,  <20.816545, 18.774830, 15.511790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.583687, 18.771122, 15.569779>,  <20.195587, 18.764944, 15.666429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.583687, 18.771122, 15.569779> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235050, 0.179228, 0.955316,
		0.058061, -0.983686, 0.170265,
		0.970248, 0.015446, -0.241622,
		20.874762, 18.775757, 15.497293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.509054, 18.374363, 16.143551>,  <20.195587, 18.764944, 15.666429>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.509054, 18.374363, 16.143551> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.805199, 18.595825, 15.991063>,  <20.982885, 18.728703, 15.899570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.805199, 18.595825, 15.991063>,  <20.509054, 18.374363, 16.143551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.805199, 18.595825, 15.991063> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415533, 0.068835, 0.906970,
		0.528389, -0.829897, -0.179099,
		0.740363, 0.553654, -0.381221,
		21.027308, 18.761921, 15.876697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.124123, 18.007738, 16.280727>,  <20.509054, 18.374363, 16.143551>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.124123, 18.007738, 16.280727> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.225296, 18.392311, 16.237514>,  <21.285999, 18.623055, 16.211586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.225296, 18.392311, 16.237514>,  <21.124123, 18.007738, 16.280727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.225296, 18.392311, 16.237514> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406906, -0.004407, 0.913460,
		0.877754, -0.275003, -0.392328,
		0.252933, 0.961434, -0.108032,
		21.301176, 18.680740, 16.205105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.796824, 18.098719, 16.566044>,  <21.124123, 18.007738, 16.280727>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.796824, 18.098719, 16.566044> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.658169, 18.473789, 16.556171>,  <21.574976, 18.698832, 16.550247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.658169, 18.473789, 16.556171>,  <21.796824, 18.098719, 16.566044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.658169, 18.473789, 16.556171> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216881, 0.105721, 0.970456,
		0.912581, 0.331044, -0.240011,
		-0.346638, 0.937674, -0.024682,
		21.554178, 18.755091, 16.548767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.286039, 18.406940, 16.922144>,  <21.796824, 18.098719, 16.566044>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.286039, 18.406940, 16.922144> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.991890, 18.678005, 16.921799>,  <21.815401, 18.840645, 16.921591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.991890, 18.678005, 16.921799>,  <22.286039, 18.406940, 16.922144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.991890, 18.678005, 16.921799> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121982, 0.133624, 0.983497,
		0.666593, 0.723132, -0.180926,
		-0.735374, 0.677662, -0.000864,
		21.771278, 18.881304, 16.921539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.481337, 18.910887, 17.375879>,  <22.286039, 18.406940, 16.922144>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.481337, 18.910887, 17.375879> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.089294, 18.981087, 17.338802>,  <21.854069, 19.023207, 17.316557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.089294, 18.981087, 17.338802>,  <22.481337, 18.910887, 17.375879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.089294, 18.981087, 17.338802> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084096, 0.055818, 0.994893,
		0.179779, 0.982896, -0.039948,
		-0.980106, 0.175501, -0.092692,
		21.795263, 19.033737, 17.310995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.445816, 19.588924, 17.709688>,  <22.481337, 18.910887, 17.375879>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.445816, 19.588924, 17.709688> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.079594, 19.428242, 17.701767>,  <21.859861, 19.331833, 17.697014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.079594, 19.428242, 17.701767>,  <22.445816, 19.588924, 17.709688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.079594, 19.428242, 17.701767> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184397, 0.375488, 0.908299,
		-0.357434, 0.835248, -0.417853,
		-0.915554, -0.401707, -0.019805,
		21.804928, 19.307730, 17.695826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.986650, 20.021580, 18.081095>,  <22.445816, 19.588924, 17.709688>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.986650, 20.021580, 18.081095> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.804649, 19.668018, 18.124332>,  <21.695450, 19.455881, 18.150274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.804649, 19.668018, 18.124332>,  <21.986650, 20.021580, 18.081095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.804649, 19.668018, 18.124332> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279990, 0.257236, 0.924897,
		-0.845328, 0.390564, -0.364528,
		-0.455001, -0.883906, 0.108094,
		21.668150, 19.402847, 18.156761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.323473, 20.222847, 18.513842>,  <21.986650, 20.021580, 18.081095>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.323473, 20.222847, 18.513842> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.375416, 19.826244, 18.516787>,  <21.406582, 19.588284, 18.518555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.375416, 19.826244, 18.516787>,  <21.323473, 20.222847, 18.513842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.375416, 19.826244, 18.516787> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404481, -0.046191, 0.913379,
		-0.905280, -0.121587, -0.407043,
		0.129856, -0.991506, 0.007364,
		21.414373, 19.528793, 18.518995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.838898, 20.007591, 18.875683>,  <21.323473, 20.222847, 18.513842>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.838898, 20.007591, 18.875683> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.092857, 19.700085, 18.906412>,  <21.245234, 19.515581, 18.924850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.092857, 19.700085, 18.906412>,  <20.838898, 20.007591, 18.875683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.092857, 19.700085, 18.906412> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143386, -0.019540, 0.989474,
		-0.759172, -0.639232, -0.122636,
		0.634900, -0.768766, 0.076823,
		21.283327, 19.469456, 18.929459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.500868, 19.545057, 19.331911>,  <20.838898, 20.007591, 18.875683>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.500868, 19.545057, 19.331911> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.885704, 19.440559, 19.363230>,  <21.116606, 19.377861, 19.382021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.885704, 19.440559, 19.363230>,  <20.500868, 19.545057, 19.331911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.885704, 19.440559, 19.363230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113684, -0.123205, 0.985848,
		-0.247904, -0.957377, -0.148234,
		0.962091, -0.261248, 0.078295,
		21.174332, 19.362186, 19.386719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.481966, 18.912096, 19.650570>,  <20.500868, 19.545057, 19.331911>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.481966, 18.912096, 19.650570> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.860500, 19.033817, 19.694109>,  <21.087622, 19.106850, 19.720232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.860500, 19.033817, 19.694109>,  <20.481966, 18.912096, 19.650570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.860500, 19.033817, 19.694109> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064421, -0.152421, 0.986214,
		0.316699, -0.940302, -0.124638,
		0.946336, 0.304304, 0.108846,
		21.144402, 19.125109, 19.726763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.720068, 18.491922, 20.218397>,  <20.481966, 18.912096, 19.650570>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.720068, 18.491922, 20.218397> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.968369, 18.803074, 20.179256>,  <21.117350, 18.989765, 20.155771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.968369, 18.803074, 20.179256>,  <20.720068, 18.491922, 20.218397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.968369, 18.803074, 20.179256> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112285, 0.035317, 0.993048,
		0.775925, -0.627424, -0.065421,
		0.620751, 0.777877, -0.097854,
		21.154594, 19.036436, 20.149900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.347725, 18.390934, 20.605595>,  <20.720068, 18.491922, 20.218397>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.347725, 18.390934, 20.605595> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.366581, 18.787304, 20.555239>,  <21.377895, 19.025126, 20.525024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.366581, 18.787304, 20.555239>,  <21.347725, 18.390934, 20.605595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.366581, 18.787304, 20.555239> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161263, 0.116829, 0.979972,
		0.985785, -0.066497, -0.154292,
		0.047140, 0.990923, -0.125891,
		21.380722, 19.084581, 20.517471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.832560, 18.517296, 21.091042>,  <21.347725, 18.390934, 20.605595>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.832560, 18.517296, 21.091042> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.651051, 18.860794, 20.995836>,  <21.542145, 19.066893, 20.938713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.651051, 18.860794, 20.995836>,  <21.832560, 18.517296, 21.091042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.651051, 18.860794, 20.995836> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103934, 0.316273, 0.942958,
		0.885037, 0.403149, -0.232768,
		-0.453771, 0.858744, -0.238013,
		21.514919, 19.118418, 20.924433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.237629, 19.044640, 21.388302>,  <21.832560, 18.517296, 21.091042>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.237629, 19.044640, 21.388302> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.892544, 19.240276, 21.336891>,  <21.685493, 19.357658, 21.306044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.892544, 19.240276, 21.336891>,  <22.237629, 19.044640, 21.388302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.892544, 19.240276, 21.336891> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142647, 0.479203, 0.866035,
		0.485160, 0.728804, -0.483181,
		-0.862712, 0.489090, -0.128528,
		21.633730, 19.387003, 21.298332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.428535, 19.683971, 21.646067>,  <22.237629, 19.044640, 21.388302>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.428535, 19.683971, 21.646067> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.030384, 19.649483, 21.662985>,  <21.791492, 19.628790, 21.673136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.030384, 19.649483, 21.662985>,  <22.428535, 19.683971, 21.646067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.030384, 19.649483, 21.662985> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008718, 0.357481, 0.933880,
		-0.095639, 0.929932, -0.355077,
		-0.995378, -0.086220, 0.042296,
		21.731771, 19.623617, 21.675674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.036793, 20.314213, 21.750656>,  <22.428535, 19.683971, 21.646067>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.036793, 20.314213, 21.750656> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.831432, 19.999474, 21.887646>,  <21.708216, 19.810629, 21.969839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.831432, 19.999474, 21.887646>,  <22.036793, 20.314213, 21.750656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.831432, 19.999474, 21.887646> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135610, 0.468460, 0.873015,
		-0.847367, 0.401763, -0.347212,
		-0.513400, -0.786849, 0.342475,
		21.677412, 19.763418, 21.990389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.613344, 20.695194, 22.313929>,  <22.036793, 20.314213, 21.750656>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.613344, 20.695194, 22.313929> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.687504, 20.304527, 22.357285>,  <21.731998, 20.070127, 22.383299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.687504, 20.304527, 22.357285>,  <21.613344, 20.695194, 22.313929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.687504, 20.304527, 22.357285> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222383, 0.149141, 0.963485,
		-0.957170, -0.154524, 0.244845,
		0.185397, -0.976668, 0.108389,
		21.743124, 20.011526, 22.389801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.612408, 21.436222, 21.873894>,  <21.613344, 20.695194, 22.313929>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.612408, 21.436222, 21.873894> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.806561, 21.785255, 21.851973>,  <21.923052, 21.994677, 21.838820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.806561, 21.785255, 21.851973>,  <21.612408, 21.436222, 21.873894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.806561, 21.785255, 21.851973> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063369, -0.027405, -0.997614,
		-0.872004, 0.487694, 0.041994,
		0.485380, 0.872584, -0.054802,
		21.952175, 22.047031, 21.835531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.297867, 21.812660, 21.351963>,  <21.612408, 21.436222, 21.873894>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.297867, 21.812660, 21.351963> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.668262, 21.962036, 21.374176>,  <21.890501, 22.051661, 21.387503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.668262, 21.962036, 21.374176>,  <21.297867, 21.812660, 21.351963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.668262, 21.962036, 21.374176> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017653, 0.189750, -0.981674,
		-0.377132, 0.908041, 0.182299,
		0.925991, 0.373439, 0.055531,
		21.946060, 22.074068, 21.390835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.236422, 22.327202, 20.956156>,  <21.297867, 21.812660, 21.351963>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.236422, 22.327202, 20.956156> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.629086, 22.259693, 20.991625>,  <21.864683, 22.219189, 21.012907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.629086, 22.259693, 20.991625>,  <21.236422, 22.327202, 20.956156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.629086, 22.259693, 20.991625> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137783, 0.306573, -0.941822,
		0.131766, 0.936765, 0.324204,
		0.981659, -0.168770, 0.088675,
		21.923584, 22.209063, 21.018227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.520914, 22.870014, 20.490795>,  <21.236422, 22.327202, 20.956156>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.520914, 22.870014, 20.490795> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.811398, 22.596397, 20.518238>,  <21.985687, 22.432228, 20.534704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.811398, 22.596397, 20.518238>,  <21.520914, 22.870014, 20.490795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.811398, 22.596397, 20.518238> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152799, 0.063300, -0.986228,
		0.670279, 0.726690, 0.150490,
		0.726208, -0.684043, 0.068609,
		22.029261, 22.391184, 20.538820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.075830, 23.100163, 20.102596>,  <21.520914, 22.870014, 20.490795>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.075830, 23.100163, 20.102596> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.135494, 22.705826, 20.133238>,  <22.171293, 22.469223, 20.151623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.135494, 22.705826, 20.133238>,  <22.075830, 23.100163, 20.102596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.135494, 22.705826, 20.133238> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193942, -0.046798, -0.979896,
		0.969607, 0.161018, 0.184216,
		0.149160, -0.985841, 0.076603,
		22.180243, 22.410074, 20.156219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.724535, 22.953039, 19.807024>,  <22.075830, 23.100163, 20.102596>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.724535, 22.953039, 19.807024> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.539856, 22.598457, 19.794176>,  <22.429049, 22.385708, 19.786467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.539856, 22.598457, 19.794176>,  <22.724535, 22.953039, 19.807024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.539856, 22.598457, 19.794176> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097512, -0.014730, -0.995125,
		0.881662, -0.462578, 0.093241,
		-0.461696, -0.886456, -0.032120,
		22.401346, 22.332520, 19.784540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.126867, 22.447689, 19.359341>,  <22.724535, 22.953039, 19.807024>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.126867, 22.447689, 19.359341> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.753036, 22.305386, 19.359198>,  <22.528738, 22.220003, 19.359112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.753036, 22.305386, 19.359198>,  <23.126867, 22.447689, 19.359341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.753036, 22.305386, 19.359198> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115194, -0.301660, -0.946431,
		0.336593, -0.884555, 0.322906,
		-0.934578, -0.355759, -0.000359,
		22.472664, 22.198658, 19.359091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.201025, 21.804073, 19.067017>,  <23.126867, 22.447689, 19.359341>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.201025, 21.804073, 19.067017> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.815044, 21.903664, 19.033831>,  <22.583456, 21.963417, 19.013920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.815044, 21.903664, 19.033831>,  <23.201025, 21.804073, 19.067017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.815044, 21.903664, 19.033831> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012004, -0.357674, -0.933769,
		-0.262157, -0.900045, 0.348127,
		-0.964950, 0.248973, -0.082963,
		22.525560, 21.978355, 19.008942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.972593, 21.268839, 18.681421>,  <23.201025, 21.804073, 19.067017>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.972593, 21.268839, 18.681421> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.684795, 21.546543, 18.674202>,  <22.512117, 21.713165, 18.669870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.684795, 21.546543, 18.674202>,  <22.972593, 21.268839, 18.681421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.684795, 21.546543, 18.674202> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263911, -0.297355, -0.917568,
		-0.642400, -0.655423, 0.397169,
		-0.719495, 0.694263, -0.018048,
		22.468946, 21.754822, 18.668787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.372787, 21.002678, 18.398285>,  <22.972593, 21.268839, 18.681421>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.372787, 21.002678, 18.398285> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.324936, 21.393764, 18.329283>,  <22.296225, 21.628416, 18.287882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.324936, 21.393764, 18.329283>,  <22.372787, 21.002678, 18.398285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.324936, 21.393764, 18.329283> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294267, -0.200864, -0.934377,
		-0.948207, -0.061016, 0.311739,
		-0.119629, 0.977717, -0.172506,
		22.289047, 21.687080, 18.277531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.798939, 20.998501, 17.989033>,  <22.372787, 21.002678, 18.398285>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.798939, 20.998501, 17.989033> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.955444, 21.361382, 17.927195>,  <22.049347, 21.579109, 17.890093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.955444, 21.361382, 17.927195>,  <21.798939, 20.998501, 17.989033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.955444, 21.361382, 17.927195> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004119, -0.166258, -0.986074,
		-0.920270, 0.386450, -0.061313,
		0.391262, 0.907201, -0.154594,
		22.072823, 21.633541, 17.880816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.278568, 21.395405, 17.519323>,  <21.798939, 20.998501, 17.989033>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.278568, 21.395405, 17.519323> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.653347, 21.533043, 17.494898>,  <21.878214, 21.615625, 17.480244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.653347, 21.533043, 17.494898>,  <21.278568, 21.395405, 17.519323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.653347, 21.533043, 17.494898> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011852, -0.143341, -0.989602,
		-0.349271, 0.927929, -0.130224,
		0.936947, 0.344096, -0.061063,
		21.934431, 21.636272, 17.476580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.358017, 21.653845, 16.875336>,  <21.278568, 21.395405, 17.519323>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.358017, 21.653845, 16.875336> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.752136, 21.642776, 16.942770>,  <21.988607, 21.636135, 16.983231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.752136, 21.642776, 16.942770>,  <21.358017, 21.653845, 16.875336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.752136, 21.642776, 16.942770> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161653, -0.168254, -0.972398,
		0.055272, 0.985355, -0.161307,
		0.985299, -0.027671, 0.168586,
		22.047726, 21.634476, 16.993345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.683331, 22.188446, 16.450068>,  <21.358017, 21.653845, 16.875336>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.683331, 22.188446, 16.450068> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.987019, 21.948307, 16.550598>,  <22.169231, 21.804224, 16.610916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.987019, 21.948307, 16.550598>,  <21.683331, 22.188446, 16.450068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.987019, 21.948307, 16.550598> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144583, -0.220933, -0.964512,
		0.634571, 0.768615, -0.080937,
		0.759220, -0.600350, 0.251326,
		22.214785, 21.768202, 16.625996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.325966, 22.300438, 15.935840>,  <21.683331, 22.188446, 16.450068>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.325966, 22.300438, 15.935840> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.334560, 21.933323, 16.094437>,  <22.339718, 21.713055, 16.189594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.334560, 21.933323, 16.094437>,  <22.325966, 22.300438, 15.935840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.334560, 21.933323, 16.094437> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174589, -0.387046, -0.905380,
		0.984407, 0.088677, 0.151919,
		0.021486, -0.917786, 0.396493,
		22.341005, 21.657988, 16.213385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.839638, 21.970440, 15.534048>,  <22.325966, 22.300438, 15.935840>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.839638, 21.970440, 15.534048> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.656536, 21.655422, 15.699084>,  <22.546675, 21.466412, 15.798106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.656536, 21.655422, 15.699084>,  <22.839638, 21.970440, 15.534048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.656536, 21.655422, 15.699084> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053322, -0.438913, -0.896946,
		0.887478, -0.432582, 0.158921,
		-0.457755, -0.787546, 0.412591,
		22.519209, 21.419159, 15.822862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.252665, 21.390472, 15.375545>,  <22.839638, 21.970440, 15.534048>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.252665, 21.390472, 15.375545> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.878139, 21.267681, 15.443755>,  <22.653423, 21.194006, 15.484682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.878139, 21.267681, 15.443755>,  <23.252665, 21.390472, 15.375545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.878139, 21.267681, 15.443755> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014047, -0.452480, -0.891664,
		0.350881, -0.837273, 0.419352,
		-0.936315, -0.306977, 0.170527,
		22.597244, 21.175589, 15.494913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.162786, 20.651571, 15.063805>,  <23.252665, 21.390472, 15.375545>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.162786, 20.651571, 15.063805> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.791088, 20.791534, 15.111249>,  <22.568069, 20.875513, 15.139715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.791088, 20.791534, 15.111249>,  <23.162786, 20.651571, 15.063805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.791088, 20.791534, 15.111249> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275780, -0.443267, -0.852912,
		-0.245864, -0.825275, 0.508401,
		-0.929245, 0.349908, 0.118611,
		22.512314, 20.896507, 15.146832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.657053, 20.146746, 14.953300>,  <23.162786, 20.651571, 15.063805>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.657053, 20.146746, 14.953300> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.452461, 20.478012, 14.861623>,  <22.329706, 20.676773, 14.806617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.452461, 20.478012, 14.861623>,  <22.657053, 20.146746, 14.953300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.452461, 20.478012, 14.861623> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258426, -0.402623, -0.878129,
		-0.819516, -0.389914, 0.419953,
		-0.511478, 0.828168, -0.229192,
		22.299017, 20.726461, 14.792865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.147539, 19.890608, 14.564038>,  <22.657053, 20.146746, 14.953300>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.147539, 19.890608, 14.564038> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.120155, 20.284164, 14.497983>,  <22.103725, 20.520298, 14.458349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.120155, 20.284164, 14.497983>,  <22.147539, 19.890608, 14.564038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.120155, 20.284164, 14.497983> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355582, -0.178720, -0.917399,
		-0.932135, -0.004084, 0.362089,
		-0.068459, 0.983892, -0.165139,
		22.099617, 20.579332, 14.448442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<19.496553, 17.021971, 11.100879> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.306293, 17.358131, 11.204786>,  <19.192137, 17.559828, 11.267131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.306293, 17.358131, 11.204786>,  <19.496553, 17.021971, 11.100879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.306293, 17.358131, 11.204786> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772472, -0.257814, -0.580361,
		-0.420766, -0.476712, 0.771817,
		-0.475650, 0.840403, 0.259768,
		19.163599, 17.610252, 11.282717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.775278, 16.820948, 11.095471>,  <19.496553, 17.021971, 11.100879>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.775278, 16.820948, 11.095471> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.777382, 17.219463, 11.061108>,  <18.778645, 17.458572, 11.040489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.777382, 17.219463, 11.061108>,  <18.775278, 16.820948, 11.095471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.777382, 17.219463, 11.061108> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744312, -0.053474, -0.665687,
		-0.667811, 0.067444, 0.741269,
		0.005258, 0.996289, -0.085910,
		18.778959, 17.518351, 11.035335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.112185, 16.994335, 11.022557>,  <18.775278, 16.820948, 11.095471>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.112185, 16.994335, 11.022557> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.321297, 17.306175, 10.884616>,  <18.446764, 17.493280, 10.801851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.321297, 17.306175, 10.884616>,  <18.112185, 16.994335, 11.022557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.321297, 17.306175, 10.884616> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767301, 0.254075, -0.588808,
		-0.371417, 0.572423, 0.731014,
		0.522779, 0.779601, -0.344853,
		18.478130, 17.540056, 10.781160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.621693, 17.599558, 10.948161>,  <18.112185, 16.994335, 11.022557>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.621693, 17.599558, 10.948161> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.942471, 17.711411, 10.736995>,  <18.134937, 17.778522, 10.610295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.942471, 17.711411, 10.736995>,  <17.621693, 17.599558, 10.948161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.942471, 17.711411, 10.736995> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595787, 0.309428, -0.741143,
		-0.043894, 0.908879, 0.414744,
		0.801942, 0.279631, -0.527916,
		18.183054, 17.795300, 10.578620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.514162, 18.299829, 10.654804>,  <17.621693, 17.599558, 10.948161>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.514162, 18.299829, 10.654804> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.758347, 18.088940, 10.418374>,  <17.904858, 17.962406, 10.276516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.758347, 18.088940, 10.418374>,  <17.514162, 18.299829, 10.654804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.758347, 18.088940, 10.418374> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637087, 0.116537, -0.761931,
		0.470590, 0.841697, -0.264746,
		0.610463, -0.527224, -0.591076,
		17.941484, 17.930773, 10.241052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.377953, 18.681093, 10.100496>,  <17.514162, 18.299829, 10.654804>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.377953, 18.681093, 10.100496> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.586143, 18.365509, 9.969871>,  <17.711058, 18.176159, 9.891496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.586143, 18.365509, 9.969871>,  <17.377953, 18.681093, 10.100496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.586143, 18.365509, 9.969871> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473473, 0.051604, -0.879295,
		0.710582, 0.612272, -0.346693,
		0.520477, -0.788961, -0.326564,
		17.742287, 18.128820, 9.871902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.397858, 18.817228, 9.394044>,  <17.377953, 18.681093, 10.100496>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.397858, 18.817228, 9.394044> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.479187, 18.426670, 9.423186>,  <17.527985, 18.192335, 9.440672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.479187, 18.426670, 9.423186>,  <17.397858, 18.817228, 9.394044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.479187, 18.426670, 9.423186> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516641, -0.170195, -0.839116,
		0.831711, 0.132970, -0.539051,
		0.203322, -0.976397, 0.072856,
		17.540184, 18.133751, 9.445043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.597038, 18.752203, 8.758530>,  <17.397858, 18.817228, 9.394044>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.597038, 18.752203, 8.758530> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.508064, 18.387493, 8.896624>,  <17.454679, 18.168667, 8.979480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.508064, 18.387493, 8.896624>,  <17.597038, 18.752203, 8.758530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.508064, 18.387493, 8.896624> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532975, -0.182790, -0.826151,
		0.816370, -0.367767, -0.445295,
		-0.222436, -0.911776, 0.345234,
		17.441334, 18.113960, 9.000194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.837072, 18.304497, 8.252112>,  <17.597038, 18.752203, 8.758530>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.837072, 18.304497, 8.252112> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.567497, 18.102573, 8.467882>,  <17.405752, 17.981421, 8.597344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.567497, 18.102573, 8.467882>,  <17.837072, 18.304497, 8.252112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.567497, 18.102573, 8.467882> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461189, -0.282946, -0.840979,
		0.577161, -0.815544, -0.042125,
		-0.673936, -0.504808, 0.539425,
		17.365316, 17.951132, 8.629709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.809690, 17.610901, 8.087647>,  <17.837072, 18.304497, 8.252112>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.809690, 17.610901, 8.087647> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.444500, 17.691433, 8.229600>,  <17.225386, 17.739752, 8.314772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.444500, 17.691433, 8.229600>,  <17.809690, 17.610901, 8.087647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.444500, 17.691433, 8.229600> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394532, -0.213877, -0.893645,
		-0.104015, -0.955889, 0.274695,
		-0.912976, 0.201328, 0.354883,
		17.170607, 17.751833, 8.336064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.356352, 17.000299, 7.936204>,  <17.809690, 17.610901, 8.087647>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.356352, 17.000299, 7.936204> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.090374, 17.287365, 8.018963>,  <16.930786, 17.459604, 8.068619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.090374, 17.287365, 8.018963>,  <17.356352, 17.000299, 7.936204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.090374, 17.287365, 8.018963> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528887, -0.256837, -0.808896,
		-0.527376, -0.647297, 0.550346,
		-0.664945, 0.717663, 0.206897,
		16.890890, 17.502665, 8.081032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.652657, 16.736811, 7.723429>,  <17.356352, 17.000299, 7.936204>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.652657, 16.736811, 7.723429> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.604588, 17.132866, 7.752244>,  <16.575747, 17.370499, 7.769533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.604588, 17.132866, 7.752244>,  <16.652657, 16.736811, 7.723429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.604588, 17.132866, 7.752244> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573834, -0.010068, -0.818910,
		-0.810107, -0.139749, 0.569383,
		-0.120174, 0.990136, 0.072037,
		16.568535, 17.429907, 7.773855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.944946, 16.821598, 7.759171>,  <16.652657, 16.736811, 7.723429>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.944946, 16.821598, 7.759171> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.145512, 17.145378, 7.636943>,  <16.265850, 17.339645, 7.563606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.145512, 17.145378, 7.636943>,  <15.944946, 16.821598, 7.759171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.145512, 17.145378, 7.636943> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525715, 0.004529, -0.850649,
		-0.687174, 0.587171, 0.427811,
		0.501414, 0.809451, -0.305572,
		16.295937, 17.388214, 7.545271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.528016, 17.481041, 7.784693>,  <15.944946, 16.821598, 7.759171>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.528016, 17.481041, 7.784693> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.810710, 17.481003, 7.501701>,  <15.980326, 17.480980, 7.331906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.810710, 17.481003, 7.501701>,  <15.528016, 17.481041, 7.784693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.810710, 17.481003, 7.501701> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706223, 0.059481, -0.705487,
		0.042150, 0.998229, 0.041968,
		0.706734, -0.000098, -0.707479,
		16.022730, 17.480974, 7.289457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.236184, 17.911419, 7.312438>,  <15.528016, 17.481041, 7.784693>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.236184, 17.911419, 7.312438> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.078731, 18.196297, 7.079946>,  <14.984259, 18.367224, 6.940450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.078731, 18.196297, 7.079946>,  <15.236184, 17.911419, 7.312438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.078731, 18.196297, 7.079946> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403350, 0.701974, 0.586976,
		0.826051, -0.003386, -0.563585,
		-0.393634, 0.712194, -0.581232,
		14.960640, 18.409954, 6.905576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.721998, 18.431551, 7.306472>,  <15.236184, 17.911419, 7.312438>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.721998, 18.431551, 7.306472> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.380380, 18.612957, 7.204547>,  <15.175408, 18.721800, 7.143392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.380380, 18.612957, 7.204547>,  <15.721998, 18.431551, 7.306472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.380380, 18.612957, 7.204547> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109401, 0.635471, 0.764335,
		0.508563, 0.624901, -0.592336,
		-0.854046, 0.453515, -0.254812,
		15.124166, 18.749012, 7.128103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.894121, 19.058310, 7.203421>,  <15.721998, 18.431551, 7.306472>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.894121, 19.058310, 7.203421> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.503354, 19.089119, 7.283118>,  <15.268893, 19.107605, 7.330936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.503354, 19.089119, 7.283118>,  <15.894121, 19.058310, 7.203421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.503354, 19.089119, 7.283118> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194719, 0.704611, 0.682354,
		-0.087832, 0.705401, -0.703346,
		-0.976919, 0.077023, 0.199242,
		15.210279, 19.112226, 7.342891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.798004, 19.797707, 7.257629>,  <15.894121, 19.058310, 7.203421>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.798004, 19.797707, 7.257629> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.484559, 19.632591, 7.443341>,  <15.296492, 19.533522, 7.554769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.484559, 19.632591, 7.443341>,  <15.798004, 19.797707, 7.257629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.484559, 19.632591, 7.443341> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116785, 0.636130, 0.762693,
		-0.610174, 0.651877, -0.450271,
		-0.783613, -0.412791, 0.464280,
		15.249475, 19.508755, 7.582625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.287570, 20.302485, 7.365751>,  <15.798004, 19.797707, 7.257629>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.287570, 20.302485, 7.365751> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.180110, 20.038616, 7.646511>,  <15.115634, 19.880295, 7.814967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.180110, 20.038616, 7.646511>,  <15.287570, 20.302485, 7.365751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.180110, 20.038616, 7.646511> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069154, 0.740016, 0.669025,
		-0.960752, 0.131194, -0.244424,
		-0.268650, -0.659670, 0.701899,
		15.099515, 19.840715, 7.857081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.680208, 20.603676, 7.751143>,  <15.287570, 20.302485, 7.365751>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.680208, 20.603676, 7.751143> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.850650, 20.333904, 7.992334>,  <14.952915, 20.172041, 8.137049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.850650, 20.333904, 7.992334>,  <14.680208, 20.603676, 7.751143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.850650, 20.333904, 7.992334> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122572, 0.617330, 0.777097,
		-0.896332, -0.405033, 0.180382,
		0.426105, -0.674427, 0.602978,
		14.978481, 20.131577, 8.173227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.264228, 20.580557, 8.407735>,  <14.680208, 20.603676, 7.751143>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.264228, 20.580557, 8.407735> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.610908, 20.406376, 8.505068>,  <14.818915, 20.301867, 8.563468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.610908, 20.406376, 8.505068>,  <14.264228, 20.580557, 8.407735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.610908, 20.406376, 8.505068> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061413, 0.390949, 0.918361,
		-0.495035, -0.810887, 0.312093,
		0.866700, -0.435455, 0.243333,
		14.870917, 20.275740, 8.578068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.047338, 20.293821, 9.052408>,  <14.264228, 20.580557, 8.407735>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.047338, 20.293821, 9.052408> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.446919, 20.276894, 9.045417>,  <14.686667, 20.266737, 9.041222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.446919, 20.276894, 9.045417>,  <14.047338, 20.293821, 9.052408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.446919, 20.276894, 9.045417> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028254, 0.269347, 0.962629,
		-0.036030, -0.962113, 0.270260,
		0.998951, -0.042320, -0.017479,
		14.746605, 20.264198, 9.040174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.117562, 19.969822, 9.666281>,  <14.047338, 20.293821, 9.052408>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.117562, 19.969822, 9.666281> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.447556, 20.163761, 9.550128>,  <14.645553, 20.280125, 9.480436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.447556, 20.163761, 9.550128>,  <14.117562, 19.969822, 9.666281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.447556, 20.163761, 9.550128> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183448, 0.256253, 0.949042,
		0.534553, -0.836216, 0.122461,
		0.824985, 0.484848, -0.290382,
		14.695052, 20.309216, 9.463014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.605925, 19.671591, 10.129523>,  <14.117562, 19.969822, 9.666281>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.605925, 19.671591, 10.129523> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.757405, 20.018764, 10.000977>,  <14.848294, 20.227068, 9.923848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.757405, 20.018764, 10.000977>,  <14.605925, 19.671591, 10.129523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.757405, 20.018764, 10.000977> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394187, 0.162904, 0.904477,
		0.837377, -0.469207, -0.280436,
		0.378703, 0.867933, -0.321368,
		14.871017, 20.279144, 9.904566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.157725, 19.664896, 10.518285>,  <14.605925, 19.671591, 10.129523>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.157725, 19.664896, 10.518285> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.130698, 20.039925, 10.381817>,  <15.114482, 20.264942, 10.299936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.130698, 20.039925, 10.381817>,  <15.157725, 19.664896, 10.518285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.130698, 20.039925, 10.381817> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293148, 0.345514, 0.891451,
		0.953677, -0.039780, -0.298192,
		-0.067568, 0.937570, -0.341171,
		15.110428, 20.321196, 10.279466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.813448, 19.967442, 10.752090>,  <15.157725, 19.664896, 10.518285>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.813448, 19.967442, 10.752090> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.562081, 20.275223, 10.706417>,  <15.411262, 20.459890, 10.679013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.562081, 20.275223, 10.706417>,  <15.813448, 19.967442, 10.752090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.562081, 20.275223, 10.706417> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265051, 0.349808, 0.898544,
		0.731327, 0.534397, -0.423769,
		-0.628417, 0.769451, -0.114182,
		15.373556, 20.506058, 10.672163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.148533, 20.620655, 10.926423>,  <15.813448, 19.967442, 10.752090>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.148533, 20.620655, 10.926423> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.761361, 20.707638, 10.976736>,  <15.529058, 20.759829, 11.006924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.761361, 20.707638, 10.976736>,  <16.148533, 20.620655, 10.926423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.761361, 20.707638, 10.976736> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204558, 0.391601, 0.897109,
		0.145827, 0.894070, -0.423526,
		-0.967931, 0.217458, 0.125783,
		15.470982, 20.772875, 11.014471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.102879, 21.271246, 11.300666>,  <16.148533, 20.620655, 10.926423>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.102879, 21.271246, 11.300666> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.738379, 21.126698, 11.379696>,  <15.519680, 21.039968, 11.427114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.738379, 21.126698, 11.379696>,  <16.102879, 21.271246, 11.300666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.738379, 21.126698, 11.379696> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110317, 0.248027, 0.962452,
		-0.396806, 0.898829, -0.186149,
		-0.911249, -0.361371, 0.197575,
		15.465005, 21.018286, 11.438969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.964272, 22.018063, 11.174402>,  <16.102879, 21.271246, 11.300666>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.964272, 22.018063, 11.174402> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.225590, 22.310535, 11.095840>,  <16.382380, 22.486019, 11.048702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.225590, 22.310535, 11.095840>,  <15.964272, 22.018063, 11.174402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.225590, 22.310535, 11.095840> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135041, -0.142724, -0.980507,
		-0.744963, 0.667083, 0.005499,
		0.653295, 0.731184, -0.196407,
		16.421577, 22.529890, 11.036918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.609298, 22.447878, 10.553810>,  <15.964272, 22.018063, 11.174402>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.609298, 22.447878, 10.553810> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.997306, 22.544086, 10.567734>,  <16.230110, 22.601812, 10.576088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.997306, 22.544086, 10.567734>,  <15.609298, 22.447878, 10.553810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.997306, 22.544086, 10.567734> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033101, 0.011136, -0.999390,
		-0.240762, 0.970580, 0.002841,
		0.970020, 0.240521, 0.034809,
		16.288311, 22.616243, 10.578176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.659934, 23.074612, 10.195322>,  <15.609298, 22.447878, 10.553810>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.659934, 23.074612, 10.195322> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.033371, 22.931622, 10.185384>,  <16.257433, 22.845827, 10.179421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.033371, 22.931622, 10.185384>,  <15.659934, 23.074612, 10.195322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.033371, 22.931622, 10.185384> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051578, 0.202666, -0.977888,
		0.354608, 0.911667, 0.207646,
		0.933591, -0.357477, -0.024845,
		16.313448, 22.824379, 10.177930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.109261, 23.596306, 9.769249>,  <15.659934, 23.074612, 10.195322>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.109261, 23.596306, 9.769249> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.313599, 23.253292, 9.793491>,  <16.436201, 23.047483, 9.808037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.313599, 23.253292, 9.793491>,  <16.109261, 23.596306, 9.769249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.313599, 23.253292, 9.793491> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366987, 0.153782, -0.917426,
		0.777404, 0.490905, 0.393263,
		0.510846, -0.857533, 0.060605,
		16.466852, 22.996033, 9.811673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.776567, 23.761118, 9.464104>,  <16.109261, 23.596306, 9.769249>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.776567, 23.761118, 9.464104> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.805202, 23.362759, 9.441974>,  <16.822384, 23.123743, 9.428696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.805202, 23.362759, 9.441974>,  <16.776567, 23.761118, 9.464104>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.805202, 23.362759, 9.441974> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176900, 0.067265, -0.981928,
		0.981622, 0.060507, 0.180990,
		0.071588, -0.995899, -0.055325,
		16.826679, 23.063990, 9.425376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.376682, 23.611361, 8.984168>,  <16.776567, 23.761118, 9.464104>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.376682, 23.611361, 8.984168> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.133087, 23.294258, 8.994546>,  <16.986931, 23.103996, 9.000772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.133087, 23.294258, 8.994546>,  <17.376682, 23.611361, 8.984168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.133087, 23.294258, 8.994546> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106921, -0.114457, -0.987657,
		0.785942, -0.598696, 0.154465,
		-0.608986, -0.792757, 0.025944,
		16.950392, 23.056431, 9.002329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.733234, 22.989977, 8.620712>,  <17.376682, 23.611361, 8.984168>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.733234, 22.989977, 8.620712> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.336365, 22.946911, 8.595410>,  <17.098244, 22.921070, 8.580229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.336365, 22.946911, 8.595410>,  <17.733234, 22.989977, 8.620712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.336365, 22.946911, 8.595410> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075628, -0.115013, -0.990481,
		0.099367, -0.987512, 0.122255,
		-0.992173, -0.107667, -0.063255,
		17.038713, 22.914612, 8.576434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.679979, 22.625429, 7.997705>,  <17.733234, 22.989977, 8.620712>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.679979, 22.625429, 7.997705> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.291950, 22.706123, 8.051764>,  <17.059134, 22.754539, 8.084201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.291950, 22.706123, 8.051764>,  <17.679979, 22.625429, 7.997705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.291950, 22.706123, 8.051764> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127548, 0.050280, -0.990557,
		-0.206628, -0.978148, -0.023044,
		-0.970070, 0.201738, 0.135150,
		17.000929, 22.766644, 8.092310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.264776, 22.201759, 7.496352>,  <17.679979, 22.625429, 7.997705>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.264776, 22.201759, 7.496352> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.028225, 22.515076, 7.573007>,  <16.886293, 22.703066, 7.618999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.028225, 22.515076, 7.573007>,  <17.264776, 22.201759, 7.496352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.028225, 22.515076, 7.573007> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232823, 0.061675, -0.970562,
		-0.772053, -0.618587, 0.145895,
		-0.591379, 0.783292, 0.191637,
		16.850811, 22.750063, 7.630498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.666235, 22.081764, 7.215646>,  <17.264776, 22.201759, 7.496352>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.666235, 22.081764, 7.215646> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.669460, 22.479828, 7.254829>,  <16.671394, 22.718666, 7.278339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.669460, 22.479828, 7.254829>,  <16.666235, 22.081764, 7.215646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.669460, 22.479828, 7.254829> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135464, 0.098145, -0.985909,
		-0.990749, -0.005322, 0.135599,
		0.008061, 0.995158, 0.097958,
		16.671879, 22.778376, 7.284217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.314466, 22.405973, 6.684757>,  <16.666235, 22.081764, 7.215646>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.314466, 22.405973, 6.684757> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.507839, 22.736736, 6.799662>,  <16.623863, 22.935194, 6.868604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.507839, 22.736736, 6.799662>,  <16.314466, 22.405973, 6.684757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.507839, 22.736736, 6.799662> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020268, 0.317494, -0.948044,
		-0.875147, 0.464137, 0.136727,
		0.483432, 0.826906, 0.287261,
		16.652868, 22.984808, 6.885840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.146961, 22.920277, 6.182898>,  <16.314466, 22.405973, 6.684757>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.146961, 22.920277, 6.182898> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.452747, 23.115143, 6.351780>,  <16.636219, 23.232063, 6.453109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.452747, 23.115143, 6.351780>,  <16.146961, 22.920277, 6.182898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.452747, 23.115143, 6.351780> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196273, 0.447948, -0.872250,
		-0.614058, 0.749674, 0.246824,
		0.764467, 0.487167, 0.422206,
		16.682087, 23.261293, 6.478442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<16.058287, 23.439857, 14.837758> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.433380, 23.444221, 14.698884>,  <16.658436, 23.446840, 14.615560>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.433380, 23.444221, 14.698884>,  <16.058287, 23.439857, 14.837758>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.433380, 23.444221, 14.698884> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342121, -0.143893, -0.928573,
		-0.060090, 0.989533, -0.131200,
		0.937733, 0.010912, -0.347186,
		16.714701, 23.447495, 14.594728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.041218, 23.959805, 14.259700>,  <16.058287, 23.439857, 14.837758>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.041218, 23.959805, 14.259700> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.369274, 23.738731, 14.200484>,  <16.566107, 23.606089, 14.164955>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.369274, 23.738731, 14.200484>,  <16.041218, 23.959805, 14.259700>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.369274, 23.738731, 14.200484> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216011, -0.059498, -0.974576,
		0.529822, 0.831266, -0.168181,
		0.820139, -0.552681, -0.148039,
		16.615316, 23.572927, 14.156073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.179888, 24.274220, 13.691592>,  <16.041218, 23.959805, 14.259700>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.179888, 24.274220, 13.691592> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.415226, 23.950809, 13.696296>,  <16.556429, 23.756763, 13.699118>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.415226, 23.950809, 13.696296>,  <16.179888, 24.274220, 13.691592>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.415226, 23.950809, 13.696296> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104059, -0.090126, -0.990479,
		0.801887, 0.581519, -0.137160,
		0.588344, -0.808525, 0.011759,
		16.591730, 23.708252, 13.699823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.723152, 24.378061, 13.166762>,  <16.179888, 24.274220, 13.691592>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.723152, 24.378061, 13.166762> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.671471, 23.982552, 13.196774>,  <16.640461, 23.745245, 13.214782>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.671471, 23.982552, 13.196774>,  <16.723152, 24.378061, 13.166762>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.671471, 23.982552, 13.196774> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168344, -0.052694, -0.984319,
		0.977224, -0.139810, -0.159646,
		-0.129205, -0.988775, 0.075029,
		16.632710, 23.685919, 13.219283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.221966, 24.033737, 12.709980>,  <16.723152, 24.378061, 13.166762>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.221966, 24.033737, 12.709980> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.929577, 23.766090, 12.763582>,  <16.754143, 23.605503, 12.795744>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.929577, 23.766090, 12.763582>,  <17.221966, 24.033737, 12.709980>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.929577, 23.766090, 12.763582> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054719, -0.253215, -0.965861,
		0.680207, -0.698687, 0.221707,
		-0.730975, -0.669118, 0.134007,
		16.710285, 23.565355, 12.803784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.508492, 23.434643, 12.451468>,  <17.221966, 24.033737, 12.709980>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.508492, 23.434643, 12.451468> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.115311, 23.361210, 12.455600>,  <16.879402, 23.317150, 12.458078>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.115311, 23.361210, 12.455600>,  <17.508492, 23.434643, 12.451468>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.115311, 23.361210, 12.455600> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059626, -0.371381, -0.926564,
		0.173939, -0.910150, 0.375995,
		-0.982950, -0.183585, 0.010329,
		16.820425, 23.306135, 12.458698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.477404, 22.912922, 12.074548>,  <17.508492, 23.434643, 12.451468>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.477404, 22.912922, 12.074548> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.084412, 22.987381, 12.078187>,  <16.848616, 23.032057, 12.080371>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.084412, 22.987381, 12.078187>,  <17.477404, 22.912922, 12.074548>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.084412, 22.987381, 12.078187> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099193, -0.480956, -0.871115,
		-0.157779, -0.856756, 0.490994,
		-0.982480, 0.186147, 0.009099,
		16.789667, 23.043224, 12.080916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.073669, 22.257208, 11.866705>,  <17.477404, 22.912922, 12.074548>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.073669, 22.257208, 11.866705> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.859413, 22.587227, 11.794719>,  <16.730860, 22.785238, 11.751527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.859413, 22.587227, 11.794719>,  <17.073669, 22.257208, 11.866705>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.859413, 22.587227, 11.794719> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145847, -0.300301, -0.942628,
		-0.831756, -0.478663, 0.281184,
		-0.535641, 0.825046, -0.179965,
		16.698721, 22.834742, 11.740729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.525425, 21.971062, 11.614085>,  <17.073669, 22.257208, 11.866705>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.525425, 21.971062, 11.614085> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.534023, 22.350365, 11.487374>,  <16.539183, 22.577946, 11.411347>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.534023, 22.350365, 11.487374>,  <16.525425, 21.971062, 11.614085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.534023, 22.350365, 11.487374> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173832, -0.308479, -0.935213,
		-0.984541, 0.075171, 0.158206,
		0.021498, 0.948256, -0.316778,
		16.540472, 22.634842, 11.392341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.827121, 21.728058, 11.816724>,  <16.525425, 21.971062, 11.614085>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.827121, 21.728058, 11.816724> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.588683, 21.408028, 11.843719>,  <15.445621, 21.216009, 11.859916>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.588683, 21.408028, 11.843719>,  <15.827121, 21.728058, 11.816724>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.588683, 21.408028, 11.843719> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105110, 0.005571, 0.994445,
		-0.796005, 0.599876, 0.080775,
		-0.596093, -0.800074, 0.067487,
		15.409855, 21.168005, 11.863965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.391041, 21.854055, 12.490039>,  <15.827121, 21.728058, 11.816724>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.391041, 21.854055, 12.490039> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.360244, 21.459789, 12.429992>,  <15.341765, 21.223230, 12.393964>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.360244, 21.459789, 12.429992>,  <15.391041, 21.854055, 12.490039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.360244, 21.459789, 12.429992> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164585, -0.135934, 0.976951,
		-0.983353, 0.099925, -0.151760,
		-0.076993, -0.985666, -0.150117,
		15.337146, 21.164089, 12.384956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.835580, 21.633240, 12.957617>,  <15.391041, 21.854055, 12.490039>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.835580, 21.633240, 12.957617> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.027347, 21.293541, 12.869130>,  <15.142406, 21.089722, 12.816038>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.027347, 21.293541, 12.869130>,  <14.835580, 21.633240, 12.957617>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.027347, 21.293541, 12.869130> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041272, -0.229976, 0.972321,
		-0.876616, -0.475277, -0.075204,
		0.479417, -0.849248, -0.221217,
		15.171171, 21.038767, 12.802765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.488869, 21.067343, 13.291146>,  <14.835580, 21.633240, 12.957617>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.488869, 21.067343, 13.291146> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.861978, 20.934628, 13.234783>,  <15.085843, 20.854998, 13.200965>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.861978, 20.934628, 13.234783>,  <14.488869, 21.067343, 13.291146>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.861978, 20.934628, 13.234783> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053519, -0.259102, 0.964366,
		-0.356474, -0.907074, -0.223926,
		0.932771, -0.331787, -0.140909,
		15.141809, 20.835091, 13.192511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.566876, 20.375769, 13.598501>,  <14.488869, 21.067343, 13.291146>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.566876, 20.375769, 13.598501> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.946967, 20.497208, 13.570502>,  <15.175021, 20.570070, 13.553702>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.946967, 20.497208, 13.570502>,  <14.566876, 20.375769, 13.598501>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.946967, 20.497208, 13.570502> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132086, -0.189070, 0.973040,
		0.282178, -0.933853, -0.219760,
		0.950226, 0.303597, -0.069998,
		15.232035, 20.588287, 13.549503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.955306, 19.903526, 13.923593>,  <14.566876, 20.375769, 13.598501>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.955306, 19.903526, 13.923593> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.219525, 20.203465, 13.908605>,  <15.378057, 20.383429, 13.899611>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.219525, 20.203465, 13.908605>,  <14.955306, 19.903526, 13.923593>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.219525, 20.203465, 13.908605> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315879, -0.232292, 0.919924,
		0.681099, -0.619491, -0.390301,
		0.660549, 0.749848, -0.037470,
		15.417690, 20.428419, 13.897364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.582658, 19.564920, 14.078270>,  <14.955306, 19.903526, 13.923593>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.582658, 19.564920, 14.078270> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.679042, 19.944839, 14.158090>,  <15.736873, 20.172791, 14.205981>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.679042, 19.944839, 14.158090>,  <15.582658, 19.564920, 14.078270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.679042, 19.944839, 14.158090> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312923, -0.270657, 0.910398,
		0.918704, -0.156926, -0.362432,
		0.240960, 0.949799, 0.199548,
		15.751329, 20.229780, 14.217954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.266201, 19.603455, 14.446695>,  <15.582658, 19.564920, 14.078270>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.266201, 19.603455, 14.446695> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.102497, 19.958099, 14.532880>,  <16.004274, 20.170887, 14.584590>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.102497, 19.958099, 14.532880>,  <16.266201, 19.603455, 14.446695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.102497, 19.958099, 14.532880> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419019, -0.027135, 0.907572,
		0.810511, 0.461716, -0.360402,
		-0.409261, 0.886613, 0.215461,
		15.979719, 20.224083, 14.597518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.808395, 20.005283, 14.745586>,  <16.266201, 19.603455, 14.446695>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.808395, 20.005283, 14.745586> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.443058, 20.127174, 14.853621>,  <16.223856, 20.200308, 14.918443>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.443058, 20.127174, 14.853621>,  <16.808395, 20.005283, 14.745586>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.443058, 20.127174, 14.853621> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252712, -0.095896, 0.962778,
		0.319283, 0.947600, 0.010578,
		-0.913343, 0.304725, 0.270088,
		16.169056, 20.218592, 14.934648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.857058, 20.617683, 15.226113>,  <16.808395, 20.005283, 14.745586>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.857058, 20.617683, 15.226113> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.487118, 20.473728, 15.275319>,  <16.265154, 20.387356, 15.304843>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.487118, 20.473728, 15.275319>,  <16.857058, 20.617683, 15.226113>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.487118, 20.473728, 15.275319> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112542, 0.049999, 0.992388,
		-0.363299, 0.931655, -0.005739,
		-0.924850, -0.359888, 0.123015,
		16.209663, 20.365763, 15.312223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.615030, 21.147552, 15.512346>,  <16.857058, 20.617683, 15.226113>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.615030, 21.147552, 15.512346> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.400284, 20.824558, 15.610114>,  <16.271435, 20.630762, 15.668775>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.400284, 20.824558, 15.610114>,  <16.615030, 21.147552, 15.512346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.400284, 20.824558, 15.610114> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149022, 0.194393, 0.969538,
		-0.830401, 0.556937, 0.015970,
		-0.536868, -0.807485, 0.244420,
		16.239223, 20.582314, 15.683440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.346291, 21.368221, 16.100746>,  <16.615030, 21.147552, 15.512346>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.346291, 21.368221, 16.100746> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.287125, 20.973221, 16.122515>,  <16.251625, 20.736221, 16.135576>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.287125, 20.973221, 16.122515>,  <16.346291, 21.368221, 16.100746>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.287125, 20.973221, 16.122515> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150284, 0.031945, 0.988127,
		-0.977515, 0.154338, 0.143681,
		-0.147916, -0.987502, 0.054421,
		16.242750, 20.676970, 16.138842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.953516, 21.255964, 16.656368>,  <16.346291, 21.368221, 16.100746>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.953516, 21.255964, 16.656368> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.140911, 20.910130, 16.583693>,  <16.253347, 20.702629, 16.540087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.140911, 20.910130, 16.583693>,  <15.953516, 21.255964, 16.656368>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.140911, 20.910130, 16.583693> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072256, -0.167466, 0.983227,
		-0.880510, -0.473758, -0.015984,
		0.468488, -0.864586, -0.181687,
		16.281458, 20.650753, 16.529186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.795477, 20.835302, 17.207508>,  <15.953516, 21.255964, 16.656368>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.795477, 20.835302, 17.207508> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.128345, 20.669388, 17.060297>,  <16.328066, 20.569839, 16.971972>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.128345, 20.669388, 17.060297>,  <15.795477, 20.835302, 17.207508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.128345, 20.669388, 17.060297> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416990, 0.030604, 0.908395,
		-0.365525, -0.909405, 0.198429,
		0.832172, -0.414784, -0.368027,
		16.377996, 20.544952, 16.949888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<23.086750, 23.641539, 15.102836> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.710003, 23.761509, 15.163409>,  <22.483955, 23.833490, 15.199754>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.710003, 23.761509, 15.163409>,  <23.086750, 23.641539, 15.102836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.710003, 23.761509, 15.163409> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256630, -0.351280, -0.900413,
		-0.216858, -0.886932, 0.407828,
		-0.941867, 0.299922, 0.151435,
		22.427443, 23.851486, 15.208839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.776085, 23.179829, 14.827458>,  <23.086750, 23.641539, 15.102836>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.776085, 23.179829, 14.827458> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.497452, 23.466217, 14.846034>,  <22.330273, 23.638050, 14.857180>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.497452, 23.466217, 14.846034>,  <22.776085, 23.179829, 14.827458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.497452, 23.466217, 14.846034> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305447, -0.237361, -0.922151,
		-0.649212, -0.656538, 0.384034,
		-0.696582, 0.715973, 0.046440,
		22.288477, 23.681009, 14.859966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.122461, 22.812042, 14.742363>,  <22.776085, 23.179829, 14.827458>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.122461, 22.812042, 14.742363> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.115170, 23.198238, 14.638446>,  <22.110794, 23.429956, 14.576096>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.115170, 23.198238, 14.638446>,  <22.122461, 22.812042, 14.742363>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.115170, 23.198238, 14.638446> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386931, -0.246402, -0.888578,
		-0.921928, 0.084324, 0.378071,
		-0.018229, 0.965492, -0.259792,
		22.109701, 23.487886, 14.560508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.450081, 22.864847, 14.552131>,  <22.122461, 22.812042, 14.742363>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.450081, 22.864847, 14.552131> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.613590, 23.186169, 14.378877>,  <21.711697, 23.378962, 14.274924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.613590, 23.186169, 14.378877>,  <21.450081, 22.864847, 14.552131>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.613590, 23.186169, 14.378877> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215198, -0.376373, -0.901129,
		-0.886901, 0.461567, 0.019019,
		0.408773, 0.803305, -0.433134,
		21.736221, 23.427160, 14.248937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.007456, 22.980104, 14.110314>,  <21.450081, 22.864847, 14.552131>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.007456, 22.980104, 14.110314> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.331337, 23.172085, 13.975244>,  <21.525665, 23.287273, 13.894201>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.331337, 23.172085, 13.975244>,  <21.007456, 22.980104, 14.110314>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.331337, 23.172085, 13.975244> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234397, -0.263016, -0.935885,
		-0.537994, 0.836940, -0.100466,
		0.809704, 0.479952, -0.337677,
		21.574247, 23.316071, 13.873940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.817297, 23.516972, 13.598319>,  <21.007456, 22.980104, 14.110314>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.817297, 23.516972, 13.598319> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.206432, 23.446342, 13.538440>,  <21.439913, 23.403965, 13.502512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.206432, 23.446342, 13.538440>,  <20.817297, 23.516972, 13.598319>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.206432, 23.446342, 13.538440> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170590, -0.109689, -0.979218,
		0.156482, 0.978157, -0.136831,
		0.972837, -0.176572, -0.149699,
		21.498283, 23.393372, 13.493530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.033199, 23.906130, 13.038010>,  <20.817297, 23.516972, 13.598319>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.033199, 23.906130, 13.038010> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.331837, 23.640034, 13.040834>,  <21.511019, 23.480375, 13.042529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.331837, 23.640034, 13.040834>,  <21.033199, 23.906130, 13.038010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.331837, 23.640034, 13.040834> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158573, -0.188255, -0.969234,
		0.646105, 0.722505, -0.246039,
		0.746594, -0.665242, 0.007063,
		21.555815, 23.440460, 13.042953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.430708, 23.982727, 12.374475>,  <21.033199, 23.906130, 13.038010>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.430708, 23.982727, 12.374475> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.524963, 23.618877, 12.511331>,  <21.581516, 23.400568, 12.593444>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.524963, 23.618877, 12.511331>,  <21.430708, 23.982727, 12.374475>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.524963, 23.618877, 12.511331> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206505, -0.390879, -0.896978,
		0.949647, 0.140711, -0.279949,
		0.235641, -0.909623, 0.342140,
		21.595655, 23.345991, 12.613973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.925140, 23.730663, 11.963751>,  <21.430708, 23.982727, 12.374475>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.925140, 23.730663, 11.963751> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.755238, 23.410870, 12.133648>,  <21.653296, 23.218994, 12.235586>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.755238, 23.410870, 12.133648>,  <21.925140, 23.730663, 11.963751>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.755238, 23.410870, 12.133648> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007190, -0.466175, -0.884663,
		0.905279, -0.378820, 0.192262,
		-0.424756, -0.799485, 0.424742,
		21.627811, 23.171024, 12.261070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.258699, 23.162066, 11.633354>,  <21.925140, 23.730663, 11.963751>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.258699, 23.162066, 11.633354> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.940514, 22.994980, 11.808966>,  <21.749601, 22.894728, 11.914332>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.940514, 22.994980, 11.808966>,  <22.258699, 23.162066, 11.633354>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.940514, 22.994980, 11.808966> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148388, -0.568153, -0.809434,
		0.587549, -0.709024, 0.389963,
		-0.795466, -0.417716, 0.439029,
		21.701874, 22.869665, 11.940675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.282909, 22.449774, 11.502151>,  <22.258699, 23.162066, 11.633354>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.282909, 22.449774, 11.502151> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.899277, 22.545471, 11.562715>,  <21.669098, 22.602890, 11.599052>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.899277, 22.545471, 11.562715>,  <22.282909, 22.449774, 11.502151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.899277, 22.545471, 11.562715> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230167, -0.347410, -0.909027,
		-0.164880, -0.906680, 0.388261,
		-0.959082, 0.239245, 0.151407,
		21.611553, 22.617245, 11.608136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.836130, 21.804529, 11.341392>,  <22.282909, 22.449774, 11.502151>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.836130, 21.804529, 11.341392> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.585438, 22.114407, 11.307783>,  <21.435022, 22.300333, 11.287618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.585438, 22.114407, 11.307783>,  <21.836130, 21.804529, 11.341392>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.585438, 22.114407, 11.307783> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334589, -0.364916, -0.868842,
		-0.703748, -0.516415, 0.487908,
		-0.626729, 0.774694, -0.084022,
		21.397419, 22.346815, 11.282577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.359070, 21.558737, 11.013416>,  <21.836130, 21.804529, 11.341392>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.359070, 21.558737, 11.013416> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.234650, 21.937401, 10.979754>,  <21.159998, 22.164598, 10.959558>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.234650, 21.937401, 10.979754>,  <21.359070, 21.558737, 11.013416>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.234650, 21.937401, 10.979754> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400272, -0.210801, -0.891822,
		-0.861992, -0.243718, 0.444491,
		-0.311052, 0.946660, -0.084155,
		21.141335, 22.221399, 10.954508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.646345, 21.607771, 10.958976>,  <21.359070, 21.558737, 11.013416>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.646345, 21.607771, 10.958976> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.802410, 21.927193, 10.775637>,  <20.896049, 22.118847, 10.665633>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.802410, 21.927193, 10.775637>,  <20.646345, 21.607771, 10.958976>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.802410, 21.927193, 10.775637> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395711, -0.304054, -0.866582,
		-0.831377, 0.519480, 0.197367,
		0.390161, 0.798556, -0.458348,
		20.919458, 22.166759, 10.638132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.942139, 21.254145, 11.090395>,  <20.646345, 21.607771, 10.958976>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.942139, 21.254145, 11.090395> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.966549, 20.859112, 11.032488>,  <19.981195, 20.622091, 10.997744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.966549, 20.859112, 11.032488>,  <19.942139, 21.254145, 11.090395>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.966549, 20.859112, 11.032488> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503100, -0.094833, 0.859009,
		-0.862071, -0.125254, 0.491065,
		0.061025, -0.987582, -0.144768,
		19.984856, 20.562838, 10.989058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.836002, 20.965647, 11.779656>,  <19.942139, 21.254145, 11.090395>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.836002, 20.965647, 11.779656> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.024380, 20.684109, 11.566936>,  <20.137407, 20.515186, 11.439303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.024380, 20.684109, 11.566936>,  <19.836002, 20.965647, 11.779656>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.024380, 20.684109, 11.566936> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517579, -0.267716, 0.812675,
		-0.714369, -0.657975, 0.238216,
		0.470945, -0.703845, -0.531802,
		20.165663, 20.472956, 11.407395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.923088, 20.501451, 12.266792>,  <19.836002, 20.965647, 11.779656>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.923088, 20.501451, 12.266792> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.194248, 20.386524, 11.996119>,  <20.356943, 20.317568, 11.833714>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.194248, 20.386524, 11.996119>,  <19.923088, 20.501451, 12.266792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.194248, 20.386524, 11.996119> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680913, -0.101615, 0.725281,
		-0.277149, -0.952429, 0.126755,
		0.677898, -0.287321, -0.676684,
		20.397617, 20.300329, 11.793114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.167263, 19.849510, 12.471663>,  <19.923088, 20.501451, 12.266792>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.167263, 19.849510, 12.471663> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.458447, 20.010273, 12.249476>,  <20.633156, 20.106731, 12.116164>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.458447, 20.010273, 12.249476>,  <20.167263, 19.849510, 12.471663>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.458447, 20.010273, 12.249476> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630715, -0.074877, 0.772394,
		0.268840, -0.912613, -0.307998,
		0.727959, 0.401910, -0.555468,
		20.676834, 20.130846, 12.082836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.746824, 19.636696, 12.778220>,  <20.167263, 19.849510, 12.471663>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.746824, 19.636696, 12.778220> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.883030, 19.932194, 12.545565>,  <20.964754, 20.109493, 12.405972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.883030, 19.932194, 12.545565>,  <20.746824, 19.636696, 12.778220>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.883030, 19.932194, 12.545565> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711787, 0.201652, 0.672826,
		0.614337, -0.643110, -0.457164,
		0.340514, 0.738746, -0.581640,
		20.985184, 20.153818, 12.371073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.540783, 19.561588, 12.740945>,  <20.746824, 19.636696, 12.778220>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.540783, 19.561588, 12.740945> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.464294, 19.944153, 12.652664>,  <21.418402, 20.173693, 12.599696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.464294, 19.944153, 12.652664>,  <21.540783, 19.561588, 12.740945>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.464294, 19.944153, 12.652664> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735573, 0.288507, 0.612940,
		0.649898, -0.045135, -0.758680,
		-0.191220, 0.956413, -0.220700,
		21.406929, 20.231077, 12.586454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.197571, 19.873747, 12.574486>,  <21.540783, 19.561588, 12.740945>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.197571, 19.873747, 12.574486> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.938831, 20.149620, 12.704667>,  <21.783587, 20.315144, 12.782776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.938831, 20.149620, 12.704667>,  <22.197571, 19.873747, 12.574486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.938831, 20.149620, 12.704667> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644897, 0.266905, 0.716149,
		0.407052, 0.673125, -0.617423,
		-0.646851, 0.689684, 0.325452,
		21.744776, 20.356525, 12.802302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.573242, 20.288773, 13.020171>,  <22.197571, 19.873747, 12.574486>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.573242, 20.288773, 13.020171> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.216358, 20.453663, 13.093964>,  <22.002228, 20.552597, 13.138239>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.216358, 20.453663, 13.093964>,  <22.573242, 20.288773, 13.020171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.216358, 20.453663, 13.093964> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346035, 0.361485, 0.865788,
		0.290212, 0.836301, -0.465164,
		-0.892209, 0.412225, 0.184482,
		21.948696, 20.577330, 13.149308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.704340, 20.969706, 13.237332>,  <22.573242, 20.288773, 13.020171>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.704340, 20.969706, 13.237332> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.339203, 20.882324, 13.375313>,  <22.120121, 20.829895, 13.458101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.339203, 20.882324, 13.375313>,  <22.704340, 20.969706, 13.237332>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.339203, 20.882324, 13.375313> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248009, 0.374472, 0.893455,
		-0.324355, 0.901137, -0.287656,
		-0.912845, -0.218456, 0.344952,
		22.065350, 20.816788, 13.478798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.451511, 21.566994, 13.642133>,  <22.704340, 20.969706, 13.237332>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.451511, 21.566994, 13.642133> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.234501, 21.255199, 13.767394>,  <22.104294, 21.068123, 13.842551>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.234501, 21.255199, 13.767394>,  <22.451511, 21.566994, 13.642133>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.234501, 21.255199, 13.767394> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126501, 0.292725, 0.947792,
		-0.830458, 0.553818, -0.060205,
		-0.542528, -0.779486, 0.313154,
		22.071743, 21.021353, 13.861341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.945873, 21.818571, 14.164625>,  <22.451511, 21.566994, 13.642133>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.945873, 21.818571, 14.164625> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.999561, 21.432281, 14.253491>,  <22.031775, 21.200508, 14.306811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.999561, 21.432281, 14.253491>,  <21.945873, 21.818571, 14.164625>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.999561, 21.432281, 14.253491> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205155, 0.246419, 0.947201,
		-0.969482, -0.081557, 0.231198,
		0.134222, -0.965726, 0.222167,
		22.039827, 21.142563, 14.320142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.466238, 21.694229, 14.709406>,  <21.945873, 21.818571, 14.164625>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.466238, 21.694229, 14.709406> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.721737, 21.387852, 14.738624>,  <21.875036, 21.204025, 14.756154>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.721737, 21.387852, 14.738624>,  <21.466238, 21.694229, 14.709406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.721737, 21.387852, 14.738624> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000458, 0.095311, 0.995448,
		-0.769418, -0.635804, 0.061230,
		0.638745, -0.765944, 0.073043,
		21.913361, 21.158068, 14.760536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.275656, 21.248514, 15.329942>,  <21.466238, 21.694229, 14.709406>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.275656, 21.248514, 15.329942> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.659653, 21.150105, 15.276441>,  <21.890051, 21.091059, 15.244340>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.659653, 21.150105, 15.276441>,  <21.275656, 21.248514, 15.329942>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.659653, 21.150105, 15.276441> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161170, 0.094824, 0.982361,
		-0.229003, -0.964614, 0.130682,
		0.959990, -0.246026, -0.133752,
		21.947649, 21.076298, 15.236315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.443407, 20.617815, 15.793940>,  <21.275656, 21.248514, 15.329942>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.443407, 20.617815, 15.793940> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.787472, 20.801727, 15.705647>,  <21.993910, 20.912075, 15.652673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.787472, 20.801727, 15.705647>,  <21.443407, 20.617815, 15.793940>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.787472, 20.801727, 15.705647> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243504, 0.010051, 0.969848,
		0.448139, -0.887974, -0.103313,
		0.860162, 0.459783, -0.220729,
		22.045521, 20.939663, 15.639429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.718828, 19.882057, 15.821559>,  <21.443407, 20.617815, 15.793940>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.718828, 19.882057, 15.821559> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.602135, 19.520493, 15.946671>,  <21.532118, 19.303555, 16.021740>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.602135, 19.520493, 15.946671>,  <21.718828, 19.882057, 15.821559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.602135, 19.520493, 15.946671> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270909, -0.235531, -0.933345,
		0.917332, -0.357026, -0.176166,
		-0.291736, -0.903913, 0.312782,
		21.514614, 19.249319, 16.040506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.034611, 19.408119, 15.341071>,  <21.718828, 19.882057, 15.821559>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.034611, 19.408119, 15.341071> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.722462, 19.222958, 15.509231>,  <21.535172, 19.111860, 15.610126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.722462, 19.222958, 15.509231>,  <22.034611, 19.408119, 15.341071>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.722462, 19.222958, 15.509231> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233591, -0.407827, -0.882673,
		0.580044, -0.787017, 0.210127,
		-0.780374, -0.462906, 0.420398,
		21.488350, 19.084085, 15.635350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.140915, 18.752068, 15.089525>,  <22.034611, 19.408119, 15.341071>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.140915, 18.752068, 15.089525> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.761505, 18.757210, 15.216104>,  <21.533859, 18.760296, 15.292050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.761505, 18.757210, 15.216104>,  <22.140915, 18.752068, 15.089525>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.761505, 18.757210, 15.216104> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280488, -0.498094, -0.820505,
		0.147072, -0.867028, 0.476060,
		-0.948523, 0.012856, 0.316447,
		21.476948, 18.761066, 15.311037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.915691, 18.130489, 14.881133>,  <22.140915, 18.752068, 15.089525>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.915691, 18.130489, 14.881133> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.598122, 18.363987, 14.949168>,  <21.407579, 18.504086, 14.989989>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.598122, 18.363987, 14.949168>,  <21.915691, 18.130489, 14.881133>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.598122, 18.363987, 14.949168> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491737, -0.451924, -0.744285,
		-0.357603, -0.674544, 0.645841,
		-0.793924, 0.583742, 0.170089,
		21.359945, 18.539110, 15.000195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.350988, 17.631571, 14.823566>,  <21.915691, 18.130489, 14.881133>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.350988, 17.631571, 14.823566> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.219536, 18.004883, 14.765620>,  <21.140665, 18.228870, 14.730852>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.219536, 18.004883, 14.765620>,  <21.350988, 17.631571, 14.823566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.219536, 18.004883, 14.765620> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561197, -0.316332, -0.764847,
		-0.759645, -0.170053, 0.627712,
		-0.328630, 0.933282, -0.144867,
		21.120947, 18.284868, 14.722160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.708387, 17.459269, 14.621683>,  <21.350988, 17.631571, 14.823566>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.708387, 17.459269, 14.621683> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.786789, 17.836899, 14.515622>,  <20.833830, 18.063477, 14.451985>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.786789, 17.836899, 14.515622>,  <20.708387, 17.459269, 14.621683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.786789, 17.836899, 14.515622> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545558, -0.119701, -0.829481,
		-0.814830, 0.307239, 0.491585,
		0.196006, 0.944074, -0.265153,
		20.845591, 18.120121, 14.436076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.043112, 17.772419, 14.512551>,  <20.708387, 17.459269, 14.621683>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.043112, 17.772419, 14.512551> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.320595, 17.958328, 14.292459>,  <20.487085, 18.069874, 14.160403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.320595, 17.958328, 14.292459>,  <20.043112, 17.772419, 14.512551>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.320595, 17.958328, 14.292459> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647704, 0.068404, -0.758815,
		-0.315041, 0.882783, 0.348489,
		0.693707, 0.464775, -0.550232,
		20.528708, 18.097761, 14.127389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.643274, 17.978880, 14.024485>,  <20.043112, 17.772419, 14.512551>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.643274, 17.978880, 14.024485> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.011368, 18.074322, 13.900397>,  <20.232224, 18.131586, 13.825945>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.011368, 18.074322, 13.900397>,  <19.643274, 17.978880, 14.024485>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.011368, 18.074322, 13.900397> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356495, 0.183982, -0.916003,
		-0.161489, 0.953529, 0.254369,
		0.920235, 0.238605, -0.310217,
		20.287437, 18.145903, 13.807332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.642889, 18.616373, 13.649067>,  <19.643274, 17.978880, 14.024485>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.642889, 18.616373, 13.649067> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.956230, 18.395512, 13.534884>,  <20.144236, 18.262995, 13.466374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.956230, 18.395512, 13.534884>,  <19.642889, 18.616373, 13.649067>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.956230, 18.395512, 13.534884> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354857, -0.020213, -0.934702,
		0.510329, 0.833497, -0.211769,
		0.783352, -0.552153, -0.285457,
		20.191236, 18.229866, 13.449247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.772312, 18.815844, 13.023853>,  <19.642889, 18.616373, 13.649067>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.772312, 18.815844, 13.023853> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.976654, 18.474430, 12.982853>,  <20.099258, 18.269583, 12.958253>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.976654, 18.474430, 12.982853>,  <19.772312, 18.815844, 13.023853>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.976654, 18.474430, 12.982853> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304029, -0.067853, -0.950243,
		0.804110, 0.516600, -0.294162,
		0.510855, -0.853534, -0.102501,
		20.129911, 18.218370, 12.952103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.234701, 18.868626, 12.493515>,  <19.772312, 18.815844, 13.023853>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.234701, 18.868626, 12.493515> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.147961, 18.480076, 12.532320>,  <20.095917, 18.246946, 12.555603>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.147961, 18.480076, 12.532320>,  <20.234701, 18.868626, 12.493515>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.147961, 18.480076, 12.532320> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279979, -0.033316, -0.959428,
		0.935194, -0.235212, -0.264739,
		-0.216849, -0.971373, 0.097012,
		20.082907, 18.188663, 12.561423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.356119, 18.655622, 11.776464>,  <20.234701, 18.868626, 12.493515>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.356119, 18.655622, 11.776464> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.142746, 18.358978, 11.939175>,  <20.014723, 18.180992, 12.036800>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.142746, 18.358978, 11.939175>,  <20.356119, 18.655622, 11.776464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.142746, 18.358978, 11.939175> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443675, -0.164119, -0.881032,
		0.720142, -0.650446, -0.241488,
		-0.533430, -0.741610, 0.406776,
		19.982718, 18.136496, 12.061208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.320871, 18.154139, 11.273257>,  <20.356119, 18.655622, 11.776464>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.320871, 18.154139, 11.273257> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.017284, 18.061375, 11.516628>,  <19.835133, 18.005716, 11.662651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.017284, 18.061375, 11.516628>,  <20.320871, 18.154139, 11.273257>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.017284, 18.061375, 11.516628> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566436, -0.225674, -0.792604,
		0.321119, -0.946197, 0.039918,
		-0.758969, -0.231909, 0.608428,
		19.789595, 17.991802, 11.699157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.041908, 17.524130, 11.071061>,  <20.320871, 18.154139, 11.273257>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.041908, 17.524130, 11.071061> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.741474, 17.689236, 11.277166>,  <19.561214, 17.788300, 11.400829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.741474, 17.689236, 11.277166>,  <20.041908, 17.524130, 11.071061>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.741474, 17.689236, 11.277166> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652469, -0.344947, -0.674756,
		-0.100778, -0.842992, 0.528401,
		-0.751085, 0.412766, 0.515263,
		19.516150, 17.813065, 11.431746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<15.877187, 20.299520, 17.758158> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.229321, 20.339748, 17.572731>,  <16.440601, 20.363886, 17.461475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.229321, 20.339748, 17.572731>,  <15.877187, 20.299520, 17.758158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.229321, 20.339748, 17.572731> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474208, -0.210731, 0.854821,
		-0.011717, -0.972356, -0.233206,
		0.880335, 0.100572, -0.463569,
		16.493422, 20.369919, 17.433661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.328871, 19.750927, 18.075281>,  <15.877187, 20.299520, 17.758158>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.328871, 19.750927, 18.075281> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.602921, 19.971745, 17.885185>,  <16.767351, 20.104235, 17.771128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.602921, 19.971745, 17.885185>,  <16.328871, 19.750927, 18.075281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.602921, 19.971745, 17.885185> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651101, -0.171581, 0.739342,
		0.326606, -0.815971, -0.476990,
		0.685125, 0.552042, -0.475240,
		16.808458, 20.137358, 17.742613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.973627, 19.389271, 18.051456>,  <16.328871, 19.750927, 18.075281>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.973627, 19.389271, 18.051456> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.099072, 19.768490, 18.030094>,  <17.174339, 19.996021, 18.017277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.099072, 19.768490, 18.030094>,  <16.973627, 19.389271, 18.051456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.099072, 19.768490, 18.030094> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711113, -0.197220, 0.674850,
		0.629258, -0.249618, -0.736020,
		0.313612, 0.948048, -0.053404,
		17.193155, 20.052904, 18.014072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.750807, 19.349789, 18.243153>,  <16.973627, 19.389271, 18.051456>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.750807, 19.349789, 18.243153> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.697430, 19.745918, 18.227896>,  <17.665403, 19.983595, 18.218742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.697430, 19.745918, 18.227896>,  <17.750807, 19.349789, 18.243153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.697430, 19.745918, 18.227896> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765235, 0.127418, 0.631015,
		0.629768, 0.055018, -0.774832,
		-0.133445, 0.990322, -0.038142,
		17.657396, 20.043015, 18.216454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.361996, 19.719749, 18.067867>,  <17.750807, 19.349789, 18.243153>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.361996, 19.719749, 18.067867> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.127800, 19.952469, 18.293686>,  <17.987284, 20.092100, 18.429178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.127800, 19.952469, 18.293686>,  <18.361996, 19.719749, 18.067867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.127800, 19.952469, 18.293686> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762473, 0.158636, 0.627271,
		0.275388, 0.797712, -0.536485,
		-0.585488, 0.581799, 0.564548,
		17.952154, 20.127008, 18.463051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.646097, 20.485237, 18.171171>,  <18.361996, 19.719749, 18.067867>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.646097, 20.485237, 18.171171> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.425579, 20.370266, 18.484465>,  <18.293268, 20.301283, 18.672441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.425579, 20.370266, 18.484465>,  <18.646097, 20.485237, 18.171171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.425579, 20.370266, 18.484465> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737148, 0.271870, 0.618627,
		-0.390749, 0.918407, 0.061996,
		-0.551297, -0.287428, 0.783235,
		18.260189, 20.284039, 18.719435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.816788, 20.966446, 18.630945>,  <18.646097, 20.485237, 18.171171>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.816788, 20.966446, 18.630945> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.596401, 20.765602, 18.897573>,  <18.464169, 20.645096, 19.057550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.596401, 20.765602, 18.897573>,  <18.816788, 20.966446, 18.630945>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.596401, 20.765602, 18.897573> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643566, 0.252851, 0.722418,
		-0.531278, 0.827013, 0.183828,
		-0.550968, -0.502111, 0.666572,
		18.431110, 20.614969, 19.097546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.131676, 21.218231, 19.306707>,  <18.816788, 20.966446, 18.630945>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.131676, 21.218231, 19.306707> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.891834, 20.929611, 19.445179>,  <18.747929, 20.756439, 19.528261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.891834, 20.929611, 19.445179>,  <19.131676, 21.218231, 19.306707>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.891834, 20.929611, 19.445179> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428382, 0.075999, 0.900396,
		-0.675992, 0.688176, 0.263530,
		-0.599603, -0.721552, 0.346177,
		18.711954, 20.713146, 19.549032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.781496, 21.442360, 19.967020>,  <19.131676, 21.218231, 19.306707>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.781496, 21.442360, 19.967020> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.745857, 21.043968, 19.963314>,  <18.724474, 20.804934, 19.961090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.745857, 21.043968, 19.963314>,  <18.781496, 21.442360, 19.967020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.745857, 21.043968, 19.963314> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357009, -0.040617, 0.933218,
		-0.929842, 0.079838, 0.359192,
		-0.089096, -0.995980, -0.009264,
		18.719128, 20.745174, 19.960535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.371380, 21.211008, 20.576092>,  <18.781496, 21.442360, 19.967020>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.371380, 21.211008, 20.576092> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.612427, 20.914574, 20.457672>,  <18.757055, 20.736713, 20.386620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.612427, 20.914574, 20.457672>,  <18.371380, 21.211008, 20.576092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.612427, 20.914574, 20.457672> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396257, -0.044141, 0.917078,
		-0.692702, -0.669957, 0.267061,
		0.602615, -0.741086, -0.296051,
		18.793211, 20.692247, 20.368856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.394024, 20.685778, 21.164854>,  <18.371380, 21.211008, 20.576092>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.394024, 20.685778, 21.164854> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.721157, 20.614250, 20.946068>,  <18.917437, 20.571333, 20.814796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.721157, 20.614250, 20.946068>,  <18.394024, 20.685778, 21.164854>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.721157, 20.614250, 20.946068> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442413, -0.412436, 0.796346,
		-0.367991, -0.893263, -0.258192,
		0.817834, -0.178820, -0.546965,
		18.966507, 20.560604, 20.781979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.604851, 20.042698, 21.347630>,  <18.394024, 20.685778, 21.164854>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.604851, 20.042698, 21.347630> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.919243, 20.233166, 21.189896>,  <19.107878, 20.347446, 21.095255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.919243, 20.233166, 21.189896>,  <18.604851, 20.042698, 21.347630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.919243, 20.233166, 21.189896> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546427, -0.236638, 0.803380,
		0.289232, -0.846914, -0.446185,
		0.785978, 0.476171, -0.394333,
		19.155037, 20.376017, 21.071596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.061172, 19.560226, 21.274240>,  <18.604851, 20.042698, 21.347630>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.061172, 19.560226, 21.274240> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.224384, 19.922363, 21.321346>,  <19.322311, 20.139645, 21.349609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.224384, 19.922363, 21.321346>,  <19.061172, 19.560226, 21.274240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.224384, 19.922363, 21.321346> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436098, -0.306599, 0.846059,
		0.802079, -0.293860, -0.519919,
		0.408030, 0.905341, 0.117765,
		19.346794, 20.193966, 21.356676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.777063, 19.346010, 21.670460>,  <19.061172, 19.560226, 21.274240>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.777063, 19.346010, 21.670460> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.553474, 19.667095, 21.753601>,  <19.419321, 19.859747, 21.803486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.553474, 19.667095, 21.753601>,  <19.777063, 19.346010, 21.670460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.553474, 19.667095, 21.753601> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343526, -0.003960, 0.939135,
		0.754677, 0.596354, -0.273539,
		-0.558974, 0.802712, 0.207852,
		19.385782, 19.907909, 21.815956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.430889, 19.593029, 21.753349>,  <19.777063, 19.346010, 21.670460>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.430889, 19.593029, 21.753349> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.829391, 19.615726, 21.727272>,  <21.068493, 19.629345, 21.711626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.829391, 19.615726, 21.727272>,  <20.430889, 19.593029, 21.753349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.829391, 19.615726, 21.727272> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056703, -0.140126, -0.988509,
		-0.065227, 0.988506, -0.136384,
		0.996258, 0.056744, -0.065191,
		21.128269, 19.632750, 21.707714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.489225, 19.956936, 21.106117>,  <20.430889, 19.593029, 21.753349>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.489225, 19.956936, 21.106117> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.850338, 19.798923, 21.174162>,  <21.067005, 19.704117, 21.214989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.850338, 19.798923, 21.174162>,  <20.489225, 19.956936, 21.106117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.850338, 19.798923, 21.174162> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092433, -0.208074, -0.973736,
		0.420051, 0.894794, -0.151331,
		0.902781, -0.395031, 0.170110,
		21.121172, 19.680414, 21.225195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.967070, 20.276947, 20.605047>,  <20.489225, 19.956936, 21.106117>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.967070, 20.276947, 20.605047> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.117031, 19.917419, 20.695881>,  <21.207008, 19.701702, 20.750381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.117031, 19.917419, 20.695881>,  <20.967070, 20.276947, 20.605047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.117031, 19.917419, 20.695881> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211658, -0.155495, -0.964895,
		0.902578, 0.409808, 0.131946,
		0.374905, -0.898821, 0.227086,
		21.229502, 19.647774, 20.764006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.430027, 20.387428, 20.272779>,  <20.967070, 20.276947, 20.605047>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.430027, 20.387428, 20.272779> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.416752, 19.994656, 20.347305>,  <21.408787, 19.758993, 20.392021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.416752, 19.994656, 20.347305>,  <21.430027, 20.387428, 20.272779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.416752, 19.994656, 20.347305> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117375, -0.188956, -0.974945,
		0.992533, -0.010486, 0.121525,
		-0.033187, -0.981930, 0.186314,
		21.406796, 19.700077, 20.403200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.949951, 20.069550, 19.938824>,  <21.430027, 20.387428, 20.272779>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.949951, 20.069550, 19.938824> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.703129, 19.761875, 20.005274>,  <21.555037, 19.577271, 20.045143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.703129, 19.761875, 20.005274>,  <21.949951, 20.069550, 19.938824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.703129, 19.761875, 20.005274> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243319, -0.387259, -0.889284,
		0.748358, -0.508315, 0.426117,
		-0.617054, -0.769185, 0.166126,
		21.518013, 19.531120, 20.055111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.348797, 19.492748, 19.917877>,  <21.949951, 20.069550, 19.938824>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.348797, 19.492748, 19.917877> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.970039, 19.391224, 19.838915>,  <21.742785, 19.330309, 19.791538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.970039, 19.391224, 19.838915>,  <22.348797, 19.492748, 19.917877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.970039, 19.391224, 19.838915> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243070, -0.163132, -0.956193,
		0.210491, -0.953398, 0.216163,
		-0.946895, -0.253813, -0.197405,
		21.685970, 19.315081, 19.779694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.336279, 18.902941, 19.497536>,  <22.348797, 19.492748, 19.917877>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.336279, 18.902941, 19.497536> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.959724, 19.029232, 19.450027>,  <21.733791, 19.105007, 19.421522>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.959724, 19.029232, 19.450027>,  <22.336279, 18.902941, 19.497536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.959724, 19.029232, 19.450027> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073231, -0.152415, -0.985600,
		-0.329286, -0.936528, 0.120360,
		-0.941386, 0.315731, -0.118770,
		21.677309, 19.123951, 19.414396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.110218, 18.515423, 18.998161>,  <22.336279, 18.902941, 19.497536>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.110218, 18.515423, 18.998161> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.830345, 18.801014, 18.987726>,  <21.662422, 18.972368, 18.981464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.830345, 18.801014, 18.987726>,  <22.110218, 18.515423, 18.998161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.830345, 18.801014, 18.987726> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008584, -0.028114, -0.999568,
		-0.714402, -0.699604, 0.013542,
		-0.699683, 0.713977, -0.026090,
		21.620440, 19.015207, 18.979898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.530249, 18.228096, 18.611195>,  <22.110218, 18.515423, 18.998161>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.530249, 18.228096, 18.611195> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.509506, 18.627201, 18.594311>,  <21.497061, 18.866665, 18.584181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.509506, 18.627201, 18.594311>,  <21.530249, 18.228096, 18.611195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.509506, 18.627201, 18.594311> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024901, -0.040964, -0.998850,
		-0.998344, -0.052849, -0.022721,
		-0.051857, 0.997762, -0.042212,
		21.493950, 18.926529, 18.581648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.004189, 18.305107, 18.180111>,  <21.530249, 18.228096, 18.611195>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.004189, 18.305107, 18.180111> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.199272, 18.654305, 18.178366>,  <21.316322, 18.863823, 18.177319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.199272, 18.654305, 18.178366>,  <21.004189, 18.305107, 18.180111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.199272, 18.654305, 18.178366> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088928, 0.044707, -0.995034,
		-0.868464, 0.485676, 0.099438,
		0.487710, 0.872995, -0.004364,
		21.345585, 18.916203, 18.177057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.700987, 18.637955, 17.708311>,  <21.004189, 18.305107, 18.180111>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.700987, 18.637955, 17.708311> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.048012, 18.836861, 17.705172>,  <21.256227, 18.956205, 17.703289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.048012, 18.836861, 17.705172>,  <20.700987, 18.637955, 17.708311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.048012, 18.836861, 17.705172> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065776, 0.099088, -0.992902,
		-0.492960, 0.861921, 0.118674,
		0.867562, 0.497267, -0.007847,
		21.308281, 18.986040, 17.702818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.531639, 19.249235, 17.326473>,  <20.700987, 18.637955, 17.708311>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.531639, 19.249235, 17.326473> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.923080, 19.167110, 17.321123>,  <21.157946, 19.117836, 17.317913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.923080, 19.167110, 17.321123>,  <20.531639, 19.249235, 17.326473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.923080, 19.167110, 17.321123> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006612, 0.096349, -0.995326,
		0.205642, 0.973942, 0.095646,
		0.978605, -0.205313, -0.013373,
		21.216661, 19.105516, 17.317112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.832552, 19.730955, 16.955454>,  <20.531639, 19.249235, 17.326473>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.832552, 19.730955, 16.955454> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.114723, 19.447750, 16.942257>,  <21.284027, 19.277828, 16.934338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.114723, 19.447750, 16.942257>,  <20.832552, 19.730955, 16.955454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.114723, 19.447750, 16.942257> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057375, -0.010645, -0.998296,
		0.706453, 0.706121, -0.048131,
		0.705430, -0.708011, -0.032993,
		21.326353, 19.235346, 16.932360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.262476, 20.028532, 16.537218>,  <20.832552, 19.730955, 16.955454>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.262476, 20.028532, 16.537218> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.367142, 19.642471, 16.538475>,  <21.429941, 19.410835, 16.539228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.367142, 19.642471, 16.538475>,  <21.262476, 20.028532, 16.537218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.367142, 19.642471, 16.538475> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306493, -0.086180, -0.947964,
		0.915202, 0.247085, -0.318363,
		0.261664, -0.965154, 0.003143,
		21.445641, 19.352924, 16.539417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.900970, 20.464504, 16.409328>,  <21.262476, 20.028532, 16.537218>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.900970, 20.464504, 16.409328> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.080276, 20.770786, 16.224827>,  <22.187860, 20.954556, 16.114126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.080276, 20.770786, 16.224827>,  <21.900970, 20.464504, 16.409328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.080276, 20.770786, 16.224827> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132138, 0.453575, 0.881368,
		0.884081, -0.456035, 0.102142,
		0.448263, 0.765704, -0.461256,
		22.214756, 21.000498, 16.086451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.520901, 20.501432, 16.752884>,  <21.900970, 20.464504, 16.409328>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.520901, 20.501432, 16.752884> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.456810, 20.859005, 16.585451>,  <22.418356, 21.073549, 16.484991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.456810, 20.859005, 16.585451>,  <22.520901, 20.501432, 16.752884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.456810, 20.859005, 16.585451> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165946, 0.442419, 0.881321,
		0.973031, 0.071748, -0.219232,
		-0.160225, 0.893934, -0.418582,
		22.408743, 21.127186, 16.459877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.085672, 20.880461, 17.032297>,  <22.520901, 20.501432, 16.752884>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.085672, 20.880461, 17.032297> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.820255, 21.150883, 16.904137>,  <22.661005, 21.313137, 16.827240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.820255, 21.150883, 16.904137>,  <23.085672, 20.880461, 17.032297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.820255, 21.150883, 16.904137> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088985, 0.353903, 0.931039,
		0.742825, 0.646297, -0.174671,
		-0.663545, 0.676056, -0.320399,
		22.621191, 21.353699, 16.808018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.340221, 21.556347, 17.194155>,  <23.085672, 20.880461, 17.032297>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.340221, 21.556347, 17.194155> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.941475, 21.561619, 17.162945>,  <22.702227, 21.564781, 17.144218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.941475, 21.561619, 17.162945>,  <23.340221, 21.556347, 17.194155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.941475, 21.561619, 17.162945> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062147, 0.479976, 0.875077,
		0.048985, 0.877182, -0.477652,
		-0.996864, 0.013180, -0.078026,
		22.642416, 21.565573, 17.139538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.111198, 22.230669, 17.429832>,  <23.340221, 21.556347, 17.194155>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.111198, 22.230669, 17.429832> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.758446, 22.042397, 17.440746>,  <22.546795, 21.929432, 17.447294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.758446, 22.042397, 17.440746>,  <23.111198, 22.230669, 17.429832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.758446, 22.042397, 17.440746> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177954, 0.385896, 0.905216,
		-0.436599, 0.793437, -0.424074,
		-0.881881, -0.470682, 0.027287,
		22.493881, 21.901192, 17.448933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.749567, 22.697269, 17.731865>,  <23.111198, 22.230669, 17.429832>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.749567, 22.697269, 17.731865> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.526230, 22.368820, 17.779211>,  <22.392227, 22.171751, 17.807619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.526230, 22.368820, 17.779211>,  <22.749567, 22.697269, 17.731865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.526230, 22.368820, 17.779211> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220638, 0.284510, 0.932938,
		-0.799731, 0.494786, -0.340026,
		-0.558345, -0.821122, 0.118363,
		22.358727, 22.122484, 17.814720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.105688, 22.953156, 18.061909>,  <22.749567, 22.697269, 17.731865>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.105688, 22.953156, 18.061909> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.151302, 22.562656, 18.135593>,  <22.178671, 22.328358, 18.179804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.151302, 22.562656, 18.135593>,  <22.105688, 22.953156, 18.061909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.151302, 22.562656, 18.135593> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196914, 0.159534, 0.967354,
		-0.973766, -0.146587, -0.174044,
		0.114036, -0.976248, 0.184214,
		22.185513, 22.269781, 18.190857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.477184, 23.370749, 18.124392>,  <22.105688, 22.953156, 18.061909>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.477184, 23.370749, 18.124392> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.694218, 23.706333, 18.107691>,  <21.824438, 23.907684, 18.097670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.694218, 23.706333, 18.107691>,  <21.477184, 23.370749, 18.124392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.694218, 23.706333, 18.107691> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043142, -0.077474, -0.996061,
		-0.838893, 0.538645, -0.078231,
		0.542584, 0.838964, -0.041754,
		21.856993, 23.958023, 18.095165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.127441, 23.741983, 17.658379>,  <21.477184, 23.370749, 18.124392>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.127441, 23.741983, 17.658379> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.490799, 23.908401, 17.675011>,  <21.708813, 24.008251, 17.684990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.490799, 23.908401, 17.675011>,  <21.127441, 23.741983, 17.658379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.490799, 23.908401, 17.675011> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008179, 0.117105, -0.993086,
		-0.418035, 0.901773, 0.109780,
		0.908394, 0.416043, 0.041578,
		21.763317, 24.033215, 17.687485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.134106, 24.352455, 17.154428>,  <21.127441, 23.741983, 17.658379>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.134106, 24.352455, 17.154428> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.510986, 24.230305, 17.209568>,  <21.737114, 24.157015, 17.242651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.510986, 24.230305, 17.209568>,  <21.134106, 24.352455, 17.154428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.510986, 24.230305, 17.209568> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170292, 0.082150, -0.981963,
		0.288542, 0.948682, 0.129405,
		0.942202, -0.305375, 0.137850,
		21.793648, 24.138693, 17.250923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.423866, 24.639343, 16.611528>,  <21.134106, 24.352455, 17.154428>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.423866, 24.639343, 16.611528> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.733543, 24.420223, 16.738359>,  <21.919350, 24.288752, 16.814459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.733543, 24.420223, 16.738359>,  <21.423866, 24.639343, 16.611528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.733543, 24.420223, 16.738359> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409893, 0.052195, -0.910639,
		0.482296, 0.834981, 0.264948,
		0.774195, -0.547798, 0.317079,
		21.965801, 24.255884, 16.833483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.061016, 25.018684, 16.379396>,  <21.423866, 24.639343, 16.611528>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.061016, 25.018684, 16.379396> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.108902, 24.623852, 16.421993>,  <22.137632, 24.386951, 16.447552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.108902, 24.623852, 16.421993>,  <22.061016, 25.018684, 16.379396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.108902, 24.623852, 16.421993> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350753, -0.058295, -0.934652,
		0.928785, 0.149242, 0.339243,
		0.119713, -0.987081, 0.106491,
		22.144815, 24.327728, 16.453941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.598049, 25.016182, 15.896095>,  <22.061016, 25.018684, 16.379396>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.598049, 25.016182, 15.896095> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.447235, 24.649891, 15.951652>,  <22.356747, 24.430117, 15.984985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.447235, 24.649891, 15.951652>,  <22.598049, 25.016182, 15.896095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.447235, 24.649891, 15.951652> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142216, -0.205418, -0.968286,
		0.915216, -0.345323, 0.207681,
		-0.377033, -0.915726, 0.138892,
		22.334126, 24.375174, 15.993320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.075642, 24.518593, 15.641073>,  <22.598049, 25.016182, 15.896095>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.075642, 24.518593, 15.641073> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.709557, 24.357407, 15.640698>,  <22.489904, 24.260695, 15.640473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.709557, 24.357407, 15.640698>,  <23.075642, 24.518593, 15.641073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.709557, 24.357407, 15.640698> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088273, -0.198214, -0.976176,
		0.393180, -0.893493, 0.216980,
		-0.915214, -0.402966, -0.000937,
		22.434992, 24.236517, 15.640417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<20.457008, 23.474222, 20.415354> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.427181, 23.076244, 20.388437>,  <20.409285, 22.837458, 20.372288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.427181, 23.076244, 20.388437>,  <20.457008, 23.474222, 20.415354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.427181, 23.076244, 20.388437> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570256, 0.097902, -0.815612,
		0.818075, -0.022446, -0.574673,
		-0.074569, -0.994943, -0.067291,
		20.404810, 22.777761, 20.368250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.748711, 23.211006, 19.773371>,  <20.457008, 23.474222, 20.415354>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.748711, 23.211006, 19.773371> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.471535, 22.945606, 19.886225>,  <20.305229, 22.786366, 19.953938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.471535, 22.945606, 19.886225>,  <20.748711, 23.211006, 19.773371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.471535, 22.945606, 19.886225> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407087, 0.037079, -0.912636,
		0.595074, -0.747255, -0.295797,
		-0.692940, -0.663502, 0.282133,
		20.263653, 22.746555, 19.970865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.695080, 22.761221, 19.142645>,  <20.748711, 23.211006, 19.773371>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.695080, 22.761221, 19.142645> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.373505, 22.671040, 19.362774>,  <20.180559, 22.616932, 19.494850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.373505, 22.671040, 19.362774>,  <20.695080, 22.761221, 19.142645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.373505, 22.671040, 19.362774> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556465, -0.041322, -0.829843,
		0.209832, -0.973377, -0.092237,
		-0.803938, -0.225454, 0.550321,
		20.132322, 22.603403, 19.527870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.508347, 22.089931, 18.853357>,  <20.695080, 22.761221, 19.142645>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.508347, 22.089931, 18.853357> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.187927, 22.268299, 19.013096>,  <19.995676, 22.375320, 19.108938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.187927, 22.268299, 19.013096>,  <20.508347, 22.089931, 18.853357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.187927, 22.268299, 19.013096> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508445, -0.154767, -0.847072,
		-0.315920, -0.881591, 0.350701,
		-0.801049, 0.445919, 0.399347,
		19.947613, 22.402075, 19.132900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.919189, 21.750397, 18.564066>,  <20.508347, 22.089931, 18.853357>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.919189, 21.750397, 18.564066> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.736961, 22.060486, 18.739103>,  <19.627625, 22.246540, 18.844126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.736961, 22.060486, 18.739103>,  <19.919189, 21.750397, 18.564066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.736961, 22.060486, 18.739103> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626852, 0.069662, -0.776018,
		-0.632070, -0.627836, 0.454214,
		-0.455571, 0.775222, 0.437591,
		19.600290, 22.293053, 18.870380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.249926, 21.693350, 18.325212>,  <19.919189, 21.750397, 18.564066>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.249926, 21.693350, 18.325212> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.289108, 22.067574, 18.460939>,  <19.312618, 22.292107, 18.542376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.289108, 22.067574, 18.460939>,  <19.249926, 21.693350, 18.325212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.289108, 22.067574, 18.460939> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506665, 0.340346, -0.792121,
		-0.856560, -0.094327, 0.507353,
		0.097957, 0.935557, 0.339319,
		19.318495, 22.348240, 18.562735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.587345, 22.029242, 18.289009>,  <19.249926, 21.693350, 18.325212>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.587345, 22.029242, 18.289009> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.860065, 22.321609, 18.301039>,  <19.023697, 22.497030, 18.308256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.860065, 22.321609, 18.301039>,  <18.587345, 22.029242, 18.289009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.860065, 22.321609, 18.301039> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495544, 0.491701, -0.716007,
		-0.538131, 0.473272, 0.697445,
		0.681800, 0.730920, 0.030073,
		19.064606, 22.540886, 18.310061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.174906, 22.561005, 18.310764>,  <18.587345, 22.029242, 18.289009>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.174906, 22.561005, 18.310764> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.512947, 22.725048, 18.173586>,  <18.715771, 22.823475, 18.091278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.512947, 22.725048, 18.173586>,  <18.174906, 22.561005, 18.310764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.512947, 22.725048, 18.173586> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520018, 0.481770, -0.705322,
		-0.124038, 0.774408, 0.620409,
		0.845101, 0.410111, -0.342948,
		18.766478, 22.848082, 18.070702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.977114, 23.200317, 18.163252>,  <18.174906, 22.561005, 18.310764>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.977114, 23.200317, 18.163252> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.323109, 23.149269, 17.969135>,  <18.530706, 23.118639, 17.852665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.323109, 23.149269, 17.969135>,  <17.977114, 23.200317, 18.163252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.323109, 23.149269, 17.969135> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341872, 0.558051, -0.756111,
		0.367315, 0.819934, 0.439076,
		0.864988, -0.127622, -0.485293,
		18.582605, 23.110983, 17.823547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.273657, 23.858988, 17.923351>,  <17.977114, 23.200317, 18.163252>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.273657, 23.858988, 17.923351> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.400848, 23.570179, 17.677565>,  <18.477163, 23.396893, 17.530092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.400848, 23.570179, 17.677565>,  <18.273657, 23.858988, 17.923351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.400848, 23.570179, 17.677565> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352521, 0.511602, -0.783577,
		0.880124, 0.465773, -0.091850,
		0.317979, -0.722024, -0.614468,
		18.496243, 23.353571, 17.493225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.511595, 24.199196, 17.326851>,  <18.273657, 23.858988, 17.923351>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.511595, 24.199196, 17.326851> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.504154, 23.826694, 17.181293>,  <18.499689, 23.603193, 17.093960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.504154, 23.826694, 17.181293>,  <18.511595, 24.199196, 17.326851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.504154, 23.826694, 17.181293> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305495, 0.351844, -0.884804,
		0.952012, 0.094708, -0.291039,
		-0.018602, -0.931255, -0.363893,
		18.498573, 23.547318, 17.072126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.692957, 24.238281, 16.647833>,  <18.511595, 24.199196, 17.326851>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.692957, 24.238281, 16.647833> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.493839, 23.891464, 16.639492>,  <18.374369, 23.683374, 16.634487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.493839, 23.891464, 16.639492>,  <18.692957, 24.238281, 16.647833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.493839, 23.891464, 16.639492> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311808, 0.201350, -0.928566,
		0.809306, -0.455734, -0.370582,
		-0.497795, -0.867044, -0.020852,
		18.344501, 23.631351, 16.633236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.263327, 24.687067, 16.320757>,  <18.692957, 24.238281, 16.647833>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.263327, 24.687067, 16.320757> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.367741, 25.070934, 16.278996>,  <19.430389, 25.301254, 16.253939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.367741, 25.070934, 16.278996>,  <19.263327, 24.687067, 16.320757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.367741, 25.070934, 16.278996> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189587, 0.055082, 0.980318,
		0.946529, -0.275692, -0.167562,
		0.261036, 0.959667, -0.104404,
		19.446053, 25.358833, 16.247675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.888958, 24.777594, 16.591816>,  <19.263327, 24.687067, 16.320757>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.888958, 24.777594, 16.591816> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.737629, 25.147858, 16.589600>,  <19.646832, 25.370016, 16.588270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.737629, 25.147858, 16.589600>,  <19.888958, 24.777594, 16.591816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.737629, 25.147858, 16.589600> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156816, 0.069986, 0.985145,
		0.912295, 0.371832, -0.171635,
		-0.378320, 0.925658, -0.005539,
		19.624132, 25.425554, 16.587938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.337851, 25.225378, 17.106485>,  <19.888958, 24.777594, 16.591816>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.337851, 25.225378, 17.106485> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.016415, 25.456764, 17.050455>,  <19.823553, 25.595596, 17.016838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.016415, 25.456764, 17.050455>,  <20.337851, 25.225378, 17.106485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.016415, 25.456764, 17.050455> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001715, 0.237596, 0.971362,
		0.595181, 0.780337, -0.191922,
		-0.803590, 0.578465, -0.140074,
		19.775337, 25.630304, 17.008432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.501406, 25.829775, 17.420454>,  <20.337851, 25.225378, 17.106485>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.501406, 25.829775, 17.420454> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.103104, 25.865143, 17.410210>,  <19.864122, 25.886364, 17.404062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.103104, 25.865143, 17.410210>,  <20.501406, 25.829775, 17.420454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.103104, 25.865143, 17.410210> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001452, 0.263095, 0.964769,
		0.092041, 0.960710, -0.261850,
		-0.995754, 0.088418, -0.025610,
		19.804377, 25.891668, 17.402527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.283411, 26.555315, 17.715826>,  <20.501406, 25.829775, 17.420454>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.283411, 26.555315, 17.715826> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.971622, 26.307339, 17.751829>,  <19.784550, 26.158552, 17.773432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.971622, 26.307339, 17.751829>,  <20.283411, 26.555315, 17.715826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.971622, 26.307339, 17.751829> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078079, 0.238709, 0.967947,
		-0.621555, 0.747457, -0.234471,
		-0.779469, -0.619940, 0.090010,
		19.737782, 26.121357, 17.778831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.720896, 26.974197, 18.071318>,  <20.283411, 26.555315, 17.715826>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.720896, 26.974197, 18.071318> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.613792, 26.593689, 18.132488>,  <19.549530, 26.365383, 18.169189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.613792, 26.593689, 18.132488>,  <19.720896, 26.974197, 18.071318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.613792, 26.593689, 18.132488> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274311, 0.076886, 0.958562,
		-0.923612, 0.298612, 0.240357,
		-0.267758, -0.951272, 0.152925,
		19.533464, 26.308308, 18.178366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.338577, 27.007414, 18.664661>,  <19.720896, 26.974197, 18.071318>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.338577, 27.007414, 18.664661> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.449699, 26.623688, 18.644520>,  <19.516373, 26.393452, 18.632435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.449699, 26.623688, 18.644520>,  <19.338577, 27.007414, 18.664661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.449699, 26.623688, 18.644520> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186998, 0.002588, 0.982357,
		-0.942261, -0.282319, 0.180109,
		0.277804, -0.959317, -0.050355,
		19.533041, 26.335892, 18.629414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.119810, 26.775221, 19.259550>,  <19.338577, 27.007414, 18.664661>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.119810, 26.775221, 19.259550> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.374798, 26.483559, 19.159981>,  <19.527790, 26.308561, 19.100239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.374798, 26.483559, 19.159981>,  <19.119810, 26.775221, 19.259550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.374798, 26.483559, 19.159981> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235546, -0.123177, 0.964026,
		-0.733586, -0.673171, 0.093228,
		0.637471, -0.729155, -0.248923,
		19.566040, 26.264812, 19.085304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.932791, 26.265331, 19.655817>,  <19.119810, 26.775221, 19.259550>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.932791, 26.265331, 19.655817> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.312992, 26.191280, 19.556002>,  <19.541113, 26.146851, 19.496113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.312992, 26.191280, 19.556002>,  <18.932791, 26.265331, 19.655817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.312992, 26.191280, 19.556002> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233352, -0.104963, 0.966711,
		-0.205159, -0.977093, -0.056568,
		0.950503, -0.185129, -0.249541,
		19.598143, 26.135742, 19.481140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.967598, 25.601316, 19.952009>,  <18.932791, 26.265331, 19.655817>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.967598, 25.601316, 19.952009> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.331509, 25.758362, 19.898106>,  <19.549854, 25.852589, 19.865765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.331509, 25.758362, 19.898106>,  <18.967598, 25.601316, 19.952009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.331509, 25.758362, 19.898106> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263368, -0.295037, 0.918472,
		0.320848, -0.871095, -0.371820,
		0.909777, 0.392616, -0.134757,
		19.604443, 25.876146, 19.857679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.322050, 24.987078, 20.169645>,  <18.967598, 25.601316, 19.952009>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.322050, 24.987078, 20.169645> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.585808, 25.283615, 20.219620>,  <19.744062, 25.461538, 20.249603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.585808, 25.283615, 20.219620>,  <19.322050, 24.987078, 20.169645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.585808, 25.283615, 20.219620> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170255, -0.309116, 0.935660,
		0.732267, -0.595696, -0.330047,
		0.659392, 0.741345, 0.124935,
		19.783625, 25.506020, 20.257101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.885391, 24.657166, 20.642870>,  <19.322050, 24.987078, 20.169645>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.885391, 24.657166, 20.642870> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.970047, 25.048100, 20.644791>,  <20.020842, 25.282660, 20.645943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.970047, 25.048100, 20.644791>,  <19.885391, 24.657166, 20.642870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.970047, 25.048100, 20.644791> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326575, -0.075347, 0.942163,
		0.921171, -0.197832, -0.335120,
		0.211641, 0.977336, 0.004800,
		20.033539, 25.341301, 20.646231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.546818, 24.715773, 20.892134>,  <19.885391, 24.657166, 20.642870>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.546818, 24.715773, 20.892134> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.375568, 25.068745, 20.970137>,  <20.272820, 25.280527, 21.016939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.375568, 25.068745, 20.970137>,  <20.546818, 24.715773, 20.892134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.375568, 25.068745, 20.970137> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330461, -0.047977, 0.942600,
		0.841134, 0.467990, -0.271069,
		-0.428122, 0.882430, 0.195007,
		20.247131, 25.333473, 21.028639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.061035, 25.100019, 21.145283>,  <20.546818, 24.715773, 20.892134>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.061035, 25.100019, 21.145283> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.730316, 25.292439, 21.261902>,  <20.531885, 25.407890, 21.331873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.730316, 25.292439, 21.261902>,  <21.061035, 25.100019, 21.145283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.730316, 25.292439, 21.261902> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398280, 0.134641, 0.907328,
		0.397215, 0.866293, -0.302913,
		-0.826797, 0.481048, 0.291546,
		20.482277, 25.436752, 21.349365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.901865, 25.590191, 20.610014>,  <21.061035, 25.100019, 21.145283>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.901865, 25.590191, 20.610014> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.195454, 25.340397, 20.716824>,  <21.371607, 25.190519, 20.780909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.195454, 25.340397, 20.716824>,  <20.901865, 25.590191, 20.610014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.195454, 25.340397, 20.716824> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206110, -0.169811, -0.963682,
		0.647150, 0.762351, 0.004076,
		0.733972, -0.624487, 0.267022,
		21.415646, 25.153051, 20.796930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.514662, 25.754057, 20.222929>,  <20.901865, 25.590191, 20.610014>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.514662, 25.754057, 20.222929> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.549522, 25.370316, 20.330292>,  <21.570438, 25.140070, 20.394711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.549522, 25.370316, 20.330292>,  <21.514662, 25.754057, 20.222929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.549522, 25.370316, 20.330292> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301118, -0.231462, -0.925069,
		0.949596, 0.161444, 0.268707,
		0.087151, -0.959354, 0.268409,
		21.575668, 25.082510, 20.410814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.136364, 25.544748, 20.014233>,  <21.514662, 25.754057, 20.222929>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.136364, 25.544748, 20.014233> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.935223, 25.200901, 20.050444>,  <21.814537, 24.994593, 20.072170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.935223, 25.200901, 20.050444>,  <22.136364, 25.544748, 20.014233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.935223, 25.200901, 20.050444> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288731, -0.265764, -0.919785,
		0.814722, -0.436380, 0.381839,
		-0.502855, -0.859617, 0.090527,
		21.784367, 24.943016, 20.077602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.585230, 25.046469, 19.680382>,  <22.136364, 25.544748, 20.014233>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.585230, 25.046469, 19.680382> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.236919, 24.850456, 19.696482>,  <22.027933, 24.732849, 19.706142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.236919, 24.850456, 19.696482>,  <22.585230, 25.046469, 19.680382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.236919, 24.850456, 19.696482> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210947, -0.446286, -0.869672,
		0.444129, -0.748799, 0.491986,
		-0.870776, -0.490030, 0.040252,
		21.975687, 24.703447, 19.708557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.819172, 24.301178, 19.435196>,  <22.585230, 25.046469, 19.680382>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.819172, 24.301178, 19.435196> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.428242, 24.364044, 19.378443>,  <22.193684, 24.401764, 19.344391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.428242, 24.364044, 19.378443>,  <22.819172, 24.301178, 19.435196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.428242, 24.364044, 19.378443> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061448, -0.430720, -0.900391,
		-0.202618, -0.888696, 0.411298,
		-0.977328, 0.157162, -0.141881,
		22.135044, 24.411194, 19.335878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.637302, 23.735449, 19.146105>,  <22.819172, 24.301178, 19.435196>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.637302, 23.735449, 19.146105> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.342522, 23.985573, 19.043430>,  <22.165653, 24.135647, 18.981825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.342522, 23.985573, 19.043430>,  <22.637302, 23.735449, 19.146105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.342522, 23.985573, 19.043430> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149314, -0.219767, -0.964058,
		-0.659247, -0.748792, 0.068590,
		-0.736952, 0.625311, -0.256686,
		22.121435, 24.173166, 18.966425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.106941, 23.285532, 18.771372>,  <22.637302, 23.735449, 19.146105>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.106941, 23.285532, 18.771372> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.069542, 23.670631, 18.669886>,  <22.047102, 23.901691, 18.608994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.069542, 23.670631, 18.669886>,  <22.106941, 23.285532, 18.771372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.069542, 23.670631, 18.669886> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031758, -0.257588, -0.965733,
		-0.995113, -0.082238, 0.054660,
		-0.093500, 0.962749, -0.253717,
		22.041492, 23.959455, 18.593771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.584417, 22.688084, 18.584129>,  <22.106941, 23.285532, 18.771372>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.584417, 22.688084, 18.584129> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.866875, 22.405365, 18.601086>,  <22.036350, 22.235733, 18.611259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.866875, 22.405365, 18.601086>,  <21.584417, 22.688084, 18.584129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.866875, 22.405365, 18.601086> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147985, -0.088771, 0.984998,
		-0.692431, -0.701824, -0.167281,
		0.706144, -0.706798, 0.042391,
		22.078718, 22.193325, 18.613804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.264973, 22.193218, 18.974403>,  <21.584417, 22.688084, 18.584129>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.264973, 22.193218, 18.974403> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.658482, 22.122059, 18.983719>,  <21.894587, 22.079363, 18.989309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.658482, 22.122059, 18.983719>,  <21.264973, 22.193218, 18.974403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.658482, 22.122059, 18.983719> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048476, -0.138573, 0.989165,
		-0.172747, -0.974243, -0.144948,
		0.983773, -0.177902, 0.023290,
		21.953613, 22.068689, 18.990705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.423077, 21.507685, 19.374805>,  <21.264973, 22.193218, 18.974403>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.423077, 21.507685, 19.374805> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.762302, 21.719456, 19.383663>,  <21.965837, 21.846518, 19.388977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.762302, 21.719456, 19.383663>,  <21.423077, 21.507685, 19.374805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.762302, 21.719456, 19.383663> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058309, -0.134778, 0.989159,
		0.526672, -0.837581, -0.145171,
		0.848067, 0.529427, 0.022145,
		22.016722, 21.878284, 19.390306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.787031, 21.193504, 19.802666>,  <21.423077, 21.507685, 19.374805>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.787031, 21.193504, 19.802666> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.988045, 21.539272, 19.796534>,  <22.108654, 21.746733, 19.792854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.988045, 21.539272, 19.796534>,  <21.787031, 21.193504, 19.802666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.988045, 21.539272, 19.796534> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139234, -0.063416, 0.988227,
		0.853272, -0.498753, -0.152225,
		0.502535, 0.864421, -0.015333,
		22.138805, 21.798599, 19.791933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.404654, 21.125799, 20.291473>,  <21.787031, 21.193504, 19.802666>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.404654, 21.125799, 20.291473> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.341312, 21.518341, 20.247906>,  <22.303307, 21.753866, 20.221766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.341312, 21.518341, 20.247906>,  <22.404654, 21.125799, 20.291473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.341312, 21.518341, 20.247906> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192473, 0.138877, 0.971425,
		0.968441, 0.132866, -0.210876,
		-0.158355, 0.981356, -0.108921,
		22.293806, 21.812748, 20.215229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.005377, 21.526276, 20.605501>,  <22.404654, 21.125799, 20.291473>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.005377, 21.526276, 20.605501> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.690269, 21.771282, 20.579443>,  <22.501205, 21.918285, 20.563808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.690269, 21.771282, 20.579443>,  <23.005377, 21.526276, 20.605501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.690269, 21.771282, 20.579443> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134002, 0.273646, 0.952450,
		0.601217, 0.741582, -0.297648,
		-0.787770, 0.612515, -0.065147,
		22.453938, 21.955036, 20.559898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.208811, 22.143751, 20.951618>,  <23.005377, 21.526276, 20.605501>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.208811, 22.143751, 20.951618> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.810303, 22.159985, 20.982082>,  <22.571198, 22.169725, 21.000360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.810303, 22.159985, 20.982082>,  <23.208811, 22.143751, 20.951618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.810303, 22.159985, 20.982082> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080736, 0.126530, 0.988672,
		0.030489, 0.991132, -0.129334,
		-0.996269, 0.040586, 0.076162,
		22.511421, 22.172161, 21.004930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.100765, 22.617798, 21.461914>,  <23.208811, 22.143751, 20.951618>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.100765, 22.617798, 21.461914> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.739731, 22.451492, 21.417223>,  <22.523111, 22.351709, 21.390409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.739731, 22.451492, 21.417223>,  <23.100765, 22.617798, 21.461914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.739731, 22.451492, 21.417223> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202675, 0.181396, 0.962299,
		-0.379821, 0.891200, -0.247989,
		-0.902585, -0.415762, -0.111726,
		22.468956, 22.326763, 21.383705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.597847, 23.169252, 21.661510>,  <23.100765, 22.617798, 21.461914>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.597847, 23.169252, 21.661510> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.414482, 22.817741, 21.714588>,  <22.304464, 22.606834, 21.746435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.414482, 22.817741, 21.714588>,  <22.597847, 23.169252, 21.661510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.414482, 22.817741, 21.714588> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321489, 0.303158, 0.897073,
		-0.828556, 0.368569, -0.421489,
		-0.458410, -0.878779, 0.132692,
		22.276958, 22.554108, 21.754396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<18.126879, 20.099571, 6.353021> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.859154, 19.953907, 6.612068>,  <17.698519, 19.866508, 6.767497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.859154, 19.953907, 6.612068>,  <18.126879, 20.099571, 6.353021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.859154, 19.953907, 6.612068> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556907, 0.331083, 0.761734,
		-0.491808, 0.870501, -0.018795,
		-0.669313, -0.364160, 0.647617,
		17.658360, 19.844660, 6.806354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.984375, 20.575306, 6.971074>,  <18.126879, 20.099571, 6.353021>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.984375, 20.575306, 6.971074> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.845303, 20.231251, 7.120357>,  <17.761860, 20.024818, 7.209926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.845303, 20.231251, 7.120357>,  <17.984375, 20.575306, 6.971074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.845303, 20.231251, 7.120357> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428201, 0.208444, 0.879315,
		-0.834124, 0.465527, 0.295840,
		-0.347679, -0.860137, 0.373207,
		17.740999, 19.973209, 7.232319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.610861, 20.752014, 7.610609>,  <17.984375, 20.575306, 6.971074>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.610861, 20.752014, 7.610609> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.706352, 20.364700, 7.640098>,  <17.763647, 20.132313, 7.657791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.706352, 20.364700, 7.640098>,  <17.610861, 20.752014, 7.610609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.706352, 20.364700, 7.640098> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336100, 0.153610, 0.929215,
		-0.911069, -0.197050, 0.362111,
		0.238726, -0.968285, 0.073721,
		17.777969, 20.074215, 7.662214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.320501, 20.544872, 8.302599>,  <17.610861, 20.752014, 7.610609>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.320501, 20.544872, 8.302599> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.596428, 20.272480, 8.204278>,  <17.761984, 20.109045, 8.145286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.596428, 20.272480, 8.204278>,  <17.320501, 20.544872, 8.302599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.596428, 20.272480, 8.204278> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419895, 0.099736, 0.902076,
		-0.589780, -0.725479, 0.354739,
		0.689817, -0.680979, -0.245803,
		17.803373, 20.068186, 8.130537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.419422, 20.029846, 8.839581>,  <17.320501, 20.544872, 8.302599>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.419422, 20.029846, 8.839581> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.754379, 20.025200, 8.620988>,  <17.955353, 20.022411, 8.489833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.754379, 20.025200, 8.620988>,  <17.419422, 20.029846, 8.839581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.754379, 20.025200, 8.620988> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541787, 0.150087, 0.827007,
		0.072413, -0.988604, 0.131975,
		0.837391, -0.011616, -0.546481,
		18.005596, 20.021715, 8.457044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.784082, 19.756008, 9.300200>,  <17.419422, 20.029846, 8.839581>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.784082, 19.756008, 9.300200> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.035511, 19.926155, 9.039751>,  <18.186369, 20.028244, 8.883482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.035511, 19.926155, 9.039751>,  <17.784082, 19.756008, 9.300200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.035511, 19.926155, 9.039751> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654060, 0.163888, 0.738476,
		0.420836, -0.890057, -0.175203,
		0.628572, 0.425371, -0.651120,
		18.224083, 20.053766, 8.844415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.329964, 19.513252, 9.491354>,  <17.784082, 19.756008, 9.300200>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.329964, 19.513252, 9.491354> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.466145, 19.825226, 9.281290>,  <18.547853, 20.012409, 9.155252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.466145, 19.825226, 9.281290>,  <18.329964, 19.513252, 9.491354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.466145, 19.825226, 9.281290> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761799, 0.098581, 0.640270,
		0.551139, -0.618049, -0.560591,
		0.340454, 0.779935, -0.525160,
		18.568281, 20.059206, 9.123742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.993952, 19.352884, 9.443748>,  <18.329964, 19.513252, 9.491354>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.993952, 19.352884, 9.443748> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.927124, 19.741402, 9.376006>,  <18.887028, 19.974512, 9.335361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.927124, 19.741402, 9.376006>,  <18.993952, 19.352884, 9.443748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.927124, 19.741402, 9.376006> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766290, 0.236002, 0.597581,
		0.620393, -0.029935, -0.783720,
		-0.167071, 0.971291, -0.169353,
		18.877003, 20.032789, 9.325200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.626026, 19.682961, 9.266348>,  <18.993952, 19.352884, 9.443748>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.626026, 19.682961, 9.266348> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.399635, 19.984970, 9.398775>,  <19.263802, 20.166176, 9.478231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.399635, 19.984970, 9.398775>,  <19.626026, 19.682961, 9.266348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.399635, 19.984970, 9.398775> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648062, 0.159233, 0.744755,
		0.509592, 0.636067, -0.579426,
		-0.565978, 0.755026, 0.331067,
		19.229841, 20.211477, 9.498096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.104679, 20.260529, 9.382408>,  <19.626026, 19.682961, 9.266348>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.104679, 20.260529, 9.382408> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.789730, 20.317020, 9.622442>,  <19.600761, 20.350916, 9.766462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.789730, 20.317020, 9.622442>,  <20.104679, 20.260529, 9.382408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.789730, 20.317020, 9.622442> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614285, 0.097661, 0.783018,
		0.051982, 0.985148, -0.163651,
		-0.787371, 0.141231, 0.600084,
		19.553518, 20.359390, 9.802467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.249702, 20.852583, 9.794380>,  <20.104679, 20.260529, 9.382408>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.249702, 20.852583, 9.794380> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.954041, 20.663158, 9.985961>,  <19.776644, 20.549503, 10.100909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.954041, 20.663158, 9.985961>,  <20.249702, 20.852583, 9.794380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.954041, 20.663158, 9.985961> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496649, 0.097130, 0.862500,
		-0.454966, 0.875390, 0.163399,
		-0.739152, -0.473559, 0.478952,
		19.732294, 20.521091, 10.129646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.248268, 21.156467, 10.367649>,  <20.249702, 20.852583, 9.794380>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.248268, 21.156467, 10.367649> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.071613, 20.807953, 10.453273>,  <19.965620, 20.598845, 10.504647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.071613, 20.807953, 10.453273>,  <20.248268, 21.156467, 10.367649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.071613, 20.807953, 10.453273> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423508, 0.007888, 0.905858,
		-0.790949, 0.490715, 0.365512,
		-0.441635, -0.871285, 0.214060,
		19.939123, 20.546568, 10.517491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.060911, 21.880644, 10.329336>,  <20.248268, 21.156467, 10.367649>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.060911, 21.880644, 10.329336> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.377277, 22.119434, 10.275570>,  <20.567097, 22.262709, 10.243310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.377277, 22.119434, 10.275570>,  <20.060911, 21.880644, 10.329336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.377277, 22.119434, 10.275570> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245176, 0.107895, -0.963456,
		-0.560659, 0.794970, 0.231700,
		0.790918, 0.596977, -0.134415,
		20.614553, 22.298527, 10.235246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.788055, 22.482658, 9.938162>,  <20.060911, 21.880644, 10.329336>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.788055, 22.482658, 9.938162> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.182259, 22.474785, 9.870772>,  <20.418781, 22.470060, 9.830338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.182259, 22.474785, 9.870772>,  <19.788055, 22.482658, 9.938162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.182259, 22.474785, 9.870772> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166196, 0.086500, -0.982292,
		0.033909, 0.996057, 0.081975,
		0.985510, -0.019684, -0.168474,
		20.477911, 22.468880, 9.820230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.921946, 23.097300, 9.418964>,  <19.788055, 22.482658, 9.938162>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.921946, 23.097300, 9.418964> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.207035, 22.820717, 9.371780>,  <20.378088, 22.654768, 9.343470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.207035, 22.820717, 9.371780>,  <19.921946, 23.097300, 9.418964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.207035, 22.820717, 9.371780> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106469, 0.059578, -0.992529,
		0.693317, 0.719959, -0.031156,
		0.712724, -0.691455, -0.117960,
		20.420853, 22.613281, 9.336392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.274151, 23.343533, 8.789649>,  <19.921946, 23.097300, 9.418964>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.274151, 23.343533, 8.789649> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.383015, 22.962917, 8.846924>,  <20.448332, 22.734549, 8.881289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.383015, 22.962917, 8.846924>,  <20.274151, 23.343533, 8.789649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.383015, 22.962917, 8.846924> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005622, -0.147230, -0.989086,
		0.962236, 0.269992, -0.034720,
		0.272157, -0.951540, 0.143188,
		20.464663, 22.677456, 8.889880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.860411, 23.137848, 8.455667>,  <20.274151, 23.343533, 8.789649>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.860411, 23.137848, 8.455667> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.703140, 22.772789, 8.500360>,  <20.608778, 22.553753, 8.527176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.703140, 22.772789, 8.500360>,  <20.860411, 23.137848, 8.455667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.703140, 22.772789, 8.500360> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046775, -0.101510, -0.993734,
		0.918272, -0.395939, -0.002778,
		-0.393177, -0.912649, 0.111733,
		20.585188, 22.498995, 8.533879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.057501, 22.700218, 7.861900>,  <20.860411, 23.137848, 8.455667>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.057501, 22.700218, 7.861900> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.742428, 22.525009, 8.035193>,  <20.553383, 22.419884, 8.139170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.742428, 22.525009, 8.035193>,  <21.057501, 22.700218, 7.861900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.742428, 22.525009, 8.035193> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350721, -0.259328, -0.899858,
		0.506507, -0.860748, 0.050645,
		-0.787684, -0.438022, 0.433233,
		20.506123, 22.393602, 8.165163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.932373, 22.093493, 7.410423>,  <21.057501, 22.700218, 7.861900>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.932373, 22.093493, 7.410423> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.579826, 22.141903, 7.593091>,  <20.368299, 22.170950, 7.702692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.579826, 22.141903, 7.593091>,  <20.932373, 22.093493, 7.410423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.579826, 22.141903, 7.593091> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469674, -0.328832, -0.819314,
		0.051008, -0.936602, 0.346664,
		-0.881365, 0.121027, 0.456671,
		20.315416, 22.178211, 7.730092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.496029, 21.433214, 7.219871>,  <20.932373, 22.093493, 7.410423>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.496029, 21.433214, 7.219871> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.267582, 21.742214, 7.330914>,  <20.130514, 21.927614, 7.397539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.267582, 21.742214, 7.330914>,  <20.496029, 21.433214, 7.219871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.267582, 21.742214, 7.330914> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529769, -0.088541, -0.843508,
		-0.627031, -0.628811, 0.459814,
		-0.571119, 0.772501, 0.277606,
		20.096247, 21.973965, 7.414196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.713915, 21.190859, 7.176581>,  <20.496029, 21.433214, 7.219871>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.713915, 21.190859, 7.176581> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.656994, 21.586781, 7.174116>,  <19.622841, 21.824333, 7.172637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.656994, 21.586781, 7.174116>,  <19.713915, 21.190859, 7.176581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.656994, 21.586781, 7.174116> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530343, -0.081501, -0.843857,
		-0.835755, -0.116813, 0.536533,
		-0.142302, 0.989805, -0.006163,
		19.614304, 21.883722, 7.172267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.056604, 21.301699, 7.078453>,  <19.713915, 21.190859, 7.176581>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.056604, 21.301699, 7.078453> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.226879, 21.640850, 6.952030>,  <19.329044, 21.844341, 6.876176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.226879, 21.640850, 6.952030>,  <19.056604, 21.301699, 7.078453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.226879, 21.640850, 6.952030> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594263, -0.001444, -0.804269,
		-0.682379, 0.530188, 0.503249,
		0.425687, 0.847879, -0.316057,
		19.354586, 21.895214, 6.857213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.557562, 21.582935, 6.714448>,  <19.056604, 21.301699, 7.078453>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.557562, 21.582935, 6.714448> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.857338, 21.810749, 6.579410>,  <19.037203, 21.947437, 6.498386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.857338, 21.810749, 6.579410>,  <18.557562, 21.582935, 6.714448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.857338, 21.810749, 6.579410> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472011, 0.102051, -0.875666,
		-0.464270, 0.815608, 0.345307,
		0.749439, 0.569534, -0.337597,
		19.082170, 21.981609, 6.478131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.236254, 22.153372, 6.605458>,  <18.557562, 21.582935, 6.714448>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.236254, 22.153372, 6.605458> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.564777, 22.162369, 6.377441>,  <18.761892, 22.167767, 6.240632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.564777, 22.162369, 6.377441>,  <18.236254, 22.153372, 6.605458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.564777, 22.162369, 6.377441> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562737, 0.196061, -0.803049,
		0.093702, 0.980334, 0.173682,
		0.821308, 0.022491, -0.570041,
		18.811171, 22.169115, 6.206429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.169689, 22.658693, 6.203027>,  <18.236254, 22.153372, 6.605458>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.169689, 22.658693, 6.203027> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.462257, 22.471779, 6.004362>,  <18.637798, 22.359631, 5.885163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.462257, 22.471779, 6.004362>,  <18.169689, 22.658693, 6.203027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.462257, 22.471779, 6.004362> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494154, 0.138717, -0.858236,
		0.469936, 0.873157, -0.129450,
		0.731418, -0.467284, -0.496662,
		18.681683, 22.331594, 5.855363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.379305, 23.073120, 5.615775>,  <18.169689, 22.658693, 6.203027>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.379305, 23.073120, 5.615775> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.450130, 22.689377, 5.527882>,  <18.492626, 22.459131, 5.475145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.450130, 22.689377, 5.527882>,  <18.379305, 23.073120, 5.615775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.450130, 22.689377, 5.527882> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410839, 0.130833, -0.902272,
		0.894349, 0.250033, -0.370976,
		0.177062, -0.959357, -0.219734,
		18.503248, 22.401569, 5.461962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.717031, 23.813375, 5.817156>,  <18.379305, 23.073120, 5.615775>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.717031, 23.813375, 5.817156> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.462696, 23.947071, 5.538878>,  <18.310095, 24.027288, 5.371912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.462696, 23.947071, 5.538878>,  <18.717031, 23.813375, 5.817156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.462696, 23.947071, 5.538878> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310812, 0.714166, 0.627186,
		0.706472, 0.615020, -0.350210,
		-0.635840, 0.334240, -0.695695,
		18.271944, 24.047342, 5.330170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.810604, 24.530918, 5.529253>,  <18.717031, 23.813375, 5.817156>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.810604, 24.530918, 5.529253> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.430634, 24.409882, 5.560440>,  <18.202652, 24.337259, 5.579152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.430634, 24.409882, 5.560440>,  <18.810604, 24.530918, 5.529253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.430634, 24.409882, 5.560440> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107928, 0.551886, 0.826906,
		-0.293243, 0.777085, -0.556910,
		-0.949927, -0.302590, 0.077968,
		18.145655, 24.319105, 5.583830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.322395, 25.062971, 5.671277>,  <18.810604, 24.530918, 5.529253>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.322395, 25.062971, 5.671277> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.194241, 24.713486, 5.817687>,  <18.117348, 24.503794, 5.905533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.194241, 24.713486, 5.817687>,  <18.322395, 25.062971, 5.671277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.194241, 24.713486, 5.817687> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171923, 0.433609, 0.884548,
		-0.931554, 0.220471, -0.289135,
		-0.320388, -0.873714, 0.366026,
		18.098124, 24.451372, 5.927495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.790789, 25.168276, 6.034765>,  <18.322395, 25.062971, 5.671277>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.790789, 25.168276, 6.034765> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.955940, 24.838287, 6.189141>,  <18.055031, 24.640293, 6.281767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.955940, 24.838287, 6.189141>,  <17.790789, 25.168276, 6.034765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.955940, 24.838287, 6.189141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173974, 0.344505, 0.922523,
		-0.894015, -0.448036, -0.001285,
		0.412881, -0.824973, 0.385940,
		18.079805, 24.590796, 6.304923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.446507, 25.120834, 6.636730>,  <17.790789, 25.168276, 6.034765>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.446507, 25.120834, 6.636730> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.731087, 24.843727, 6.683907>,  <17.901834, 24.677462, 6.712212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.731087, 24.843727, 6.683907>,  <17.446507, 25.120834, 6.636730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.731087, 24.843727, 6.683907> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097490, 0.263506, 0.959719,
		-0.695942, -0.671294, 0.255009,
		0.711450, -0.692769, 0.117941,
		17.944521, 24.635897, 6.719289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.358006, 24.818380, 7.270418>,  <17.446507, 25.120834, 6.636730>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.358006, 24.818380, 7.270418> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.741344, 24.736401, 7.190853>,  <17.971348, 24.687214, 7.143114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.741344, 24.736401, 7.190853>,  <17.358006, 24.818380, 7.270418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.741344, 24.736401, 7.190853> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257299, 0.317249, 0.912771,
		-0.123966, -0.925932, 0.356768,
		0.958347, -0.204948, -0.198913,
		18.028849, 24.674915, 7.131179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.626060, 24.425413, 7.890116>,  <17.358006, 24.818380, 7.270418>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.626060, 24.425413, 7.890116> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.955704, 24.567730, 7.713817>,  <18.153490, 24.653120, 7.608037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.955704, 24.567730, 7.713817>,  <17.626060, 24.425413, 7.890116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.955704, 24.567730, 7.713817> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334042, 0.323133, 0.885438,
		0.457455, -0.876924, 0.147445,
		0.824106, 0.355795, -0.440749,
		18.202936, 24.674467, 7.581592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.239271, 24.111565, 8.182193>,  <17.626060, 24.425413, 7.890116>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.239271, 24.111565, 8.182193> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.399422, 24.449959, 8.041335>,  <18.495512, 24.652996, 7.956820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.399422, 24.449959, 8.041335>,  <18.239271, 24.111565, 8.182193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.399422, 24.449959, 8.041335> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455679, 0.149598, 0.877484,
		0.795020, -0.511787, -0.325603,
		0.400375, 0.845988, -0.352143,
		18.519535, 24.703754, 7.935692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.878469, 24.168547, 8.508694>,  <18.239271, 24.111565, 8.182193>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.878469, 24.168547, 8.508694> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.810402, 24.529743, 8.350883>,  <18.769562, 24.746462, 8.256198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.810402, 24.529743, 8.350883>,  <18.878469, 24.168547, 8.508694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.810402, 24.529743, 8.350883> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363229, 0.429652, 0.826719,
		0.916028, -0.002619, -0.401106,
		-0.170171, 0.902991, -0.394524,
		18.759350, 24.800640, 8.232526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.582952, 24.566252, 8.500198>,  <18.878469, 24.168547, 8.508694>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.582952, 24.566252, 8.500198> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.275780, 24.822414, 8.495141>,  <19.091476, 24.976112, 8.492106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.275780, 24.822414, 8.495141>,  <19.582952, 24.566252, 8.500198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.275780, 24.822414, 8.495141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412467, 0.509512, 0.755162,
		0.490051, 0.574699, -0.655417,
		-0.767933, 0.640405, -0.012643,
		19.045401, 25.014536, 8.491348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.825701, 25.233759, 8.683969>,  <19.582952, 24.566252, 8.500198>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.825701, 25.233759, 8.683969> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.433723, 25.254292, 8.760993>,  <19.198538, 25.266611, 8.807207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.433723, 25.254292, 8.760993>,  <19.825701, 25.233759, 8.683969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.433723, 25.254292, 8.760993> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193594, 0.474459, 0.858726,
		-0.047283, 0.878780, -0.474880,
		-0.979942, 0.051331, 0.192560,
		19.139740, 25.269691, 8.818761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.747145, 25.956589, 8.961576>,  <19.825701, 25.233759, 8.683969>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.747145, 25.956589, 8.961576> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.431942, 25.740452, 9.079609>,  <19.242821, 25.610769, 9.150429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.431942, 25.740452, 9.079609>,  <19.747145, 25.956589, 8.961576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.431942, 25.740452, 9.079609> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110097, 0.347888, 0.931049,
		-0.605740, 0.766163, -0.214649,
		-0.788009, -0.540341, 0.295081,
		19.195539, 25.578350, 9.168133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.374960, 26.394768, 9.471951>,  <19.747145, 25.956589, 8.961576>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.374960, 26.394768, 9.471951> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.232998, 26.025211, 9.529181>,  <19.147821, 25.803478, 9.563518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.232998, 26.025211, 9.529181>,  <19.374960, 26.394768, 9.471951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.232998, 26.025211, 9.529181> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099024, 0.189321, 0.976909,
		-0.929644, 0.332541, -0.158678,
		-0.354904, -0.923890, 0.143072,
		19.126526, 25.748045, 9.572102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.730013, 26.452456, 9.877732>,  <19.374960, 26.394768, 9.471951>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.730013, 26.452456, 9.877732> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.858555, 26.080494, 9.949298>,  <18.935680, 25.857317, 9.992237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.858555, 26.080494, 9.949298>,  <18.730013, 26.452456, 9.877732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.858555, 26.080494, 9.949298> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126479, 0.145093, 0.981301,
		-0.938474, -0.337975, -0.070987,
		0.321355, -0.929904, 0.178913,
		18.954962, 25.801523, 10.002972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.343641, 26.196821, 10.437228>,  <18.730013, 26.452456, 9.877732>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.343641, 26.196821, 10.437228> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.628994, 25.916710, 10.426707>,  <18.800205, 25.748642, 10.420395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.628994, 25.916710, 10.426707>,  <18.343641, 26.196821, 10.437228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.628994, 25.916710, 10.426707> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020073, -0.057938, 0.998119,
		-0.700487, -0.711513, -0.055389,
		0.713383, -0.700281, -0.026303,
		18.843008, 25.706625, 10.418817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.142088, 25.609047, 10.823041>,  <18.343641, 26.196821, 10.437228>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.142088, 25.609047, 10.823041> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.542065, 25.613377, 10.823727>,  <18.782051, 25.615974, 10.824138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.542065, 25.613377, 10.823727>,  <18.142088, 25.609047, 10.823041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.542065, 25.613377, 10.823727> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001446, -0.024717, 0.999694,
		0.010865, -0.999636, -0.024700,
		0.999940, 0.010826, 0.001714,
		18.842047, 25.616623, 10.824241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.277367, 25.271313, 11.372803>,  <18.142088, 25.609047, 10.823041>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.277367, 25.271313, 11.372803> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.628429, 25.452480, 11.310087>,  <18.839067, 25.561180, 11.272458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.628429, 25.452480, 11.310087>,  <18.277367, 25.271313, 11.372803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.628429, 25.452480, 11.310087> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189694, -0.027836, 0.981449,
		0.440151, -0.891118, -0.110346,
		0.877658, 0.452917, -0.156788,
		18.891727, 25.588356, 11.263051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.749712, 24.808838, 11.665673>,  <18.277367, 25.271313, 11.372803>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.749712, 24.808838, 11.665673> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.925396, 25.165859, 11.624801>,  <19.030807, 25.380072, 11.600277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.925396, 25.165859, 11.624801>,  <18.749712, 24.808838, 11.665673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.925396, 25.165859, 11.624801> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302642, -0.039907, 0.952269,
		0.845873, -0.449172, -0.287652,
		0.439211, 0.892554, -0.102183,
		19.057159, 25.433626, 11.594146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.414764, 24.681890, 11.868053>,  <18.749712, 24.808838, 11.665673>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.414764, 24.681890, 11.868053> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.311153, 25.062279, 11.935652>,  <19.248987, 25.290512, 11.976211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.311153, 25.062279, 11.935652>,  <19.414764, 24.681890, 11.868053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.311153, 25.062279, 11.935652> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302681, -0.086233, 0.949183,
		0.917218, 0.297017, -0.265504,
		-0.259028, 0.950970, 0.168996,
		19.233444, 25.347570, 11.986351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.907053, 24.855591, 12.397563>,  <19.414764, 24.681890, 11.868053>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.907053, 24.855591, 12.397563> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.662079, 25.170837, 12.422223>,  <19.515095, 25.359985, 12.437019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.662079, 25.170837, 12.422223>,  <19.907053, 24.855591, 12.397563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.662079, 25.170837, 12.422223> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122296, 0.017410, 0.992341,
		0.781005, 0.615283, -0.107046,
		-0.612434, 0.788114, 0.061649,
		19.478348, 25.407272, 12.440718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.202715, 25.256433, 12.850555>,  <19.907053, 24.855591, 12.397563>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.202715, 25.256433, 12.850555> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.850441, 25.445656, 12.860472>,  <19.639076, 25.559189, 12.866422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.850441, 25.445656, 12.860472>,  <20.202715, 25.256433, 12.850555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.850441, 25.445656, 12.860472> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142123, 0.213941, 0.966452,
		0.451880, 0.854663, -0.255646,
		-0.880684, 0.473054, 0.024792,
		19.586235, 25.587572, 12.867909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.339293, 25.813253, 13.331870>,  <20.202715, 25.256433, 12.850555>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.339293, 25.813253, 13.331870> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.943550, 25.755116, 13.334728>,  <19.706104, 25.720232, 13.336443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.943550, 25.755116, 13.334728>,  <20.339293, 25.813253, 13.331870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.943550, 25.755116, 13.334728> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029229, 0.246585, 0.968680,
		-0.142554, 0.958160, -0.248209,
		-0.989355, -0.145344, 0.007146,
		19.646744, 25.711512, 13.336872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.022047, 26.351913, 13.738839>,  <20.339293, 25.813253, 13.331870>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.022047, 26.351913, 13.738839> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.734795, 26.073597, 13.743918>,  <19.562443, 25.906607, 13.746966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.734795, 26.073597, 13.743918>,  <20.022047, 26.351913, 13.738839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.734795, 26.073597, 13.743918> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173446, 0.196628, 0.965015,
		-0.673947, 0.690805, -0.261887,
		-0.718131, -0.695792, 0.012699,
		19.519356, 25.864859, 13.747728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.466429, 26.646406, 13.995288>,  <20.022047, 26.351913, 13.738839>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.466429, 26.646406, 13.995288> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.408329, 26.256741, 14.064466>,  <19.373468, 26.022942, 14.105972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.408329, 26.256741, 14.064466>,  <19.466429, 26.646406, 13.995288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.408329, 26.256741, 14.064466> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032504, 0.179403, 0.983239,
		-0.988861, 0.137195, -0.057723,
		-0.145251, -0.974162, 0.172945,
		19.364754, 25.964493, 14.116349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.969078, 26.574263, 14.597939>,  <19.466429, 26.646406, 13.995288>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.969078, 26.574263, 14.597939> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.148716, 26.216881, 14.600959>,  <19.256498, 26.002453, 14.602771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.148716, 26.216881, 14.600959>,  <18.969078, 26.574263, 14.597939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.148716, 26.216881, 14.600959> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018300, 0.017644, 0.999677,
		-0.893297, -0.448811, 0.024274,
		0.449094, -0.893452, 0.007548,
		19.283443, 25.948845, 14.603223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.615658, 26.105064, 15.083834>,  <18.969078, 26.574263, 14.597939>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.615658, 26.105064, 15.083834> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.981503, 25.946671, 15.051150>,  <19.201010, 25.851633, 15.031541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.981503, 25.946671, 15.051150>,  <18.615658, 26.105064, 15.083834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.981503, 25.946671, 15.051150> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038086, -0.285561, 0.957604,
		-0.402532, -0.872725, -0.276259,
		0.914613, -0.395988, -0.081708,
		19.255886, 25.827875, 15.026638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.554199, 25.448898, 15.470791>,  <18.615658, 26.105064, 15.083834>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.554199, 25.448898, 15.470791> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.941391, 25.539848, 15.428239>,  <19.173706, 25.594419, 15.402707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.941391, 25.539848, 15.428239>,  <18.554199, 25.448898, 15.470791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.941391, 25.539848, 15.428239> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132557, -0.103101, 0.985799,
		0.213180, -0.968334, -0.129940,
		0.967979, 0.227377, -0.106381,
		19.231785, 25.608061, 15.396325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.810375, 24.919664, 15.811420>,  <18.554199, 25.448898, 15.470791>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.810375, 24.919664, 15.811420> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.089806, 25.205856, 15.814996>,  <19.257463, 25.377571, 15.817141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.089806, 25.205856, 15.814996>,  <18.810375, 24.919664, 15.811420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.089806, 25.205856, 15.814996> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205919, -0.212985, 0.955110,
		0.685266, -0.665376, -0.296117,
		0.698576, 0.715481, 0.008938,
		19.299377, 25.420500, 15.817677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.733963, 24.071253, 15.973071>,  <18.810375, 24.919664, 15.811420>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.733963, 24.071253, 15.973071> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.451065, 23.818340, 16.099579>,  <18.281326, 23.666592, 16.175484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.451065, 23.818340, 16.099579>,  <18.733963, 24.071253, 15.973071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.451065, 23.818340, 16.099579> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454993, 0.064682, -0.888143,
		0.541100, -0.772033, -0.333429,
		-0.707243, -0.632282, 0.316270,
		18.238892, 23.628656, 16.194460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.676111, 23.506893, 15.469777>,  <18.733963, 24.071253, 15.973071>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.676111, 23.506893, 15.469777> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.322151, 23.491364, 15.655440>,  <18.109776, 23.482046, 15.766838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.322151, 23.491364, 15.655440>,  <18.676111, 23.506893, 15.469777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.322151, 23.491364, 15.655440> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450372, -0.182875, -0.873912,
		0.118811, -0.982369, 0.144341,
		-0.884900, -0.038823, 0.464159,
		18.056681, 23.479717, 15.794688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.382372, 22.808046, 15.449524>,  <18.676111, 23.506893, 15.469777>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.382372, 22.808046, 15.449524> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.080402, 23.064293, 15.505672>,  <17.899221, 23.218040, 15.539360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.080402, 23.064293, 15.505672>,  <18.382372, 22.808046, 15.449524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.080402, 23.064293, 15.505672> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383363, -0.257411, -0.887002,
		-0.532094, -0.723431, 0.439913,
		-0.754923, 0.640615, 0.140370,
		17.853926, 23.256477, 15.547783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.698402, 22.393564, 15.470263>,  <18.382372, 22.808046, 15.449524>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.698402, 22.393564, 15.470263> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.607613, 22.769768, 15.369126>,  <17.553139, 22.995489, 15.308444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.607613, 22.769768, 15.369126>,  <17.698402, 22.393564, 15.470263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.607613, 22.769768, 15.369126> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492086, -0.334792, -0.803595,
		-0.840436, -0.057977, 0.538800,
		-0.226976, 0.940507, -0.252841,
		17.539520, 23.051920, 15.293274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.999729, 22.413338, 15.287925>,  <17.698402, 22.393564, 15.470263>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.999729, 22.413338, 15.287925> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.129398, 22.741467, 15.099465>,  <17.207199, 22.938345, 14.986389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.129398, 22.741467, 15.099465>,  <16.999729, 22.413338, 15.287925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.129398, 22.741467, 15.099465> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377994, -0.344236, -0.859431,
		-0.867199, 0.456695, 0.198486,
		0.324172, 0.820324, -0.471149,
		17.226650, 22.987564, 14.958120>
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
