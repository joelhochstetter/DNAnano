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
	<22.556648, 17.397661, -1.923452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.693115, 17.143501, -1.646361>,  <22.774996, 16.991005, -1.480106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.693115, 17.143501, -1.646361>,  <22.556648, 17.397661, -1.923452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.693115, 17.143501, -1.646361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934989, 0.305390, -0.180367,
		-0.096948, 0.709229, 0.698280,
		0.341170, -0.635398, 0.692728,
		22.795465, 16.952883, -1.438542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.643484, 17.697287, -1.291340>,  <22.556648, 17.397661, -1.923452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.643484, 17.697287, -1.291340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.041355, 17.657921, -1.303547>,  <23.280077, 17.634300, -1.310871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.041355, 17.657921, -1.303547>,  <22.643484, 17.697287, -1.291340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.041355, 17.657921, -1.303547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059100, 0.302307, 0.951377,
		-0.084407, -0.948116, 0.306514,
		0.994677, -0.098418, -0.030517,
		23.339758, 17.628395, -1.312702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.819983, 17.580505, -0.588902>,  <22.643484, 17.697287, -1.291340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.819983, 17.580505, -0.588902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.167381, 17.674267, -0.763611>,  <23.375820, 17.730524, -0.868437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.167381, 17.674267, -0.763611>,  <22.819983, 17.580505, -0.588902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.167381, 17.674267, -0.763611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319949, 0.407928, 0.855119,
		0.378607, -0.882413, 0.279290,
		0.868498, 0.234396, -0.436771,
		23.427931, 17.744587, -0.894643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.445282, 17.425850, -0.177385>,  <22.819983, 17.580505, -0.588902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.445282, 17.425850, -0.177385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.499046, 17.748386, -0.407776>,  <23.531305, 17.941908, -0.546010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.499046, 17.748386, -0.407776>,  <23.445282, 17.425850, -0.177385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.499046, 17.748386, -0.407776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245105, 0.536136, 0.807763,
		0.960134, -0.249748, -0.125574,
		0.134412, 0.806340, -0.575977,
		23.539370, 17.990288, -0.580569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.189196, 17.800900, -0.099704>,  <23.445282, 17.425850, -0.177385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.189196, 17.800900, -0.099704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.885406, 18.045361, -0.188872>,  <23.703133, 18.192038, -0.242373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.885406, 18.045361, -0.188872>,  <24.189196, 17.800900, -0.099704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.885406, 18.045361, -0.188872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180540, 0.527220, 0.830328,
		0.624985, 0.590366, -0.510746,
		-0.759473, 0.611152, -0.222920,
		23.657564, 18.228706, -0.255748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.525311, 18.408880, -0.184936>,  <24.189196, 17.800900, -0.099704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.525311, 18.408880, -0.184936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.140358, 18.477928, -0.101005>,  <23.909388, 18.519358, -0.050646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.140358, 18.477928, -0.101005>,  <24.525311, 18.408880, -0.184936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.140358, 18.477928, -0.101005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267726, 0.470694, 0.840696,
		0.046357, 0.865245, -0.499201,
		-0.962379, 0.172621, 0.209828,
		23.851645, 18.529715, -0.038056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.238335, 19.200983, -0.218060>,  <24.525311, 18.408880, -0.184936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.238335, 19.200983, -0.218060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.078232, 18.950939, 0.049980>,  <23.982170, 18.800913, 0.210804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.078232, 18.950939, 0.049980>,  <24.238335, 19.200983, -0.218060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.078232, 18.950939, 0.049980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313240, 0.593860, 0.741088,
		-0.861206, 0.506528, -0.041887,
		-0.400257, -0.625108, 0.670100,
		23.958155, 18.763407, 0.251010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.654064, 19.474380, 0.257999>,  <24.238335, 19.200983, -0.218060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.654064, 19.474380, 0.257999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.890842, 19.190693, 0.411154>,  <24.032909, 19.020479, 0.503048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.890842, 19.190693, 0.411154>,  <23.654064, 19.474380, 0.257999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.890842, 19.190693, 0.411154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254612, 0.615285, 0.746054,
		-0.764703, -0.344136, 0.544793,
		0.591947, -0.709221, 0.382889,
		24.068426, 18.977926, 0.526021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.549889, 19.328714, 0.932696>,  <23.654064, 19.474380, 0.257999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.549889, 19.328714, 0.932696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.937504, 19.283588, 0.844842>,  <24.170073, 19.256514, 0.792130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.937504, 19.283588, 0.844842>,  <23.549889, 19.328714, 0.932696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.937504, 19.283588, 0.844842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239975, 0.639710, 0.730194,
		0.058126, -0.760292, 0.646975,
		0.969037, -0.112814, -0.219635,
		24.228214, 19.249744, 0.778952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.860680, 19.565493, 1.471390>,  <23.549889, 19.328714, 0.932696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.860680, 19.565493, 1.471390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.150055, 19.591183, 1.196432>,  <24.323681, 19.606596, 1.031458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.150055, 19.591183, 1.196432>,  <23.860680, 19.565493, 1.471390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.150055, 19.591183, 1.196432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489313, 0.654702, 0.576141,
		0.487040, -0.753154, 0.442212,
		0.723440, 0.064224, -0.687394,
		24.367086, 19.610451, 0.990214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.586937, 19.466059, 1.793042>,  <23.860680, 19.565493, 1.471390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.586937, 19.466059, 1.793042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.563812, 19.734852, 1.497718>,  <24.549936, 19.896128, 1.320524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.563812, 19.734852, 1.497718>,  <24.586937, 19.466059, 1.793042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.563812, 19.734852, 1.497718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401620, 0.692717, 0.599036,
		0.913980, -0.261886, -0.309930,
		-0.057814, 0.671981, -0.738308,
		24.546469, 19.936445, 1.276226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.262167, 19.722258, 1.786956>,  <24.586937, 19.466059, 1.793042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.262167, 19.722258, 1.786956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.996387, 19.985474, 1.645256>,  <24.836920, 20.143404, 1.560236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.996387, 19.985474, 1.645256>,  <25.262167, 19.722258, 1.786956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.996387, 19.985474, 1.645256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358152, 0.696420, 0.621874,
		0.655924, 0.286328, -0.698413,
		-0.664448, 0.658040, -0.354250,
		24.797052, 20.182886, 1.538981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.479603, 20.326397, 1.474591>,  <25.262167, 19.722258, 1.786956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.479603, 20.326397, 1.474591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.144428, 20.442772, 1.659291>,  <24.943323, 20.512596, 1.770112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.144428, 20.442772, 1.659291>,  <25.479603, 20.326397, 1.474591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.144428, 20.442772, 1.659291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522806, 0.670711, 0.526138,
		-0.156629, 0.682278, -0.714117,
		-0.837939, 0.290936, 0.461752,
		24.893047, 20.530052, 1.797817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.466204, 21.159397, 1.509092>,  <25.479603, 20.326397, 1.474591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.466204, 21.159397, 1.509092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.254532, 20.989445, 1.802879>,  <25.127529, 20.887472, 1.979151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.254532, 20.989445, 1.802879>,  <25.466204, 21.159397, 1.509092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.254532, 20.989445, 1.802879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362504, 0.669419, 0.648436,
		-0.767176, 0.609387, -0.200222,
		-0.529181, -0.424883, 0.734467,
		25.095778, 20.861980, 2.023220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.745728, 21.891335, 1.687027>,  <25.466204, 21.159397, 1.509092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.745728, 21.891335, 1.687027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.626713, 22.177807, 1.434501>,  <25.555304, 22.349691, 1.282986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.626713, 22.177807, 1.434501>,  <25.745728, 21.891335, 1.687027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.626713, 22.177807, 1.434501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902875, -0.003849, -0.429886,
		-0.310306, -0.697903, -0.645478,
		-0.297534, 0.716182, -0.631313,
		25.537453, 22.392662, 1.245107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.038092, 22.245054, 1.539719>,  <25.745728, 21.891335, 1.687027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.038092, 22.245054, 1.539719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.012600, 22.107685, 1.914525>,  <24.997305, 22.025263, 2.139409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.012600, 22.107685, 1.914525>,  <25.038092, 22.245054, 1.539719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.012600, 22.107685, 1.914525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317946, -0.896985, -0.307129,
		0.945965, 0.278347, 0.166354,
		-0.063729, -0.343424, 0.937016,
		24.993481, 22.004658, 2.195630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.434200, 21.903727, 1.699984>,  <25.038092, 22.245054, 1.539719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.434200, 21.903727, 1.699984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.523457, 21.520664, 1.627209>,  <24.577011, 21.290827, 1.583544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.523457, 21.520664, 1.627209>,  <24.434200, 21.903727, 1.699984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.523457, 21.520664, 1.627209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516760, -0.274473, 0.810940,
		-0.826540, -0.086937, -0.556125,
		0.223142, -0.957657, -0.181937,
		24.590399, 21.233368, 1.572628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.805372, 21.503916, 1.548989>,  <24.434200, 21.903727, 1.699984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.805372, 21.503916, 1.548989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.103931, 21.316204, 1.737738>,  <24.283068, 21.203577, 1.850988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.103931, 21.316204, 1.737738>,  <23.805372, 21.503916, 1.548989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.103931, 21.316204, 1.737738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558192, -0.055379, 0.827862,
		-0.362366, -0.881312, -0.303283,
		0.746400, -0.469279, 0.471873,
		24.327852, 21.175421, 1.879300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.581293, 20.823927, 1.814690>,  <23.805372, 21.503916, 1.548989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.581293, 20.823927, 1.814690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.879341, 20.957653, 2.045525>,  <24.058170, 21.037888, 2.184025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.879341, 20.957653, 2.045525>,  <23.581293, 20.823927, 1.814690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.879341, 20.957653, 2.045525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565750, -0.141354, 0.812371,
		0.353161, -0.931801, 0.083813,
		0.745121, 0.334315, 0.577087,
		24.102877, 21.057947, 2.218651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.692419, 20.425182, 2.407932>,  <23.581293, 20.823927, 1.814690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.692419, 20.425182, 2.407932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.749294, 20.816750, 2.466583>,  <23.783419, 21.051691, 2.501774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.749294, 20.816750, 2.466583>,  <23.692419, 20.425182, 2.407932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.749294, 20.816750, 2.466583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561253, -0.042286, 0.826563,
		0.815339, -0.199823, 0.543409,
		0.142187, 0.978919, 0.146629,
		23.791950, 21.110426, 2.510572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.031326, 20.659216, 3.144792>,  <23.692419, 20.425182, 2.407932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.031326, 20.659216, 3.144792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.765953, 20.913589, 2.987087>,  <23.606730, 21.066214, 2.892464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.765953, 20.913589, 2.987087>,  <24.031326, 20.659216, 3.144792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.765953, 20.913589, 2.987087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635522, -0.200807, 0.745512,
		0.394926, 0.745160, 0.537373,
		-0.663434, 0.635934, -0.394262,
		23.566923, 21.104370, 2.868809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.903194, 21.180361, 3.618926>,  <24.031326, 20.659216, 3.144792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.903194, 21.180361, 3.618926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.583073, 21.111923, 3.389059>,  <23.391001, 21.070860, 3.251138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.583073, 21.111923, 3.389059>,  <23.903194, 21.180361, 3.618926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.583073, 21.111923, 3.389059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536774, -0.222647, 0.813819,
		-0.267189, 0.959768, 0.086346,
		-0.800302, -0.171096, -0.574668,
		23.342981, 21.060595, 3.216658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.345921, 21.640690, 3.995717>,  <23.903194, 21.180361, 3.618926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.345921, 21.640690, 3.995717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.193329, 21.338631, 3.782465>,  <23.101774, 21.157396, 3.654514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.193329, 21.338631, 3.782465>,  <23.345921, 21.640690, 3.995717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.193329, 21.338631, 3.782465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610908, -0.226879, 0.758497,
		-0.693732, 0.615044, -0.374775,
		-0.381480, -0.755147, -0.533129,
		23.078884, 21.112087, 3.622526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.534889, 21.614096, 3.948284>,  <23.345921, 21.640690, 3.995717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.534889, 21.614096, 3.948284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.690147, 21.247936, 3.905592>,  <22.783302, 21.028240, 3.879978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.690147, 21.247936, 3.905592>,  <22.534889, 21.614096, 3.948284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.690147, 21.247936, 3.905592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616062, -0.343850, 0.708685,
		-0.685427, -0.209322, -0.697405,
		0.388147, -0.915397, -0.106729,
		22.806591, 20.973318, 3.873574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.995260, 21.285154, 4.135011>,  <22.534889, 21.614096, 3.948284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.995260, 21.285154, 4.135011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.323738, 21.067726, 4.204489>,  <22.520824, 20.937269, 4.246175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.323738, 21.067726, 4.204489>,  <21.995260, 21.285154, 4.135011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.323738, 21.067726, 4.204489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406305, -0.343225, 0.846825,
		-0.400698, -0.765978, -0.502711,
		0.821193, -0.543575, 0.173692,
		22.570097, 20.904655, 4.256597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.728811, 20.687532, 4.260681>,  <21.995260, 21.285154, 4.135011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.728811, 20.687532, 4.260681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.079220, 20.748386, 4.443738>,  <22.289465, 20.784899, 4.553573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.079220, 20.748386, 4.443738>,  <21.728811, 20.687532, 4.260681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.079220, 20.748386, 4.443738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453664, -0.061990, 0.889014,
		0.163621, -0.986414, 0.014714,
		0.876023, 0.152137, 0.457644,
		22.342028, 20.794027, 4.581032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.800615, 20.165012, 4.793166>,  <21.728811, 20.687532, 4.260681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.800615, 20.165012, 4.793166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.022228, 20.486881, 4.878535>,  <22.155195, 20.680002, 4.929757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.022228, 20.486881, 4.878535>,  <21.800615, 20.165012, 4.793166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.022228, 20.486881, 4.878535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456466, 0.079237, 0.886206,
		0.696195, -0.588407, 0.411206,
		0.554032, 0.804674, 0.213423,
		22.188438, 20.728283, 4.942562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.285810, 20.016260, 5.318423>,  <21.800615, 20.165012, 4.793166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.285810, 20.016260, 5.318423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.193867, 20.403332, 5.359915>,  <22.138700, 20.635574, 5.384809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.193867, 20.403332, 5.359915>,  <22.285810, 20.016260, 5.318423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.193867, 20.403332, 5.359915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243213, -0.160316, 0.956633,
		0.942344, 0.194661, 0.272202,
		-0.229858, 0.967681, 0.103729,
		22.124910, 20.693636, 5.391034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.740620, 20.415556, 5.854889>,  <22.285810, 20.016260, 5.318423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.740620, 20.415556, 5.854889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.348068, 20.441559, 5.782588>,  <22.112537, 20.457161, 5.739207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.348068, 20.441559, 5.782588>,  <22.740620, 20.415556, 5.854889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.348068, 20.441559, 5.782588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191976, -0.299942, 0.934441,
		0.006528, 0.951740, 0.306836,
		-0.981378, 0.065005, -0.180753,
		22.053656, 20.461060, 5.728362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.352726, 20.876682, 6.329511>,  <22.740620, 20.415556, 5.854889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.352726, 20.876682, 6.329511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.085743, 20.599712, 6.219930>,  <21.925554, 20.433531, 6.154181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.085743, 20.599712, 6.219930>,  <22.352726, 20.876682, 6.329511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.085743, 20.599712, 6.219930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242372, -0.145853, 0.959158,
		-0.704102, 0.706593, -0.070474,
		-0.667455, -0.692425, -0.273953,
		21.885506, 20.391985, 6.137744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.741499, 21.065870, 6.685503>,  <22.352726, 20.876682, 6.329511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.741499, 21.065870, 6.685503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.739693, 20.667397, 6.650631>,  <21.738609, 20.428312, 6.629708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.739693, 20.667397, 6.650631>,  <21.741499, 21.065870, 6.685503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.739693, 20.667397, 6.650631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364308, -0.079550, 0.927875,
		-0.931268, 0.035949, -0.362558,
		-0.004514, -0.996183, -0.087178,
		21.738338, 20.368542, 6.624477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.029804, 20.862486, 6.687057>,  <21.741499, 21.065870, 6.685503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.029804, 20.862486, 6.687057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.293320, 20.602879, 6.839252>,  <21.451429, 20.447113, 6.930570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.293320, 20.602879, 6.839252>,  <21.029804, 20.862486, 6.687057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.293320, 20.602879, 6.839252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587947, -0.128608, 0.798610,
		-0.469380, -0.749822, -0.466315,
		0.658787, -0.649020, 0.380489,
		21.490955, 20.408173, 6.953399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.616974, 20.420555, 7.135795>,  <21.029804, 20.862486, 6.687057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.616974, 20.420555, 7.135795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.005375, 20.406258, 7.230344>,  <21.238417, 20.397680, 7.287073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.005375, 20.406258, 7.230344>,  <20.616974, 20.420555, 7.135795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.005375, 20.406258, 7.230344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236647, -0.283835, 0.929212,
		0.033879, -0.958207, -0.284064,
		0.971005, -0.035742, 0.236373,
		21.296677, 20.395535, 7.301256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.710705, 19.919626, 7.679343>,  <20.616974, 20.420555, 7.135795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.710705, 19.919626, 7.679343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.007774, 20.186527, 7.701992>,  <21.186016, 20.346668, 7.715581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.007774, 20.186527, 7.701992>,  <20.710705, 19.919626, 7.679343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.007774, 20.186527, 7.701992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005439, -0.078541, 0.996896,
		0.669630, -0.740677, -0.054701,
		0.742674, 0.667254, 0.056622,
		21.230577, 20.386703, 7.718978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.446125, 19.683178, 8.049400>,  <20.710705, 19.919626, 7.679343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.446125, 19.683178, 8.049400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.394161, 20.078793, 8.077478>,  <21.362984, 20.316162, 8.094325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.394161, 20.078793, 8.077478>,  <21.446125, 19.683178, 8.049400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.394161, 20.078793, 8.077478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066543, -0.079332, 0.994625,
		0.989290, 0.124541, 0.076120,
		-0.129910, 0.989038, 0.070195,
		21.355188, 20.375504, 8.098536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.076597, 19.940594, 8.411839>,  <21.446125, 19.683178, 8.049400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.076597, 19.940594, 8.411839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.741680, 20.143085, 8.494473>,  <21.540730, 20.264580, 8.544054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.741680, 20.143085, 8.494473>,  <22.076597, 19.940594, 8.411839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.741680, 20.143085, 8.494473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163116, -0.129355, 0.978090,
		0.521860, 0.852643, 0.025734,
		-0.837291, 0.506228, 0.206585,
		21.490494, 20.294954, 8.556449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.298504, 20.311018, 8.929477>,  <22.076597, 19.940594, 8.411839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.298504, 20.311018, 8.929477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.899933, 20.341019, 8.945016>,  <21.660791, 20.359020, 8.954339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.899933, 20.341019, 8.945016>,  <22.298504, 20.311018, 8.929477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.899933, 20.341019, 8.945016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034368, -0.060115, 0.997600,
		0.077158, 0.995370, 0.057322,
		-0.996426, 0.075003, 0.038847,
		21.601006, 20.363520, 8.956670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.111849, 20.861662, 9.438408>,  <22.298504, 20.311018, 8.929477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.111849, 20.861662, 9.438408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.773636, 20.651657, 9.399547>,  <21.570707, 20.525654, 9.376230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.773636, 20.651657, 9.399547>,  <22.111849, 20.861662, 9.438408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.773636, 20.651657, 9.399547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195312, 0.134788, 0.971435,
		-0.496918, 0.840355, -0.216509,
		-0.845533, -0.525010, -0.097153,
		21.519976, 20.494154, 9.370400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.613710, 21.244394, 9.981283>,  <22.111849, 20.861662, 9.438408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.613710, 21.244394, 9.981283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.474464, 20.884132, 9.877258>,  <21.390917, 20.667974, 9.814843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.474464, 20.884132, 9.877258>,  <21.613710, 21.244394, 9.981283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.474464, 20.884132, 9.877258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136730, -0.225666, 0.964562,
		-0.927426, 0.371338, -0.044589,
		-0.348116, -0.900657, -0.260062,
		21.370029, 20.613935, 9.799240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.117418, 21.088392, 10.474068>,  <21.613710, 21.244394, 9.981283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.117418, 21.088392, 10.474068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.188583, 20.716290, 10.345711>,  <21.231281, 20.493029, 10.268697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.188583, 20.716290, 10.345711>,  <21.117418, 21.088392, 10.474068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.188583, 20.716290, 10.345711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233221, -0.356664, 0.904654,
		-0.956010, -0.086109, -0.280410,
		0.177911, -0.930256, -0.320892,
		21.241957, 20.437212, 10.249443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.584736, 20.636858, 10.655742>,  <21.117418, 21.088392, 10.474068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.584736, 20.636858, 10.655742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.892120, 20.384708, 10.611746>,  <21.076551, 20.233419, 10.585348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.892120, 20.384708, 10.611746>,  <20.584736, 20.636858, 10.655742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.892120, 20.384708, 10.611746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048021, -0.228213, 0.972426,
		-0.638091, -0.741991, -0.205644,
		0.768462, -0.630372, -0.109989,
		21.122660, 20.195597, 10.578749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.369959, 20.128036, 11.005424>,  <20.584736, 20.636858, 10.655742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.369959, 20.128036, 11.005424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.768848, 20.098721, 11.010674>,  <21.008183, 20.081131, 11.013824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.768848, 20.098721, 11.010674>,  <20.369959, 20.128036, 11.005424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.768848, 20.098721, 11.010674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025322, -0.168051, 0.985453,
		-0.070018, -0.983050, -0.169441,
		0.997224, -0.073290, 0.013126,
		21.068016, 20.076733, 11.014611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.414850, 19.612980, 11.410098>,  <20.369959, 20.128036, 11.005424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.414850, 19.612980, 11.410098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.784565, 19.765110, 11.423004>,  <21.006393, 19.856388, 11.430748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.784565, 19.765110, 11.423004>,  <20.414850, 19.612980, 11.410098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.784565, 19.765110, 11.423004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048281, -0.200351, 0.978534,
		0.378628, -0.902890, -0.203545,
		0.924289, 0.380328, 0.032266,
		21.061852, 19.879208, 11.432684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.772058, 19.145782, 11.827977>,  <20.414850, 19.612980, 11.410098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.772058, 19.145782, 11.827977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.982590, 19.485867, 11.823530>,  <21.108908, 19.689917, 11.820862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.982590, 19.485867, 11.823530>,  <20.772058, 19.145782, 11.827977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.982590, 19.485867, 11.823530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040063, -0.011737, 0.999128,
		0.849337, -0.526315, -0.040239,
		0.526329, 0.850209, -0.011117,
		21.140488, 19.740929, 11.820195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.394049, 19.077507, 12.331937>,  <20.772058, 19.145782, 11.827977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.394049, 19.077507, 12.331937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.354160, 19.472370, 12.282014>,  <21.330227, 19.709288, 12.252060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.354160, 19.472370, 12.282014>,  <21.394049, 19.077507, 12.331937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.354160, 19.472370, 12.282014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094980, 0.134304, 0.986378,
		0.990472, 0.086508, -0.107153,
		-0.099720, 0.987157, -0.124808,
		21.324244, 19.768517, 12.244572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.997108, 19.381863, 12.735523>,  <21.394049, 19.077507, 12.331937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.997108, 19.381863, 12.735523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.716858, 19.663422, 12.688787>,  <21.548708, 19.832357, 12.660747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.716858, 19.663422, 12.688787>,  <21.997108, 19.381863, 12.735523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.716858, 19.663422, 12.688787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039980, 0.202218, 0.978524,
		0.712407, 0.680910, -0.169821,
		-0.700627, 0.703896, -0.116839,
		21.506670, 19.874590, 12.653736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.260857, 19.965685, 12.994379>,  <21.997108, 19.381863, 12.735523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.260857, 19.965685, 12.994379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.862255, 19.979168, 13.024956>,  <21.623095, 19.987259, 13.043302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.862255, 19.979168, 13.024956>,  <22.260857, 19.965685, 12.994379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.862255, 19.979168, 13.024956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081848, 0.210508, 0.974160,
		0.016747, 0.977011, -0.212531,
		-0.996504, 0.033710, 0.076441,
		21.563303, 19.989281, 13.047888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.169333, 20.499718, 13.572635>,  <22.260857, 19.965685, 12.994379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.169333, 20.499718, 13.572635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.820461, 20.311214, 13.520147>,  <21.611137, 20.198112, 13.488655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.820461, 20.311214, 13.520147>,  <22.169333, 20.499718, 13.572635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.820461, 20.311214, 13.520147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249039, 0.196868, 0.948273,
		-0.421049, 0.859743, -0.289066,
		-0.872180, -0.471258, -0.131219,
		21.558807, 20.169836, 13.480782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.735285, 21.035654, 13.782530>,  <22.169333, 20.499718, 13.572635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.735285, 21.035654, 13.782530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.539257, 20.686981, 13.783163>,  <21.421640, 20.477777, 13.783543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.539257, 20.686981, 13.783163>,  <21.735285, 21.035654, 13.782530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.539257, 20.686981, 13.783163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515761, 0.291429, 0.805642,
		-0.702725, 0.394005, -0.592400,
		-0.490070, -0.871682, 0.001582,
		21.392237, 20.425476, 13.783638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.054066, 21.274811, 13.880509>,  <21.735285, 21.035654, 13.782530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.054066, 21.274811, 13.880509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.068020, 20.892300, 13.996656>,  <21.076393, 20.662792, 14.066344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.068020, 20.892300, 13.996656>,  <21.054066, 21.274811, 13.880509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.068020, 20.892300, 13.996656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621896, 0.206666, 0.755338,
		-0.782323, -0.206927, -0.587497,
		0.034885, -0.956279, 0.290366,
		21.078485, 20.605415, 14.083766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.418598, 21.089527, 14.210783>,  <21.054066, 21.274811, 13.880509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.418598, 21.089527, 14.210783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.662235, 20.803185, 14.347345>,  <20.808416, 20.631378, 14.429282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.662235, 20.803185, 14.347345>,  <20.418598, 21.089527, 14.210783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.662235, 20.803185, 14.347345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400498, 0.093931, 0.911471,
		-0.684551, -0.691900, -0.229486,
		0.609091, -0.715857, 0.341405,
		20.844963, 20.588427, 14.449767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.947706, 20.610718, 14.511496>,  <20.418598, 21.089527, 14.210783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.947706, 20.610718, 14.511496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.313244, 20.574028, 14.669724>,  <20.532566, 20.552013, 14.764660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.313244, 20.574028, 14.669724>,  <19.947706, 20.610718, 14.511496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.313244, 20.574028, 14.669724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372020, 0.201335, 0.906126,
		-0.162757, -0.975218, 0.149865,
		0.913844, -0.091726, 0.395570,
		20.587397, 20.546511, 14.788394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.692242, 20.432489, 15.173781>,  <19.947706, 20.610718, 14.511496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.692242, 20.432489, 15.173781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.086197, 20.482174, 15.222063>,  <20.322569, 20.511984, 15.251032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.086197, 20.482174, 15.222063>,  <19.692242, 20.432489, 15.173781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.086197, 20.482174, 15.222063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145919, 0.219637, 0.964607,
		0.093300, -0.967642, 0.234442,
		0.984887, 0.124208, 0.120706,
		20.381662, 20.519438, 15.258275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.847481, 20.052345, 15.733620>,  <19.692242, 20.432489, 15.173781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.847481, 20.052345, 15.733620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.121563, 20.335953, 15.666945>,  <20.286013, 20.506117, 15.626939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.121563, 20.335953, 15.666945>,  <19.847481, 20.052345, 15.733620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.121563, 20.335953, 15.666945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166620, 0.375380, 0.911772,
		0.709035, -0.596977, 0.375349,
		0.685206, 0.709019, -0.166689,
		20.327126, 20.548658, 15.616938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.239056, 20.070120, 16.382223>,  <19.847481, 20.052345, 15.733620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.239056, 20.070120, 16.382223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.312336, 20.418137, 16.199154>,  <20.356304, 20.626947, 16.089312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.312336, 20.418137, 16.199154>,  <20.239056, 20.070120, 16.382223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.312336, 20.418137, 16.199154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167131, 0.486340, 0.857636,
		0.968765, -0.080628, 0.234508,
		0.183200, 0.870041, -0.457674,
		20.367296, 20.679150, 16.061852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.752628, 20.346233, 16.767733>,  <20.239056, 20.070120, 16.382223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.752628, 20.346233, 16.767733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.534622, 20.626534, 16.583599>,  <20.403818, 20.794714, 16.473118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.534622, 20.626534, 16.583599>,  <20.752628, 20.346233, 16.767733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.534622, 20.626534, 16.583599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183962, 0.435721, 0.881082,
		0.817996, 0.564887, -0.108563,
		-0.545015, 0.700749, -0.460336,
		20.371119, 20.836758, 16.445498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.915030, 20.853075, 17.146605>,  <20.752628, 20.346233, 16.767733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.915030, 20.853075, 17.146605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.615795, 21.015316, 16.936518>,  <20.436255, 21.112661, 16.810467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.615795, 21.015316, 16.936518>,  <20.915030, 20.853075, 17.146605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.615795, 21.015316, 16.936518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384882, 0.379549, 0.841314,
		0.540585, 0.831522, -0.127826,
		-0.748087, 0.405604, -0.525216,
		20.391369, 21.136997, 16.778954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.896799, 21.597960, 17.225702>,  <20.915030, 20.853075, 17.146605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.896799, 21.597960, 17.225702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.528522, 21.463757, 17.145939>,  <20.307556, 21.383234, 17.098082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.528522, 21.463757, 17.145939>,  <20.896799, 21.597960, 17.225702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.528522, 21.463757, 17.145939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342822, 0.450971, 0.824074,
		-0.186557, 0.827078, -0.530225,
		-0.920690, -0.335510, -0.199409,
		20.252316, 21.363104, 17.086117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.474321, 22.225735, 17.260902>,  <20.896799, 21.597960, 17.225702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.474321, 22.225735, 17.260902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.271496, 21.886806, 17.324060>,  <20.149799, 21.683449, 17.361956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.271496, 21.886806, 17.324060>,  <20.474321, 22.225735, 17.260902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.271496, 21.886806, 17.324060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333109, 0.361612, 0.870790,
		-0.794936, 0.388950, -0.465612,
		-0.507065, -0.847322, 0.157896,
		20.119377, 21.632610, 17.371429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.072874, 22.369717, 17.849707>,  <20.474321, 22.225735, 17.260902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.072874, 22.369717, 17.849707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.924694, 22.000385, 17.809248>,  <19.835785, 21.778786, 17.784973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.924694, 22.000385, 17.809248>,  <20.072874, 22.369717, 17.849707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.924694, 22.000385, 17.809248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497387, 0.105227, 0.861123,
		-0.784456, 0.369313, -0.498233,
		-0.370452, -0.923328, -0.101146,
		19.813559, 21.723387, 17.778904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.352865, 22.410002, 17.749960>,  <20.072874, 22.369717, 17.849707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.352865, 22.410002, 17.749960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.440659, 22.057182, 17.916723>,  <19.493334, 21.845490, 18.016781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.440659, 22.057182, 17.916723>,  <19.352865, 22.410002, 17.749960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.440659, 22.057182, 17.916723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470160, 0.278808, 0.837386,
		-0.854855, -0.379806, -0.353511,
		0.219483, -0.882050, 0.416910,
		19.506504, 21.792566, 18.041796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.753731, 22.165524, 18.049774>,  <19.352865, 22.410002, 17.749960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.753731, 22.165524, 18.049774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.041531, 21.961075, 18.237846>,  <19.214211, 21.838406, 18.350691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.041531, 21.961075, 18.237846>,  <18.753731, 22.165524, 18.049774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.041531, 21.961075, 18.237846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495701, 0.096218, 0.863147,
		-0.486414, -0.854105, -0.184135,
		0.719501, -0.511123, 0.470183,
		19.257381, 21.807737, 18.378901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.437574, 21.687429, 18.561415>,  <18.753731, 22.165524, 18.049774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.437574, 21.687429, 18.561415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.812725, 21.698757, 18.699741>,  <19.037815, 21.705555, 18.782738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.812725, 21.698757, 18.699741>,  <18.437574, 21.687429, 18.561415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.812725, 21.698757, 18.699741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339892, -0.125329, 0.932076,
		0.069738, -0.991711, -0.107916,
		0.937875, 0.028322, 0.345814,
		19.094088, 21.707253, 18.803486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.445097, 21.271358, 19.098232>,  <18.437574, 21.687429, 18.561415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.445097, 21.271358, 19.098232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.778297, 21.475876, 19.182791>,  <18.978218, 21.598587, 19.233526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.778297, 21.475876, 19.182791>,  <18.445097, 21.271358, 19.098232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.778297, 21.475876, 19.182791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217322, -0.049000, 0.974869,
		0.508803, -0.858008, 0.070298,
		0.833001, 0.511293, 0.211395,
		19.028198, 21.629265, 19.246210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.823997, 20.880878, 19.611156>,  <18.445097, 21.271358, 19.098232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.823997, 20.880878, 19.611156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.937057, 21.261559, 19.659111>,  <19.004894, 21.489967, 19.687883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.937057, 21.261559, 19.659111>,  <18.823997, 20.880878, 19.611156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.937057, 21.261559, 19.659111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169853, -0.073352, 0.982736,
		0.944065, -0.298135, 0.140916,
		0.282651, 0.951701, 0.119889,
		19.021852, 21.547070, 19.695078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.241121, 20.908504, 20.243998>,  <18.823997, 20.880878, 19.611156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.241121, 20.908504, 20.243998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.101528, 21.275803, 20.169123>,  <19.017773, 21.496181, 20.124197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.101528, 21.275803, 20.169123>,  <19.241121, 20.908504, 20.243998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.101528, 21.275803, 20.169123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235266, 0.107503, 0.965967,
		0.907118, 0.381143, 0.178516,
		-0.348981, 0.918245, -0.187188,
		18.996834, 21.551275, 20.112967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.643372, 21.312307, 20.723181>,  <19.241121, 20.908504, 20.243998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.643372, 21.312307, 20.723181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.322109, 21.520733, 20.607645>,  <19.129351, 21.645788, 20.538322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.322109, 21.520733, 20.607645>,  <19.643372, 21.312307, 20.723181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.322109, 21.520733, 20.607645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247607, 0.149021, 0.957332,
		0.541874, 0.840408, 0.009332,
		-0.803158, 0.521064, -0.288841,
		19.081161, 21.677052, 20.520992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.588778, 21.957094, 21.227385>,  <19.643372, 21.312307, 20.723181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.588778, 21.957094, 21.227385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.237087, 21.903141, 21.044621>,  <19.026073, 21.870770, 20.934963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.237087, 21.903141, 21.044621>,  <19.588778, 21.957094, 21.227385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.237087, 21.903141, 21.044621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476225, 0.275081, 0.835189,
		0.013033, 0.951912, -0.306094,
		-0.879227, -0.134885, -0.456909,
		18.973320, 21.862675, 20.907547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.199463, 22.437323, 21.564970>,  <19.588778, 21.957094, 21.227385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.199463, 22.437323, 21.564970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.929279, 22.204849, 21.383429>,  <18.767170, 22.065365, 21.274504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.929279, 22.204849, 21.383429>,  <19.199463, 22.437323, 21.564970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.929279, 22.204849, 21.383429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653572, 0.186834, 0.733442,
		-0.341471, 0.792033, -0.506044,
		-0.675457, -0.581185, -0.453853,
		18.726643, 22.030493, 21.247272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.648849, 22.900429, 21.606867>,  <19.199463, 22.437323, 21.564970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.648849, 22.900429, 21.606867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.514183, 22.532471, 21.526415>,  <18.433384, 22.311697, 21.478144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.514183, 22.532471, 21.526415>,  <18.648849, 22.900429, 21.606867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.514183, 22.532471, 21.526415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650342, 0.072687, 0.756156,
		-0.680963, 0.385374, -0.622717,
		-0.336666, -0.919893, -0.201128,
		18.413183, 22.256502, 21.466076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.939171, 22.858692, 21.379053>,  <18.648849, 22.900429, 21.606867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.939171, 22.858692, 21.379053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.982220, 22.488670, 21.524763>,  <18.008049, 22.266657, 21.612188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.982220, 22.488670, 21.524763>,  <17.939171, 22.858692, 21.379053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.982220, 22.488670, 21.524763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733105, 0.173654, 0.657572,
		-0.671546, -0.337820, -0.659472,
		0.107621, -0.925052, 0.364275,
		18.014505, 22.211155, 21.634045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.310598, 22.498917, 21.356529>,  <17.939171, 22.858692, 21.379053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.310598, 22.498917, 21.356529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.531010, 22.329689, 21.644245>,  <17.663256, 22.228151, 21.816875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.531010, 22.329689, 21.644245>,  <17.310598, 22.498917, 21.356529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.531010, 22.329689, 21.644245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743181, 0.143240, 0.653579,
		-0.379541, -0.894703, -0.235489,
		0.551027, -0.423071, 0.719291,
		17.696318, 22.202768, 21.860033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.815756, 21.961441, 21.740847>,  <17.310598, 22.498917, 21.356529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.815756, 21.961441, 21.740847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.122681, 22.012856, 21.992149>,  <17.306835, 22.043705, 22.142931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.122681, 22.012856, 21.992149>,  <16.815756, 21.961441, 21.740847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.122681, 22.012856, 21.992149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641262, 0.148414, 0.752832,
		0.003522, -0.980537, 0.196304,
		0.767314, 0.128534, 0.628258,
		17.352875, 22.051416, 22.180626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.596115, 21.717474, 22.343702>,  <16.815756, 21.961441, 21.740847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.596115, 21.717474, 22.343702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.920853, 21.916862, 22.465313>,  <17.115696, 22.036495, 22.538280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.920853, 21.916862, 22.465313>,  <16.596115, 21.717474, 22.343702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.920853, 21.916862, 22.465313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436562, 0.172462, 0.882989,
		0.387712, -0.849578, 0.357627,
		0.811845, 0.498472, 0.304028,
		17.164406, 22.066404, 22.556520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.879316, 21.464216, 23.020405>,  <16.596115, 21.717474, 22.343702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.879316, 21.464216, 23.020405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.985783, 21.848938, 22.994837>,  <17.049662, 22.079771, 22.979496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.985783, 21.848938, 22.994837>,  <16.879316, 21.464216, 23.020405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.985783, 21.848938, 22.994837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427970, 0.177331, 0.886226,
		0.863712, -0.208527, 0.458823,
		0.266165, 0.961805, -0.063920,
		17.065632, 22.137480, 22.975660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.027893, 21.660963, 23.685783>,  <16.879316, 21.464216, 23.020405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.027893, 21.660963, 23.685783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.996395, 22.013035, 23.498556>,  <16.977497, 22.224277, 23.386219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.996395, 22.013035, 23.498556>,  <17.027893, 21.660963, 23.685783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.996395, 22.013035, 23.498556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337860, 0.418176, 0.843196,
		0.937897, 0.224537, 0.264448,
		-0.078743, 0.880177, -0.468067,
		16.972773, 22.277088, 23.358135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.135874, 22.117058, 24.227310>,  <17.027893, 21.660963, 23.685783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.135874, 22.117058, 24.227310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.991131, 22.382175, 23.965084>,  <16.904285, 22.541245, 23.807749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.991131, 22.382175, 23.965084>,  <17.135874, 22.117058, 24.227310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.991131, 22.382175, 23.965084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465605, 0.480735, 0.743038,
		0.807633, 0.574109, 0.134641,
		-0.361858, 0.662792, -0.655565,
		16.882574, 22.581013, 23.768415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.239979, 22.738998, 24.544626>,  <17.135874, 22.117058, 24.227310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.239979, 22.738998, 24.544626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.968307, 22.811085, 24.260023>,  <16.805305, 22.854336, 24.089262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.968307, 22.811085, 24.260023>,  <17.239979, 22.738998, 24.544626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.968307, 22.811085, 24.260023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458633, 0.652633, 0.603097,
		0.573040, 0.735930, -0.360600,
		-0.679177, 0.180215, -0.711506,
		16.764555, 22.865149, 24.046572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.978127, 23.577318, 24.459536>,  <17.239979, 22.738998, 24.544626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.978127, 23.577318, 24.459536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.717594, 23.290092, 24.361435>,  <16.561275, 23.117756, 24.302574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.717594, 23.290092, 24.361435>,  <16.978127, 23.577318, 24.459536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.717594, 23.290092, 24.361435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751278, 0.564891, 0.341291,
		-0.106529, 0.406545, -0.907399,
		-0.651331, -0.718066, -0.245251,
		16.522194, 23.074673, 24.287859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.514988, 24.124132, 24.068352>,  <16.978127, 23.577318, 24.459536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.514988, 24.124132, 24.068352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.353134, 23.806366, 24.249537>,  <16.256021, 23.615705, 24.358248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.353134, 23.806366, 24.249537>,  <16.514988, 24.124132, 24.068352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.353134, 23.806366, 24.249537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833017, 0.524558, 0.175843,
		-0.377297, -0.306171, -0.874017,
		-0.404635, -0.794417, 0.452960,
		16.231743, 23.568041, 24.385424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.833065, 23.976770, 23.806919>,  <16.514988, 24.124132, 24.068352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.833065, 23.976770, 23.806919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.825376, 23.798626, 24.164976>,  <15.820762, 23.691738, 24.379810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.825376, 23.798626, 24.164976>,  <15.833065, 23.976770, 23.806919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.825376, 23.798626, 24.164976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.937014, 0.320334, 0.139253,
		-0.348763, -0.836085, -0.423469,
		-0.019224, -0.445363, 0.895144,
		15.819609, 23.665018, 24.433519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.282409, 23.375164, 23.919701>,  <15.833065, 23.976770, 23.806919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.282409, 23.375164, 23.919701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.331212, 23.585754, 24.256256>,  <15.360494, 23.712109, 24.458189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.331212, 23.585754, 24.256256>,  <15.282409, 23.375164, 23.919701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.331212, 23.585754, 24.256256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.985987, 0.161460, 0.041947,
		-0.113767, -0.834719, 0.538796,
		0.122008, 0.526474, 0.841391,
		15.367815, 23.743696, 24.508673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.085606, 23.213938, 24.606836>,  <15.282409, 23.375164, 23.919701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.085606, 23.213938, 24.606836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.048432, 23.605381, 24.533417>,  <15.026128, 23.840246, 24.489365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.048432, 23.605381, 24.533417>,  <15.085606, 23.213938, 24.606836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.048432, 23.605381, 24.533417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.968403, -0.045991, 0.245114,
		0.231429, 0.200528, 0.951961,
		-0.092934, 0.978608, -0.183549,
		15.020552, 23.898964, 24.478352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.361544, 23.397997, 24.731018>,  <15.085606, 23.213938, 24.606836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.361544, 23.397997, 24.731018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.532981, 23.101830, 24.523909>,  <14.635843, 22.924129, 24.399643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.532981, 23.101830, 24.523909>,  <14.361544, 23.397997, 24.731018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.532981, 23.101830, 24.523909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735891, -0.618562, 0.275402,
		-0.524188, 0.262990, -0.809977,
		0.428593, -0.740417, -0.517775,
		14.661559, 22.879705, 24.368576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.926465, 23.137636, 24.185226>,  <14.361544, 23.397997, 24.731018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.926465, 23.137636, 24.185226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.163821, 22.854321, 24.338177>,  <14.306235, 22.684330, 24.429947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.163821, 22.854321, 24.338177>,  <13.926465, 23.137636, 24.185226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.163821, 22.854321, 24.338177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804888, -0.518297, 0.289005,
		-0.006516, -0.479262, -0.877648,
		0.593391, -0.708291, 0.382375,
		14.341839, 22.641832, 24.452888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.614153, 23.045158, 23.831722>,  <13.926465, 23.137636, 24.185226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.614153, 23.045158, 23.831722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.459157, 23.413616, 23.817078>,  <14.366159, 23.634691, 23.808290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.459157, 23.413616, 23.817078>,  <14.614153, 23.045158, 23.831722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.459157, 23.413616, 23.817078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417385, 0.139889, -0.897898,
		-0.821974, -0.363208, -0.438678,
		-0.387490, 0.921147, -0.036613,
		14.342910, 23.689960, 23.806093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.060474, 23.144430, 23.283920>,  <14.614153, 23.045158, 23.831722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.060474, 23.144430, 23.283920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.244216, 23.491760, 23.358755>,  <14.354461, 23.700159, 23.403656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.244216, 23.491760, 23.358755>,  <14.060474, 23.144430, 23.283920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.244216, 23.491760, 23.358755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142084, 0.136085, -0.980456,
		-0.876816, 0.476958, -0.060864,
		0.459353, 0.868327, 0.187089,
		14.382022, 23.752258, 23.414883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.699338, 23.803066, 23.007418>,  <14.060474, 23.144430, 23.283920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.699338, 23.803066, 23.007418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.095674, 23.764374, 23.045115>,  <14.333475, 23.741158, 23.067732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.095674, 23.764374, 23.045115>,  <13.699338, 23.803066, 23.007418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.095674, 23.764374, 23.045115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098573, 0.041000, -0.994285,
		0.092314, 0.994466, 0.050159,
		0.990839, -0.096731, 0.094243,
		14.392925, 23.735353, 23.073387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.895602, 24.282555, 22.562281>,  <13.699338, 23.803066, 23.007418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.895602, 24.282555, 22.562281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.210689, 24.043056, 22.620258>,  <14.399740, 23.899359, 22.655045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.210689, 24.043056, 22.620258>,  <13.895602, 24.282555, 22.562281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.210689, 24.043056, 22.620258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274436, 0.130417, -0.952720,
		0.551531, 0.790252, 0.267049,
		0.787717, -0.598743, 0.144945,
		14.447003, 23.863434, 22.663742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.433424, 24.612211, 22.379612>,  <13.895602, 24.282555, 22.562281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.433424, 24.612211, 22.379612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.548835, 24.231571, 22.337259>,  <14.618081, 24.003187, 22.311848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.548835, 24.231571, 22.337259>,  <14.433424, 24.612211, 22.379612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.548835, 24.231571, 22.337259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159814, 0.156896, -0.974599,
		0.944040, 0.264277, 0.197348,
		0.288527, -0.951599, -0.105881,
		14.635393, 23.946091, 22.305494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.125374, 24.617239, 22.090969>,  <14.433424, 24.612211, 22.379612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.125374, 24.617239, 22.090969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.965125, 24.259037, 22.013430>,  <14.868976, 24.044117, 21.966906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.965125, 24.259037, 22.013430>,  <15.125374, 24.617239, 22.090969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.965125, 24.259037, 22.013430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121849, 0.157616, -0.979954,
		0.908105, -0.416211, 0.045971,
		-0.400622, -0.895503, -0.193847,
		14.844938, 23.990387, 21.955276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.564369, 24.316326, 21.480705>,  <15.125374, 24.617239, 22.090969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.564369, 24.316326, 21.480705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.241990, 24.080643, 21.503618>,  <15.048563, 23.939232, 21.517366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.241990, 24.080643, 21.503618>,  <15.564369, 24.316326, 21.480705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.241990, 24.080643, 21.503618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060764, -0.178588, -0.982046,
		0.588859, -0.787997, 0.179736,
		-0.805948, -0.589209, 0.057281,
		15.000206, 23.903881, 21.520803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.816257, 23.694727, 21.262281>,  <15.564369, 24.316326, 21.480705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.816257, 23.694727, 21.262281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.424066, 23.699192, 21.183756>,  <15.188751, 23.701872, 21.136641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.424066, 23.699192, 21.183756>,  <15.816257, 23.694727, 21.262281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.424066, 23.699192, 21.183756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191215, -0.178579, -0.965167,
		-0.045830, -0.983862, 0.172959,
		-0.980478, 0.011161, -0.196313,
		15.129922, 23.702541, 21.124863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.750652, 23.231096, 20.724344>,  <15.816257, 23.694727, 21.262281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.750652, 23.231096, 20.724344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.386298, 23.395500, 20.709599>,  <15.167686, 23.494143, 20.700752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.386298, 23.395500, 20.709599>,  <15.750652, 23.231096, 20.724344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.386298, 23.395500, 20.709599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082824, -0.269605, -0.959403,
		-0.404265, -0.870851, 0.279620,
		-0.910884, 0.411012, -0.036864,
		15.113032, 23.518803, 20.698540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.239001, 22.740850, 20.456718>,  <15.750652, 23.231096, 20.724344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.239001, 22.740850, 20.456718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.034616, 23.081135, 20.407389>,  <14.911983, 23.285305, 20.377790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.034616, 23.081135, 20.407389>,  <15.239001, 22.740850, 20.456718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.034616, 23.081135, 20.407389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328280, -0.325711, -0.886648,
		-0.794448, -0.412560, 0.445698,
		-0.510964, 0.850709, -0.123325,
		14.881326, 23.336348, 20.370392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.592147, 22.562426, 20.192007>,  <15.239001, 22.740850, 20.456718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.592147, 22.562426, 20.192007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.664718, 22.934307, 20.063797>,  <14.708261, 23.157436, 19.986872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.664718, 22.934307, 20.063797>,  <14.592147, 22.562426, 20.192007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.664718, 22.934307, 20.063797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273691, -0.265319, -0.924499,
		-0.944551, 0.255454, 0.206315,
		0.181427, 0.929704, -0.320523,
		14.719146, 23.213219, 19.967640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.090639, 22.689379, 19.711788>,  <14.592147, 22.562426, 20.192007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.090639, 22.689379, 19.711788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.353467, 22.977734, 19.623623>,  <14.511164, 23.150747, 19.570724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.353467, 22.977734, 19.623623>,  <14.090639, 22.689379, 19.711788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.353467, 22.977734, 19.623623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009201, -0.300036, -0.953883,
		-0.753774, 0.624740, -0.203777,
		0.657069, 0.720887, -0.220411,
		14.550588, 23.194000, 19.557499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.998168, 22.852024, 18.938332>,  <14.090639, 22.689379, 19.711788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.998168, 22.852024, 18.938332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.337056, 23.052120, 19.009863>,  <14.540389, 23.172178, 19.052782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.337056, 23.052120, 19.009863>,  <13.998168, 22.852024, 18.938332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.337056, 23.052120, 19.009863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289270, -0.152055, -0.945094,
		-0.445581, 0.852432, -0.273528,
		0.847219, 0.500239, 0.178830,
		14.591222, 23.202192, 19.063511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.132030, 23.438429, 18.483091>,  <13.998168, 22.852024, 18.938332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.132030, 23.438429, 18.483091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.508718, 23.356712, 18.589996>,  <14.734731, 23.307682, 18.654139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.508718, 23.356712, 18.589996>,  <14.132030, 23.438429, 18.483091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.508718, 23.356712, 18.589996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279269, 0.031852, -0.959684,
		0.187542, 0.978392, 0.087048,
		0.941720, -0.204291, 0.267261,
		14.791233, 23.295425, 18.670176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.619582, 23.969780, 18.208555>,  <14.132030, 23.438429, 18.483091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.619582, 23.969780, 18.208555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.845025, 23.647903, 18.283194>,  <14.980291, 23.454777, 18.327976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.845025, 23.647903, 18.283194>,  <14.619582, 23.969780, 18.208555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.845025, 23.647903, 18.283194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317156, 0.002224, -0.948371,
		0.762731, 0.593689, 0.256466,
		0.563608, -0.804691, 0.186596,
		15.014108, 23.406496, 18.339172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.215328, 24.132776, 18.051483>,  <14.619582, 23.969780, 18.208555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.215328, 24.132776, 18.051483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.241492, 23.735764, 18.010296>,  <15.257191, 23.497557, 17.985582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.241492, 23.735764, 18.010296>,  <15.215328, 24.132776, 18.051483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.241492, 23.735764, 18.010296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270336, 0.116958, -0.955636,
		0.960542, 0.034671, 0.275967,
		0.065409, -0.992532, -0.102970,
		15.261115, 23.438004, 17.979404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.886902, 23.994097, 17.733351>,  <15.215328, 24.132776, 18.051483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.886902, 23.994097, 17.733351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.674695, 23.663078, 17.659897>,  <15.547371, 23.464468, 17.615824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.674695, 23.663078, 17.659897>,  <15.886902, 23.994097, 17.733351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.674695, 23.663078, 17.659897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435737, -0.080407, -0.896476,
		0.727108, -0.555611, 0.403249,
		-0.530516, -0.827545, -0.183635,
		15.515540, 23.414814, 17.604807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.359671, 23.504040, 17.578287>,  <15.886902, 23.994097, 17.733351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.359671, 23.504040, 17.578287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.029575, 23.367523, 17.398285>,  <15.831518, 23.285614, 17.290283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.029575, 23.367523, 17.398285>,  <16.359671, 23.504040, 17.578287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.029575, 23.367523, 17.398285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525718, -0.172983, -0.832885,
		0.206412, -0.923904, 0.322174,
		-0.825236, -0.341290, -0.450007,
		15.782004, 23.265137, 17.263283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.454702, 22.768000, 17.274630>,  <16.359671, 23.504040, 17.578287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.454702, 22.768000, 17.274630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.136776, 22.910797, 17.078335>,  <15.946020, 22.996475, 16.960558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.136776, 22.910797, 17.078335>,  <16.454702, 22.768000, 17.274630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.136776, 22.910797, 17.078335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375041, -0.346784, -0.859701,
		-0.477087, -0.867350, 0.141742,
		-0.794815, 0.356993, -0.490738,
		15.898331, 23.017895, 16.931114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.377460, 22.238663, 16.716045>,  <16.454702, 22.768000, 17.274630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.377460, 22.238663, 16.716045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.181221, 22.568535, 16.603464>,  <16.063477, 22.766459, 16.535915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.181221, 22.568535, 16.603464>,  <16.377460, 22.238663, 16.716045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.181221, 22.568535, 16.603464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355812, -0.105253, -0.928612,
		-0.795431, -0.555722, -0.241793,
		-0.490600, 0.824679, -0.281453,
		16.034040, 22.815939, 16.519028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.987926, 22.086704, 16.123249>,  <16.377460, 22.238663, 16.716045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.987926, 22.086704, 16.123249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.041698, 22.483070, 16.124605>,  <16.073961, 22.720890, 16.125420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.041698, 22.483070, 16.124605>,  <15.987926, 22.086704, 16.123249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.041698, 22.483070, 16.124605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346715, -0.043830, -0.936946,
		-0.928287, 0.127129, -0.349458,
		0.134430, 0.990917, 0.003391,
		16.082027, 22.780346, 16.125622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.536726, 22.262564, 15.610662>,  <15.987926, 22.086704, 16.123249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.536726, 22.262564, 15.610662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.810187, 22.551907, 15.649395>,  <15.974264, 22.725512, 15.672634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.810187, 22.551907, 15.649395>,  <15.536726, 22.262564, 15.610662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.810187, 22.551907, 15.649395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304244, -0.161882, -0.938738,
		-0.663366, 0.671231, -0.330748,
		0.683652, 0.723355, 0.096831,
		16.015284, 22.768913, 15.678444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.454611, 22.690155, 14.915066>,  <15.536726, 22.262564, 15.610662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.454611, 22.690155, 14.915066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.794269, 22.842018, 15.061934>,  <15.998063, 22.933136, 15.150054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.794269, 22.842018, 15.061934>,  <15.454611, 22.690155, 14.915066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.794269, 22.842018, 15.061934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358033, 0.097301, -0.928625,
		-0.388285, 0.919996, -0.053307,
		0.849145, 0.379657, 0.367170,
		16.049011, 22.955915, 15.172085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.584084, 23.278814, 14.485952>,  <15.454611, 22.690155, 14.915066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.584084, 23.278814, 14.485952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.932057, 23.171108, 14.651220>,  <16.140842, 23.106483, 14.750381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.932057, 23.171108, 14.651220>,  <15.584084, 23.278814, 14.485952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.932057, 23.171108, 14.651220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425367, -0.014263, -0.904909,
		0.249554, 0.962960, 0.102129,
		0.869934, -0.269266, 0.413170,
		16.193037, 23.090328, 14.775171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.089008, 23.844690, 14.254335>,  <15.584084, 23.278814, 14.485952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.089008, 23.844690, 14.254335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.267036, 23.493755, 14.326105>,  <16.373854, 23.283195, 14.369167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.267036, 23.493755, 14.326105>,  <16.089008, 23.844690, 14.254335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.267036, 23.493755, 14.326105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474935, 0.061399, -0.877876,
		0.759175, 0.475934, 0.444004,
		0.445072, -0.877335, 0.179425,
		16.400558, 23.230555, 14.379932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.691591, 23.880976, 13.874492>,  <16.089008, 23.844690, 14.254335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.691591, 23.880976, 13.874492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.706989, 23.490292, 13.958921>,  <16.716228, 23.255880, 14.009580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.706989, 23.490292, 13.958921>,  <16.691591, 23.880976, 13.874492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.706989, 23.490292, 13.958921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454324, -0.171028, -0.874265,
		0.890004, 0.129553, 0.437160,
		0.038497, -0.976712, 0.211075,
		16.718538, 23.197279, 14.022243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.450481, 23.704594, 13.708554>,  <16.691591, 23.880976, 13.874492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.450481, 23.704594, 13.708554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.270973, 23.349247, 13.747349>,  <17.163267, 23.136038, 13.770625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.270973, 23.349247, 13.747349>,  <17.450481, 23.704594, 13.708554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.270973, 23.349247, 13.747349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664812, -0.404408, -0.628076,
		0.597184, -0.217386, 0.772084,
		-0.448772, -0.888368, 0.096986,
		17.136341, 23.082737, 13.776444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.979893, 23.105751, 13.763015>,  <17.450481, 23.704594, 13.708554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.979893, 23.105751, 13.763015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.629017, 22.982758, 13.615507>,  <17.418491, 22.908960, 13.527002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.629017, 22.982758, 13.615507>,  <17.979893, 23.105751, 13.763015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.629017, 22.982758, 13.615507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479444, -0.519512, -0.707277,
		0.025897, -0.797220, 0.603133,
		-0.877190, -0.307485, -0.368769,
		17.365860, 22.890512, 13.504876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.061968, 22.369553, 13.589614>,  <17.979893, 23.105751, 13.763015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.061968, 22.369553, 13.589614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.727375, 22.473427, 13.396591>,  <17.526619, 22.535751, 13.280778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.727375, 22.473427, 13.396591>,  <18.061968, 22.369553, 13.589614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.727375, 22.473427, 13.396591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315335, -0.492085, -0.811429,
		-0.448171, -0.830914, 0.329734,
		-0.836484, 0.259683, -0.482555,
		17.476431, 22.551332, 13.251824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.831135, 21.770643, 13.336278>,  <18.061968, 22.369553, 13.589614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.831135, 21.770643, 13.336278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.644279, 22.036804, 13.103376>,  <17.532166, 22.196501, 12.963635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.644279, 22.036804, 13.103376>,  <17.831135, 21.770643, 13.336278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.644279, 22.036804, 13.103376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319698, -0.486857, -0.812874,
		-0.824363, -0.565871, 0.014701,
		-0.467138, 0.665403, -0.582254,
		17.504137, 22.236425, 12.928700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.531141, 21.411045, 12.830837>,  <17.831135, 21.770643, 13.336278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.531141, 21.411045, 12.830837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.537891, 21.776936, 12.669348>,  <17.541941, 21.996469, 12.572454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.537891, 21.776936, 12.669348>,  <17.531141, 21.411045, 12.830837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.537891, 21.776936, 12.669348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312398, -0.388389, -0.866926,
		-0.949801, -0.111492, -0.292313,
		0.016876, 0.914726, -0.403723,
		17.542953, 22.051353, 12.548231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.220001, 21.286427, 12.232351>,  <17.531141, 21.411045, 12.830837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.220001, 21.286427, 12.232351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.382061, 21.647804, 12.176296>,  <17.479298, 21.864632, 12.142663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.382061, 21.647804, 12.176296>,  <17.220001, 21.286427, 12.232351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.382061, 21.647804, 12.176296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136040, -0.211150, -0.967940,
		-0.904072, 0.373096, -0.208452,
		0.405150, 0.903446, -0.140139,
		17.503607, 21.918839, 12.134254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.985128, 21.548277, 11.608392>,  <17.220001, 21.286427, 12.232351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.985128, 21.548277, 11.608392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.339111, 21.710064, 11.700700>,  <17.551502, 21.807137, 11.756084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.339111, 21.710064, 11.700700>,  <16.985128, 21.548277, 11.608392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.339111, 21.710064, 11.700700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314606, -0.153936, -0.936657,
		-0.343322, 0.901505, -0.263474,
		0.884960, 0.404465, 0.230769,
		17.604599, 21.831404, 11.769931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.189600, 22.127502, 11.108412>,  <16.985128, 21.548277, 11.608392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.189600, 22.127502, 11.108412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.532349, 21.990738, 11.262745>,  <17.737997, 21.908678, 11.355345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.532349, 21.990738, 11.262745>,  <17.189600, 22.127502, 11.108412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.532349, 21.990738, 11.262745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427158, 0.051866, -0.902688,
		0.288630, 0.938299, 0.190493,
		0.856872, -0.341913, 0.385832,
		17.789410, 21.888165, 11.378494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.719414, 22.592199, 10.850863>,  <17.189600, 22.127502, 11.108412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.719414, 22.592199, 10.850863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.899281, 22.252087, 10.960279>,  <18.007200, 22.048019, 11.025929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.899281, 22.252087, 10.960279>,  <17.719414, 22.592199, 10.850863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.899281, 22.252087, 10.960279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438936, -0.056364, -0.896749,
		0.777905, 0.523305, 0.347874,
		0.449665, -0.850280, 0.273543,
		18.034180, 21.997004, 11.042342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.443972, 22.663551, 10.626963>,  <17.719414, 22.592199, 10.850863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.443972, 22.663551, 10.626963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.437569, 22.267155, 10.680142>,  <18.433727, 22.029316, 10.712050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.437569, 22.267155, 10.680142>,  <18.443972, 22.663551, 10.626963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.437569, 22.267155, 10.680142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578370, -0.117640, -0.807248,
		0.815618, 0.063973, 0.575044,
		-0.016006, -0.990994, 0.132950,
		18.432766, 21.969856, 10.720027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.048817, 22.478977, 10.386772>,  <18.443972, 22.663551, 10.626963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.048817, 22.478977, 10.386772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.877071, 22.117981, 10.400376>,  <18.774023, 21.901382, 10.408539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.877071, 22.117981, 10.400376>,  <19.048817, 22.478977, 10.386772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.877071, 22.117981, 10.400376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547542, -0.290075, -0.784891,
		0.718223, -0.318382, 0.618700,
		-0.429364, -0.902491, 0.034011,
		18.748262, 21.847233, 10.410580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.526373, 22.006144, 10.402164>,  <19.048817, 22.478977, 10.386772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.526373, 22.006144, 10.402164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.223976, 21.772251, 10.284476>,  <19.042538, 21.631916, 10.213863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.223976, 21.772251, 10.284476>,  <19.526373, 22.006144, 10.402164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.223976, 21.772251, 10.284476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597067, -0.431750, -0.676094,
		0.268304, -0.686791, 0.675523,
		-0.755992, -0.584731, -0.294220,
		18.997179, 21.596832, 10.196210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.941629, 21.430067, 10.264709>,  <19.526373, 22.006144, 10.402164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.941629, 21.430067, 10.264709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.584663, 21.415134, 10.084841>,  <19.370483, 21.406176, 9.976919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.584663, 21.415134, 10.084841>,  <19.941629, 21.430067, 10.264709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.584663, 21.415134, 10.084841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404555, -0.507551, -0.760741,
		-0.199834, -0.860812, 0.468048,
		-0.892413, -0.037330, -0.449672,
		19.316940, 21.403936, 9.949939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.988029, 20.790335, 9.986352>,  <19.941629, 21.430067, 10.264709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.988029, 20.790335, 9.986352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.668358, 20.927719, 9.789032>,  <19.476555, 21.010149, 9.670640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.668358, 20.927719, 9.789032>,  <19.988029, 20.790335, 9.986352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.668358, 20.927719, 9.789032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323807, -0.445423, -0.834714,
		-0.506421, -0.826820, 0.244757,
		-0.799179, 0.343463, -0.493302,
		19.428604, 21.030758, 9.641042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.796824, 20.276804, 9.611640>,  <19.988029, 20.790335, 9.986352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.796824, 20.276804, 9.611640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.638985, 20.599155, 9.435074>,  <19.544281, 20.792566, 9.329134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.638985, 20.599155, 9.435074>,  <19.796824, 20.276804, 9.611640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.638985, 20.599155, 9.435074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491048, -0.221093, -0.842609,
		-0.776637, -0.549248, -0.308483,
		-0.394598, 0.805881, -0.441416,
		19.520605, 20.840919, 9.302649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.474094, 20.058472, 8.937537>,  <19.796824, 20.276804, 9.611640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.474094, 20.058472, 8.937537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.579311, 20.444298, 8.945776>,  <19.642443, 20.675793, 8.950719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.579311, 20.444298, 8.945776>,  <19.474094, 20.058472, 8.937537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.579311, 20.444298, 8.945776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584066, -0.142214, -0.799151,
		-0.767903, 0.222241, -0.600778,
		0.263044, 0.964564, 0.020597,
		19.658224, 20.733667, 8.951955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.880594, 20.195055, 9.353534>,  <19.474094, 20.058472, 8.937537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.880594, 20.195055, 9.353534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.984337, 19.822563, 9.251128>,  <19.046581, 19.599068, 9.189685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.984337, 19.822563, 9.251128>,  <18.880594, 20.195055, 9.353534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.984337, 19.822563, 9.251128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602115, -0.363169, 0.711031,
		-0.755111, -0.030259, -0.654898,
		0.259354, -0.931232, -0.256013,
		19.062143, 19.543194, 9.174324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.271351, 19.886833, 9.441378>,  <18.880594, 20.195055, 9.353534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.271351, 19.886833, 9.441378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.541653, 19.592972, 9.417251>,  <18.703835, 19.416655, 9.402774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.541653, 19.592972, 9.417251>,  <18.271351, 19.886833, 9.441378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.541653, 19.592972, 9.417251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503518, -0.519811, 0.690120,
		-0.538355, -0.435980, -0.721177,
		0.675754, -0.734655, -0.060319,
		18.744379, 19.372576, 9.399155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.876465, 19.336195, 9.279663>,  <18.271351, 19.886833, 9.441378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.876465, 19.336195, 9.279663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.208675, 19.229439, 9.475213>,  <18.408001, 19.165384, 9.592543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.208675, 19.229439, 9.475213>,  <17.876465, 19.336195, 9.279663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.208675, 19.229439, 9.475213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556960, -0.405671, 0.724725,
		0.004900, -0.874185, -0.485568,
		0.830525, -0.266891, 0.488874,
		18.457832, 19.149372, 9.621876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.641537, 18.848909, 9.635300>,  <17.876465, 19.336195, 9.279663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.641537, 18.848909, 9.635300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.978123, 18.906521, 9.843604>,  <18.180075, 18.941088, 9.968587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.978123, 18.906521, 9.843604>,  <17.641537, 18.848909, 9.635300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.978123, 18.906521, 9.843604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490910, -0.198826, 0.848219,
		0.225709, -0.969394, -0.096599,
		0.841464, 0.144029, 0.520762,
		18.230562, 18.949730, 9.999832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.716677, 18.261356, 9.903929>,  <17.641537, 18.848909, 9.635300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.716677, 18.261356, 9.903929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.902527, 18.532780, 10.131500>,  <18.014036, 18.695635, 10.268043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.902527, 18.532780, 10.131500>,  <17.716677, 18.261356, 9.903929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.902527, 18.532780, 10.131500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637111, -0.190045, 0.746976,
		0.614990, -0.709534, 0.344019,
		0.464626, 0.678560, 0.568928,
		18.041914, 18.736347, 10.302178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.740717, 17.971741, 10.578530>,  <17.716677, 18.261356, 9.903929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.740717, 17.971741, 10.578530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.849087, 18.348770, 10.656666>,  <17.914108, 18.574987, 10.703547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.849087, 18.348770, 10.656666>,  <17.740717, 17.971741, 10.578530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.849087, 18.348770, 10.656666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553130, -0.013642, 0.832983,
		0.787813, -0.333722, 0.517669,
		0.270923, 0.942573, 0.195339,
		17.930363, 18.631542, 10.715267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.098576, 18.034115, 11.309946>,  <17.740717, 17.971741, 10.578530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.098576, 18.034115, 11.309946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.951824, 18.393539, 11.213621>,  <17.863773, 18.609194, 11.155827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.951824, 18.393539, 11.213621>,  <18.098576, 18.034115, 11.309946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.951824, 18.393539, 11.213621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501424, 0.027030, 0.864779,
		0.783565, 0.438019, 0.440643,
		-0.366879, 0.898559, -0.240813,
		17.841761, 18.663107, 11.141377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.042902, 18.329975, 11.905005>,  <18.098576, 18.034115, 11.309946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.042902, 18.329975, 11.905005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.862839, 18.612835, 11.686906>,  <17.754801, 18.782551, 11.556046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.862839, 18.612835, 11.686906>,  <18.042902, 18.329975, 11.905005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.862839, 18.612835, 11.686906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667874, 0.138669, 0.731242,
		0.592708, 0.693332, 0.409865,
		-0.450158, 0.707151, -0.545249,
		17.727791, 18.824980, 11.523332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.078608, 19.077131, 12.261920>,  <18.042902, 18.329975, 11.905005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.078608, 19.077131, 12.261920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.771629, 19.004955, 12.015841>,  <17.587442, 18.961651, 11.868193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.771629, 19.004955, 12.015841>,  <18.078608, 19.077131, 12.261920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.771629, 19.004955, 12.015841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640960, 0.194940, 0.742407,
		-0.014032, 0.964075, -0.265260,
		-0.767446, -0.180438, -0.615198,
		17.541395, 18.950823, 11.831281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.656345, 19.673695, 12.428519>,  <18.078608, 19.077131, 12.261920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.656345, 19.673695, 12.428519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.416149, 19.421383, 12.231936>,  <17.272032, 19.269997, 12.113987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.416149, 19.421383, 12.231936>,  <17.656345, 19.673695, 12.428519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.416149, 19.421383, 12.231936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717970, 0.154734, 0.678657,
		-0.352036, 0.760380, -0.545796,
		-0.600491, -0.630777, -0.491458,
		17.236002, 19.232149, 12.084499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.987318, 19.955545, 12.459443>,  <17.656345, 19.673695, 12.428519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.987318, 19.955545, 12.459443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.892441, 19.577038, 12.371519>,  <16.835514, 19.349934, 12.318765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.892441, 19.577038, 12.371519>,  <16.987318, 19.955545, 12.459443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.892441, 19.577038, 12.371519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764037, 0.041961, 0.643807,
		-0.599991, 0.320649, -0.732936,
		-0.237191, -0.946268, -0.219811,
		16.821283, 19.293158, 12.305575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.326399, 19.981558, 12.249889>,  <16.987318, 19.955545, 12.459443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.326399, 19.981558, 12.249889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.391216, 19.603088, 12.361957>,  <16.430107, 19.376007, 12.429197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.391216, 19.603088, 12.361957>,  <16.326399, 19.981558, 12.249889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.391216, 19.603088, 12.361957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887192, -0.015397, 0.461143,
		-0.432008, -0.323290, -0.841934,
		0.162046, -0.946175, 0.280169,
		16.439831, 19.319237, 12.446007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.794789, 19.642612, 12.081796>,  <16.326399, 19.981558, 12.249889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.794789, 19.642612, 12.081796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.947860, 19.413204, 12.371522>,  <16.039701, 19.275558, 12.545358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.947860, 19.413204, 12.371522>,  <15.794789, 19.642612, 12.081796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.947860, 19.413204, 12.371522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.884332, -0.000454, 0.466858,
		-0.267424, -0.819191, -0.507356,
		0.382676, -0.573520, 0.724316,
		16.062662, 19.241148, 12.588817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.248199, 19.320454, 12.413598>,  <15.794789, 19.642612, 12.081796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.248199, 19.320454, 12.413598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.532599, 19.250309, 12.685987>,  <15.703240, 19.208223, 12.849421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.532599, 19.250309, 12.685987>,  <15.248199, 19.320454, 12.413598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.532599, 19.250309, 12.685987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691513, 0.001374, 0.722362,
		-0.127610, -0.984503, -0.120288,
		0.711003, -0.175362, 0.680972,
		15.745900, 19.197701, 12.890279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.923563, 18.852758, 12.815169>,  <15.248199, 19.320454, 12.413598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.923563, 18.852758, 12.815169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.224685, 19.018063, 13.020109>,  <15.405357, 19.117245, 13.143073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.224685, 19.018063, 13.020109>,  <14.923563, 18.852758, 12.815169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.224685, 19.018063, 13.020109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603453, 0.122381, 0.787951,
		0.262930, -0.902350, 0.341514,
		0.752803, 0.413264, 0.512349,
		15.450526, 19.142040, 13.173814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.950745, 18.678331, 13.622131>,  <14.923563, 18.852758, 12.815169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.950745, 18.678331, 13.622131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.158706, 19.019680, 13.606867>,  <15.283483, 19.224489, 13.597708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.158706, 19.019680, 13.606867>,  <14.950745, 18.678331, 13.622131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.158706, 19.019680, 13.606867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406964, 0.286720, 0.867278,
		0.751053, -0.435370, 0.496358,
		0.519903, 0.853372, -0.038162,
		15.314677, 19.275692, 13.595418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.271616, 18.721722, 14.278349>,  <14.950745, 18.678331, 13.622131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.271616, 18.721722, 14.278349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.277640, 19.099667, 14.147503>,  <15.281255, 19.326433, 14.068995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.277640, 19.099667, 14.147503>,  <15.271616, 18.721722, 14.278349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.277640, 19.099667, 14.147503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118468, 0.326535, 0.937732,
		0.992844, 0.024630, 0.116854,
		0.015060, 0.944864, -0.327116,
		15.282159, 19.383125, 14.049368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.825336, 19.114616, 14.544188>,  <15.271616, 18.721722, 14.278349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.825336, 19.114616, 14.544188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.575435, 19.406834, 14.433924>,  <15.425494, 19.582165, 14.367765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.575435, 19.406834, 14.433924>,  <15.825336, 19.114616, 14.544188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.575435, 19.406834, 14.433924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049038, 0.315631, 0.947614,
		0.779281, 0.605543, -0.161367,
		-0.624754, 0.730544, -0.275660,
		15.388008, 19.625998, 14.351226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.838451, 19.588430, 15.123126>,  <15.825336, 19.114616, 14.544188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.838451, 19.588430, 15.123126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.563743, 19.795734, 14.919262>,  <15.398917, 19.920116, 14.796944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.563743, 19.795734, 14.919262>,  <15.838451, 19.588430, 15.123126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.563743, 19.795734, 14.919262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289095, 0.448573, 0.845699,
		0.666910, 0.728142, -0.158242,
		-0.686772, 0.518258, -0.509660,
		15.357711, 19.951212, 14.766364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.910375, 20.306114, 15.294484>,  <15.838451, 19.588430, 15.123126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.910375, 20.306114, 15.294484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.530667, 20.223263, 15.199839>,  <15.302843, 20.173552, 15.143051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.530667, 20.223263, 15.199839>,  <15.910375, 20.306114, 15.294484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.530667, 20.223263, 15.199839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286918, 0.262516, 0.921283,
		-0.128707, 0.942435, -0.308627,
		-0.949269, -0.207126, -0.236614,
		15.245887, 20.161125, 15.128855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.528257, 20.964121, 15.365705>,  <15.910375, 20.306114, 15.294484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.528257, 20.964121, 15.365705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.270617, 20.661995, 15.414095>,  <15.116034, 20.480719, 15.443129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.270617, 20.661995, 15.414095>,  <15.528257, 20.964121, 15.365705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.270617, 20.661995, 15.414095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361285, 0.439779, 0.822233,
		-0.674247, 0.485895, -0.556145,
		-0.644100, -0.755315, 0.120973,
		15.077388, 20.435400, 15.450387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.931503, 21.307785, 15.457223>,  <15.528257, 20.964121, 15.365705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.931503, 21.307785, 15.457223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.866887, 20.957047, 15.638350>,  <14.828117, 20.746603, 15.747025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.866887, 20.957047, 15.638350>,  <14.931503, 21.307785, 15.457223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.866887, 20.957047, 15.638350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428649, 0.475643, 0.768130,
		-0.888912, -0.070016, -0.452695,
		-0.161540, -0.876848, 0.452817,
		14.818425, 20.693993, 15.774195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.243020, 21.407579, 15.873598>,  <14.931503, 21.307785, 15.457223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.243020, 21.407579, 15.873598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.383769, 21.071609, 16.038868>,  <14.468219, 20.870028, 16.138029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.383769, 21.071609, 16.038868>,  <14.243020, 21.407579, 15.873598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.383769, 21.071609, 16.038868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495053, 0.207632, 0.843689,
		-0.794423, -0.501414, -0.342748,
		0.351872, -0.839925, 0.413174,
		14.489330, 20.819632, 16.162821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.783788, 21.226109, 16.369585>,  <14.243020, 21.407579, 15.873598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.783788, 21.226109, 16.369585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.097802, 21.004589, 16.480600>,  <14.286211, 20.871677, 16.547209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.097802, 21.004589, 16.480600>,  <13.783788, 21.226109, 16.369585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.097802, 21.004589, 16.480600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212090, 0.180662, 0.960406,
		-0.582011, -0.812816, 0.024371,
		0.785036, -0.553798, 0.277537,
		14.333313, 20.838449, 16.563862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.616698, 20.708094, 16.870134>,  <13.783788, 21.226109, 16.369585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.616698, 20.708094, 16.870134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.992595, 20.814999, 16.955416>,  <14.218133, 20.879141, 17.006584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.992595, 20.814999, 16.955416>,  <13.616698, 20.708094, 16.870134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.992595, 20.814999, 16.955416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191254, -0.105953, 0.975805,
		0.283386, -0.957781, -0.048453,
		0.939741, 0.267262, 0.213205,
		14.274517, 20.895178, 17.019377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.684659, 20.388662, 17.525642>,  <13.616698, 20.708094, 16.870134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.684659, 20.388662, 17.525642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.016181, 20.608860, 17.485571>,  <14.215095, 20.740978, 17.461529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.016181, 20.608860, 17.485571>,  <13.684659, 20.388662, 17.525642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.016181, 20.608860, 17.485571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001638, 0.176647, 0.984273,
		0.559535, -0.815934, 0.145504,
		0.828805, 0.550497, -0.100177,
		14.264823, 20.774010, 17.455519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.267595, 20.070538, 17.827358>,  <13.684659, 20.388662, 17.525642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.267595, 20.070538, 17.827358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.335326, 20.464649, 17.836788>,  <14.375964, 20.701117, 17.842445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.335326, 20.464649, 17.836788>,  <14.267595, 20.070538, 17.827358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.335326, 20.464649, 17.836788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241136, -0.064611, 0.968338,
		0.955605, -0.158280, -0.248527,
		0.169326, 0.985278, 0.023575,
		14.386124, 20.760233, 17.843861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.929705, 20.260609, 18.077101>,  <14.267595, 20.070538, 17.827358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.929705, 20.260609, 18.077101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.706773, 20.584522, 18.150457>,  <14.573014, 20.778872, 18.194471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.706773, 20.584522, 18.150457>,  <14.929705, 20.260609, 18.077101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.706773, 20.584522, 18.150457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313163, 0.000455, 0.949699,
		0.768969, 0.586726, -0.253848,
		-0.557329, 0.809785, 0.183390,
		14.539575, 20.827457, 18.205475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.243565, 20.414240, 18.639658>,  <14.929705, 20.260609, 18.077101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.243565, 20.414240, 18.639658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.958289, 20.693867, 18.660326>,  <14.787124, 20.861643, 18.672728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.958289, 20.693867, 18.660326>,  <15.243565, 20.414240, 18.639658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.958289, 20.693867, 18.660326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110127, 0.038945, 0.993154,
		0.692267, 0.713997, -0.104761,
		-0.713189, 0.699065, 0.051670,
		14.744332, 20.903585, 18.675827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.591945, 20.985054, 19.009470>,  <15.243565, 20.414240, 18.639658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.591945, 20.985054, 19.009470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.194041, 21.021088, 19.028814>,  <14.955299, 21.042707, 19.040421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.194041, 21.021088, 19.028814>,  <15.591945, 20.985054, 19.009470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.194041, 21.021088, 19.028814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046414, -0.023563, 0.998644,
		0.091101, 0.995655, 0.019259,
		-0.994760, 0.090084, 0.048359,
		14.895614, 21.048113, 19.043322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.552577, 21.266874, 19.658957>,  <15.591945, 20.985054, 19.009470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.552577, 21.266874, 19.658957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.169940, 21.170956, 19.592712>,  <14.940357, 21.113405, 19.552967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.169940, 21.170956, 19.592712>,  <15.552577, 21.266874, 19.658957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.169940, 21.170956, 19.592712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148172, -0.089134, 0.984937,
		-0.250946, 0.966723, 0.049734,
		-0.956594, -0.239797, -0.165609,
		14.882962, 21.099016, 19.543030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.053460, 21.722927, 19.975105>,  <15.552577, 21.266874, 19.658957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.053460, 21.722927, 19.975105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.854638, 21.378342, 19.933506>,  <14.735345, 21.171591, 19.908546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.854638, 21.378342, 19.933506>,  <15.053460, 21.722927, 19.975105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.854638, 21.378342, 19.933506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283156, 0.047740, 0.957885,
		-0.820218, 0.505570, -0.267658,
		-0.497056, -0.861464, -0.103998,
		14.705522, 21.119902, 19.902308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.437842, 21.811153, 20.469788>,  <15.053460, 21.722927, 19.975105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.437842, 21.811153, 20.469788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.442502, 21.416237, 20.406389>,  <14.445298, 21.179287, 20.368351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.442502, 21.416237, 20.406389>,  <14.437842, 21.811153, 20.469788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.442502, 21.416237, 20.406389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261416, -0.156001, 0.952536,
		-0.965156, 0.030337, -0.259911,
		0.011650, -0.987291, -0.158496,
		14.445997, 21.120050, 20.358841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.817982, 21.615175, 20.725147>,  <14.437842, 21.811153, 20.469788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.817982, 21.615175, 20.725147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.065417, 21.300892, 20.724251>,  <14.213879, 21.112322, 20.723713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.065417, 21.300892, 20.724251>,  <13.817982, 21.615175, 20.725147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.065417, 21.300892, 20.724251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183938, -0.147585, 0.971795,
		-0.763881, -0.600730, -0.235817,
		0.618590, -0.785711, -0.002241,
		14.250995, 21.065178, 20.723579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.502339, 21.055485, 21.177696>,  <13.817982, 21.615175, 20.725147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.502339, 21.055485, 21.177696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.881845, 20.929184, 21.182568>,  <14.109548, 20.853403, 21.185492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.881845, 20.929184, 21.182568>,  <13.502339, 21.055485, 21.177696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.881845, 20.929184, 21.182568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082077, -0.209033, 0.974458,
		-0.305146, -0.925528, -0.224239,
		0.948762, -0.315757, 0.012179,
		14.166473, 20.834457, 21.186222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.414399, 20.577435, 21.658144>,  <13.502339, 21.055485, 21.177696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.414399, 20.577435, 21.658144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.809554, 20.636524, 21.639156>,  <14.046647, 20.671978, 21.627764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.809554, 20.636524, 21.639156>,  <13.414399, 20.577435, 21.658144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.809554, 20.636524, 21.639156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063952, -0.108892, 0.991994,
		0.141375, -0.983015, -0.117021,
		0.987889, 0.147727, -0.047471,
		14.105921, 20.680841, 21.624914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.682120, 20.058758, 22.060972>,  <13.414399, 20.577435, 21.658144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.682120, 20.058758, 22.060972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.940257, 20.364189, 22.052164>,  <14.095139, 20.547447, 22.046879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.940257, 20.364189, 22.052164>,  <13.682120, 20.058758, 22.060972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.940257, 20.364189, 22.052164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087083, -0.044899, 0.995189,
		0.758915, -0.644153, -0.095470,
		0.645341, 0.763578, -0.022021,
		14.133860, 20.593262, 22.045557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.362830, 19.919823, 22.513975>,  <13.682120, 20.058758, 22.060972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.362830, 19.919823, 22.513975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.273839, 20.308350, 22.480396>,  <14.220444, 20.541466, 22.460249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.273839, 20.308350, 22.480396>,  <14.362830, 19.919823, 22.513975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.273839, 20.308350, 22.480396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087500, 0.105650, 0.990546,
		0.971003, 0.213030, -0.108495,
		-0.222479, 0.971317, -0.083946,
		14.207095, 20.599745, 22.455212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.888721, 19.686195, 22.965816>,  <14.362830, 19.919823, 22.513975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.888721, 19.686195, 22.965816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.054681, 19.358898, 23.124983>,  <15.154257, 19.162519, 23.220482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.054681, 19.358898, 23.124983>,  <14.888721, 19.686195, 22.965816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.054681, 19.358898, 23.124983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615782, -0.069436, -0.784851,
		0.669830, 0.570661, 0.475051,
		0.414898, -0.818245, 0.397914,
		15.179151, 19.113424, 23.244356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.653363, 19.771725, 22.950802>,  <14.888721, 19.686195, 22.965816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.653363, 19.771725, 22.950802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.605292, 19.377224, 22.996176>,  <15.576450, 19.140524, 23.023399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.605292, 19.377224, 22.996176>,  <15.653363, 19.771725, 22.950802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.605292, 19.377224, 22.996176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628832, -0.164041, -0.760040,
		0.768198, -0.020007, 0.639900,
		-0.120176, -0.986251, 0.113435,
		15.569240, 19.081348, 23.030207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.343344, 19.396755, 23.023779>,  <15.653363, 19.771725, 22.950802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.343344, 19.396755, 23.023779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.066914, 19.155342, 22.864702>,  <15.901055, 19.010494, 22.769257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.066914, 19.155342, 22.864702>,  <16.343344, 19.396755, 23.023779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.066914, 19.155342, 22.864702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615389, -0.202729, -0.761707,
		0.379093, -0.771133, 0.511510,
		-0.691075, -0.603535, -0.397694,
		15.859591, 18.974281, 22.745394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.647432, 19.142195, 22.524721>,  <16.343344, 19.396755, 23.023779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.647432, 19.142195, 22.524721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.277283, 19.025383, 22.428057>,  <16.055193, 18.955296, 22.370058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.277283, 19.025383, 22.428057>,  <16.647432, 19.142195, 22.524721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.277283, 19.025383, 22.428057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295544, -0.156663, -0.942396,
		0.237346, -0.943492, 0.231280,
		-0.925376, -0.292028, -0.241660,
		15.999670, 18.937775, 22.355558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.736420, 18.491966, 22.198744>,  <16.647432, 19.142195, 22.524721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.736420, 18.491966, 22.198744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.372856, 18.601425, 22.072886>,  <16.154718, 18.667101, 21.997370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.372856, 18.601425, 22.072886>,  <16.736420, 18.491966, 22.198744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.372856, 18.601425, 22.072886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244011, -0.262853, -0.933470,
		-0.338152, -0.925215, 0.172135,
		-0.908907, 0.273652, -0.314647,
		16.100183, 18.683519, 21.978491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.522793, 18.025232, 21.609650>,  <16.736420, 18.491966, 22.198744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.522793, 18.025232, 21.609650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.269863, 18.332184, 21.567139>,  <16.118105, 18.516356, 21.541632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.269863, 18.332184, 21.567139>,  <16.522793, 18.025232, 21.609650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.269863, 18.332184, 21.567139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014486, -0.148871, -0.988751,
		-0.774567, -0.623672, 0.105251,
		-0.632325, 0.767379, -0.106276,
		16.080166, 18.562397, 21.535255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.929490, 17.729317, 21.265886>,  <16.522793, 18.025232, 21.609650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.929490, 17.729317, 21.265886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.965669, 18.122070, 21.199284>,  <15.987376, 18.357723, 21.159323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.965669, 18.122070, 21.199284>,  <15.929490, 17.729317, 21.265886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.965669, 18.122070, 21.199284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088179, -0.158639, -0.983391,
		-0.991990, 0.103627, 0.072233,
		0.090447, 0.981883, -0.166507,
		15.992803, 18.416636, 21.149332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.369900, 17.904331, 20.814392>,  <15.929490, 17.729317, 21.265886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.369900, 17.904331, 20.814392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.653054, 18.184372, 20.776960>,  <15.822947, 18.352396, 20.754501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.653054, 18.184372, 20.776960>,  <15.369900, 17.904331, 20.814392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.653054, 18.184372, 20.776960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046656, -0.085851, -0.995215,
		-0.704784, 0.708865, -0.028109,
		0.707886, 0.700100, -0.093580,
		15.865420, 18.394402, 20.748886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.181283, 17.984539, 20.123226>,  <15.369900, 17.904331, 20.814392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.181283, 17.984539, 20.123226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.513658, 18.199844, 20.179537>,  <15.713082, 18.329027, 20.213324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.513658, 18.199844, 20.179537>,  <15.181283, 17.984539, 20.123226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.513658, 18.199844, 20.179537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120528, 0.072868, -0.990032,
		-0.543155, 0.839621, -0.004327,
		0.830937, 0.538262, 0.140776,
		15.762938, 18.361322, 20.221769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.137794, 18.576017, 19.641506>,  <15.181283, 17.984539, 20.123226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.137794, 18.576017, 19.641506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.523225, 18.554886, 19.746368>,  <15.754483, 18.542208, 19.809286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.523225, 18.554886, 19.746368>,  <15.137794, 18.576017, 19.641506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.523225, 18.554886, 19.746368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251732, -0.151703, -0.955833,
		0.090264, 0.987013, -0.132880,
		0.963578, -0.052827, 0.262157,
		15.812299, 18.539038, 19.825016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.433750, 18.996408, 19.194616>,  <15.137794, 18.576017, 19.641506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.433750, 18.996408, 19.194616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.722564, 18.749866, 19.320328>,  <15.895852, 18.601940, 19.395754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.722564, 18.749866, 19.320328>,  <15.433750, 18.996408, 19.194616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.722564, 18.749866, 19.320328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345648, -0.072142, -0.935587,
		0.599328, 0.784156, 0.160953,
		0.722034, -0.616356, 0.314278,
		15.939174, 18.564960, 19.414612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.171778, 19.147303, 18.891405>,  <15.433750, 18.996408, 19.194616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.171778, 19.147303, 18.891405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.165489, 18.764912, 19.008615>,  <16.161716, 18.535477, 19.078941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.165489, 18.764912, 19.008615>,  <16.171778, 19.147303, 18.891405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.165489, 18.764912, 19.008615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442082, -0.269506, -0.855529,
		0.896837, 0.116090, 0.426857,
		-0.015723, -0.955976, 0.293024,
		16.160772, 18.478119, 19.096523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.866282, 18.862625, 18.829882>,  <16.171778, 19.147303, 18.891405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.866282, 18.862625, 18.829882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.589573, 18.574406, 18.810860>,  <16.423548, 18.401474, 18.799446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.589573, 18.574406, 18.810860>,  <16.866282, 18.862625, 18.829882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.589573, 18.574406, 18.810860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450266, -0.378921, -0.808504,
		0.564549, -0.580711, 0.586566,
		-0.691769, -0.720551, -0.047555,
		16.382042, 18.358240, 18.796593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.213379, 18.289331, 18.711388>,  <16.866282, 18.862625, 18.829882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.213379, 18.289331, 18.711388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.844547, 18.192070, 18.590956>,  <16.623249, 18.133713, 18.518696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.844547, 18.192070, 18.590956>,  <17.213379, 18.289331, 18.711388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.844547, 18.192070, 18.590956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377995, -0.398958, -0.835436,
		0.083020, -0.884143, 0.459780,
		-0.922078, -0.243153, -0.301080,
		16.567924, 18.119123, 18.500631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.317457, 17.685539, 18.305527>,  <17.213379, 18.289331, 18.711388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.317457, 17.685539, 18.305527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.943298, 17.759476, 18.184952>,  <16.718803, 17.803837, 18.112606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.943298, 17.759476, 18.184952>,  <17.317457, 17.685539, 18.305527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.943298, 17.759476, 18.184952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261140, -0.213650, -0.941360,
		-0.238408, -0.959263, 0.151577,
		-0.935397, 0.184845, -0.301438,
		16.662680, 17.814928, 18.094521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.134150, 17.015293, 18.004541>,  <17.317457, 17.685539, 18.305527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.134150, 17.015293, 18.004541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.933655, 17.337608, 17.878386>,  <16.813358, 17.530996, 17.802692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.933655, 17.337608, 17.878386>,  <17.134150, 17.015293, 18.004541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.933655, 17.337608, 17.878386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182361, -0.257927, -0.948798,
		-0.845876, -0.533086, -0.017662,
		-0.501236, 0.805787, -0.315389,
		16.783283, 17.579344, 17.783770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.852913, 16.821459, 17.383915>,  <17.134150, 17.015293, 18.004541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.852913, 16.821459, 17.383915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.777340, 17.209869, 17.325388>,  <16.731997, 17.442917, 17.290272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.777340, 17.209869, 17.325388>,  <16.852913, 16.821459, 17.383915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.777340, 17.209869, 17.325388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065338, -0.136241, -0.988519,
		-0.979814, -0.196322, -0.037705,
		-0.188931, 0.971029, -0.146318,
		16.720661, 17.501179, 17.281492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.349371, 16.904289, 16.848656>,  <16.852913, 16.821459, 17.383915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.349371, 16.904289, 16.848656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.546284, 17.252163, 16.863115>,  <16.664433, 17.460888, 16.871792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.546284, 17.252163, 16.863115>,  <16.349371, 16.904289, 16.848656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.546284, 17.252163, 16.863115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011604, 0.034971, -0.999321,
		-0.870358, 0.492368, 0.007124,
		0.492283, 0.869684, 0.036150,
		16.693968, 17.513069, 16.873960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.980189, 17.401039, 16.445259>,  <16.349371, 16.904289, 16.848656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.980189, 17.401039, 16.445259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.360516, 17.520912, 16.476597>,  <16.588711, 17.592836, 16.495399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.360516, 17.520912, 16.476597>,  <15.980189, 17.401039, 16.445259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.360516, 17.520912, 16.476597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049880, 0.101491, -0.993585,
		-0.305714, 0.948625, 0.081551,
		0.950816, 0.299685, 0.078344,
		16.645760, 17.610817, 16.500099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.020443, 17.831310, 15.854784>,  <15.980189, 17.401039, 16.445259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.020443, 17.831310, 15.854784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.396954, 17.774887, 15.977486>,  <16.622860, 17.741034, 16.051107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.396954, 17.774887, 15.977486>,  <16.020443, 17.831310, 15.854784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.396954, 17.774887, 15.977486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333411, 0.245096, -0.910365,
		0.053232, 0.959182, 0.277735,
		0.941278, -0.141060, 0.306755,
		16.679337, 17.732569, 16.069511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.372839, 18.404716, 15.529323>,  <16.020443, 17.831310, 15.854784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.372839, 18.404716, 15.529323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.635300, 18.116283, 15.618326>,  <16.792776, 17.943224, 15.671728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.635300, 18.116283, 15.618326>,  <16.372839, 18.404716, 15.529323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.635300, 18.116283, 15.618326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457339, 0.145436, -0.877319,
		0.600258, 0.677415, 0.425206,
		0.656150, -0.721081, 0.222509,
		16.832144, 17.899960, 15.685079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.003859, 18.662102, 15.264790>,  <16.372839, 18.404716, 15.529323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.003859, 18.662102, 15.264790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.022217, 18.266682, 15.322285>,  <17.033232, 18.029428, 15.356782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.022217, 18.266682, 15.322285>,  <17.003859, 18.662102, 15.264790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.022217, 18.266682, 15.322285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525116, -0.098531, -0.845307,
		0.849792, 0.114274, 0.514582,
		0.045895, -0.988551, 0.143738,
		17.035986, 17.970116, 15.365406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.732321, 18.423975, 15.117407>,  <17.003859, 18.662102, 15.264790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.732321, 18.423975, 15.117407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.522743, 18.083729, 15.099804>,  <17.396996, 17.879581, 15.089242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.522743, 18.083729, 15.099804>,  <17.732321, 18.423975, 15.117407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.522743, 18.083729, 15.099804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501239, -0.266146, -0.823363,
		0.688652, -0.453455, 0.565807,
		-0.523946, -0.850614, -0.044007,
		17.365559, 17.828545, 15.086601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.148527, 18.024405, 14.822495>,  <17.732321, 18.423975, 15.117407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.148527, 18.024405, 14.822495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.836956, 17.778770, 14.771627>,  <17.650013, 17.631390, 14.741107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.836956, 17.778770, 14.771627>,  <18.148527, 18.024405, 14.822495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.836956, 17.778770, 14.771627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426365, -0.369873, -0.825474,
		0.459875, -0.697204, 0.549929,
		-0.778928, -0.614085, -0.127168,
		17.603277, 17.594545, 14.733477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.412539, 17.343725, 14.699718>,  <18.148527, 18.024405, 14.822495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.412539, 17.343725, 14.699718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.045212, 17.317585, 14.543554>,  <17.824816, 17.301901, 14.449856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.045212, 17.317585, 14.543554>,  <18.412539, 17.343725, 14.699718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.045212, 17.317585, 14.543554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383489, -0.391361, -0.836524,
		-0.098122, -0.917914, 0.384456,
		-0.918318, -0.065353, -0.390411,
		17.769716, 17.297979, 14.426431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.203024, 16.687693, 14.435085>,  <18.412539, 17.343725, 14.699718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.203024, 16.687693, 14.435085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.958031, 16.908009, 14.208282>,  <17.811035, 17.040197, 14.072201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.958031, 16.908009, 14.208282>,  <18.203024, 16.687693, 14.435085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.958031, 16.908009, 14.208282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213463, -0.575399, -0.789525,
		-0.761116, -0.604606, 0.234849,
		-0.612483, 0.550788, -0.567006,
		17.774286, 17.073246, 14.038180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.815651, 16.234467, 13.983615>,  <18.203024, 16.687693, 14.435085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.815651, 16.234467, 13.983615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.748039, 16.573215, 13.781929>,  <17.707472, 16.776464, 13.660917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.748039, 16.573215, 13.781929>,  <17.815651, 16.234467, 13.983615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.748039, 16.573215, 13.781929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093458, -0.523043, -0.847167,
		-0.981170, -0.096074, 0.167558,
		-0.169031, 0.846874, -0.504215,
		17.697330, 16.827278, 13.630665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.211218, 16.094315, 13.591434>,  <17.815651, 16.234467, 13.983615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.211218, 16.094315, 13.591434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.356522, 16.424335, 13.418304>,  <17.443703, 16.622347, 13.314427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.356522, 16.424335, 13.418304>,  <17.211218, 16.094315, 13.591434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.356522, 16.424335, 13.418304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058756, -0.443346, -0.894422,
		-0.929834, 0.350337, -0.112573,
		0.363258, 0.825050, -0.432823,
		17.465500, 16.671850, 13.288458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.818399, 16.195494, 12.978233>,  <17.211218, 16.094315, 13.591434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.818399, 16.195494, 12.978233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.153481, 16.399132, 12.899157>,  <17.354528, 16.521315, 12.851710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.153481, 16.399132, 12.899157>,  <16.818399, 16.195494, 12.978233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.153481, 16.399132, 12.899157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000138, -0.362183, -0.932107,
		-0.546130, 0.780799, -0.303472,
		0.837701, 0.509093, -0.197691,
		17.404791, 16.551859, 12.839849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.758471, 16.470108, 12.337978>,  <16.818399, 16.195494, 12.978233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.758471, 16.470108, 12.337978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.156723, 16.480206, 12.373943>,  <17.395674, 16.486265, 12.395522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.156723, 16.480206, 12.373943>,  <16.758471, 16.470108, 12.337978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.156723, 16.480206, 12.373943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093194, -0.206404, -0.974019,
		-0.006032, 0.978141, -0.207855,
		0.995630, 0.025246, 0.089912,
		17.455412, 16.487780, 12.400917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.938173, 16.553722, 11.698247>,  <16.758471, 16.470108, 12.337978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.938173, 16.553722, 11.698247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.256805, 16.411678, 11.893943>,  <17.447985, 16.326452, 12.011360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.256805, 16.411678, 11.893943>,  <16.938173, 16.553722, 11.698247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.256805, 16.411678, 11.893943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333185, -0.417383, -0.845446,
		0.504426, 0.836474, -0.214162,
		0.796582, -0.355109, 0.489240,
		17.495779, 16.305145, 12.040714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.475668, 16.733208, 11.314750>,  <16.938173, 16.553722, 11.698247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.475668, 16.733208, 11.314750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.602142, 16.427887, 11.540103>,  <17.678026, 16.244696, 11.675315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.602142, 16.427887, 11.540103>,  <17.475668, 16.733208, 11.314750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.602142, 16.427887, 11.540103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257313, -0.502591, -0.825344,
		0.913136, 0.405927, 0.037496,
		0.316184, -0.763300, 0.563384,
		17.696997, 16.198896, 11.709118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.190199, 16.678675, 11.063911>,  <17.475668, 16.733208, 11.314750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.190199, 16.678675, 11.063911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.077530, 16.329510, 11.223250>,  <18.009928, 16.120010, 11.318854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.077530, 16.329510, 11.223250>,  <18.190199, 16.678675, 11.063911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.077530, 16.329510, 11.223250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376170, -0.482385, -0.791076,
		0.882698, -0.072979, 0.464239,
		-0.281674, -0.872914, 0.398348,
		17.993029, 16.067636, 11.342755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.677134, 16.227757, 10.821735>,  <18.190199, 16.678675, 11.063911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.677134, 16.227757, 10.821735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.404312, 15.973827, 10.966956>,  <18.240620, 15.821470, 11.054089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.404312, 15.973827, 10.966956>,  <18.677134, 16.227757, 10.821735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.404312, 15.973827, 10.966956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078731, -0.557300, -0.826570,
		0.727052, -0.535182, 0.430088,
		-0.682053, -0.634821, 0.363051,
		18.199696, 15.783381, 11.075871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.898012, 15.547964, 10.711014>,  <18.677134, 16.227757, 10.821735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.898012, 15.547964, 10.711014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.501663, 15.506279, 10.745209>,  <18.263853, 15.481268, 10.765725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.501663, 15.506279, 10.745209>,  <18.898012, 15.547964, 10.711014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.501663, 15.506279, 10.745209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025145, -0.480174, -0.876813,
		0.132425, -0.870960, 0.473172,
		-0.990874, -0.104214, 0.085487,
		18.204401, 15.475015, 10.770855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.718655, 14.878530, 10.581141>,  <18.898012, 15.547964, 10.711014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.718655, 14.878530, 10.581141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.345795, 15.019249, 10.546876>,  <18.122080, 15.103681, 10.526317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.345795, 15.019249, 10.546876>,  <18.718655, 14.878530, 10.581141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.345795, 15.019249, 10.546876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113580, -0.508748, -0.853390,
		-0.343801, -0.785757, 0.514186,
		-0.932148, 0.351797, -0.085662,
		18.066151, 15.124788, 10.521177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.358810, 14.283124, 10.418196>,  <18.718655, 14.878530, 10.581141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.358810, 14.283124, 10.418196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.158482, 14.611225, 10.307662>,  <18.038284, 14.808086, 10.241342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.158482, 14.611225, 10.307662>,  <18.358810, 14.283124, 10.418196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.158482, 14.611225, 10.307662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071295, -0.357267, -0.931277,
		-0.862609, -0.446703, 0.237407,
		-0.500822, 0.820254, -0.276334,
		18.008234, 14.857302, 10.224762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.772139, 13.975097, 10.048818>,  <18.358810, 14.283124, 10.418196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.772139, 13.975097, 10.048818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.844448, 14.356880, 9.953882>,  <17.887835, 14.585950, 9.896921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.844448, 14.356880, 9.953882>,  <17.772139, 13.975097, 10.048818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.844448, 14.356880, 9.953882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032327, -0.235418, -0.971356,
		-0.982993, 0.183269, -0.011703,
		0.180775, 0.954458, -0.237339,
		17.898680, 14.643218, 9.882681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.205677, 14.214356, 9.655828>,  <17.772139, 13.975097, 10.048818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.205677, 14.214356, 9.655828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.499554, 14.463188, 9.547571>,  <17.675879, 14.612487, 9.482617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.499554, 14.463188, 9.547571>,  <17.205677, 14.214356, 9.655828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.499554, 14.463188, 9.547571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138222, -0.253308, -0.957460,
		-0.664172, 0.740845, -0.100118,
		0.734691, 0.622079, -0.270642,
		17.719961, 14.649812, 9.466379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.942072, 14.666063, 9.178182>,  <17.205677, 14.214356, 9.655828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.942072, 14.666063, 9.178182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.336800, 14.629677, 9.124645>,  <17.573637, 14.607845, 9.092524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.336800, 14.629677, 9.124645>,  <16.942072, 14.666063, 9.178182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.336800, 14.629677, 9.124645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155761, -0.309598, -0.938023,
		0.043891, 0.946506, -0.319686,
		0.986819, -0.090965, -0.133840,
		17.632845, 14.602387, 9.084494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.112835, 15.004557, 8.580767>,  <16.942072, 14.666063, 9.178182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.112835, 15.004557, 8.580767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.382088, 14.712135, 8.625401>,  <17.543640, 14.536682, 8.652183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.382088, 14.712135, 8.625401>,  <17.112835, 15.004557, 8.580767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.382088, 14.712135, 8.625401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090199, -0.230925, -0.968781,
		0.734000, 0.642054, -0.221384,
		0.673133, -0.731054, 0.111586,
		17.584028, 14.492819, 8.658877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.672215, 14.980985, 8.028635>,  <17.112835, 15.004557, 8.580767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.672215, 14.980985, 8.028635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.710796, 14.615623, 8.186820>,  <17.733946, 14.396407, 8.281732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.710796, 14.615623, 8.186820>,  <17.672215, 14.980985, 8.028635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.710796, 14.615623, 8.186820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221737, -0.367613, -0.903158,
		0.970324, 0.174802, 0.167078,
		0.096453, -0.913403, 0.395464,
		17.739733, 14.341602, 8.305459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.355942, 14.741311, 7.976465>,  <17.672215, 14.980985, 8.028635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.355942, 14.741311, 7.976465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.079479, 14.453026, 7.955009>,  <17.913601, 14.280055, 7.942135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.079479, 14.453026, 7.955009>,  <18.355942, 14.741311, 7.976465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.079479, 14.453026, 7.955009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362531, -0.281540, -0.888429,
		0.625200, -0.633490, 0.455868,
		-0.691156, -0.720712, -0.053641,
		17.872133, 14.236813, 7.938916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.735287, 14.139267, 7.704244>,  <18.355942, 14.741311, 7.976465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.735287, 14.139267, 7.704244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.350971, 14.080486, 7.610191>,  <18.120382, 14.045218, 7.553760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.350971, 14.080486, 7.610191>,  <18.735287, 14.139267, 7.704244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.350971, 14.080486, 7.610191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272865, -0.350443, -0.895954,
		0.049262, -0.924984, 0.376800,
		-0.960790, -0.146952, -0.235132,
		18.062735, 14.036401, 7.539652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.685505, 13.522223, 7.412435>,  <18.735287, 14.139267, 7.704244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.685505, 13.522223, 7.412435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.382549, 13.751225, 7.286834>,  <18.200775, 13.888625, 7.211473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.382549, 13.751225, 7.286834>,  <18.685505, 13.522223, 7.412435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.382549, 13.751225, 7.286834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191727, -0.264704, -0.945078,
		-0.624179, -0.775996, 0.090720,
		-0.757391, 0.572504, -0.314003,
		18.155333, 13.922976, 7.192633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.072956, 13.147902, 6.901322>,  <18.685505, 13.522223, 7.412435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.072956, 13.147902, 6.901322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.171383, 13.524734, 6.810163>,  <18.230438, 13.750834, 6.755467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.171383, 13.524734, 6.810163>,  <18.072956, 13.147902, 6.901322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.171383, 13.524734, 6.810163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377561, -0.309720, -0.872652,
		-0.892692, 0.128684, -0.431904,
		0.246065, 0.942079, -0.227899,
		18.245203, 13.807359, 6.741793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.787170, 13.518652, 6.228862>,  <18.072956, 13.147902, 6.901322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.787170, 13.518652, 6.228862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.152660, 13.634724, 6.342637>,  <18.371954, 13.704367, 6.410902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.152660, 13.634724, 6.342637>,  <17.787170, 13.518652, 6.228862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.152660, 13.634724, 6.342637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397964, -0.497738, -0.770637,
		-0.082047, 0.817345, -0.570276,
		0.913725, 0.290178, 0.284436,
		18.426777, 13.721777, 6.427968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.168243, 13.741110, 5.686932>,  <17.787170, 13.518652, 6.228862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.168243, 13.741110, 5.686932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.395649, 13.564777, 5.964769>,  <18.532093, 13.458978, 6.131472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.395649, 13.564777, 5.964769>,  <18.168243, 13.741110, 5.686932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.395649, 13.564777, 5.964769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444891, -0.545456, -0.710317,
		0.691999, 0.712843, -0.113978,
		0.568515, -0.440831, 0.694593,
		18.566204, 13.432528, 6.173147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.864674, 13.674197, 5.535932>,  <18.168243, 13.741110, 5.686932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.864674, 13.674197, 5.535932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.783100, 13.369759, 5.782229>,  <18.734156, 13.187096, 5.930008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.783100, 13.369759, 5.782229>,  <18.864674, 13.674197, 5.535932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.783100, 13.369759, 5.782229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330623, -0.645553, -0.688440,
		0.921466, 0.063183, 0.383287,
		-0.203935, -0.761097, 0.615745,
		18.721920, 13.141429, 5.966953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.484947, 13.218222, 5.534867>,  <18.864674, 13.674197, 5.535932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.484947, 13.218222, 5.534867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.109264, 13.095592, 5.596706>,  <18.883854, 13.022015, 5.633810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.109264, 13.095592, 5.596706>,  <19.484947, 13.218222, 5.534867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.109264, 13.095592, 5.596706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082571, -0.638726, -0.764990,
		0.333272, -0.705720, 0.625211,
		-0.939208, -0.306574, 0.154598,
		18.827501, 13.003620, 5.643086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.417517, 12.524639, 5.670719>,  <19.484947, 13.218222, 5.534867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.417517, 12.524639, 5.670719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.093746, 12.660675, 5.479234>,  <18.899483, 12.742296, 5.364343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.093746, 12.660675, 5.479234>,  <19.417517, 12.524639, 5.670719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.093746, 12.660675, 5.479234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049130, -0.851582, -0.521914,
		-0.585161, -0.398933, 0.706003,
		-0.809428, 0.340090, -0.478712,
		18.850918, 12.762702, 5.335620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.789585, 12.076314, 5.898005>,  <19.417517, 12.524639, 5.670719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.789585, 12.076314, 5.898005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.827232, 12.243946, 5.536782>,  <18.849821, 12.344525, 5.320048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.827232, 12.243946, 5.536782>,  <18.789585, 12.076314, 5.898005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.827232, 12.243946, 5.536782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020641, -0.906068, -0.422629,
		-0.995347, 0.058417, -0.076626,
		0.094117, 0.419081, -0.903058,
		18.855467, 12.369670, 5.265865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.236240, 11.860259, 5.526755>,  <18.789585, 12.076314, 5.898005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.236240, 11.860259, 5.526755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.508945, 11.954189, 5.249610>,  <18.672567, 12.010548, 5.083323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.508945, 11.954189, 5.249610>,  <18.236240, 11.860259, 5.526755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.508945, 11.954189, 5.249610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217258, -0.839369, -0.498256,
		-0.698571, 0.490221, -0.521231,
		0.681761, 0.234826, -0.692863,
		18.713474, 12.024637, 5.041751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.932318, 12.039257, 4.872883>,  <18.236240, 11.860259, 5.526755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.932318, 12.039257, 4.872883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.297680, 11.888954, 4.810276>,  <18.516897, 11.798773, 4.772712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.297680, 11.888954, 4.810276>,  <17.932318, 12.039257, 4.872883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.297680, 11.888954, 4.810276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389867, -0.697048, -0.601771,
		0.117020, 0.610681, -0.783182,
		0.913406, -0.375756, -0.156517,
		18.571701, 11.776227, 4.763321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.995247, 11.830578, 4.060923>,  <17.932318, 12.039257, 4.872883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.995247, 11.830578, 4.060923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.242702, 11.625172, 4.298777>,  <18.391176, 11.501928, 4.441489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.242702, 11.625172, 4.298777>,  <17.995247, 11.830578, 4.060923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.242702, 11.625172, 4.298777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185817, -0.831001, -0.524319,
		0.763386, 0.213871, -0.609509,
		0.618639, -0.513515, 0.594634,
		18.428293, 11.471117, 4.477167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.391134, 11.531506, 3.617211>,  <17.995247, 11.830578, 4.060923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.391134, 11.531506, 3.617211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.300793, 11.344963, 3.959322>,  <18.246588, 11.233037, 4.164589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.300793, 11.344963, 3.959322>,  <18.391134, 11.531506, 3.617211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.300793, 11.344963, 3.959322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176659, -0.843799, -0.506749,
		0.958009, -0.265544, 0.108190,
		-0.225855, -0.466357, 0.855278,
		18.233036, 11.205056, 4.215906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.708887, 10.897571, 3.591828>,  <18.391134, 11.531506, 3.617211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.708887, 10.897571, 3.591828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.369419, 10.893993, 3.803369>,  <18.165739, 10.891847, 3.930293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.369419, 10.893993, 3.803369>,  <18.708887, 10.897571, 3.591828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.369419, 10.893993, 3.803369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329505, -0.773194, -0.541846,
		0.413751, -0.634106, 0.653238,
		-0.848668, -0.008944, 0.528851,
		18.114819, 10.891310, 3.962024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.502926, 10.226738, 3.755346>,  <18.708887, 10.897571, 3.591828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.502926, 10.226738, 3.755346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.150295, 10.413536, 3.782887>,  <17.938717, 10.525615, 3.799411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.150295, 10.413536, 3.782887>,  <18.502926, 10.226738, 3.755346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.150295, 10.413536, 3.782887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461137, -0.820818, -0.337060,
		-0.100891, -0.328894, 0.938962,
		-0.881574, 0.466996, 0.068852,
		17.885822, 10.553635, 3.803542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.389694, 9.849442, 3.069423>,  <18.502926, 10.226738, 3.755346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.389694, 9.849442, 3.069423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.002071, 9.862389, 2.971540>,  <17.769497, 9.870156, 2.912811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.002071, 9.862389, 2.971540>,  <18.389694, 9.849442, 3.069423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.002071, 9.862389, 2.971540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149062, 0.866922, -0.475633,
		0.196747, -0.497392, -0.844921,
		-0.969057, 0.032367, -0.244707,
		17.711355, 9.872099, 2.898128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.269306, 9.899707, 2.333794>,  <18.389694, 9.849442, 3.069423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.269306, 9.899707, 2.333794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.969360, 10.068146, 2.537902>,  <17.789392, 10.169209, 2.660367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.969360, 10.068146, 2.537902>,  <18.269306, 9.899707, 2.333794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.969360, 10.068146, 2.537902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091593, 0.829931, -0.550295,
		-0.655218, -0.365911, -0.660908,
		-0.749867, 0.421098, 0.510271,
		17.744400, 10.194475, 2.690984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.287930, 9.491717, 1.763658>,  <18.269306, 9.899707, 2.333794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.287930, 9.491717, 1.763658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.468979, 9.656822, 1.447492>,  <18.577608, 9.755885, 1.257792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.468979, 9.656822, 1.447492>,  <18.287930, 9.491717, 1.763658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.468979, 9.656822, 1.447492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261498, -0.908884, -0.324882,
		-0.852496, -0.059642, -0.519320,
		0.452625, 0.412762, -0.790416,
		18.604767, 9.780651, 1.210367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.063669, 9.242583, 1.068215>,  <18.287930, 9.491717, 1.763658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.063669, 9.242583, 1.068215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.445633, 9.359947, 1.086364>,  <18.674810, 9.430366, 1.097253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.445633, 9.359947, 1.086364>,  <18.063669, 9.242583, 1.068215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.445633, 9.359947, 1.086364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292058, -0.900835, -0.321245,
		-0.053385, 0.320011, -0.945909,
		0.954909, 0.293410, 0.045371,
		18.732105, 9.447970, 1.099975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.369614, 8.937819, 0.501525>,  <18.063669, 9.242583, 1.068215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.369614, 8.937819, 0.501525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.679436, 9.051250, 0.727673>,  <18.865330, 9.119309, 0.863362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.679436, 9.051250, 0.727673>,  <18.369614, 8.937819, 0.501525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.679436, 9.051250, 0.727673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528398, -0.781406, -0.331964,
		0.347646, 0.555866, -0.755086,
		0.774556, 0.283580, 0.565371,
		18.911802, 9.136325, 0.897284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.973818, 9.104023, 0.052747>,  <18.369614, 8.937819, 0.501525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.973818, 9.104023, 0.052747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.083359, 8.985523, 0.418750>,  <19.149082, 8.914423, 0.638353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.083359, 8.985523, 0.418750>,  <18.973818, 9.104023, 0.052747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.083359, 8.985523, 0.418750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677494, -0.615850, -0.402157,
		0.682648, 0.730044, 0.032056,
		0.273851, -0.296250, 0.915009,
		19.165514, 8.896648, 0.693253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.725779, 9.203831, 0.231215>,  <18.973818, 9.104023, 0.052747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.725779, 9.203831, 0.231215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.554272, 8.878796, 0.389131>,  <19.451368, 8.683775, 0.483881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.554272, 8.878796, 0.389131>,  <19.725779, 9.203831, 0.231215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.554272, 8.878796, 0.389131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679918, -0.578000, -0.451251,
		0.594870, 0.074943, 0.800321,
		-0.428768, -0.812588, 0.394790,
		19.425642, 8.635019, 0.507568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.300499, 8.843755, 0.513887>,  <19.725779, 9.203831, 0.231215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.300499, 8.843755, 0.513887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.995361, 8.596172, 0.439092>,  <19.812279, 8.447623, 0.394216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.995361, 8.596172, 0.439092>,  <20.300499, 8.843755, 0.513887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.995361, 8.596172, 0.439092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635325, -0.663797, -0.394633,
		0.120139, -0.419841, 0.899611,
		-0.762843, -0.618956, -0.186987,
		19.766508, 8.410485, 0.382996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.633886, 8.288451, 0.603926>,  <20.300499, 8.843755, 0.513887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.633886, 8.288451, 0.603926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.316616, 8.190929, 0.380701>,  <20.126255, 8.132417, 0.246766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.316616, 8.190929, 0.380701>,  <20.633886, 8.288451, 0.603926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.316616, 8.190929, 0.380701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561521, -0.647491, -0.515217,
		-0.235729, -0.722022, 0.650474,
		-0.793175, -0.243804, -0.558063,
		20.078663, 8.117788, 0.213282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.597033, 7.597498, 0.604137>,  <20.633886, 8.288451, 0.603926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.597033, 7.597498, 0.604137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.456459, 7.776417, 0.275158>,  <20.372114, 7.883768, 0.077771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.456459, 7.776417, 0.275158>,  <20.597033, 7.597498, 0.604137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.456459, 7.776417, 0.275158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810422, -0.294484, -0.506454,
		-0.468733, -0.844514, -0.259008,
		-0.351434, 0.447297, -0.822447,
		20.351028, 7.910606, 0.028424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.514681, 6.994235, 0.192332>,  <20.597033, 7.597498, 0.604137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.514681, 6.994235, 0.192332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.579937, 7.368752, 0.067916>,  <20.619091, 7.593462, -0.006733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.579937, 7.368752, 0.067916>,  <20.514681, 6.994235, 0.192332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.579937, 7.368752, 0.067916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939490, -0.243685, -0.240781,
		-0.301236, -0.252937, -0.919391,
		0.163139, 0.936291, -0.311038,
		20.628880, 7.649639, -0.025395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.699512, 7.090983, -0.542917>,  <20.514681, 6.994235, 0.192332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.699512, 7.090983, -0.542917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.847885, 7.398125, -0.333993>,  <20.936909, 7.582410, -0.208639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.847885, 7.398125, -0.333993>,  <20.699512, 7.090983, -0.542917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.847885, 7.398125, -0.333993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919930, -0.226887, -0.319766,
		-0.127029, 0.599100, -0.790533,
		0.370934, 0.767855, 0.522309,
		20.959166, 7.628481, -0.177300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.134418, 7.476182, -1.080786>,  <20.699512, 7.090983, -0.542917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.134418, 7.476182, -1.080786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.203941, 7.516727, -0.688967>,  <21.245655, 7.541054, -0.453875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.203941, 7.516727, -0.688967>,  <21.134418, 7.476182, -1.080786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.203941, 7.516727, -0.688967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964740, -0.217172, -0.148706,
		0.197658, 0.970856, -0.135534,
		0.173807, 0.101362, 0.979549,
		21.256083, 7.547136, -0.395102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.676535, 7.942425, -0.902049>,  <21.134418, 7.476182, -1.080786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.676535, 7.942425, -0.902049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.659618, 7.715046, -0.573397>,  <21.649467, 7.578619, -0.376205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.659618, 7.715046, -0.573397>,  <21.676535, 7.942425, -0.902049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.659618, 7.715046, -0.573397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989634, -0.136799, -0.043704,
		0.137242, 0.811266, 0.568341,
		-0.042293, -0.568448, 0.821632,
		21.646931, 7.544512, -0.326907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.016491, 8.388124, -0.772196>,  <21.676535, 7.942425, -0.902049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.016491, 8.388124, -0.772196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.962692, 8.770496, -0.667809>,  <20.930414, 8.999920, -0.605177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.962692, 8.770496, -0.667809>,  <21.016491, 8.388124, -0.772196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.962692, 8.770496, -0.667809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988381, 0.110598, 0.104262,
		0.070805, 0.271959, -0.959701,
		-0.134496, 0.955932, 0.260968,
		20.922344, 9.057276, -0.589519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.095739, 9.068033, -1.201505>,  <21.016491, 8.388124, -0.772196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.095739, 9.068033, -1.201505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.217171, 9.147572, -0.828774>,  <21.290030, 9.195294, -0.605136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.217171, 9.147572, -0.828774>,  <21.095739, 9.068033, -1.201505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.217171, 9.147572, -0.828774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881148, 0.313504, -0.353968,
		-0.362517, 0.928534, -0.080040,
		0.303578, 0.198846, 0.931826,
		21.308245, 9.207226, -0.549227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.123325, 9.772581, -1.054382>,  <21.095739, 9.068033, -1.201505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.123325, 9.772581, -1.054382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.390297, 9.580421, -0.826784>,  <21.550480, 9.465125, -0.690226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.390297, 9.580421, -0.826784>,  <21.123325, 9.772581, -1.054382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.390297, 9.580421, -0.826784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721725, 0.229073, -0.653176,
		0.183445, 0.846606, 0.499607,
		0.667429, -0.480400, 0.568994,
		21.590527, 9.436301, -0.656086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<20.799923, 17.417898, 18.171068> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.800098, 17.810692, 18.095480>,  <20.800203, 18.046368, 18.050127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.800098, 17.810692, 18.095480>,  <20.799923, 17.417898, 18.171068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.800098, 17.810692, 18.095480> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371489, -0.175608, -0.911679,
		-0.928437, -0.069802, -0.364872,
		0.000437, 0.981982, -0.188972,
		20.800230, 18.105286, 18.038788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.448296, 17.476633, 17.608570>,  <20.799923, 17.417898, 18.171068>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.448296, 17.476633, 17.608570> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.667290, 17.810677, 17.587191>,  <20.798687, 18.011103, 17.574364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.667290, 17.810677, 17.587191>,  <20.448296, 17.476633, 17.608570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.667290, 17.810677, 17.587191> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337390, -0.278737, -0.899152,
		-0.765786, 0.474239, -0.434361,
		0.547485, 0.835107, -0.053449,
		20.831535, 18.061209, 17.571156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.241064, 17.852007, 16.980862>,  <20.448296, 17.476633, 17.608570>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.241064, 17.852007, 16.980862> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.615665, 17.960476, 17.069794>,  <20.840425, 18.025557, 17.123154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.615665, 17.960476, 17.069794>,  <20.241064, 17.852007, 16.980862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.615665, 17.960476, 17.069794> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260486, -0.113502, -0.958783,
		-0.234761, 0.955815, -0.176931,
		0.936501, 0.271173, 0.222330,
		20.896616, 18.041828, 17.136494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.408051, 18.551294, 16.600302>,  <20.241064, 17.852007, 16.980862>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.408051, 18.551294, 16.600302> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.772545, 18.418190, 16.697395>,  <20.991241, 18.338327, 16.755651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.772545, 18.418190, 16.697395>,  <20.408051, 18.551294, 16.600302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.772545, 18.418190, 16.697395> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316994, 0.190299, -0.929140,
		0.262988, 0.923611, 0.278890,
		0.911237, -0.332759, 0.242732,
		21.045916, 18.318361, 16.770214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.955023, 19.110924, 16.432220>,  <20.408051, 18.551294, 16.600302>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.955023, 19.110924, 16.432220> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.147671, 18.760998, 16.453171>,  <21.263260, 18.551043, 16.465740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.147671, 18.760998, 16.453171>,  <20.955023, 19.110924, 16.432220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.147671, 18.760998, 16.453171> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417218, 0.176318, -0.891539,
		0.770694, 0.451237, 0.449906,
		0.481622, -0.874813, 0.052376,
		21.292158, 18.498554, 16.468884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.615976, 19.290413, 16.174780>,  <20.955023, 19.110924, 16.432220>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.615976, 19.290413, 16.174780> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.612293, 18.892208, 16.137114>,  <21.610083, 18.653284, 16.114513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.612293, 18.892208, 16.137114>,  <21.615976, 19.290413, 16.174780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.612293, 18.892208, 16.137114> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335593, 0.085633, -0.938107,
		0.941962, -0.040239, 0.333299,
		-0.009207, -0.995514, -0.094167,
		21.609531, 18.593554, 16.108864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.088150, 19.184969, 15.687714>,  <21.615976, 19.290413, 16.174780>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.088150, 19.184969, 15.687714> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.918339, 18.822922, 15.678448>,  <21.816452, 18.605694, 15.672888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.918339, 18.822922, 15.678448>,  <22.088150, 19.184969, 15.687714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.918339, 18.822922, 15.678448> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248653, -0.091948, -0.964219,
		0.870602, -0.415098, 0.264095,
		-0.424529, -0.905118, -0.023165,
		21.790979, 18.551386, 15.671498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.581417, 18.595266, 15.385724>,  <22.088150, 19.184969, 15.687714>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.581417, 18.595266, 15.385724> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.195969, 18.507629, 15.324495>,  <21.964699, 18.455048, 15.287758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.195969, 18.507629, 15.324495>,  <22.581417, 18.595266, 15.385724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.195969, 18.507629, 15.324495> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200061, -0.211527, -0.956678,
		0.177220, -0.952500, 0.247664,
		-0.963622, -0.219091, -0.153071,
		21.906881, 18.441902, 15.278574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.647678, 18.197582, 14.833473>,  <22.581417, 18.595266, 15.385724>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.647678, 18.197582, 14.833473> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.249229, 18.232113, 14.840298>,  <22.010160, 18.252831, 14.844393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.249229, 18.232113, 14.840298>,  <22.647678, 18.197582, 14.833473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.249229, 18.232113, 14.840298> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042912, -0.307273, -0.950654,
		-0.076822, -0.947698, 0.309785,
		-0.996121, 0.086325, 0.017062,
		21.950394, 18.258011, 14.845416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.382824, 17.571871, 14.455546>,  <22.647678, 18.197582, 14.833473>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.382824, 17.571871, 14.455546> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.072426, 17.824135, 14.451645>,  <21.886187, 17.975494, 14.449305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.072426, 17.824135, 14.451645>,  <22.382824, 17.571871, 14.455546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.072426, 17.824135, 14.451645> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238940, -0.308243, -0.920812,
		-0.583728, -0.712215, 0.389886,
		-0.775996, 0.630663, -0.009753,
		21.839626, 18.013334, 14.448719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.803953, 17.178188, 14.194512>,  <22.382824, 17.571871, 14.455546>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.803953, 17.178188, 14.194512> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.712109, 17.563438, 14.138414>,  <21.657001, 17.794588, 14.104755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.712109, 17.563438, 14.138414>,  <21.803953, 17.178188, 14.194512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.712109, 17.563438, 14.138414> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327105, -0.212076, -0.920883,
		-0.916668, -0.165572, 0.363739,
		-0.229613, 0.963125, -0.140244,
		21.643225, 17.852375, 14.096341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.226900, 17.233334, 13.898556>,  <21.803953, 17.178188, 14.194512>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.226900, 17.233334, 13.898556> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.355820, 17.593994, 13.783216>,  <21.433172, 17.810390, 13.714013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.355820, 17.593994, 13.783216>,  <21.226900, 17.233334, 13.898556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.355820, 17.593994, 13.783216> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180269, -0.240568, -0.953745,
		-0.929315, 0.359373, 0.085005,
		0.322300, 0.901653, -0.288348,
		21.452509, 17.864491, 13.696712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.787836, 17.468519, 13.361963>,  <21.226900, 17.233334, 13.898556>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.787836, 17.468519, 13.361963> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.105190, 17.702816, 13.295694>,  <21.295603, 17.843393, 13.255933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.105190, 17.702816, 13.295694>,  <20.787836, 17.468519, 13.361963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.105190, 17.702816, 13.295694> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073705, -0.362601, -0.929025,
		-0.604241, 0.724864, -0.330855,
		0.793385, 0.585741, -0.165673,
		21.343206, 17.878538, 13.245993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.627106, 17.841579, 12.770261>,  <20.787836, 17.468519, 13.361963>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.627106, 17.841579, 12.770261> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.024147, 17.824657, 12.815779>,  <21.262371, 17.814505, 12.843090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.024147, 17.824657, 12.815779>,  <20.627106, 17.841579, 12.770261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.024147, 17.824657, 12.815779> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099876, -0.248338, -0.963511,
		0.069022, 0.967749, -0.242276,
		0.992603, -0.042306, 0.113796,
		21.321928, 17.811966, 12.849917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.816685, 18.231068, 12.315383>,  <20.627106, 17.841579, 12.770261>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.816685, 18.231068, 12.315383> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.126144, 17.985966, 12.379882>,  <21.311819, 17.838905, 12.418581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.126144, 17.985966, 12.379882>,  <20.816685, 18.231068, 12.315383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.126144, 17.985966, 12.379882> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013019, -0.239062, -0.970917,
		0.633483, 0.753247, -0.176973,
		0.773647, -0.612755, 0.161248,
		21.358238, 17.802139, 12.428256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.184349, 18.333439, 11.743409>,  <20.816685, 18.231068, 12.315383>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.184349, 18.333439, 11.743409> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.334549, 17.992153, 11.888202>,  <21.424669, 17.787382, 11.975078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.334549, 17.992153, 11.888202>,  <21.184349, 18.333439, 11.743409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.334549, 17.992153, 11.888202> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053595, -0.369919, -0.927517,
		0.925272, 0.367681, -0.093176,
		0.375498, -0.853212, 0.361981,
		21.447199, 17.736189, 11.996797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.688059, 18.206865, 11.253428>,  <21.184349, 18.333439, 11.743409>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.688059, 18.206865, 11.253428> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.606071, 17.861000, 11.436881>,  <21.556879, 17.653481, 11.546953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.606071, 17.861000, 11.436881>,  <21.688059, 18.206865, 11.253428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.606071, 17.861000, 11.436881> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011840, -0.470739, -0.882193,
		0.978698, -0.175390, 0.106723,
		-0.204966, -0.864664, 0.458634,
		21.544582, 17.601601, 11.574471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.097879, 17.595137, 10.839984>,  <21.688059, 18.206865, 11.253428>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.097879, 17.595137, 10.839984> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.823116, 17.395920, 11.051684>,  <21.658258, 17.276390, 11.178704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.823116, 17.395920, 11.051684>,  <22.097879, 17.595137, 10.839984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.823116, 17.395920, 11.051684> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155851, -0.610356, -0.776644,
		0.709835, -0.615969, 0.341638,
		-0.686909, -0.498045, 0.529251,
		21.617043, 17.246506, 11.210460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.250387, 16.889545, 10.977466>,  <22.097879, 17.595137, 10.839984>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.250387, 16.889545, 10.977466> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.851288, 16.910198, 10.994573>,  <21.611828, 16.922590, 11.004837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.851288, 16.910198, 10.994573>,  <22.250387, 16.889545, 10.977466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.851288, 16.910198, 10.994573> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067043, -0.770069, -0.634428,
		0.000178, -0.635867, 0.771798,
		-0.997750, 0.051630, 0.042768,
		21.551962, 16.925688, 11.007402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.040201, 16.209871, 10.891246>,  <22.250387, 16.889545, 10.977466>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.040201, 16.209871, 10.891246> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.692730, 16.399231, 10.832881>,  <21.484247, 16.512846, 10.797862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.692730, 16.399231, 10.832881>,  <22.040201, 16.209871, 10.891246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.692730, 16.399231, 10.832881> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262766, -0.690036, -0.674392,
		-0.419940, -0.547490, 0.723813,
		-0.868680, 0.473398, -0.145912,
		21.432125, 16.541250, 10.789107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.552881, 15.729447, 10.671639>,  <22.040201, 16.209871, 10.891246>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.552881, 15.729447, 10.671639> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.363140, 16.061623, 10.554771>,  <21.249296, 16.260927, 10.484651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.363140, 16.061623, 10.554771>,  <21.552881, 15.729447, 10.671639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.363140, 16.061623, 10.554771> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371067, -0.489572, -0.789068,
		-0.798311, -0.265881, 0.540377,
		-0.474352, 0.830438, -0.292171,
		21.220835, 16.310755, 10.467120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.936964, 15.506667, 10.445952>,  <21.552881, 15.729447, 10.671639>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.936964, 15.506667, 10.445952> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.982128, 15.854137, 10.253016>,  <21.009226, 16.062620, 10.137255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.982128, 15.854137, 10.253016>,  <20.936964, 15.506667, 10.445952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.982128, 15.854137, 10.253016> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480221, -0.377274, -0.791866,
		-0.869850, 0.321038, 0.374560,
		0.112908, 0.868677, -0.482341,
		21.016001, 16.114740, 10.108315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.571888, 14.934729, 10.114043>,  <20.936964, 15.506667, 10.445952>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.571888, 14.934729, 10.114043> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.259392, 14.686947, 10.083216>,  <20.071894, 14.538278, 10.064719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.259392, 14.686947, 10.083216>,  <20.571888, 14.934729, 10.114043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.259392, 14.686947, 10.083216> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032784, -0.082575, 0.996045,
		-0.623369, 0.780678, 0.044203,
		-0.781240, -0.619454, -0.077069,
		20.025019, 14.501110, 10.060095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.167690, 15.079999, 10.594230>,  <20.571888, 14.934729, 10.114043>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.167690, 15.079999, 10.594230> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.028809, 14.716476, 10.501690>,  <19.945480, 14.498363, 10.446166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.028809, 14.716476, 10.501690>,  <20.167690, 15.079999, 10.594230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.028809, 14.716476, 10.501690> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279372, -0.135259, 0.950608,
		-0.895210, 0.394687, -0.206933,
		-0.347203, -0.908805, -0.231350,
		19.924648, 14.443835, 10.432285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.624382, 15.119204, 10.967484>,  <20.167690, 15.079999, 10.594230>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.624382, 15.119204, 10.967484> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.673172, 14.730038, 10.888937>,  <19.702446, 14.496538, 10.841809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.673172, 14.730038, 10.888937>,  <19.624382, 15.119204, 10.967484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.673172, 14.730038, 10.888937> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009595, -0.196678, 0.980421,
		-0.992487, -0.121472, -0.014655,
		0.121976, -0.972914, -0.196366,
		19.709764, 14.438164, 10.830028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.169155, 14.784446, 11.463712>,  <19.624382, 15.119204, 10.967484>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.169155, 14.784446, 11.463712> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.447781, 14.514072, 11.367451>,  <19.614956, 14.351849, 11.309694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.447781, 14.514072, 11.367451>,  <19.169155, 14.784446, 11.463712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.447781, 14.514072, 11.367451> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239226, -0.097422, 0.966064,
		-0.676441, -0.730494, 0.093840,
		0.696562, -0.675934, -0.240653,
		19.656750, 14.311293, 11.295255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.109808, 14.251900, 11.905239>,  <19.169155, 14.784446, 11.463712>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.109808, 14.251900, 11.905239> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.492043, 14.244900, 11.787561>,  <19.721384, 14.240700, 11.716955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.492043, 14.244900, 11.787561>,  <19.109808, 14.251900, 11.905239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.492043, 14.244900, 11.787561> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288960, -0.140636, 0.946955,
		-0.057945, -0.989907, -0.129334,
		0.955586, -0.017499, -0.294193,
		19.778719, 14.239650, 11.699304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.460329, 13.767333, 12.344193>,  <19.109808, 14.251900, 11.905239>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.460329, 13.767333, 12.344193> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.766850, 13.977081, 12.195697>,  <19.950762, 14.102930, 12.106600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.766850, 13.977081, 12.195697>,  <19.460329, 13.767333, 12.344193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.766850, 13.977081, 12.195697> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443672, -0.013971, 0.896080,
		0.464693, -0.851375, -0.243355,
		0.766300, 0.524372, -0.371239,
		19.996740, 14.134393, 12.084325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.115644, 13.445250, 12.663193>,  <19.460329, 13.767333, 12.344193>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.115644, 13.445250, 12.663193> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.209751, 13.818783, 12.555411>,  <20.266216, 14.042903, 12.490743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.209751, 13.818783, 12.555411>,  <20.115644, 13.445250, 12.663193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.209751, 13.818783, 12.555411> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376066, 0.168178, 0.911203,
		0.896227, -0.315708, -0.311616,
		0.235268, 0.933833, -0.269453,
		20.280331, 14.098932, 12.474576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.681911, 13.592673, 13.083424>,  <20.115644, 13.445250, 12.663193>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.681911, 13.592673, 13.083424> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.568787, 13.952690, 12.950794>,  <20.500912, 14.168700, 12.871217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.568787, 13.952690, 12.950794>,  <20.681911, 13.592673, 13.083424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.568787, 13.952690, 12.950794> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268805, 0.406204, 0.873351,
		0.920739, 0.157866, -0.356815,
		-0.282813, 0.900043, -0.331573,
		20.483942, 14.222703, 12.851322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.225904, 14.069907, 13.449037>,  <20.681911, 13.592673, 13.083424>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.225904, 14.069907, 13.449037> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.900974, 14.271206, 13.331142>,  <20.706017, 14.391985, 13.260406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.900974, 14.271206, 13.331142>,  <21.225904, 14.069907, 13.449037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.900974, 14.271206, 13.331142> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000050, 0.505312, 0.862936,
		0.583202, 0.701001, -0.410454,
		-0.812327, 0.503246, -0.294734,
		20.657276, 14.422179, 13.242723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.352695, 14.752108, 13.717432>,  <21.225904, 14.069907, 13.449037>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.352695, 14.752108, 13.717432> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.957104, 14.726311, 13.664118>,  <20.719749, 14.710833, 13.632129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.957104, 14.726311, 13.664118>,  <21.352695, 14.752108, 13.717432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.957104, 14.726311, 13.664118> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146301, 0.564276, 0.812519,
		0.022810, 0.823063, -0.567492,
		-0.988977, -0.064491, -0.133286,
		20.660410, 14.706964, 13.624132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.049171, 15.417569, 13.817663>,  <21.352695, 14.752108, 13.717432>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.049171, 15.417569, 13.817663> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.755123, 15.158398, 13.897449>,  <20.578693, 15.002894, 13.945321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.755123, 15.158398, 13.897449>,  <21.049171, 15.417569, 13.817663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.755123, 15.158398, 13.897449> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181986, 0.472027, 0.862596,
		-0.653054, 0.597812, -0.464911,
		-0.735120, -0.647929, 0.199465,
		20.534588, 14.964019, 13.957289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.508734, 15.788347, 14.027528>,  <21.049171, 15.417569, 13.817663>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.508734, 15.788347, 14.027528> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.375450, 15.424690, 14.127476>,  <20.295481, 15.206496, 14.187445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.375450, 15.424690, 14.127476>,  <20.508734, 15.788347, 14.027528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.375450, 15.424690, 14.127476> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386920, 0.373521, 0.843075,
		-0.859806, 0.184239, -0.476224,
		-0.333207, -0.909142, 0.249870,
		20.275488, 15.151948, 14.202436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.788530, 15.860159, 14.250915>,  <20.508734, 15.788347, 14.027528>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.788530, 15.860159, 14.250915> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.905155, 15.505383, 14.394205>,  <19.975130, 15.292517, 14.480180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.905155, 15.505383, 14.394205>,  <19.788530, 15.860159, 14.250915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.905155, 15.505383, 14.394205> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363919, 0.243485, 0.899043,
		-0.884622, -0.392491, -0.251785,
		0.291561, -0.886942, 0.358227,
		19.992622, 15.239300, 14.501674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.206030, 15.553747, 14.558728>,  <19.788530, 15.860159, 14.250915>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.206030, 15.553747, 14.558728> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.536392, 15.414333, 14.735998>,  <19.734610, 15.330686, 14.842360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.536392, 15.414333, 14.735998>,  <19.206030, 15.553747, 14.558728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.536392, 15.414333, 14.735998> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381066, 0.234246, 0.894381,
		-0.415534, -0.907553, 0.060650,
		0.825905, -0.348535, 0.443175,
		19.784164, 15.309773, 14.868951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.940517, 15.261191, 15.158781>,  <19.206030, 15.553747, 14.558728>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.940517, 15.261191, 15.158781> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.332245, 15.283352, 15.236616>,  <19.567282, 15.296648, 15.283317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.332245, 15.283352, 15.236616>,  <18.940517, 15.261191, 15.158781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.332245, 15.283352, 15.236616> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199873, 0.115792, 0.972956,
		0.031369, -0.991727, 0.124470,
		0.979319, 0.055399, 0.194587,
		19.626041, 15.299973, 15.294992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.033550, 14.797103, 15.644245>,  <18.940517, 15.261191, 15.158781>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.033550, 14.797103, 15.644245> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.349789, 15.039074, 15.682241>,  <19.539532, 15.184257, 15.705039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.349789, 15.039074, 15.682241>,  <19.033550, 14.797103, 15.644245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.349789, 15.039074, 15.682241> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279612, 0.218626, 0.934890,
		0.544773, -0.765680, 0.341990,
		0.790594, 0.604928, 0.094992,
		19.586967, 15.220552, 15.710739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.393652, 14.571343, 16.239393>,  <19.033550, 14.797103, 15.644245>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.393652, 14.571343, 16.239393> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.492371, 14.954102, 16.178148>,  <19.551601, 15.183756, 16.141401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.492371, 14.954102, 16.178148>,  <19.393652, 14.571343, 16.239393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.492371, 14.954102, 16.178148> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180964, 0.200729, 0.962788,
		0.952020, -0.209906, 0.222703,
		0.246798, 0.956895, -0.153112,
		19.566410, 15.241170, 16.132215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.657993, 14.744373, 16.782528>,  <19.393652, 14.571343, 16.239393>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.657993, 14.744373, 16.782528> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.653961, 15.119373, 16.643391>,  <19.651543, 15.344373, 16.559910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.653961, 15.119373, 16.643391>,  <19.657993, 14.744373, 16.782528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.653961, 15.119373, 16.643391> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008422, 0.347926, 0.937484,
		0.999914, 0.006521, -0.011403,
		-0.010080, 0.937499, -0.347841,
		19.650938, 15.400623, 16.539038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<20.386379, 15.505794, 17.257406> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.082302, 15.672974, 17.058439>,  <19.899855, 15.773281, 16.939060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.082302, 15.672974, 17.058439>,  <20.386379, 15.505794, 17.257406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.082302, 15.672974, 17.058439> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391485, 0.316337, 0.864101,
		0.518501, 0.851616, -0.076857,
		-0.760195, 0.417949, -0.497416,
		19.854244, 15.798359, 16.909214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.358889, 16.150379, 17.585991>,  <20.386379, 15.505794, 17.257406>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.358889, 16.150379, 17.585991> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.006680, 16.097778, 17.403831>,  <19.795355, 16.066217, 17.294537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.006680, 16.097778, 17.403831>,  <20.358889, 16.150379, 17.585991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.006680, 16.097778, 17.403831> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469178, 0.378554, 0.797853,
		0.067475, 0.916190, -0.395023,
		-0.880522, -0.131501, -0.455399,
		19.742523, 16.058329, 17.267212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.059132, 16.823927, 17.468771>,  <20.358889, 16.150379, 17.585991>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.059132, 16.823927, 17.468771> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.777493, 16.540585, 17.488693>,  <19.608509, 16.370579, 17.500647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.777493, 16.540585, 17.488693>,  <20.059132, 16.823927, 17.468771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.777493, 16.540585, 17.488693> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392387, 0.446568, 0.804121,
		-0.591845, 0.546635, -0.592376,
		-0.704096, -0.708356, 0.049807,
		19.566263, 16.328077, 17.503635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.393723, 17.204723, 17.715387>,  <20.059132, 16.823927, 17.468771>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.393723, 17.204723, 17.715387> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.342175, 16.812225, 17.772730>,  <19.311245, 16.576727, 17.807135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.342175, 16.812225, 17.772730>,  <19.393723, 17.204723, 17.715387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.342175, 16.812225, 17.772730> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314185, 0.177515, 0.932618,
		-0.940574, 0.075147, -0.331169,
		-0.128871, -0.981245, 0.143356,
		19.303513, 16.517853, 17.815737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.718561, 17.105593, 17.983084>,  <19.393723, 17.204723, 17.715387>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.718561, 17.105593, 17.983084> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.925781, 16.790798, 18.117117>,  <19.050114, 16.601921, 18.197536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.925781, 16.790798, 18.117117>,  <18.718561, 17.105593, 17.983084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.925781, 16.790798, 18.117117> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209446, 0.263112, 0.941756,
		-0.829312, -0.558057, -0.028526,
		0.518048, -0.786984, 0.335085,
		19.081196, 16.554703, 18.217642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.299850, 16.647800, 18.459345>,  <18.718561, 17.105593, 17.983084>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.299850, 16.647800, 18.459345> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.684841, 16.581341, 18.545166>,  <18.915836, 16.541464, 18.596659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.684841, 16.581341, 18.545166>,  <18.299850, 16.647800, 18.459345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.684841, 16.581341, 18.545166> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204895, 0.073457, 0.976024,
		-0.177928, -0.983360, 0.036657,
		0.962476, -0.166152, 0.214555,
		18.973583, 16.531496, 18.609533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.293169, 16.168486, 18.928938>,  <18.299850, 16.647800, 18.459345>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.293169, 16.168486, 18.928938> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.647106, 16.345261, 18.987921>,  <18.859468, 16.451326, 19.023310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.647106, 16.345261, 18.987921>,  <18.293169, 16.168486, 18.928938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.647106, 16.345261, 18.987921> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180254, 0.032894, 0.983070,
		0.429608, -0.896441, 0.108768,
		0.884842, 0.441940, 0.147455,
		18.912560, 16.477842, 19.032158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.444048, 15.993184, 19.633549>,  <18.293169, 16.168486, 18.928938>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.444048, 15.993184, 19.633549> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.752983, 16.236919, 19.561773>,  <18.938345, 16.383162, 19.518707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.752983, 16.236919, 19.561773>,  <18.444048, 15.993184, 19.633549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.752983, 16.236919, 19.561773> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249985, -0.031879, 0.967725,
		0.583952, -0.792269, -0.176947,
		0.772339, 0.609339, -0.179439,
		18.984684, 16.419722, 19.507942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.967558, 15.669013, 19.965931>,  <18.444048, 15.993184, 19.633549>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.967558, 15.669013, 19.965931> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.067482, 16.056328, 19.967405>,  <19.127436, 16.288717, 19.968290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.067482, 16.056328, 19.967405>,  <18.967558, 15.669013, 19.965931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.067482, 16.056328, 19.967405> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124174, -0.035811, 0.991614,
		0.960300, -0.247256, -0.129182,
		0.249809, 0.968288, 0.003686,
		19.142426, 16.346815, 19.968512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.478037, 15.749709, 20.479975>,  <18.967558, 15.669013, 19.965931>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.478037, 15.749709, 20.479975> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.312180, 16.105984, 20.405411>,  <19.212666, 16.319748, 20.360672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.312180, 16.105984, 20.405411>,  <19.478037, 15.749709, 20.479975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.312180, 16.105984, 20.405411> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020357, 0.195718, 0.980449,
		0.909757, 0.410331, -0.063022,
		-0.414643, 0.890687, -0.186409,
		19.187786, 16.373190, 20.349487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.887440, 16.231102, 20.883993>,  <19.478037, 15.749709, 20.479975>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.887440, 16.231102, 20.883993> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.556820, 16.440369, 20.800941>,  <19.358448, 16.565929, 20.751110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.556820, 16.440369, 20.800941>,  <19.887440, 16.231102, 20.883993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.556820, 16.440369, 20.800941> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050743, 0.298119, 0.953179,
		0.560569, 0.798387, -0.219863,
		-0.826551, 0.523166, -0.207629,
		19.308855, 16.597319, 20.738653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.065807, 16.842638, 21.162086>,  <19.887440, 16.231102, 20.883993>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.065807, 16.842638, 21.162086> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.669918, 16.808941, 21.115866>,  <19.432384, 16.788723, 21.088133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.669918, 16.808941, 21.115866>,  <20.065807, 16.842638, 21.162086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.669918, 16.808941, 21.115866> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138324, 0.358997, 0.923032,
		-0.036278, 0.929529, -0.366960,
		-0.989722, -0.084245, -0.115553,
		19.373001, 16.783667, 21.081200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.819324, 17.426043, 21.457176>,  <20.065807, 16.842638, 21.162086>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.819324, 17.426043, 21.457176> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.505039, 17.178951, 21.444094>,  <19.316469, 17.030697, 21.436245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.505039, 17.178951, 21.444094>,  <19.819324, 17.426043, 21.457176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.505039, 17.178951, 21.444094> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312402, 0.350611, 0.882880,
		-0.533913, 0.703906, -0.468458,
		-0.785711, -0.617728, -0.032706,
		19.269325, 16.993633, 21.434282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.370747, 17.797186, 21.855402>,  <19.819324, 17.426043, 21.457176>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.370747, 17.797186, 21.855402> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.173588, 17.449242, 21.847425>,  <19.055292, 17.240475, 21.842640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.173588, 17.449242, 21.847425>,  <19.370747, 17.797186, 21.855402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.173588, 17.449242, 21.847425> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307699, 0.152823, 0.939131,
		-0.813863, 0.469032, -0.342980,
		-0.492897, -0.869859, -0.019944,
		19.025719, 17.188284, 21.841442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.701523, 18.050930, 21.926838>,  <19.370747, 17.797186, 21.855402>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.701523, 18.050930, 21.926838> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.678619, 17.668270, 22.041059>,  <18.664877, 17.438673, 22.109592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.678619, 17.668270, 22.041059>,  <18.701523, 18.050930, 21.926838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.678619, 17.668270, 22.041059> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529299, 0.271605, 0.803787,
		-0.846501, -0.105120, -0.521906,
		-0.057258, -0.956650, 0.285554,
		18.661442, 17.381275, 22.126726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.930094, 17.779234, 22.024477>,  <18.701523, 18.050930, 21.926838>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.930094, 17.779234, 22.024477> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.174168, 17.562809, 22.255968>,  <18.320612, 17.432953, 22.394863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.174168, 17.562809, 22.255968>,  <17.930094, 17.779234, 22.024477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.174168, 17.562809, 22.255968> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553590, 0.231379, 0.800001,
		-0.566757, -0.808526, -0.158344,
		0.610184, -0.541064, 0.578728,
		18.357224, 17.400490, 22.429586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.465919, 17.472307, 22.424631>,  <17.930094, 17.779234, 22.024477>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.465919, 17.472307, 22.424631> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.814518, 17.415909, 22.612511>,  <18.023676, 17.382071, 22.725239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.814518, 17.415909, 22.612511>,  <17.465919, 17.472307, 22.424631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.814518, 17.415909, 22.612511> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435338, 0.218540, 0.873339,
		-0.225784, -0.965588, 0.129077,
		0.871494, -0.140994, 0.469700,
		18.075966, 17.373611, 22.753420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.227730, 16.997965, 22.907005>,  <17.465919, 17.472307, 22.424631>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.227730, 16.997965, 22.907005> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.576397, 17.147747, 23.033485>,  <17.785597, 17.237616, 23.109373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.576397, 17.147747, 23.033485>,  <17.227730, 16.997965, 22.907005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.576397, 17.147747, 23.033485> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355085, 0.037825, 0.934068,
		0.337805, -0.926474, 0.165934,
		0.871666, 0.374453, 0.316200,
		17.837896, 17.260082, 23.128345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.224756, 16.704279, 23.544565>,  <17.227730, 16.997965, 22.907005>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.224756, 16.704279, 23.544565> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.498066, 16.996117, 23.533054>,  <17.662052, 17.171219, 23.526148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.498066, 16.996117, 23.533054>,  <17.224756, 16.704279, 23.544565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.498066, 16.996117, 23.533054> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182498, 0.208810, 0.960777,
		0.706987, -0.651222, 0.275824,
		0.683274, 0.729594, -0.028779,
		17.703049, 17.214994, 23.524420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.615007, 16.732180, 24.170851>,  <17.224756, 16.704279, 23.544565>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.615007, 16.732180, 24.170851> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.671959, 17.100845, 24.026482>,  <17.706131, 17.322044, 23.939859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.671959, 17.100845, 24.026482>,  <17.615007, 16.732180, 24.170851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.671959, 17.100845, 24.026482> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274326, 0.387099, 0.880284,
		0.951038, -0.026324, 0.307952,
		0.142380, 0.921662, -0.360924,
		17.714674, 17.377344, 23.918205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.995033, 16.999504, 24.702698>,  <17.615007, 16.732180, 24.170851>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.995033, 16.999504, 24.702698> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.823074, 17.291176, 24.489725>,  <17.719900, 17.466179, 24.361940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.823074, 17.291176, 24.489725>,  <17.995033, 16.999504, 24.702698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.823074, 17.291176, 24.489725> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305150, 0.437663, 0.845775,
		0.849749, 0.526067, 0.034361,
		-0.429895, 0.729181, -0.532433,
		17.694105, 17.509930, 24.329996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.166285, 17.549311, 25.039843>,  <17.995033, 16.999504, 24.702698>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.166285, 17.549311, 25.039843> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.842495, 17.665714, 24.835857>,  <17.648220, 17.735556, 24.713467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.842495, 17.665714, 24.835857>,  <18.166285, 17.549311, 25.039843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.842495, 17.665714, 24.835857> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366123, 0.428834, 0.825867,
		0.459024, 0.855228, -0.240586,
		-0.809476, 0.291008, -0.509963,
		17.599651, 17.753017, 24.682869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.058208, 18.280117, 25.193878>,  <18.166285, 17.549311, 25.039843>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.058208, 18.280117, 25.193878> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.709106, 18.095856, 25.129263>,  <17.499645, 17.985300, 25.090494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.709106, 18.095856, 25.129263>,  <18.058208, 18.280117, 25.193878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.709106, 18.095856, 25.129263> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393224, 0.467337, 0.791815,
		-0.289257, 0.754583, -0.589012,
		-0.872757, -0.460652, -0.161539,
		17.447279, 17.957661, 25.080801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.590424, 18.811495, 25.046759>,  <18.058208, 18.280117, 25.193878>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.590424, 18.811495, 25.046759> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.462799, 18.477135, 25.225407>,  <17.386225, 18.276518, 25.332596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.462799, 18.477135, 25.225407>,  <17.590424, 18.811495, 25.046759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.462799, 18.477135, 25.225407> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561961, 0.546334, 0.621063,
		-0.763151, -0.052825, -0.644058,
		-0.319063, -0.835900, 0.446621,
		17.367081, 18.226364, 25.359392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.919941, 19.385874, 25.266949>,  <17.590424, 18.811495, 25.046759>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.919941, 19.385874, 25.266949> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.084324, 19.745720, 25.326015>,  <18.182953, 19.961628, 25.361456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.084324, 19.745720, 25.326015>,  <17.919941, 19.385874, 25.266949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.084324, 19.745720, 25.326015> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104290, 0.207307, -0.972701,
		-0.905670, 0.384337, 0.179015,
		0.410956, 0.899616, 0.147669,
		18.207611, 20.015604, 25.370316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.546043, 19.875847, 24.941317>,  <17.919941, 19.385874, 25.266949>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.546043, 19.875847, 24.941317> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.900223, 20.061378, 24.952969>,  <18.112730, 20.172697, 24.959959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.900223, 20.061378, 24.952969>,  <17.546043, 19.875847, 24.941317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.900223, 20.061378, 24.952969> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125954, -0.179167, -0.975723,
		-0.447347, 0.867620, -0.217064,
		0.885447, 0.463827, 0.029131,
		18.165857, 20.200527, 24.961708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.556902, 20.495481, 24.532675>,  <17.546043, 19.875847, 24.941317>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.556902, 20.495481, 24.532675> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.943569, 20.395065, 24.552805>,  <18.175570, 20.334816, 24.564882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.943569, 20.395065, 24.552805>,  <17.556902, 20.495481, 24.532675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.943569, 20.395065, 24.552805> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079438, 0.107219, -0.991057,
		0.243399, 0.962020, 0.123587,
		0.966668, -0.251040, 0.050324,
		18.233570, 20.319754, 24.567902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.937775, 21.013830, 24.091345>,  <17.556902, 20.495481, 24.532675>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.937775, 21.013830, 24.091345> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.206379, 20.724537, 24.155846>,  <18.367542, 20.550961, 24.194546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.206379, 20.724537, 24.155846>,  <17.937775, 21.013830, 24.091345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.206379, 20.724537, 24.155846> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304857, 0.071304, -0.949725,
		0.675376, 0.686912, 0.268365,
		0.671513, -0.723235, 0.161252,
		18.407833, 20.507566, 24.204222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.390602, 21.111631, 23.517605>,  <17.937775, 21.013830, 24.091345>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.390602, 21.111631, 23.517605> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.537273, 20.757401, 23.631660>,  <18.625277, 20.544863, 23.700094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.537273, 20.757401, 23.631660>,  <18.390602, 21.111631, 23.517605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.537273, 20.757401, 23.631660> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261793, -0.195885, -0.945036,
		0.892755, 0.421171, 0.160010,
		0.366678, -0.885576, 0.285137,
		18.647276, 20.491728, 23.717201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.954327, 21.063885, 23.088367>,  <18.390602, 21.111631, 23.517605>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.954327, 21.063885, 23.088367> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.865746, 20.693832, 23.211716>,  <18.812597, 20.471802, 23.285725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.865746, 20.693832, 23.211716>,  <18.954327, 21.063885, 23.088367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.865746, 20.693832, 23.211716> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314871, -0.367118, -0.875260,
		0.922938, -0.096732, 0.372596,
		-0.221452, -0.925131, 0.308369,
		18.799311, 20.416292, 23.304226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.603600, 20.647755, 23.113180>,  <18.954327, 21.063885, 23.088367>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.603600, 20.647755, 23.113180> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.280407, 20.416603, 23.067181>,  <19.086491, 20.277912, 23.039581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.280407, 20.416603, 23.067181>,  <19.603600, 20.647755, 23.113180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.280407, 20.416603, 23.067181> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350629, -0.314715, -0.882051,
		0.473525, -0.753003, 0.456904,
		-0.807981, -0.577877, -0.114999,
		19.038013, 20.243240, 23.032681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.897587, 20.225391, 22.751446>,  <19.603600, 20.647755, 23.113180>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.897587, 20.225391, 22.751446> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.509644, 20.132690, 22.721348>,  <19.276876, 20.077070, 22.703289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.509644, 20.132690, 22.721348>,  <19.897587, 20.225391, 22.751446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.509644, 20.132690, 22.721348> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170693, -0.425833, -0.888555,
		0.173883, -0.874618, 0.452557,
		-0.969860, -0.231753, -0.075246,
		19.218685, 20.063164, 22.698774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.911711, 19.527857, 22.587479>,  <19.897587, 20.225391, 22.751446>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.911711, 19.527857, 22.587479> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.557453, 19.662022, 22.459023>,  <19.344898, 19.742521, 22.381948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.557453, 19.662022, 22.459023>,  <19.911711, 19.527857, 22.587479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.557453, 19.662022, 22.459023> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185817, -0.377804, -0.907048,
		-0.425564, -0.862996, 0.272275,
		-0.885645, 0.335413, -0.321138,
		19.291759, 19.762646, 22.362680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.716742, 19.044664, 22.183453>,  <19.911711, 19.527857, 22.587479>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.716742, 19.044664, 22.183453> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.502304, 19.370159, 22.093626>,  <19.373642, 19.565456, 22.039730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.502304, 19.370159, 22.093626>,  <19.716742, 19.044664, 22.183453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.502304, 19.370159, 22.093626> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247609, -0.102740, -0.963397,
		-0.807026, -0.572078, -0.146411,
		-0.536096, 0.813739, -0.224565,
		19.341475, 19.614281, 22.026257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.201550, 18.898479, 21.627760>,  <19.716742, 19.044664, 22.183453>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.201550, 18.898479, 21.627760> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.272785, 19.291504, 21.606384>,  <19.315527, 19.527319, 21.593559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.272785, 19.291504, 21.606384>,  <19.201550, 18.898479, 21.627760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.272785, 19.291504, 21.606384> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242411, -0.096440, -0.965369,
		-0.953688, 0.158966, -0.255359,
		0.178087, 0.982563, -0.053439,
		19.326212, 19.586273, 21.590353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.745720, 19.149416, 21.117027>,  <19.201550, 18.898479, 21.627760>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.745720, 19.149416, 21.117027> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.048923, 19.407909, 21.152369>,  <19.230846, 19.563005, 21.173573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.048923, 19.407909, 21.152369>,  <18.745720, 19.149416, 21.117027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.048923, 19.407909, 21.152369> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223186, -0.129707, -0.966108,
		-0.612869, 0.752038, -0.242549,
		0.758010, 0.646231, 0.088351,
		19.276327, 19.601778, 21.178873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.592583, 19.439535, 20.604172>,  <18.745720, 19.149416, 21.117027>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.592583, 19.439535, 20.604172> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.974377, 19.498753, 20.707739>,  <19.203453, 19.534283, 20.769878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.974377, 19.498753, 20.707739>,  <18.592583, 19.439535, 20.604172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.974377, 19.498753, 20.707739> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283447, -0.180141, -0.941917,
		-0.092804, 0.972436, -0.213905,
		0.954487, 0.148044, 0.258916,
		19.260723, 19.543165, 20.785414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.870056, 19.618399, 20.016123>,  <18.592583, 19.439535, 20.604172>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.870056, 19.618399, 20.016123> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.204132, 19.506149, 20.205315>,  <19.404577, 19.438799, 20.318830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.204132, 19.506149, 20.205315>,  <18.870056, 19.618399, 20.016123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.204132, 19.506149, 20.205315> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350083, -0.391998, -0.850752,
		0.424150, 0.876121, -0.229150,
		0.835188, -0.280626, 0.472981,
		19.454689, 19.421961, 20.347210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.457291, 19.874317, 19.557791>,  <18.870056, 19.618399, 20.016123>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.457291, 19.874317, 19.557791> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.572544, 19.572857, 19.794090>,  <19.641697, 19.391981, 19.935871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.572544, 19.572857, 19.794090>,  <19.457291, 19.874317, 19.557791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.572544, 19.572857, 19.794090> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324524, -0.503555, -0.800697,
		0.900923, 0.422421, 0.099487,
		0.288134, -0.753653, 0.590751,
		19.658985, 19.346762, 19.971315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.122612, 19.928865, 19.325880>,  <19.457291, 19.874317, 19.557791>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.122612, 19.928865, 19.325880> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.101261, 19.576149, 19.513325>,  <20.088451, 19.364519, 19.625792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.101261, 19.576149, 19.513325>,  <20.122612, 19.928865, 19.325880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.101261, 19.576149, 19.513325> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576604, -0.410357, -0.706495,
		0.815278, 0.232492, 0.530348,
		-0.053377, -0.881791, 0.468611,
		20.085247, 19.311611, 19.653908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.745193, 19.678185, 19.364565>,  <20.122612, 19.928865, 19.325880>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.745193, 19.678185, 19.364565> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.521881, 19.347324, 19.390329>,  <20.387894, 19.148809, 19.405788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.521881, 19.347324, 19.390329>,  <20.745193, 19.678185, 19.364565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.521881, 19.347324, 19.390329> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543652, -0.423372, -0.724706,
		0.626710, -0.369571, 0.686041,
		-0.558280, -0.827148, 0.064414,
		20.354397, 19.099180, 19.409653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.182962, 19.092682, 19.388205>,  <20.745193, 19.678185, 19.364565>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.182962, 19.092682, 19.388205> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.838810, 18.945564, 19.247082>,  <20.632318, 18.857294, 19.162407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.838810, 18.945564, 19.247082>,  <21.182962, 19.092682, 19.388205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.838810, 18.945564, 19.247082> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467558, -0.294126, -0.833594,
		0.202822, -0.882165, 0.425025,
		-0.860379, -0.367796, -0.352809,
		20.580696, 18.835226, 19.141239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.426031, 18.490332, 19.113750>,  <21.182962, 19.092682, 19.388205>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.426031, 18.490332, 19.113750> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.071377, 18.570019, 18.946808>,  <20.858583, 18.617832, 18.846642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.071377, 18.570019, 18.946808>,  <21.426031, 18.490332, 19.113750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.071377, 18.570019, 18.946808> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343448, -0.320719, -0.882713,
		-0.309702, -0.925988, 0.215943,
		-0.886639, 0.199213, -0.417356,
		20.805386, 18.629786, 18.821600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.142796, 17.873945, 18.881313>,  <21.426031, 18.490332, 19.113750>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.142796, 17.873945, 18.881313> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.981022, 18.163700, 18.657993>,  <20.883957, 18.337553, 18.524002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.981022, 18.163700, 18.657993>,  <21.142796, 17.873945, 18.881313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.981022, 18.163700, 18.657993> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232474, -0.508977, -0.828794,
		-0.884528, -0.464982, 0.037446,
		-0.404434, 0.724386, -0.558300,
		20.859692, 18.381016, 18.490503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<19.806452, 14.029700, 14.670388> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.970440, 14.358654, 14.512598>,  <20.068832, 14.556026, 14.417924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.970440, 14.358654, 14.512598>,  <19.806452, 14.029700, 14.670388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.970440, 14.358654, 14.512598> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118901, -0.380615, -0.917058,
		-0.904316, 0.422869, -0.058258,
		0.409969, 0.822383, -0.394476,
		20.093431, 14.605369, 14.394256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.638374, 13.984724, 14.014430>,  <19.806452, 14.029700, 14.670388>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.638374, 13.984724, 14.014430> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.880573, 14.302883, 14.003740>,  <20.025892, 14.493779, 13.997327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.880573, 14.302883, 14.003740>,  <19.638374, 13.984724, 14.014430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.880573, 14.302883, 14.003740> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127216, -0.129881, -0.983335,
		-0.785614, 0.592007, -0.179830,
		0.605497, 0.795399, -0.026723,
		20.062222, 14.541503, 13.995724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.386621, 14.478582, 13.419133>,  <19.638374, 13.984724, 14.014430>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.386621, 14.478582, 13.419133> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.773911, 14.541180, 13.497164>,  <20.006285, 14.578738, 13.543983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.773911, 14.541180, 13.497164>,  <19.386621, 14.478582, 13.419133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.773911, 14.541180, 13.497164> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200038, -0.016448, -0.979650,
		-0.150100, 0.987542, -0.047230,
		0.968222, 0.156493, 0.195077,
		20.064377, 14.588128, 13.555687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.530361, 14.938633, 12.906779>,  <19.386621, 14.478582, 13.419133>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.530361, 14.938633, 12.906779> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.882580, 14.774403, 13.001493>,  <20.093910, 14.675864, 13.058322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.882580, 14.774403, 13.001493>,  <19.530361, 14.938633, 12.906779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.882580, 14.774403, 13.001493> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203081, -0.124570, -0.971206,
		0.428249, 0.903278, -0.026309,
		0.880546, -0.410575, 0.236786,
		20.146744, 14.651230, 13.072529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.116537, 15.430011, 12.613723>,  <19.530361, 14.938633, 12.906779>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.116537, 15.430011, 12.613723> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.218582, 15.046028, 12.660029>,  <20.279808, 14.815639, 12.687814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.218582, 15.046028, 12.660029>,  <20.116537, 15.430011, 12.613723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.218582, 15.046028, 12.660029> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001421, -0.120100, -0.992761,
		0.966911, 0.253099, -0.032003,
		0.255110, -0.959957, 0.115766,
		20.295115, 14.758041, 12.694759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.631458, 15.287485, 12.091187>,  <20.116537, 15.430011, 12.613723>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.631458, 15.287485, 12.091187> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.522472, 14.921894, 12.211460>,  <20.457081, 14.702539, 12.283624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.522472, 14.921894, 12.211460>,  <20.631458, 15.287485, 12.091187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.522472, 14.921894, 12.211460> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083162, -0.288964, -0.953721,
		0.958566, -0.284859, 0.002723,
		-0.272463, -0.913978, 0.300681,
		20.440733, 14.647701, 12.301664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.023890, 14.820865, 11.667229>,  <20.631458, 15.287485, 12.091187>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.023890, 14.820865, 11.667229> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.713013, 14.600231, 11.788375>,  <20.526487, 14.467851, 11.861063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.713013, 14.600231, 11.788375>,  <21.023890, 14.820865, 11.667229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.713013, 14.600231, 11.788375> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136563, -0.321987, -0.936843,
		0.614266, -0.769468, 0.174920,
		-0.777193, -0.551583, 0.302866,
		20.479855, 14.434756, 11.879234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.008707, 14.207922, 11.275886>,  <21.023890, 14.820865, 11.667229>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.008707, 14.207922, 11.275886> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.633015, 14.238316, 11.409792>,  <20.407598, 14.256552, 11.490135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.633015, 14.238316, 11.409792>,  <21.008707, 14.207922, 11.275886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.633015, 14.238316, 11.409792> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342095, -0.126235, -0.931147,
		-0.028488, -0.989086, 0.144556,
		-0.939233, 0.075978, 0.334766,
		20.351244, 14.261111, 11.510221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.650930, 13.567245, 10.947432>,  <21.008707, 14.207922, 11.275886>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.650930, 13.567245, 10.947432> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.362831, 13.827877, 11.042669>,  <20.189972, 13.984256, 11.099812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.362831, 13.827877, 11.042669>,  <20.650930, 13.567245, 10.947432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.362831, 13.827877, 11.042669> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375110, -0.077086, -0.923770,
		-0.583556, -0.754653, 0.299935,
		-0.720247, 0.651580, 0.238094,
		20.146757, 14.023351, 11.114098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.194031, 13.200655, 10.623481>,  <20.650930, 13.567245, 10.947432>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.194031, 13.200655, 10.623481> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.019180, 13.556713, 10.674962>,  <19.914270, 13.770348, 10.705851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.019180, 13.556713, 10.674962>,  <20.194031, 13.200655, 10.623481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.019180, 13.556713, 10.674962> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406549, -0.067911, -0.911102,
		-0.802272, -0.450590, 0.391573,
		-0.437125, 0.890144, 0.128704,
		19.888042, 13.823756, 10.713573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.507339, 13.232441, 10.294403>,  <20.194031, 13.200655, 10.623481>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.507339, 13.232441, 10.294403> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.614239, 13.615997, 10.332572>,  <19.678379, 13.846131, 10.355474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.614239, 13.615997, 10.332572>,  <19.507339, 13.232441, 10.294403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.614239, 13.615997, 10.332572> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269400, 0.169422, -0.948008,
		-0.925203, 0.227649, 0.303603,
		0.267250, 0.958891, 0.095421,
		19.694414, 13.903665, 10.361198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.970509, 13.713234, 9.962514>,  <19.507339, 13.232441, 10.294403>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.970509, 13.713234, 9.962514> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.303967, 13.931511, 9.996593>,  <19.504042, 14.062477, 10.017039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.303967, 13.931511, 9.996593>,  <18.970509, 13.713234, 9.962514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.303967, 13.931511, 9.996593> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137015, 0.353768, -0.925243,
		-0.535037, 0.759650, 0.369685,
		0.833644, 0.545692, 0.085195,
		19.554060, 14.095219, 10.022151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.840139, 14.369291, 9.588125>,  <18.970509, 13.713234, 9.962514>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.840139, 14.369291, 9.588125> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.235947, 14.311787, 9.582670>,  <19.473431, 14.277284, 9.579397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.235947, 14.311787, 9.582670>,  <18.840139, 14.369291, 9.588125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.235947, 14.311787, 9.582670> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030256, 0.298742, -0.953854,
		0.141203, 0.943444, 0.299960,
		0.989518, -0.143762, -0.013638,
		19.532803, 14.268658, 9.578579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.185812, 14.987689, 9.397928>,  <18.840139, 14.369291, 9.588125>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.185812, 14.987689, 9.397928> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.392624, 14.660992, 9.295471>,  <19.516712, 14.464973, 9.233996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.392624, 14.660992, 9.295471>,  <19.185812, 14.987689, 9.397928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.392624, 14.660992, 9.295471> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097122, 0.241335, -0.965570,
		0.850438, 0.524107, 0.045454,
		0.517032, -0.816743, -0.256143,
		19.547733, 14.415969, 9.218628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.861467, 14.733251, 8.820907>,  <19.185812, 14.987689, 9.397928>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.861467, 14.733251, 8.820907> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.470806, 14.689568, 8.894903>,  <18.236410, 14.663358, 8.939301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.470806, 14.689568, 8.894903>,  <18.861467, 14.733251, 8.820907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.470806, 14.689568, 8.894903> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150791, 0.264827, 0.952433,
		-0.153004, 0.958092, -0.242176,
		-0.976653, -0.109208, 0.184991,
		18.177811, 14.656805, 8.950400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.587769, 15.497545, 9.073486>,  <18.861467, 14.733251, 8.820907>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.587769, 15.497545, 9.073486> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.309948, 15.238041, 9.197877>,  <18.143255, 15.082338, 9.272511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.309948, 15.238041, 9.197877>,  <18.587769, 15.497545, 9.073486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.309948, 15.238041, 9.197877> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117402, 0.528656, 0.840678,
		-0.709799, 0.547386, -0.443345,
		-0.694552, -0.648762, 0.310975,
		18.101582, 15.043412, 9.291169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.056761, 15.854363, 9.402451>,  <18.587769, 15.497545, 9.073486>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.056761, 15.854363, 9.402451> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.029514, 15.488998, 9.562967>,  <18.013166, 15.269779, 9.659278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.029514, 15.488998, 9.562967>,  <18.056761, 15.854363, 9.402451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.029514, 15.488998, 9.562967> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158825, 0.407025, 0.899503,
		-0.984954, -0.002465, -0.172798,
		-0.068116, -0.913414, 0.401293,
		18.009079, 15.214974, 9.683355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.466583, 16.052111, 9.722953>,  <18.056761, 15.854363, 9.402451>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.466583, 16.052111, 9.722953> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.623669, 15.720322, 9.881824>,  <17.717920, 15.521248, 9.977146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.623669, 15.720322, 9.881824>,  <17.466583, 16.052111, 9.722953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.623669, 15.720322, 9.881824> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194628, 0.347130, 0.917399,
		-0.898830, -0.437577, -0.025116,
		0.392714, -0.829474, 0.397176,
		17.741484, 15.471479, 10.000977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.031952, 15.803389, 10.318919>,  <17.466583, 16.052111, 9.722953>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.031952, 15.803389, 10.318919> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.357105, 15.581703, 10.390547>,  <17.552197, 15.448691, 10.433523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.357105, 15.581703, 10.390547>,  <17.031952, 15.803389, 10.318919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.357105, 15.581703, 10.390547> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047045, 0.243971, 0.968641,
		-0.580522, -0.795817, 0.172247,
		0.812884, -0.554214, 0.179069,
		17.600971, 15.415439, 10.444267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.887146, 15.398567, 10.943636>,  <17.031952, 15.803389, 10.318919>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.887146, 15.398567, 10.943636> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.285118, 15.417526, 10.908163>,  <17.523901, 15.428902, 10.886879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.285118, 15.417526, 10.908163>,  <16.887146, 15.398567, 10.943636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.285118, 15.417526, 10.908163> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068279, 0.328987, 0.941863,
		0.073816, -0.943145, 0.324083,
		0.994931, 0.047397, -0.088682,
		17.583597, 15.431746, 10.881558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.191921, 15.032683, 11.459249>,  <16.887146, 15.398567, 10.943636>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.191921, 15.032683, 11.459249> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.485832, 15.277752, 11.342811>,  <17.662178, 15.424793, 11.272947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.485832, 15.277752, 11.342811>,  <17.191921, 15.032683, 11.459249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.485832, 15.277752, 11.342811> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221373, 0.189054, 0.956688,
		0.641169, -0.767392, 0.003284,
		0.734776, 0.612672, -0.291096,
		17.706264, 15.461554, 11.255482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.691256, 14.932607, 11.964613>,  <17.191921, 15.032683, 11.459249>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.691256, 14.932607, 11.964613> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.778770, 15.281193, 11.789031>,  <17.831280, 15.490344, 11.683682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.778770, 15.281193, 11.789031>,  <17.691256, 14.932607, 11.964613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.778770, 15.281193, 11.789031> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000441, 0.449941, 0.893058,
		0.975772, -0.195197, 0.098826,
		0.218788, 0.871465, -0.438954,
		17.844406, 15.542632, 11.657345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.236963, 15.239165, 12.360637>,  <17.691256, 14.932607, 11.964613>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.236963, 15.239165, 12.360637> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.070694, 15.540863, 12.157332>,  <17.970932, 15.721882, 12.035350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.070694, 15.540863, 12.157332>,  <18.236963, 15.239165, 12.360637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.070694, 15.540863, 12.157332> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059047, 0.535269, 0.842615,
		0.907595, 0.380265, -0.177962,
		-0.415675, 0.754245, -0.508261,
		17.945992, 15.767137, 12.004854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.598696, 15.805846, 12.488645>,  <18.236963, 15.239165, 12.360637>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.598696, 15.805846, 12.488645> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.277473, 16.000744, 12.351418>,  <18.084740, 16.117682, 12.269083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.277473, 16.000744, 12.351418>,  <18.598696, 15.805846, 12.488645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.277473, 16.000744, 12.351418> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003785, 0.579867, 0.814702,
		0.595892, 0.652953, -0.467510,
		-0.803056, 0.487244, -0.343066,
		18.036556, 16.146917, 12.248499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.780058, 16.498646, 12.447415>,  <18.598696, 15.805846, 12.488645>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.780058, 16.498646, 12.447415> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.380592, 16.519268, 12.448852>,  <18.140913, 16.531641, 12.449714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.380592, 16.519268, 12.448852>,  <18.780058, 16.498646, 12.447415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.380592, 16.519268, 12.448852> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040230, 0.731885, 0.680240,
		0.032442, 0.679475, -0.732981,
		-0.998664, 0.051556, 0.003591,
		18.080994, 16.534735, 12.449929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.503040, 17.206610, 12.625081>,  <18.780058, 16.498646, 12.447415>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.503040, 17.206610, 12.625081> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.166218, 16.998409, 12.681674>,  <17.964125, 16.873489, 12.715630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.166218, 16.998409, 12.681674>,  <18.503040, 17.206610, 12.625081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.166218, 16.998409, 12.681674> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078986, 0.378466, 0.922239,
		-0.533573, 0.765403, -0.359803,
		-0.842058, -0.520501, 0.141483,
		17.913601, 16.842258, 12.724119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.067318, 17.658644, 12.723531>,  <18.503040, 17.206610, 12.625081>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.067318, 17.658644, 12.723531> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.885265, 17.344776, 12.891890>,  <17.776033, 17.156456, 12.992905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.885265, 17.344776, 12.891890>,  <18.067318, 17.658644, 12.723531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.885265, 17.344776, 12.891890> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097205, 0.513650, 0.852476,
		-0.885102, 0.347076, -0.310052,
		-0.455132, -0.784667, 0.420896,
		17.748726, 17.109377, 13.018158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.476370, 17.962456, 13.006361>,  <18.067318, 17.658644, 12.723531>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.476370, 17.962456, 13.006361> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.521980, 17.614548, 13.198402>,  <17.549347, 17.405804, 13.313627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.521980, 17.614548, 13.198402>,  <17.476370, 17.962456, 13.006361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.521980, 17.614548, 13.198402> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193526, 0.454552, 0.869443,
		-0.974446, -0.192053, -0.116491,
		0.114028, -0.869769, 0.480104,
		17.556189, 17.353617, 13.342434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.669815, 18.111454, 12.814178>,  <17.476370, 17.962456, 13.006361>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.669815, 18.111454, 12.814178> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.600143, 18.486637, 12.694243>,  <16.558340, 18.711746, 12.622283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.600143, 18.486637, 12.694243>,  <16.669815, 18.111454, 12.814178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.600143, 18.486637, 12.694243> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550187, -0.159829, -0.819603,
		-0.816673, -0.307724, -0.488212,
		-0.174181, 0.937956, -0.299834,
		16.547890, 18.768024, 12.604293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.539207, 18.070810, 12.077536>,  <16.669815, 18.111454, 12.814178>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.539207, 18.070810, 12.077536> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.639595, 18.452400, 12.143194>,  <16.699827, 18.681355, 12.182590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.639595, 18.452400, 12.143194>,  <16.539207, 18.070810, 12.077536>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.639595, 18.452400, 12.143194> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545475, 0.000709, -0.838127,
		-0.799669, 0.299882, -0.520192,
		0.250971, 0.953976, 0.164146,
		16.714886, 18.738592, 12.192438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.473812, 18.352850, 11.420496>,  <16.539207, 18.070810, 12.077536>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.473812, 18.352850, 11.420496> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.682175, 18.628769, 11.621628>,  <16.807192, 18.794319, 11.742307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.682175, 18.628769, 11.621628>,  <16.473812, 18.352850, 11.420496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.682175, 18.628769, 11.621628> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662904, 0.044220, -0.747398,
		-0.537787, 0.722652, -0.434234,
		0.520907, 0.689796, 0.502830,
		16.838448, 18.835709, 11.772476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.465063, 18.939222, 11.065088>,  <16.473812, 18.352850, 11.420496>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.465063, 18.939222, 11.065088> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.794067, 18.950787, 11.292293>,  <16.991470, 18.957726, 11.428616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.794067, 18.950787, 11.292293>,  <16.465063, 18.939222, 11.065088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.794067, 18.950787, 11.292293> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567770, 0.016794, -0.823016,
		-0.033335, 0.999441, -0.002602,
		0.822512, 0.028913, 0.568012,
		17.040821, 18.959461, 11.462696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.796556, 19.462955, 10.833498>,  <16.465063, 18.939222, 11.065088>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.796556, 19.462955, 10.833498> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.082230, 19.275372, 11.041351>,  <17.253633, 19.162821, 11.166063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.082230, 19.275372, 11.041351>,  <16.796556, 19.462955, 10.833498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.082230, 19.275372, 11.041351> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632564, 0.114582, -0.765986,
		0.299676, 0.875756, 0.378479,
		0.714183, -0.468959, 0.519634,
		17.296484, 19.134684, 11.197242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.429859, 19.905210, 10.906819>,  <16.796556, 19.462955, 10.833498>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.429859, 19.905210, 10.906819> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.539070, 19.525242, 10.967618>,  <17.604597, 19.297260, 11.004097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.539070, 19.525242, 10.967618>,  <17.429859, 19.905210, 10.906819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.539070, 19.525242, 10.967618> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645395, 0.063702, -0.761188,
		0.713387, 0.305924, 0.630467,
		0.273028, -0.949922, 0.151998,
		17.620979, 19.240265, 11.013217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.175091, 19.837986, 11.072770>,  <17.429859, 19.905210, 10.906819>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.175091, 19.837986, 11.072770> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.091816, 19.466946, 10.948697>,  <18.041851, 19.244322, 10.874253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.091816, 19.466946, 10.948697>,  <18.175091, 19.837986, 11.072770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.091816, 19.466946, 10.948697> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648145, 0.106669, -0.754009,
		0.732507, -0.358017, 0.579014,
		-0.208186, -0.927602, -0.310183,
		18.029360, 19.188665, 10.855642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.782028, 19.588831, 10.990052>,  <18.175091, 19.837986, 11.072770>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.782028, 19.588831, 10.990052> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.543007, 19.360336, 10.764977>,  <18.399593, 19.223240, 10.629932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.543007, 19.360336, 10.764977>,  <18.782028, 19.588831, 10.990052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.543007, 19.360336, 10.764977> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724972, -0.085099, -0.683501,
		0.342557, -0.816362, 0.464982,
		-0.597554, -0.571237, -0.562688,
		18.363741, 19.188965, 10.596171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.262600, 19.216631, 10.665146>,  <18.782028, 19.588831, 10.990052>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.262600, 19.216631, 10.665146> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.941395, 19.106838, 10.453549>,  <18.748672, 19.040962, 10.326591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.941395, 19.106838, 10.453549>,  <19.262600, 19.216631, 10.665146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.941395, 19.106838, 10.453549> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581352, -0.165438, -0.796656,
		0.131152, -0.947254, 0.292419,
		-0.803013, -0.274481, -0.528990,
		18.700491, 19.024494, 10.294852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.565714, 18.716013, 10.200907>,  <19.262600, 19.216631, 10.665146>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.565714, 18.716013, 10.200907> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.229572, 18.856083, 10.035409>,  <19.027887, 18.940125, 9.936110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.229572, 18.856083, 10.035409>,  <19.565714, 18.716013, 10.200907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.229572, 18.856083, 10.035409> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476774, 0.114399, -0.871550,
		-0.257862, -0.929673, -0.263089,
		-0.840353, 0.350174, -0.413745,
		18.977467, 18.961134, 9.911285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.642559, 18.435919, 9.630238>,  <19.565714, 18.716013, 10.200907>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.642559, 18.435919, 9.630238> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.367275, 18.715084, 9.550959>,  <19.202105, 18.882584, 9.503391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.367275, 18.715084, 9.550959>,  <19.642559, 18.435919, 9.630238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.367275, 18.715084, 9.550959> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508922, 0.269697, -0.817473,
		-0.517072, -0.663461, -0.540792,
		-0.688212, 0.697913, -0.198197,
		19.160812, 18.924458, 9.491500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.471613, 18.393122, 8.791121>,  <19.642559, 18.435919, 9.630238>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.471613, 18.393122, 8.791121> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.345413, 18.752224, 8.914080>,  <19.269693, 18.967686, 8.987855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.345413, 18.752224, 8.914080>,  <19.471613, 18.393122, 8.791121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.345413, 18.752224, 8.914080> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257241, 0.392729, -0.882944,
		-0.913392, -0.199495, -0.354846,
		-0.315501, 0.897756, 0.307398,
		19.250763, 19.021551, 9.006299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<14.111519, 19.546143, 15.550024> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.406234, 19.816124, 15.534098>,  <14.583063, 19.978113, 15.524542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.406234, 19.816124, 15.534098>,  <14.111519, 19.546143, 15.550024>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.406234, 19.816124, 15.534098> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184806, -0.257685, -0.948391,
		-0.650377, 0.691404, -0.314594,
		0.736787, 0.674951, -0.039817,
		14.627270, 20.018610, 15.522153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.976351, 19.901709, 14.955618>,  <14.111519, 19.546143, 15.550024>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.976351, 19.901709, 14.955618> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.368033, 19.969822, 14.999725>,  <14.603043, 20.010691, 15.026190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.368033, 19.969822, 14.999725>,  <13.976351, 19.901709, 14.955618>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.368033, 19.969822, 14.999725> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126423, -0.087108, -0.988145,
		-0.158659, 0.981537, -0.106824,
		0.979206, 0.170283, 0.110268,
		14.661796, 20.020906, 15.032805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.230327, 20.332569, 14.379152>,  <13.976351, 19.901709, 14.955618>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.230327, 20.332569, 14.379152> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.579417, 20.173523, 14.492466>,  <14.788872, 20.078096, 14.560454>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.579417, 20.173523, 14.492466>,  <14.230327, 20.332569, 14.379152>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.579417, 20.173523, 14.492466> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241523, -0.152638, -0.958315,
		0.424280, 0.904768, -0.037179,
		0.872728, -0.397615, 0.283283,
		14.841235, 20.054239, 14.577451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.701376, 20.672791, 13.999099>,  <14.230327, 20.332569, 14.379152>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.701376, 20.672791, 13.999099> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.902490, 20.345615, 14.110945>,  <15.023158, 20.149311, 14.178052>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.902490, 20.345615, 14.110945>,  <14.701376, 20.672791, 13.999099>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.902490, 20.345615, 14.110945> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332573, -0.115534, -0.935974,
		0.797874, 0.563586, 0.213935,
		0.502785, -0.817938, 0.279615,
		15.053325, 20.100233, 14.194829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.528729, 20.617060, 13.710075>,  <14.701376, 20.672791, 13.999099>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.528729, 20.617060, 13.710075> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.453425, 20.235332, 13.802881>,  <15.408243, 20.006296, 13.858564>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.453425, 20.235332, 13.802881>,  <15.528729, 20.617060, 13.710075>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.453425, 20.235332, 13.802881> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395328, -0.289890, -0.871596,
		0.899040, -0.072365, 0.431845,
		-0.188261, -0.954320, 0.232014,
		15.396947, 19.949036, 13.872485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.060022, 20.287703, 13.616421>,  <15.528729, 20.617060, 13.710075>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.060022, 20.287703, 13.616421> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.813441, 19.972759, 13.619284>,  <15.665492, 19.783792, 13.621001>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.813441, 19.972759, 13.619284>,  <16.060022, 20.287703, 13.616421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.813441, 19.972759, 13.619284> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548841, -0.436192, -0.713099,
		0.564587, -0.435664, 0.701027,
		-0.616454, -0.787359, 0.007159,
		15.628505, 19.736551, 13.621431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.441973, 19.738468, 13.807670>,  <16.060022, 20.287703, 13.616421>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.441973, 19.738468, 13.807670> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.130142, 19.574131, 13.618580>,  <15.943044, 19.475529, 13.505126>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.130142, 19.574131, 13.618580>,  <16.441973, 19.738468, 13.807670>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.130142, 19.574131, 13.618580> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626306, -0.509814, -0.589771,
		0.001302, -0.755842, 0.654753,
		-0.779576, -0.410843, -0.472724,
		15.896269, 19.450878, 13.476763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.625933, 19.045029, 13.783998>,  <16.441973, 19.738468, 13.807670>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.625933, 19.045029, 13.783998> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.360985, 19.125019, 13.495201>,  <16.202015, 19.173014, 13.321922>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.360985, 19.125019, 13.495201>,  <16.625933, 19.045029, 13.783998>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.360985, 19.125019, 13.495201> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560483, -0.507200, -0.654681,
		-0.497106, -0.838309, 0.223882,
		-0.662378, 0.199964, -0.721990,
		16.162273, 19.185011, 13.278603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.594854, 18.438158, 13.450267>,  <16.625933, 19.045029, 13.783998>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.594854, 18.438158, 13.450267> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.456444, 18.720787, 13.203360>,  <16.373398, 18.890366, 13.055216>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.456444, 18.720787, 13.203360>,  <16.594854, 18.438158, 13.450267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.456444, 18.720787, 13.203360> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589147, -0.348391, -0.729061,
		-0.730185, -0.615937, -0.295722,
		-0.346029, 0.706573, -0.617267,
		16.352634, 18.932758, 13.018180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.883064, 17.724190, 13.369848>,  <16.594854, 18.438158, 13.450267>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.883064, 17.724190, 13.369848> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.179535, 17.554317, 13.577812>,  <17.357418, 17.452394, 13.702591>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.179535, 17.554317, 13.577812>,  <16.883064, 17.724190, 13.369848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.179535, 17.554317, 13.577812> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269973, 0.520519, 0.810046,
		-0.614633, -0.740748, 0.271145,
		0.741176, -0.424679, 0.519910,
		17.401888, 17.426914, 13.733785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.585449, 17.358355, 13.893579>,  <16.883064, 17.724190, 13.369848>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.585449, 17.358355, 13.893579> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.949211, 17.340603, 14.058992>,  <17.167469, 17.329952, 14.158240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.949211, 17.340603, 14.058992>,  <16.585449, 17.358355, 13.893579>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.949211, 17.340603, 14.058992> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389965, 0.254679, 0.884910,
		-0.144592, -0.966007, 0.214299,
		0.909407, -0.044382, 0.413533,
		17.222033, 17.327288, 14.183052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.501507, 16.889507, 14.457440>,  <16.585449, 17.358355, 13.893579>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.501507, 16.889507, 14.457440> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.832737, 17.097515, 14.541218>,  <17.031475, 17.222321, 14.591484>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.832737, 17.097515, 14.541218>,  <16.501507, 16.889507, 14.457440>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.832737, 17.097515, 14.541218> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268746, 0.040345, 0.962366,
		0.492001, -0.853199, 0.173163,
		0.828076, 0.520022, 0.209444,
		17.081160, 17.253521, 14.604052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.679535, 16.726974, 15.029244>,  <16.501507, 16.889507, 14.457440>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.679535, 16.726974, 15.029244> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.882763, 17.071434, 15.036030>,  <17.004700, 17.278111, 15.040101>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.882763, 17.071434, 15.036030>,  <16.679535, 16.726974, 15.029244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.882763, 17.071434, 15.036030> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193910, 0.095170, 0.976392,
		0.839204, -0.499365, 0.215338,
		0.508070, 0.861148, 0.016965,
		17.035185, 17.329779, 15.041120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.109083, 16.672832, 15.553960>,  <16.679535, 16.726974, 15.029244>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.109083, 16.672832, 15.553960> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.104778, 17.066750, 15.484602>,  <17.102196, 17.303101, 15.442987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.104778, 17.066750, 15.484602>,  <17.109083, 16.672832, 15.553960>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.104778, 17.066750, 15.484602> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102369, 0.173578, 0.979485,
		0.994688, -0.007208, -0.102681,
		-0.010763, 0.984794, -0.173394,
		17.101549, 17.362188, 15.432584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.620089, 16.915979, 16.026583>,  <17.109083, 16.672832, 15.553960>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.620089, 16.915979, 16.026583> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.394482, 17.222660, 15.903912>,  <17.259117, 17.406668, 15.830309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.394482, 17.222660, 15.903912>,  <17.620089, 16.915979, 16.026583>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.394482, 17.222660, 15.903912> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179774, 0.248472, 0.951810,
		0.805955, 0.591972, -0.002310,
		-0.564019, 0.766701, -0.306679,
		17.225277, 17.452671, 15.811908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.923182, 17.518265, 16.448898>,  <17.620089, 16.915979, 16.026583>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.923182, 17.518265, 16.448898> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.547997, 17.595737, 16.333860>,  <17.322886, 17.642221, 16.264837>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.547997, 17.595737, 16.333860>,  <17.923182, 17.518265, 16.448898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.547997, 17.595737, 16.333860> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222238, 0.300842, 0.927418,
		0.266146, 0.933799, -0.239135,
		-0.937964, 0.193684, -0.287593,
		17.266607, 17.653843, 16.247583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.733580, 18.267227, 16.529694>,  <17.923182, 17.518265, 16.448898>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.733580, 18.267227, 16.529694> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.410744, 18.032276, 16.553684>,  <17.217043, 17.891306, 16.568079>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.410744, 18.032276, 16.553684>,  <17.733580, 18.267227, 16.529694>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.410744, 18.032276, 16.553684> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200695, 0.368454, 0.907724,
		-0.555274, 0.720577, -0.415258,
		-0.807089, -0.587376, 0.059976,
		17.168617, 17.856064, 16.571676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.279703, 18.682964, 16.939077>,  <17.733580, 18.267227, 16.529694>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.279703, 18.682964, 16.939077> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.098824, 18.326500, 16.924366>,  <16.990295, 18.112621, 16.915539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.098824, 18.326500, 16.924366>,  <17.279703, 18.682964, 16.939077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.098824, 18.326500, 16.924366> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424525, 0.178783, 0.887589,
		-0.784407, 0.416981, -0.459165,
		-0.452198, -0.891159, -0.036780,
		16.963163, 18.059153, 16.913332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.689373, 18.800564, 17.226950>,  <17.279703, 18.682964, 16.939077>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.689373, 18.800564, 17.226950> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.683533, 18.400948, 17.243479>,  <16.680029, 18.161179, 17.253397>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.683533, 18.400948, 17.243479>,  <16.689373, 18.800564, 17.226950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.683533, 18.400948, 17.243479> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514348, 0.042946, 0.856506,
		-0.857457, -0.008749, -0.514481,
		-0.014601, -0.999039, 0.041324,
		16.679152, 18.101236, 17.255877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.105177, 18.733652, 17.390097>,  <16.689373, 18.800564, 17.226950>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.105177, 18.733652, 17.390097> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.277325, 18.390224, 17.501553>,  <16.380613, 18.184168, 17.568426>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.277325, 18.390224, 17.501553>,  <16.105177, 18.733652, 17.390097>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.277325, 18.390224, 17.501553> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561732, -0.013109, 0.827215,
		-0.706569, -0.512529, -0.487928,
		0.430368, -0.858569, 0.278642,
		16.406435, 18.132654, 17.585146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.572614, 18.376862, 17.612860>,  <16.105177, 18.733652, 17.390097>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.572614, 18.376862, 17.612860> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.892310, 18.196316, 17.771595>,  <16.084127, 18.087988, 17.866837>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.892310, 18.196316, 17.771595>,  <15.572614, 18.376862, 17.612860>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.892310, 18.196316, 17.771595> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424091, 0.044315, 0.904534,
		-0.425863, -0.891237, -0.156003,
		0.799241, -0.451367, 0.396838,
		16.132082, 18.060905, 17.890646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.396161, 17.807457, 18.068260>,  <15.572614, 18.376862, 17.612860>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.396161, 17.807457, 18.068260> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.763787, 17.889595, 18.202812>,  <15.984363, 17.938877, 18.283545>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.763787, 17.889595, 18.202812>,  <15.396161, 17.807457, 18.068260>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.763787, 17.889595, 18.202812> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344456, 0.003820, 0.938794,
		0.191489, -0.978683, 0.074243,
		0.919066, 0.205343, 0.336382,
		16.039507, 17.951199, 18.303726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.530467, 17.436457, 18.601112>,  <15.396161, 17.807457, 18.068260>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.530467, 17.436457, 18.601112> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.786521, 17.733131, 18.681244>,  <15.940153, 17.911137, 18.729322>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.786521, 17.733131, 18.681244>,  <15.530467, 17.436457, 18.601112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.786521, 17.733131, 18.681244> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366065, 0.065209, 0.928302,
		0.675444, -0.667571, 0.313248,
		0.640134, 0.741685, 0.200330,
		15.978561, 17.955637, 18.741343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<20.333694, 21.773191, 19.066826> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.941067, 21.764050, 18.990932>,  <19.705490, 21.758564, 18.945396>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.941067, 21.764050, 18.990932>,  <20.333694, 21.773191, 19.066826>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.941067, 21.764050, 18.990932> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174470, -0.512293, -0.840901,
		-0.077979, -0.858506, 0.506839,
		-0.981570, -0.022856, -0.189732,
		19.646595, 21.757193, 18.934013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.144461, 21.021353, 18.915531>,  <20.333694, 21.773191, 19.066826>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.144461, 21.021353, 18.915531> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.878986, 21.279900, 18.764944>,  <19.719702, 21.435028, 18.674591>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.878986, 21.279900, 18.764944>,  <20.144461, 21.021353, 18.915531>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.878986, 21.279900, 18.764944> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119539, -0.405175, -0.906390,
		-0.738398, -0.646561, 0.191643,
		-0.663686, 0.646368, -0.376470,
		19.679880, 21.473810, 18.652002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.733175, 20.653326, 18.614204>,  <20.144461, 21.021353, 18.915531>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.733175, 20.653326, 18.614204> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.670753, 21.007477, 18.439043>,  <19.633301, 21.219967, 18.333946>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.670753, 21.007477, 18.439043>,  <19.733175, 20.653326, 18.614204>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.670753, 21.007477, 18.439043> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351131, -0.364649, -0.862402,
		-0.923230, -0.288342, -0.253978,
		-0.156054, 0.885375, -0.437901,
		19.623938, 21.273090, 18.307673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.475449, 20.498108, 17.987154>,  <19.733175, 20.653326, 18.614204>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.475449, 20.498108, 17.987154> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.640137, 20.856606, 17.921141>,  <19.738949, 21.071705, 17.881533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.640137, 20.856606, 17.921141>,  <19.475449, 20.498108, 17.987154>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.640137, 20.856606, 17.921141> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098848, -0.223947, -0.969576,
		-0.905935, 0.382878, -0.180795,
		0.411718, 0.896243, -0.165035,
		19.763653, 21.125479, 17.871630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.218554, 20.680872, 17.404209>,  <19.475449, 20.498108, 17.987154>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.218554, 20.680872, 17.404209> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.497044, 20.967991, 17.406773>,  <19.664137, 21.140263, 17.408312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.497044, 20.967991, 17.406773>,  <19.218554, 20.680872, 17.404209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.497044, 20.967991, 17.406773> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152460, -0.139139, -0.978466,
		-0.701448, 0.682208, -0.206307,
		0.696223, 0.717797, 0.006411,
		19.705910, 21.183331, 17.408695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.058355, 21.042364, 16.803797>,  <19.218554, 20.680872, 17.404209>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.058355, 21.042364, 16.803797> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.433620, 21.162411, 16.872829>,  <19.658779, 21.234438, 16.914249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.433620, 21.162411, 16.872829>,  <19.058355, 21.042364, 16.803797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.433620, 21.162411, 16.872829> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224996, -0.149687, -0.962793,
		-0.263115, 0.942086, -0.207955,
		0.938162, 0.300114, 0.172581,
		19.715069, 21.252445, 16.924604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.336742, 21.582220, 16.219194>,  <19.058355, 21.042364, 16.803797>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.336742, 21.582220, 16.219194> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.665184, 21.438015, 16.396200>,  <19.862249, 21.351492, 16.502403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.665184, 21.438015, 16.396200>,  <19.336742, 21.582220, 16.219194>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.665184, 21.438015, 16.396200> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448524, -0.071950, -0.890870,
		0.353011, 0.929974, 0.102621,
		0.821103, -0.360515, 0.442515,
		19.911514, 21.329861, 16.528955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.873434, 21.973145, 15.887238>,  <19.336742, 21.582220, 16.219194>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.873434, 21.973145, 15.887238> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.985294, 21.613434, 16.021759>,  <20.052410, 21.397608, 16.102472>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.985294, 21.613434, 16.021759>,  <19.873434, 21.973145, 15.887238>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.985294, 21.613434, 16.021759> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623812, -0.096081, -0.775646,
		0.729831, 0.426702, 0.534109,
		0.279652, -0.899274, 0.336304,
		20.069189, 21.343651, 16.122650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.382410, 21.829500, 15.425504>,  <19.873434, 21.973145, 15.887238>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.382410, 21.829500, 15.425504> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.370865, 21.480820, 15.621178>,  <20.363937, 21.271610, 15.738582>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.370865, 21.480820, 15.621178>,  <20.382410, 21.829500, 15.425504>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.370865, 21.480820, 15.621178> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495127, -0.437602, -0.750569,
		0.868341, 0.220544, 0.444234,
		-0.028864, -0.871702, 0.489185,
		20.362206, 21.219309, 15.767933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.099155, 21.618664, 15.413556>,  <20.382410, 21.829500, 15.425504>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.099155, 21.618664, 15.413556> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.886158, 21.287212, 15.482634>,  <20.758360, 21.088341, 15.524080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.886158, 21.287212, 15.482634>,  <21.099155, 21.618664, 15.413556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.886158, 21.287212, 15.482634> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440947, -0.445719, -0.779038,
		0.722507, -0.338684, 0.602725,
		-0.532494, -0.828630, 0.172694,
		20.726410, 21.038624, 15.534442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.565224, 21.058807, 15.316727>,  <21.099155, 21.618664, 15.413556>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.565224, 21.058807, 15.316727> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.214348, 20.866867, 15.310024>,  <21.003822, 20.751703, 15.306003>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.214348, 20.866867, 15.310024>,  <21.565224, 21.058807, 15.316727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.214348, 20.866867, 15.310024> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264732, -0.454238, -0.850638,
		0.400567, -0.750607, 0.525485,
		-0.877191, -0.479850, -0.016757,
		20.951191, 20.722912, 15.304997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.715284, 20.348583, 15.359576>,  <21.565224, 21.058807, 15.316727>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.715284, 20.348583, 15.359576> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.354767, 20.398563, 15.193657>,  <21.138456, 20.428551, 15.094106>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.354767, 20.398563, 15.193657>,  <21.715284, 20.348583, 15.359576>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.354767, 20.398563, 15.193657> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313607, -0.472379, -0.823716,
		-0.298865, -0.872494, 0.386567,
		-0.901294, 0.124950, -0.414798,
		21.084379, 20.436049, 15.069218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.635485, 19.782936, 15.034449>,  <21.715284, 20.348583, 15.359576>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.635485, 19.782936, 15.034449> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.370506, 20.024540, 14.857208>,  <21.211519, 20.169502, 14.750864>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.370506, 20.024540, 14.857208>,  <21.635485, 19.782936, 15.034449>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.370506, 20.024540, 14.857208> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242495, -0.386751, -0.889730,
		-0.708775, -0.696848, 0.109732,
		-0.662445, 0.604010, -0.443101,
		21.171772, 20.205742, 14.724277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.242579, 19.409561, 14.529710>,  <21.635485, 19.782936, 15.034449>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.242579, 19.409561, 14.529710> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.208832, 19.780052, 14.382750>,  <21.188583, 20.002348, 14.294574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.208832, 19.780052, 14.382750>,  <21.242579, 19.409561, 14.529710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.208832, 19.780052, 14.382750> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011203, -0.369573, -0.929134,
		-0.996372, -0.074270, 0.041556,
		-0.084365, 0.926229, -0.367400,
		21.183523, 20.057920, 14.272530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.881037, 18.852634, 14.307786>,  <21.242579, 19.409561, 14.529710>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.881037, 18.852634, 14.307786> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.181599, 18.594822, 14.364311>,  <21.361937, 18.440134, 14.398226>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.181599, 18.594822, 14.364311>,  <20.881037, 18.852634, 14.307786>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.181599, 18.594822, 14.364311> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137089, 0.056998, 0.988918,
		-0.645444, -0.762450, -0.045530,
		0.751405, -0.644532, 0.141312,
		21.407021, 18.401463, 14.406705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.669487, 18.367226, 14.752666>,  <20.881037, 18.852634, 14.307786>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.669487, 18.367226, 14.752666> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.066902, 18.333652, 14.783224>,  <21.305351, 18.313509, 14.801558>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.066902, 18.333652, 14.783224>,  <20.669487, 18.367226, 14.752666>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.066902, 18.333652, 14.783224> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078209, -0.018544, 0.996765,
		-0.082251, -0.996298, -0.024989,
		0.993538, -0.083939, 0.076394,
		21.364964, 18.308472, 14.806143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.701843, 17.999790, 15.339089>,  <20.669487, 18.367226, 14.752666>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.701843, 17.999790, 15.339089> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.079750, 18.127499, 15.309477>,  <21.306494, 18.204123, 15.291710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.079750, 18.127499, 15.309477>,  <20.701843, 17.999790, 15.339089>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.079750, 18.127499, 15.309477> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120079, -0.127028, 0.984604,
		0.304951, -0.939111, -0.158350,
		0.944768, 0.319271, -0.074031,
		21.363180, 18.223280, 15.287268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.086033, 17.456968, 15.570225>,  <20.701843, 17.999790, 15.339089>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.086033, 17.456968, 15.570225> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.306793, 17.788818, 15.604006>,  <21.439249, 17.987928, 15.624274>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.306793, 17.788818, 15.604006>,  <21.086033, 17.456968, 15.570225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.306793, 17.788818, 15.604006> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088808, -0.159171, 0.983248,
		0.829168, -0.535154, -0.161524,
		0.551899, 0.829623, 0.084453,
		21.472363, 18.037704, 15.629342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.724667, 17.299965, 15.995608>,  <21.086033, 17.456968, 15.570225>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.724667, 17.299965, 15.995608> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.639042, 17.689823, 16.021662>,  <21.587667, 17.923738, 16.037294>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.639042, 17.689823, 16.021662>,  <21.724667, 17.299965, 15.995608>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.639042, 17.689823, 16.021662> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051354, -0.055357, 0.997145,
		0.975469, 0.216796, -0.038202,
		-0.214062, 0.974646, 0.065132,
		21.574823, 17.982218, 16.041201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.953039, 17.385132, 16.606112>,  <21.724667, 17.299965, 15.995608>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.953039, 17.385132, 16.606112> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.742622, 17.722301, 16.560936>,  <21.616371, 17.924604, 16.533831>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.742622, 17.722301, 16.560936>,  <21.953039, 17.385132, 16.606112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.742622, 17.722301, 16.560936> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058325, 0.096726, 0.993601,
		0.848455, 0.529265, -0.001718,
		-0.526044, 0.842925, -0.112937,
		21.584808, 17.975180, 16.527056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.152157, 17.789494, 17.189083>,  <21.953039, 17.385132, 16.606112>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.152157, 17.789494, 17.189083> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.823914, 17.955372, 17.031792>,  <21.626968, 18.054899, 16.937416>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.823914, 17.955372, 17.031792>,  <22.152157, 17.789494, 17.189083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.823914, 17.955372, 17.031792> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253729, 0.352170, 0.900888,
		0.512080, 0.839048, -0.183772,
		-0.820607, 0.414698, -0.393229,
		21.577732, 18.079781, 16.913822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.115780, 18.492350, 17.410358>,  <22.152157, 17.789494, 17.189083>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.115780, 18.492350, 17.410358> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.748318, 18.362068, 17.320927>,  <21.527840, 18.283899, 17.267267>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.748318, 18.362068, 17.320927>,  <22.115780, 18.492350, 17.410358>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.748318, 18.362068, 17.320927> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321214, 0.286349, 0.902677,
		-0.229982, 0.901067, -0.367676,
		-0.918657, -0.325702, -0.223580,
		21.472721, 18.264357, 17.253853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.636061, 19.041803, 17.629293>,  <22.115780, 18.492350, 17.410358>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.636061, 19.041803, 17.629293> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.380795, 18.735119, 17.601297>,  <21.227634, 18.551109, 17.584499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.380795, 18.735119, 17.601297>,  <21.636061, 19.041803, 17.629293>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.380795, 18.735119, 17.601297> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351833, 0.209568, 0.912302,
		-0.684804, 0.606826, -0.403493,
		-0.638168, -0.766710, -0.069988,
		21.189344, 18.505106, 17.580301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.900099, 19.336401, 17.677818>,  <21.636061, 19.041803, 17.629293>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.900099, 19.336401, 17.677818> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.896511, 18.957787, 17.806807>,  <20.894360, 18.730618, 17.884199>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.896511, 18.957787, 17.806807>,  <20.900099, 19.336401, 17.677818>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.896511, 18.957787, 17.806807> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660543, 0.247718, 0.708744,
		-0.750734, -0.206651, -0.627450,
		-0.008968, -0.946536, 0.322472,
		20.893820, 18.673826, 17.903549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.242048, 19.260067, 17.779762>,  <20.900099, 19.336401, 17.677818>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.242048, 19.260067, 17.779762> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.438709, 18.984829, 17.993231>,  <20.556705, 18.819687, 18.121311>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.438709, 18.984829, 17.993231>,  <20.242048, 19.260067, 17.779762>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.438709, 18.984829, 17.993231> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643851, 0.125374, 0.754810,
		-0.586288, -0.714708, -0.381389,
		0.491652, -0.688094, 0.533671,
		20.586205, 18.778400, 18.153332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.634323, 18.980520, 18.338188>,  <20.242048, 19.260067, 17.779762>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.634323, 18.980520, 18.338188> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.005516, 18.896057, 18.460999>,  <20.228231, 18.845379, 18.534685>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.005516, 18.896057, 18.460999>,  <19.634323, 18.980520, 18.338188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.005516, 18.896057, 18.460999> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310574, 0.016993, 0.950397,
		-0.205902, -0.977304, -0.049811,
		0.927981, -0.211159, 0.307024,
		20.283911, 18.832710, 18.553106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.510481, 18.341337, 18.700565>,  <19.634323, 18.980520, 18.338188>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.510481, 18.341337, 18.700565> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.846729, 18.508827, 18.837986>,  <20.048477, 18.609322, 18.920439>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.846729, 18.508827, 18.837986>,  <19.510481, 18.341337, 18.700565>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.846729, 18.508827, 18.837986> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400721, 0.054065, 0.914603,
		0.364394, -0.906502, 0.213241,
		0.840619, 0.418726, 0.343554,
		20.098915, 18.634445, 18.941051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.546953, 18.109371, 19.407377>,  <19.510481, 18.341337, 18.700565>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.546953, 18.109371, 19.407377> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.814941, 18.405285, 19.432224>,  <19.975735, 18.582832, 19.447132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.814941, 18.405285, 19.432224>,  <19.546953, 18.109371, 19.407377>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.814941, 18.405285, 19.432224> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337879, 0.229345, 0.912819,
		0.661042, -0.632551, 0.403612,
		0.669971, 0.739784, 0.062119,
		20.015932, 18.627220, 19.450859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.824560, 17.351059, 19.433805>,  <19.546953, 18.109371, 19.407377>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.824560, 17.351059, 19.433805> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.581516, 17.035480, 19.470402>,  <19.435690, 16.846132, 19.492359>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.581516, 17.035480, 19.470402>,  <19.824560, 17.351059, 19.433805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.581516, 17.035480, 19.470402> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250202, -0.299467, -0.920716,
		0.753796, -0.536546, 0.379356,
		-0.607611, -0.788948, 0.091492,
		19.399233, 16.798796, 19.497849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.151409, 16.762381, 19.203606>,  <19.824560, 17.351059, 19.433805>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.151409, 16.762381, 19.203606> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.766739, 16.660610, 19.162710>,  <19.535936, 16.599548, 19.138172>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.766739, 16.660610, 19.162710>,  <20.151409, 16.762381, 19.203606>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.766739, 16.660610, 19.162710> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158092, -0.209826, -0.964873,
		0.224034, -0.944056, 0.242006,
		-0.961673, -0.254423, -0.102240,
		19.478237, 16.584284, 19.132038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.092125, 16.024984, 18.985807>,  <20.151409, 16.762381, 19.203606>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.092125, 16.024984, 18.985807> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.741554, 16.178455, 18.869417>,  <19.531212, 16.270538, 18.799583>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.741554, 16.178455, 18.869417>,  <20.092125, 16.024984, 18.985807>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.741554, 16.178455, 18.869417> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148063, -0.360273, -0.921022,
		-0.458206, -0.850291, 0.258944,
		-0.876427, 0.383678, -0.290976,
		19.478626, 16.293558, 18.782125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.754492, 15.493903, 18.584406>,  <20.092125, 16.024984, 18.985807>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.754492, 15.493903, 18.584406> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.564419, 15.832081, 18.486897>,  <19.450375, 16.034986, 18.428391>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.564419, 15.832081, 18.486897>,  <19.754492, 15.493903, 18.584406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.564419, 15.832081, 18.486897> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188484, -0.368427, -0.910349,
		-0.859462, -0.386635, 0.334423,
		-0.475183, 0.845444, -0.243775,
		19.421864, 16.085714, 18.413765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.158762, 15.282687, 18.054897>,  <19.754492, 15.493903, 18.584406>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.158762, 15.282687, 18.054897> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.196667, 15.670914, 17.966331>,  <19.219410, 15.903850, 17.913193>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.196667, 15.670914, 17.966331>,  <19.158762, 15.282687, 18.054897>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.196667, 15.670914, 17.966331> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089610, -0.213194, -0.972892,
		-0.991459, 0.112033, 0.066770,
		0.094761, 0.970565, -0.221412,
		19.225096, 15.962083, 17.899908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.711025, 15.423469, 17.546062>,  <19.158762, 15.282687, 18.054897>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.711025, 15.423469, 17.546062> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.979965, 15.718307, 17.518827>,  <19.141329, 15.895211, 17.502485>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.979965, 15.718307, 17.518827>,  <18.711025, 15.423469, 17.546062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.979965, 15.718307, 17.518827> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011966, -0.081147, -0.996630,
		-0.740139, 0.670897, -0.045739,
		0.672348, 0.737097, -0.068088,
		19.181669, 15.939437, 17.498402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.525612, 15.904671, 16.892172>,  <18.711025, 15.423469, 17.546062>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.525612, 15.904671, 16.892172> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.907654, 15.983219, 16.980911>,  <19.136879, 16.030348, 17.034155>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.907654, 15.983219, 16.980911>,  <18.525612, 15.904671, 16.892172>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.907654, 15.983219, 16.980911> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238469, -0.065189, -0.968960,
		-0.175813, 0.978360, -0.109090,
		0.955103, 0.196370, 0.221848,
		19.194185, 16.042130, 17.047466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.758793, 16.396456, 16.464605>,  <18.525612, 15.904671, 16.892172>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.758793, 16.396456, 16.464605> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.094891, 16.211784, 16.578341>,  <19.296549, 16.100983, 16.646582>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.094891, 16.211784, 16.578341>,  <18.758793, 16.396456, 16.464605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.094891, 16.211784, 16.578341> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175385, -0.264791, -0.948222,
		0.513062, 0.846605, -0.141518,
		0.840243, -0.461676, 0.284336,
		19.346964, 16.073282, 16.663641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.399342, 16.556280, 16.063044>,  <18.758793, 16.396456, 16.464605>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.399342, 16.556280, 16.063044> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.479832, 16.194214, 16.212809>,  <19.528126, 15.976974, 16.302668>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.479832, 16.194214, 16.212809>,  <19.399342, 16.556280, 16.063044>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.479832, 16.194214, 16.212809> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186760, -0.339765, -0.921781,
		0.961577, 0.255409, 0.100680,
		0.201223, -0.905166, 0.374411,
		19.540199, 15.922664, 16.325132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.107197, 16.415318, 15.897446>,  <19.399342, 16.556280, 16.063044>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.107197, 16.415318, 15.897446> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.930489, 16.062855, 15.964857>,  <19.824465, 15.851377, 16.005304>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.930489, 16.062855, 15.964857>,  <20.107197, 16.415318, 15.897446>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.930489, 16.062855, 15.964857> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371409, -0.350634, -0.859716,
		0.816636, -0.317203, 0.482169,
		-0.441769, -0.881157, 0.168528,
		19.797958, 15.798508, 16.015415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.585936, 16.001268, 15.706370>,  <20.107197, 16.415318, 15.897446>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.585936, 16.001268, 15.706370> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.257046, 15.773869, 15.717329>,  <20.059711, 15.637428, 15.723905>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.257046, 15.773869, 15.717329>,  <20.585936, 16.001268, 15.706370>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.257046, 15.773869, 15.717329> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319873, -0.501378, -0.803929,
		0.470770, -0.652248, 0.594094,
		-0.822227, -0.568501, 0.027397,
		20.010378, 15.603318, 15.725548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.868740, 15.343855, 15.653386>,  <20.585936, 16.001268, 15.706370>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.868740, 15.343855, 15.653386> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.480705, 15.325455, 15.558041>,  <20.247885, 15.314415, 15.500834>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.480705, 15.325455, 15.558041>,  <20.868740, 15.343855, 15.653386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.480705, 15.325455, 15.558041> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228245, -0.507285, -0.831003,
		-0.082692, -0.860550, 0.502610,
		-0.970086, -0.046001, -0.238365,
		20.189680, 15.311654, 15.486531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.800903, 14.683580, 15.437654>,  <20.868740, 15.343855, 15.653386>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.800903, 14.683580, 15.437654> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.503063, 14.884907, 15.262272>,  <20.324360, 15.005703, 15.157043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.503063, 14.884907, 15.262272>,  <20.800903, 14.683580, 15.437654>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.503063, 14.884907, 15.262272> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123085, -0.542060, -0.831276,
		-0.656064, -0.672936, 0.341668,
		-0.744601, 0.503316, -0.438455,
		20.279684, 15.035902, 15.130735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.467400, 14.217789, 15.109469>,  <20.800903, 14.683580, 15.437654>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.467400, 14.217789, 15.109469> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.336697, 14.542042, 14.915108>,  <20.258274, 14.736593, 14.798491>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.336697, 14.542042, 14.915108>,  <20.467400, 14.217789, 15.109469>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.336697, 14.542042, 14.915108> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050683, -0.498356, -0.865490,
		-0.943748, -0.307433, 0.121756,
		-0.326758, 0.810633, -0.485904,
		20.238668, 14.785232, 14.769337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<16.416647, 17.318714, 19.589275> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.326046, 17.674572, 19.430666>,  <16.271685, 17.888086, 19.335501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.326046, 17.674572, 19.430666>,  <16.416647, 17.318714, 19.589275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.326046, 17.674572, 19.430666> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200948, 0.355665, 0.912755,
		0.953056, 0.286423, 0.098212,
		-0.226504, 0.889643, -0.396525,
		16.258095, 17.941465, 19.311708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.908428, 17.799643, 19.813227>,  <16.416647, 17.318714, 19.589275>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.908428, 17.799643, 19.813227> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.597305, 18.024044, 19.699884>,  <16.410631, 18.158686, 19.631880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.597305, 18.024044, 19.699884>,  <16.908428, 17.799643, 19.813227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.597305, 18.024044, 19.699884> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008696, 0.441192, 0.897371,
		0.628443, 0.700445, -0.338284,
		-0.777807, 0.561005, -0.283355,
		16.363964, 18.192345, 19.614878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.058594, 18.371519, 20.154263>,  <16.908428, 17.799643, 19.813227>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.058594, 18.371519, 20.154263> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.675064, 18.432999, 20.058735>,  <16.444946, 18.469887, 20.001419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.675064, 18.432999, 20.058735>,  <17.058594, 18.371519, 20.154263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.675064, 18.432999, 20.058735> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101383, 0.600262, 0.793352,
		0.265291, 0.784896, -0.559963,
		-0.958823, 0.153698, -0.238819,
		16.387417, 18.479109, 19.987089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.936583, 18.983673, 20.416357>,  <17.058594, 18.371519, 20.154263>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.936583, 18.983673, 20.416357> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.583248, 18.800564, 20.376028>,  <16.371248, 18.690699, 20.351830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.583248, 18.800564, 20.376028>,  <16.936583, 18.983673, 20.416357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.583248, 18.800564, 20.376028> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304429, 0.396700, 0.865998,
		-0.356433, 0.795659, -0.489778,
		-0.883334, -0.457772, -0.100825,
		16.318249, 18.663233, 20.345781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.551306, 19.444426, 20.679399>,  <16.936583, 18.983673, 20.416357>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.551306, 19.444426, 20.679399> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.333195, 19.109524, 20.695791>,  <16.202328, 18.908583, 20.705626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.333195, 19.109524, 20.695791>,  <16.551306, 19.444426, 20.679399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.333195, 19.109524, 20.695791> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282738, 0.229721, 0.931283,
		-0.789134, 0.496220, -0.361985,
		-0.545277, -0.837254, 0.040980,
		16.169611, 18.858347, 20.708086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.964982, 19.727222, 20.987070>,  <16.551306, 19.444426, 20.679399>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.964982, 19.727222, 20.987070> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.952701, 19.329361, 21.026505>,  <15.945332, 19.090643, 21.050165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.952701, 19.329361, 21.026505>,  <15.964982, 19.727222, 20.987070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.952701, 19.329361, 21.026505> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197032, 0.102720, 0.975001,
		-0.979916, 0.010510, -0.199133,
		-0.030703, -0.994655, 0.098586,
		15.943490, 19.030964, 21.056080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.356225, 19.582029, 21.413486>,  <15.964982, 19.727222, 20.987070>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.356225, 19.582029, 21.413486> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.568597, 19.244564, 21.445349>,  <15.696020, 19.042086, 21.464466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.568597, 19.244564, 21.445349>,  <15.356225, 19.582029, 21.413486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.568597, 19.244564, 21.445349> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268981, -0.078640, 0.959930,
		-0.803594, -0.531081, -0.268682,
		0.530930, -0.843664, 0.079656,
		15.727876, 18.991465, 21.469246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.888514, 18.971420, 21.586542>,  <15.356225, 19.582029, 21.413486>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.888514, 18.971420, 21.586542> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.260737, 18.908981, 21.719023>,  <15.484072, 18.871519, 21.798512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.260737, 18.908981, 21.719023>,  <14.888514, 18.971420, 21.586542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.260737, 18.908981, 21.719023> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342293, -0.049764, 0.938274,
		-0.129984, -0.986487, -0.099741,
		0.930559, -0.156101, 0.331199,
		15.539906, 18.862152, 21.818382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.916725, 18.417959, 21.922142>,  <14.888514, 18.971420, 21.586542>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.916725, 18.417959, 21.922142> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.241611, 18.596466, 22.072424>,  <15.436542, 18.703571, 22.162592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.241611, 18.596466, 22.072424>,  <14.916725, 18.417959, 21.922142>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.241611, 18.596466, 22.072424> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287651, -0.253914, 0.923464,
		0.507509, -0.858121, -0.077863,
		0.812214, 0.446269, 0.375703,
		15.485274, 18.730347, 22.185135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.086477, 17.983606, 22.470451>,  <14.916725, 18.417959, 21.922142>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.086477, 17.983606, 22.470451> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.300031, 18.309162, 22.562145>,  <15.428163, 18.504496, 22.617161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.300031, 18.309162, 22.562145>,  <15.086477, 17.983606, 22.470451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.300031, 18.309162, 22.562145> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244581, -0.110870, 0.963269,
		0.809412, -0.570341, 0.139871,
		0.533884, 0.813891, 0.229234,
		15.460196, 18.553329, 22.630915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.431211, 17.818403, 23.108702>,  <15.086477, 17.983606, 22.470451>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.431211, 17.818403, 23.108702> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.434070, 18.217632, 23.084042>,  <15.435785, 18.457170, 23.069244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.434070, 18.217632, 23.084042>,  <15.431211, 17.818403, 23.108702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.434070, 18.217632, 23.084042> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295365, 0.061011, 0.953434,
		0.955357, 0.011395, 0.295232,
		0.007148, 0.998072, -0.061653,
		15.436214, 18.517054, 23.065546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.625118, 18.027721, 23.809717>,  <15.431211, 17.818403, 23.108702>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.625118, 18.027721, 23.809717> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.476024, 18.340321, 23.609585>,  <15.386567, 18.527880, 23.489506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.476024, 18.340321, 23.609585>,  <15.625118, 18.027721, 23.809717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.476024, 18.340321, 23.609585> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388766, 0.358070, 0.848909,
		0.842573, 0.510931, 0.170353,
		-0.372736, 0.781496, -0.500332,
		15.364203, 18.574770, 23.459486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.885056, 18.779036, 23.967201>,  <15.625118, 18.027721, 23.809717>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.885056, 18.779036, 23.967201> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.502427, 18.808495, 23.854387>,  <15.272849, 18.826170, 23.786699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.502427, 18.808495, 23.854387>,  <15.885056, 18.779036, 23.967201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.502427, 18.808495, 23.854387> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218807, 0.457841, 0.861687,
		0.192590, 0.885978, -0.421844,
		-0.956573, 0.073650, -0.282034,
		15.215455, 18.830589, 23.769777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.042753, 18.480936, 24.669626>,  <15.885056, 18.779036, 23.967201>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.042753, 18.480936, 24.669626> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.758519, 18.263378, 24.848173>,  <15.587978, 18.132843, 24.955301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.758519, 18.263378, 24.848173>,  <16.042753, 18.480936, 24.669626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.758519, 18.263378, 24.848173> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474424, 0.098123, 0.874811,
		-0.519603, 0.833397, 0.188311,
		-0.710587, -0.543894, 0.446369,
		15.545343, 18.100210, 24.982084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.499081, 18.148849, 24.062674>,  <16.042753, 18.480936, 24.669626>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.499081, 18.148849, 24.062674> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.826550, 18.039070, 24.264446>,  <17.023031, 17.973204, 24.385509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.826550, 18.039070, 24.264446>,  <16.499081, 18.148849, 24.062674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.826550, 18.039070, 24.264446> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513536, -0.043241, -0.856978,
		0.257007, 0.960629, 0.105539,
		0.818674, -0.274448, 0.504431,
		17.072151, 17.956736, 24.415775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.095877, 18.496920, 23.684814>,  <16.499081, 18.148849, 24.062674>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.095877, 18.496920, 23.684814> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.270161, 18.200718, 23.889484>,  <17.374731, 18.022997, 24.012285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.270161, 18.200718, 23.889484>,  <17.095877, 18.496920, 23.684814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.270161, 18.200718, 23.889484> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664770, -0.118512, -0.737588,
		0.606828, 0.661518, 0.440629,
		0.435708, -0.740505, 0.511674,
		17.400873, 17.978567, 24.042986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.834000, 18.592588, 23.517010>,  <17.095877, 18.496920, 23.684814>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.834000, 18.592588, 23.517010> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.808083, 18.209499, 23.629131>,  <17.792532, 17.979647, 23.696404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.808083, 18.209499, 23.629131>,  <17.834000, 18.592588, 23.517010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.808083, 18.209499, 23.629131> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585604, -0.263932, -0.766425,
		0.808003, 0.114489, 0.577947,
		-0.064792, -0.957722, 0.280303,
		17.788645, 17.922182, 23.713223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.445450, 18.301859, 23.550310>,  <17.834000, 18.592588, 23.517010>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.445450, 18.301859, 23.550310> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.226685, 17.967163, 23.539328>,  <18.095427, 17.766346, 23.532738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.226685, 17.967163, 23.539328>,  <18.445450, 18.301859, 23.550310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.226685, 17.967163, 23.539328> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551559, -0.335449, -0.763712,
		0.629818, -0.432827, 0.644973,
		-0.546911, -0.836740, -0.027458,
		18.062611, 17.716141, 23.531090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.946297, 17.767019, 23.591682>,  <18.445450, 18.301859, 23.550310>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.946297, 17.767019, 23.591682> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.618156, 17.600121, 23.435259>,  <18.421272, 17.499981, 23.341404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.618156, 17.600121, 23.435259>,  <18.946297, 17.767019, 23.591682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.618156, 17.600121, 23.435259> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564204, -0.479040, -0.672454,
		0.093247, -0.772286, 0.628394,
		-0.820353, -0.417247, -0.391058,
		18.372051, 17.474947, 23.317942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.093359, 17.054831, 23.474041>,  <18.946297, 17.767019, 23.591682>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.093359, 17.054831, 23.474041> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.782444, 17.141853, 23.237907>,  <18.595896, 17.194067, 23.096228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.782444, 17.141853, 23.237907>,  <19.093359, 17.054831, 23.474041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.782444, 17.141853, 23.237907> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496073, -0.365183, -0.787752,
		-0.386959, -0.905158, 0.175929,
		-0.777287, 0.217554, -0.590335,
		18.549259, 17.207121, 23.060806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.196428, 16.525450, 23.024471>,  <19.093359, 17.054831, 23.474041>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.196428, 16.525450, 23.024471> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.926785, 16.770969, 22.860117>,  <18.764997, 16.918282, 22.761505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.926785, 16.770969, 22.860117>,  <19.196428, 16.525450, 23.024471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.926785, 16.770969, 22.860117> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295334, -0.285894, -0.911615,
		-0.677017, -0.735878, 0.011449,
		-0.674111, 0.613798, -0.410885,
		18.724550, 16.955109, 22.736851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.790995, 16.172832, 22.527641>,  <19.196428, 16.525450, 23.024471>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.790995, 16.172832, 22.527641> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.756737, 16.550526, 22.400465>,  <18.736181, 16.777142, 22.324160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.756737, 16.550526, 22.400465>,  <18.790995, 16.172832, 22.527641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.756737, 16.550526, 22.400465> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196559, -0.296828, -0.934483,
		-0.976744, -0.142528, -0.160176,
		-0.085645, 0.944235, -0.317940,
		18.731043, 16.833796, 22.305082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.354214, 16.100906, 21.937471>,  <18.790995, 16.172832, 22.527641>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.354214, 16.100906, 21.937471> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.558975, 16.441032, 21.888609>,  <18.681831, 16.645107, 21.859291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.558975, 16.441032, 21.888609>,  <18.354214, 16.100906, 21.937471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.558975, 16.441032, 21.888609> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199292, -0.255873, -0.945945,
		-0.835607, 0.459886, -0.300442,
		0.511902, 0.850314, -0.122157,
		18.712545, 16.696127, 21.851961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.263195, 16.206137, 21.242083>,  <18.354214, 16.100906, 21.937471>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.263195, 16.206137, 21.242083> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.564774, 16.453873, 21.329702>,  <18.745720, 16.602514, 21.382275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.564774, 16.453873, 21.329702>,  <18.263195, 16.206137, 21.242083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.564774, 16.453873, 21.329702> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283392, -0.005804, -0.958986,
		-0.592669, 0.785100, -0.179893,
		0.753945, 0.619341, 0.219051,
		18.790956, 16.639675, 21.395418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.063032, 16.891977, 21.003815>,  <18.263195, 16.206137, 21.242083>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.063032, 16.891977, 21.003815> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.460423, 16.848667, 21.018160>,  <18.698856, 16.822681, 21.026768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.460423, 16.848667, 21.018160>,  <18.063032, 16.891977, 21.003815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.460423, 16.848667, 21.018160> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035424, -0.005984, -0.999355,
		0.108418, 0.994103, -0.002110,
		0.993474, -0.108274, 0.035864,
		18.758465, 16.816185, 21.028919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.255402, 17.360735, 20.491589>,  <18.063032, 16.891977, 21.003815>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.255402, 17.360735, 20.491589> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.590393, 17.150192, 20.550352>,  <18.791388, 17.023867, 20.585609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.590393, 17.150192, 20.550352>,  <18.255402, 17.360735, 20.491589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.590393, 17.150192, 20.550352> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197676, 0.041165, -0.979403,
		0.509466, 0.849268, 0.138522,
		0.837478, -0.526355, 0.146908,
		18.841637, 16.992287, 20.594425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.722738, 17.599623, 20.163906>,  <18.255402, 17.360735, 20.491589>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.722738, 17.599623, 20.163906> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.883106, 17.235821, 20.207844>,  <18.979326, 17.017540, 20.234207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.883106, 17.235821, 20.207844>,  <18.722738, 17.599623, 20.163906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.883106, 17.235821, 20.207844> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228326, -0.016917, -0.973438,
		0.887204, 0.415350, 0.200881,
		0.400919, -0.909505, 0.109844,
		19.003382, 16.962969, 20.240797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.381481, 17.626743, 19.911833>,  <18.722738, 17.599623, 20.163906>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.381481, 17.626743, 19.911833> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.293865, 17.236458, 19.912611>,  <19.241295, 17.002287, 19.913078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.293865, 17.236458, 19.912611>,  <19.381481, 17.626743, 19.911833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.293865, 17.236458, 19.912611> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160264, -0.037945, -0.986345,
		0.962464, -0.215737, 0.164683,
		-0.219040, -0.975714, 0.001946,
		19.228153, 16.943743, 19.913195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.850281, 18.151358, 20.223936>,  <19.381481, 17.626743, 19.911833>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.850281, 18.151358, 20.223936> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.935818, 18.501965, 20.051430>,  <19.987141, 18.712328, 19.947926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.935818, 18.501965, 20.051430>,  <19.850281, 18.151358, 20.223936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.935818, 18.501965, 20.051430> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312560, 0.479661, 0.819897,
		0.925515, -0.040534, 0.376536,
		0.213843, 0.876517, -0.431264,
		19.999971, 18.764919, 19.922050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.301052, 18.513517, 20.634756>,  <19.850281, 18.151358, 20.223936>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.301052, 18.513517, 20.634756> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.120098, 18.794300, 20.414719>,  <20.011526, 18.962770, 20.282696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.120098, 18.794300, 20.414719>,  <20.301052, 18.513517, 20.634756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.120098, 18.794300, 20.414719> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142407, 0.552049, 0.821561,
		0.880380, 0.449998, -0.149774,
		-0.452383, 0.701957, -0.550096,
		19.984383, 19.004887, 20.249689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.499117, 19.117933, 21.033951>,  <20.301052, 18.513517, 20.634756>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.499117, 19.117933, 21.033951> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.182751, 19.231903, 20.817333>,  <19.992931, 19.300285, 20.687363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.182751, 19.231903, 20.817333>,  <20.499117, 19.117933, 21.033951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.182751, 19.231903, 20.817333> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324227, 0.555428, 0.765753,
		0.518970, 0.781229, -0.346917,
		-0.790916, 0.284923, -0.541545,
		19.945477, 19.317379, 20.654869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.463413, 19.833189, 21.155970>,  <20.499117, 19.117933, 21.033951>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.463413, 19.833189, 21.155970> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.097004, 19.747601, 21.020252>,  <19.877159, 19.696247, 20.938822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.097004, 19.747601, 21.020252>,  <20.463413, 19.833189, 21.155970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.097004, 19.747601, 21.020252> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400805, 0.522162, 0.752796,
		0.016090, 0.825569, -0.564073,
		-0.916022, -0.213971, -0.339294,
		19.822197, 19.683409, 20.918465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.198765, 20.505222, 21.196129>,  <20.463413, 19.833189, 21.155970>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.198765, 20.505222, 21.196129> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.914326, 20.224022, 21.200626>,  <19.743662, 20.055302, 21.203325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.914326, 20.224022, 21.200626>,  <20.198765, 20.505222, 21.196129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.914326, 20.224022, 21.200626> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340539, 0.358361, 0.869259,
		-0.615120, 0.614300, -0.494230,
		-0.711098, -0.703003, 0.011242,
		19.700996, 20.013121, 21.203999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.565317, 20.823402, 21.518377>,  <20.198765, 20.505222, 21.196129>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.565317, 20.823402, 21.518377> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.519062, 20.426533, 21.537209>,  <19.491308, 20.188410, 21.548508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.519062, 20.426533, 21.537209>,  <19.565317, 20.823402, 21.518377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.519062, 20.426533, 21.537209> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489107, 0.098129, 0.866686,
		-0.864524, 0.077195, -0.496627,
		-0.115638, -0.992175, 0.047079,
		19.484371, 20.128880, 21.551332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.804216, 20.700531, 21.562223>,  <19.565317, 20.823402, 21.518377>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.804216, 20.700531, 21.562223> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.025204, 20.416546, 21.736914>,  <19.157797, 20.246155, 21.841728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.025204, 20.416546, 21.736914>,  <18.804216, 20.700531, 21.562223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.025204, 20.416546, 21.736914> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471294, 0.166086, 0.866197,
		-0.687503, -0.684373, -0.242844,
		0.552469, -0.709964, 0.436725,
		19.190945, 20.203556, 21.867931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.144493, 20.942419, 21.286474>,  <18.804216, 20.700531, 21.562223>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.144493, 20.942419, 21.286474> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.209076, 21.329308, 21.364874>,  <18.247826, 21.561440, 21.411913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.209076, 21.329308, 21.364874>,  <18.144493, 20.942419, 21.286474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.209076, 21.329308, 21.364874> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313298, 0.138095, -0.939560,
		-0.935829, 0.213106, -0.280732,
		0.161459, 0.967220, 0.195999,
		18.257513, 21.619474, 21.423674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.755247, 21.351393, 20.825003>,  <18.144493, 20.942419, 21.286474>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.755247, 21.351393, 20.825003> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.071308, 21.569000, 20.937933>,  <18.260944, 21.699564, 21.005692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.071308, 21.569000, 20.937933>,  <17.755247, 21.351393, 20.825003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.071308, 21.569000, 20.937933> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343080, -0.010872, -0.939243,
		-0.507895, 0.839004, -0.195232,
		0.790151, 0.544017, 0.282324,
		18.308353, 21.732204, 21.022631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.825647, 21.766397, 20.303185>,  <17.755247, 21.351393, 20.825003>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.825647, 21.766397, 20.303185> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.168510, 21.805744, 20.505415>,  <18.374228, 21.829353, 20.626753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.168510, 21.805744, 20.505415>,  <17.825647, 21.766397, 20.303185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.168510, 21.805744, 20.505415> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493170, 0.126346, -0.860709,
		-0.148543, 0.987097, 0.059787,
		0.857157, 0.098368, 0.505574,
		18.425657, 21.835255, 20.657087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.088181, 22.376814, 20.043802>,  <17.825647, 21.766397, 20.303185>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.088181, 22.376814, 20.043802> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.393959, 22.172588, 20.201256>,  <18.577427, 22.050053, 20.295727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.393959, 22.172588, 20.201256>,  <18.088181, 22.376814, 20.043802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.393959, 22.172588, 20.201256> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470850, 0.025093, -0.881856,
		0.440367, 0.859473, 0.259582,
		0.764446, -0.510564, 0.393633,
		18.623293, 22.019419, 20.319345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.730074, 22.798929, 19.929445>,  <18.088181, 22.376814, 20.043802>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.730074, 22.798929, 19.929445> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.834248, 22.420429, 20.006165>,  <18.896751, 22.193329, 20.052197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.834248, 22.420429, 20.006165>,  <18.730074, 22.798929, 19.929445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.834248, 22.420429, 20.006165> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580231, -0.005386, -0.814434,
		0.771690, 0.323394, 0.547641,
		0.260434, -0.946249, 0.191800,
		18.912378, 22.136555, 20.063705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.483978, 22.748798, 19.685156>,  <18.730074, 22.798929, 19.929445>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.483978, 22.748798, 19.685156> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.349007, 22.372425, 19.696398>,  <19.268024, 22.146601, 19.703142>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.349007, 22.372425, 19.696398>,  <19.483978, 22.748798, 19.685156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.349007, 22.372425, 19.696398> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483449, -0.198832, -0.852492,
		0.807725, -0.274067, 0.521984,
		-0.337427, -0.940932, 0.028104,
		19.247778, 22.090145, 19.704828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.092239, 22.378107, 19.417736>,  <19.483978, 22.748798, 19.685156>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.092239, 22.378107, 19.417736> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.778145, 22.133636, 19.377996>,  <19.589687, 21.986954, 19.354153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.778145, 22.133636, 19.377996>,  <20.092239, 22.378107, 19.417736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.778145, 22.133636, 19.377996> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313687, -0.254316, -0.914836,
		0.533859, -0.749526, 0.391415,
		-0.785236, -0.611175, -0.099348,
		19.542574, 21.950285, 19.348192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<14.509913, 21.783527, 22.366552> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.520425, 21.386951, 22.417713>,  <14.526731, 21.149006, 22.448410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.520425, 21.386951, 22.417713>,  <14.509913, 21.783527, 22.366552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.520425, 21.386951, 22.417713> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141516, -0.122966, -0.982269,
		0.989587, 0.043913, 0.137073,
		0.026280, -0.991439, 0.127900,
		14.528309, 21.089520, 22.456083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.958397, 21.537531, 21.922186>,  <14.509913, 21.783527, 22.366552>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.958397, 21.537531, 21.922186> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.721898, 21.221058, 21.984745>,  <14.579999, 21.031174, 22.022280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.721898, 21.221058, 21.984745>,  <14.958397, 21.537531, 21.922186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.721898, 21.221058, 21.984745> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055950, -0.233694, -0.970699,
		0.804547, -0.565173, 0.182438,
		-0.591247, -0.791180, 0.156396,
		14.544524, 20.983704, 22.031664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.354367, 20.956724, 21.599958>,  <14.958397, 21.537531, 21.922186>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.354367, 20.956724, 21.599958> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.959756, 20.891464, 21.604719>,  <14.722989, 20.852308, 21.607576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.959756, 20.891464, 21.604719>,  <15.354367, 20.956724, 21.599958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.959756, 20.891464, 21.604719> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034746, -0.280084, -0.959346,
		0.159851, -0.946010, 0.281980,
		-0.986530, -0.163150, 0.011901,
		14.663797, 20.842520, 21.608290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.389356, 20.528660, 21.043837>,  <15.354367, 20.956724, 21.599958>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.389356, 20.528660, 21.043837> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.001122, 20.596390, 21.112305>,  <14.768183, 20.637028, 21.153385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.001122, 20.596390, 21.112305>,  <15.389356, 20.528660, 21.043837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.001122, 20.596390, 21.112305> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202940, -0.192797, -0.960023,
		-0.129550, -0.966519, 0.221488,
		-0.970583, 0.169320, 0.171169,
		14.709948, 20.647186, 21.163654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.023413, 20.052647, 20.669094>,  <15.389356, 20.528660, 21.043837>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.023413, 20.052647, 20.669094> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.770522, 20.361824, 20.690434>,  <14.618788, 20.547331, 20.703238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.770522, 20.361824, 20.690434>,  <15.023413, 20.052647, 20.669094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.770522, 20.361824, 20.690434> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182362, -0.081531, -0.979845,
		-0.753017, -0.629212, 0.192502,
		-0.632225, 0.772946, 0.053350,
		14.580854, 20.593708, 20.706438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.475966, 19.847683, 20.160482>,  <15.023413, 20.052647, 20.669094>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.475966, 19.847683, 20.160482> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.482587, 20.242893, 20.221846>,  <14.486559, 20.480019, 20.258663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.482587, 20.242893, 20.221846>,  <14.475966, 19.847683, 20.160482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.482587, 20.242893, 20.221846> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179200, 0.153877, -0.971704,
		-0.983673, -0.011408, 0.179601,
		0.016551, 0.988024, 0.153409,
		14.487553, 20.539301, 20.267868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.937077, 20.067259, 19.778437>,  <14.475966, 19.847683, 20.160482>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.937077, 20.067259, 19.778437> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.192784, 20.371391, 19.824442>,  <14.346210, 20.553871, 19.852045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.192784, 20.371391, 19.824442>,  <13.937077, 20.067259, 19.778437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.192784, 20.371391, 19.824442> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001242, 0.150587, -0.988596,
		-0.768982, 0.631837, 0.097210,
		0.639270, 0.760333, 0.115014,
		14.384565, 20.599491, 19.858946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.764424, 20.522280, 19.307938>,  <13.937077, 20.067259, 19.778437>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.764424, 20.522280, 19.307938> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.102937, 20.721973, 19.382313>,  <14.306044, 20.841789, 19.426937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.102937, 20.721973, 19.382313>,  <13.764424, 20.522280, 19.307938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.102937, 20.721973, 19.382313> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001825, 0.346303, -0.938121,
		-0.532735, 0.794253, 0.292158,
		0.846280, 0.499236, 0.185937,
		14.356821, 20.871744, 19.438093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.686296, 21.233368, 19.330923>,  <13.764424, 20.522280, 19.307938>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.686296, 21.233368, 19.330923> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.065906, 21.156235, 19.231188>,  <14.293672, 21.109955, 19.171347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.065906, 21.156235, 19.231188>,  <13.686296, 21.233368, 19.330923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.065906, 21.156235, 19.231188> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183810, 0.304053, -0.934754,
		0.256062, 0.932935, 0.253109,
		0.949024, -0.192831, -0.249339,
		14.350613, 21.098385, 19.156385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.764050, 21.704958, 18.807898>,  <13.686296, 21.233368, 19.330923>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.764050, 21.704958, 18.807898> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.066854, 21.446831, 18.766899>,  <14.248535, 21.291954, 18.742300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.066854, 21.446831, 18.766899>,  <13.764050, 21.704958, 18.807898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.066854, 21.446831, 18.766899> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062591, 0.227756, -0.971704,
		0.650402, 0.729171, 0.212804,
		0.757007, -0.645319, -0.102494,
		14.293956, 21.253235, 18.736151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.033947, 21.965693, 18.292368>,  <13.764050, 21.704958, 18.807898>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.033947, 21.965693, 18.292368> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.190597, 21.598118, 18.273670>,  <14.284586, 21.377573, 18.262451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.190597, 21.598118, 18.273670>,  <14.033947, 21.965693, 18.292368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.190597, 21.598118, 18.273670> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089988, 0.088812, -0.991975,
		0.915714, 0.384275, 0.117474,
		0.391624, -0.918937, -0.046746,
		14.308084, 21.322437, 18.259645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.723250, 22.016907, 17.966530>,  <14.033947, 21.965693, 18.292368>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.723250, 22.016907, 17.966530> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.579783, 21.650612, 17.894104>,  <14.493703, 21.430836, 17.850649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.579783, 21.650612, 17.894104>,  <14.723250, 22.016907, 17.966530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.579783, 21.650612, 17.894104> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032747, 0.181509, -0.982844,
		0.932891, -0.358444, -0.035114,
		-0.358668, -0.915736, -0.181066,
		14.472183, 21.375891, 17.839785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.477215, 22.164137, 17.988892>,  <14.723250, 22.016907, 17.966530>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.477215, 22.164137, 17.988892> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.387467, 22.553596, 17.972549>,  <15.333619, 22.787271, 17.962744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.387467, 22.553596, 17.972549>,  <15.477215, 22.164137, 17.988892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.387467, 22.553596, 17.972549> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079375, 0.023525, 0.996567,
		0.971267, 0.226841, 0.072005,
		-0.224368, 0.973648, -0.040855,
		15.320157, 22.845692, 17.960293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.743798, 22.410717, 18.637903>,  <15.477215, 22.164137, 17.988892>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.743798, 22.410717, 18.637903> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.512614, 22.722565, 18.541441>,  <15.373904, 22.909674, 18.483562>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.512614, 22.722565, 18.541441>,  <15.743798, 22.410717, 18.637903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.512614, 22.722565, 18.541441> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198675, 0.152199, 0.968176,
		0.791512, 0.607478, 0.066926,
		-0.577959, 0.779619, -0.241158,
		15.339227, 22.956451, 18.469093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.973986, 22.920586, 19.106533>,  <15.743798, 22.410717, 18.637903>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.973986, 22.920586, 19.106533> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.620557, 23.035908, 18.958921>,  <15.408500, 23.105101, 18.870354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.620557, 23.035908, 18.958921>,  <15.973986, 22.920586, 19.106533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.620557, 23.035908, 18.958921> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292961, 0.274483, 0.915878,
		0.365343, 0.917355, -0.158063,
		-0.883571, 0.288304, -0.369030,
		15.355486, 23.122398, 18.848213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.867167, 23.575220, 19.264265>,  <15.973986, 22.920586, 19.106533>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.867167, 23.575220, 19.264265> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.491200, 23.454994, 19.199495>,  <15.265620, 23.382858, 19.160633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.491200, 23.454994, 19.199495>,  <15.867167, 23.575220, 19.264265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.491200, 23.454994, 19.199495> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268964, 0.359782, 0.893429,
		-0.210275, 0.883300, -0.419005,
		-0.939916, -0.300563, -0.161923,
		15.209226, 23.364826, 19.150919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.516516, 24.035803, 19.532965>,  <15.867167, 23.575220, 19.264265>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.516516, 24.035803, 19.532965> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.210624, 23.779129, 19.509539>,  <15.027088, 23.625124, 19.495483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.210624, 23.779129, 19.509539>,  <15.516516, 24.035803, 19.532965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.210624, 23.779129, 19.509539> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391529, 0.390562, 0.833166,
		-0.511755, 0.660078, -0.549912,
		-0.764729, -0.641684, -0.058568,
		14.981205, 23.586624, 19.491968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.942431, 24.332390, 19.496944>,  <15.516516, 24.035803, 19.532965>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.942431, 24.332390, 19.496944> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.860810, 23.985519, 19.678656>,  <14.811837, 23.777397, 19.787683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.860810, 23.985519, 19.678656>,  <14.942431, 24.332390, 19.496944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.860810, 23.985519, 19.678656> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243977, 0.494448, 0.834264,
		-0.948070, 0.059400, -0.312465,
		-0.204053, -0.867175, 0.454279,
		14.799594, 23.725367, 19.814939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.467747, 24.509905, 20.038908>,  <14.942431, 24.332390, 19.496944>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.467747, 24.509905, 20.038908> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.588639, 24.142101, 20.139431>,  <14.661175, 23.921419, 20.199745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.588639, 24.142101, 20.139431>,  <14.467747, 24.509905, 20.038908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.588639, 24.142101, 20.139431> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143518, 0.216738, 0.965623,
		-0.942369, -0.327909, -0.066461,
		0.302232, -0.919511, 0.251307,
		14.679309, 23.866247, 20.214823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.978726, 24.213335, 20.631559>,  <14.467747, 24.509905, 20.038908>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.978726, 24.213335, 20.631559> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.306481, 23.984921, 20.651659>,  <14.503134, 23.847872, 20.663719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.306481, 23.984921, 20.651659>,  <13.978726, 24.213335, 20.631559>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.306481, 23.984921, 20.651659> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116006, -0.079334, 0.990075,
		-0.561381, -0.817083, -0.131249,
		0.819386, -0.571036, 0.050250,
		14.552298, 23.813610, 20.666735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.813196, 23.733725, 21.003277>,  <13.978726, 24.213335, 20.631559>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.813196, 23.733725, 21.003277> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.211940, 23.740932, 21.034128>,  <14.451186, 23.745256, 21.052639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.211940, 23.740932, 21.034128>,  <13.813196, 23.733725, 21.003277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.211940, 23.740932, 21.034128> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075653, -0.071649, 0.994557,
		0.023451, -0.997267, -0.070060,
		0.996858, 0.018023, 0.077127,
		14.510998, 23.746338, 21.057266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.917620, 23.250109, 21.491055>,  <13.813196, 23.733725, 21.003277>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.917620, 23.250109, 21.491055> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.266545, 23.445683, 21.492514>,  <14.475901, 23.563026, 21.493389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.266545, 23.445683, 21.492514>,  <13.917620, 23.250109, 21.491055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.266545, 23.445683, 21.492514> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010860, 0.011913, 0.999870,
		0.488826, -0.872240, 0.015701,
		0.872314, 0.488933, 0.003649,
		14.528239, 23.592361, 21.493608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.388958, 22.792215, 21.764698>,  <13.917620, 23.250109, 21.491055>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.388958, 22.792215, 21.764698> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.514951, 23.169437, 21.807474>,  <14.590547, 23.395771, 21.833139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.514951, 23.169437, 21.807474>,  <14.388958, 22.792215, 21.764698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.514951, 23.169437, 21.807474> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074696, -0.136960, 0.987756,
		0.946154, -0.303137, -0.113582,
		0.314982, 0.943053, 0.106943,
		14.609446, 23.452353, 21.839558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.012579, 22.705824, 22.191887>,  <14.388958, 22.792215, 21.764698>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.012579, 22.705824, 22.191887> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.865472, 23.075996, 22.228384>,  <14.777207, 23.298100, 22.250282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.865472, 23.075996, 22.228384>,  <15.012579, 22.705824, 22.191887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.865472, 23.075996, 22.228384> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080963, -0.129610, 0.988254,
		0.926386, 0.356062, 0.122592,
		-0.367769, 0.925430, 0.091241,
		14.755141, 23.353626, 22.255756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.421963, 22.958971, 22.764400>,  <15.012579, 22.705824, 22.191887>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.421963, 22.958971, 22.764400> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.114619, 23.213852, 22.740398>,  <14.930213, 23.366779, 22.725996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.114619, 23.213852, 22.740398>,  <15.421963, 22.958971, 22.764400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.114619, 23.213852, 22.740398> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039006, 0.140205, 0.989354,
		0.638830, 0.757838, -0.132582,
		-0.768358, 0.637201, -0.060007,
		14.884111, 23.405012, 22.722397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.665934, 23.595079, 23.167557>,  <15.421963, 22.958971, 22.764400>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.665934, 23.595079, 23.167557> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.267154, 23.622623, 23.152855>,  <15.027886, 23.639151, 23.144033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.267154, 23.622623, 23.152855>,  <15.665934, 23.595079, 23.167557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.267154, 23.622623, 23.152855> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018727, 0.246086, 0.969067,
		0.075775, 0.966799, -0.244045,
		-0.996949, 0.068861, -0.036753,
		14.968069, 23.643282, 23.141829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.305958, 23.398514, 22.967962>,  <15.665934, 23.595079, 23.167557>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.305958, 23.398514, 22.967962> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.493546, 23.154446, 23.223387>,  <16.606098, 23.008005, 23.376640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.493546, 23.154446, 23.223387>,  <16.305958, 23.398514, 22.967962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.493546, 23.154446, 23.223387> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501671, -0.411016, -0.761178,
		0.726906, 0.677318, 0.113349,
		0.468972, -0.610169, 0.638560,
		16.634237, 22.971395, 23.414955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.969679, 23.553007, 22.975594>,  <16.305958, 23.398514, 22.967962>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.969679, 23.553007, 22.975594> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.000179, 23.176563, 23.107347>,  <17.018480, 22.950697, 23.186399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.000179, 23.176563, 23.107347>,  <16.969679, 23.553007, 22.975594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.000179, 23.176563, 23.107347> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638602, -0.207607, -0.741004,
		0.765750, 0.266848, 0.585165,
		0.076252, -0.941112, 0.329385,
		17.023054, 22.894230, 23.206163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.662693, 23.284044, 22.918627>,  <16.969679, 23.553007, 22.975594>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.662693, 23.284044, 22.918627> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.474411, 22.931355, 22.931290>,  <17.361443, 22.719742, 22.938887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.474411, 22.931355, 22.931290>,  <17.662693, 23.284044, 22.918627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.474411, 22.931355, 22.931290> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598810, -0.345610, -0.722482,
		0.647970, -0.321119, 0.690664,
		-0.470703, -0.881723, 0.031656,
		17.333200, 22.666838, 22.940786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.130304, 22.871914, 22.787548>,  <17.662693, 23.284044, 22.918627>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.130304, 22.871914, 22.787548> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.836555, 22.609718, 22.717089>,  <17.660305, 22.452400, 22.674812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.836555, 22.609718, 22.717089>,  <18.130304, 22.871914, 22.787548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.836555, 22.609718, 22.717089> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614863, -0.532547, -0.581667,
		0.287468, -0.535470, 0.794125,
		-0.734374, -0.655489, -0.176150,
		17.616243, 22.413073, 22.664244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.428957, 22.237402, 22.910351>,  <18.130304, 22.871914, 22.787548>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.428957, 22.237402, 22.910351> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.118484, 22.213242, 22.659306>,  <17.932201, 22.198746, 22.508678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.118484, 22.213242, 22.659306>,  <18.428957, 22.237402, 22.910351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.118484, 22.213242, 22.659306> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595204, -0.398622, -0.697734,
		-0.208035, -0.915124, 0.345354,
		-0.776179, -0.060403, -0.627613,
		17.885632, 22.195120, 22.471022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.466621, 21.553631, 22.685829>,  <18.428957, 22.237402, 22.910351>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.466621, 21.553631, 22.685829> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.233486, 21.761486, 22.435940>,  <18.093605, 21.886198, 22.286005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.233486, 21.761486, 22.435940>,  <18.466621, 21.553631, 22.685829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.233486, 21.761486, 22.435940> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588372, -0.260396, -0.765514,
		-0.560465, -0.813740, -0.153971,
		-0.582836, 0.519636, -0.624724,
		18.058636, 21.917377, 22.248522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.278290, 21.055155, 22.120344>,  <18.466621, 21.553631, 22.685829>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.278290, 21.055155, 22.120344> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.189747, 21.415096, 21.970003>,  <18.136621, 21.631062, 21.879799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.189747, 21.415096, 21.970003>,  <18.278290, 21.055155, 22.120344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.189747, 21.415096, 21.970003> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589777, -0.183409, -0.786463,
		-0.776636, -0.395758, -0.490114,
		-0.221358, 0.899854, -0.375851,
		18.123339, 21.685053, 21.857248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.148375, 20.298250, 21.981495>,  <18.278290, 21.055155, 22.120344>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.148375, 20.298250, 21.981495> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.461971, 20.071934, 22.083658>,  <18.650129, 19.936144, 22.144957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.461971, 20.071934, 22.083658>,  <18.148375, 20.298250, 21.981495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.461971, 20.071934, 22.083658> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176518, 0.191266, 0.965535,
		-0.595144, -0.802057, 0.050078,
		0.783993, -0.565793, 0.255408,
		18.697168, 19.902195, 22.160280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.001511, 19.674831, 22.407957>,  <18.148375, 20.298250, 21.981495>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.001511, 19.674831, 22.407957> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.372723, 19.783310, 22.510103>,  <18.595449, 19.848396, 22.571390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.372723, 19.783310, 22.510103>,  <18.001511, 19.674831, 22.407957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.372723, 19.783310, 22.510103> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294240, 0.113298, 0.948992,
		0.228434, -0.955832, 0.184942,
		0.928031, 0.271199, 0.255363,
		18.651133, 19.864670, 22.586712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.075335, 19.432793, 23.070196>,  <18.001511, 19.674831, 22.407957>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.075335, 19.432793, 23.070196> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.379562, 19.691933, 23.053102>,  <18.562099, 19.847418, 23.042847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.379562, 19.691933, 23.053102>,  <18.075335, 19.432793, 23.070196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.379562, 19.691933, 23.053102> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137515, 0.225068, 0.964590,
		0.634529, -0.727759, 0.260269,
		0.760567, 0.647851, -0.042735,
		18.607733, 19.886288, 23.040281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.407516, 19.214540, 23.687359>,  <18.075335, 19.432793, 23.070196>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.407516, 19.214540, 23.687359> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.540184, 19.570278, 23.561464>,  <18.619785, 19.783722, 23.485928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.540184, 19.570278, 23.561464>,  <18.407516, 19.214540, 23.687359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.540184, 19.570278, 23.561464> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114330, 0.369056, 0.922348,
		0.936442, -0.269932, 0.224084,
		0.331671, 0.889345, -0.314738,
		18.639685, 19.837082, 23.467043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.917356, 19.308891, 24.126974>,  <18.407516, 19.214540, 23.687359>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.917356, 19.308891, 24.126974> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.848881, 19.678909, 23.991337>,  <18.807795, 19.900921, 23.909954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.848881, 19.678909, 23.991337>,  <18.917356, 19.308891, 24.126974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.848881, 19.678909, 23.991337> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127854, 0.320407, 0.938612,
		0.976907, 0.204034, 0.063421,
		-0.171189, 0.925045, -0.339095,
		18.797523, 19.956423, 23.889608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.400192, 19.703245, 24.318140>,  <18.917356, 19.308891, 24.126974>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.400192, 19.703245, 24.318140> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.067356, 19.923286, 24.289812>,  <18.867655, 20.055311, 24.272816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.067356, 19.923286, 24.289812>,  <19.400192, 19.703245, 24.318140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.067356, 19.923286, 24.289812> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028573, 0.084998, 0.995971,
		0.553904, 0.830761, -0.055007,
		-0.832090, 0.550101, -0.070818,
		18.817730, 20.088316, 24.268566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.513269, 20.162529, 24.808397>,  <19.400192, 19.703245, 24.318140>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.513269, 20.162529, 24.808397> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.122696, 20.198532, 24.729940>,  <18.888351, 20.220135, 24.682865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.122696, 20.198532, 24.729940>,  <19.513269, 20.162529, 24.808397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.122696, 20.198532, 24.729940> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191388, 0.058806, 0.979751,
		0.099721, 0.994203, -0.040194,
		-0.976435, 0.090009, -0.196143,
		18.829765, 20.225534, 24.671097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.323631, 20.690918, 25.183989>,  <19.513269, 20.162529, 24.808397>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.323631, 20.690918, 25.183989> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.984932, 20.492458, 25.107199>,  <18.781712, 20.373383, 25.061125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.984932, 20.492458, 25.107199>,  <19.323631, 20.690918, 25.183989>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.984932, 20.492458, 25.107199> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239893, 0.034010, 0.970203,
		-0.474835, 0.867572, -0.147820,
		-0.846748, -0.496148, -0.191975,
		18.730907, 20.343615, 25.049606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.814760, 21.210112, 25.437374>,  <19.323631, 20.690918, 25.183989>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.814760, 21.210112, 25.437374> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.648651, 20.846241, 25.434811>,  <18.548986, 20.627918, 25.433273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.648651, 20.846241, 25.434811>,  <18.814760, 21.210112, 25.437374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.648651, 20.846241, 25.434811> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196687, 0.082905, 0.976955,
		-0.888180, 0.406961, -0.213350,
		-0.415271, -0.909675, -0.006409,
		18.524071, 20.573338, 25.432888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<21.081783, 17.254599, 9.569164> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.013004, 16.901745, 9.744559>,  <20.971737, 16.690033, 9.849796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.013004, 16.901745, 9.744559>,  <21.081783, 17.254599, 9.569164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.013004, 16.901745, 9.744559> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257609, 0.389363, 0.884327,
		-0.950827, 0.265015, 0.160297,
		-0.171946, -0.882136, 0.438487,
		20.961420, 16.637104, 9.876105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.767389, 17.455379, 10.081702>,  <21.081783, 17.254599, 9.569164>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.767389, 17.455379, 10.081702> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.907879, 17.094784, 10.182858>,  <20.992172, 16.878426, 10.243552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.907879, 17.094784, 10.182858>,  <20.767389, 17.455379, 10.081702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.907879, 17.094784, 10.182858> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044549, 0.285884, 0.957228,
		-0.935231, -0.324936, 0.140570,
		0.351224, -0.901492, 0.252892,
		21.013247, 16.824337, 10.258726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.329067, 17.164043, 10.628532>,  <20.767389, 17.455379, 10.081702>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.329067, 17.164043, 10.628532> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.683422, 16.982372, 10.666317>,  <20.896036, 16.873369, 10.688988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.683422, 16.982372, 10.666317>,  <20.329067, 17.164043, 10.628532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.683422, 16.982372, 10.666317> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035129, 0.268720, 0.962577,
		-0.462566, -0.849418, 0.254011,
		0.885888, -0.454179, 0.094462,
		20.949188, 16.846119, 10.694655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.243658, 16.853727, 11.243789>,  <20.329067, 17.164043, 10.628532>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.243658, 16.853727, 11.243789> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.641361, 16.854359, 11.200994>,  <20.879984, 16.854738, 11.175316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.641361, 16.854359, 11.200994>,  <20.243658, 16.853727, 11.243789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.641361, 16.854359, 11.200994> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100428, 0.331263, 0.938179,
		0.036922, -0.943537, 0.329202,
		0.994259, 0.001578, -0.106989,
		20.939638, 16.854832, 11.168897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.609043, 16.724182, 11.893859>,  <20.243658, 16.853727, 11.243789>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.609043, 16.724182, 11.893859> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.899029, 16.896690, 11.679035>,  <21.073019, 17.000196, 11.550141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.899029, 16.896690, 11.679035>,  <20.609043, 16.724182, 11.893859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.899029, 16.896690, 11.679035> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404913, 0.363915, 0.838816,
		0.557203, -0.825572, 0.089196,
		0.724962, 0.431274, -0.537059,
		21.116518, 17.026072, 11.517918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.304710, 16.470833, 12.205669>,  <20.609043, 16.724182, 11.893859>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.304710, 16.470833, 12.205669> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.375431, 16.813717, 12.012203>,  <21.417864, 17.019447, 11.896124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.375431, 16.813717, 12.012203>,  <21.304710, 16.470833, 12.205669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.375431, 16.813717, 12.012203> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423962, 0.377155, 0.823414,
		0.888256, -0.350635, -0.296744,
		0.176799, 0.857210, -0.483666,
		21.428471, 17.070881, 11.867104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.001181, 16.714766, 12.599003>,  <21.304710, 16.470833, 12.205669>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.001181, 16.714766, 12.599003> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.858181, 17.029850, 12.398321>,  <21.772381, 17.218901, 12.277912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.858181, 17.029850, 12.398321>,  <22.001181, 16.714766, 12.599003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.858181, 17.029850, 12.398321> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409554, 0.615028, 0.673800,
		0.839321, 0.035408, -0.542482,
		-0.357500, 0.787710, -0.501704,
		21.750931, 17.266163, 12.247810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.500450, 17.201780, 12.631511>,  <22.001181, 16.714766, 12.599003>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.500450, 17.201780, 12.631511> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.165718, 17.405937, 12.552294>,  <21.964880, 17.528431, 12.504764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.165718, 17.405937, 12.552294>,  <22.500450, 17.201780, 12.631511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.165718, 17.405937, 12.552294> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239482, 0.666567, 0.705930,
		0.492308, 0.543314, -0.680031,
		-0.836828, 0.510390, -0.198043,
		21.914669, 17.559053, 12.492881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.625879, 17.818071, 12.838119>,  <22.500450, 17.201780, 12.631511>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.625879, 17.818071, 12.838119> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.225998, 17.826599, 12.833442>,  <21.986069, 17.831717, 12.830636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.225998, 17.826599, 12.833442>,  <22.625879, 17.818071, 12.838119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.225998, 17.826599, 12.833442> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000351, 0.493476, 0.869760,
		0.024313, 0.869498, -0.493337,
		-0.999704, 0.021319, -0.011692,
		21.926086, 17.832994, 12.829934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.417465, 18.528557, 13.092417>,  <22.625879, 17.818071, 12.838119>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.417465, 18.528557, 13.092417> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.095066, 18.298191, 13.147104>,  <21.901627, 18.159971, 13.179916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.095066, 18.298191, 13.147104>,  <22.417465, 18.528557, 13.092417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.095066, 18.298191, 13.147104> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204348, 0.487502, 0.848872,
		-0.555529, 0.656249, -0.510612,
		-0.805996, -0.575915, 0.136718,
		21.853268, 18.125416, 13.188120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.017197, 18.976254, 13.374697>,  <22.417465, 18.528557, 13.092417>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.017197, 18.976254, 13.374697> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.858635, 18.622780, 13.474266>,  <21.763498, 18.410696, 13.534008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.858635, 18.622780, 13.474266>,  <22.017197, 18.976254, 13.374697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.858635, 18.622780, 13.474266> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185151, 0.342516, 0.921088,
		-0.899212, 0.319036, -0.299390,
		-0.396406, -0.883685, 0.248924,
		21.739714, 18.357674, 13.548944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.399010, 19.110813, 13.823766>,  <22.017197, 18.976254, 13.374697>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.399010, 19.110813, 13.823766> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.481487, 18.731773, 13.921368>,  <21.530973, 18.504349, 13.979929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.481487, 18.731773, 13.921368>,  <21.399010, 19.110813, 13.823766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.481487, 18.731773, 13.921368> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018456, 0.253085, 0.967268,
		-0.978337, -0.194941, 0.069673,
		0.206194, -0.947600, 0.244004,
		21.543344, 18.447493, 13.994569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.670033, 19.370506, 13.835623>,  <21.399010, 19.110813, 13.823766>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.670033, 19.370506, 13.835623> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.879509, 19.710754, 13.816881>,  <21.005196, 19.914904, 13.805636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.879509, 19.710754, 13.816881>,  <20.670033, 19.370506, 13.835623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.879509, 19.710754, 13.816881> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070280, -0.011674, -0.997459,
		-0.849004, 0.525653, 0.053668,
		0.523691, 0.850619, -0.046854,
		21.036615, 19.965940, 13.802825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.348324, 19.679398, 13.325411>,  <20.670033, 19.370506, 13.835623>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.348324, 19.679398, 13.325411> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.709034, 19.847260, 13.366774>,  <20.925461, 19.947977, 13.391591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.709034, 19.847260, 13.366774>,  <20.348324, 19.679398, 13.325411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.709034, 19.847260, 13.366774> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084661, 0.063108, -0.994409,
		-0.423833, 0.905488, 0.021381,
		0.901775, 0.419653, 0.103407,
		20.979567, 19.973156, 13.397796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.298281, 20.233759, 12.896632>,  <20.348324, 19.679398, 13.325411>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.298281, 20.233759, 12.896632> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.685799, 20.152824, 12.953899>,  <20.918310, 20.104263, 12.988259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.685799, 20.152824, 12.953899>,  <20.298281, 20.233759, 12.896632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.685799, 20.152824, 12.953899> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174826, 0.148351, -0.973359,
		0.175706, 0.968015, 0.179095,
		0.968795, -0.202335, 0.143168,
		20.976437, 20.092123, 12.996850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.615788, 20.720839, 12.449450>,  <20.298281, 20.233759, 12.896632>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.615788, 20.720839, 12.449450> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.920654, 20.471352, 12.518825>,  <21.103575, 20.321659, 12.560450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.920654, 20.471352, 12.518825>,  <20.615788, 20.720839, 12.449450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.920654, 20.471352, 12.518825> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186868, -0.044545, -0.981375,
		0.619824, 0.780381, 0.082601,
		0.762167, -0.623716, 0.173438,
		21.149303, 20.284237, 12.570856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.192842, 21.039379, 12.061364>,  <20.615788, 20.720839, 12.449450>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.192842, 21.039379, 12.061364> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.222729, 20.644112, 12.114939>,  <21.240660, 20.406952, 12.147083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.222729, 20.644112, 12.114939>,  <21.192842, 21.039379, 12.061364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.222729, 20.644112, 12.114939> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155236, -0.121149, -0.980421,
		0.985048, 0.094045, 0.144348,
		0.074716, -0.988169, 0.133937,
		21.245144, 20.347660, 12.155120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.822906, 20.822464, 11.746667>,  <21.192842, 21.039379, 12.061364>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.822906, 20.822464, 11.746667> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.584972, 20.501934, 11.772110>,  <21.442211, 20.309616, 11.787375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.584972, 20.501934, 11.772110>,  <21.822906, 20.822464, 11.746667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.584972, 20.501934, 11.772110> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121591, -0.167912, -0.978275,
		0.794599, -0.574178, 0.197314,
		-0.594835, -0.801327, 0.063608,
		21.406521, 20.261536, 11.791192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.271267, 20.351217, 11.453319>,  <21.822906, 20.822464, 11.746667>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.271267, 20.351217, 11.453319> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.892548, 20.223404, 11.437972>,  <21.665316, 20.146715, 11.428764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.892548, 20.223404, 11.437972>,  <22.271267, 20.351217, 11.453319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.892548, 20.223404, 11.437972> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069147, -0.085546, -0.993932,
		0.314313, -0.943705, 0.103089,
		-0.946798, -0.319534, -0.038367,
		21.608509, 20.127544, 11.426462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.323435, 19.854839, 10.937979>,  <22.271267, 20.351217, 11.453319>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.323435, 19.854839, 10.937979> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.928600, 19.914593, 10.961104>,  <21.691700, 19.950445, 10.974979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.928600, 19.914593, 10.961104>,  <22.323435, 19.854839, 10.937979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.928600, 19.914593, 10.961104> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052346, 0.040284, -0.997816,
		-0.151387, -0.987958, -0.031944,
		-0.987088, 0.149384, 0.057814,
		21.632473, 19.959408, 10.978449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.047937, 19.340282, 10.318797>,  <22.323435, 19.854839, 10.937979>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.047937, 19.340282, 10.318797> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.762306, 19.608887, 10.397963>,  <21.590927, 19.770048, 10.445461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.762306, 19.608887, 10.397963>,  <22.047937, 19.340282, 10.318797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.762306, 19.608887, 10.397963> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186481, 0.090037, -0.978324,
		-0.674773, -0.735506, 0.060930,
		-0.714077, 0.671509, 0.197913,
		21.548082, 19.810339, 10.457336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.595322, 19.273180, 9.802547>,  <22.047937, 19.340282, 10.318797>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.595322, 19.273180, 9.802547> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.482452, 19.629765, 9.944350>,  <21.414730, 19.843716, 10.029432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.482452, 19.629765, 9.944350>,  <21.595322, 19.273180, 9.802547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.482452, 19.629765, 9.944350> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137636, 0.328086, -0.934567,
		-0.949439, -0.312504, 0.030120,
		-0.282174, 0.891460, 0.354510,
		21.397800, 19.897202, 10.050703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.995110, 19.306793, 9.525146>,  <21.595322, 19.273180, 9.802547>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.995110, 19.306793, 9.525146> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.105511, 19.674828, 9.636332>,  <21.171751, 19.895649, 9.703043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.105511, 19.674828, 9.636332>,  <20.995110, 19.306793, 9.525146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.105511, 19.674828, 9.636332> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149220, 0.326709, -0.933271,
		-0.949503, 0.216108, 0.227468,
		0.276003, 0.920086, 0.277964,
		21.188313, 19.950853, 9.719721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.469912, 19.737026, 9.284975>,  <20.995110, 19.306793, 9.525146>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.469912, 19.737026, 9.284975> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.792542, 19.971912, 9.312163>,  <20.986118, 20.112844, 9.328476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.792542, 19.971912, 9.312163>,  <20.469912, 19.737026, 9.284975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.792542, 19.971912, 9.312163> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099172, 0.247771, -0.963730,
		-0.582757, 0.770577, 0.258080,
		0.806573, 0.587214, 0.067970,
		21.034513, 20.148077, 9.332555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.283060, 20.334501, 9.075858>,  <20.469912, 19.737026, 9.284975>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.283060, 20.334501, 9.075858> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.680767, 20.362194, 9.043255>,  <20.919392, 20.378809, 9.023693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.680767, 20.362194, 9.043255>,  <20.283060, 20.334501, 9.075858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.680767, 20.362194, 9.043255> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102417, 0.397080, -0.912052,
		-0.030777, 0.915169, 0.401893,
		0.994265, 0.069231, -0.081508,
		20.979046, 20.382963, 9.018803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.385443, 20.903471, 8.687617>,  <20.283060, 20.334501, 9.075858>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.385443, 20.903471, 8.687617> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.729481, 20.703381, 8.647594>,  <20.935904, 20.583326, 8.623581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.729481, 20.703381, 8.647594>,  <20.385443, 20.903471, 8.687617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.729481, 20.703381, 8.647594> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024935, 0.237129, -0.971158,
		0.509523, 0.832794, 0.216426,
		0.860096, -0.500224, -0.100057,
		20.987509, 20.553314, 8.617578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.974709, 21.288645, 8.531387>,  <20.385443, 20.903471, 8.687617>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.974709, 21.288645, 8.531387> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.650620, 21.403301, 8.326887>,  <20.456167, 21.472095, 8.204187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.650620, 21.403301, 8.326887>,  <20.974709, 21.288645, 8.531387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.650620, 21.403301, 8.326887> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573329, -0.206327, 0.792921,
		0.121800, 0.935556, 0.331511,
		-0.810222, 0.286642, -0.511251,
		20.407553, 21.489294, 8.173512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.515516, 21.675779, 8.903116>,  <20.974709, 21.288645, 8.531387>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.515516, 21.675779, 8.903116> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.286655, 21.513084, 8.618242>,  <20.149340, 21.415468, 8.447318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.286655, 21.513084, 8.618242>,  <20.515516, 21.675779, 8.903116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.286655, 21.513084, 8.618242> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777861, -0.006114, 0.628406,
		-0.259951, 0.913525, -0.312887,
		-0.572151, -0.406738, -0.712185,
		20.115009, 21.391064, 8.404587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.848333, 22.019718, 8.728746>,  <20.515516, 21.675779, 8.903116>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.848333, 22.019718, 8.728746> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.794601, 21.624966, 8.764577>,  <19.762362, 21.388115, 8.786076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.794601, 21.624966, 8.764577>,  <19.848333, 22.019718, 8.728746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.794601, 21.624966, 8.764577> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657529, 0.156398, 0.737018,
		-0.741358, 0.040104, -0.669911,
		-0.134330, -0.986880, 0.089577,
		19.754303, 21.328901, 8.791450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.105402, 21.923939, 8.709588>,  <19.848333, 22.019718, 8.728746>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.105402, 21.923939, 8.709588> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.219524, 21.584843, 8.888445>,  <19.287998, 21.381384, 8.995759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.219524, 21.584843, 8.888445>,  <19.105402, 21.923939, 8.709588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.219524, 21.584843, 8.888445> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647169, 0.173718, 0.742290,
		-0.706946, -0.501156, -0.499069,
		0.285306, -0.847741, 0.447142,
		19.305117, 21.330521, 9.022588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.541542, 21.488880, 8.866791>,  <19.105402, 21.923939, 8.709588>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.541542, 21.488880, 8.866791> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.815083, 21.366665, 9.131818>,  <18.979206, 21.293335, 9.290834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.815083, 21.366665, 9.131818>,  <18.541542, 21.488880, 8.866791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.815083, 21.366665, 9.131818> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632195, 0.205219, 0.747137,
		-0.364251, -0.929802, -0.052822,
		0.683850, -0.305539, 0.662567,
		19.020237, 21.275003, 9.330588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.154652, 21.199368, 9.334801>,  <18.541542, 21.488880, 8.866791>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.154652, 21.199368, 9.334801> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.498436, 21.252110, 9.532363>,  <18.704706, 21.283754, 9.650900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.498436, 21.252110, 9.532363>,  <18.154652, 21.199368, 9.334801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.498436, 21.252110, 9.532363> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508019, 0.112644, 0.853949,
		0.056950, -0.984850, 0.163791,
		0.859461, 0.131841, 0.493907,
		18.756273, 21.291666, 9.680534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.080498, 20.706268, 9.871954>,  <18.154652, 21.199368, 9.334801>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.080498, 20.706268, 9.871954> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.347351, 20.983677, 9.980738>,  <18.507463, 21.150122, 10.046008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.347351, 20.983677, 9.980738>,  <18.080498, 20.706268, 9.871954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.347351, 20.983677, 9.980738> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504759, 0.152345, 0.849712,
		0.547861, -0.704145, 0.451695,
		0.667134, 0.693521, 0.271959,
		18.547491, 21.191732, 10.062325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.132982, 20.687218, 10.485236>,  <18.080498, 20.706268, 9.871954>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.132982, 20.687218, 10.485236> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.296864, 21.051342, 10.461640>,  <18.395191, 21.269817, 10.447483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.296864, 21.051342, 10.461640>,  <18.132982, 20.687218, 10.485236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.296864, 21.051342, 10.461640> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290085, 0.191321, 0.937682,
		0.864867, -0.367058, 0.342452,
		0.409702, 0.910310, -0.058989,
		18.419775, 21.324434, 10.443944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.573195, 20.718111, 11.036354>,  <18.132982, 20.687218, 10.485236>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.573195, 20.718111, 11.036354> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.505226, 21.103161, 10.951992>,  <18.464445, 21.334190, 10.901375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.505226, 21.103161, 10.951992>,  <18.573195, 20.718111, 11.036354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.505226, 21.103161, 10.951992> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358358, 0.139005, 0.923178,
		0.917990, 0.232446, 0.321345,
		-0.169920, 0.962625, -0.210904,
		18.454250, 21.391949, 10.888721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.695662, 21.073605, 11.666516>,  <18.573195, 20.718111, 11.036354>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.695662, 21.073605, 11.666516> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.518509, 21.361588, 11.452781>,  <18.412216, 21.534376, 11.324539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.518509, 21.361588, 11.452781>,  <18.695662, 21.073605, 11.666516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.518509, 21.361588, 11.452781> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301098, 0.441930, 0.845008,
		0.844508, 0.535129, 0.021053,
		-0.442884, 0.719955, -0.534340,
		18.385643, 21.577574, 11.292479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.953112, 21.693232, 11.878308>,  <18.695662, 21.073605, 11.666516>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.953112, 21.693232, 11.878308> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.584877, 21.755451, 11.735017>,  <18.363937, 21.792784, 11.649042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.584877, 21.755451, 11.735017>,  <18.953112, 21.693232, 11.878308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.584877, 21.755451, 11.735017> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274899, 0.393444, 0.877287,
		0.277406, 0.906094, -0.319438,
		-0.920585, 0.155551, -0.358228,
		18.308702, 21.802116, 11.627548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.790928, 22.359314, 12.072998>,  <18.953112, 21.693232, 11.878308>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.790928, 22.359314, 12.072998> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.440372, 22.191727, 11.977997>,  <18.230040, 22.091173, 11.920996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.440372, 22.191727, 11.977997>,  <18.790928, 22.359314, 12.072998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.440372, 22.191727, 11.977997> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399450, 0.356866, 0.844444,
		-0.269040, 0.834932, -0.480111,
		-0.876389, -0.418969, -0.237503,
		18.177456, 22.066036, 11.906746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.289186, 22.964306, 12.157860>,  <18.790928, 22.359314, 12.072998>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.289186, 22.964306, 12.157860> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.048370, 22.646687, 12.124320>,  <17.903881, 22.456114, 12.104197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.048370, 22.646687, 12.124320>,  <18.289186, 22.964306, 12.157860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.048370, 22.646687, 12.124320> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492800, 0.286891, 0.821488,
		-0.628246, 0.535891, -0.564028,
		-0.602043, -0.794049, -0.083849,
		17.867758, 22.408472, 12.099166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.588200, 23.217281, 11.997144>,  <18.289186, 22.964306, 12.157860>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.588200, 23.217281, 11.997144> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.559158, 22.859215, 12.173055>,  <17.541735, 22.644375, 12.278602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.559158, 22.859215, 12.173055>,  <17.588200, 23.217281, 11.997144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.559158, 22.859215, 12.173055> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490060, 0.416060, 0.765987,
		-0.868660, -0.159905, -0.468892,
		-0.072602, -0.895167, 0.439778,
		17.537378, 22.590664, 12.304988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.907011, 23.190439, 12.223152>,  <17.588200, 23.217281, 11.997144>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.907011, 23.190439, 12.223152> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.081333, 22.890305, 12.421975>,  <17.185926, 22.710224, 12.541269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.081333, 22.890305, 12.421975>,  <16.907011, 23.190439, 12.223152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.081333, 22.890305, 12.421975> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466260, 0.284165, 0.837766,
		-0.769854, -0.596861, -0.226012,
		0.435805, -0.750338, 0.497058,
		17.212074, 22.665203, 12.571093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.410975, 22.901680, 12.621140>,  <16.907011, 23.190439, 12.223152>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.410975, 22.901680, 12.621140> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.753242, 22.812313, 12.807865>,  <16.958603, 22.758694, 12.919900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.753242, 22.812313, 12.807865>,  <16.410975, 22.901680, 12.621140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.753242, 22.812313, 12.807865> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405790, 0.270175, 0.873121,
		-0.321190, -0.936532, 0.140521,
		0.855670, -0.223415, 0.466812,
		17.009943, 22.745289, 12.947908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.275896, 22.417767, 13.068491>,  <16.410975, 22.901680, 12.621140>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.275896, 22.417767, 13.068491> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.628593, 22.549503, 13.203583>,  <16.840212, 22.628546, 13.284638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.628593, 22.549503, 13.203583>,  <16.275896, 22.417767, 13.068491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.628593, 22.549503, 13.203583> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372771, 0.047720, 0.926695,
		0.289083, -0.943004, 0.164846,
		0.881744, 0.329342, 0.337730,
		16.893116, 22.648306, 13.304902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.363489, 22.071842, 13.599466>,  <16.275896, 22.417767, 13.068491>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.363489, 22.071842, 13.599466> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.612873, 22.375965, 13.672386>,  <16.762503, 22.558439, 13.716138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.612873, 22.375965, 13.672386>,  <16.363489, 22.071842, 13.599466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.612873, 22.375965, 13.672386> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353194, 0.065861, 0.933229,
		0.697534, -0.646216, 0.309597,
		0.623458, 0.760307, 0.182299,
		16.799910, 22.604057, 13.727076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.647118, 21.945307, 14.215104>,  <16.363489, 22.071842, 13.599466>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.647118, 21.945307, 14.215104> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.713428, 22.338421, 14.182478>,  <16.753216, 22.574289, 14.162902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.713428, 22.338421, 14.182478>,  <16.647118, 21.945307, 14.215104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.713428, 22.338421, 14.182478> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244249, 0.121052, 0.962127,
		0.955437, -0.139576, 0.260112,
		0.165777, 0.982784, -0.081567,
		16.763161, 22.633257, 14.158008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.027763, 22.182163, 14.835225>,  <16.647118, 21.945307, 14.215104>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.027763, 22.182163, 14.835225> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.851990, 22.505901, 14.679350>,  <16.746525, 22.700144, 14.585825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.851990, 22.505901, 14.679350>,  <17.027763, 22.182163, 14.835225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.851990, 22.505901, 14.679350> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273724, 0.292537, 0.916241,
		0.855554, 0.509295, 0.092986,
		-0.439435, 0.809346, -0.389688,
		16.720160, 22.748705, 14.562444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.276340, 22.734529, 15.306630>,  <17.027763, 22.182163, 14.835225>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.276340, 22.734529, 15.306630> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.960842, 22.904736, 15.129175>,  <16.771544, 23.006859, 15.022702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.960842, 22.904736, 15.129175>,  <17.276340, 22.734529, 15.306630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.960842, 22.904736, 15.129175> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370273, 0.247209, 0.895425,
		0.490688, 0.870531, -0.037429,
		-0.788748, 0.425515, -0.443636,
		16.724218, 23.032391, 14.996084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.166128, 23.320471, 15.627230>,  <17.276340, 22.734529, 15.306630>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.166128, 23.320471, 15.627230> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.810448, 23.219086, 15.474874>,  <16.597038, 23.158255, 15.383461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.810448, 23.219086, 15.474874>,  <17.166128, 23.320471, 15.627230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.810448, 23.219086, 15.474874> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412330, 0.083219, 0.907226,
		-0.198252, 0.963759, -0.178509,
		-0.889202, -0.253464, -0.380888,
		16.543688, 23.143047, 15.360608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.722038, 23.849949, 15.797987>,  <17.166128, 23.320471, 15.627230>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.722038, 23.849949, 15.797987> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.504852, 23.516010, 15.761732>,  <16.374540, 23.315647, 15.739980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.504852, 23.516010, 15.761732>,  <16.722038, 23.849949, 15.797987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.504852, 23.516010, 15.761732> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510110, 0.242162, 0.825315,
		-0.667064, 0.494353, -0.557351,
		-0.542967, -0.834849, -0.090637,
		16.341963, 23.265556, 15.734541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.158463, 24.088211, 16.092924>,  <16.722038, 23.849949, 15.797987>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.158463, 24.088211, 16.092924> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.118351, 23.690384, 16.104099>,  <16.094284, 23.451689, 16.110806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.118351, 23.690384, 16.104099>,  <16.158463, 24.088211, 16.092924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.118351, 23.690384, 16.104099> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443544, 0.069823, 0.893528,
		-0.890625, 0.077210, -0.448136,
		-0.100279, -0.994567, 0.027940,
		16.088266, 23.392014, 16.112482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.487803, 23.909706, 16.252836>,  <16.158463, 24.088211, 16.092924>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.487803, 23.909706, 16.252836> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.645555, 23.546246, 16.307709>,  <15.740205, 23.328169, 16.340631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.645555, 23.546246, 16.307709>,  <15.487803, 23.909706, 16.252836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.645555, 23.546246, 16.307709> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689292, -0.193779, 0.698087,
		-0.607736, -0.369866, -0.702749,
		0.394377, -0.908652, 0.137180,
		15.763867, 23.273649, 16.348864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.874178, 23.467964, 16.391777>,  <15.487803, 23.909706, 16.252836>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.874178, 23.467964, 16.391777> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.193101, 23.279430, 16.542583>,  <15.384455, 23.166309, 16.633068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.193101, 23.279430, 16.542583>,  <14.874178, 23.467964, 16.391777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.193101, 23.279430, 16.542583> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492076, -0.145895, 0.858240,
		-0.349515, -0.869803, -0.348257,
		0.797308, -0.471336, 0.377017,
		15.432294, 23.138029, 16.655689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.612688, 22.887621, 16.779791>,  <14.874178, 23.467964, 16.391777>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.612688, 22.887621, 16.779791> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.979236, 22.958309, 16.923477>,  <15.199164, 23.000721, 17.009689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.979236, 22.958309, 16.923477>,  <14.612688, 22.887621, 16.779791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.979236, 22.958309, 16.923477> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292592, -0.316774, 0.902244,
		0.273235, -0.931893, -0.238575,
		0.916369, 0.176720, 0.359218,
		15.254147, 23.011326, 17.031242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.782281, 22.311028, 17.277946>,  <14.612688, 22.887621, 16.779791>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.782281, 22.311028, 17.277946> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.981112, 22.640285, 17.387743>,  <15.100411, 22.837841, 17.453621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.981112, 22.640285, 17.387743>,  <14.782281, 22.311028, 17.277946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.981112, 22.640285, 17.387743> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183779, -0.209290, 0.960428,
		0.848020, -0.527854, 0.047243,
		0.497078, 0.823145, 0.274491,
		15.130236, 22.887230, 17.470091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.237806, 21.729462, 17.390314>,  <14.782281, 22.311028, 17.277946>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.237806, 21.729462, 17.390314> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.946446, 21.455940, 17.407518>,  <14.771630, 21.291828, 17.417841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.946446, 21.455940, 17.407518>,  <15.237806, 21.729462, 17.390314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.946446, 21.455940, 17.407518> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191500, -0.263462, -0.945471,
		0.657847, -0.680443, 0.322853,
		-0.728399, -0.683802, 0.043013,
		14.727926, 21.250799, 17.420422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.540564, 21.001221, 17.155519>,  <15.237806, 21.729462, 17.390314>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.540564, 21.001221, 17.155519> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.144612, 20.953018, 17.125536>,  <14.907042, 20.924097, 17.107546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.144612, 20.953018, 17.125536>,  <15.540564, 21.001221, 17.155519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.144612, 20.953018, 17.125536> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112506, -0.344403, -0.932056,
		0.086504, -0.931056, 0.354475,
		-0.989879, -0.120507, -0.074957,
		14.847649, 20.916866, 17.103048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.441955, 20.317549, 16.947033>,  <15.540564, 21.001221, 17.155519>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.441955, 20.317549, 16.947033> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.082078, 20.462242, 16.849295>,  <14.866152, 20.549059, 16.790651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.082078, 20.462242, 16.849295>,  <15.441955, 20.317549, 16.947033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.082078, 20.462242, 16.849295> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014850, -0.534066, -0.845312,
		-0.436274, -0.764149, 0.475123,
		-0.899692, 0.361732, -0.244347,
		14.812171, 20.570763, 16.775991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.010415, 19.797293, 16.775467>,  <15.441955, 20.317549, 16.947033>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.010415, 19.797293, 16.775467> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.851712, 20.108009, 16.579844>,  <14.756491, 20.294439, 16.462469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.851712, 20.108009, 16.579844>,  <15.010415, 19.797293, 16.775467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.851712, 20.108009, 16.579844> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073955, -0.504007, -0.860527,
		-0.914940, -0.377588, 0.142520,
		-0.396756, 0.776791, -0.489060,
		14.732685, 20.341047, 16.433125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.494527, 19.598330, 16.339243>,  <15.010415, 19.797293, 16.775467>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.494527, 19.598330, 16.339243> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.618691, 19.940590, 16.173592>,  <14.693191, 20.145947, 16.074200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.618691, 19.940590, 16.173592>,  <14.494527, 19.598330, 16.339243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.618691, 19.940590, 16.173592> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063188, -0.453260, -0.889136,
		-0.948500, 0.249830, -0.194764,
		0.310412, 0.855652, -0.414131,
		14.711815, 20.197285, 16.049353>
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
